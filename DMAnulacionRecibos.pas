unit DMAnulacionRecibos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Db, IBGenerator, Provider, DBClient, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosAnulacionRecibo = class(TDataModule)
    CDSAnulacionRecibo: TClientDataSet;
    DSPAnulacionRecibo: TDataSetProvider;
    IBGId_Rc: TIBGenerator;
    DSPClientes: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    DSPEmpresa: TDataSetProvider;
    CDSAnulacionReciboID_ANULACION: TIntegerField;
    CDSAnulacionReciboTIPOCPBTE: TStringField;
    CDSAnulacionReciboCLASECPBTE: TStringField;
    CDSAnulacionReciboNROCPBTE: TStringField;
    CDSAnulacionReciboCODIGO: TStringField;
    CDSAnulacionReciboLETRA: TStringField;
    CDSAnulacionReciboSUC: TStringField;
    CDSAnulacionReciboNUMERO: TStringField;
    CDSAnulacionReciboNOMBRE: TStringField;
    CDSAnulacionReciboRAZONSOCIAL: TStringField;
    CDSAnulacionReciboCPOSTAL: TStringField;
    CDSAnulacionReciboLOCALIDAD: TStringField;
    CDSAnulacionReciboTIPOIVA: TIntegerField;
    CDSAnulacionReciboCUIT: TStringField;
    CDSAnulacionReciboFECHA: TSQLTimeStampField;
    CDSAnulacionReciboTOTAL: TFloatField;
    CDSAnulacionReciboOBSERVACIONES1: TStringField;
    CDSAnulacionReciboOBSERVACIONES2: TStringField;
    CDSAnulacionReciboSUCURSAL: TIntegerField;
    CDSAnulacionReciboUSUARIO: TStringField;
    CDSAnulacionReciboMUESTRASUCURSAL: TStringField;
    CDSAnulacionReciboMUESTRACOMPROBANTE: TStringField;
    CDSAnulacionReciboID_TIPOCOMPROBANTE: TIntegerField;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
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
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    DSAnulacionRet: TDataSource;
    CDSAnulacionRet: TClientDataSet;
    DSPAnulacionRet: TDataSetProvider;
    QAnulacionRet: TFDQuery;
    QAnulacionRetID_MOV_RETENCIONES: TIntegerField;
    QAnulacionRetID_RETENCION: TIntegerField;
    QAnulacionRetDETALLE: TStringField;
    QAnulacionRetTIPOCPBTE: TStringField;
    QAnulacionRetCLASECPBTE: TStringField;
    QAnulacionRetNROCPBTE: TStringField;
    QAnulacionRetID_CPBTE: TIntegerField;
    QAnulacionRetFECHA: TSQLTimeStampField;
    QAnulacionRetFECHA_RETENCION: TSQLTimeStampField;
    QAnulacionRetNRO_RETENCION: TStringField;
    QAnulacionRetIMPORTE: TFloatField;
    QAnulacionRetCODIGO_CLIENTE: TStringField;
    QAnulacionRetCUIT_CLIENTE: TStringField;
    QAnulacionRetJURIDICCION: TIntegerField;
    QAnulacionRetNOMBRE_CLIENTE: TStringField;
    CDSAnulacionRetID_MOV_RETENCIONES: TIntegerField;
    CDSAnulacionRetID_RETENCION: TIntegerField;
    CDSAnulacionRetDETALLE: TStringField;
    CDSAnulacionRetTIPOCPBTE: TStringField;
    CDSAnulacionRetCLASECPBTE: TStringField;
    CDSAnulacionRetNROCPBTE: TStringField;
    CDSAnulacionRetID_CPBTE: TIntegerField;
    CDSAnulacionRetFECHA: TSQLTimeStampField;
    CDSAnulacionRetFECHA_RETENCION: TSQLTimeStampField;
    CDSAnulacionRetNRO_RETENCION: TStringField;
    CDSAnulacionRetIMPORTE: TFloatField;
    CDSAnulacionRetCODIGO_CLIENTE: TStringField;
    CDSAnulacionRetCUIT_CLIENTE: TStringField;
    CDSAnulacionRetJURIDICCION: TIntegerField;
    CDSAnulacionRetNOMBRE_CLIENTE: TStringField;
    DSBuscaRet: TDataSource;
    QBuscaRt: TFDQuery;
    DSPBuscaRet: TDataSetProvider;
    CDSBuscaRet: TClientDataSet;
    QAnulacionRetID_ANULACION: TIntegerField;
    CDSAnulacionRetID_ANULACION: TIntegerField;
    CDSBuscaRetID_MOV_RETENCIONES: TIntegerField;
    CDSBuscaRetID_RETENCION: TIntegerField;
    CDSBuscaRetDETALLE: TStringField;
    CDSBuscaRetTIPOCPBTE: TStringField;
    CDSBuscaRetCLASECPBTE: TStringField;
    CDSBuscaRetNROCPBTE: TStringField;
    CDSBuscaRetID_CPBTE: TIntegerField;
    CDSBuscaRetFECHA: TSQLTimeStampField;
    CDSBuscaRetFECHA_RETENCION: TSQLTimeStampField;
    CDSBuscaRetNRO_RETENCION: TStringField;
    CDSBuscaRetIMPORTE: TFloatField;
    CDSBuscaRetCUIT_CLIENTE: TStringField;
    CDSBuscaRetJURIDICCION: TIntegerField;
    CDSBuscaRetNOMBRE_CLIENTE: TStringField;
    CDSBuscaRetCODIGO_CLIENTE: TStringField;
    procedure CDSAnulacionReciboSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionReciboNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionReciboSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionReciboID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionReciboCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionReciboNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSAnulacionRetNewRecord(DataSet: TDataSet);
    procedure CDSAnulacionRetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    MascaraGral     : String;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    PROCEDURE AplicaMascaraNumerica;
  end;

var
  DatosAnulacionRecibo: TDatosAnulacionRecibo;

implementation

uses UAnulacionRecibos, UDMain_FD;
{$R *.DFM}

FUNCTION TDatosAnulacionRecibo.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  CDSClientes.Close;
  CDSClientes.Params.ParamByName('Codigo').Value := Dato;
  CDSClientes.Open;
  IF NOT (CDSClientes.Eof) THEN
    BEGIN
      CDSAnulacionReciboCODIGO.AsString      := CDSClientesCODIGO.AsString;
      CDSAnulacionReciboRAZONSOCIAL.AsString := CDSClientesRAZON_SOCIAL.ASString;
      CDSAnulacionReciboNOMBRE.AsString      := CDSClientesNOMBRE.AsString;
      CDSAnulacionReciboCUIT.AsString        := CDSClientesNRO_DE_CUIT.AsString;
      CDSAnulacionReciboTIPOIVA.AsInteger    := CDSClientesCONDICION_IVA.AsInteger;
      CDSAnulacionReciboCPOSTAL.AsString     := CDSClientesCPOSTAL.AsString;
      CDSAnulacionReciboLOCALIDAD.AsString   := CDSClientesLOCALIDAD.AsString;

      // Para tomar el ultimo numero de Comprobante
      Result := True;
    END
  ELSE
    Result := False;
END;

FUNCTION TDatosAnulacionRecibo.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSAnulacionReciboMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
      CDSAnulacionReciboID_TIPOCOMPROBANTE.Clear;
      CDSAnulacionReciboMUESTRACOMPROBANTE.Clear;
      FormAnulacionRecibos.CDSBuscaComprob.close;
      FormAnulacionRecibos.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      FormAnulacionRecibos.CDSBuscaComprob.Open;
      if FormAnulacionRecibos.CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosAnulacionRecibo.CDSAnulacionReciboID_TIPOCOMPROBANTESetText(DatosAnulacionRecibo.CDSAnulacionReciboID_TIPOCOMPROBANTE,FormAnulacionRecibos.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormAnulacionRecibos.RxDBECodigo.SetFocus;
        end;
      FormAnulacionRecibos.CDSBuscaComprob.Close;

    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionReciboMUESTRASUCURSAL.Value := '';
    END;
   CDSSucursal.Close;
END;

FUNCTION TDatosAnulacionRecibo.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value  := dato;
  QComprob.ParamByName('suc').Value := CDSAnulacionReciboSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAnulacionReciboMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAnulacionReciboLETRA.Value              := QComprobLETRA.Value;
      CDSAnulacionReciboTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAnulacionReciboCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionReciboMUESTRACOMPROBANTE.Value := '';
      CDSAnulacionReciboLETRA.Value              := '';
      CDSAnulacionReciboTIPOCPBTE.Value          := '';
      CDSAnulacionReciboCLASECPBTE.Value         := '';
    END;
END;

procedure TDatosAnulacionRecibo.AplicaMascaraNumerica;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='RECIBOS';
  DMMain_FD.QOpciones.Open;
  MascaraGral:=DMMain_FD.QOpciones.Fields[0].AsString;
  TFloatField(CDSAnulacionReciboTOTAL).EditFormat    :=MascaraGral;
  TFloatField(CDSAnulacionReciboTOTAL).DisplayFormat :=MascaraGral;

end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboSUCSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size - Length(text)) + Text;
  CDSAnulacionReciboNROCPBTE.Value := CDSAnulacionReciboLETRA.Value +
                                      CDSAnulacionReciboSUC.Value +
                                      CDSAnulacionReciboNUMERO.Value;

end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboNUMEROSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size - Length(text)) + Text;
  CDSAnulacionReciboNROCPBTE.Value := CDSAnulacionReciboLETRA.Value +
                                     CDSAnulacionReciboSUC.Value +
                                     CDSAnulacionReciboNUMERO.Value;

end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) Then
  begin
    Sender.AsString := Text;
    IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString := '';
        ShowMessage('Codigo Sucursal No Valido');
        SysUtils.Abort;
      END
    ELSE IF CDSAnulacionRecibo.State = dsInsert THEN
      UltimoComprobante;
  end;

end;

procedure TDatosAnulacionRecibo.CDSAnulacionRetAfterPost(DataSet: TDataSet);
VAR CDSClone:TClientDataSet;
Aux:Extended;
begin
  Aux:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSAnulacionRet,True);
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      Aux:=Aux+CDSClone.FieldByName('importe').AsFloat;
      CDSClone.Next;
    end;
  FormAnulacionRecibos.edTotaRetenciones.Value:=Aux;
  CDSAnulacionReciboTOTAL.AsFloat:=FormAnulacionRecibos.edTotaRetenciones.Value+
                                 FormAnulacionRecibos.FrameMovValoresEgresos1.SumaValores;
  CDSClone.Free;
end;

procedure TDatosAnulacionRecibo.CDSAnulacionRetNewRecord(DataSet: TDataSet);
begin
  CDSAnulacionRetID_ANULACION.Value:=CDSAnulacionReciboID_ANULACION.Value;
end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
          FormAnulacionRecibos.RxCTipoCpbte.SetFocus;
        END;
      IF CDSAnulacionRecibo.State = dsInsert THEN
        UltimoComprobante;
    end;

end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboCODIGOSetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString := '';
          FormAnulacionRecibos.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....

    end;
end;

procedure TDatosAnulacionRecibo.CDSAnulacionReciboNewRecord(
  DataSet: TDataSet);
begin
  CDSAnulacionReciboID_ANULACION.Value := IBGId_Rc.IncrementFD(1);
  CDSAnulacionReciboFECHA.AsDateTime   := Date;
  CDSAnulacionReciboTOTAL.AsFloat      := 0;
  CDSAnulacionReciboSUCURSALSetText(CDSAnulacionReciboSUCURSAL,IntToStr(FormAnulacionRecibos.SucursalPorDefecto));
  CDSAnulacionReciboUSUARIO.Value      :=DMMain_FD.UsuarioActivo;

end;

procedure TDatosAnulacionRecibo.DataModuleDestroy(Sender: TObject);
begin
  DatosAnulacionRecibo:=nil;
end;

end.
