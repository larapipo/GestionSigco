unit UAnulacionAdelantosSueldo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresIngreso, JvGradient, JvFormPlacement, Librerias,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, frxClass,
  frxDBSet, IBGenerator, DB, DBClient,  Provider,  
  StdCtrls, Mask, ActnList, ComCtrls, JvExControls, Buttons,
  ToolWin, ExtCtrls, JvAppStorage,JvAppIniStorage, System.Actions, Vcl.DBCtrls,
  JvComponentBase, Vcl.ImgList, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormAnulacionAdelantos = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    pnImporte: TPanel;
    DBEdit2: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDetalle: TDBEdit;
    dbeNombre: TDBEdit;
    pnValores: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    DSPAnulacionAdelantos: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    IBGId_Adelantos: TIBGenerator;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    BuscarEmpleado: TAction;
    Imprimir: TAction;
    frAdelantos: TfrxReport;
    frDBEfectivo: TfrxDBDataset;
    frdbAdelantos: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBCheques: TfrxDBDataset;
    frDBDMovCaja: TfrxDBDataset;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBCodigo: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QAnulacionAdelantos: TFDQuery;
    QAnulacionAdelantosID: TIntegerField;
    QAnulacionAdelantosTIPOCPBTE: TStringField;
    QAnulacionAdelantosCLASECPBTE: TStringField;
    QAnulacionAdelantosLETRA: TStringField;
    QAnulacionAdelantosSUC: TStringField;
    QAnulacionAdelantosNUMERO: TStringField;
    QAnulacionAdelantosSUCURSAL: TIntegerField;
    QAnulacionAdelantosFECHA: TSQLTimeStampField;
    QAnulacionAdelantosCODIGO: TStringField;
    QAnulacionAdelantosIMPORTE: TFloatField;
    QAnulacionAdelantosDETALLE: TStringField;
    QAnulacionAdelantosNROCPBTE: TStringField;
    QAnulacionAdelantosNOMBRE: TStringField;
    QAnulacionAdelantosMUESTRASUCURSAL: TStringField;
    QAnulacionAdelantosMUESTRACOMPROBANTE: TStringField;
    QAnulacionAdelantosID_TIPOCOMPROBANTE: TIntegerField;
    CDSAnulacionAdelantos: TClientDataSet;
    CDSAnulacionAdelantosID: TIntegerField;
    CDSAnulacionAdelantosTIPOCPBTE: TStringField;
    CDSAnulacionAdelantosCLASECPBTE: TStringField;
    CDSAnulacionAdelantosLETRA: TStringField;
    CDSAnulacionAdelantosSUC: TStringField;
    CDSAnulacionAdelantosNUMERO: TStringField;
    CDSAnulacionAdelantosSUCURSAL: TIntegerField;
    CDSAnulacionAdelantosFECHA: TSQLTimeStampField;
    CDSAnulacionAdelantosCODIGO: TStringField;
    CDSAnulacionAdelantosIMPORTE: TFloatField;
    CDSAnulacionAdelantosDETALLE: TStringField;
    CDSAnulacionAdelantosNROCPBTE: TStringField;
    CDSAnulacionAdelantosNOMBRE: TStringField;
    CDSAnulacionAdelantosMUESTRASUCURSAL: TStringField;
    CDSAnulacionAdelantosMUESTRACOMPROBANTE: TStringField;
    CDSAnulacionAdelantosID_TIPOCOMPROBANTE: TIntegerField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QBuscaComp: TFDQuery;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    QEmpleado: TFDQuery;
    QEmpleadoNOMBRE: TStringField;
    CDSBuscaEmpleado: TClientDataSet;
    DSPBuscaEmpleado: TDataSetProvider;
    CDSBuscaEmpleadoNOMBRE: TStringField;
    CDSBuscaEmpleadoCODIGO: TStringField;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorEmpleado: TComBuscador;
    procedure CDSAnulacionAdelantosSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionAdelantosNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionAdelantosSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionAdelantosCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionAdelantosID_TIPOCOMPROBANTESetText(
      Sender: TField; const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure pnValoresEnter(Sender: TObject);
    procedure CDSAnulacionAdelantosNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarEmpleadoExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Mascara:String;
    function AsignarEmpleado(Dato:String):Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
  end;

var
  FormAnulacionAdelantos: TFormAnulacionAdelantos;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorCpbte, DMStoreProcedureForm,DMBuscadoresForm,
  UBuscadorComprobantes, UDMain_FD;


{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormAnulacionAdelantos DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAnulacionAdelantosLETRA.AsString <> '') AND (CDSAnulacionAdelantosCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value    := CDSAnulacionAdelantosLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSAnulacionAdelantosSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSAnulacionAdelantosCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSAnulacionAdelantosTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAnulacionAdelantosSUCSetText(CDSAnulacionAdelantosSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAnulacionAdelantosNUMEROSetText(CDSAnulacionAdelantosNUMERO, IntToStr(Numero));
          CDSAnulacionAdelantosTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAnulacionAdelantosCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAnulacionAdelantosNROCPBTE.AsString := CDSAnulacionAdelantosLETRA.AsString + CDSAnulacionAdelantosSUC.AsString + CDSAnulacionAdelantosNUMERO.AsString;
    END;
END;

FUNCTION TFormAnulacionAdelantos.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSAnulacionAdelantosID_TIPOCOMPROBANTE.Clear;
      CDSAnulacionAdelantosMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAnulacionAdelantosID_TIPOCOMPROBANTESetText(CDSAnulacionAdelantosID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          dbeDetalle.SetFocus;
        end;
       Result := True;
      CDSAnulacionAdelantosMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionAdelantosMUESTRASUCURSAL.Value := '';
    END;
END;


FUNCTION TFormAnulacionAdelantos.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAnulacionAdelantosSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAnulacionAdelantosMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAnulacionAdelantosLETRA.Value              := QComprobLETRA.Value;
      CDSAnulacionAdelantosTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAnulacionAdelantosCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionAdelantosMUESTRACOMPROBANTE.Value := '';
      CDSAnulacionAdelantosLETRA.Value              := '';
      CDSAnulacionAdelantosTIPOCPBTE.Value          := '';
    END;
  QComprob.Close;
END;

function TFormAnulacionAdelantos.AsignarEmpleado(dato:String):Boolean;
begin
  QEmpleado.Close;
  QEmpleado.ParamByName('Codigo').Value:=Dato;
  QEmpleado.Open;
  if Not(QEmpleado.IsEmpty) Then
    begin
      Result:=True;
      CDSAnulacionAdelantosNOMBRE.Value:= QEmpleadoNOMBRE.Value;
      end
    else
      begin
        Result:=False;
        CDSAnulacionAdelantosNOMBRE.Value:='';
      end;
  QEmpleado.Close;
end;


procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosSUCSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAnulacionAdelantosNROCPBTE.Value := CDSAnulacionAdelantosLETRA.Value +
                                         CDSAnulacionAdelantosSUC.Value +
                                         CDSAnulacionAdelantosNUMERO.Value;
end;

procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosNUMEROSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAnulacionAdelantosNROCPBTE.Value := CDSAnulacionAdelantosLETRA.Value +
                                         CDSAnulacionAdelantosSUC.Value +
                                         CDSAnulacionAdelantosNUMERO.Value;
end;

procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
        END;
     end;   
end;

procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosCODIGOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarEmpleado(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          RxDBCodigo.SetFocus;
        end;
    end;
end;

procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
          RxCTipoCpbte.SetFocus;
        END;
      IF DSBase.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TFormAnulacionAdelantos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=1;
  AddClientDataSet(CDSAnulacionAdelantos,DSPAnulacionAdelantos);
  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);

  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
  AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);
  AddClientDataSet(FrameMovValoresIngreso1.CDSAnulacionChe,FrameMovValoresIngreso1.DSPAnulacionChe);


  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;
  FrameMovValoresIngreso1.CDSAnulacionChe.Open;
  FrameMovValoresIngreso1.QCajaCab.Open;

  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

  FrameMovValoresIngreso1.pcValores.ActivePageIndex:=0;
  FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;

  CDSAnulacionAdelantos.Open;

  Mascara:=DMMain_FD.MascaraVales;

  TFloatField(CDSAnulacionAdelantosIMPORTE).EditFormat   :=Mascara;
  TFloatField(CDSAnulacionAdelantosIMPORTE).DisplayFormat:=Mascara;

  pnImporte.BevelInner:=bvNone;
  pnImporte.BevelOuter:=bvNone;
  Tabla:='Anulacion_Adelantos_sueldo';
  Campo:='id';

end;

procedure TFormAnulacionAdelantos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAnulacionAdelantos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnulacionAdelantos:=nil;
end;

procedure TFormAnulacionAdelantos.pnValoresEnter(Sender: TObject);
begin
  inherited;
 if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (RxDBCodigo.Text<>'') and (dbeFecha.Text<>'') then
    begin
      pnValores.Enabled:=True;
      pnCabecera.Enabled:=False;
      WITH FrameMovValoresIngreso1 DO
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
               QCajaCab.Close;
             end;
          TipoCpbte      := CDSAnulacionAdelantosTIPOCPBTE.Value;
          TipoOperacion  := 'I';
          ClaseCpbte     := CDSAnulacionAdelantosCLASECPBTE.Value;
          NroCpbte       := CDSAnulacionAdelantosNROCPBTE.Value;
          FechaOperacion := CDSAnulacionAdelantosFECHA.AsDateTime;
          IdCpbte        := CDSAnulacionAdelantosID.Value;
          Origen         := CDSAnulacionAdelantosNOMBRE.Value;
        END;
    end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
      pnCabecera.Enabled:=True;
      //pnValores.Enabled:=false;
      dbeFecha.SetFocus;
    end;

end;

procedure TFormAnulacionAdelantos.CDSAnulacionAdelantosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSAnulacionAdelantosID.Value         := IBGId_Adelantos.IncrementFD(1);
  CDSAnulacionAdelantosFECHA.AsDateTime := Date;
  CDSAnulacionAdelantosSUCURSALSetText(CDSAnulacionAdelantosSUCURSAL,IntToStr(FormAnulacionAdelantos.SucursalPorDefecto));

end;

procedure TFormAnulacionAdelantos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSAnulacionAdelantos.close;
  CDSAnulacionAdelantos.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  CDSAnulacionAdelantos.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  CDSAnulacionAdelantos.Open;

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Close;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := DatoNew;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSAnulacionChe.Close;
  FrameMovValoresIngreso1.CDSAnulacionChe.Params.ParamByName('id').Value := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSAnulacionChe.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value     := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CDSDebitos.Close;
  FrameMovValoresIngreso1.CDSDebitos.Params.ParamByName('id').Value     := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSDebitos.Open;


  FrameMovValoresIngreso1.CalcularValores;

  IF CDSAnulacionAdelantos.State <> dsBrowse THEN
    CDSAnulacionAdelantos.Cancel;

  pnPrincipal.Enabled:=true;

  pnPrincipal.Enabled:=True;
  pnValores.Enabled:=True;

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
  DatoNew:=''+DatoNew+'';
end;

procedure TFormAnulacionAdelantos.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 26;
  FormBuscaCpbte.TipoCpbte1 := 'AV';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;


end;

procedure TFormAnulacionAdelantos.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
    if comBuscadorSucursal.rOk Then
      CDSAnulacionAdelantosSUCURSALSetText(CDSAnulacionAdelantosSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormAnulacionAdelantos.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
 // CDSBuscaComprob.Close;
//  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAnulacionAdelantosSUCURSAL.Value;
//  CDSBuscaComprob.Open;
//  IF NOT (CDSBuscaComprob.IsEmpty) THEN
//    BEGIN
//      IF BuscadorTipoCpbte.Execute THEN
//        if BuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
//          CDSAnulacionAdelantosID_TIPOCOMPROBANTESetText(CDSAnulacionAdelantosID_TIPOCOMPROBANTE, BuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString);
//    END
//  ELSE
//    ShowMessage('No hay comprobantes definidos para esta Operación...');
//  CDSBuscaComprob.Close;

  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''AV'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAnulacionAdelantosSUCURSAL.Value;


  FormBuscaComprobantes         :=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//    CDSAdelantosID_TIPOCOMPROBANTESetText(CDSAdelantosID_TIPOCOMPROBANTE, comBuscadorTipoCpbte.LookupTable.FieldByName('id_comprobante').AsString);
      CDSAnulacionAdelantosID_TIPOCOMPROBANTESetText(CDSAnulacionAdelantosID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

end;

procedure TFormAnulacionAdelantos.BuscarEmpleadoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaEmpleado.Close;
  CDSBuscaEmpleado.Open;
  comBuscadorEmpleado.Execute;
  if comBuscadorEmpleado.rOk Then
    CDSAnulacionAdelantosCODIGOSetText(CDSAnulacionAdelantosCODIGO,comBuscadorEmpleado.Id);
  CDSBuscaEmpleado.Close;

end;

procedure TFormAnulacionAdelantos.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAnulacionAdelantosID_TIPOCOMPROBANTE.Clear;
      CDSAnulacionAdelantosMUESTRACOMPROBANTE.Clear;
      CDSAnulacionAdelantosLETRA.Clear;
      CDSAnulacionAdelantosSUC.Clear;
      CDSAnulacionAdelantosNUMERO.Clear;
    end;

end;

procedure TFormAnulacionAdelantos.RxDBCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSAnulacionAdelantosCODIGO.Clear;
      CDSAnulacionAdelantosNOMBRE.Clear;
    end;

end;

procedure TFormAnulacionAdelantos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frAdelantos.DesignReport;
end;

procedure TFormAnulacionAdelantos.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  CDSAnulacionAdelantosIMPORTE.AsFloat:=FrameMovValoresIngreso1.SumaValores;
end;

procedure TFormAnulacionAdelantos.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  CDSAnulacionAdelantosIMPORTE.AsFloat:=FrameMovValoresIngreso1.SumaValores;
end;

procedure TFormAnulacionAdelantos.ConfirmaExecute(Sender: TObject);
begin
  if Moneda3D(' ',Mascara,CDSAnulacionAdelantosIMPORTE.AsFloat)=0 Then
    Raise Exception.Create('El Comprobante no puede tener importe 0(cero)....');
  if Moneda3D(' ',Mascara,CDSAnulacionAdelantosIMPORTE.AsFloat)<>Moneda3D(' ',Mascara,FrameMovValoresIngreso1.SumaValores) Then
    Raise Exception.Create('El importe del Cpbte. difiere con los valores ingresados.....');

  DatoNew:=IntToStr(CDSAnulacionAdelantosID.Value);
  TipoCpbte:= CDSAnulacionAdelantosTIPOCPBTE.Value;
  CDSAnulacionAdelantosIMPORTE.AsFloat:= FrameMovValoresIngreso1.SumaValores;
  CDSAnulacionAdelantosNROCPBTE.Value := CDSAnulacionAdelantosLETRA.Value +
                                         CDSAnulacionAdelantosSUC.Value +
                                         CDSAnulacionAdelantosNUMERO.Value;
  if CDSAnulacionAdelantos.State<>dsBrowse Then
    CDSAnulacionAdelantos.Post;
  inherited;
  Recuperar.Execute;
  if Imprime='S' Then
    IF (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
      Imprimir.Execute;
end;

procedure TFormAnulacionAdelantos.ImprimirExecute(Sender: TObject);
begin
  inherited;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSAnulacionAdelantosID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSAnulacionAdelantosSUCURSAL.Value;
  QComprob.Open;
  frAdelantos.PrintOptions.Printer:=PrNomCpbte;
  frAdelantos.SelectPrinter;
  frAdelantos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frAdelantos.Variables['Mascara']  :=''''+Mascara+'''';
  frAdelantos.PrepareReport;
  frAdelantos.ShowReport;
  QComprob.Close;

end;

end.