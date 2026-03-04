UNIT DMProveedores;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Librerias, Provider, DBClient,
  Variants, IBGenerator, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet,StrUtils;

TYPE
  TDatosProveedores = CLASS(TDataModule)
    DSPProvee: TDataSetProvider;
    DSPCondCompra: TDataSetProvider;
    CDSBuscaFPago: TClientDataSet;
    DSPBuscaFPago: TDataSetProvider;
    CDSBuscaFPagoCODIGO: TIntegerField;
    CDSBuscaFPagoDETALLE: TStringField;
    CDSBuscaFPagoDIAS: TIntegerField;
    DSLstProveedores: TDataSource;
    DSPLstProveedores: TDataSetProvider;
    DSBuscaRubrosProv: TDataSource;
    DSListaComprobantes: TDataSource;
    DSTasaRetGanancia: TDataSource;
    DSBuscaTasaRetIIBB: TDataSource;
    CDSProveedor: TClientDataSet;
    DSCompras: TDataSource;
    DSDetalleCompras: TDataSource;
    DSDetallesTotales: TDataSource;
    CDSArticulosProveedor: TClientDataSet;
    DSArticulosProveedor: TDataSource;
    DSBuscaRubro: TDataSource;
    DSBuscaMarca: TDataSource;
    DSBuscaSubRubro: TDataSource;
    ibgIdProveeStock: TIBGenerator;
    CDSCondCompra: TClientDataSet;
    CDSCondCompraCODIGOPAGO: TIntegerField;
    CDSCondCompraCODIGOPROVEE: TStringField;
    CDSCondCompraDETALLE: TStringField;
    CDSCondCompraDIAS: TIntegerField;
    CDSCondCompraDESCUENTO: TFloatField;
    CDSCondCompraDESCUENTO_FPAGO: TFloatField;
    CDSBuscaPercepIVA: TClientDataSet;
    DSPBuscaPercepIVA: TDataSetProvider;
    CDSBuscaPercepIVACODIGO: TIntegerField;
    CDSBuscaPercepIVADESCRIPCION: TStringField;
    CDSBuscaPercepIB: TClientDataSet;
    DSPBuscaPercepIB: TDataSetProvider;
    CDSBuscaPercepIBCODIGO: TIntegerField;
    CDSBuscaPercepIBDESCRIPCION: TStringField;
    CDSBuscaPercepIBCOLUMNA: TSmallintField;
    CDSBuscaPercepIBJURIDICION: TIntegerField;
    CDSBuscaInscripcion: TClientDataSet;
    DSPBuscaInscripcion: TDataSetProvider;
    CDSBuscaInscripcionCODIGO: TIntegerField;
    CDSBuscaInscripcionDETALLE: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSBuscaInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QBuscarCuit: TFDQuery;
    QLstProveedores: TFDQuery;
    CDSLstProveedores: TClientDataSet;
    spMarcaProveeDefecto: TFDStoredProc;
    QHayFacProvee: TFDQuery;
    QHayFacProveeMAX: TIntegerField;
    QHayMovCC: TFDQuery;
    IntegerField4: TIntegerField;
    QTasaRetGanPorDefecto: TFDQuery;
    QTasaRetGanPorDefectoCODIGO: TIntegerField;
    QZumaCompras: TFDQuery;
    QBuscaCodigo: TFDQuery;
    CDSRubrosProv: TClientDataSet;
    DSPBuscaRubrosProv: TDataSetProvider;
    CDSRubrosProvID: TIntegerField;
    CDSRubrosProvDETALLE: TStringField;
    DSBuscaCPostal: TDataSource;
    CDSBuscaFPagoDESCUENTO: TFloatField;
    CDSBuscaTasaRetIIBB: TClientDataSet;
    DSPBuscaTasaRetIIBB: TDataSetProvider;
    CDSBuscaTasaRetIIBBID: TIntegerField;
    CDSBuscaTasaRetIIBBDETALLE: TStringField;
    CDSBuscaTasaRetIIBBTASA: TFloatField;
    CDSBuscaTasaRetIIBBMINIMO_IMPONIBLE: TFloatField;
    CDSBuscaTasaRetGanacia: TClientDataSet;
    DSPBuscaTasaRetGanancia: TDataSetProvider;
    CDSBuscaTasaRetGanaciaCODIGO: TIntegerField;
    CDSBuscaTasaRetGanaciaCONCEPTO: TStringField;
    CDSBuscaTasaRetGanaciaALICUOTA: TFloatField;
    CDSBuscaTasaRetGanaciaMINIMO_NO_IMPONIBLE: TFloatField;
    CDSBuscaTasaRetGanaciaPOR_DEFECTO: TStringField;
    CDSBuscaTasaRetGanaciaIMPUESTO_MINIMO: TFloatField;
    QTraePrimerCondicionPago: TFDQuery;
    QTraePrimerCondicionPagoMIN: TIntegerField;
    CDSBuscaCPostal: TClientDataSet;
    DSPBuscaCPostal: TDataSetProvider;
    CDSBuscaCPostalDETALLE_POSTAL: TStringField;
    CDSBuscaCPostalCODIGO_POSTAL: TStringField;
    CDSBuscaCPostalID_POSTAL: TIntegerField;
    CDSBuscaCPostalTELEDISCADO: TStringField;
    CDSBuscaCPostalPROVINCIA: TIntegerField;
    QListaComprobantes: TFDQuery;
    CDSListaComprobantes: TClientDataSet;
    DSPListaComprobantes: TDataSetProvider;
    CDSListaComprobantesID_COMPROBANTE: TIntegerField;
    CDSListaComprobantesTIPO_COMPROB: TStringField;
    CDSListaComprobantesCLASE_COMPROB: TStringField;
    CDSListaComprobantesDENOMINACION: TStringField;
    CDSLstProveedoresCODIGO: TStringField;
    CDSLstProveedoresNOMBRE: TStringField;
    CDSLstProveedoresRAZON_SOCIAL: TStringField;
    CDSLstProveedoresDIRECCION: TStringField;
    CDSLstProveedoresMUESTRAINSCRIPCION: TStringField;
    CDSLstProveedoresN_DE_CUIT: TStringField;
    CDSLstProveedoresCOD_POSTAL: TStringField;
    CDSLstProveedoresLOCALIDAD: TStringField;
    CDSLstProveedoresTELEFONO_1: TStringField;
    CDSLstProveedoresTELEFONO_2: TStringField;
    CDSLstProveedoresMUESTRARUBRO: TStringField;
    CDSLstProveedoresOBSERVACIONES: TMemoField;
    QBorraInexistentes: TFDQuery;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockDESCRIPCION_MARCA: TStringField;
    QStockDETALLE_RUBRO: TStringField;
    QStockDETALLE_SUBRUBRO: TStringField;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSBuscaSubRubro: TClientDataSet;
    DSPBuscaSubRubro: TDataSetProvider;
    CDSBuscaSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSBuscaSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSBuscaSubRubroCODIGO_RUBRO: TStringField;
    CDSBuscaMarca: TClientDataSet;
    DSPBuscaMarca: TDataSetProvider;
    CDSListaComprobantesLETRA: TStringField;
    CDSListaComprobantesSUCURSAL: TIntegerField;
    CDSListaComprobantesMUESTRASUCURSAL: TStringField;
    DSBuscaInscripcion: TDataSource;
    CDSCompras: TClientDataSet;
    DSPCompras: TDataSetProvider;
    QCompras: TFDQuery;
    CDSComprasANIO: TIntegerField;
    CDSComprasMES: TIntegerField;
    CDSComprasTOTAL: TFloatField;
    QDetalleCompras: TFDQuery;
    CDSDetalleCompras: TClientDataSet;
    DSPDetalleCompras: TDataSetProvider;
    CDSDetallesTotales: TClientDataSet;
    DSPDetallesTotales: TDataSetProvider;
    QDetallesTotales: TFDQuery;
    CDSPostal: TClientDataSet;
    DSPPostal: TDataSetProvider;
    CDSPostalID_POSTAL: TIntegerField;
    CDSPostalCODIGO_POSTAL: TStringField;
    CDSPostalDETALLE_POSTAL: TStringField;
    CDSPostalTELEDISCADO: TStringField;
    CDSPostalPROVINCIA: TIntegerField;
    CDSTasaPercepIVA: TClientDataSet;
    DSPTasaPercepIVA: TDataSetProvider;
    CDSTasaPercepIVACODIGO: TIntegerField;
    CDSTasaPercepIVADESCRIPCION: TStringField;
    CDSTasaPercepIVATASA: TFloatField;
    CDSTasaPercepIVAMINIMOAPLICABLE: TFloatField;
    CDSTasaPercepIVACOLUMNA: TSmallintField;
    CDSTasaPercepIVACODIGOREGIMEN: TIntegerField;
    CDSTasaPercepIIBB: TClientDataSet;
    DSPTasaPercepIIBB: TDataSetProvider;
    CDSTasaPercepIIBBCODIGO: TIntegerField;
    CDSTasaPercepIIBBDESCRIPCION: TStringField;
    CDSTasaPercepIIBBTASA: TFloatField;
    CDSTasaPercepIIBBMINIMOAPLICABLE: TFloatField;
    CDSTasaPercepIIBBCOLUMNA: TSmallintField;
    CDSTasaPercepIIBBJURIDICION: TIntegerField;
    CDSFPago: TClientDataSet;
    DSPFPago: TDataSetProvider;
    CDSFPagoCODIGO: TIntegerField;
    CDSFPagoDETALLE: TStringField;
    CDSFPagoDIAS: TIntegerField;
    CDSFPagoDESCUENTO: TFloatField;
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
    CDSProveedorSALDO_INICIAL: TFloatField;
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
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    DSCondCompra: TDataSource;
    CDSComprasCAL_INCIDENCIA: TFloatField;
    CDSDetalleComprasTIPOCPBTE: TStringField;
    CDSDetalleComprasANIO: TSmallintField;
    CDSDetalleComprasMES: TSmallintField;
    CDSDetalleComprasCODIGOARTICULO: TStringField;
    CDSDetalleComprasDETALLE: TStringField;
    CDSDetalleComprasCANT: TFloatField;
    CDSDetalleComprasTOTAL: TFloatField;
    CDSDetalleComprasCAL_TOTAL: TFloatField;
    CDSDetalleComprasCAL_PROMEDIO: TFloatField;
    CDSDetalleComprasCAL_CANTIDAD: TFloatField;
    CDSDetalleComprasCAL_INCIDENCIA: TFloatField;
    CDSDetallesTotalesTIPOCPBTE: TStringField;
    CDSDetallesTotalesCODIGOARTICULO: TStringField;
    CDSDetallesTotalesDETALLE: TStringField;
    CDSDetallesTotalesCANT: TFloatField;
    CDSDetallesTotalesTOTAL: TFloatField;
    CDSDetallesTotalesCAL_TOTAL: TFloatField;
    CDSDetallesTotalesCAL_INCIDENCIA: TFloatField;
    CDSDetallesTotalesCAL_CANT: TFloatField;
    CDSDetallesTotalesCAL_PROMEDIO: TFloatField;
    QZumaComprasTOTAL: TFloatField;
    QArtiProv: TFDQuery;
    QArtiProvID_PROVEESTOCK: TIntegerField;
    QArtiProvCODIGO_STK: TStringField;
    QArtiProvCODIGO_FACTURACION: TStringField;
    QArtiProvCODIGO_INTERNO: TStringField;
    QArtiProvCODIGO_REFERENCIA: TStringField;
    QArtiProvULTIMA_COMPRA: TSQLTimeStampField;
    QArtiProvPORDEFECTO: TStringField;
    QArtiProvCODIGO_PROVEEDOR: TStringField;
    QArtiProvCOSTO_NETO: TFloatField;
    QArtiProvRANKING: TIntegerField;
    QArtiProvMARCA_STK: TStringField;
    QArtiProvDETALLE_STK: TStringField;
    QArtiProvRUBRO_STK: TStringField;
    QArtiProvSUBRUBRO_STK: TStringField;
    QArtiProvRAZON_SOCIAL: TStringField;
    QArtiProvPRESENTACION_CANTIDAD: TFloatField;
    QArtiProvPRESENTACION_UNIDAD: TStringField;
    QArtiProvUNIDAD: TStringField;
    QArtiProvDESCRIPCION_MARCA: TStringField;
    QArtiProvDETALLE_RUBRO: TStringField;
    QArtiProvDETALLE_SUBRUBRO: TStringField;
    CDSArticulosProveedorID_PROVEESTOCK: TIntegerField;
    CDSArticulosProveedorCODIGO_STK: TStringField;
    CDSArticulosProveedorCODIGO_FACTURACION: TStringField;
    CDSArticulosProveedorCODIGO_INTERNO: TStringField;
    CDSArticulosProveedorCODIGO_REFERENCIA: TStringField;
    CDSArticulosProveedorULTIMA_COMPRA: TSQLTimeStampField;
    CDSArticulosProveedorPORDEFECTO: TStringField;
    CDSArticulosProveedorCODIGO_PROVEEDOR: TStringField;
    CDSArticulosProveedorCOSTO_NETO: TFloatField;
    CDSArticulosProveedorRANKING: TIntegerField;
    CDSArticulosProveedorMARCA_STK: TStringField;
    CDSArticulosProveedorDETALLE_STK: TStringField;
    CDSArticulosProveedorRUBRO_STK: TStringField;
    CDSArticulosProveedorSUBRUBRO_STK: TStringField;
    CDSArticulosProveedorRAZON_SOCIAL: TStringField;
    CDSArticulosProveedorPRESENTACION_CANTIDAD: TFloatField;
    CDSArticulosProveedorPRESENTACION_UNIDAD: TStringField;
    CDSArticulosProveedorUNIDAD: TStringField;
    CDSArticulosProveedorDESCRIPCION_MARCA: TStringField;
    CDSArticulosProveedorDETALLE_RUBRO: TStringField;
    CDSArticulosProveedorDETALLE_SUBRUBRO: TStringField;
    DSPArticulosProveedor: TDataSetProvider;
    CopiaQArtiProv: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField6: TStringField;
    FMTBCDField1: TFloatField;
    IntegerField2: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    FMTBCDField2: TFloatField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    FMTBCDField3: TFloatField;
    QStockFisico: TFDQuery;
    CDSArticulosProveedorCANTIDAD: TFloatField;
    CDSProveedorRUBRO_GASTO: TStringField;
    CDSProveedorSUB_RUB_GASTOS: TStringField;
    DSRubros: TDataSource;
    DSCuentas: TDataSource;
    CDSCuentas: TClientDataSet;
    CDSRubros: TClientDataSet;
    DSPRubros: TDataSetProvider;
    DSPCuentas: TDataSetProvider;
    QCta: TFDQuery;
    QRub: TFDQuery;
    CDSRubrosCODIGO: TStringField;
    CDSRubrosDETALLE: TStringField;
    CDSProveedorCON_OCOMPRA: TStringField;
    QActualizaCuitFc: TFDQuery;
    CDSProveedorID_FACTURACTDODEFECTO: TIntegerField;
    QListaCompCtdo: TFDQuery;
    DSPListaCompCtdo: TDataSetProvider;
    CDSListaCompCtdo: TClientDataSet;
    DSListaCompCtdo: TDataSource;
    CDSListaCompCtdoID_COMPROBANTE: TIntegerField;
    CDSListaCompCtdoTIPO_COMPROB: TStringField;
    CDSListaCompCtdoCLASE_COMPROB: TStringField;
    CDSListaCompCtdoDENOMINACION: TStringField;
    CDSListaCompCtdoLETRA: TStringField;
    CDSListaCompCtdoSUCURSAL: TIntegerField;
    CDSListaCompCtdoMUESTRASUCURSAL: TStringField;
    CDSProveedorID_PERC_IBB_3: TIntegerField;
    CDSProveedorAUTORIZADO_NOMBRE: TStringField;
    CDSProveedorAUTORIZADO_TIPODOC: TStringField;
    CDSProveedorAUTORIZADO_NRODOC: TStringField;
    CDSBuscaPercepIBTASA: TFloatField;
    CDSBuscaPercepIBMINIMOAPLICABLE: TFloatField;
    CDSProveedorRETENCION_IVA: TStringField;
    CDSProveedorCODIGO_RET_IVA: TIntegerField;
    CDSProveedorPORCENTAJE_RET_IVA: TSingleField;
    QBuscaReg: TFDQuery;
    DSPBuscaRegimen: TDataSetProvider;
    CDSBuscaRegimen: TClientDataSet;
    CDSBuscaRegimenCOD_IMPUESTO: TIntegerField;
    CDSBuscaRegimenCODIGO: TIntegerField;
    CDSBuscaRegimenDETALLE: TStringField;
    CDSCuentasCODIGO: TStringField;
    CDSCuentasCODIGO_RUBRO: TStringField;
    CDSCuentasDETALLE: TStringField;
    CDSCuentasEXCLUYE: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSLstProveedoresCORREO: TStringField;
    spSincronizaListaPrecios: TFDStoredProc;
    CDSProveedorCBU: TStringField;
    QMarcaProveedor: TFDQuery;
    DSPMarcaProveedor: TDataSetProvider;
    CDSMarcaProveedor: TClientDataSet;
    DSMarcaProveedor: TDataSource;
    QMarcaProveedorCODIGO: TStringField;
    QMarcaProveedorMARKA: TStringField;
    QMarcaProveedorDESCRIPCION_MARCA: TStringField;
    CDSMarcaProveedorCODIGO: TStringField;
    CDSMarcaProveedorMARKA: TStringField;
    CDSMarcaProveedorDESCRIPCION_MARCA: TStringField;
    CDSBuscaMarcaMARCA_STK: TStringField;
    CDSBuscaMarcaDESCRIPCION_MARCA: TStringField;
    CDSBuscaMarcaOBSERVACION_MARCA: TStringField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE wwCDSProvee_oldCodigoSetText(Sender: TField; CONST Text: STRING);
    PROCEDURE CDSCondCompraNewRecord(DataSet: TDataSet);
    PROCEDURE CDSCondCompraCODIGOPAGOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSCondCompraPostError(DataSet: TDataSet;
      E: EDatabaseError; VAR Action: TDataAction);
    PROCEDURE CDSCondCompraBeforePost(DataSet: TDataSet);
    procedure CDSProveedorCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSProveedorCOD_POSTALSetText(Sender: TField; const Text: string);
    procedure CDSProveedorID_PERC_IVASetText(Sender: TField;
      const Text: string);
    procedure CDSProveedorID_PERC_IBBSetText(Sender: TField;
      const Text: string);
    procedure CDSProveedorID_COD_POSTALSetText(Sender: TField;
      const Text: string);
    procedure CDSProveedorNOMBRESetText(Sender: TField; const Text: string);
    procedure CDSProveedorN_DE_CUITSetText(Sender: TField; const Text: string);
    procedure CDSProveedorBeforePost(DataSet: TDataSet);
    procedure CDSProveedorNewRecord(DataSet: TDataSet);
    procedure QDetalleComprasCalcFields(DataSet: TDataSet);
    procedure QDetallesTotalesCalcFields(DataSet: TDataSet);
    procedure CDSProveedorID_PERC_IBB_2SetText(Sender: TField;
      const Text: string);
    procedure CDSArticulosProveedorNewRecord(DataSet: TDataSet);
    procedure CDSArticulosProveedorCODIGO_STKSetText(Sender: TField;
      const Text: string);
    procedure CDSArticulosProveedorAfterInsert(DataSet: TDataSet);
    procedure CDSArticulosProveedorBeforePost(DataSet: TDataSet);
    procedure CDSComprasAfterScroll(DataSet: TDataSet);
    procedure CDSComprasCalcFields(DataSet: TDataSet);
    procedure CDSDetalleComprasCalcFields(DataSet: TDataSet);
    procedure CDSDetallesTotalesCalcFields(DataSet: TDataSet);
    procedure CDSArticulosProveedorCalcFields(DataSet: TDataSet);
    procedure CDSMarcaProveedorNewRecord(DataSet: TDataSet);
    procedure CDSMarcaProveedorAfterInsert(DataSet: TDataSet);
    procedure CDSMarcaProveedorMARKASetText(Sender: TField; const Text: string);
  private
    function AsignarMarca(dato: STRING): Boolean;
    { Private declarations }
  public
    Old_Codigo:String;
    TotalCompra:Real;
    FUNCTION AsignaLocalidad(dato: integer): boolean;
    FUNCTION AsignaPercepIva(dato: integer): boolean;
    FUNCTION AsignaPercepIB(dato: integer;cual:byte): boolean;
    FUNCTION AsignaFPago(Dato: Integer): Boolean;
    procedure ReAsignaFPago;

    { Public declarations }
  END;

VAR
  DatosProveedores: TDatosProveedores;
IMPLEMENTATION

USES UProveedor_2,UDMain_FD,DMBuscadoresForm;

{$R *.DFM}


procedure TDatosProveedores.ReAsignaFPago;
begin
  CDSCondCompra.First;
  while Not(CDSCondCompra.Eof) Do
    begin
      CDSCondCompra.Edit;
      CDSCondCompraCODIGOPROVEE.Value:=CDSProveedorCODIGO.Value;
      CDSCondCompra.Next;
    end;
end;

FUNCTION TDatosProveedores.AsignaLocalidad(Dato: Integer): Boolean;
BEGIN
  CDSPostal.Close;
  CDSPostal.Params.ParamByName('id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
  CDSPostal.Open;
  IF NOT (CDSPostal.IsEmpty) THEN
    BEGIN
      result := True;
      CDSProveedorCOD_POSTAL.Value    := CDSPostalCodigo_Postal.Value;
      CDSProveedorLOCALIDAD.Value     := CDSPostalDetalle_Postal.Value;
      CDSProveedorTELEDISCADO.Value   := CDSPostalTelediscado.Value;
      CDSProveedorID_COD_POSTAL.Value := Dato;
    END
  ELSE
    result := False;
  CDSPostal.Close;
END;

FUNCTION TDatosProveedores.AsignaPercepIva(Dato: Integer): Boolean;
BEGIN
  CDSTasaPercepIVA.Close;
  CDSTasaPercepIVA.Params.ParamByName('Id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
  CDSTasaPercepIVA.Open;
  IF NOT (CDSTasaPercepIVA.Eof) THEN
    BEGIN
      result := True;
      CDSProveedorDESPERIVA.Value   := CDSTasaPercepIVADESCRIPCION.Value;
      CDSProveedorID_PERC_IVA.Value := dato;
    END
  ELSE
    result := False;
  CDSTasaPercepIVA.Close;
END;

procedure TDatosProveedores.CDSArticulosProveedorAfterInsert(DataSet: TDataSet);
begin
  FormProveedor_2.dbgArticulos.SetFocus;
  FormProveedor_2.dbgArticulos.SelectedIndex:=0;
end;

procedure TDatosProveedores.CDSArticulosProveedorBeforePost(DataSet: TDataSet);
begin
  if CDSArticulosProveedorCODIGO_STK.AsString='' then
    begin
      CDSArticulosProveedor.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosProveedores.CDSArticulosProveedorCalcFields(DataSet: TDataSet);
begin
  CDSArticulosProveedorCANTIDAD.Value:=0;
  QStockFisico.Close;
  QStockFisico.ParamByName('codigo').Value:=CDSArticulosProveedorCODIGO_STK.Value;
  QStockFisico.Open;
  if Trunc(QStockFisico.Fields[0].AsFloat*100)<>0 then
    CDSArticulosProveedorCANTIDAD.Value:=QStockFisico.Fields[0].AsFloat;

end;

procedure TDatosProveedores.CDSArticulosProveedorCODIGO_STKSetText(
  Sender: TField; const Text: string);
var s:string;
Cargado:String;
CDSClone:TClientDataSet;
begin
  if (Text<>'') and (Text<>#13) then
    begin
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSArticulosProveedor,True);
      if CDSArticulosProveedor.State=dsBrowse then
        CDSArticulosProveedor.Edit;
      S:=Text;
//      if DMMain_FD.JustificaCodigo='D' Then
//        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
//      else
//        if DMMain_FD.JustificaCodigo='I' Then
//          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
      Sender.AsString:=DMMain_FD.CodificaStock(S);
      if (CDSClone.Locate('codigo_stk',s,[])) then
        begin
          ShowMessage('Este Codigo ya esta ingresado,....');
          CDSArticulosProveedor.Cancel;
         // Sender.Clear;
        end
      else
        begin
          QStock.Close;
          QStock.ParamByName('codigo').Value:=Sender.AsString;
          QStock.Open;
          if QStockCODIGO_STK.AsString<>'' then
            begin
              CDSArticulosProveedorCODIGO_STK.Value       := QStockCODIGO_STK.Value;
              CDSArticulosProveedorDETALLE_STK.Value      := QStockDETALLE_STK.Value;
              CDSArticulosProveedorRUBRO_STK.Value        := QStockRUBRO_STK.Value;
              CDSArticulosProveedorSUBRUBRO_STK.Value     := QStockSUBRUBRO_STK.Value;
              CDSArticulosProveedorMARCA_STK.Value        := QStockMARCA_STK.Value;
              CDSArticulosProveedorDESCRIPCION_MARCA.Value:= QStockDESCRIPCION_MARCA.Value;
              CDSArticulosProveedorDETALLE_RUBRO.Value    := QStockDETALLE_RUBRO.Value;
              CDSArticulosProveedorDETALLE_SUBRUBRO.Value := QStockDETALLE_SUBRUBRO.Value;
              CDSArticulosProveedorCOSTO_NETO.Value       := QStockFIJACION_PRECIO_GRAVADO.Value;
            end
          else
            begin
              CDSArticulosProveedorCODIGO_STK.Clear;
              CDSArticulosProveedorDETALLE_STK.Clear;
              CDSArticulosProveedorRUBRO_STK.Clear;
              CDSArticulosProveedorSUBRUBRO_STK.Clear;
              CDSArticulosProveedorMARCA_STK.Clear;
              CDSArticulosProveedorDESCRIPCION_MARCA.Clear;
              CDSArticulosProveedorDETALLE_RUBRO.Clear;
              CDSArticulosProveedorDETALLE_SUBRUBRO.Clear;
              CDSArticulosProveedorCOSTO_NETO.Value       := 0;
            end;
          QStock.Close;
         end;
      FreeAndNil(CDSClone);
    end;
end;

procedure TDatosProveedores.CDSArticulosProveedorNewRecord(DataSet: TDataSet);
begin
  CDSArticulosProveedorID_PROVEESTOCK.Value   := ibgIdProveeStock.IncrementFD(1);
  CDSArticulosProveedorCODIGO_PROVEEDOR.Value := CDSProveedorCODIGO.Value;
  CDSArticulosProveedorPORDEFECTO.Value       := 'N';
  CDSArticulosProveedorRANKING.Value          := 0;

end;

procedure TDatosProveedores.CDSProveedorBeforePost(DataSet: TDataSet);
begin
 IF CDSProveedorRAZON_SOCIAL.Value = '' THEN
    CDSProveedorRAZON_SOCIAL.Value := CDSProveedorNOMBRE.value;
end;

procedure TDatosProveedores.CDSProveedorCODIGOSetText(Sender: TField;
  const Text: string);
var
  S: STRING;
begin
  s := Text;
  IF s = '' THEN
    s := '0';
  s := Copy('000000', 1, 6 - Length(s)) + S;
  Sender.AsString := S;
  FormProveedor_2.dbeCodigo.Text:=s;//lo agrego por efecto visual
  DatosProveedores.QBuscaCodigo.Close;
  DatosProveedores.QBuscaCodigo.ParamByName('codigo').Value:=Sender.AsString;
  DatosProveedores.QBuscaCodigo.Open;
  if Not(DatosProveedores.QBuscaCodigo.IsEmpty) Then
    begin
      ShowMessage('Codigo no válido.....');
      Sender.AsString:=Old_Codigo;
      FormProveedor_2.dbeCodigo.SetFocus;
      FormProveedor_2.dbeCodigo.SelectAll;
    end;
  DatosProveedores.QBuscaCodigo.Close;
end;

procedure TDatosProveedores.CDSProveedorCOD_POSTALSetText(Sender: TField;
  const Text: string);
begin
 Sender.AsString := Text;
  IF (NOT (AsignaLocalidad(Sender.AsInteger))) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
    END;
end;

procedure TDatosProveedores.CDSProveedorID_COD_POSTALSetText(Sender: TField;
  const Text: string);
begin
if (text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignaLocalidad(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Codigo no valido');
          Sender.AsString := '';
        END;
     end;
end;

procedure TDatosProveedores.CDSProveedorID_PERC_IBBSetText(Sender: TField;
  const Text: string);
begin
if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF (NOT (AsignaPercepIB(Sender.AsInteger,0))) THEN
        BEGIN
          ShowMessage('Codigo no válido');
          Sender.AsString := '';
        END;
    end;
end;

procedure TDatosProveedores.CDSProveedorID_PERC_IBB_2SetText(Sender: TField;
  const Text: string);
begin
if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF (NOT (AsignaPercepIB(Sender.AsInteger,1))) THEN
        BEGIN
          ShowMessage('Codigo no válido');
          Sender.AsString := '';
        END;
    end;

end;

procedure TDatosProveedores.CDSProveedorID_PERC_IVASetText(Sender: TField;
  const Text: string);
begin
 if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignaPercepIva(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Codigo no valido');
          Sender.AsString := '';
        END;
     end;
end;

procedure TDatosProveedores.CDSProveedorNewRecord(DataSet: TDataSet);
var IntAux:Integer;
BEGIN
  FormProveedor_2.QUltimoCodigo2.Close;
  FormProveedor_2.QUltimoCodigo2.Open;
  if FormProveedor_2.QUltimoCodigo2.Fields[0].AsString='' Then
    CDSProveedorCODIGOSetText(CDSProveedorCODIGO,'1')
  else
    try
      IntAux:=StrToInt(FormProveedor_2.QUltimoCodigo2.Fields[0].AsString);
      CDSProveedorCODIGOSetText(CDSProveedorCODIGO,IntToStr(IntAux+1));
     except
       CDSProveedorCODIGO.Value:=FormProveedor_2.QUltimoCodigo2.Fields[0].AsString;
       FormProveedor_2.dbeCodigo.SetFocus;
     end;
  FormProveedor_2.QUltimoCodigo2.Close;

  Old_Codigo:=CDSProveedorCODIGO.Value;
  CDSProveedorCONV_MULTI.Value                 := 'N';
  CDSProveedorRETIENE_IVA.Value                := 'N';
  CDSProveedorACTIVO.Value                     := 'S';
  CDSProveedorRETIENE_IB.Value                 := 'N';
  CDSProveedorRETIENE_GANANCIAS.Value          := 'N';
  CDSProveedorPRECIOS_CON_IVA.Value            := 'S';
  CDSProveedorIVA_SERVICIOS.Value              := 'N';
  CDSProveedorCON_OCOMPRA.Value                := 'N';
  CDSProveedorLOCALIDAD.AsString               := '';
  CDSProveedorTIPO_PROVEEDOR.Value             := 'M';
  CDSProveedorAUTORIZADO_NOMBRE.AsString       := '';
  CDSProveedorAUTORIZADO_TIPODOC.AsString      := '';
  CDSProveedorAUTORIZADO_NRODOC.AsString       := '';
  CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Clear;
  CDSProveedorEXENTO_GANACIA.Value             := 'N';
  CDSProveedorFECHAALTA.AsDateTime             := date;
  CDSProveedorMONEDA_PRECIOS.Value             := 1;
  CDSProveedorEXENTO_RETENCION_IB.Value        := 'N';
  CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Value := -1;
  CDSProveedorID_TASA_RETENCION_IB.Value       := -1;
  CDSProveedorRUBRO_GASTO.Value                := '***';
  CDSProveedorSUB_RUB_GASTOS.Value             := '******';
  CDSProveedorRETENCION_IVA.value              := 'N';
  CDSProveedorCODIGO_RET_IVA.Value             := -1;
  CDSProveedorPORCENTAJE_RET_IVA.value         := 0;
  CDSProveedorCBU.value                        := '';

  QTraePrimerCondicionPago.Close;
  QTraePrimerCondicionPago.Open;
  CDSCondCompra.Insert;
  CDSCondCompraCodigoPagoSetText(CDSCondCompraCodigoPago,QTraePrimerCondicionPago.Fields[0].AsString);
  CDSCondCompra.Post;
  QTraePrimerCondicionPago.Close;

  QTasaRetGanPorDefecto.Close;
  QTasaRetGanPorDefecto.Open;
  if QTasaRetGanPorDefectoCODIGO.AsString<>'' Then
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Value:=QTasaRetGanPorDefectoCODIGO.Value
  else
    CDSProveedorCODIGO_REGIMEN_RET_GANACIA.Value:=0;
  QTasaRetGanPorDefecto.Close;
end;

procedure TDatosProveedores.CDSProveedorNOMBRESetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSProveedorRAZON_SOCIAL.AsString:=Text;
end;

procedure TDatosProveedores.CDSProveedorN_DE_CUITSetText(Sender: TField;
  const Text: string);
var
    suma:Integer;
    NroValidacion:Integer;
BEGIN
   //aca biene con formato 00-00000000-0
  if (text[1]<>'') and (Text[1]<>' ') and (Text[2]<>' ') and (Text[4]<>' ') and (Text[5]<>' ') and
      (Text[6]<>' ') and (Text[7]<>' ') and (Text[7]<>' ') and (Text[9]<>' ') and (text[10]<>' ') and
      (Text[11]<>' ') and (Text[13]<>' ') Then
    begin
      suma:=StrToInt(Copy(text,1,1))*5+StrToInt(Copy(text,2,1))*4+
            StrToInt(Copy(text,4,1))*3+StrToInt(Copy(text,5,1))*2+
            StrToInt(Copy(text,6,1))*7+StrToInt(Copy(text,7,1))*6+
            StrToInt(Copy(text,8,1))*5+StrToInt(Copy(text,9,1))*4+
            StrToInt(Copy(text,10,1))*3+StrToInt(Copy(text,11,1))*2;
      if ((suma mod 11)<>0) then
        begin
          if ((11-(suma mod 11))<>StrToInt(Copy(text,13,1))) and ((suma mod 11)<10) Then
            begin
              NroValidacion:=11-(suma mod 11);
              if MessageDlg('Numero de cuit no válido....'+#13+
                            'el numero de validación que le corresponde es '+IntToStr( NroValidacion)+#13+
                            'lo corrije?',mtInformation,[mbYes,mbNo],0)=mrYes Then
                Sender.AsString:= Copy(Text,1,12)+IntToStr(NroValidacion)
              else
                Sender.ASString:='';
              FormProveedor_2.dbeNCuit.SetFocus;
            end
          else
            Sender.AsString:=Text;
        end
      else
        if ((suma mod 11)=0) then
          begin
            if StrToInt(Copy(text,13,1))<>0 Then
              begin
                ShowMessage('Numero de cuit no valido....');
                Sender.ASString:='';
                FormProveedor_2.dbeNCuit.SetFocus;
              end
            else
              Sender.AsString:=Text;
          end;
      if (Copy(Text,1,2)<>'00') and
         (Copy(Text,1,2)<>'20') and
         (Copy(Text,1,2)<>'23') and
         (Copy(Text,1,2)<>'27') and
         (Copy(Text,1,2)<>'24') and
         (Copy(Text,1,2)<>'30') and
         (Copy(Text,1,2)<>'33') and
         (Copy(Text,1,2)<>'50') and
         (Copy(Text,1,2)<>'51') and
         (Copy(Text,1,2)<>'55') and
         (Copy(Text,1,2)<>'34') Then
       begin
         Sender.AsString:='';
         ShowMessage('El prefijo no se corresponde con las opciones 20/23/27/30/33/34....');
       end;
    end;
  if Sender.AsString<>'' Then
    begin
      QBuscarCuit.Close;
      QBuscarCuit.ParamByName('Cuit').Value := Sender.AsString;
      QBuscarCuit.Open;
      IF NOT (QBuscarCuit.IsEmpty) THEN
        BEGIN
          IF MessageDlg('Este Número de cuit ya fué ingresado, Ignora y continua o cancela.....',
            mtInformation,[mbIgnore,mbCancel], 0) = mrCancel THEN
              FormProveedor_2.Cancelar.Execute
          //ELSE
          //  FormProveedor_2.dbeNCuit.SetFocus;
        END;
   end;
end;

FUNCTION TDatosProveedores.AsignaPercepIB(Dato: Integer;Cual:Byte): Boolean;
BEGIN
  CDSTasaPercepIIBB.Close;
  CDSTasaPercepIIBB.Params.ParamByName('Id').Value := Dato;
    // wwLookupLocalidades.LookupTable.fieldByName('id_Postal').Value;
  CDSTasaPercepIIBB.Open;
  IF NOT (CDSTasaPercepIIBB.Eof) THEN
    BEGIN
      result := True;
      if (cual=0) then
        begin
          CDSProveedorDESPERIB.Value   := CDSTasaPercepIIBBDESCRIPCION.Value;
          CDSProveedorID_PERC_IBB.Value:= Dato;
        end
      else
        if (cual=1) then
          begin
            CDSProveedorDESPERIB2.Value :=CDSTasaPercepIIBBDESCRIPCION.Value;
            CDSProveedorID_PERC_IBB_2.Value:= Dato;
          end;
    END
  ELSE
    begin
      result := False;
      if (cual=0) then
        begin
          CDSProveedorDESPERIB.Clear;
          CDSProveedorID_PERC_IBB.Clear;
        end
      else
        if (cual=1) then
          begin
            CDSProveedorDESPERIB2.Clear;
            CDSProveedorID_PERC_IBB_2.Clear;
          end;
     end;

  CDSTasaPercepIIBB.Close;
END;

FUNCTION TDatosProveedores.AsignaFPago(Dato: Integer): Boolean;
BEGIN
  CDSFPago.Close;
  CDSFPago.Params.ParamByName('Codigo').Value := Dato;
  CDSFPago.Open;
  IF NOT (CDSFPago.Eof) THEN
    BEGIN
      Result := True;
      DatosProveedores.CDSCondCompraDescuento.AsFloat := CDSFPagoDESCUENTO.AsFloat;
      DatosProveedores.CDSCondCompraDetalle.AsString  := CDSFPagoDETALLE.AsString;
    END
  ELSE
    begin
      Result := False;
      DatosProveedores.CDSCondCompraDescuento.Clear;
      DatosProveedores.CDSCondCompraDetalle.Clear;
    end;
  CDSFPago.Close;
END;

PROCEDURE TDatosProveedores.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosProveedores := NIL;
END;

procedure TDatosProveedores.QDetalleComprasCalcFields(DataSet: TDataSet);
begin
 // QDetalleComprasCAL_TOTAL.Value    :=QDetalleComprasTOTAL.Value;
//  QDetalleComprasCAL_PROMOEDIO.Value:=QDetalleComprasCOSTO_PROMEDIO.Value;
//  QDetalleComprasCAL_CANTIDAD.Value :=QDetalleComprasCANT.Value;
//  QDetalleComprasCAL_INCIDENCIA.Value:= 100*(QDetalleComprasTOTAL.Value/QComprasTOTAL.Value);
//  if QDetalleComprasTIPOCPBTE.Value='NC' then
//    begin
//      QDetalleComprasCAL_TOTAL.Value    :=QDetalleComprasTOTAL.Value*-1;
//      QDetalleComprasCAL_PROMOEDIO.Value:=QDetalleComprasCOSTO_PROMEDIO.Value*-1;
//      QDetalleComprasCAL_CANTIDAD.Value :=QDetalleComprasCANT.Value*-1;
//      QDetalleComprasCAL_INCIDENCIA.Value:= -100*(QDetalleComprasTOTAL.Value/QComprasTOTAL.Value);
//    end;

end;

procedure TDatosProveedores.QDetallesTotalesCalcFields(DataSet: TDataSet);
begin
  {
  QDetallesTotalesCAL_TOTAL.Value    :=QDetallesTotalesTOTAL.Value;
  QDetallesTotalesCAL_CANT.Value     :=QDetallesTotalesCANT.Value;
  QDetallesTotalesCAL_PROMEDIO.Value :=QDetallesTotalesCAL_TOTAL.Value/QDetallesTotalesCANT.Value;
  if TotalCompra>0 then
    QDetallesTotalesCAL_INCIDENCIA.Value:= 100*(QDetallesTotalesTOTAL.Value/TotalCompra);
  if QDetallesTotalesTIPOCPBTE.Value='NC' then
    begin
      QDetallesTotalesCAL_TOTAL.Value    :=-1*QDetallesTotalesTOTAL.Value;
      QDetallesTotalesCAL_CANT.Value     :=-1*QDetallesTotalesCANT.Value;
      if TotalCompra>0 then
        QDetallesTotalesCAL_INCIDENCIA.Value:= -100*(QDetallesTotalesTOTAL.Value/TotalCompra);
    end;
   }
end;

PROCEDURE TDatosProveedores.wwCDSProvee_oldCodigoSetText(Sender: TField;
  CONST Text: STRING);
VAR
  S: STRING;
BEGIN
  s := Text;
  IF s = '' THEN
    s := '0';
  s := Copy('000000', 1, 6 - Length(s)) + S;
  Sender.AsString := S;
  FormProveedor_2.dbeCodigo.Text:=s;//lo agrego por efecto visual
  DatosProveedores.QBuscaCodigo.Close;
  DatosProveedores.QBuscaCodigo.ParamByName('codigo').Value:=Sender.AsString;
  DatosProveedores.QBuscaCodigo.Open;
  if Not(DatosProveedores.QBuscaCodigo.IsEmpty) Then
    begin
      ShowMessage('Codigo no válido.....');
      Sender.AsString:=Old_Codigo;
      FormProveedor_2.dbeCodigo.SetFocus;
      FormProveedor_2.dbeCodigo.SelectAll;
    end;
  DatosProveedores.QBuscaCodigo.Close;
END;

PROCEDURE TDatosProveedores.CDSCondCompraNewRecord(DataSet: TDataSet);
BEGIN
  CDSCondCompraCodigoProvee.AsString := CDSProveedorCODIGO.AsString;
  FormProveedor_2.dbgCondCompra.SelectedIndex := 0;
END;


PROCEDURE TDatosProveedores.CDSCondCompraCODIGOPAGOSetText(
  Sender: TField; CONST Text: STRING);
BEGIN
  IF CDSCondCompra.State = dsBrowse THEN
    CDSCondCompra.Edit;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Text;
      IF Not(AsignaFPago(Sender.AsInteger)) THEN
        begin
          ShowMessage('Codigo no válido');
          Sender.Clear;
        END;
     end;
END;

PROCEDURE TDatosProveedores.CDSCondCompraPostError(DataSet: TDataSet;
  E: EDatabaseError; VAR Action: TDataAction);
BEGIN
  Showmessage('Error de carga/Clave duplicada');
  action := daAbort;
  CDSCondCompra.Cancel;
END;

procedure TDatosProveedores.CDSDetalleComprasCalcFields(DataSet: TDataSet);
begin
  CDSDetalleComprasCAL_TOTAL.Value    :=CDSDetalleComprasTOTAL.AsFloat;
  if CDSDetalleComprasCANT.AsFloat>0 then
    CDSDetalleComprasCAL_PROMEDIO.Value := CDSDetalleComprasTOTAL.AsFloat/CDSDetalleComprasCANT.AsFloat
  else
    CDSDetalleComprasCAL_PROMEDIO.Value := CDSDetalleComprasTOTAL.AsFloat/1;

  CDSDetalleComprasCAL_CANTIDAD.Value :=CDSDetalleComprasCANT.AsFloat;
  if CDSComprasTOTAL.AsFloat>0 then
    CDSDetalleComprasCAL_INCIDENCIA.Value:= 100*(CDSDetalleComprasTOTAL.AsFloat/CDSComprasTOTAL.AsFloat)
  else
    CDSDetalleComprasCAL_INCIDENCIA.Value:=0;
  if CDSDetalleComprasTIPOCPBTE.Value='NC' then
    begin
      CDSDetalleComprasCAL_TOTAL.AsFloat    :=CDSDetalleComprasTOTAL.AsFloat*-1;
      CDSDetalleComprasCAL_PROMEDIO.AsFloat :=CDSDetalleComprasCAL_PROMEDIO.AsFloat*-1;
      CDSDetalleComprasCAL_CANTIDAD.AsFloat :=CDSDetalleComprasCANT.AsFloat*-1;
      if CDSComprasTOTAL.AsFloat>0 Then
        CDSDetalleComprasCAL_INCIDENCIA.Value:= -100*(CDSDetalleComprasTOTAL.AsFloat/CDSComprasTOTAL.AsFloat)
      else
        CDSDetalleComprasCAL_INCIDENCIA.Value:=0;
    end;

end;

procedure TDatosProveedores.CDSDetallesTotalesCalcFields(DataSet: TDataSet);
begin
  CDSDetallesTotalesCAL_TOTAL.AsFloat    :=CDSDetallesTotalesTOTAL.AsFloat;
  CDSDetallesTotalesCAL_CANT.AsFloat     :=CDSDetallesTotalesCANT.AsFloat;
  if CDSDetallesTotalesCANT.AsFloat>0 then
    CDSDetallesTotalesCAL_PROMEDIO.AsFloat :=CDSDetallesTotalesCAL_TOTAL.AsFloat/CDSDetallesTotalesCANT.AsFloat;
  if TotalCompra>0 then
    CDSDetallesTotalesCAL_INCIDENCIA.AsFloat:= 100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra);
  if CDSDetallesTotalesTIPOCPBTE.Value='NC' then
    begin
      CDSDetallesTotalesCAL_TOTAL.AsFloat    :=-1*CDSDetallesTotalesTOTAL.AsFloat;
      CDSDetallesTotalesCAL_CANT.AsFloat     :=-1*CDSDetallesTotalesCANT.AsFloat;
      if TotalCompra>0 then
        CDSDetallesTotalesCAL_INCIDENCIA.AsFloat:= -100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra);
    end;
end;

FUNCTION TDatosProveedores.AsignarMarca(dato: STRING): Boolean;
var Q:TFDQuery;
BEGIN
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select m.descripcion_marca  from marcas m where m.marca_stk=:marca';
  q.ParamByName('marca').AsString:=dato;
  Q.Open;
  IF NOT (Q.IsEmpty) THEN
    BEGIN
      result := True;
      CDSMarcaProveedorDESCRIPCION_MARCA.Value := Q.Fields[0].AsString;
    END
  ELSE
    Result := False;
  Q.Close;
  FreeAndNil(q);
END;


procedure TDatosProveedores.CDSMarcaProveedorAfterInsert(DataSet: TDataSet);
begin
  FormProveedor_2.dbgMarcasProveedor.SetFocus;
  FormProveedor_2.dbgMarcasProveedor.SelectedIndex:=0;
end;

procedure TDatosProveedores.CDSMarcaProveedorMARKASetText(Sender: TField;
  const Text: string);
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(nil);
  CDSClone.CloneCursor(CDSMarcaProveedor,true,True);

  if (Text<>'') and (Text<>#13) then
    begin

      if CDSMarcaProveedor.State=dsBrowse then
        CDSMarcaProveedor.Edit;
      Sender.AsString:=AnsiRightStr('0000'+Text,4);
      if Not(CDSClone.Locate('MARKA',Sender.AsString,[])) then
        begin
          if Not(AsignarMarca(Sender.AsString)) Then
            begin
              Sender.AsString:='';
              CDSMarcaProveedorDESCRIPCION_MARCA.Value:='';
            end;
        end
      else
        begin
          Sender.AsString:='';
          CDSMarcaProveedor.Cancel;
        end;

    end;
   FreeAndNil(CDSClone);
end;

procedure TDatosProveedores.CDSMarcaProveedorNewRecord(DataSet: TDataSet);
begin
  CDSMarcaProveedorCODIGO.Value  :=  CDSProveedorCODIGO.AsString;
end;

procedure TDatosProveedores.CDSComprasAfterScroll(DataSet: TDataSet);
begin
  if DatosProveedores.CDSComprasANIO.Value<>0 then
  begin
    DatosProveedores.CDSDetalleCompras.DisableControls;

    DatosProveedores.CDSDetalleCompras.Close;
    DatosProveedores.CDSDetalleCompras.Params.ParamByName('codigo').Value:= DatosProveedores.CDSProveedorCODIGO.Value;
    DatosProveedores.CDSDetalleCompras.Params.ParamByName('Desde').Value := EncodeDate(DatosProveedores.CDSComprasANIO.Value,
                                                                            DatosProveedores.CDSComprasMES.Value,
                                                                            1);

    DatosProveedores.CDSDetalleCompras.Params.ParamByName('Hasta').Value := Encodedate(DatosProveedores.CDSComprasANIO.Value,
                                                                            DatosProveedores.CDSComprasMES.Value,
                                                                            DaysInMonth(DatosProveedores.CDSComprasANIO.Value,DatosProveedores.CDSComprasMES.Value));
    DatosProveedores.CDSDetalleCompras.Open;
    DatosProveedores.CDSDetalleCompras.EnableControls;
  end;

end;

procedure TDatosProveedores.CDSComprasCalcFields(DataSet: TDataSet);
begin
  if TotalCompra>0 then
    CDSComprasCAL_INCIDENCIA.AsFloat:=100*(CDSComprasTOTAL.AsFloat/TotalCompra);

end;

PROCEDURE TDatosProveedores.CDSCondCompraBeforePost(DataSet: TDataSet);
BEGIN
  IF (VarIsNull(CDSCondCompraCodigoPago.Value)) OR
    (CDSCondCompraCodigoPago.Value = 0) THEN
    CDSCondCompra.Cancel;
END;


END.
