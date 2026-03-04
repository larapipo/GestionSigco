unit DMArmadoProductos;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, Provider, DB, DBClient,Dialogs,
  IBGenerator, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TDatosArmadoProductos = class(TDataModule)
    CDSArmadoCab: TClientDataSet;
    DSPArmadoCab: TDataSetProvider;
    DSPArmadoDet: TDataSetProvider;
    CDSArmadoDet: TClientDataSet;
    CDSArmadoDetID: TIntegerField;
    CDSArmadoDetID_CAB: TIntegerField;
    CDSArmadoDetCODIGO: TStringField;
    CDSArmadoDetDETALLE: TStringField;
    CDSArmadoDetCANTIDAD: TFloatField;
    CDSArmadoDetCOSTO_UNITARIO: TFloatField;
    CDSArmadoDetFECHA: TSQLTimeStampField;
    CDSArmadoDetNUMERO: TStringField;
    CDSArmadoDetCON_NRO_SERIE: TStringField;
    CDSArmadoDetNRO_SERIE: TStringField;
    CDSArmadoDetDEPOSITO_ORIGEN: TIntegerField;
    CDSArmadoDetTIPOCPBTE: TStringField;
    CDSArmadoDetCLASECPBTE: TStringField;
    CDSArmadoDetLETRA: TStringField;
    CDSArmadoDetPREFIJO: TStringField;
    CDSArmadoDetNROCPBTE: TStringField;
    DSArmadoDet: TDataSource;
    CDSArmadoCabID: TIntegerField;
    CDSArmadoCabFECHA: TSQLTimeStampField;
    CDSArmadoCabTIPOCPBTE: TStringField;
    CDSArmadoCabCLASECPBTE: TStringField;
    CDSArmadoCabLETRA: TStringField;
    CDSArmadoCabPREFIJO: TStringField;
    CDSArmadoCabNUMERO: TStringField;
    CDSArmadoCabCODIGO: TStringField;
    CDSArmadoCabDEPOSITO_ORIGEN: TIntegerField;
    CDSArmadoCabDEPOSITO_DESTINO: TIntegerField;
    CDSArmadoCabCODIGOSERIE: TStringField;
    CDSArmadoCabARMADOR: TStringField;
    CDSArmadoCabFECHA_HORA: TSQLTimeStampField;
    CDSArmadoCabUSUSARIO: TStringField;
    CDSArmadoCabESTADO: TStringField;
    CDSArmadoCabNROCPBTE: TStringField;
    CDSArmadoCabMUESTRADEPORIGEN: TStringField;
    CDSArmadoCabMUESTARDEPDESTINO: TStringField;
    CDSArmadoCabMUESTRAARMADOR: TStringField;
    CDSArmadoCabMUESTRAPRODUCTO: TStringField;
    QBuscaComprob: TFDQuery;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprob: TClientDataSet;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
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
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    CDSArmadoCabSUCURSAL: TIntegerField;
    QComprobSUCURSAL: TIntegerField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    CDSArmadoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSArmadoCabMUESTRASUCURSAL: TStringField;
    CDSArmadoCabMUESTRACOMPROBANTE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    QDetalleProduccion: TFDQuery;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSDetalleProduccion: TClientDataSet;
    DSPDetalleProduccion: TDataSetProvider;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSBuscaNroSerie: TClientDataSet;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    QNroSerie: TFDQuery;
    QDetalleProduccionCODIGO: TStringField;
    QDetalleProduccionDETALLEPRODUCTO: TStringField;
    QDetalleProduccionCODIGO_STK: TStringField;
    QDetalleProduccionDETALLEARTICULO: TStringField;
    QDetalleProduccionCANTIDAD_REAL: TFloatField;
    QDetalleProduccionCOSTO_STK: TFloatField;
    QDetalleProduccionCONTROL_SERIE: TStringField;
    CDSDetalleProduccionCODIGO: TStringField;
    CDSDetalleProduccionDETALLEPRODUCTO: TStringField;
    CDSDetalleProduccionCODIGO_STK: TStringField;
    CDSDetalleProduccionDETALLEARTICULO: TStringField;
    CDSDetalleProduccionCANTIDAD_REAL: TFloatField;
    CDSDetalleProduccionCOSTO_STK: TFloatField;
    CDSDetalleProduccionCONTROL_SERIE: TStringField;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFloatField;
    DSPBuscaPersonal: TDataSetProvider;
    CDSBuscaPersonal: TClientDataSet;
    spAltaProductoStock: TFDStoredProc;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
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
    QArmadoCab: TFDQuery;
    QArmadoCabID: TIntegerField;
    QArmadoCabFECHA: TSQLTimeStampField;
    QArmadoCabSUCURSAL: TIntegerField;
    QArmadoCabTIPOCPBTE: TStringField;
    QArmadoCabCLASECPBTE: TStringField;
    QArmadoCabLETRA: TStringField;
    QArmadoCabPREFIJO: TStringField;
    QArmadoCabNUMERO: TStringField;
    QArmadoCabCODIGO: TStringField;
    QArmadoCabDEPOSITO_ORIGEN: TIntegerField;
    QArmadoCabDEPOSITO_DESTINO: TIntegerField;
    QArmadoCabCODIGOSERIE: TStringField;
    QArmadoCabARMADOR: TStringField;
    QArmadoCabFECHA_HORA: TSQLTimeStampField;
    QArmadoCabUSUSARIO: TStringField;
    QArmadoCabESTADO: TStringField;
    QArmadoCabNROCPBTE: TStringField;
    QArmadoCabMUESTRADEPORIGEN: TStringField;
    QArmadoCabMUESTARDEPDESTINO: TStringField;
    QArmadoCabMUESTRAARMADOR: TStringField;
    QArmadoCabMUESTRAPRODUCTO: TStringField;
    QArmadoCabID_TIPOCOMPROBANTE: TIntegerField;
    QArmadoCabMUESTRASUCURSAL: TStringField;
    QArmadoCabMUESTRACOMPROBANTE: TStringField;
    QArmadoDet: TFDQuery;
    QArmadoDetID: TIntegerField;
    QArmadoDetID_CAB: TIntegerField;
    QArmadoDetCODIGO: TStringField;
    QArmadoDetDETALLE: TStringField;
    QArmadoDetCANTIDAD: TFloatField;
    QArmadoDetCOSTO_UNITARIO: TFloatField;
    QArmadoDetFECHA: TSQLTimeStampField;
    QArmadoDetNUMERO: TStringField;
    QArmadoDetCON_NRO_SERIE: TStringField;
    QArmadoDetNRO_SERIE: TStringField;
    QArmadoDetDEPOSITO_ORIGEN: TIntegerField;
    QArmadoDetTIPOCPBTE: TStringField;
    QArmadoDetCLASECPBTE: TStringField;
    QArmadoDetLETRA: TStringField;
    QArmadoDetPREFIJO: TStringField;
    QArmadoDetNROCPBTE: TStringField;
    QArmadoDetSUCURAL: TIntegerField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSArmadoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: string);
    procedure CDSArmadoCabPREFIJOSetText(Sender: TField; const Text: string);
    procedure CDSArmadoCabNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSArmadoCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSArmadoCabCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSArmadoCabNewRecord(DataSet: TDataSet);
    procedure CDSArmadoDetNewRecord(DataSet: TDataSet);
    procedure CDSArmadoCabDEPOSITO_ORIGENSetText(Sender: TField;
      const Text: string);
    procedure CDSArmadoCabDEPOSITO_DESTINOSetText(Sender: TField;
      const Text: string);
    procedure CDSArmadoDetNRO_SERIESetText(Sender: TField; const Text: string);
    procedure CDSArmadoCabARMADORSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    renglones:byte;
    PROCEDURE UltimoComprobante;
    function AsignarComprobante(Dato:Integer):Boolean;
    function AsignarSucursal(Dato:Integer):Boolean;
    function AsignarArticulo(Dato:String):Boolean;
    function AsignarDeposito(dato:Integer;cual:byte):Boolean;
    function AsignarArmador(dato:String):Boolean;

  end;

var
  DatosArmadoProductos: TDatosArmadoProductos;
  Copias:Integer;


implementation

{$R *.dfm}
uses UDMain_FD, DMStoreProcedureForm, UPlanillaArmado, DMBuscadoresForm;

PROCEDURE TDatosArmadoProductos.UltimoComprobante;
VAR Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormPlanillaArmado DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSArmadoCabLETRA.AsString <> '') AND (CDSArmadoCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').AsString   := CDSArmadoCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').AsInteger   := CDSArmadoCabSucursal.Asinteger;
           spNumeroCpbte.ParamByName('ClaseComp').AsString   := CDSArmadoCabCLASECPBTE.AsString;
           spNumeroCpbte.ParamByName('TipoComp').AsString    := CDSArmadoCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').AsString := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSArmadoCabPREFIJOSetText(CDSArmadoCabPREFIJO,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSArmadoCabNUMEROSetText(CDSArmadoCabNUMERO,IntToStr(Numero));
             END;
           CDSArmadoCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSArmadoCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSArmadoCabNROCPBTE.AsString := CDSArmadoCabLETRA.AsString +
                                        CDSArmadoCabPREFIJO.AsString +
                                        CDSArmadoCabNUMERO.AsString;
    end;
END;

function TDatosArmadoProductos.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSArmadoCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      renglones                            := QComprobLINEAS_DETALLE.Value;
      CDSArmadoCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSArmadoCabLETRA.Value              := QComprobLETRA.Value;
      CDSArmadoCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSArmadoCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      renglones                            := 0;
      CDSArmadoCabMUESTRACOMPROBANTE.Value := '';
      CDSArmadoCabLETRA.Value              := '';
      CDSArmadoCabCLASECPBTE.Value         := '';
      CDSArmadoCabTIPOCPBTE.Value          := '';
    END;
END;

function TDatosArmadoProductos.AsignarSucursal(Dato:Integer):Boolean;
begin
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := Dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSArmadoCabID_TIPOCOMPROBANTE.Clear;
      CDSArmadoCabMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value := Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSArmadoCabID_TIPOCOMPROBANTESetText(CDSArmadoCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          if FormPlanillaArmado.dbcDepositoOrigen.Enabled Then
            FormPlanillaArmado.dbcDepositoOrigen.SetFocus;
        end;
      CDSBuscaComprob.Close;
      Result := True;
      CDSArmadoCabMUESTRASUCURSAL.Value := CDSSucursalDETALLE.Value;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
end;

function TDatosArmadoProductos.AsignarArticulo(Dato:String):Boolean;
begin
  BEGIN
    CDSStock.Close;
    CDSStock.Params.ParamByName('Codigo').Value := Dato;
    CDSStock.Open;
    IF NOT (CDSStock.IsEmpty) and (CDSStockCONTROLASTOCK.Value='S') THEN
      BEGIN
        Result := True;
        CDSArmadoCabMUESTRAPRODUCTO.AsString   := CDSStockDetalle_Stk.AsString;
        CDSArmadoCabCODIGO.Value:=dato;
        CDSDetalleProduccion.Close;
        CDSDetalleProduccion.Params.ParamByName('codigo').AsString:=Dato;
        CDSDetalleProduccion.Open;
        CDSDetalleProduccion.First;
        CDSArmadoCabCODIGOSERIE.Value := CDSArmadoCabCODIGO.Value+CDSArmadoCabNUMERO.Value;
        while Not(CDSDetalleProduccion.Eof) do
          begin
            CDSArmadoDet.Append;

            CDSArmadoDetCODIGO.Value           := CDSDetalleProduccionCODIGO_STK.Value;
            CDSArmadoDetDETALLE.Value          := CDSDetalleProduccionDETALLEARTICULO.Value;
            CDSArmadoDetCANTIDAD.AsFloat       := CDSDetalleProduccionCANTIDAD_REAL.AsFloat;
            CDSArmadoDetCOSTO_UNITARIO.AsFloat := CDSDetalleProduccionCOSTO_STK.AsFloat;
            CDSArmadoDetFECHA.AsDateTime       := CDSArmadoCabFECHA.AsDateTime;
            CDSArmadoDetCON_NRO_SERIE.Value    := CDSDetalleProduccionCONTROL_SERIE.Value;
            CDSArmadoDet.Post;
            CDSDetalleProduccion.Next;
          end;
      END
    ELSE
      begin
        Result := False;
        CDSArmadoCabMUESTRAPRODUCTO.AsString   := '';
      end;
    END;
  CDSDetalleProduccion.Close;
  CDSStock.Close;
end;

function TDatosArmadoProductos.AsignarDeposito(Dato:Integer;cual:byte):Boolean;
begin
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.IsEmpty) THEN
    BEGIN
      Result := True;
      if cual=0 Then
        CDSArmadoCabMUESTRADEPORIGEN.Value    := CDSDepositoNOMBRE.Value
      else
        if cual=1 Then
          CDSArmadoCabMUESTARDEPDESTINO.Value := CDSDepositoNOMBRE.Value;
    END
  ELSE
    begin
      Result := False;
      if cual=0 Then
        CDSArmadoCabMUESTRADEPORIGEN.Value    := ''
      else
        if cual=1 Then
          CDSArmadoCabMUESTARDEPDESTINO.Value := '';
    end;
  CDSDeposito.Close;
end;

function TDatosArmadoProductos.AsignarArmador(Dato:String):Boolean;
begin
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSArmadoCabMUESTRAARMADOR.Value  :=CDSPersonalNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSArmadoCabMUESTRAARMADOR.Clear;
    end;
  CDSPersonal.Close;
end;


procedure TDatosArmadoProductos.CDSArmadoCabARMADORSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarArmador(Sender.AsString)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
    end;
end;

procedure TDatosArmadoProductos.CDSArmadoCabCODIGOSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarArticulo(Sender.AsString)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
    end;
end;

procedure TDatosArmadoProductos.CDSArmadoCabDEPOSITO_DESTINOSetText(
  Sender: TField; const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarDeposito(Sender.AsInteger,1)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
    end;
end;

procedure TDatosArmadoProductos.CDSArmadoCabDEPOSITO_ORIGENSetText(
  Sender: TField; const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarDeposito(Sender.AsInteger,0)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
    end;
end;

procedure TDatosArmadoProductos.CDSArmadoCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSArmadoCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TDatosArmadoProductos.CDSArmadoCabNewRecord(DataSet: TDataSet);
begin
  CDSArmadoCabID.Value              := ibgCab.IncrementFD(1);
  CDSArmadoCabFECHA.AsDateTime      := date;
  CDSArmadoCabSUCURSALSetText(CDSArmadoCabSUCURSAL,IntToStr(FormPlanillaArmado.SucursalPorDefecto));
  CDSArmadoCabDEPOSITO_ORIGENSetText(CDSArmadoCabDEPOSITO_ORIGEN,IntToStr(FormPlanillaArmado.DepositoPorDefecto));
  CDSArmadoCabDEPOSITO_DESTINOSetText(CDSArmadoCabDEPOSITO_DESTINO,IntToStr(FormPlanillaArmado.DepositoPorDefecto));
  CDSArmadoCabESTADO.Value          :='N';
  CDSArmadoCabFECHA_HORA.AsDateTime := now;
  CDSArmadoCabUSUSARIO.Value        := DMMain_FD.UsuarioActivo;
end;

procedure TDatosArmadoProductos.CDSArmadoCabNUMEROSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSArmadoCabNroCpbte.AsString := CDSArmadoCabLETRA.AsString +
                                   CDSArmadoCabPREFIJO.AsString +
                                   CDSArmadoCabNUMERO.AsString;

end;

procedure TDatosArmadoProductos.CDSArmadoCabPREFIJOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSArmadoCabNroCpbte.AsString := CDSArmadoCabLETRA.AsString +
                                   CDSArmadoCabPREFIJO.AsString +
                                   CDSArmadoCabNUMERO.AsString;

end;

procedure TDatosArmadoProductos.CDSArmadoCabSUCURSALSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;



procedure TDatosArmadoProductos.CDSArmadoDetNewRecord(DataSet: TDataSet);
begin
  CDSArmadoDetID.Value             := ibgDet.IncrementFD(1);
  CDSArmadoDetID_CAB.Value         := CDSArmadoCabID.Value;
  CDSArmadoDetDEPOSITO_ORIGEN.Value:= CDSArmadoCabDEPOSITO_ORIGEN.Value;
  CDSArmadoDetNUMERO.Value         := CDSArmadoCabNUMERO.Value;
  CDSArmadoDetLETRA.Value          := CDSArmadoCabLETRA.Value;
  CDSArmadoDetPREFIJO.Value        := CDSArmadoCabPREFIJO.Value;
  CDSArmadoDetTIPOCPBTE.Value      := CDSArmadoCabTIPOCPBTE.Value;
  CDSArmadoDetCLASECPBTE.Value     := CDSArmadoCabCLASECPBTE.Value;
  CDSArmadoDetNROCPBTE.Value       := CDSArmadoCabNROCPBTE.Value;
end;

procedure TDatosArmadoProductos.CDSArmadoDetNRO_SERIESetText(Sender: TField;
  const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // verifico si no fue ingresado en el comprobante
      if CDSArmadoDet.State=dsBrowse Then
        CDSArmadoDet.edit;
      Sender.AsString:=UpperCase(Text);
      begin
        DMBuscadores.QBuscaSerieTransito.Close;
        DMBuscadores.QBuscaSerieTransito.ParamByName('codigo').Value := CDSArmadoDetCODIGO.Value;
        DMBuscadores.QBuscaSerieTransito.ParamByName('Serie').Value  := Sender.AsString;
        DMBuscadores.QBuscaSerieTransito.Open;
        if DMBuscadores.QBuscaSerieTransitoSERIE.Value<>'' Then
          begin
            Sender.Clear;
            showmessage('Codigo de Serie en transito ...... ');
            CDSArmadoDet.Cancel;
          end
        else
          if CDSArmadoDetCON_NRO_SERIE.Value='S' Then
            begin
              QNroSerie.Close;
              QNroSerie.ParamByName('codigo').Value      := CDSArmadoDetCODIGO.Value;
              QNroSerie.ParamByName('codigoserie').Value := Sender.AsString;
              QNroSerie.ParamByName('deposito').Value    := CDSArmadoDetDEPOSITO_ORIGEN.Value;
              QNroSerie.Open;
              IF (QNroSerie.Fields[0].AsString='')  THEN
                BEGIN
                  ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                  Sender.AsString:= '';
                  CDSArmadoDet.Cancel;
                  //sysutils.Abort;
                END;
              QNroSerie.Close;
            end;
        DMBuscadores.QBuscaSerieTransito.Close;
      end;
   end;
end;

procedure TDatosArmadoProductos.DataModuleDestroy(Sender: TObject);
begin
  DatosArmadoProductos:=nil;
end;

end.
