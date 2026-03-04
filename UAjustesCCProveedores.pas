UNIT UAjustesCCProveedores;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, IBGenerator, Db, DBClient, Provider,
  StdCtrls, ExtCtrls,  Mask, DBCtrls, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, Librerias, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, JvExMask,
  JvToolEdit, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, Vcl.Menus, JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

TYPE
  TFormAjusteCCProveedores = CLASS(TFormABMBase)
    dbeNombre: TDBEdit;
    dbeRazonSocial: TDBEdit;
    dbeDebe: TDBEdit;
    dbeHaber: TDBEdit;
    dbeDetalle: TDBEdit;
    rgModo: TRadioGroup;
    DSPProveedor: TDataSetProvider;
    IBId_Ajustes: TIBGenerator;
    BuscarProveedor: TAction;
    DSPAjustes: TDataSetProvider;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DSPSucrusal: TDataSetProvider;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    dbeFecha: TJvDBDateEdit;
    dbeFechaVto: TJvDBDateEdit;
    rxdbCodigo: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSProveedores: TClientDataSet;
    CDSProveedoresCODIGO: TStringField;
    CDSProveedoresNOMBRE: TStringField;
    CDSProveedoresRAZON_SOCIAL: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QAjustes: TFDQuery;
    QAjustesID: TIntegerField;
    QAjustesTIPOCPBTE: TStringField;
    QAjustesCLASECPBTE: TStringField;
    QAjustesFECHA: TSQLTimeStampField;
    QAjustesFECHAVTO: TSQLTimeStampField;
    QAjustesLETRA: TStringField;
    QAjustesSUC: TStringField;
    QAjustesNUMERO: TStringField;
    QAjustesNROCPBTE: TStringField;
    QAjustesSUCURSAL: TIntegerField;
    QAjustesCODIGO: TStringField;
    QAjustesDETALLE: TStringField;
    QAjustesDEBE: TFloatField;
    QAjustesHABER: TFloatField;
    QAjustesSALDO: TFloatField;
    QAjustesOBSERVACIONES: TStringField;
    QAjustesUSUARIO: TStringField;
    QAjustesFECHA_HORA: TSQLTimeStampField;
    QAjustesMUESTRANOMBRE: TStringField;
    QAjustesMUESTRARAZONSOCIAL: TStringField;
    QAjustesMUESTRASUCURSAL: TStringField;
    QAjustesMUESTRACOMPROBANTE: TStringField;
    QAjustesID_TIPOCOMPROBANTE: TIntegerField;
    CDSAjustes: TClientDataSet;
    CDSAjustesID: TIntegerField;
    CDSAjustesTIPOCPBTE: TStringField;
    CDSAjustesCLASECPBTE: TStringField;
    CDSAjustesLETRA: TStringField;
    CDSAjustesSUC: TStringField;
    CDSAjustesNUMERO: TStringField;
    CDSAjustesNROCPBTE: TStringField;
    CDSAjustesSUCURSAL: TIntegerField;
    CDSAjustesCODIGO: TStringField;
    CDSAjustesDETALLE: TStringField;
    CDSAjustesOBSERVACIONES: TStringField;
    CDSAjustesMUESTRANOMBRE: TStringField;
    CDSAjustesMUESTRARAZONSOCIAL: TStringField;
    CDSAjustesMUESTRASUCURSAL: TStringField;
    CDSAjustesMUESTRACOMPROBANTE: TStringField;
    CDSAjustesID_TIPOCOMPROBANTE: TIntegerField;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesFECHAVTO: TSQLTimeStampField;
    CDSAjustesDEBE: TFloatField;
    CDSAjustesHABER: TFloatField;
    CDSAjustesSALDO: TFloatField;
    CDSAjustesUSUARIO: TStringField;
    CDSAjustesFECHA_HORA: TSQLTimeStampField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QBuscaComprob: TFDQuery;
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
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    QAjustesLOTE: TIntegerField;
    CDSAjustesLOTE: TIntegerField;
    DBText1: TDBText;
    JvLabel1: TJvLabel;
    BorrarLote: TAction;
    PopupMenu1: TPopupMenu;
    BorrarLote1: TMenuItem;
    DSPListaMotProveedores: TDataSetProvider;
    CDSListaMotProvee: TClientDataSet;
    QAjustesMOTIVO_AJUSTE: TIntegerField;
    CDSAjustesMOTIVO_AJUSTE: TIntegerField;
    dbcMotivo: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    DSListaMotProvee: TDataSource;
    DBText2: TDBText;
    PROCEDURE wwCDSMovCCPROVEEDORSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE wwCDSMovCCNUMEROSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE rgModoClick(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE BuscarProveedorExecute(Sender: TObject);
    PROCEDURE BuscarExecute(Sender: TObject);
    PROCEDURE AgregarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure wwCDSMovCCDEBESetText(Sender: TField; const Text: String);
    procedure wwCDSMovCCHABERSetText(Sender: TField; const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSAjustesSUCSetText(Sender: TField; const Text: String);
    procedure CDSAjustesNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAjustesNewRecord(DataSet: TDataSet);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BorrarLoteExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    Mascara:String;
    FUNCTION AsignarProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;

    { Public declarations }
  END;

VAR
  FormAjusteCCProveedores: TFormAjusteCCProveedores;

PROCEDURE UltimoComprobante;

IMPLEMENTATION

{$R *.DFM}
USES UBuscadorCpbte, UDMain_FD, DMBuscadoresForm,
     DMStoreProcedureForm, UBuscadorProveedor;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormAjusteCCProveedores DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSAjustesLETRA.AsString <> '') AND (CDSAjustesCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value    := CDSAjustesLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSAjustesSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSAjustesCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSAjustesTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSAjustesSUCSetText(CDSAjustesSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSAjustesNUMEROSetText(CDSAjustesNUMERO, IntToStr(Numero));
          CDSAjustesTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSAjustesCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSAjustesNROCPBTE.AsString := CDSAjustesLETRA.AsString + CDSAjustesSUC.AsString + CDSAjustesNUMERO.AsString;
    END;
END;


FUNCTION TFormAjusteCCProveedores.AsignarProveedor(Dato: STRING): Boolean;
BEGIN
  CDSProveedores.Close;
  CDSProveedores.Params.ParamByName('Codigo').Value := Dato;
  CDSProveedores.Open;
  IF NOT (CDSProveedores.IsEmpty) THEN
    BEGIN
      result := True;
      CDSAjustesMUESTRANOMBRE.Value := CDSProveedoresNOMBRE.Value;
      CDSAjustesMUESTRARAZONSOCIAL.Value := CDSProveedoresRAZON_SOCIAL.Value;
    END
  ELSE
    Result := False;
END;

FUNCTION TFormAjusteCCProveedores.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSAjustesID_TIPOCOMPROBANTE.Clear;
      CDSAjustesMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSAjustesID_TIPOCOMPROBANTESetText(CDSAjustesID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          dbeDetalle.SetFocus;
        end;
      Result := True;
      CDSAjustesMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjustesMUESTRASUCURSAL.Value := '';
    END;
  CDSBuscaComprob.close;

END;


FUNCTION TFormAjusteCCProveedores.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSAjustesSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAjustesMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAjustesLETRA.Value              := QComprobLETRA.Value;
      CDSAjustesTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAjustesCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAjustesMUESTRACOMPROBANTE.Value := '';
      CDSAjustesLETRA.Value := '';
      CDSAjustesTIPOCPBTE.Value := '';
    END;
  QComprob.Close;
END;

PROCEDURE TFormAjusteCCProveedores.wwCDSMovCCPROVEEDORSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  INHERITED;
  Sender.AsString := Copy('000000', 1, 6 - Length(Text)) + Text;
  IF NOT (AsignarProveedor(Sender.AsString)) THEN
    BEGIN
      ShowMessage('Codigo Cliente No válido');
      Sender.AsString := '';
      RxDBCodigo.SetFocus;
    END;
  // agrego esta linea para que no haga un efecto visual falso del dato entrado
  // si no se veia sin 00000 adelante....
  RxDBCodigo.Text := Sender.AsString;

END;

PROCEDURE TFormAjusteCCProveedores.wwCDSMovCCNUMEROSetText(Sender: TField;
  CONST Text: STRING);
BEGIN
  INHERITED;
  Sender.AsString := Copy('0000000000000', 1, 12 - length(Text)) + Text;
END;

PROCEDURE TFormAjusteCCProveedores.rgModoClick(Sender: TObject);
BEGIN
  INHERITED;
  CASE rgModo.ItemIndex OF
    0:
      BEGIN
        dbeDebe.Enabled       := True;
        dbeHaber.Enabled      := False;
        dbeFechaVto.Enabled   := False;
        IF DSBase.State in [dsInsert,dsEdit] Then
          CDSAjustesHABER.AsFloat := 0;
        dbeHaber.Color        := clBtnFace;
        dbeDebe.Color         := clWhite;
        dbeFechaVto.Color     := clBtnFace;
      END;
    1:
      BEGIN
        dbeDebe.Enabled       := False;
        dbeHaber.Enabled      := True;
        dbeFechaVto.Enabled   := True;
        IF DSBase.State in [dsInsert,dsEdit] Then
          CDSAjustesDEBE.AsFloat  := 0;
        dbeHaber.Color        := clWhite;
        dbeDebe.Color         := clBtnFace;
        dbeFechaVto.Color     := clWhite;
      END;
  END;
END;

PROCEDURE TFormAjusteCCProveedores.FormCreate(Sender: TObject);
BEGIN
  INHERITED;
  SinBde:=2;
  AddClientDataSet(CDSAjustes,DSPAjustes);
  CDSAjustes.OPen;
  rgModo.ItemIndex      := 0;
  dbeDebe.Enabled       := True;
  dbeDebe.Color         := clWhite;
  dbeHaber.Enabled      := False;
  dbeHaber.Color        := clBtnFace;

  Mascara           :=  DMMain_FD.MascaraAplicacionesCC;
  CDSListaMotProvee.Close;
  CDSListaMotProvee.Open;

  CDSAjustes.Open;
  CDSAjustesDEBE.EditFormat :=Mascara;
  CDSAjustesHABER.EditFormat:=Mascara;
  CDSAjustesSALDO.EditFormat:=Mascara;
  CDSAjustesDEBE.DisplayFormat :=Mascara;
  CDSAjustesHABER.DisplayFormat:=Mascara;
  CDSAjustesSALDO.DisplayFormat:=Mascara;

  Tabla:='ajuste_cc_provee';
  Campo:='id';
END;

PROCEDURE TFormAjusteCCProveedores.BuscarProveedorExecute(Sender: TObject);
BEGIN
  INHERITED;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
    CDSAjustesCODIGOSetText(CDSAjustesCODIGO,FormBuscadorProveedor.Codigo);

END;

PROCEDURE TFormAjusteCCProveedores.BuscarExecute(Sender: TObject);
BEGIN
  INHERITED;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 14;
  FormBuscaCpbte.TipoCpbte1 := 'AJ';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

END;



PROCEDURE TFormAjusteCCProveedores.AgregarExecute(Sender: TObject);
BEGIN
  INHERITED;
  rxdbCodigo.SetFocus;
END;

procedure TFormAjusteCCProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSAjustes.Close;
  Action:=caFree;
end;

procedure TFormAjusteCCProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAjusteCCProveedores:=nil;
end;

procedure TFormAjusteCCProveedores.wwCDSMovCCDEBESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=FloatToStr(Moneda3D(' ',Mascara,StrToFloat(Text)));
end;

procedure TFormAjusteCCProveedores.wwCDSMovCCHABERSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=FloatToStr(Moneda3D(' ',Mascara,StrToFloat(Text)));
end;

procedure TFormAjusteCCProveedores.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSAjustesSUCURSALSetText(CDSAjustesSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormAjusteCCProveedores.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSAjustesSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSAjustesID_TIPOCOMPROBANTESetText(CDSAjustesID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormAjusteCCProveedores.CDSAjustesSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAjustesNROCPBTE.Value := CDSAjustesLETRA.Value +  CDSAjustesSUC.Value + CDSAjustesNUMERO.Value;

end;

procedure TFormAjusteCCProveedores.CDSAjustesNUMEROSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=copy('00000000',1,Sender.Size-length(text))+Text;
  CDSAJustesNROCPBTE.Value := CDSAjustesLETRA.Value + CDSAjustesSUC.Value + CDSAjustesNUMERO.Value;

end;

procedure TFormAjusteCCProveedores.CDSAjustesSUCURSALSetText(
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

procedure TFormAjusteCCProveedores.CDSAjustesCODIGOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;;
      if not(AsignarProveedor(Sender.AsString)) Then
        begin
          Sender.AsString := '';
          ShowMessage('Codigo No Valido');
          RxDBCodigo.SetFocus;
        end;
    end;

end;

procedure TFormAjusteCCProveedores.CDSAjustesID_TIPOCOMPROBANTESetText(
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

procedure TFormAjusteCCProveedores.CDSAjustesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSAjustesID.Value              := IBId_Ajustes.IncrementFD(1);
  CDSAjustesFECHA.AsDateTime      := Date;
  CDSAjustesSUCURSALSetText(CDSAjustesSUCURSAL,IntToStr(FormAjusteCCProveedores.SucursalPorDefecto));
  CDSAjustesDETALLE.Value         :='Ajustes Saldo';
  CDSAjustesDEBE.AsFLoat          := 0;
  CDSAjustesHABER.AsFloat         := 0;
  CDSAjustesSALDO.AsFloat         := 0;
  CDSAjustesLOTE.Value            := 0;
  CDSAjustesMOTIVO_AJUSTE.Value   := -1;
  CDSAjustesFECHA_HORA.AsDateTime := Now;
  CDSAjustesUSUARIO.Value         := DMMain_FD.UsuarioActivo;

end;

procedure TFormAjusteCCProveedores.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('id').Value:=DatoNew;
  CDSAjustes.Open;
  if CDSAjustesDEBE.AsFloat>0 Then
     rgModo.ItemIndex:=0
  else
     rgModo.ItemIndex:=1;
  DatoNew:=''+DatoNew+'';
  FormAjusteCCProveedores.Caption:='Ajustes de Cta.Cte.Proveedores -- '+CDSAjustesFECHA_HORA.AsString+'//'+Copy(CDSAjustesUSUARIO.Value,1,15);
end;

procedure TFormAjusteCCProveedores.ConfirmaExecute(Sender: TObject);
begin
  if CDSAjustesID_TIPOCOMPROBANTE.AsString=''  then
    raise Exception.Create('No se ingreso tipo de comprobante....');
  if CDSAjustesCODIGO.AsString=''  then
    raise Exception.Create('No se ingreso el Porveedor....');
  if (CDSAjustesFECHAVTO.AsString='') and (rgModo.ItemIndex=1) then
    CDSAjustesFECHAVTO.Value:=CDSAjustesFECHA.Value;
  DatoNew   := IntToStr(CDSAjustesID.Value);
  TipoCpbte := CDSAjustesTIPOCPBTE.Value;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormAjusteCCProveedores.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbeFecha.Enabled       := DSBase.State=dsInsert;
  dbeLetra.Enabled       := DSBase.State=dsInsert;
  dbeSuc.Enabled         := DSBase.State=dsInsert;
  dbeNumero.Enabled      := DSBase.State=dsInsert;

  RxDBESucursal.Enabled  := DSBase.State=dsInsert;
  rxdbCodigo.Enabled     := DSBase.State=dsInsert;
  RxCTipoCpbte.Enabled   := DSBase.State=dsInsert;

end;

procedure TFormAjusteCCProveedores.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormAjusteCCProveedores.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;

end;

procedure TFormAjusteCCProveedores.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letra = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRA').AsString,'''');
  inherited;
end;

procedure TFormAjusteCCProveedores.BorrarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador Then
    inherited
  else
    ShowMessage('No tiene permiso para esta operación....');
end;

procedure TFormAjusteCCProveedores.BorrarLoteExecute(Sender: TObject);
begin
  inherited;
  if CDSAjustesLOTE.AsString<>''  then
    if CDSAjustesLOTE.Value>0 then
      if MessageDlg('Esta por borrar el Lote Nro.: '+CDSAjustesLOTE.AsString+' ... esta seguro?',mtInformation,mbYesNo,0,mbNo)=mrYes then
        begin
          DMStoreProcedure.QBorraLoteAjusteComp.Close;
          DMStoreProcedure.QBorraLoteAjusteComp.ParamByName('Lote').Value:=CDSAjustesLOTE.Value;
          DMStoreProcedure.QBorraLoteAjusteComp.ExecSQL;
          DMStoreProcedure.QBorraLoteAjusteComp.Close;
        end;
end;

END.