unit DMAnulacionOPagos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Provider, Db, DBClient, IBGenerator, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosAnulacionOPago = class(TDataModule)
    IBGId_Anulacion: TIBGenerator;
    DSPProveedor: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    DSPEmpresa: TDataSetProvider;
    CDSAnulacionOPago: TClientDataSet;
    DSPAnulacionOPago: TDataSetProvider;
    DSAnulacionRetGanancia: TDataSource;
    CDSAnulacionRetGanancia: TClientDataSet;
    DSPAnulacionRetGanancia: TDataSetProvider;
    ibgAnulaRet: TIBGenerator;
    DSAnulacionRetIB: TDataSource;
    DSPAnulacionRetIB: TDataSetProvider;
    CDSAnulacionRetIB: TClientDataSet;
    ibgAnulaRetIB: TIBGenerator;
    CDSAnulacionOPagoID_ANULACION: TIntegerField;
    CDSAnulacionOPagoTIPOCPBTE: TStringField;
    CDSAnulacionOPagoCLASECPBTE: TStringField;
    CDSAnulacionOPagoNROCPBTE: TStringField;
    CDSAnulacionOPagoCODIGO: TStringField;
    CDSAnulacionOPagoLETRA: TStringField;
    CDSAnulacionOPagoSUC: TStringField;
    CDSAnulacionOPagoNUMERO: TStringField;
    CDSAnulacionOPagoNOMBRE: TStringField;
    CDSAnulacionOPagoRAZONSOCIAL: TStringField;
    CDSAnulacionOPagoCPOSTAL: TStringField;
    CDSAnulacionOPagoLOCALIDAD: TStringField;
    CDSAnulacionOPagoTIPOIVA: TIntegerField;
    CDSAnulacionOPagoCUIT: TStringField;
    CDSAnulacionOPagoFECHA: TSQLTimeStampField;
    CDSAnulacionOPagoTOTAL: TFloatField;
    CDSAnulacionOPagoOBSERVACIONES1: TStringField;
    CDSAnulacionOPagoOBSERVACIONES2: TStringField;
    CDSAnulacionOPagoSUCURSAL: TIntegerField;
    CDSAnulacionOPagoUSUARIO: TStringField;
    CDSAnulacionOPagoMUESTRASUCURSAL: TStringField;
    CDSAnulacionOPagoMUESTRACOMPROBANTE: TStringField;
    CDSAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField;
    CDSProveedor: TClientDataSet;
    CDSProveedorCODIGO: TStringField;
    CDSProveedorNOMBRE: TStringField;
    CDSProveedorRAZON_SOCIAL: TStringField;
    CDSProveedorN_DE_CUENTA: TStringField;
    CDSProveedorID_COD_POSTAL: TIntegerField;
    CDSProveedorCOD_POSTAL: TStringField;
    CDSProveedorLOCALIDAD: TStringField;
    CDSProveedorDIRECCION: TStringField;
    CDSProveedorTELEFONO_1: TStringField;
    CDSProveedorTELEFONO_2: TStringField;
    CDSProveedorCONDICION_IVA: TIntegerField;
    CDSProveedorN_DE_CUIT: TStringField;
    CDSProveedorACTIVO: TStringField;
    CDSProveedorRETIENE_IVA: TStringField;
    CDSProveedorRETIENE_IB: TStringField;
    CDSProveedorRETIENE_GANANCIAS: TStringField;
    CDSProveedorIVA_SERVICIOS: TStringField;
    CDSProveedorPRECIOS_CON_IVA: TStringField;
    CDSProveedorOBSERVACIONES: TMemoField;
    CDSProveedorNOMBRE_REPRESENTANTE: TStringField;
    CDSProveedorDIRECCION_REPRESENTANTE: TStringField;
    CDSProveedorTELEFONO_REPRESENTANTE: TStringField;
    CDSProveedorTIPO_PROVEEDOR: TStringField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
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
    QAnulacionRetGanancia: TFDQuery;
    QAnulacionRetGananciaID: TIntegerField;
    QAnulacionRetGananciaID_ANULACION_OP: TIntegerField;
    QAnulacionRetGananciaFECHA: TSQLTimeStampField;
    QAnulacionRetGananciaNUMERO_RETENCION: TStringField;
    QAnulacionRetGananciaCODIGO_PROVEEDOR: TStringField;
    QAnulacionRetGananciaCODIGO_REGIMEN: TIntegerField;
    QAnulacionRetGananciaCONCEPTO: TStringField;
    QAnulacionRetGananciaTASA: TFloatField;
    QAnulacionRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    QAnulacionRetGananciaPAGOS_ACUMULADOS: TFloatField;
    QAnulacionRetGananciaIMPUESTO_RETENIDO: TFloatField;
    QAnulacionRetGananciaOBSERVACIONES: TMemoField;
    QAnulacionRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField;
    QAnulacionRetGananciaID_RETENCION: TIntegerField;
    CDSAnulacionRetGananciaID: TIntegerField;
    CDSAnulacionRetGananciaID_ANULACION_OP: TIntegerField;
    CDSAnulacionRetGananciaFECHA: TSQLTimeStampField;
    CDSAnulacionRetGananciaNUMERO_RETENCION: TStringField;
    CDSAnulacionRetGananciaCODIGO_PROVEEDOR: TStringField;
    CDSAnulacionRetGananciaCODIGO_REGIMEN: TIntegerField;
    CDSAnulacionRetGananciaCONCEPTO: TStringField;
    CDSAnulacionRetGananciaTASA: TFloatField;
    CDSAnulacionRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    CDSAnulacionRetGananciaPAGOS_ACUMULADOS: TFloatField;
    CDSAnulacionRetGananciaIMPUESTO_RETENIDO: TFloatField;
    CDSAnulacionRetGananciaOBSERVACIONES: TMemoField;
    CDSAnulacionRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField;
    CDSAnulacionRetGananciaID_RETENCION: TIntegerField;
    QAnulacionRetIB: TFDQuery;
    QAnulacionRetIBID: TIntegerField;
    QAnulacionRetIBCODIGO: TStringField;
    QAnulacionRetIBNOMBRE: TStringField;
    QAnulacionRetIBCUIT: TStringField;
    QAnulacionRetIBFECHA: TSQLTimeStampField;
    QAnulacionRetIBID_CPBTE_ORIGEN: TIntegerField;
    QAnulacionRetIBTIPOCPBTE_ORIGEN: TStringField;
    QAnulacionRetIBCLASECPBTE_ORIGEN: TStringField;
    QAnulacionRetIBNROCPBTE_ORIGEN: TStringField;
    QAnulacionRetIBNROCPBTE_RET: TStringField;
    QAnulacionRetIBTOTAL: TFloatField;
    QAnulacionRetIBNETO_GRAVADO: TFloatField;
    QAnulacionRetIBTASA_RETENCION: TFloatField;
    QAnulacionRetIBID_RETENCION_ING_BRU: TIntegerField;
    QAnulacionRetIBID_ANULACION_OP: TIntegerField;
    CDSAnulacionRetIBID: TIntegerField;
    CDSAnulacionRetIBCODIGO: TStringField;
    CDSAnulacionRetIBNOMBRE: TStringField;
    CDSAnulacionRetIBCUIT: TStringField;
    CDSAnulacionRetIBFECHA: TSQLTimeStampField;
    CDSAnulacionRetIBID_CPBTE_ORIGEN: TIntegerField;
    CDSAnulacionRetIBTIPOCPBTE_ORIGEN: TStringField;
    CDSAnulacionRetIBCLASECPBTE_ORIGEN: TStringField;
    CDSAnulacionRetIBNROCPBTE_ORIGEN: TStringField;
    CDSAnulacionRetIBNROCPBTE_RET: TStringField;
    CDSAnulacionRetIBTOTAL: TFloatField;
    CDSAnulacionRetIBNETO_GRAVADO: TFloatField;
    CDSAnulacionRetIBTASA_RETENCION: TFloatField;
    CDSAnulacionRetIBID_RETENCION_ING_BRU: TIntegerField;
    CDSAnulacionRetIBID_ANULACION_OP: TIntegerField;
    QCheDebitado: TFDQuery;
    QCheDebitadoID: TIntegerField;
    QCheDebitadoID_CTA_BCO: TIntegerField;
    QCheDebitadoFECHA_INGR: TSQLTimeStampField;
    QCheDebitadoFECHA_COBRO: TSQLTimeStampField;
    QCheDebitadoDETALLE: TStringField;
    QCheDebitadoHABER: TFloatField;
    QCheDebitadoFECHA_COBRO_1: TSQLTimeStampField;
    QCheDebitadoFECHA_DEBITO: TSQLTimeStampField;
    QCheDebitadoIMPORTE: TFloatField;
    QRetGanancia: TFDQuery;
    QRetGananciaID: TIntegerField;
    QRetGananciaID_OP: TIntegerField;
    QRetGananciaFECHA: TSQLTimeStampField;
    QRetGananciaNUMERO_RETENCION: TStringField;
    QRetGananciaCODIGO_PROVEEDOR: TStringField;
    QRetGananciaCODIGO_REGIMEN: TIntegerField;
    QRetGananciaCONCEPTO: TStringField;
    QRetGananciaTASA: TFloatField;
    QRetGananciaMINIMO_NO_IMPONIBLE: TFloatField;
    QRetGananciaPAGOS_ACUMULADOS: TFloatField;
    QRetGananciaIMPUESTO_RETENIDO: TFloatField;
    QRetGananciaOBSERVACIONES: TMemoField;
    QRetGananciaVALOR_MINIMO_IMPUESTO: TFloatField;
    QRetGananciaANULADA: TStringField;
    QRetGananciaESTADO: TStringField;
    QRetIIBB: TFDQuery;
    QRetIIBBID: TIntegerField;
    QRetIIBBCODIGO: TStringField;
    QRetIIBBNOMBRE: TStringField;
    QRetIIBBDIRECCION: TStringField;
    QRetIIBBCODIGOPOSTAL: TStringField;
    QRetIIBBLOCALIDAD: TStringField;
    QRetIIBBCUIT: TStringField;
    QRetIIBBTIPOCPBTE: TStringField;
    QRetIIBBCLASECPBTE: TStringField;
    QRetIIBBFECHA: TSQLTimeStampField;
    QRetIIBBLETRA: TStringField;
    QRetIIBBSUC: TStringField;
    QRetIIBBNUMERO: TStringField;
    QRetIIBBSUCURSAL: TIntegerField;
    QRetIIBBID_CPBTE_ORIGEN: TIntegerField;
    QRetIIBBTIPOCPBTE_ORIGEN: TStringField;
    QRetIIBBCLASECPBTE_ORIGEN: TStringField;
    QRetIIBBNROCPBTE_ORIGEN: TStringField;
    QRetIIBBNROCPBTE: TStringField;
    QRetIIBBTOTAL: TFloatField;
    QRetIIBBNOMBRE_AGTE_RET: TStringField;
    QRetIIBBDIRECCION_AGTE_RET: TStringField;
    QRetIIBBCUIT_AGTE_RET: TStringField;
    QRetIIBBCPOSTAL_AGTE_RET: TStringField;
    QRetIIBBLOCALIDAD_AGTE_RET: TStringField;
    QRetIIBBNRO_AGTE_RET: TStringField;
    QRetIIBBNETO_GRAVADO: TFloatField;
    QRetIIBBTASA_RETENCION: TFloatField;
    QRetIIBBANULADO: TStringField;
    QRetIIBBESTADO: TStringField;
    QRetIIBBNRO_IIBB: TStringField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
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
    procedure CDSAnulacionOPagoCODIGOSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionOPagoSUCSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionOPagoNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionOPagoSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionOPagoID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSAnulacionOPagoNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSAnulacionRetGananciaNewRecord(DataSet: TDataSet);
    procedure DSAnulacionRetGananciaStateChange(Sender: TObject);
    procedure CDSAnulacionRetIBNewRecord(DataSet: TDataSet);
    procedure DSAnulacionRetIBStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MascaraGral     : String;
    FUNCTION AsignarProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    PROCEDURE AplicaMascaraNumerica;
  end;

var
  DatosAnulacionOPago: TDatosAnulacionOPago;

implementation

USES UAnulacionOPago, Librerias, UDMain_FD;
{$R *.DFM}


FUNCTION TDatosAnulacionOPago.AsignarProveedor(Dato: STRING): Boolean;
BEGIN
  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
  CDSProveedor.Open;
  IF CDSProveedorCODIGO.Value<>'' THEN
    BEGIN
      CDSAnulacionOPagoNOMBRE.AsString       := CDSProveedorNombre.AsString;
      CDSAnulacionOPagoRAZONSOCIAL.AsString  := CDSProveedorRazon_Social.ASString;

      // Para tomar el ultimo numero de Comprobante
      IF CDSAnulacionOPago.State = dsInsert THEN
        UltimoComprobante;
      Result := True;

    END
  ELSE
    Result := False;
END;

FUNCTION TDatosAnulacionOPago.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSAnulacionOPagoID_TIPOCOMPROBANTE.Clear;
      CDSAnulacionOPagoMUESTRACOMPROBANTE.Clear;
      CDSAnulacionOPagoMuestraSucursal.Value := CDSSucursalDetalle.Value;
      FormAnulacionOPago.CDSBuscaComprob.close;
      FormAnulacionOPago.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      FormAnulacionOPago.CDSBuscaComprob.Open;
      if FormAnulacionOPago.CDSBuscaComprob.RecordCount=1 Then
        begin
          DatosAnulacionOPago.CDSAnulacionOPagoID_TIPOCOMPROBANTESetText(DatosAnulacionOPago.CDSAnulacionOPagoID_TIPOCOMPROBANTE,FormAnulacionOPago.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormAnulacionOPago.RxDBECodigo.SetFocus;
        end;
      FormAnulacionOPago.CDSBuscaComprob.Close;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionOPagoMuestraSucursal.Value := '';
    END;
END;


FUNCTION TDatosAnulacionOPago.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value  := dato;
  QComprob.ParamByName('suc').Value :=CDSAnulacionOPagoSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSAnulacionOPagoMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSAnulacionOPagoLETRA.Value              := QComprobLETRA.Value;
      CDSAnulacionOPagoTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSAnulacionOPagoCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSAnulacionOPagoMUESTRACOMPROBANTE.Value := '';
      CDSAnulacionOPagoLETRA.Value              := '';
      CDSAnulacionOPagoTIPOCPBTE.Value          := '';
      CDSAnulacionOPagoCLASECPBTE.Value         := '';
    END;
END;


procedure TDatosAnulacionOPago.AplicaMascaraNumerica;
begin

  MascaraGral:=DMMain_FD.MascaraRecibos;
  TFloatField(CDSAnulacionOPagoTOTAL).EditFormat   :=MascaraGral;
  TFloatField(CDSAnulacionOPagoTOTAL).DisplayFormat:=MascaraGral;

end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoCODIGOSetText(
  Sender: TField; const Text: String);
VAR
  Aux: STRING;
BEGIN
  IF  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          FormAnulacionOPago.RxDBECodigo.SetFocus;
        END;
  // agrego esta linea para que no haga un efecto visual falso del dato entrado
  // si no se veia sin 00000 adelante....
      FormAnulacionOPago.RxDBECodigo.Text := Aux;
    end;
end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoSUCSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size - Length(text)) + Text;
  CDSAnulacionOPagoNROCPBTE.Value := CDSAnulacionOPagoLETRA.Value +
                                     CDSAnulacionOPagoSUC.Value +
                                     CDSAnulacionOPagoNUMERO.Value;

end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoNUMEROSetText(
  Sender: TField; const Text: String);
begin
  Sender.AsString := Copy('00000000000', 1, Sender.Size - Length(text)) + Text;
  CDSAnulacionOPagoNROCPBTE.Value := CDSAnulacionOPagoLETRA.Value +
                                     CDSAnulacionOPagoSUC.Value +
                                     CDSAnulacionOPagoNUMERO.Value;

end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoSUCURSALSetText(
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
    ELSE IF CDSAnulacionOPago.State = dsInsert THEN
      UltimoComprobante;
  end;

end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
          FormAnulacionOPago.RxCTipoCpbte.SetFocus;
        END;
      IF CDSAnulacionOPago.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosAnulacionOPago.CDSAnulacionOPagoNewRecord(
  DataSet: TDataSet);
begin
  CDSAnulacionOPagoID_ANULACION.Value := IBGId_Anulacion.IncrementFD(1);
  CDSAnulacionOPagoFECHA.AsDateTime             := Date;
  CDSAnulacionOPagoTOTAL.AsFloat                := 0;
  CDSAnulacionOPagoSUCURSALSetText(CDSAnulacionOPagoSUCURSAL,IntToStr(FormAnulacionOPago.SucursalPorDefecto));
  CDSAnulacionOPagoUSUARIO.Value:=DMMain_FD.UsuarioActivo;
end;

procedure TDatosAnulacionOPago.DataModuleDestroy(Sender: TObject);
begin
  DatosAnulacionOPago:=nil;
end;

procedure TDatosAnulacionOPago.CDSAnulacionRetGananciaNewRecord(
  DataSet: TDataSet);
begin
  CDSAnulacionRetGananciaID.Value              := ibgAnulaRet.IncrementFD(1);
  CDSAnulacionRetGananciaID_ANULACION_OP.Value := CDSAnulacionOPagoID_ANULACION.Value;
  CDSAnulacionRetGananciaFECHA.AsDateTime      := CDSAnulacionOPagoFECHA.AsDateTime;
end;

procedure TDatosAnulacionOPago.DSAnulacionRetGananciaStateChange(Sender: TObject);
begin
  if FormAnulacionOPago<>nil Then
  begin
    FormAnulacionOPago.ConfirmaRetGan.Enabled:=DSAnulacionRetGanancia.State in [dsInsert,dsEdit];
    FormAnulacionOPago.CancelarRetGan.Enabled:=DSAnulacionRetGanancia.State in [dsInsert,dsEdit];
    FormAnulacionOPago.BuscarRetGan.Enabled  :=(DSAnulacionRetGanancia.State = dsBrowse) and
                                               (FormAnulacionOPago.DSBase.State=dsInsert);
  end;
end;

procedure TDatosAnulacionOPago.CDSAnulacionRetIBNewRecord(
  DataSet: TDataSet);
begin
  CDSAnulacionRetIBID.Value             := ibgAnulaRetIB.IncrementFD(1);
  CDSAnulacionRetIBCODIGO.Value         := CDSAnulacionOPagoCODIGO.Value;
  CDSAnulacionRetIBNOMBRE.Value         := CDSAnulacionOPagoNOMBRE.Value;
  CDSAnulacionRetIBCUIT.Value           := CDSAnulacionOPagoCUIT.Value;
  CDSAnulacionRetIBFECHA.AsDateTime     := CDSAnulacionOPagoFECHA.AsDateTime;
  CDSAnulacionRetIBID_ANULACION_OP.Value:= CDSAnulacionOPagoID_ANULACION.Value;
end;

procedure TDatosAnulacionOPago.DSAnulacionRetIBStateChange(Sender: TObject);
begin
  if FormAnulacionOPago<>nil Then
  begin
    FormAnulacionOPago.ConfirmaRetIIBB.Enabled :=DSAnulacionRetIB.State in [dsInsert,dsEdit];
    FormAnulacionOPago.CancelaRetIIBB.Enabled  :=DSAnulacionRetIB.State in [dsInsert,dsEdit];
    FormAnulacionOPago.BuscarRetIIBB.Enabled   :=(DSAnulacionRetIB.State = dsBrowse) and
                                                 (FormAnulacionOPago.DSBase.State=dsInsert);
  end;
end;

end.
