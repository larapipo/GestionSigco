unit DMOrdenProduccion;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, IBGenerator,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client,Dialogs,System.StrUtils;

type
  TDatosOProduccion = class(TDataModule)
    QOProdCab: TFDQuery;
    QOProdCabID: TIntegerField;
    QOProdCabPRODUCTOR: TStringField;
    QOProdCabTIPOCPBTE: TStringField;
    QOProdCabCLASECPBTE: TStringField;
    QOProdCabDEPOSITO_ORIGEN: TIntegerField;
    QOProdCabDEPOSITO_DESTINO: TIntegerField;
    QOProdCabLETRAOP: TStringField;
    QOProdCabSUCOP: TStringField;
    QOProdCabNUMEROOP: TStringField;
    QOProdCabNROCPBTE: TStringField;
    QOProdCabSUCURSAL: TIntegerField;
    QOProdCabNOMBRE_DEPOSITO_ORIGEN: TStringField;
    QOProdCabNOMBRE_DEPOSITO_DESTINO: TStringField;
    QOProdCabOBS1: TStringField;
    QOProdCabUSUARIO: TStringField;
    QOProdCabESTADO: TStringField;
    QOProdCabID_FCVTA: TIntegerField;
    QOProdCabCLIENTE: TStringField;
    QOProdCabNOTAS: TMemoField;
    QOProdCabID_PRESUPUESTO: TIntegerField;
    QOProdCabSUB_NRO: TStringField;
    QOProdCabMUESTRACOMPROBANTE: TStringField;
    QOProdCabMUESTRASUCURSAL: TStringField;
    QOProdCabMUESTRACLIENTE: TStringField;
    QOProdCabID_TIPOCOMPROBANTE: TIntegerField;
    QOProdCabFECHA_INICIADA: TSQLTimeStampField;
    QOProdCabFECHA_INCIO_PROD: TSQLTimeStampField;
    QOProdCabFECHA_FINALIZADA: TSQLTimeStampField;
    QOProdCabFECHA_ENTREGA_PREV: TSQLTimeStampField;
    QOProdCabFECHA_INGENIERIA: TSQLTimeStampField;
    QOProdCabMUESTRANROPRESUP: TStringField;
    DSPOProdCab: TDataSetProvider;
    CDSOProdCab: TClientDataSet;
    CDSOProdCabID: TIntegerField;
    CDSOProdCabPRODUCTOR: TStringField;
    CDSOProdCabTIPOCPBTE: TStringField;
    CDSOProdCabCLASECPBTE: TStringField;
    CDSOProdCabDEPOSITO_ORIGEN: TIntegerField;
    CDSOProdCabDEPOSITO_DESTINO: TIntegerField;
    CDSOProdCabLETRAOP: TStringField;
    CDSOProdCabSUCOP: TStringField;
    CDSOProdCabNUMEROOP: TStringField;
    CDSOProdCabNROCPBTE: TStringField;
    CDSOProdCabSUCURSAL: TIntegerField;
    CDSOProdCabNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSOProdCabNOMBRE_DEPOSITO_DESTINO: TStringField;
    CDSOProdCabOBS1: TStringField;
    CDSOProdCabUSUARIO: TStringField;
    CDSOProdCabESTADO: TStringField;
    CDSOProdCabMUESTRACOMPROBANTE: TStringField;
    CDSOProdCabMUESTRASUCURSAL: TStringField;
    CDSOProdCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSOProdCabID_FCVTA: TIntegerField;
    CDSOProdCabCLIENTE: TStringField;
    CDSOProdCabMUESTRACLIENTE: TStringField;
    CDSOProdCabNOTAS: TMemoField;
    CDSOProdCabID_PRESUPUESTO: TIntegerField;
    CDSOProdCabMUESTRANROPRESUP: TStringField;
    CDSOProdCabSUB_NRO: TStringField;
    CDSOProdCabFECHA_INICIADA: TSQLTimeStampField;
    CDSOProdCabFECHA_INCIO_PROD: TSQLTimeStampField;
    CDSOProdCabFECHA_FINALIZADA: TSQLTimeStampField;
    CDSOProdCabFECHA_ENTREGA_PREV: TSQLTimeStampField;
    CDSOProdCabFECHA_INGENIERIA: TSQLTimeStampField;
    ibgOProdCab: TIBGenerator;
    QOProdDet: TFDQuery;
    QOProdDetID: TIntegerField;
    QOProdDetID_OPCAB: TIntegerField;
    QOProdDetCODIGO: TStringField;
    QOProdDetDETALLE: TStringField;
    QOProdDetUNIDAD: TStringField;
    QOProdDetCANTIDAD: TFloatField;
    QOProdDetDEPOSITO_DESTINO: TIntegerField;
    QOProdDetSUCURSAL: TIntegerField;
    QOProdDetTIPOCPBTE: TStringField;
    QOProdDetCLASECPBTE: TStringField;
    QOProdDetNROCPBTE: TStringField;
    QOProdDetAFECTA_STOCK: TStringField;
    QOProdDetESTADO: TStringField;
    QOProdDetCOSTO: TFloatField;
    QOProdDetEN_PLANIFICACION: TStringField;
    QOProdDetPARTICION: TStringField;
    QOProdDetID_PRESU_CAB: TIntegerField;
    QOProdDetID_PRESU_DET: TIntegerField;
    QOProdDetMUESTRASIGLAS: TStringField;
    QOProdDetMUESTRASALDO: TFloatField;
    QOProdDetCODIGOALTERNATIVO: TStringField;
    QOProdDetESPECIFICACION: TStringField;
    QOProdDetITEM_DETALLE: TStringField;
    QOProdDetFECHA: TSQLTimeStampField;
    QOProdDetFECHA_ENTREGA: TSQLTimeStampField;
    QOProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField;
    DSPOProdDet: TDataSetProvider;
    CDSOProdDet: TClientDataSet;
    CDSOProdDetID: TIntegerField;
    CDSOProdDetID_OPCAB: TIntegerField;
    CDSOProdDetCODIGO: TStringField;
    CDSOProdDetDETALLE: TStringField;
    CDSOProdDetUNIDAD: TStringField;
    CDSOProdDetDEPOSITO_DESTINO: TIntegerField;
    CDSOProdDetSUCURSAL: TIntegerField;
    CDSOProdDetTIPOCPBTE: TStringField;
    CDSOProdDetCLASECPBTE: TStringField;
    CDSOProdDetNROCPBTE: TStringField;
    CDSOProdDetAFECTA_STOCK: TStringField;
    CDSOProdDetESTADO: TStringField;
    CDSOProdDetEN_PLANIFICACION: TStringField;
    CDSOProdDetMUESTRACOPIAS: TIntegerField;
    CDSOProdDetMUESTRASIGLAS: TStringField;
    CDSOProdDetPARTICION: TStringField;
    CDSOProdDetID_PRESU_DET: TIntegerField;
    CDSOProdDetID_PRESU_CAB: TIntegerField;
    CDSOProdDetCODIGOALTERNATIVO: TStringField;
    CDSOProdDetCANTIDAD: TFloatField;
    CDSOProdDetCOSTO: TFloatField;
    CDSOProdDetMUESTRASALDO: TFloatField;
    CDSOProdDetESPECIFICACION: TStringField;
    CDSOProdDetITEM_DETALLE: TStringField;
    CDSOProdDetFECHA: TSQLTimeStampField;
    CDSOProdDetFECHA_ENTREGA: TSQLTimeStampField;
    CDSOProdDetFECHA_INIC_PRODUCC: TSQLTimeStampField;
    ibgOProdDet: TIBGenerator;
    ibgOProdMov: TIBGenerator;
    DSOProdMov: TDataSource;
    DSOProdDet: TDataSource;
    DSOProdObs: TDataSource;
    ibgOProdObs: TIBGenerator;
    CDSOProdObs: TClientDataSet;
    CDSOProdObsID: TIntegerField;
    CDSOProdObsID_OPCAB: TIntegerField;
    CDSOProdObsDETALLE: TStringField;
    CDSOProdObsFECHA: TSQLTimeStampField;
    DSPOProdObs: TDataSetProvider;
    QOProdObs: TFDQuery;
    QOProdObsID: TIntegerField;
    QOProdObsID_OPCAB: TIntegerField;
    QOProdObsDETALLE: TStringField;
    QOProdObsFECHA: TSQLTimeStampField;
    CDSDeposito: TClientDataSet;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoID: TIntegerField;
    CDSDepositoSUCURSAL: TIntegerField;
    DSPDeposito: TDataSetProvider;
    QStockProdCab: TFDQuery;
    QStockProdCabID: TIntegerField;
    QStockProdCabCODIGO: TStringField;
    QStockProdCabDETALLE: TStringField;
    QStockProdCabUNIDAD: TStringField;
    QStockProdCabAFECTA_STOCK: TStringField;
    QStockProdCabCANTIDAD: TFloatField;
    QStockProdCabCOSTO: TCurrencyField;
    QStockProdDet: TFDQuery;
    DSPStockProdDetalle: TDataSetProvider;
    CDSStockProdDetalle: TClientDataSet;
    CDSStockProdDetalleID: TIntegerField;
    CDSStockProdDetalleID_CAB: TIntegerField;
    CDSStockProdDetalleCODIGO_STK: TStringField;
    CDSStockProdDetalleDETALLE: TStringField;
    CDSStockProdDetalleUNIDAD: TStringField;
    CDSStockProdDetalleAFECTA_STOCK: TStringField;
    CDSStockProdDetalleCOSTO_STK: TFloatField;
    CDSStockProdDetalleCANTIDAD_REAL: TFloatField;
    CDSStockProdDetalleCANTIDAD_FISICA: TFloatField;
    CDSStockProdDetalleULTIMO_COSTO: TSQLTimeStampField;
    CDSStockProdDetalleCOSTO: TFloatField;
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
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QClientes: TFDQuery;
    QClientesRAZON_SOCIAL: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    QBuscaComprob: TFDQuery;
    QBuscaComprobID_COMPROBANTE: TIntegerField;
    QBuscaComprobTIPO_COMPROB: TStringField;
    QBuscaComprobCLASE_COMPROB: TStringField;
    QBuscaComprobDENOMINACION: TStringField;
    QBuscaComprobSUCURSAL: TIntegerField;
    QBuscaComprobLETRA: TStringField;
    QBuscaComprobPREFIJO: TStringField;
    QBuscaComprobNUMERARCION_PROPIA: TStringField;
    QBuscaComprobNUMERO: TStringField;
    QBuscaComprobTOMA_NRO_DE: TIntegerField;
    QBuscaComprobAFECTA_IVA: TStringField;
    QBuscaComprobAFECTA_CC: TStringField;
    QBuscaComprobDESGLOZA_IVA: TStringField;
    QBuscaComprobCOMPRA_VENTA: TStringField;
    QBuscaComprobCOPIAS: TIntegerField;
    QBuscaComprobREPORTE: TStringField;
    QBuscaComprobIMPRIME: TStringField;
    QBuscaComprobFISCAL: TStringField;
    QBuscaComprobNOMBREIMPRESORA: TStringField;
    QBuscaComprobPENDIENTEIMPRESION: TStringField;
    QBuscaComprobLINEAS_DETALLE: TSmallintField;
    QBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    QBuscaComprobDEFECTO: TStringField;
    QBuscaComprobCAJA_DEFECTO: TIntegerField;
    QBuscaComprobDIVIDE_IVA: TStringField;
    QBuscaComprobFACTURAELECTRONICA: TStringField;
    QBuscaComprobEN_USO: TStringField;
    QBuscaComprobCODIGO_AFIP: TStringField;
    QBuscaComprobID_AJUSTECC: TIntegerField;
    QBuscaComprobCENTRO_COSTO: TIntegerField;
    QBuscaComprobFILTRO_COMPROBANTES: TStringField;
    QBuscaComprobDEPOSITO: TIntegerField;
    QBuscaComprobULTIMONRO: TIntegerField;
    QBuscaComprobEDITAR_NRO: TStringField;
    QTroqueles: TFDQuery;
    DSTroqueles: TDataSource;
    QOProdCabNRO_ORDEN_COMP: TStringField;
    QOProdCabFECHA_OC: TSQLTimeStampField;
    QOProdCabID_OBRA: TIntegerField;
    QOProdCabID_OBRA_SECTOR: TIntegerField;
    QOProdCabMUESTRAOBRA: TStringField;
    QOProdCabMUESTRASECTOR: TStringField;
    CDSOProdCabNRO_ORDEN_COMP: TStringField;
    CDSOProdCabFECHA_OC: TSQLTimeStampField;
    CDSOProdCabID_OBRA: TIntegerField;
    CDSOProdCabID_OBRA_SECTOR: TIntegerField;
    CDSOProdCabMUESTRAOBRA: TStringField;
    CDSOProdCabMUESTRASECTOR: TStringField;
    QBuscaXCodAlternativos: TFDQuery;
    QBuscaXCodAlternativosCODIGO_STK: TStringField;
    QOProdDetCANT_ENTREGADA: TFloatField;
    CDSOProdDetCANT_ENTREGADA: TFloatField;
    QStockProdCabMUESTRAALTERNATIVO: TStringField;
    QOProdCabMUESTRAFECHAENTREGA_2: TSQLTimeStampField;
    QOProdCabMUESTRAFECHAENTREGA_1: TSQLTimeStampField;
    QOProdCabMUESTRATIENEPLANO: TStringField;
    QOProdCabMUESTRAREFERENCIA: TStringField;
    QOProdCabMUESTRANOMBRECONTATO: TStringField;
    QOProdCabMUESTRATELEFONOCONTACTO: TStringField;
    QOProdCabMUESTRACORREOCONTACTO: TStringField;
    CDSOProdCabMUESTRAFECHAENTREGA_2: TSQLTimeStampField;
    CDSOProdCabMUESTRAFECHAENTREGA_1: TSQLTimeStampField;
    CDSOProdCabMUESTRATIENEPLANO: TStringField;
    CDSOProdCabMUESTRAREFERENCIA: TStringField;
    CDSOProdCabMUESTRANOMBRECONTATO: TStringField;
    CDSOProdCabMUESTRATELEFONOCONTACTO: TStringField;
    CDSOProdCabMUESTRACORREOCONTACTO: TStringField;
    QOProdMov: TFDQuery;
    DSPOProdMov: TDataSetProvider;
    CDSOProdMov: TClientDataSet;
    CDSOProdMovID: TIntegerField;
    CDSOProdMovID_OPDET: TIntegerField;
    CDSOProdMovID_OPCAB: TIntegerField;
    CDSOProdMovFECHA_SALIDA: TSQLTimeStampField;
    CDSOProdMovCODIGO: TStringField;
    CDSOProdMovDETALLE: TStringField;
    CDSOProdMovCANTIDAD_UNITARIA: TFloatField;
    CDSOProdMovCANTIDAD_ESTIMADA: TFloatField;
    CDSOProdMovCANTIDAD_REAL: TFloatField;
    CDSOProdMovDEPOSITO_ORIGEN: TIntegerField;
    CDSOProdMovTIPOCPBTE: TStringField;
    CDSOProdMovCLASECPBTE: TStringField;
    CDSOProdMovNROCPBTE: TStringField;
    CDSOProdMovESTADO: TStringField;
    CDSOProdMovAFECTA_STOCK: TStringField;
    QPartesDiarios: TFDQuery;
    DSPartesDiarios: TDataSource;
    QPartesDiariosID: TIntegerField;
    QPartesDiariosID_SUBDET_PROD: TIntegerField;
    QPartesDiariosFECHA: TSQLTimeStampField;
    QPartesDiariosNROCPBTE: TStringField;
    QPartesDiariosTURNO: TIntegerField;
    QPartesDiariosTIPO_MATERIAL: TIntegerField;
    QPartesDiariosESTACION: TIntegerField;
    QPartesDiariosCANTIDAD: TFloatField;
    QPartesDiariosOBSERVACIONES: TStringField;
    QPartesDiariosNRORTO: TStringField;
    QPartesDiariosID_AJUSTE_STOCK: TIntegerField;
    QPartesDiariosMODO_TRAZABILIDAD: TStringField;
    QPartesDiariosNRO_LOTE: TStringField;
    QOProdCabFECHA_HORA: TSQLTimeStampField;
    CDSOProdCabFECHA_HORA: TSQLTimeStampField;
    QOProdDetMUESTRAPRESUPUESTO: TStringField;
    CDSOProdDetMUESTRAPRESUPUESTO: TStringField;
    QOProdCabMUESTRASUBNRO: TStringField;
    CDSOProdCabMUESTRASUBNRO: TStringField;
    QOProdDetMUESTRASUBNRO: TStringField;
    CDSOProdDetMUESTRASUBNRO: TStringField;
    QOProdCabID_OP_PREV: TIntegerField;
    QOProdCabID_OP_NEXT: TIntegerField;
    CDSOProdCabID_OP_PREV: TIntegerField;
    CDSOProdCabID_OP_NEXT: TIntegerField;
    QOProdDetMUESTRASALDODIARIO: TFloatField;
    QOProdDetMUESTRAPARTESDIARIO: TFloatField;
    CDSOProdDetMUESTRASALDODIARIO: TFloatField;
    CDSOProdDetMUESTRAPARTESDIARIO: TFloatField;
    CDSOProdDetMUESTRASALDOCALCULADO: TFloatField;
    QOProdDetP_VOLUMEN: TFloatField;
    QOProdDetP_PATS: TFloatField;
    QOProdDetP_AROS: TFloatField;
    QOProdDetP_TRENZA: TFloatField;
    CDSOProdDetP_VOLUMEN: TFloatField;
    CDSOProdDetP_PATS: TFloatField;
    CDSOProdDetP_AROS: TFloatField;
    CDSOProdDetP_TRENZA: TFloatField;
    QOProdDetP_CANIOS: TFloatField;
    QOProdDetP_ARMADURA: TFloatField;
    CDSOProdDetP_CANIOS: TFloatField;
    CDSOProdDetP_ARMADURA: TFloatField;
    QPartesDiariosID_DET_PARTE_DIARIO: TIntegerField;
    QPartesDiariosARTICULO_CODIGO: TStringField;
    QPartesDiariosARTICULO_DESCRIPCION: TStringField;
    QTroquelesID: TIntegerField;
    QTroquelesID_PRODU_DIARIO: TIntegerField;
    QTroquelesID_REMITO: TIntegerField;
    QTroquelesNRO_TROQUEL: TStringField;
    QTroquelesFECHA_INGRESO: TSQLTimeStampField;
    QTroquelesFECHA_EGRESO: TSQLTimeStampField;
    QTroquelesCODIGO: TStringField;
    QTroquelesMUESTRASTOCK: TStringField;
    procedure CDSOProdCabDEPOSITO_ORIGENSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabDEPOSITO_DESTINOSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabSUCOPSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabNUMEROOPSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabID_TIPOCOMPROBANTESetText(Sender: TField; const Text: string);
    procedure CDSOProdMovCANTIDAD_UNITARIASetText(Sender: TField; const Text: string);
    procedure CDSOProdCabCLIENTESetText(Sender: TField; const Text: string);
    procedure CDSOProdDetCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSOProdCabNewRecord(DataSet: TDataSet);
    procedure CDSOProdDetNewRecord(DataSet: TDataSet);
    procedure CDSOProdMovNewRecord(DataSet: TDataSet);
    procedure CDSOProdObsNewRecord(DataSet: TDataSet);
    procedure CDSOProdCabESTADOChange(Sender: TField);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSOProdDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSOProdDetCODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure CDSOProdDetMUESTRAPRESUPUESTOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSOProdCabID_OP_PREVGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSOProdCabID_OP_NEXTGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    Origen:Byte;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    PROCEDURE ReAsignarMovimientos(Dato: String);

  end;

var
  DatosOProduccion: TDatosOProduccion;

implementation

uses UOrdenProduccion, UDMain_FD;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}


function TDatosOProduccion.ASignarArticulo(Dato: STRING): Boolean;
begin
  IF CDSOProdDet.State = dsBrowse THEN
    CDSOProdDet.Edit;
    BEGIN
      QStockProdCab.Close;
      QStockProdCab.ParamByName('codigo').Value:=Dato;
      QStockProdCab.Open;

      if QStockProdCab.IsEmpty then
        begin
          QBuscaXCodAlternativos.Close;
          QBuscaXCodAlternativos.ParamByName('cod').Value:=Dato;
          QBuscaXCodAlternativos.Open;
          if QBuscaXCodAlternativosCODIGO_STK.AsString<>'' then
            begin
              QStockProdCab.Close;
              QStockProdCab.ParamByName('codigo').Value:=QBuscaXCodAlternativosCODIGO_STK.AsString;
              QStockProdCab.Open;
            end;
        end;

      IF NOT (QStockProdCab.IsEmpty) THEN
        BEGIN
          CDSOProdDetDETALLE.AsString            := QStockProdCabDETALLE.AsString;
          CDSOProdDetCODIGOALTERNATIVO.AsString  := QStockProdCabMUESTRAALTERNATIVO.AsString;
          CDSOProdDetUNIDAD.Value                := QStockProdCabUNIDAD.Value;
          CDSOProdDetAFECTA_STOCK.Value          := QStockProdCabAFECTA_STOCK.Value;

          CDSStockProdDetalle.Close;
          CDSStockProdDetalle.Params.ParamByName('id').Value:=QStockProdCabID.Value;
          CDSStockProdDetalle.Open;
          CDSStockProdDetalle.First;
          while Not(CDSStockProdDetalle.Eof) Do
            begin
               CDSOProdMov.Append;
               CDSOProdMovCODIGO.Value              := CDSStockProdDetalleCODIGO_STK.Value;
               CDSOProdMovDETALLE.Value             := CDSStockProdDetalleDETALLE.Value;
               CDSOProdMovCANTIDAD_UNITARIA.AsFloat := CDSStockProdDetalleCANTIDAD_FISICA.AsFloat/QStockProdCabCANTIDAD.AsFloat;
               CDSOProdMovCANTIDAD_ESTIMADA.AsFloat := (CDSStockProdDetalleCANTIDAD_FISICA.AsFloat/QStockProdCabCANTIDAD.AsFloat)*CDSOProdDetCANTIDAD.AsFloat;
               CDSOProdMovCANTIDAD_REAL.AsFloat     := CDSOProdMovCANTIDAD_ESTIMADA.AsFloat;
               CDSOProdMovFECHA_SALIDA.Value        := CDSOProdCabFECHA_INICIADA.Value;
               CDSOProdMovAFECTA_STOCK.Value        := CDSStockProdDetalleAFECTA_STOCK.Value;
               CDSOProdMov.Post;
               CDSStockProdDetalle.Next;
            end;
          CDSStockProdDetalle.Close;
          Result := True;
        end
      ELSE
       Result := False;
    END;
  QStockProdCab.Close;
end;

function TDatosOProduccion.AsignarComprobante(Dato: Integer): Boolean;
begin
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSOProdCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSOProdCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSOProdCabLETRAOP.Value            := QComprobLETRA.Value;
      CDSOProdCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSOProdCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSOProdCabMUESTRACOMPROBANTE.Value := '';
      CDSOProdCabLETRAOP.Value            := '';
      CDSOProdCabCLASECPBTE.Value         := '';
      CDSOProdCabTIPOCPBTE.Value          := '';
    END;
end;

function TDatosOProduccion.AsignarDeposito(Dato: Integer): Boolean;
begin
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result := True;
      if Origen=0 Then
        CDSOProdCabNOMBRE_DEPOSITO_ORIGEN.Value   := CDSDepositoNOMBRE.Value
      else
        if Origen=1 Then
          CDSOProdCabNOMBRE_DEPOSITO_DESTINO.Value:= CDSDepositoNOMBRE.Value;
    END
  ELSE
    begin
      Result := False;
      if Origen=0 Then
        CDSOProdCabNOMBRE_DEPOSITO_ORIGEN.Value   := ''
      else
        if Origen=1 Then
          CDSOProdCabNOMBRE_DEPOSITO_DESTINO.Value:= '';
    end;
  CDSDeposito.Close;
end;

function TDatosOProduccion.AsignarSucursal(Dato: Integer): Boolean;
begin
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSOProdCabID_TIPOCOMPROBANTE.Clear;
      CDSOProdCabMUESTRACOMPROBANTE.Clear;
      QBuscaComprob.close;
      QBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      QBuscaComprob.Open;
      if QBuscaComprob.RecordCount=1 Then
        begin
          CDSOProdCabID_TIPOCOMPROBANTESetText(CDSOProdCabID_TIPOCOMPROBANTE,QBuscaComprob.fieldByName('Id_comprobante').AsString);
          if (FormOrdenProduccion.Visible) and (FormOrdenProduccion.RxCOrigen.Enabled) and (FormOrdenProduccion.RxCOrigen.Visible) then
            FormOrdenProduccion.RxCOrigen.SetFocus;
        end;
      QBuscaComprob.Close;
      Result := True;
      CDSOProdCabMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
end;

procedure TDatosOProduccion.CDSOProdCabCLIENTESetText(Sender: TField; const Text: string);
begin
  if ((Text<>'') and (Text<>#13)) Then
    begin
      Sender.AsString := Copy('000000',1,6-length(Trim(Text)))+Trim(Text);
      QClientes.Close;
      QClientes.ParamByName('codigo').Value:=Sender.AsString;
      QClientes.Open;
      if Not(QClientes.IsEmpty) then
        CDSOProdCabMUESTRACLIENTE.Value:=QClientesRAZON_SOCIAL.Value
      else
        begin
          CDSOProdCabMUESTRACLIENTE.Value:='';
          Sender.Clear;
        end;
    end;
end;

procedure TDatosOProduccion.CDSOProdCabDEPOSITO_DESTINOSetText(Sender: TField; const Text: string);
begin
inherited;
  if ((Text<>'') and (Text<>#13)) Then
    begin
      Sender.AsString := Text;
      Origen:=1;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;
end;

procedure TDatosOProduccion.CDSOProdCabDEPOSITO_ORIGENSetText(Sender: TField; const Text: string);
begin
  inherited;
  if Text[1]<>#13 Then
    begin
      Origen:=0;
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;

end;

procedure TDatosOProduccion.CDSOProdCabESTADOChange(Sender: TField);
begin
 if CDSOProdCabESTADO.Value='I' Then
    FormOrdenProduccion.lbEstado.Caption:='Inciciada'
  else
    if CDSOProdCabESTADO.Value='P' Then
      FormOrdenProduccion.lbEstado.Caption:='En Producción'
    else
      if CDSOProdCabESTADO.Value='F' Then
        FormOrdenProduccion.lbEstado.Caption:='Finalizada'
      else
        FormOrdenProduccion.lbEstado.Caption:='--';

end;

procedure TDatosOProduccion.CDSOProdCabID_OP_NEXTGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger<0 then
    Text:='-'
  else
    Text:=Sender.AsString;
end;

procedure TDatosOProduccion.CDSOProdCabID_OP_PREVGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger<0 then
    Text:='-'
  else
   Text:=Sender.AsString;


end;

procedure TDatosOProduccion.CDSOProdCabID_TIPOCOMPROBANTESetText(Sender: TField; const Text: string);
begin
inherited;
  if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSOProdCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TDatosOProduccion.CDSOProdCabNewRecord(DataSet: TDataSet);
begin
  CDSOProdCabSUCURSALSetText(CDSOProdCabSUCURSAL,IntToStr(FormOrdenProduccion.SucursalPorDefecto));
  CDSOProdCabDEPOSITO_ORIGENSetText(CDSOProdCabDEPOSITO_ORIGEN,IntToStr(DMMain_FD.DepositoPorSucursal(FormOrdenProduccion.SucursalPorDefecto)));
  CDSOProdCabDEPOSITO_DESTINOSetText(CDSOProdCabDEPOSITO_DESTINO,IntToStr(DMMain_FD.DepositoPorSucursal(FormOrdenProduccion.SucursalPorDefecto)));
  CDSOProdCabID.Value                     := ibgOProdCab.IncrementFD(1);
  CDSOProdCabFECHA_INICIADA.AsDateTime    := Date;
  CDSOProdCabESTADO.Value                 := 'I';
  CDSOProdCabUSUARIO.Value                := DMMain_FD.UsuarioActivo;
  CDSOProdCabID_FCVTA.Value               := -1;
  CDSOProdCabID_PRESUPUESTO.Value         := -1;
  CDSOProdCabSUB_NRO.AsString             := '00';
  CDSOProdCabFECHA_INCIO_PROD.Clear;
  CDSOProdCabFECHA_ENTREGA_PREV.AsDateTime := Date;
  CDSOProdCabFECHA_INGENIERIA.AsDateTime   := Date;
  CDSOProdCabFECHA_HORA.AsDateTime         := Now;
  CDSOProdCabID_OP_PREV.Value              := -1;
  CDSOProdCabID_OP_NEXT.Value              := -1;
end;

procedure TDatosOProduccion.CDSOProdCabNUMEROOPSetText(Sender: TField; const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSOProdCabNroCpbte.AsString := CDSOProdCabLETRAOP.AsString +
                                  CDSOProdCabSUCOP.AsString +
                                  CDSOProdCabNUMEROOP.AsString;

end;

procedure TDatosOProduccion.CDSOProdCabSUCOPSetText(Sender: TField; const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSOProdCabNroCpbte.AsString := CDSOProdCabLETRAOP.AsString +
                                  CDSOProdCabSUCOP.AsString +
                                  CDSOProdCabNUMEROOP.AsString;

end;

procedure TDatosOProduccion.CDSOProdCabSUCURSALSetText(Sender: TField; const Text: string);
begin
  if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TDatosOProduccion.CDSOProdDetCANTIDADSetText(Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  ReAsignarMovimientos(Sender.AsString);
end;

procedure TDatosOProduccion.CDSOProdDetCODIGOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if FormOrdenProduccion<>nil then
    begin
      Text:=CDSOProdDetCODIGO.AsString;
      if FormOrdenProduccion.VerCodigoAlternativo1.Checked Then
        Text:=CDSOProdDetCODIGOALTERNATIVO.AsString;
    end;
end;

procedure TDatosOProduccion.CDSOProdDetCODIGOSetText(Sender: TField; const Text: string);
var Cod:String;
begin
  inherited;
  Sender.AsString := DMMain_FD.SearchCodigo(Trim(Text),DSOProdDet,FormOrdenProduccion.VerCodigoAlternativo1.Checked);
  if Not(ASignarArticulo(Sender.AsString)) Then
    begin
      Sender.AsString            :='';
      CDSOProdDetDETALLE.AsString:='';
      CDSOProdDetCANTIDAD.Value  :=0;
      ShowMessage('El itema no es de Produccion...');
      //CDSOProdDet.Cancel;
      FormOrdenProduccion.dbgDetalle.SelectedIndex:=0;
    end;
end;

procedure TDatosOProduccion.CDSOProdDetMUESTRAPRESUPUESTOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  Text:=Format('%s-%s-%s', [LeftStr(Sender.AsString, 1),      // A
                            Copy(Sender.AsString, 2, 4),      // 0001
                            RightStr(Sender.AsString, 8)]);
end;

procedure TDatosOProduccion.CDSOProdDetNewRecord(DataSet: TDataSet);
begin
  CDSOProdDetID.Value               := ibgOProdDet.IncrementFD(1);
  CDSOProdDetID_OPCAB.Value         := CDSOProdCabID.Value;
  CDSOProdDetCANTIDAD.AsFloat       := 0;
  CDSOProdDetDEPOSITO_DESTINO.Value := CDSOProdCabDEPOSITO_DESTINO.Value;
  CDSOProdDetSUCURSAL.Value         := CDSOProdCabSUCURSAL.Value;
  CDSOProdDetNROCPBTE.Value         := CDSOProdCabNROCPBTE.Value;
  CDSOProdDetTIPOCPBTE.Value        := CDSOProdCabTIPOCPBTE.Value;
  CDSOProdDetCLASECPBTE.Value       := CDSOProdCabCLASECPBTE.Value;
  CDSOProdDetFECHA.Value            := CDSOProdCabFECHA_INICIADA.Value;
  CDSOProdDetFECHA_ENTREGA.Value    := CDSOProdCabFECHA_ENTREGA_PREV.Value;
  CDSOProdDetPARTICION.Value        := 'N';
  CDSOProdDetESTADO.Value           := 'I';
  CDSOProdDetUNIDAD.Value           := '';
  CDSOProdDetID_PRESU_CAB.Value     := -1;
  CDSOProdDetID_PRESU_DET.Value     := -1;
  CDSOProdDetCANT_ENTREGADA.Value   := 0;
  CDSOProdDetEN_PLANIFICACION.Value := 'N';
  CDSOProdDetP_VOLUMEN.Value        := 0;
  CDSOProdDetP_PATS.Value           := 0;
  CDSOProdDetP_AROS.Value           := 0;
  CDSOProdDetP_TRENZA.Value         := 0;
  CDSOProdDetP_CANIOS.Value         := 0;
  CDSOProdDetP_ARMADURA.Value       := 0;

end;

procedure TDatosOProduccion.CDSOProdMovCANTIDAD_UNITARIASetText(Sender: TField; const Text: string);
begin
  Sender.AsString:=Text;
  ReAsignarMovimientos(CDSOProdDetCODIGO.AsString);
end;

procedure TDatosOProduccion.CDSOProdMovNewRecord(DataSet: TDataSet);
begin
  CDSOProdMovID.Value               := ibgOProdMov.IncrementFD(1);
  CDSOProdMovID_OPDET.Value         := CDSOProdDetID.Value;
  CDSOProdMovID_OPCAB.Value         := CDSOProdCabID.Value;
  CDSOProdMovDEPOSITO_ORIGEN.Value  := CDSOProdCabDEPOSITO_ORIGEN.Value;
  CDSOProdMovTIPOCPBTE.Value        := CDSOProdCabTIPOCPBTE.Value;
  CDSOProdMovCLASECPBTE.Value       := CDSOProdCabCLASECPBTE.Value;
  CDSOProdMovNROCPBTE.Value         := CDSOProdCabNROCPBTE.Value;
  CDSOProdMovFECHA_SALIDA.Value     := CDSOProdCabFECHA_INICIADA.Value;
  CDSOProdMovESTADO.Value           := CDSOProdCabESTADO.Value;
end;

procedure TDatosOProduccion.CDSOProdObsNewRecord(DataSet: TDataSet);
begin
  CDSOProdObsID.Value         := ibgOProdObs.IncrementFD(1);
  CDSOProdObsID_OPCAB.Value   := CDSOProdCabID.Value;
  CDSOProdObsFECHA.AsDateTime := date;
end;

procedure TDatosOProduccion.DataModuleDestroy(Sender: TObject);
begin
  DatosOProduccion:=Nil
end;

procedure TDatosOProduccion.ReAsignarMovimientos(Dato: String);
var Puntero: TBookmark;
begin
  Puntero:=CDSOProdMov.GetBookmark;
  CDSOProdMov.First;
  while Not(CDSOProdMov.Eof) Do
    begin
      CDSOProdMov.Edit;
      CDSOProdMovCANTIDAD_ESTIMADA.AsFloat := CDSOProdMovCANTIDAD_UNITARIA.AsFloat * CDSOProdDetCANTIDAD.AsFloat;
      CDSOProdMovCANTIDAD_REAL.Value       := CDSOProdMovCANTIDAD_ESTIMADA.Value;
      CDSOProdMov.Next;
    end;
  CDSOProdMov.GotoBookmark(Puntero);
  CDSOProdMov.FreeBookmark(Puntero);

end;

{
SELECT d.*, sd.CODIGO AS ARTICULO_CODIGO, sd.DETALLE AS ARTICULO_DESCRIPCION FROM ORDENPRODUCCION_DIARIO d
  JOIN ORDENPRODUCCION_SUB_DET sd ON d.ID_SUBDET_PROD = sd.ID
  JOIN ORDENPRODUCCION_DET det    ON sd.ID_DET_OP = det.ID
WHERE det.ID_OPCAB = :ID_op
order by sd.codigo

}

end.
