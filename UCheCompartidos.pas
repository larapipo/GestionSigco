unit UCheCompartidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, UMovValoresIngreso, JvDBControls, JvExMask,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls, IBGenerator,
  DBClient, Provider, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  JvToolEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, JvLabel, Data.SqlExpr,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, Vcl.Grids, Vcl.DBGrids;

type
  TFormCheCompartidos = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDetalle: TDBEdit;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    pnValores: TPanel;
    DSPSucrusal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QCheComp: TFDQuery;
    DSPCheComp: TDataSetProvider;
    CDSCheComp: TClientDataSet;
    ibgIdChe: TIBGenerator;
    QCheCompID: TIntegerField;
    QCheCompFECHA: TSQLTimeStampField;
    QCheCompTIPOCPBTE: TStringField;
    QCheCompCLASECPBTE: TStringField;
    QCheCompLETRA: TStringField;
    QCheCompSUC: TStringField;
    QCheCompNUMERO: TStringField;
    QCheCompCODIGO: TStringField;
    QCheCompNOMBRE: TStringField;
    QCheCompRAZONSOCIAL: TStringField;
    QCheCompSUCURSALVENTA: TIntegerField;
    QCheCompIMPORTE: TFloatField;
    QCheCompSALDO: TFloatField;
    QCheCompDETALLE: TStringField;
    QCheCompNROCPBTE: TStringField;
    QCheCompMUESTRASUCURSAL: TStringField;
    QCheCompMUESTRACOMPROBANTE: TStringField;
    QCheCompID_TIPOCOMPROBANTE: TIntegerField;
    CDSCheCompID: TIntegerField;
    CDSCheCompFECHA: TSQLTimeStampField;
    CDSCheCompTIPOCPBTE: TStringField;
    CDSCheCompCLASECPBTE: TStringField;
    CDSCheCompLETRA: TStringField;
    CDSCheCompSUC: TStringField;
    CDSCheCompNUMERO: TStringField;
    CDSCheCompCODIGO: TStringField;
    CDSCheCompNOMBRE: TStringField;
    CDSCheCompRAZONSOCIAL: TStringField;
    CDSCheCompSUCURSALVENTA: TIntegerField;
    CDSCheCompIMPORTE: TFloatField;
    CDSCheCompSALDO: TFloatField;
    CDSCheCompDETALLE: TStringField;
    CDSCheCompNROCPBTE: TStringField;
    CDSCheCompMUESTRASUCURSAL: TStringField;
    CDSCheCompMUESTRACOMPROBANTE: TStringField;
    CDSCheCompID_TIPOCOMPROBANTE: TIntegerField;
    QBuscaComprob: TFDQuery;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    Imprimir: TAction;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    pnPie: TPanel;
    JvLabel2: TJvLabel;
    dbeSaldo: TDBEdit;
    JvLabel1: TJvLabel;
    dbeTotal: TDBEdit;
    RxLabel2: TJvLabel;
    RxCCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QCheCompDISPONIBLE: TStringField;
    CDSCheCompDISPONIBLE: TStringField;
    QVerificaMovChe: TFDQuery;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorTipoCPbte: TComBuscador;
    DBText1: TDBText;
    QMovChe: TFDQuery;
    DSPMovChe: TDataSetProvider;
    CDSMovChe: TClientDataSet;
    DSMovChe: TDataSource;
    DBGrid1: TDBGrid;
    CDSMovCheFECHA_OPERACION: TSQLTimeStampField;
    CDSMovCheTIPO_COMPROB: TStringField;
    CDSMovCheCLASE_COMPROB: TStringField;
    CDSMovCheHABER: TFloatField;
    CDSMovCheDEBE: TFloatField;
    CDSMovCheCODIGO: TStringField;
    CDSMovCheNROCPBTE: TStringField;
    CDSMovCheNOMBRE: TStringField;
    CDSMovCheIMPORTE: TFloatField;
    CDSMovCheID_CHEQUE_COMPARTIDO: TIntegerField;
    CDSMovCheID_COMPROBANTE: TIntegerField;
    spCorrigeSaldo: TFDStoredProc;
    CorregirSaldo: TAction;
    spCorregirSaldo: TSpeedButton;
    ToolButton1: TToolButton;
    procedure FormCreate(Sender: TObject);
    procedure CDSCheCompNewRecord(DataSet: TDataSet);
    procedure CDSCheCompSUCURSALVENTASetText(Sender: TField;
      const Text: string);
    procedure CDSCheCompID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure CDSCheCompSUCSetText(Sender: TField; const Text: string);
    procedure CDSCheCompNUMEROSetText(Sender: TField; const Text: string);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure pnValoresEnter(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSCheCompCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeInsert(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FrameMovValoresIngreso1dbchE_checkClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure CorregirSaldoExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    procedure AplicarMascarasNumericas;

  end;

var
  FormCheCompartidos: TFormCheCompartidos;

PROCEDURE UltimoComprobante;

implementation

{$R *.dfm}
uses DMStoreProcedureForm, UBuscadorClientes, UBuscadorCpbte,UDMain_FD,
  URecibo_2, UIngresoCaja;


PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormCheCompartidos,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSCheCompLETRA.AsString <> '') AND (CDSCheCompCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSCheCompLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSCheCompSUCURSALVENTA.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSCheCompCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSCheCompTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSCheCompSUCSetText(CDSCheCompSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSCheCompNUMEROSetText(CDSCheCompNUMERO, IntToStr(Numero));
          CDSCheCompTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSCheCompCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSCheCompNROCPBTE.AsString := CDSCheCompLETRA.AsString +
                                     CDSCheCompSUC.AsString +
                                     CDSCheCompNUMERO.AsString;
    END;

END;

FUNCTION TFormCheCompartidos.AsignarCliente(Dato: STRING): Boolean;
BEGIN
   QClientes.Close;
   QClientes.ParamByName('Codigo').Value:=Dato;
   QClientes.Open;
   if Not(QClientes.IsEmpty) then
     begin
       CDSCheCompCODIGO.AsString     := QClientesCODIGO.AsString;
       CDSCheCompRAZONSOCIAL.AsString:= QClientesRAZON_SOCIAL.ASString;
       CDSCheCompNOMBRE.AsString     := QClientesNOMBRE.AsString;
       result:=True;
     END
   ELSE
     begin
       Result:=False;
       CDSCheCompNOMBRE.AsString     := '';
       CDSCheCompCODIGO.AsString     := '';
       CDSCheCompRAZONSOCIAL.AsString:= '';

     END;
END;

procedure TFormCheCompartidos.AplicarMascarasNumericas;
VAR I:Byte;
Mascara:String;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='VTADETUNITARI';
  DMMain_FD.QOpciones.Open;
  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSCheCompIMPORTE).DisplayFormat := Mascara;
  TFloatField(CDSCheCompSALDO).DisplayFormat   := Mascara;
  TFloatField(CDSCheCompIMPORTE).EditFormat    := Mascara;
  TFloatField(CDSCheCompSALDO).EditFormat      := Mascara;

  DMMain_FD.QOpciones.Close;
end;

FUNCTION TFormCheCompartidos.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSCheCompID_TIPOCOMPROBANTE.Clear;
      CDSCheCompMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSCheCompID_TIPOCOMPROBANTESetText(CDSCheCompID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          RxCCodigo.SetFocus;
        end;
       Result := True;
      CDSCheCompMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCheCompMUESTRASUCURSAL.Value := '';
    END;
END;

procedure TFormCheCompartidos.BorrarExecute(Sender: TObject);
begin
  QVerificaMovChe.Close;
  QVerificaMovChe.ParamByName('id').Value:=CDSCheCompID.Value;
  QVerificaMovChe.Open;
  if QVerificaMovChe.Fields[0].AsInteger>0 then
    raise Exception.Create('Hay Movimientos asociados.... no se puede borrar');

  if Trunc(CDSCheCompSALDO.AsFloat*100)<>0 then
    inherited;
end;

procedure TFormCheCompartidos.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    CDSCheCompCODIGOSetText(CDSCheCompCODIGO,FormBuscadorClientes.Codigo);
end;

procedure TFormCheCompartidos.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 32;
  FormBuscaCpbte.TipoCpbte1 := 'CO';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;

end;

procedure TFormCheCompartidos.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSCheCompSUCURSALVENTASetText(CDSCheCompSUCURSALVENTA, IntToStr(comBuscadorSucursal.id));
  CDSBuscaSucursal.Close;

end;

procedure TFormCheCompartidos.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSCheCompSUCURSALVENTA.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSCheCompID_TIPOCOMPROBANTESetText(CDSCheCompID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormCheCompartidos.AgregarExecute(Sender: TObject);
begin
  CDSCheComp.close;
  CDSCheComp.Params.ParamByName('id').Clear;
  CDSCheComp.Params.ParamByName('Tipo').Clear;
  CDSCheComp.Open;

  pnCabecera.Enabled:=True;
  pnValores.Enabled :=True;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  inherited;
  pnCabecera.Enabled:=True;
  pnValores.Enabled :=True;
  if RxCCodigo.Enabled then
    RxCCodigo.SetFocus;


end;

FUNCTION TFormCheCompartidos.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSCheCompSUCURSALVENTA.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSCheCompMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSCheCompLETRA.Value              := QComprobLETRA.Value;
      CDSCheCompTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSCheCompCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSCheCompMUESTRACOMPROBANTE.Value := '';
      CDSCheCompLETRA.Value              := '';
      CDSCheCompTIPOCPBTE.Value          := '';
      CDSCheCompCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;

procedure TFormCheCompartidos.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  sbEstado.SimpleText:='';
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;

  CDSCheComp.close;
  CDSCheComp.Params.ParamByName('id').Clear;
  CDSCheComp.Params.ParamByName('Tipo').Clear;
  CDSCheComp.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  inherited;
  pnCabecera.Enabled:=True;
  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

end;

procedure TFormCheCompartidos.CDSCheCompCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
          RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      RxCCodigo.Text:=Aux;
    end;
end;

procedure TFormCheCompartidos.CDSCheCompID_TIPOCOMPROBANTESetText(
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
          FormCheCompartidos.RxCTipoCpbte.SetFocus;
        END;
      IF CDSCheComp.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TFormCheCompartidos.CDSCheCompNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSCheCompID.Value         := ibgIdChe.IncrementFD(1);
  CDSCheCompFECHA.AsDateTime := Date;
  CDSCheCompIMPORTE.AsFloat  := 0;
  CDSCheCompSALDO.AsFloat    := 0;
  CDSCheCompDISPONIBLE.Value :='S';
  CDSCheCompSUCURSALVENTASetText(CDSCheCompSUCURSALVENTA,IntToStr(sucursalpordefecto));

end;

procedure TFormCheCompartidos.CDSCheCompNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  CDSCheCompNROCPBTE.Value := CDSCheCompLETRA.Value +
                              CDSCheCompSUC.Value +
                              CDSCheCompNUMERO.Value;
end;

procedure TFormCheCompartidos.CDSCheCompSUCSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString := copy('00000000', 1, Sender.Size - length(text)) + Text;
  CDSCheCompNROCPBTE.Value := CDSCheCompLETRA.Value +
                              CDSCheCompSUC.Value +
                              CDSCheCompNUMERO.Value;
end;

procedure TFormCheCompartidos.CDSCheCompSUCURSALVENTASetText(Sender: TField;
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
          SysUtils.Abort;
        END;
    end;

end;

procedure TFormCheCompartidos.ConfirmaExecute(Sender: TObject);
begin
  if FrameMovValoresIngreso1.SumaValores<=0 Then
    Raise Exception.Create('No se ingresaron Valores .....');

  if Trim(CDSCheCompCODIGO.AsString)='' Then
    Raise Exception.Create('No se ingreso Cliente .....');

  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
        BEGIN
          DatoNew   :=IntToStr(CDSCheCompID.Value);
          TipoCpbte :=CDSCheCompTIPOCPBTE.Value;
          CDSCheCompNROCPBTE.Value := CDSCheCompLETRA.Value +
                                      CDSCheCompSUC.Value +
                                      CDSCheCompNUMERO.Value;
          INHERITED;
          Recuperar.Execute;
         // IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes THEN Imprimir.Execute;
        END
     ELSE
      ShowMessage('Faltan datos en la cabecera....');
   IF btNuevo.Enabled = True THEN
       btNuevo.SetFocus;

end;

procedure TFormCheCompartidos.CorregirSaldoExecute(Sender: TObject);
begin
  inherited;
  spCorrigeSaldo.Close;
  spCorrigeSaldo.Params.ParamByName('id_cpte').Value:=CDSCheCompID.Value;
  spCorrigeSaldo.ExecProc;
  spCorrigeSaldo.Close;
end;

procedure TFormCheCompartidos.DBGrid1DblClick(Sender: TObject);
begin
  inherited;
  IF (CDSMovCheID_COMPROBANTE.AsString<>'') and (CDSMovCheTIPO_COMPROB.AsString='RC')Then
    begin
      IF NOT (Assigned(FormRecibo_2)) THEN
        FormRecibo_2:= TFormRecibo_2.Create(Application);
      FormRecibo_2.DatoNew   := CDSMovCheID_COMPROBANTE.AsString;
      FormRecibo_2.TipoCpbte := 'RC';
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
    end
  else
    IF (CDSMovCheID_COMPROBANTE.AsString<>'') and (CDSMovCheTIPO_COMPROB.AsString='IC')Then
      begin
        IF NOT (Assigned(FormIngresoCaja)) THEN
          FormIngresoCaja:= TFormIngresoCaja.Create(Application);
        FormIngresoCaja.DatoNew   := CDSMovCheID_COMPROBANTE.AsString;
        FormIngresoCaja.TipoCpbte := CDSMovCheTIPO_COMPROB.AsString;
        FormIngresoCaja.Recuperar.Execute;
        FormIngresoCaja.Show;
      end
end;

procedure TFormCheCompartidos.FormActivate(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormCheCompartidos<>Nil) then
        Recuperar.Execute;
    end;
end;

procedure TFormCheCompartidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSCheComp.Close;
  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.QCajaCab.Close;
  FrameMovValoresIngreso1.CDSCtasBancarias.Close;

  Action:=caFree;
end;

procedure TFormCheCompartidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde:=2;
  FrameMovValoresIngreso1.tsEfectivo.TabVisible           := False;
  FrameMovValoresIngreso1.tsTCredito.TabVisible           := False;
  FrameMovValoresIngreso1.tsTransf.TabVisible             := False;
  FrameMovValoresIngreso1.tsCheques.TabVisible            := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;
  FrameMovValoresIngreso1.tsValoresCompartidos.TabVisible := False;
  FrameMovValoresIngreso1.tsCtaCte.TabVisible             := False;


  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
  AddClientDataSet(CDSCheComp,DSPCheComp);
  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);

  CDSCheComp.Open;
  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.QCajaCab.Open;
  FrameMovValoresIngreso1.CDSCtasBancarias.Open;

  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;
  AplicarMascarasNumericas;
  
  Campo:='id';
  Tabla:='cheque_compartido';

end;

procedure TFormCheCompartidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCheCompartidos:=nil;
end;

procedure TFormCheCompartidos.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCheCompartidos.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  CDSCheCompIMPORTE.AsFloat := FrameMovValoresIngreso1.SumaValores;
  CDSCheCompSALDO.AsFloat   := CDSCheCompIMPORTE.AsFloat;
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(',0.00',0);
end;

procedure TFormCheCompartidos.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  CDSCheCompIMPORTE.AsFloat := FrameMovValoresIngreso1.SumaValores ;
  CDSCheCompSALDO.AsFloat   := CDSCheCompIMPORTE.AsFloat;
//  cdsche
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(',0.00',0);
end;

procedure TFormCheCompartidos.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
var aux:Extended;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
  aux:= CDScheCompIMPORTE.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(',0.00',aux);

end;

procedure TFormCheCompartidos.FrameMovValoresIngreso1CDSCajaMovBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if FrameMovValoresIngreso1.CDSCajaMov.RecordCount>=1 then
    FrameMovValoresIngreso1.CDSCajaMov.Cancel;
end;

procedure TFormCheCompartidos.FrameMovValoresIngreso1dbchE_checkClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresIngreso1.dbchE_checkClick(Sender);

end;

procedure TFormCheCompartidos.ImprimirExecute(Sender: TObject);
begin
  inherited;
//
end;

procedure TFormCheCompartidos.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') then
     BEGIN
       pnCabecera.Enabled:=False;
       pnValores.Enabled :=True;
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
           TipoCpbte      := CDSCheCompTIPOCPBTE.Value;
           TipoOperacion  := 'I';
           ClaseCpbte     := CDSCheCompCLASECPBTE.Value;
           NroCpbte       := CDSCheCompNROCPBTE.Value;
           FechaOperacion := CDSCheCompFECHA.AsDateTime;
           IdCpbte        := CDSCheCompID.Value;
           Origen         := CDSCheCompNOMBRE.Value;
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

procedure TFormCheCompartidos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSCheComp.close;
  CDSCheComp.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSCheComp.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSCheComp.Open;


  FrameMovValoresIngreso1.TipoOperacion:='I';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresIngreso1.id_Cuenta_caja    :=FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresIngreso1.FechaCaja         :=FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;


  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresIngreso1.CDSChe3.Open;

  Borrar.Enabled := (Trunc(CDSCheCompSALDO.AsFloat*100) = Trunc(CDSCheCompIMPORTE.AsFloat*100));

  FrameMovValoresIngreso1.CalcularValores;

  pnPrincipal.Enabled:=True;
//  pnValores.Enabled:=True;

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
  CDSMovChe.Close;
  CDSMovChe.Params.ParamByName('id').Value:=CDSCheCompID.Value;
  CDSMovChe.Open;
end;

procedure TFormCheCompartidos.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSCheCompID_TIPOCOMPROBANTE.Clear;
      CDSCheCompMUESTRACOMPROBANTE.Clear;
      CDSCheCompLETRA.Clear;
      CDSCheCompSUC.Clear;
      CDSCheCompNUMERO.Clear;
    end;

end;

procedure TFormCheCompartidos.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSCheCompSUCURSALVENTA.Clear;
      CDSCheCompMUESTRASUCURSAL.Clear;
      CDSCheCompID_TIPOCOMPROBANTE.Clear;
      CDSCheCompMUESTRACOMPROBANTE.Clear;
      CDSCheCompLETRA.Clear;
      CDSCheCompSUC.Clear;
      CDSCheCompNUMERO.Clear;
    end;

end;

end.
