unit UServerMethodsTransferencias;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, IBGenerator, Datasnap.Provider, Data.DB, Data.SqlExpr,
  Data.DBXCommon;

type
  TServerMethodstransferecias = class(TDSServerModule)
    QTranDet: TSQLQuery;
    QTranDetID_TRANDET: TIntegerField;
    QTranDetID_TRANCAB: TIntegerField;
    QTranDetDETALLE: TStringField;
    QTranDetUNIDAD: TStringField;
    QTranDetDEPOSITO_ORIGEN: TIntegerField;
    QTranDetDEPOSITO_DESTINO: TIntegerField;
    QTranDetSUCURSAL: TIntegerField;
    QTranDetCODIGO: TStringField;
    QTranDetNROCPBTE: TStringField;
    QTranDetTIPOCPBTE: TStringField;
    QTranDetCLASECPBTE: TStringField;
    QTranDetAFECTA_STOCK: TStringField;
    QTranDetCON_NRO_SERIE: TStringField;
    QTranDetESTADO: TStringField;
    QTranDetCANTIDAD: TFMTBCDField;
    QTranDetPRECIO: TFMTBCDField;
    QTranDetFECHA: TSQLTimeStampField;
    QTranDetPRECIO_TOTAL: TFMTBCDField;
    QTranDetCOSTO: TFMTBCDField;
    QTranDetCOSTO_TOTAL: TFMTBCDField;
    QTraerPrecio: TSQLQuery;
    QTraerPrecioPRECIOCONIVA: TFloatField;
    QTraerPrecioPRECIO_GRAVADO: TFMTBCDField;
    QTraerPrecioRECARGO: TFMTBCDField;
    spUltimaUnidad: TSQLStoredProc;
    QUltimoCodigo: TSQLQuery;
    QTranCab: TSQLQuery;
    QTranCabID_TRCAB: TIntegerField;
    QTranCabTIPOCPBTE: TStringField;
    QTranCabCLASECPBTE: TStringField;
    QTranCabDEPOSITO_ORIGEN: TIntegerField;
    QTranCabDEPOSITO_DESTINO: TIntegerField;
    QTranCabLETRATR: TStringField;
    QTranCabSUCTR: TStringField;
    QTranCabNUMEROTR: TStringField;
    QTranCabNROCPBTE: TStringField;
    QTranCabSUCURSAL: TIntegerField;
    QTranCabMUESTRACOMPROBANTE: TStringField;
    QTranCabMUESTRASUCURSAL: TStringField;
    QTranCabNOMBRE_DEPOSITO_ORIGEN: TStringField;
    QTranCabNOMBRE_DEPOSITO_DESTINO: TStringField;
    QTranCabOBS1: TStringField;
    QTranCabOBS2: TStringField;
    QTranCabID_TIPOCOMPROBANTE: TIntegerField;
    QTranCabUSUARIO: TStringField;
    QTranCabESTADO: TStringField;
    QTranCabRECIBIDO_POR: TStringField;
    QTranCabLISTAPRECIO: TIntegerField;
    QTranCabNOTA_TX_ID: TIntegerField;
    QTranCabNOTA_TX_NUMERO: TStringField;
    QTranCabFECHA: TSQLTimeStampField;
    QTranCabTOTAL: TFMTBCDField;
    QTranCabCOSTO_TOTAL: TFMTBCDField;
    QTranCabFECHA_HORA: TSQLTimeStampField;
    QTranCabFECHA_RECECION: TSQLTimeStampField;
    QTranCabID_FACTURA_FRANQUICIA: TIntegerField;
    QTranCabMUESTRAFACTURA: TStringField;
    QTranCabMUESTRATIPOFC: TStringField;
    QTranCabMUESTRACLASEFC: TStringField;
    QTranCabMUESTRASUCDESTINO: TIntegerField;
    QTranSubDetalle: TSQLQuery;
    QTranSubDetalleID: TIntegerField;
    QTranSubDetalleID_DETTRA: TIntegerField;
    QTranSubDetalleID_CABTRA: TIntegerField;
    QTranSubDetalleTIPOCPBTE: TStringField;
    QTranSubDetalleCLASECPBTE: TStringField;
    QTranSubDetalleNROCPBTE: TStringField;
    QTranSubDetalleCODIGOARTICULO: TStringField;
    QTranSubDetalleSERIE: TStringField;
    QTranSubDetalleDEPOSITO: TIntegerField;
    QTranSubDetalleDEPOSITOORIGEN: TIntegerField;
    QTranSubDetalleFECHA: TSQLTimeStampField;
    QControlCpbteExistente: TSQLQuery;
    QTraerRecargoDeLista: TSQLQuery;
    QTraerRecargoDeListaRECARGO: TFMTBCDField;
    QListaPrecios: TSQLQuery;
    QListaPreciosID: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QListaPreciosF_PAGO: TIntegerField;
    QCambiarFecha: TSQLQuery;
    QCambiarFechaRec: TSQLQuery;
    spConfirmar: TSQLStoredProc;
    QDepositoStk: TSQLQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFMTBCDField;
    QDepositoStkMINIMO: TFMTBCDField;
    QDepositoStkMEDIO: TFMTBCDField;
    QDepositoStkFISICO: TFMTBCDField;
    QDepositoStkRECARGO: TFMTBCDField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    QCompPrimero: TSQLQuery;
    QCompDefecto: TSQLQuery;
    QCompDefectoID_COMPROBANTE: TIntegerField;
    QComprob: TSQLQuery;
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
    QComprobLINEAS_DETALLE: TSmallintField;
    QBrowse: TSQLQuery;
    QBuscaComprob: TSQLQuery;
    DSPDeposito: TDataSetProvider;
    DSPBuscaComprob: TDataSetProvider;
    DSPTranCab: TDataSetProvider;
    DSPTranDet: TDataSetProvider;
    DSPTranSubDet: TDataSetProvider;
    DSPStock: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    DSPBuscaDeposito: TDataSetProvider;
    DSPListaPrecios: TDataSetProvider;
    DSPExistencia: TDataSetProvider;
    ibgTranCab: TIBGenerator;
    ibgTranDet: TIBGenerator;
    IBGTranSubDet: TIBGenerator;
    QDeposito: TSQLQuery;
    QBuscaDeposito: TSQLQuery;
    DSPBrowse: TDataSetProvider;
    DSPUltimoCodigo: TDataSetProvider;
    QStock: TSQLQuery;
    QSucursal: TSQLQuery;
    QBuscaSucursal: TSQLQuery;
    DSPDepositoStk: TDataSetProvider;
    DSPComprob: TDataSetProvider;
    DSPControlCpbteExistente: TDataSetProvider;
    DSPCompDefecto: TDataSetProvider;
    DSPCompPrimmero: TDataSetProvider;
    DSPTraerPrecio: TDataSetProvider;
    DSPTraerRecargoDeLista: TDataSetProvider;
    QExistencia: TSQLQuery;
    QMovTX: TSQLQuery;
    DSPMovTx: TDataSetProvider;
  private
    { Private declarations }
  public
    { Public declarations }
    Transaction: TDBXTransaction;
    function NextIdCabTx: Integer;
    function NextIdDetTx: Integer;
    function NextIdSubTx: Integer;
    function CambiarfechaRec(FechaNueva: TDateTime; id: Integer): Boolean;
    function Cambiarfecha(FechaNueva: TDateTime; id: Integer): Boolean;
    function CambiaEstadoTx(id_tx: Integer; estado: string; fecha: String;
      usuario: string): Boolean;

  end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses UServerContainer;
{$R *.dfm}

function TServerMethodstransferecias.NextIdCabTx: Integer;
begin
  Result := ibgTranCab.IncrementIBX(1);
end;

function TServerMethodstransferecias.NextIdDetTx: Integer;
begin
  Result := ibgTranDet.IncrementIBX(1);
end;

function TServerMethodstransferecias.NextIdSubTx: Integer;
begin
  Result := IBGTranSubDet.IncrementIBX(1);
end;

function TServerMethodstransferecias.CambiarfechaRec(FechaNueva: TDateTime;
  id: Integer): Boolean;
begin
  Transaction := ServerContainer.GestionPtoVta.BeginTransaction
    (TDBXIsolations.ReadCommitted);
  try
    QCambiarFechaRec.Close;
    QCambiarFechaRec.ParamByName('FechaNueva').Value := FechaNueva;
    QCambiarFechaRec.ParamByName('id').Value := id;
    QCambiarFechaRec.ExecSQL;
    ServerContainer.GestionPtoVta.CommitFreeAndNil(Transaction);
    Result := True;
  except
    ServerContainer.GestionPtoVta.RollbackFreeAndNil(Transaction);
    Result := False;
  end;
  QCambiarFechaRec.Close;
end;

function TServerMethodstransferecias.Cambiarfecha(FechaNueva: TDateTime;
  id: Integer): Boolean;
begin
  Transaction := ServerContainer.GestionPtoVta.BeginTransaction
    (TDBXIsolations.ReadCommitted);
  try
    QCambiarFecha.Close;
    QCambiarFecha.ParamByName('FechaNueva').Value := FechaNueva;
    QCambiarFecha.ParamByName('id').Value := id;
    QCambiarFecha.ExecSQL;
    ServerContainer.GestionPtoVta.CommitFreeAndNil(Transaction);
    Result := True;
  except
    ServerContainer.GestionPtoVta.RollbackFreeAndNil(Transaction);
    Result := False;
  end;
  QCambiarFechaRec.Close;
end;

function TServerMethodstransferecias.CambiaEstadoTx(id_tx: Integer;
  estado: string; fecha: String; usuario: string): Boolean;
var
  a, m, d: Word;
  FechaAux: TDateTime;
begin
  Transaction := ServerContainer.GestionPtoVta.BeginTransaction
    (TDBXIsolations.ReadCommitted);
  try
    FechaAux := StrToDate(fecha);
    FechaAux := FechaAux + Time;
    spConfirmar.Close;
    spConfirmar.ParamByName('id_transferencia').AsInteger := id_tx;
    spConfirmar.ParamByName('estado').AsString := estado;
    spConfirmar.ParamByName('Fecha').AsDateTime := FechaAux;
    spConfirmar.ParamByName('usuario').AsString := usuario;
    spConfirmar.ExecProc;
    ServerContainer.GestionPtoVta.CommitFreeAndNil(Transaction);
    Result := True;
  except
    ServerContainer.GestionPtoVta.RollbackFreeAndNil(Transaction);
    // spConfirmar.Close;
    Result := False;
  end;
  spConfirmar.Close;
end;

end.
