unit DMPresupuestoOC;

interface

uses
  SysUtils, Classes, FMTBcd, SqlExpr, DB, DBClient, Provider,
  IBGenerator, Dialogs, Librerias, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatosPresupuestoOC = class(TDataModule)
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    DSPCondCompra: TDataSetProvider;
    CDSCondCompra: TClientDataSet;
    DSPProveedor: TDataSetProvider;
    CDSProveedor: TClientDataSet;
    DSPInscirpcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    DSPIva: TDataSetProvider;
    CDSIva: TClientDataSet;
    DSPBuscaCondCompra: TDataSetProvider;
    CDSBuscaCondCompra: TClientDataSet;
    StringField: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    FloatField2: TFloatField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFMTBCDField;
    DSPPresOC_cab: TDataSetProvider;
    CDSPresOC_Cab: TClientDataSet;
    CDSPresOC_CabID_OC: TIntegerField;
    CDSPresOC_CabCODIGO: TStringField;
    CDSPresOC_CabNUMERO: TStringField;
    CDSPresOC_CabNOMBRE: TStringField;
    CDSPresOC_CabRAZONSOCIAL: TStringField;
    CDSPresOC_CabDIRECCION: TStringField;
    CDSPresOC_CabCPOSTAL: TStringField;
    CDSPresOC_CabLOCALIDAD: TStringField;
    CDSPresOC_CabTIPOIVA: TIntegerField;
    CDSPresOC_CabCUIT: TStringField;
    CDSPresOC_CabFECHA: TSQLTimeStampField;
    CDSPresOC_CabFECHAVTO: TSQLTimeStampField;
    CDSPresOC_CabCONDICIONCOMPRA: TIntegerField;
    CDSPresOC_CabANULADO: TStringField;
    CDSPresOC_CabNETOGRAV1: TFMTBCDField;
    CDSPresOC_CabNETOGRAV2: TFMTBCDField;
    CDSPresOC_CabDSTO: TFMTBCDField;
    CDSPresOC_CabDSTOIMPORTE: TFMTBCDField;
    CDSPresOC_CabNETOEXEN1: TFMTBCDField;
    CDSPresOC_CabNETOEXEN2: TFMTBCDField;
    CDSPresOC_CabIMPORTEEXCLUIDO1: TFMTBCDField;
    CDSPresOC_CabIMPORTEEXCLUIDO2: TFMTBCDField;
    CDSPresOC_CabNETOMONOTRIBUTO1: TFMTBCDField;
    CDSPresOC_CabNETOMONOTRIBUTO2: TFMTBCDField;
    CDSPresOC_CabTOTAL: TFMTBCDField;
    CDSPresOC_CabIMPRESO: TStringField;
    CDSPresOC_CabSUCURSAL: TIntegerField;
    CDSPresOC_CabDEPOSITO: TIntegerField;
    CDSPresOC_CabAUTORIZO: TStringField;
    CDSPresOC_CabREALIZO: TStringField;
    CDSPresOC_CabCALCULA_SOBRETASA: TStringField;
    CDSPresOC_CabDESGLOZAIVA: TStringField;
    CDSPresOC_CabESTADO: TStringField;
    CDSPresOC_CabOBSERVACIONES: TMemoField;
    CDSPresOC_CabNOTAS: TStringField;
    CDSPresOC_CabUSUARIO: TStringField;
    CDSPresOC_CabTRANSPORTE: TIntegerField;
    CDSPresOC_CabTIPO: TSmallintField;
    CDSPresOC_CabID_ORDENCOMPRA: TIntegerField;
    CDSPresOC_CabID_LISTA_PROVEEDOR: TIntegerField;
    CDSPresOC_CabNRO_LISTA_PROVEEDOR: TStringField;
    CDSPresOC_CabFECHA_LISTA_PROVEEDOR: TSQLTimeStampField;
    CDSPresOC_CabMUESTRAREALIZO: TStringField;
    CDSPresOC_CabMUESTRACONDCOMPRA: TStringField;
    CDSPresOC_CabMUESTRANROOC: TStringField;
    ibgPresOC_Cab: TIBGenerator;
    DSPPresOC_Det: TDataSetProvider;
    CDSPresOC_Det: TClientDataSet;
    DSPresOC_Det: TDataSource;
    ibgPresOC_Det: TIBGenerator;
    CDSPresOC_DetID: TIntegerField;
    CDSPresOC_DetID_CABOC: TIntegerField;
    CDSPresOC_DetFECHA: TSQLTimeStampField;
    CDSPresOC_DetCODIGOARTICULO: TStringField;
    CDSPresOC_DetDETALLE: TStringField;
    CDSPresOC_DetUNIDAD: TStringField;
    CDSPresOC_DetCANTIDADPEDIDA: TFMTBCDField;
    CDSPresOC_DetUNITARIO_TOTAL: TFMTBCDField;
    CDSPresOC_DetUNITARIO_GRAVADO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_EXENTO: TFMTBCDField;
    CDSPresOC_DetTOTAL: TFMTBCDField;
    CDSPresOC_DetDESGLOZAIVA: TStringField;
    CDSPresOC_DetIVA_TASA: TFMTBCDField;
    CDSPresOC_DetTIPOIVA_TASA: TIntegerField;
    CDSPresOC_DetIVA_SOBRETASA: TFMTBCDField;
    CDSPresOC_DetTIPOIVA_SOBRETASA: TIntegerField;
    CDSPresOC_DetCALCULA_SOBRETASA: TStringField;
    CDSPresOC_DetMODO_GRAVAMEN: TStringField;
    CDSPresOC_DetUNITARIO_NETO_TOTAL: TFMTBCDField;
    CDSPresOC_DetUNITARIO_NETO_GRAVADO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_NETO_EXENTO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_NETO_TOTAL_2: TFMTBCDField;
    CDSPresOC_DetUNITARIO_NETO_GRAVADO_2: TFMTBCDField;
    CDSPresOC_DetUNITARIO_NETO_EXENTO_2: TFMTBCDField;
    CDSPresOC_DetTOTAL_NETO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_TOTAL: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_GRAVADO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_EXENTO: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_TOTAL_2: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2: TFMTBCDField;
    CDSPresOC_DetUNITARIO_FINAL_EXENTO_2: TFMTBCDField;
    CDSPresOC_DetTOTAL_FINAL: TFMTBCDField;
    DSDesctoFacturables: TDataSource;
    CDSDsctoFacturables: TClientDataSet;
    DSPDsctoFacturables: TDataSetProvider;
    ibgDsctoFac: TIBGenerator;
    CDSDsctoFacturablesID: TIntegerField;
    CDSDsctoFacturablesID_CAB: TIntegerField;
    CDSDsctoFacturablesTIPO: TIntegerField;
    CDSDsctoFacturablesDESCUENTO: TFMTBCDField;
    CDSDsctoFacturablesIMPORTE: TFMTBCDField;
    CDSDsctoFacturablesMUESTRADESCUENTO: TStringField;
    CDSDsctoFacturablesEDITABLE: TStringField;
    DSCostosFacturables: TDataSource;
    CDSCostosFacturables: TClientDataSet;
    DSPCostosFacturables: TDataSetProvider;
    ibgCostoFac: TIBGenerator;
    CDSCostosFacturablesID: TIntegerField;
    CDSCostosFacturablesID_CAB: TIntegerField;
    CDSCostosFacturablesTIPO: TIntegerField;
    CDSCostosFacturablesPORCENTAJE: TFMTBCDField;
    CDSCostosFacturablesIMPORTE: TFMTBCDField;
    CDSCostosFacturablesMUESTRARECARGO: TStringField;
    CDSCostosFacturablesEDITABLE: TStringField;
    DSDsctoNoFac: TDataSource;
    CDSDsctoNoFac: TClientDataSet;
    CDSDsctoNoFacID: TIntegerField;
    CDSDsctoNoFacID_CAB: TIntegerField;
    CDSDsctoNoFacTIPO: TIntegerField;
    CDSDsctoNoFacMUESTRADESCUENTO: TStringField;
    CDSDsctoNoFacEDITABLE: TStringField;
    DSPDsctoNoFac: TDataSetProvider;
    ibgDsctoNoFac: TIBGenerator;
    DSCostoNoFac: TDataSource;
    CDSCostoNoFac: TClientDataSet;
    DSPCostoNoFac: TDataSetProvider;
    ibgCostoNoFac: TIBGenerator;
    CDSCostoNoFacID: TIntegerField;
    CDSCostoNoFacID_CAB: TIntegerField;
    CDSCostoNoFacTIPO: TIntegerField;
    CDSCostoNoFacPORCENTAJE: TFMTBCDField;
    CDSCostoNoFacIMPORTE: TFMTBCDField;
    CDSCostoNoFacMUESTRARECARGO: TStringField;
    CDSCostoNoFacEDITABLE: TStringField;
    CDSBuscadorRecargo: TClientDataSet;
    DSPBuscaRecargo: TDataSetProvider;
    CDSBuscadorRecargoID: TIntegerField;
    CDSBuscadorRecargoDETALLE: TStringField;
    CDSBuscadorDscto: TClientDataSet;
    DSPbuscadorDescto: TDataSetProvider;
    CDSBuscadorDsctoID: TIntegerField;
    CDSBuscadorDsctoDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalCARGO: TIntegerField;
    CDSPersonalCATEGORIA: TIntegerField;
    CDSPersonalCTACONTABLE: TIntegerField;
    CDSPersonalDOMICILIO: TStringField;
    CDSPersonalESTADO_CIVIL: TStringField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalVENDEDOR: TStringField;
    CDSPersonalCOBRADOR: TStringField;
    CDSPersonalACTIVO: TStringField;
    CDSPersonalAUTORIZAOC: TStringField;
    CDSIvaCODIGO: TIntegerField;
    CDSIvaDESCRIPCION: TStringField;
    CDSIvaTASA: TFMTBCDField;
    CDSIvaCOLUMNA: TSmallintField;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFMTBCDField;
    CDSStockCOSTO_GRAVADO_STK: TFMTBCDField;
    CDSStockCOSTO_TOTAL_STK: TFMTBCDField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_EXENTO: TFMTBCDField;
    CDSStockFIJACION_PRECIO_TOTAL: TFMTBCDField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFMTBCDField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFMTBCDField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFMTBCDField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFMTBCDField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFMTBCDField;
    CDSStockCOSTO_EXENTO_P: TFMTBCDField;
    CDSStockCOSTO_TOTAL_P: TFMTBCDField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFMTBCDField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFMTBCDField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFMTBCDField;
    CDSStockMUESTRATASAIB: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFMTBCDField;
    CDSStockMUESTRATABLAPRECIO2: TFMTBCDField;
    CDSDsctoNoFacDESCUENTO: TFMTBCDField;
    CDSDsctoNoFacIMPORTE: TFMTBCDField;
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
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
    CDSProveedorSALDO_INICIAL: TFMTBCDField;
    CDSProveedorID_PERC_IVA: TIntegerField;
    CDSProveedorID_PERC_IBB: TIntegerField;
    CDSProveedorID_PERC_IBB_2: TIntegerField;
    CDSProveedorRUBRO: TIntegerField;
    CDSProveedorID_FACTURAPORDEFECTO: TIntegerField;
    CDSProveedorEXENTO_GANACIA: TStringField;
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    CDSProveedorEXENTO_RETENCION_IB: TStringField;
    CDSProveedorID_TASA_RETENCION_IB: TIntegerField;
    CDSProveedorNRO_IIBB: TStringField;
    CDSProveedorCORREO: TStringField;
    CDSProveedorCONV_MULTI: TStringField;
    CDSProveedorMONEDA_PRECIOS: TIntegerField;
    CDSProveedorTELEDISCADO: TStringField;
    CDSProveedorDESPERIVA: TStringField;
    CDSProveedorDESPERIB: TStringField;
    CDSProveedorDESPERIB2: TStringField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFMTBCDField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFMTBCDField;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraDESCUENTO: TFMTBCDField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO_FPAGO: TFMTBCDField;
    QPresOC_Cab: TFDQuery;
    QPresOC_Det: TFDQuery;
    QDsctoFacturables: TFDQuery;
    QCostosFacturables: TFDQuery;
    QDsctoNoFact: TFDQuery;
    QCostoNoFac: TFDQuery;
    QBuscadorRec: TFDQuery;
    QBuscadorDes: TFDQuery;
    QComprob: TFDQuery;
    QDescuentos: TFDQuery;
    QRecargos: TFDQuery;
    QPrimerConComp: TFDQuery;
    QListaPrecioProv: TFDQuery;
    CDSBuscadorRecargoRECARGO: TFloatField;
    CDSBuscadorDsctoDESCUENTO: TFloatField;
    QDescuentosID: TIntegerField;
    QDescuentosDETALLE: TStringField;
    QDescuentosDESCUENTO: TFloatField;
    QDescuentosEDITABLE: TStringField;
    QRecargosID: TIntegerField;
    QRecargosDETALLE: TStringField;
    QRecargosRECARGO: TFloatField;
    QRecargosEDITABLE: TStringField;
    QPrimerConCompMIN: TIntegerField;
    QListaPrecioProvID: TIntegerField;
    QListaPrecioProvCODIGO_PROVEE: TStringField;
    QListaPrecioProvNOMBRE: TStringField;
    QListaPrecioProvFECHA: TSQLTimeStampField;
    QListaPrecioProvOBS: TMemoField;
    QListaPrecioProvLISTA_NRO: TStringField;
    QListaPrecioProvRECARGO: TFloatField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSPresOC_CabNewRecord(DataSet: TDataSet);
    procedure CDSPresOC_CabCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSPresOC_CabNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSPresOC_CabCONDICIONCOMPRASetText(Sender: TField;
      const Text: string);
    procedure CDSPresOC_CabREALIZOSetText(Sender: TField; const Text: string);
    procedure CDSPresOC_DetCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure CDSPresOC_DetCANTIDADPEDIDASetText(Sender: TField;
      const Text: string);
    procedure CDSPresOC_DetUNITARIO_TOTALSetText(Sender: TField;
      const Text: string);
    procedure CDSPresOC_DetAfterDelete(DataSet: TDataSet);
    procedure CDSPresOC_DetAfterPost(DataSet: TDataSet);
    procedure CDSDsctoFacturablesTIPOSetText(Sender: TField;
      const Text: string);
    procedure CDSCostosFacturablesNewRecord(DataSet: TDataSet);
    procedure CDSCostosFacturablesAfterDelete(DataSet: TDataSet);
    procedure CDSCostosFacturablesAfterPost(DataSet: TDataSet);
    procedure CDSDsctoNoFacNewRecord(DataSet: TDataSet);
    procedure CDSDsctoNoFacAfterDelete(DataSet: TDataSet);
    procedure CDSDsctoNoFacAfterPost(DataSet: TDataSet);
    procedure CDSDsctoNoFacTIPOSetText(Sender: TField; const Text: string);
    procedure CDSPresOC_DetNewRecord(DataSet: TDataSet);
    procedure CDSCostoNoFacTIPOSetText(Sender: TField; const Text: string);
    procedure CDSCostosFacturablesTIPOSetText(Sender: TField;
      const Text: string);
    procedure CDSDsctoFacturablesAfterDelete(DataSet: TDataSet);
    procedure CDSDsctoFacturablesAfterPost(DataSet: TDataSet);
    procedure CDSDsctoFacturablesNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Sumar;
    procedure CalcularPrecioNeto;
    FUNCTION AsignaProveedor(Dato: STRING): Boolean;
    FUNCTION AsignarCondCompra(Proveedor: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarEmpleado(tipo:byte;Dato: String): Boolean;//tipo...0 = realizo, 1 = autoriza
    FUNCTION AsignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarDescuento(Dato,op: integer): Boolean;
    FUNCTION AsignarRecargo(Dato,op: integer): Boolean;

  end;

var
  DatosPresupuestoOC: TDatosPresupuestoOC;

implementation

{$R *.dfm}
uses UPresupuestoOC,UDMain_FD;

procedure TDatosPresupuestoOC.Sumar;
var p:TBookmark;
aux:Real;
begin
   p:=CDSPresOC_Det.GetBookmark;
   aux:=0;
   CDSPresOC_Det.First;
   CDSPresOC_Det.DisableControls;
   while Not(CDSPresOC_Det.Eof) do
     begin
       aux:=aux+CDSPresOC_DetTOTAL_NETO.AsFloat;
       CDSPresOC_Det.Next;
     end;
   CDSPresOC_Det.GotoBookmark(p);
   CDSPresOC_Det.FreeBookmark(p);
   CDSPresOC_Det.EnableControls;
   FormPresupuestoOC.Caption:=FormatFloat('0.00',aux)
end;

procedure TDatosPresupuestoOC.CalcularPrecioNeto;
var Dscto,Rec:Real;
P:TBookmark;
begin
  P:=CDSPresOC_Det.GetBookmark;
  CDSPresOC_Det.DisableControls;
  CDSPresOC_Det.First;
  while not(CDSPresOC_Det.eof) do
    begin
      if CDSPresOC_Det.State=dsBrowse then
        CDSPresOC_Det.Edit;

      // Calculo el descuento Facturable
      CDSPresOC_DetUNITARIO_NETO_TOTAL.Value   :=CDSPresOC_DetUNITARIO_TOTAL.Value;
      CDSPresOC_DetUNITARIO_NETO_GRAVADO.Value :=CDSPresOC_DetUNITARIO_GRAVADO.Value;
      CDSPresOC_DetUNITARIO_NETO_EXENTO.Value  :=CDSPresOC_DetUNITARIO_EXENTO.Value;
      CDSDsctoFacturables.First;
      while not(CDSDsctoFacturables.Eof) do
        begin
          Dscto:= (1-(CDSDsctoFacturablesDESCUENTO.AsFloat*0.01));
          CDSPresOC_DetUNITARIO_NETO_TOTAL.AsFloat  :=CDSPresOC_DetUNITARIO_NETO_TOTAL.AsFloat * Dscto ;
          CDSPresOC_DetUNITARIO_NETO_GRAVADO.AsFloat:=CDSPresOC_DetUNITARIO_NETO_GRAVADO.AsFloat * Dscto;;
          CDSPresOC_DetUNITARIO_NETO_EXENTO.AsFloat :=CDSPresOC_DetUNITARIO_NETO_EXENTO.AsFloat * Dscto;
          CDSDsctoFacturables.Next;
        end;
      CDSDsctoFacturables.First;

      // Calculo el Recargo Facturable
      CDSPresOC_DetUNITARIO_NETO_TOTAL_2.Value   :=CDSPresOC_DetUNITARIO_NETO_TOTAL.Value;
      CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.Value :=CDSPresOC_DetUNITARIO_NETO_GRAVADO.Value;
      CDSPresOC_DetUNITARIO_NETO_EXENTO_2.Value  :=CDSPresOC_DetUNITARIO_NETO_EXENTO.Value;
      CDSCostosFacturables.First;
      while not(CDSCostosFacturables.Eof) do
        begin
          Rec := (1+(CDSCostosFacturablesPORCENTAJE.AsFloat*0.01));
          CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat   :=CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat * Rec ;
          CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.AsFloat :=CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.AsFloat * Rec;;
          CDSPresOC_DetUNITARIO_NETO_EXENTO_2.AsFloat  :=CDSPresOC_DetUNITARIO_NETO_EXENTO_2.AsFloat * Rec;
          CDSCostosFacturables.Next;
        end;
      CDSCostosFacturables.First;

      // Calculo el descuento No Facturable
      CDSPresOC_DetUNITARIO_FINAL_TOTAL.Value   :=CDSPresOC_DetUNITARIO_NETO_TOTAL_2.Value;
      CDSPresOC_DetUNITARIO_FINAL_GRAVADO.Value :=CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.Value;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO.Value  :=CDSPresOC_DetUNITARIO_NETO_EXENTO_2.Value;
      CDSDsctoNoFac.First;
      while not(CDSDsctoNoFac.Eof) do
        begin
          Dscto:= (1-(CDSDsctoNoFacDESCUENTO.AsFloat*0.01));
          CDSPresOC_DetUNITARIO_FINAL_TOTAL.AsFloat   :=CDSPresOC_DetUNITARIO_FINAL_TOTAL.AsFloat * Dscto ;
          CDSPresOC_DetUNITARIO_FINAL_GRAVADO.AsFloat :=CDSPresOC_DetUNITARIO_FINAL_GRAVADO.AsFloat * Dscto;;
          CDSPresOC_DetUNITARIO_FINAL_EXENTO.AsFloat  :=CDSPresOC_DetUNITARIO_FINAL_EXENTO.AsFloat * Dscto;
          CDSDsctoNoFac.Next;
        end;
      CDSDsctoNoFac.First;

      // Calculo el Recargo No Facturable
      CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.Value   :=CDSPresOC_DetUNITARIO_FINAL_TOTAL.Value;
      CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.Value :=CDSPresOC_DetUNITARIO_FINAL_GRAVADO.Value;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.Value  :=CDSPresOC_DetUNITARIO_FINAL_EXENTO.Value;
      CDSCostoNoFac.First;
      while not(CDSCostoNoFac.Eof) do
        begin
          Rec := (1+(CDSCostoNoFacPORCENTAJE.AsFloat *0.01));
          CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat   :=CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat * Rec ;
          CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.AsFloat :=CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.AsFloat * Rec;;
          CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.AsFloat  :=CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.AsFloat * Rec;
          CDSCostoNoFac.Next;
        end;
      CDSCostoNoFac.First;

//      CDSPresOC_DetTOTAL_NETO.Value  :=CDSPresOC_DetUNITARIO_NETO_TOTAL_2.Value;
//      CDSPresOC_DetTOTAL_FINAL.Value :=CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.Value;
//      CDSPresOC_DetTOTAL.Value       :=CDSPresOC_DetTOTAL_NETO.Value*CDSPresOC_DetCANTIDADPEDIDA.Value;

      CDSPresOC_DetTOTAL.AsFloat      := CDSPresOC_DetCANTIDADPEDIDA.AsFloat * CDSPresOC_DetUNITARIO_TOTAL.AsFloat;
      CDSPresOC_DetTOTAL_NETO.AsFloat := CDSPresOC_DetCANTIDADPEDIDA.AsFloat * CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat;
      CDSPresOC_DetTOTAL_FINAL.AsFloat:= CDSPresOC_DetCANTIDADPEDIDA.AsFloat * CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat;


      CDSPresOC_Det.Next;
    end;
  CDSPresOC_Det.GotoBookmark(P);
  CDSPresOC_Det.FreeBookmark(P);
  CDSPresOC_Det.EnableControls;
 // if CDSPresOC_Det.State<>dsBrowse then
//    CDSPresOC_Det.Edit;
end;


FUNCTION TDatosPresupuestoOC.AsignarDescuento(Dato,op: integer): Boolean;
begin
  DatosPresupuestoOC.QDescuentos.Close;
  DatosPresupuestoOC.QDescuentos.ParamByName('id').Value:=dato;
  DatosPresupuestoOC.QDescuentos.Open;
  if Not(DatosPresupuestoOC.QDescuentos.IsEmpty) then
    begin
      if op=0 then  //Descuentos fact.
        begin
          CDSDsctoFacturablesMUESTRADESCUENTO.AsFloat:=DatosPresupuestoOC.QDescuentosDETALLE.AsFloat;
          CDSDsctoFacturablesDESCUENTO.AsFloat       :=DatosPresupuestoOC.QDescuentosDESCUENTO.AsFloat;
          CDSDsctoFacturablesEDITABLE.AsFloat        :=DatosPresupuestoOC.QDescuentosEDITABLE.AsFloat;
        end
      else
        if op=1 then  // Dscto. No fact
          begin
            CDSDsctoNoFacMUESTRADESCUENTO.AsFloat :=DatosPresupuestoOC.QDescuentosDETALLE.AsFloat;
            CDSDsctoNoFacDESCUENTO.AsFloat        :=DatosPresupuestoOC.QDescuentosDESCUENTO.AsFloat;
            CDSDsctoNoFacEDITABLE.AsFloat         :=DatosPresupuestoOC.QDescuentosEDITABLE.AsFloat;
          end;
      result:=True;
    end
  else
    begin
      if op=0 then  //Descuentos fact.
        begin
          CDSDsctoFacturablesMUESTRADESCUENTO.Clear;
          CDSDsctoFacturablesDESCUENTO.Clear;
          CDSDsctoFacturablesEDITABLE.Clear;
        end
      else
        if op=1 then  // Dscto. No fact
          begin
            CDSDsctoNoFacMUESTRADESCUENTO.Clear;
            CDSDsctoNoFacDESCUENTO.Clear;
            CDSDsctoNoFacEDITABLE.Clear;
          end;
      result:=False;
    end;
end;

FUNCTION TDatosPresupuestoOC.AsignarRecargo(Dato,op: integer): Boolean;
begin
  DatosPresupuestoOC.QRecargos.Close;
  DatosPresupuestoOC.QRecargos.ParamByName('id').Value:=dato;
  DatosPresupuestoOC.QRecargos.Open;
  if Not(DatosPresupuestoOC.QRecargos.IsEmpty) then
    begin
      if op=0 then  //Descuentos fact.
        begin
          CDSCostosFacturablesMUESTRARECARGO.Value  :=DatosPresupuestoOC.QRecargosDETALLE.Value;
          CDSCostosFacturablesPORCENTAJE.Value      :=DatosPresupuestoOC.QRecargosRECARGO.Value;
          CDSCostosFacturablesEDITABLE.Value        :=DatosPresupuestoOC.QRecargosEDITABLE.Value;
        end
      else
        if op=1 then  // Dscto. No fact
          begin
            CDSCostoNoFacMUESTRARECARGO.Value  :=DatosPresupuestoOC.QRecargosDETALLE.Value;
            CDSCostoNoFacPORCENTAJE.Value      :=DatosPresupuestoOC.QRecargosRECARGO.Value;
            CDSCostoNoFacEDITABLE.Value        :=DatosPresupuestoOC.QRecargosEDITABLE.Value;
          end;
      result:=True;
    end
  else
    begin
      if op=0 then  //Descuentos fact.
        begin
          CDSCostosFacturablesMUESTRARECARGO.Clear;
          CDSCostosFacturablesPORCENTAJE.Clear;
          CDSCostosFacturablesEDITABLE.Clear;
        end
      else
        if op=1 then  // Dscto. No fact
          begin
            CDSCostoNoFacMUESTRARECARGO.Clear;
            CDSCostoNoFacPORCENTAJE.Clear;
            CDSCostoNoFacEDITABLE.Clear;
          end;
      result:=False;
    end;
end;



FUNCTION TDatosPresupuestoOC.AsignaProveedor(Dato: STRING): Boolean;
BEGIN
   DatosPresupuestoOC.CDSProveedor.Close;
   DatosPresupuestoOC.CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
   DatosPresupuestoOC.CDSProveedor.Open;
   IF NOT (DatosPresupuestoOC.CDSProveedor.Eof) THEN
     BEGIN
       QListaPrecioProv.Close;
       QListaPrecioProv.ParamByName('codigo').AsString:=Dato;
       QListaPrecioProv.Open;
       if QListaPrecioProv.Fields[0].AsString<>'' then
         begin
           CDSPresOC_CabID_LISTA_PROVEEDOR.Value        := QListaPrecioProvID.Value;
           CDSPresOC_CabNRO_LISTA_PROVEEDOR.Value       := QListaPrecioProvLISTA_NRO.Value;
           CDSPresOC_CabFECHA_LISTA_PROVEEDOR.AsDateTime:= QListaPrecioProvFECHA.AsDateTime;
         end;
       QListaPrecioProv.Close;

       CDSPresOC_CabNOMBRE.AsString      := DatosPresupuestoOC.CDSProveedorNombre.AsString;
       CDSPresOC_CabRAZONSOCIAL.AsString := DatosPresupuestoOC.CDSProveedorRazon_Social.ASString;
       CDSPresOC_CabCUIT.AsString        := DatosPresupuestoOC.CDSProveedorN_de_CUIT.AsString;
       CDSPresOC_CabDIRECCION.AsString   := DatosPresupuestoOC.CDSProveedorDireccion.AsString;
       CDSPresOC_CabTIPOIVA.Value        := DatosPresupuestoOC.CDSProveedorCondicion_IVA.Value;
       CDSPresOC_CabCPOSTAL.AsString     := DatosPresupuestoOC.CDSProveedorCod_Postal.AsString;
       CDSPresOC_CabLOCALIDAD.AsString   := DatosPresupuestoOC.CDSProveedorLocalidad.AsString;
       DatosPresupuestoOC.CDSInscripcion.Close;
       DatosPresupuestoOC.CDSInscripcion.Params.ParamByName('Codigo').Value := CDSPresOC_CabTIPOIVA.Value;
       DatosPresupuestoOC.CDSInscripcion.Open;
       IF NOT (DatosPresupuestoOC.CDSInscripcion.Eof) THEN
          begin
            CDSPresOC_CabCALCULA_SOBRETASA.Value := DatosPresupuestoOC.CDSInscripcionCobraSobretasa.Value;
            CDSPresOC_CabDESGLOZAIVA.Value       := DatosPresupuestoOC.CDSInscripcionDISCRIMINAIVA.Value;
          end;
       DatosPresupuestoOC.CDSInscripcion.Close;
       DatosPresupuestoOC.QPrimerConComp.CLose;
       DatosPresupuestoOC.QPrimerConComp.ParamByName('codigo').AsString:=Dato;
       DatosPresupuestoOC.QPrimerConComp.Open;
       if Not(DatosPresupuestoOC.QPrimerConComp.IsEmpty) Then
         if DatosPresupuestoOC.QPrimerConComp.Fields[0].AsString<>'' Then
           begin
             CDSPresOC_CabCONDICIONCOMPRASetText(CDSPresOC_CabCONDICIONCOMPRA,DatosPresupuestoOC.QPrimerConComp.Fields[0].AsString);
           end
         else
           begin
             ShowMessage('No tiene Condiciones de Compra cargadas....');
             CDSPresOC_CabCONDICIONCOMPRA.Clear;
             CDSPresOC_CabMUESTRACONDCOMPRA.Clear;
           end;
       DatosPresupuestoOC.QPrimerConComp.CLose;
        //  FormOrdenCompra.DetalleOp.Execute;
       Result := True;
     END
   ELSE
     Result := False;
END;

FUNCTION TDatosPresupuestoOC.AsignarCondCompra(Proveedor: STRING; Dato: Integer):
  Boolean;
BEGIN
  DatosPresupuestoOC.CDSCondCompra.Close;
  DatosPresupuestoOC.CDSCondCompra.Params.ParamByName('Codigo').Value     := Proveedor;
  DatosPresupuestoOC.CDSCondCompra.Params.ParamByName('CodigoPago').Value := Dato;
  DatosPresupuestoOC.CDSCondCompra.Open;
  IF NOT (DatosPresupuestoOC.CDSCondCompra.Eof) THEN
    BEGIN
      Result := True;
      CDSPresOC_CabMUESTRACONDCOMPRA.Value := DatosPresupuestoOC.CDSCondCompraDetalle.Value;
      CDSPresOC_CabFECHAVTO.AsDateTime     := CDSPresOC_CabFECHA.AsDateTime + DatosPresupuestoOC.CDSCondCompraDias.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSPresOC_CabMUESTRACONDCOMPRA.Value := '';
    END
END;


FUNCTION TDatosPresupuestoOC.AsignarEmpleado(Tipo:byte;Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty)  and (CDSPersonalAUTORIZAOC.Value='S') THEN
    BEGIN
      Result:=True;
      if Tipo=0 Then
        CDSPresOC_CabMUESTRAREALIZO.Value  := CDSPersonalNOMBRE.Value
      else
        if Tipo=1 Then
          CDSPresOC_CabMUESTRAREALIZO.Value:= CDSPersonalNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      if Tipo=0 Then
        CDSPresOC_CabMUESTRAREALIZO.Value:=''
      else
        if Tipo=1 Then
          CDSPresOC_CabMUESTRAREALIZO.Value:=''
    end;
  CDSPersonal.Close;
END;

FUNCTION TDatosPresupuestoOC.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSPresOC_Det.State = dsBrowse THEN
    CDSPresOC_Det.Edit;
  DatosPresupuestoOC.CDSStock.Close;
  DatosPresupuestoOC.CDSStock.Params.ParamByName('Codigo').Value := Dato;
  DatosPresupuestoOC.CDSStock.Open;
  IF NOT (DatosPresupuestoOC.CDSStock.IsEmpty) THEN
    BEGIN
      //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores

      CDSPresOC_DetUNITARIO_TOTAL.AsFloat      := 0;
      CDSPresOC_DetUNITARIO_GRAVADO.AsFloat    := 0;
      CDSPresOC_DetUNITARIO_EXENTO.AsFloat     := 0;
      CDSPresOC_DetTOTAL.AsFloat               := 0;

      CDSPresOC_DetUNITARIO_GRAVADO.AsFloat    := 0;
      CDSPresOC_DetUNITARIO_EXENTO.AsFloat     := 0;
      CDSPresOC_DetUNITARIO_TOTAL.AsFloat      := 0;

      CDSPresOC_DetUNITARIO_NETO_GRAVADO.AsFloat := 0;
      CDSPresOC_DetUNITARIO_NETO_EXENTO.AsFloat  := 0;
      CDSPresOC_DetUNITARIO_NETO_TOTAL.AsFloat   := 0;

      CDSPresOC_DetUNITARIO_FINAL_GRAVADO.AsFloat := 0;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO.AsFloat  := 0;
      CDSPresOC_DetUNITARIO_FINAL_TOTAL.AsFloat   := 0;

      CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.AsFloat:= 0;
      CDSPresOC_DetUNITARIO_NETO_EXENTO_2.AsFloat := 0;
      CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat  := 0;

      CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.AsFloat := 0;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.AsFloat  := 0;
      CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat   := 0;

      CDSPresOC_DetDETALLE.AsString        := CDSStockDetalle_Stk.AsString;
      CDSPresOC_DetUNIDAD.Value            := CDSStockUNIDAD_COMPRA.Value;
      CDSPresOC_DetMODO_GRAVAMEN.Value     := CDSStockModo_Gravamen.Value;
      CDSPresOC_DetTIPOIVA_TASA.Value      := CDSStockTasa_Iva.Value;
      CDSPresOC_DetTIPOIVA_SOBRETASA.Value := CDSStockSobreTasa_Iva.Value;
      //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
      CDSPresOC_DetDESGLOZAIVA.Value       := CDSPresOC_CabDESGLOZAIVA.Value;
      // traigo los porcentajes de Iva
      DatosPresupuestoOC.CDSIva.Close;
      DatosPresupuestoOC.CDSIva.Params.ParamByName('id').Value := CDSPresOC_DetTIPOIVA_TASA.Value;
      DatosPresupuestoOC.CDSIva.Open;
      IF NOT (DatosPresupuestoOC.CDSIva.IsEmpty) THEN
        CDSPresOC_DetIVA_TASA.AsFloat := CDSIvaTasa.AsFloat;
      DatosPresupuestoOC.CDSIva.Close;
      DatosPresupuestoOC.CDSIva.Params.ParamByName('id').Value := CDSPresOC_DetTIPOIVA_SOBRETASA.Value;
      DatosPresupuestoOC.CDSIva.Open;
      IF NOT (DatosPresupuestoOC.CDSIva.IsEmpty) THEN
        CDSPresOC_DetIVA_SOBRETASA.Value  := DatosPresupuestoOC.CDSIvaTasa.Value;

      CDSPresOC_DetUNITARIO_GRAVADO.Value       := CDSStockFijacion_Precio_Gravado.Value;
      CDSPresOC_DetUNITARIO_EXENTO.Value        := CDSStockFijacion_Precio_Exento.Value;
      CDSPresOC_DetUNITARIO_TOTAL.Value         := CDSStockFijacion_Precio_Total.Value;

      CDSPresOC_DetUNITARIO_NETO_GRAVADO.Value  := CDSStockFijacion_Precio_Gravado.Value;
      CDSPresOC_DetUNITARIO_NETO_EXENTO.Value   := CDSStockFijacion_Precio_Exento.Value;
      CDSPresOC_DetUNITARIO_NETO_TOTAL.Value    := CDSStockFijacion_Precio_Total.Value;

      CDSPresOC_DetUNITARIO_FINAL_GRAVADO.Value := CDSStockFijacion_Precio_Gravado.Value;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO.Value  := CDSStockFijacion_Precio_Exento.Value;
      CDSPresOC_DetUNITARIO_FINAL_TOTAL.Value   := CDSStockFijacion_Precio_Total.Value;

      CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.Value  := CDSStockFijacion_Precio_Gravado.Value;
      CDSPresOC_DetUNITARIO_NETO_EXENTO_2.Value   := CDSStockFijacion_Precio_Exento.Value;
      CDSPresOC_DetUNITARIO_NETO_TOTAL_2.Value    := CDSStockFijacion_Precio_Total.Value;

      CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.Value := CDSStockFijacion_Precio_Gravado.Value;
      CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.Value  := CDSStockFijacion_Precio_Exento.Value;
      CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.Value   := CDSStockFijacion_Precio_Total.Value;


      CalcularPrecioNeto;

      Result := True;
    END
  ELSE
    Result := False;
END;


procedure TDatosPresupuestoOC.CDSCostoNoFacTIPOSetText(Sender: TField;
  const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarRecargo(Sender.AsInteger,1)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición No Válido');
        END;
    end;

end;

procedure TDatosPresupuestoOC.CDSCostosFacturablesAfterDelete(
  DataSet: TDataSet);
begin
CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSCostosFacturablesAfterPost(DataSet: TDataSet);
begin
  CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSCostosFacturablesNewRecord(DataSet: TDataSet);
begin
  CDSCostosFacturablesID.Value          :=ibgCostoFac.IncrementFD(1);
  CDSCostosFacturablesID_CAB.Value      :=CDSPresOC_CabID_OC.Value;
  CDSCostosFacturablesPORCENTAJE.AsFloat:=0;
  CDScostosFacturablesIMPORTE.AsFloat   :=0;
end;

procedure TDatosPresupuestoOC.CDSCostosFacturablesTIPOSetText(Sender: TField;
  const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarRecargo(Sender.AsInteger,0)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición No Válido');
        END;
    end;
end;

procedure TDatosPresupuestoOC.CDSDsctoFacturablesAfterDelete(DataSet: TDataSet);
begin
  CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSDsctoFacturablesAfterPost(DataSet: TDataSet);
begin
CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSDsctoFacturablesNewRecord(DataSet: TDataSet);
begin
  CDSDsctoFacturablesID.Value         := ibgDsctoFac.IncrementFD(1);
  CDSDsctoFacturablesID_CAB.Value     := CDSPresOC_CabID_OC.Value;
  CDSDsctoFacturablesDESCUENTO.AsFloat:= 0;
  CDSDsctoFacturablesIMPORTE.AsFloat  := 0;
end;

procedure TDatosPresupuestoOC.CDSDsctoFacturablesTIPOSetText(Sender: TField;
  const Text: string);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDescuento(Sender.AsInteger,0)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición No Válido');
        END;
    end;
end;

procedure TDatosPresupuestoOC.CDSDsctoNoFacAfterDelete(DataSet: TDataSet);
begin
  CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSDsctoNoFacAfterPost(DataSet: TDataSet);
begin
  CalcularPrecioNeto;
end;

procedure TDatosPresupuestoOC.CDSDsctoNoFacNewRecord(DataSet: TDataSet);
begin
  CDSDsctoNoFacID.Value       :=ibgDsctoNoFac.IncrementFD(1);
  CDSDsctoNoFacID_CAB.Value   :=CDSPresOC_CabID_OC.Value;
  CDSDsctoNoFacDESCUENTO.AsFloat:=0;
  CDSDsctoNoFacIMPORTE.AsFloat  :=0;
end;

procedure TDatosPresupuestoOC.CDSDsctoNoFacTIPOSetText(Sender: TField;
  const Text: string);
begin
if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDescuento(Sender.AsInteger,1)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición No Válido');
        END;
    end;
end;

procedure TDatosPresupuestoOC.CDSPresOC_CabCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignaProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          FormPresupuestoOC.RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      //HabilitarLabel;
      FormPresupuestoOC.RxDBECodigo.Text := Aux;
    end;
end;

procedure TDatosPresupuestoOC.CDSPresOC_CabCONDICIONCOMPRASetText(
  Sender: TField; const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarCondCompra(CDSPresOC_CabCODIGO.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Condición de Compra No Válido');
          FormPresupuestoOC.RxDBECondCompra.SetFocus;
        END;
    end;
end;

procedure TDatosPresupuestoOC.CDSPresOC_CabNewRecord(DataSet: TDataSet);
begin
  CDSPresOC_CabID_OC.Value:=ibgPresOC_Cab.IncrementFD(1);
  FormPresupuestoOC.QUltimoCodigo2.Close;
  FormPresupuestoOC.QUltimoCodigo2.Open;
  if FormPresupuestoOC.QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSPresOC_CabNUMEROSetText(CDSPresOC_CabNUMERO,IntToStr(FormPresupuestoOC.QUltimoCodigo2.Fields[0].AsInteger+1))
  else
    CDSPresOC_CabNUMEROSetText(CDSPresOC_CabNUMERO,'1');
  FormPresupuestoOC.QUltimoCodigo2.Close;
  CDSPresOC_CabFECHA.AsDateTime := Date;
end;

procedure TDatosPresupuestoOC.CDSPresOC_CabNUMEROSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Copy('00000000',1,8-length(Text))+Text;
end;

procedure TDatosPresupuestoOC.CDSPresOC_CabREALIZOSetText(Sender: TField;
  const Text: string);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarEmpleado(0,Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosPresupuestoOC.CDSPresOC_DetAfterDelete(DataSet: TDataSet);
begin
  Sumar;
end;

procedure TDatosPresupuestoOC.CDSPresOC_DetAfterPost(DataSet: TDataSet);
begin
  Sumar;
end;

procedure TDatosPresupuestoOC.CDSPresOC_DetCANTIDADPEDIDASetText(Sender: TField;
  const Text: string);
VAR
  Aux3: Real;
begin
  inherited;
   if Text<>'' Then
    begin
      if CDSPresOC_Det.State=dsBrowse then
        CDSPresOC_Det.Edit;
 
      Sender.AsString := Text;
      Sender.AsFloat:= Moneda3D(' ','0.00',Abs(Sender.AsFloat));
//      Sender.AsFloat:= StrToFloat(FormatFloat(MascaraDetalleCantidad,Sender.AsFloat));
      Aux3 := CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat;
      CalcularPrecioNeto;
      if CDSPresOC_Det.State=dsBrowse then
        CDSPresOC_Det.Edit;
      CDSPresOC_DetTOTAL.AsFloat       := Sender.AsFloat * CDSPresOC_DetUNITARIO_TOTAL.AsFloat;
      CDSPresOC_DetTOTAL_NETO.AsFloat  := Sender.AsFloat * CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat;
      CDSPresOC_DetTOTAL_FINAL.AsFloat := Sender.AsFloat * CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat;

    end;
end;

procedure TDatosPresupuestoOC.CDSPresOC_DetCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
VAR
  S: STRING;
BEGIN
  if (Text<>'') and (Text<>#13) Then
    begin
       if CDSPresOC_Cab.State=dsBrowse Then
          CDSPresOC_Det.edit;
        DMMain_FD.CDSCodigoBarra.Close;
        DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
        DMMain_FD.CDSCodigoBarra.Open;
        If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
          begin
            if CDSPresOC_Det.State=dsBrowse Then
              CDSPresOC_Det.edit;
            Sender.AsString:=Text;
            DMMain_FD.EncontroCodigoBarra:=False;
          end
        else
          begin
            Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
            DMMain_FD.EncontroCodigoBarra:=True;
          end;
        DMMain_FD.CDSCodigoBarra.Close;

        S:=Sender.AsString;
        if DMMain_FD.JustificaCodigo='D' Then
          S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
        else
          if DMMain_FD.JustificaCodigo='I' Then
            S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

        Sender.AsString:=S;

        IF NOT (AsignarArticulo(s)) THEN
          BEGIN
            Sender.AsString := '';
            ShowMessage('Codigo de Artículo Inválido...!!!');
          END;
      end;
end;

procedure TDatosPresupuestoOC.CDSPresOC_DetNewRecord(DataSet: TDataSet);
begin
  CDSPresOC_DetID.Value                    := ibgPresOC_Det.IncrementFD(1);
  CDSPresOC_DetID_CABOC.Value              := CDSPresOC_CabID_OC.Value;
  CDSPresOC_DetFECHA.Value                 := CDSPresOC_CabFECHA.Value;

  CDSPresOC_DetUNITARIO_TOTAL.AsFloat      :=0;
  CDSPresOC_DetUNITARIO_GRAVADO.AsFloat    :=0;
  CDSPresOC_DetUNITARIO_EXENTO.AsFloat     :=0;

  CDSPresOC_DetUNITARIO_NETO_TOTAL.AsFloat  :=0;
  CDSPresOC_DetUNITARIO_NETO_GRAVADO.AsFloat:=0;
  CDSPresOC_DetUNITARIO_NETO_EXENTO.AsFloat :=0;

  CDSPresOC_DetUNITARIO_FINAL_TOTAL.AsFloat     :=0;
  CDSPresOC_DetUNITARIO_FINAL_GRAVADO.AsFloat   :=0;
  CDSPresOC_DetUNITARIO_FINAL_EXENTO.AsFloat    :=0;

  CDSPresOC_DetUNITARIO_NETO_TOTAL_2.AsFloat    :=0;
  CDSPresOC_DetUNITARIO_NETO_GRAVADO_2.AsFloat  :=0;
  CDSPresOC_DetUNITARIO_NETO_EXENTO_2.AsFloat   :=0;

  CDSPresOC_DetUNITARIO_FINAL_TOTAL_2.AsFloat   :=0;
  CDSPresOC_DetUNITARIO_FINAL_GRAVADO_2.AsFloat :=0;
  CDSPresOC_DetUNITARIO_FINAL_EXENTO_2.AsFloat  :=0;



  CDSPresOC_DetCANTIDADPEDIDA.AsFloat      :=1;

  CDSPresOC_DetTOTAL.AsFloat               :=0;
  CDSPresOC_DetTOTAL_NETO.AsFloat          :=0;
  CDSPresOC_DetTOTAL_FINAL.AsFloat         :=0;


end;

procedure TDatosPresupuestoOC.CDSPresOC_DetUNITARIO_TOTALSetText(Sender: TField;
  const Text: string);
VAR
  Num, AuxGravado, AuxExento, AuxExcluido, AuxTotal: real;
BEGIN
  AuxGravado  := 0;
  AuxExento   := 0;
  Num := Moneda3D(' ','0.00',StrToFloat(Text));
  IF CDSPresOC_DetMODO_GRAVAMEN.Value <> '' THEN
    CASE CDSPresOC_DetMODO_GRAVAMEN.Value[1] OF
      'E': CDSPresOC_DetUNITARIO_EXENTO.AsFloat := Num;
      'G': CDSPresOC_DetUNITARIO_GRAVADO.AsFloat:= Num;
    END;
  AuxGravado  := CDSPresOC_DetUNITARIO_GRAVADO.AsFloat;
  AuxExento   := CDSPresOC_DetUNITARIO_EXENTO.AsFloat;
  AuxTotal                  := AuxGravado + AuxExento + AuxExcluido;
  CDSPresOC_DetTOTAL.AsFloat:= CDSPresOC_DetCANTIDADPEDIDA.AsFloat * AuxTotal ;
  Sender.AsString           := FloatToStr(AuxTotal);
  CalcularPrecioNeto;

end;

procedure TDatosPresupuestoOC.DataModuleDestroy(Sender: TObject);
begin
  DatosPresupuestoOC:=nil;
end;

end.
