unit DMImportacion_Input;
// se usa  en Panel de Importacion de Ventas -- UPanelImportacionVtas
interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, IBGenerator, DB, DBClient, Provider,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvMemoryDataset;

type
  TDatosImportacionInput = class(TDataModule)
    DSFcVtaCab: TDataSource;
    DSFCVtaDet: TDataSource;
    DSFcVtaImp: TDataSource;
    IBGFcVtaDet: TIBGenerator;
    IBGFcVtaCab: TIBGenerator;
    IBGImpuestos: TIBGenerator;
    DSFcVtaCabXML: TDataSource;
    DSFcVtaDetXML: TDataSource;
    DSFcVtaImpXML: TDataSource;
    DSCajaMovXML: TDataSource;
    DSTCMovXML: TDataSource;
    DSMovEfectivoXML: TDataSource;
    DSChe3XML: TDataSource;
    DSDepositos: TDataSource;
    DSSuc: TDataSource;
    QFcVtaCab: TFDQuery;
    QFcVtaDet: TFDQuery;
    QFcVtaImp: TFDQuery;
    QFcVtaCabID_FC: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabCLASECPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabLETRAFAC: TStringField;
    QFcVtaCabSUCFAC: TStringField;
    QFcVtaCabNUMEROFAC: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabLISTAPRECIO: TIntegerField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabNETOGRAV1: TFloatField;
    QFcVtaCabNETOGRAV2: TFloatField;
    QFcVtaCabNETONOGRAV1: TFloatField;
    QFcVtaCabNETONOGRAV2: TFloatField;
    QFcVtaCabDSTO: TFloatField;
    QFcVtaCabDSTOIMPORTE: TFloatField;
    QFcVtaCabNETOEXEN1: TFloatField;
    QFcVtaCabNETOEXEN2: TFloatField;
    QFcVtaCabTOTAL: TFloatField;
    QFcVtaCabDEBE: TFloatField;
    QFcVtaCabIMPRESO: TStringField;
    QFcVtaCabOBSERVACION1: TStringField;
    QFcVtaCabOBSERVACION2: TStringField;
    QFcVtaCabCPTE_MANUAL: TStringField;
    QFcVtaCabSUCURSAL: TIntegerField;
    QFcVtaCabFACTURANRO: TStringField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QFcVtaCabINGRESA_A_CTACTE: TStringField;
    QFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    QFcVtaCabTIPO_REMITO: TStringField;
    QFcVtaCabIDREMITO: TIntegerField;
    QFcVtaCabREDUCIDA: TStringField;
    QFcVtaCabCOMSIONVENDEDOR: TFloatField;
    QFcVtaCabLIQUIDADA: TStringField;
    QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    QFcVtaCabVENDEDOR: TStringField;
    QFcVtaCabUSUARIO: TStringField;
    QFcVtaCabNC_CONTADO: TStringField;
    QFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    QFcVtaCabNRO_Z: TIntegerField;
    QFcVtaCabVALORES_RECIBIDOS: TFloatField;
    QFcVtaCabPERCEPCION_IB_TASA: TFloatField;
    QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField;
    QFcVtaCabPERCIBE_IB: TStringField;
    QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QFcVtaCabRENGLONES: TSmallintField;
    QFcVtaCabFECHA_HORA: TSQLTimeStampField;
    QFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QFcVtaCabID_FC_CLON: TIntegerField;
    QFcVtaCabPRESUPUESTO_ID: TIntegerField;
    QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    QFcVtaCabMONEDA_CPBTE: TIntegerField;
    QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    QFcVtaCabPROVEEDOR: TStringField;
    QFcVtaCabTIPO_VTA: TStringField;
    QFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    QFcVtaCabJURIDICION: TIntegerField;
    QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    QFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    QFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    QFcVtaCabPOLIZA: TStringField;
    QFcVtaCabVALOR_ASEGURADO: TFloatField;
    QFcVtaCabABONO_PERIODO: TStringField;
    QFcVtaCabNUMERO_OPERACION: TStringField;
    QFcVtaCabSALDO_ACTUAL_CC: TFloatField;
    QFcVtaCabID_NOTA_CAMBIO: TIntegerField;
    QFcVtaCabCAE: TStringField;
    QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QFcVtaCabFACTURA_ELECTRONICA: TStringField;
    QFcVtaCabCANT_BULTOS: TIntegerField;
    QFcVtaCabCUOTAS_CC: TIntegerField;
    QFcVtaCabINTERVALO_CUOTA: TIntegerField;
    QFcVtaCabID_GARANTE: TIntegerField;
    QFcVtaCabPAGO_A_CTA: TFloatField;
    QFcVtaCabID_FC_CON_ADEL: TIntegerField;
    QFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    QFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    QFcVtaCabCENTRO_COSTO: TIntegerField;
    QFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    QFcVtaCabID_PAIS: TSmallintField;
    QFcVtaCabCUIT_PAIS: TStringField;
    QFcVtaCabDOC_ADUANERO: TStringField;
    QFcVtaCabFECHA_CARGA: TSQLTimeStampField;
    QFcVtaCabNRO_INTERNO: TStringField;
    QFcVtaCabFOB_TOTAL: TFloatField;
    QFcVtaCabNOTAS: TStringField;
    QFcVtaCabDESTINO_DOCUMENTO: TStringField;
    QFcVtaCabPERMISO_EMBARQUE: TStringField;
    QFcVtaCabINCOTERMS: TStringField;
    QFcVtaCabCBU: TStringField;
    QFcVtaCabASOCIADO_TIPO: TIntegerField;
    QFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    QFcVtaCabASOCIADO_NRO: TFloatField;
    QFcVtaCabASOCIADO_CPTEFCH: TStringField;
    QFcVtaImpID_IMPUESTO: TIntegerField;
    QFcVtaImpID_FCVTACAB: TIntegerField;
    QFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    QFcVtaImpDETALLE: TStringField;
    QFcVtaImpNETO: TFloatField;
    QFcVtaImpTASA: TFloatField;
    QFcVtaImpIMPORTE: TFloatField;
    QBuscaSucursal: TFDQuery;
    QBuscaSucursalCODIGO: TIntegerField;
    QBuscaSucursalDETALLE: TStringField;
    QBuscaSucursalHOST: TStringField;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QPrimerConVta: TFDQuery;
    QBuscaCliente: TFDQuery;
    QBuscaClienteCODIGO: TStringField;
    spIngresarClienteFD: TFDStoredProc;
    spLdrFD: TFDStoredProc;
    spIngresarConVentaFD: TFDStoredProc;
    spAgregaMovTCFD: TFDStoredProc;
    spAgregaMovEfectivoFD: TFDStoredProc;
    spAgregaChe3FD: TFDStoredProc;
    CDSFcVtaCabXML: TFDMemTable;
    CDSFcVtaDetXML: TFDMemTable;
    CDSFcVtaImpXML: TFDMemTable;
    CDSCajaMovXML: TFDMemTable;
    CDSTCMovXML: TFDMemTable;
    CDSMovEfectivoXML: TFDMemTable;
    CDSChe3XML: TFDMemTable;
    QFcVtaCabINF_X: TStringField;
    DSMemory: TDataSource;
    MemoryData: TJvMemoryData;
    MemoryDataTIPOCPBTE: TStringField;
    MemoryDataNROCPBTE: TStringField;
    MemoryDataNOMBRE: TStringField;
    MemoryDataTOTAL: TFloatField;
    MemoryDataID: TIntegerField;
    QBorrarFC: TFDQuery;
    QFacturasImportadas: TFDQuery;
    QFacturasImportadasID_FC: TIntegerField;
    QFacturasImportadasTIPOCPBTE: TStringField;
    QFacturasImportadasCLASECPBTE: TStringField;
    QFacturasImportadasLETRAFAC: TStringField;
    QFacturasImportadasSUCFAC: TStringField;
    QFacturasImportadasNUMEROFAC: TStringField;
    QFacturasImportadasNROCPBTE: TStringField;
    QFacturasImportadasCODIGO: TStringField;
    QFacturasImportadasRAZONSOCIAL: TStringField;
    QFacturasImportadasTOTAL: TFloatField;
    DSFacturasImportadas: TDataSource;
    QTraeCodigoFD: TFDQuery;
    QTraeCodigoFDCODIGO_STK: TStringField;
    QTraeCodigoFDDETALLE_STK: TStringField;
    QTraeCodigoFDRUBRO_STK: TStringField;
    QTraeCodigoFDSUBRUBRO_STK: TStringField;
    spABMStock: TFDStoredProc;
    DSRubros: TDataSource;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    DSSubRubro: TDataSource;
    QBuscaClienteNOMBRE: TStringField;
    QFcVtaCabTOTAL_CALCULADO: TFloatField;
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABFAC: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFloatField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
    QFcVtaDetCODIGOARTICULO: TStringField;
    QFcVtaDetDETALLE: TStringField;
    QFcVtaDetUNIDAD: TStringField;
    QFcVtaDetMODO_GRAVAMEN: TStringField;
    QFcVtaDetCANTIDAD: TFloatField;
    QFcVtaDetUNIDADES_GRAVADO: TFloatField;
    QFcVtaDetUNIDADES_EXENTO: TFloatField;
    QFcVtaDetUNIDADES_TOTAL: TFloatField;
    QFcVtaDetCOSTO_GRAVADO: TFloatField;
    QFcVtaDetCOSTO_EXENTO: TFloatField;
    QFcVtaDetCOSTO_TOTAL: TFloatField;
    QFcVtaDetUNITARIO_GRAVADO: TFloatField;
    QFcVtaDetIVA_UNITARIO: TFloatField;
    QFcVtaDetUNITARIO_EXENTO: TFloatField;
    QFcVtaDetUNITARIO_TOTAL: TFloatField;
    QFcVtaDetDESGLOZAIVA: TStringField;
    QFcVtaDetTOTAL_EXENTO: TFloatField;
    QFcVtaDetTOTAL_GRAVADO: TFloatField;
    QFcVtaDetIVA_TOTAL: TFloatField;
    QFcVtaDetTOTAL: TFloatField;
    QFcVtaDetTIPOIVA_TASA: TIntegerField;
    QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    QFcVtaDetIVA_TASA: TFloatField;
    QFcVtaDetIVA_SOBRETASA: TFloatField;
    QFcVtaDetDESCUENTO: TFloatField;
    QFcVtaDetDEPOSITO: TIntegerField;
    QFcVtaDetMARGEN: TFloatField;
    QFcVtaDetAFECTA_STOCK: TStringField;
    QFcVtaDetCALCULA_SOBRETASA: TStringField;
    QFcVtaDetGRAVADO_IB: TStringField;
    QFcVtaDetCON_NRO_SERIE: TStringField;
    QFcVtaDetCON_CODIGO_BARRA: TStringField;
    QFcVtaDetIB_TASA: TFloatField;
    QFcVtaDetTIPOIB_TASA: TIntegerField;
    QFcVtaDetLOTE: TIntegerField;
    QFcVtaDetPRECIO_EDITABLE: TStringField;
    QFcVtaDetID_MONEDA: TIntegerField;
    QFcVtaDetCOTIZACION: TFloatField;
    QFcVtaDetDETALLE_ADICIONAL: TStringField;
    QFcVtaDetGRUPO_DETALLE: TIntegerField;
    QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    QFcVtaDetMESES_GTIA: TIntegerField;
    QFcVtaDetCODIGOBARRA: TStringField;
    QFcVtaDetDE_PRODUCCION: TStringField;
    QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    QFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    QFcVtaDetUNI_C_REC: TStringField;
    QFcVtaDetITEM_OCOMPRA: TIntegerField;
    QFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    QFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    QFcVtaDetPRESENTACION_CANT: TFloatField;
    QCtaCaja: TFDQuery;
    QCtaCajaID_CAJA: TIntegerField;
    QCtaCajaID_CUENTA_CAJA: TIntegerField;
    QCtaCajaFECHA_INCIO: TSQLTimeStampField;
    QCtaCajaFECHA_CIERRE: TSQLTimeStampField;
    QCtaCajaSALDO_INCIAL: TFloatField;
    QCtaCajaESTADO: TIntegerField;
    QCtaCajaOBS: TMemoField;
    QCtaCajaNUMEROCAJA: TIntegerField;
    DSCtaCaja: TDataSource;
    QCtaCajaMUESTRACAJA: TStringField;
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    QFacturasImportadasTOTAL_REC: TFloatField;
    QFcVtaCabCON_CAEA: TStringField;
    QFcVtaCabCAEA_INFORMADO: TStringField;
    QFcVtaCabQRIMAGE: TBlobField;
    QFcVtaCabCONDICIONPEDIDO: TIntegerField;
    procedure QFcVtaCabCalcFields(DataSet: TDataSet);
    procedure QFcVtaCabNewRecord(DataSet: TDataSet);
    procedure QFcVtaDetNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure QFacturasImportadasCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosImportacionInput: TDatosImportacionInput;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TDatosImportacionInput.DataModuleDestroy(Sender: TObject);
begin
  DatosImportacionInput:=nil;
end;

procedure TDatosImportacionInput.QFacturasImportadasCalcFields(
  DataSet: TDataSet);
begin
  QFacturasImportadasTOTAL_REC.Value:=QFacturasImportadasTOTAL.Value;
  if QFacturasImportadasTIPOCPBTE.Value='NC' then
    QFacturasImportadasTOTAL_REC.Value:=QFacturasImportadasTOTAL.Value*-1;
end;

procedure TDatosImportacionInput.QFcVtaCabCalcFields(DataSet: TDataSet);
begin
  QFcVtaCabTOTAL_CALCULADO.Value:=QFcVtaCabTOTAL.Value;
  if QFcVtaCabTIPOCPBTE.Value='NC' then
    QFcVtaCabTOTAL_CALCULADO.Value:=QFcVtaCabTOTAL.Value*-1;
end;

procedure TDatosImportacionInput.QFcVtaCabNewRecord(DataSet: TDataSet);
begin
  QFcVtaCabFACTURA_ELECTRONICA.Value   := 'N';
  QFcVtaCab.FieldByName('CAE').Value   := 0;
  QFcVtaCabINF_X.AsString              := 'N';
  QFcVtaCabCONDICIONPEDIDO.Value       := -1;
end;

procedure TDatosImportacionInput.QFcVtaDetNewRecord(DataSet: TDataSet);
begin
  QFcVtaDetUNITARIO_TOTAL_OLD.Value:=0;
  QFcVtaDetUNITARIO_IVA_OLD.Value  :=0;
  QFcVtaDetUNI_C_REC.Value         :='N';
end;

end.
