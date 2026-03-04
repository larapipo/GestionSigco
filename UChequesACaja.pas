unit UChequesACaja;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresEgresos, StdCtrls, Mask, DBCtrls,
  Db, ActnList, ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient,
  Provider, Librerias, IBGenerator,  JvExControls, JvGradient, JvFormPlacement,
  SqlExpr, JvExMask, JvToolEdit, DBXCommon, frxExportPDF, Grids, DBGrids,
  System.Actions, JvAppStorage, JvAppIniStorage, Data.FMTBcd, frxClass,
  frxDBSet, JvDBControls, JvLabel, JvComponentBase, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormCheACaja = class(TFormABMBase)
    pnValores: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    DSPSucrusal: TDataSetProvider;
    BuscarSucursal: TAction;
    DSPCobroChe: TDataSetProvider;
    BusarTipoCpbte: TAction;
    DSPCajaMov: TDataSetProvider;
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDetalle: TDBEdit;
    pnImporte: TPanel;
    dbImporte: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frCobro: TfrxReport;
    frDBDMovCaja: TfrxDBDataset;
    Imprimir: TAction;
    frDBDCobro: TfrxDBDataset;
    ibgIdCobroChe: TIBGenerator;
    frDBChe3: TfrxDBDataset;
    frDBChe: TfrxDBDataset;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frDBEmpresa: TfrxDBDataset;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QCobroChe: TFDQuery;
    QCobroCheID: TIntegerField;
    QCobroCheFECHA: TSQLTimeStampField;
    QCobroCheDETALLE: TStringField;
    QCobroCheTIPOCPBTE: TStringField;
    QCobroCheCLASECPBTE: TStringField;
    QCobroCheLETRA: TStringField;
    QCobroCheSUC: TStringField;
    QCobroCheNUMERO: TStringField;
    QCobroCheSUCURSAL: TIntegerField;
    QCobroCheIMPORTE: TFloatField;
    QCobroCheNROCPBTE: TStringField;
    QCobroChePROPIO_TERCERO: TStringField;
    QCobroCheMUESTRASUCURSAL: TStringField;
    QCobroCheMUESTRACOMPROBANTE: TStringField;
    QCobroCheID_TIPOCOMPROBANTE: TIntegerField;
    CDSCobroChe: TClientDataSet;
    CDSCobroCheID: TIntegerField;
    CDSCobroCheFECHA: TSQLTimeStampField;
    CDSCobroCheDETALLE: TStringField;
    CDSCobroCheTIPOCPBTE: TStringField;
    CDSCobroCheCLASECPBTE: TStringField;
    CDSCobroCheLETRA: TStringField;
    CDSCobroCheSUC: TStringField;
    CDSCobroCheNUMERO: TStringField;
    CDSCobroCheSUCURSAL: TIntegerField;
    CDSCobroCheIMPORTE: TFloatField;
    CDSCobroCheNROCPBTE: TStringField;
    CDSCobroChePROPIO_TERCERO: TStringField;
    CDSCobroCheMUESTRASUCURSAL: TStringField;
    CDSCobroCheMUESTRACOMPROBANTE: TStringField;
    CDSCobroCheID_TIPOCOMPROBANTE: TIntegerField;
    CDSCajaMov: TClientDataSet;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovID_CAJA: TIntegerField;
    CDSCajaMovFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSCajaMovCLASE_COMPROB: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovNRO_COMPROBANTE: TStringField;
    CDSCajaMovID_TPAGO: TIntegerField;
    CDSCajaMovID_FPAGO: TIntegerField;
    CDSCajaMovID_CUENTA_CAJA: TIntegerField;
    CDSCajaMovMONEDA: TIntegerField;
    CDSCajaMovMUESTRAFORMAPAGO: TStringField;
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
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    frxPDFExport1: TfrxPDFExport;
    dbgMovimientosCaja: TDBGrid;
    DSCajaMov: TDataSource;
    DBText1: TDBText;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorTipoCpbte: TComBuscador;
    QCajaMov: TFDQuery;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    QBuscaComprob: TFDQuery;
    spIngresarEfectivo: TFDStoredProc;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobREPORTE: TStringField;
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSCobroCheSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure CDSCobroCheNewRecord(DataSet: TDataSet);
    procedure BusarTipoCpbteExecute(Sender: TObject);
    procedure pnValoresEnter(Sender: TObject);
    procedure CDSCobroCheSUCSetText(Sender: TField; const Text: String);
    procedure CDSCobroCheNUMEROSetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ModificarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CDSCobroCheID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure RecuperarExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FrameMovValoresEgresos1spLoteChequesClick(Sender: TObject);
  private
    { Private declarations }
  public
    Mascara:String;
    CpbteNuevo: Char;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    { Public declarations }
  end;

var
  FormCheACaja: TFormCheACaja;

PROCEDURE UltimoComprobante;

implementation

uses UCarteraCheques, UBuscadorCpbte, DMBuscadoresForm,UDMain_FD,
     DMStoreProcedureForm;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormCheACaja,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSCobroCheLETRA.AsString <> '') AND (CDSCobroCheCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSCobroCheLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSCobroCheSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSCobroCheCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSCobroCheTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSCobroCheSUCSetText(CDSCobroCheSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSCobroCheNUMEROSetText(CDSCobroCheNUMERO, IntToStr(Numero));
          CDSCobroCheTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSCobroCheCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSCobroCheNROCPBTE.AsString := CDSCobroCheLETRA.AsString +
                                      CDSCobroCheSUC.AsString +
                                      CDSCobroCheNUMERO.AsString;
    END;

END;


FUNCTION TFormCheACaja.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSCobroCheID_TIPOCOMPROBANTE.Clear;
      CDSCobroCheMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSCobroCheID_TIPOCOMPROBANTESetText(CDSCobroCheID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          dbeDetalle.SetFocus;
        end;
      Result := True;
      CDSCobroCheMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCobroCheMUESTRASUCURSAL.Value := '';
    END;
END;

FUNCTION TFormCheACaja.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('Suc').Value := CDSCobroCheSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSCobroCheMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSCobroCheLETRA.Value              := QComprobLETRA.Value;
      CDSCobroCheTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSCobroCheCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCobroCheMUESTRACOMPROBANTE.Value := '';
      CDSCobroCheLETRA.Value              := '';
      CDSCobroCheTIPOCPBTE.Value          := '';
      CDSCobroCheCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;



procedure TFormCheACaja.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSCobroCheSUCURSALSetText(CDSCobroCheSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormCheACaja.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;
  FrameMovValoresEgresos1.tsEfectivo.TabVisible := False;
  FrameMovValoresEgresos1.tsTarjeta.TabVisible  := False;
  FrameMovValoresEgresos1.tsTransf.TabVisible   := False;
  FrameMovValoresEgresos1.tsDebito.TabVisible   := False;


  FrameMovValoresEgresos1.tsCheques.TabVisible  := True;
  FrameMovValoresEgresos1.tsChe3.TabVisible     := True;

  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);
  AddClientDataSet(CDSCobroChe,DSPCobroChe);
//  AddClientDataSet(CDSCajaMov,DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);

  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.QCajaCab.Open;
  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;


  Mascara:=DMMain_FD.MascaraCheques;

  TFloatField(CDSCobroCheIMPORTE).EditFormat:=Mascara;
  TFloatField(CDSCobroCheIMPORTE).DisplayFormat:=Mascara;

  FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;


  Tabla:='COBRO_CHEQUES_A_CAJA';
  Campo:='id';

  CDSCobroChe.Open;
 // CDSCajaMov.Open;
  DBRadioGroup1.ItemIndex:=1;
end;

procedure TFormCheACaja.CDSCobroCheSUCURSALSetText(Sender: TField;
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

procedure TFormCheACaja.DBRadioGroup1Click(Sender: TObject);
begin
  inherited;
  if DBRadioGroup1.ItemIndex=0 Then
    begin
      FrameMovValoresEgresos1.tsCheques.TabVisible:=True;
      FrameMovValoresEgresos1.tsChe3.TabVisible   :=False;
    end
  else
    if DBRadioGroup1.ItemIndex=1 Then
      begin
        FrameMovValoresEgresos1.tsCheques.TabVisible:=False;
        FrameMovValoresEgresos1.tsChe3.TabVisible   :=True;
      end;

end;

procedure TFormCheACaja.CDSCobroCheNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCobroCheID.Value:=ibgIdCobroChe.IncrementFD(1);
  CDSCobroChePROPIO_TERCERO.Value:= 'T';
  CDSCobroCheFECHA.AsDateTime    := date;
  CDSCobroCheSUCURSALSetText(CDSCobroCheSUCURSAL,IntToStr(SucursalPorDefecto));
end;

procedure TFormCheACaja.BusarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSCobroCheSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSCobroCheID_TIPOCOMPROBANTESetText(CDSCobroCheID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;
end;

procedure TFormCheACaja.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
   begin
     pnCabecera.Enabled:=False;
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
             TipoCpbte      := CDSCobroCheTIPOCPBTE.Value;
             TipoOperacion  := 'E';
             ClaseCpbte     := CDSCobroCheCLASECPBTE.Value;
             NroCpbte       := CDSCobroCheNROCPBTE.Value;
             FechaOperacion := CDSCobroCheFECHA.AsDateTime;
             IdCpbte        := CDSCobroCheID.Value;
             Origen         := 'Cobro de Che Caja';
        end;
      END;
   end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
//      pnValores.Enabled:=False;
      pnCabecera.Enabled:=True;
      dbeFecha.SetFocus;
    end;
end;

procedure TFormCheACaja.CDSCobroCheSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSCobroCheNROCPBTE.Value := CDSCobroCheLETRA.Value +
                               CDSCobroCheSUC.Value +
                               CDSCobroCheNUMERO.Value;
end;

procedure TFormCheACaja.CDSCobroCheNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSCobroCheNROCPBTE.Value := CDSCobroCheLETRA.Value +
                               CDSCobroCheSUC.Value +
                               CDSCobroCheNUMERO.Value;
end;

procedure TFormCheACaja.AgregarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  CDSCobroChe.close;
  CDSCobroChe.Params.ParamByName('id').Clear;
  CDSCobroChe.Params.ParamByName('Tipo').Clear;
  CDSCobroChe.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id').Clear;
  CDSCajaMov.Params.ParamByName('Tipo').Clear;
  CDSCajaMov.Open;

  FrameMovValoresEgresos1.dbgMovimientos.Refresh;
  inherited;
  CpbteNuevo:='S';
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  pnCabecera.Enabled:=True;
  pnValores.Enabled:=True;
  RxDBESucursal.SetFocus;

end;

procedure TFormCheACaja.ConfirmaExecute(Sender: TObject);
var TipoTexto:String;
begin
  DatoNew   := IntToStr(CDSCobroCheID.Value);
  TipoCpbte := CDSCobroCheTIPOCPBTE.Value;
  if FrameMovValoresEgresos1.CDSCheques.State in [dsInsert,dsEdit] Then
    FrameMovValoresEgresos1.CDSCheques.Post;

  if FrameMovValoresEgresos1.CDSChe3.State in [dsInsert,dsEdit] Then
    FrameMovValoresEgresos1.CDSChe3.Post;

  CDSCobroCheIMPORTE.AsFloat := FrameMovValoresEgresos1.SumaValores;
  IF Moneda3D(' ',Mascara, FrameMovValoresEgresos1.SumaValores)<>0 Then
    begin

      if (CpbteNuevo='S') and (Not(DSBase.DataSet.IsEmpty)) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            CDSCobroChe.ApplyUpdates(0);

            FrameMovValoresEgresos1.CDSCajaMov.ApplyUpdates(0);
  //          FrameMovValoresEgresos1.CDSMovEfectivo.ApplyUpdates(0);
            FrameMovValoresEgresos1.CDSCheques.ApplyUpdates(0);
            FrameMovValoresEgresos1.CDSChe3.ApplyUpdates(0);
            FormCarteraCheques.CDSCarteraChe.ApplyUpdates(0);

            FrameMovValoresEgresos1.CDSCajaMov.First;
            FrameMovValoresEgresos1.CDSCajaMov.DisableControls;
            while Not(FrameMovValoresEgresos1.CDSCajaMov.Eof) DO
              begin
                spIngresarEfectivo.Close;
                spIngresarEfectivo.Params.ParamByName('ID_CPBTE').Value             := CDSCobroCheID.Value;
                spIngresarEfectivo.Params.ParamByName('TIPO_COMPROB').Value         := CDSCobroCheTIPOCPBTE.Value;
                spIngresarEfectivo.Params.ParamByName('CLASE_COMPROB').Value        := CDSCobroCheCLASECPBTE.Value;
                spIngresarEfectivo.Params.ParamByName('NROCPBTE').Value             := CDSCobroCheNROCPBTE.Value;
                spIngresarEfectivo.Params.ParamByName('ID_CUENTA_CAJA').Value       := FrameMovValoresEgresos1.id_cuenta_caja;
                spIngresarEfectivo.Params.ParamByName('FECHA_MOVIMIENTO').Value     := CDSCobroCheFECHA.AsDateTime;
                spIngresarEfectivo.Params.ParamByName('DEBE').AsFloat               := FrameMovValoresEgresos1.CDSCajaMovHABER.AsFloat;
                spIngresarEfectivo.Params.ParamByName('HABER').AsFloat              := 0;
                spIngresarEfectivo.Params.ParamByName('TIPOOPERACION').Value        := 'I';
                spIngresarEfectivo.ExecProc;
                FrameMovValoresEgresos1.CDSCajaMov.Next;
              end;
            FrameMovValoresEgresos1.CDSCajaMov.EnableControls;

            if CDSCobroChePROPIO_TERCERO.Value='T' then TipoTexto:=' de 3º ' else
              TipoTexto:=' Propio ';
            DMMain_FD.LogFileFD(3,4,'Ingresa Cobro de Che. a '+' Tipo:'+TipoTexto+' Nro.'+CDSCobroCheNROCPBTE.AsString+
             '('+CDSCobroCheID.AsString+') Importe: '+FormatFloat(',0.00',CDSCobroCheIMPORTE.AsFloat),'COBRCH');



            DMMain_FD.fdcGestion.Commit;
            Recuperar.Execute;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No Ingresaron los Mov de Efectivo...');
          end;
          spIngresarEfectivo.Close;
        end;

      IF (CpbteNuevo='S') and (DSBase.DataSet.IsEmpty=False) Then
        if Imprime='S' Then
          if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
            Imprimir.Execute;
    end
  else
    ShowMessage('El comprobante tiene valor cero....');
end;

procedure TFormCheACaja.FormActivate(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State=dsBrowse) then
    Recuperar.Execute;
end;

procedure TFormCheACaja.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 // CDSCajaMov.Close;
  CDSCobroChe.Close;

  inherited;
  Action:=caFree;

end;

procedure TFormCheACaja.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCheACaja:=nil;
end;

procedure TFormCheACaja.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='CC';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 9;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
  // DatosMovValoresRecibo.QCajaCab.Open;
end;

procedure TFormCheACaja.BorrarExecute(Sender: TObject);
begin
 // inherited;
  if MessageDlg('Esta por borrar el comprobante, seguro..???',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
      IF NOT (CDSCobroChe.IsEmpty) THEN
        BEGIN
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMMain_FD.LogFileFD(0,4,'Borrado Cobro de Che. a Caja.Nro.'+CDSCobroCheNROCPBTE.AsString+'('+CDSCobroCheID.AsString+')'+
            ' Importe:'+FormatFloat(',0.00',CDSCobroCheIMPORTE.AsFloat),'COBRCH');
            CDSCobroChe.Delete;
            CDSCobroChe.ApplyUpdates(0);
            CDSCobroChe.EmptyDataSet;
            DMMain_FD.fdcGestion.Commit;
            FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transaccion no realizada...');
          end;
     //     Cancelar.Execute;
          //DatosOPago.wwCDSOPago.EmptyDataSet;
        END
      ELSE
        ShowMessage('No hay registro activo');
    end;

  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;

  CDSCobroChe.close;
  CDSCobroChe.Params.ParamByName('id').Clear;
  CDSCobroChe.Params.ParamByName('Tipo').Clear;
  CDSCobroChe.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;
end;

procedure TFormCheACaja.CancelarExecute(Sender: TObject);
begin
  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;

  CDSCobroChe.close;
  CDSCobroChe.Params.ParamByName('id').Clear;
  CDSCobroChe.Params.ParamByName('Tipo').Clear;
  CDSCobroChe.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;


  inherited;
  pnCabecera.Enabled:=True;
  pnValores.Enabled:=True;
end;

procedure TFormCheACaja.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=DSBase.State=dsInsert;
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State IN [dsInsert,dsEdit];

  //  FrameMovValoresEgresos1.ceCaja.Enabled          := DSBase.State=dsInsert;
  btImprimir.Enabled:=(Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
 // if FormCheACaja<>nil then
//    begin
//      if ((pnValores.Visible) and (pnValores.Enabled) and (pnValores<>nil) ) then
//        pnValores.Enabled :=DSBase.State in [dsInsert,dsEdit];
//    end;
end;

procedure TFormCheACaja.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSCobroCheSUCURSAL.Clear;
      CDSCobroCheMUESTRASUCURSAL.Clear;
      CDSCobroCheID_TIPOCOMPROBANTE.Clear;
      CDSCobroCheMUESTRACOMPROBANTE.Clear;
      CDSCobroCheLETRA.Clear;
      CDSCobroCheSUC.Clear;
      CDSCobroCheNUMERO.Clear;
    end;
end;

procedure TFormCheACaja.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCobro.DesignReport;
end;

procedure TFormCheACaja.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSCobroCheID_TIPOCOMPROBANTE.Clear;
      CDSCobroCheMUESTRACOMPROBANTE.Clear;
      CDSCobroCheLETRA.Clear;
      CDSCobroCheSUC.Clear;
      CDSCobroCheNUMERO.Clear;
    end;
end;

procedure TFormCheACaja.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;
  WITH FrameMovValoresEgresos1 DO
    BEGIN
      TipoCpbte      := CDSCobroCheTIPOCPBTE.Value;
      TipoOperacion  := 'E';
      ClaseCpbte     := CDSCobroCheCLASECPBTE.Value;
      NroCpbte       := CDSCobroCheNROCPBTE.Value;
      FechaOperacion := CDSCobroCheFECHA.AsDateTime;
      IdCpbte        := CDSCobroCheID.Value;
      Origen         := 'Cobro de Che Caja';
    END;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  CpbteNuevo:='N';
end;

procedure TFormCheACaja.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  CDSCobroCheIMPORTE.AsFloat := FrameMovValoresEgresos1.SumaValores;
end;

procedure TFormCheACaja.FrameMovValoresEgresos1spLoteChequesClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.spLoteChequesClick(Sender);

end;

procedure TFormCheACaja.ImprimirExecute(Sender: TObject);
begin
  inherited;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSCobroCheID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSCobroCheSUCURSAL.Value;
  QComprob.Open;
  CDSEmpresa.Open;

  frCobro.PrintOptions.Printer:=PrNomCpbte;
  frCobro.SelectPrinter;

  frCobro.LoadFromFile(DMMain_FD.PathReportesLst+'\'+QComprobREPORTE.AsString);
  frCobro.Variables['Mascara']  :=''''+Mascara+'''';

  frCobro.PrepareReport;
  frCobro.ShowReport;
  CDSEmpresa.Close;

  QComprob.Close;

end;

procedure TFormCheACaja.CDSCobroCheID_TIPOCOMPROBANTESetText(
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

procedure TFormCheACaja.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSCobroChe.close;
  CDSCobroChe.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSCobroChe.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSCobroChe.Open;

  FrameMovValoresEgresos1.TipoOperacion:='E';

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CalcularValores;
  //FrameMovValoresEgresos1.SumaValores;
  FrameMovValoresEgresos1.dbgMovimientos.Refresh;

  pnPrincipal.Enabled:=True;
  pnValores.Enabled:=True;

  // VERIFICO SI LA CAJA ESTA CERRADA
  //  QCaja.Close;
  //  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  //  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
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
  DatoNew:=''+DatoNew+'';

end;

end.