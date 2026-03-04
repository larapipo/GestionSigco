unit UDMain_FD;

interface

uses
  System.SysUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,GridClickPatch,Vcl.Clipbrd,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,Vcl.Imaging.jpeg,Vcl.Imaging.pngimage,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,Vcl.Dialogs,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.FMTBcd, Data.SqlExpr, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.IBBase, FireDAC.Phys.IB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Phys.FB, IPPeerClient,
  Datasnap.DSClientRest,Data.DBXJSON,System.StrUtils, System.Math, Vcl.StdCtrls, RemoteDB.Client.Dataset, RemoteDB.Client.Database,
  FireDAC.Phys.FBDef, FireDAC.Phys.IBDef,System.JSON, System.Variants, IniFiles, Vcl.Forms, Vcl.Controls,
  System.Classes, Windows, System.Generics.Collections, Graphics, ComObj, DateUtils,
  FireDAC.Moni.FlatFile, FireDAC.Moni.Base, FireDAC.Moni.RemoteClient,
  Vcl.Menus,System.NetEncoding;

  type
    TJurisdiccion = record
      LOCALIDAD, ID   : Integer;
      DETALLE         : String;
  end;

  type
    TLocalidad = record
      ID            : Integer;
      Codigo_Postal : String[8];
      Detalle       : String[25];
      Telediscado   : String[6];
      Id_Provincia  : Integer;
  end;

  type
    TDirecciones =class
      Cliente   : string;
      Direccion : string;
      Lat       : Double;
      Lng       : Double;
   end;

  type
    TStock =class
        Codigo          : String;
        CodiAlternativo : string;
        Detalle         : String;
        Rubro           : String;
        SubRubro        : String;
        Ok              : Boolean;
  end;

  type
    TQRData=class
      Cuit    :string;
      TipoComp:String;
      Prefijo :string;
      Numero  :string;
      Importe :Extended;
      Fecha   :TDateTime;
    end;

  TDMMain_FD = class(TDataModule)
    fdcGestion: TFDConnection;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    QExistencia: TFDQuery;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QMarcaOBSERVACION_MARCA: TStringField;
    QPresuCab: TFDQuery;
    QPresuSubDet: TFDQuery;
    QPresuDet: TFDQuery;
    QPresuDetID: TIntegerField;
    QPresuDetID_CABPRES: TIntegerField;
    QPresuDetTIPOCPBTE: TStringField;
    QPresuDetCLASECPBTE: TStringField;
    QPresuDetNROCPBTE: TStringField;
    QPresuDetRENGLON: TFloatField;
    QPresuDetCODIGOARTICULO: TStringField;
    QPresuDetDETALLE: TStringField;
    QPresuDetDETALLE_ADICIONAL: TStringField;
    QPresuDetUNIDAD: TStringField;
    QPresuDetDESGLOZAIVA: TStringField;
    QPresuDetDESCUENTO: TFloatField;
    QPresuDetCANTIDAD: TFloatField;
    QPresuDetCOSTO_EXENTO: TFloatField;
    QPresuDetCOSTO_GRAVADO: TFloatField;
    QPresuDetCOSTO_TOTAL: TFloatField;
    QPresuDetUNITARIO_GRAVADO: TFloatField;
    QPresuDetIVA_UNITARIO: TFloatField;
    QPresuDetUNITARIO_EXENTO: TFloatField;
    QPresuDetUNITARIO_TOTAL: TFloatField;
    QPresuDetTOTAL_EXENTO: TFloatField;
    QPresuDetTOTAL_GRAVADO: TFloatField;
    QPresuDetIVA_TOTAL: TFloatField;
    QPresuDetTOTAL: TFloatField;
    QPresuDetIVA_TASA: TFloatField;
    QPresuDetTIPOIVA_TASA: TIntegerField;
    QPresuDetIVA_SOBRETASA: TFloatField;
    QPresuDetTIPOIVA_SOBRETASA: TIntegerField;
    QPresuDetSUCURSAL: TIntegerField;
    QPresuDetDEPOSITO: TIntegerField;
    QPresuDetCALCULA_SOBRETASA: TStringField;
    QPresuDetMODO_GRAVAMEN: TStringField;
    QPresuDetMARGEN: TFloatField;
    QPresuDetAFECTA_STOCK: TStringField;
    QPresuDetID_MONEDA: TIntegerField;
    QPresuDetCOTIZACION: TFloatField;
    QPresuDetACEPTADO: TStringField;
    QPresuDetNOTAS: TStringField;
    QPresuDetCPBTESALIDA_ID: TIntegerField;
    QPresuDetCPBTESALIDA_TIPO: TStringField;
    QPresuDetCPBTESALIDA_CLASE: TStringField;
    QPresuDetCPBTESALIDA_NROCPBTE: TStringField;
    QPresuDetTIPOIB_TASA: TIntegerField;
    QPresuDetIB_TASA: TFloatField;
    QPresuDetGRAVADO_IB: TStringField;
    QPresuDetITEM_NRO: TIntegerField;
    QPresuDetMUESTRASIGNO: TStringField;
    QPresuDetMUESTRACODALTERNATIVO: TStringField;
    QPresuCabID_PR: TIntegerField;
    QPresuCabTIPOCPBTE: TStringField;
    QPresuCabCLASECPBTE: TStringField;
    QPresuCabNROCPBTE: TStringField;
    QPresuCabCODIGO: TStringField;
    QPresuCabLETRAFAC: TStringField;
    QPresuCabSUCFAC: TStringField;
    QPresuCabNUMEROFAC: TStringField;
    QPresuCabSUB_NRO: TStringField;
    QPresuCabNOMBRE: TStringField;
    QPresuCabRAZONSOCIAL: TStringField;
    QPresuCabDIRECCION: TStringField;
    QPresuCabCPOSTAL: TStringField;
    QPresuCabLOCALIDAD: TStringField;
    QPresuCabTIPOIVA: TIntegerField;
    QPresuCabCUIT: TStringField;
    QPresuCabCONDICIONVTA: TIntegerField;
    QPresuCabANULADO: TStringField;
    QPresuCabLISTAPRECIO: TIntegerField;
    QPresuCabNRORTO: TStringField;
    QPresuCabN_OPERACION2: TFloatField;
    QPresuCabNETOGRAV1: TFloatField;
    QPresuCabNETOGRAV2: TFloatField;
    QPresuCabDSTO: TFloatField;
    QPresuCabDSTOIMPORTE: TFloatField;
    QPresuCabNETOEXEN1: TFloatField;
    QPresuCabNETOEXEN2: TFloatField;
    QPresuCabTOTAL: TFloatField;
    QPresuCabIMPRESO: TStringField;
    QPresuCabOBSERVACION1: TStringField;
    QPresuCabOBSERVACION2: TStringField;
    QPresuCabCPTE_MANUAL: TStringField;
    QPresuCabSUCURSAL: TIntegerField;
    QPresuCabZONA: TIntegerField;
    QPresuCabID_FACTURA: TIntegerField;
    QPresuCabFACTURANRO: TStringField;
    QPresuCabLDR: TIntegerField;
    QPresuCabDEPOSITO: TIntegerField;
    QPresuCabCALCULA_SOBRETASA: TStringField;
    QPresuCabDESGLOZAIVA: TStringField;
    QPresuCabDEBE: TFloatField;
    QPresuCabNROENTREGA: TIntegerField;
    QPresuCabCOMISIONVENDEDOR: TFloatField;
    QPresuCabVENDEDOR: TStringField;
    QPresuCabUSUARIO: TStringField;
    QPresuCabNOTAS: TMemoField;
    QPresuCabDIAS_VIGENCIA_PRESUPESTO: TIntegerField;
    QPresuCabMONEDA_CPBTE: TIntegerField;
    QPresuCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QPresuCabPERCEPCION_IB_TASA: TFloatField;
    QPresuCabPERCECEPION_IB_IMPORTE: TFloatField;
    QPresuCabPERCIB_IB: TStringField;
    QPresuCabPERCECPION_IB_BASEIMPONIBLE: TFloatField;
    QPresuCabID_PRESU_NEXT: TIntegerField;
    QPresuCabID_PRESU_PREV: TIntegerField;
    QPresuCabNRO_PRE_NEXT: TStringField;
    QPresuCabNRO_PRE_PREV: TStringField;
    QPresuCabREFERENCIA: TStringField;
    QPresuCabMUESTRACONDVENTA: TStringField;
    QPresuCabMUESTRADEPOSITO: TStringField;
    QPresuCabMUESTRASUCURSAL: TStringField;
    QPresuCabMUESTRALDR: TStringField;
    QPresuCabMUESTRAIVA: TStringField;
    QPresuCabMUESTRACOMPROBANTE: TStringField;
    QPresuCabID_TIPOCOMPROBANTE: TIntegerField;
    QPresuCabMUESTRAVENDEDOR: TStringField;
    QPresuCabMUESTRANOTAVENTA_ID: TIntegerField;
    QPresuCabMUESTRANOTAVENTA_NRO: TStringField;
    QPresuCabMUESTRAMONEDACPBTE: TStringField;
    QPresuCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QPresuCabMUESTRAFACTURA: TStringField;
    QPresuCabMUESTRAREMITO: TStringField;
    QImpuestoPresu: TFDQuery;
    QImpuestoPresuID_IMPUESTO: TIntegerField;
    QImpuestoPresuID_PRESCAB: TIntegerField;
    QImpuestoPresuCODIGO_GRAVAMEN: TIntegerField;
    QImpuestoPresuDETALLE: TStringField;
    QImpuestoPresuNETO: TFloatField;
    QImpuestoPresuTASA: TFloatField;
    QImpuestoPresuIMPORTE: TFloatField;
    QPresuDetMUESTRADEPRODUCC: TStringField;
    QPresuCabPLAZO_ENTREGA: TIntegerField;
    QPresuCabCUMPLIO_TECNICA: TStringField;
    QPresuCabCUMPLIO_FINANCIERA: TStringField;
    QPresuSubDetID_CAB: TIntegerField;
    QPresuSubDetITEM_NRO: TIntegerField;
    QPresuSubDetDETALLE: TStringField;
    QPresuSubDetCANTIDAD: TFloatField;
    QPresuSubDetTOTAL_GRAVADO: TFloatField;
    QPresuSubDetTOTAL_EXENTO: TFloatField;
    QPresuSubDetTOTAL_IVA: TFloatField;
    QPresuSubDetTOTAL: TFloatField;
    QPresuDetITEMCANTIDAD: TFloatField;
    QPresuDetITEMGRAVADO: TFloatField;
    QPresuDetITEMEXENTO: TFloatField;
    QPresuDetITEMIVA: TFloatField;
    QPresuDetITEMTOTAL: TFloatField;
    QPresuDetITMEDETALLE: TStringField;
    QPresuCabNRO_ORDEN_COMP: TStringField;
    QBuscaFcFD: TFDQuery;
    QBuscaFcFDID_FC: TIntegerField;
    QBuscaFcFDCODIGO: TStringField;
    QBuscaFcFDNOMBRE: TStringField;
    QBuscaFcFDFECHAVTA: TSQLTimeStampField;
    QBuscaFcFDTOTAL: TFloatField;
    QPresuDetCANTIDADTOTAL: TFloatField;
    QFPago_TC: TFDQuery;
    QFPago_TCFPAGO: TIntegerField;
    QPresuDetESPECIFICACION: TStringField;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_IVA: TFloatField;
    QStockCOSTO_FINAL: TFloatField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_IVA: TFloatField;
    QStockFIJACION_PRECIO_FINAL: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    QStockUNIDAD: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCODIGO_PROVEEDOR: TStringField;
    QStockCLASE_ARTICULO: TIntegerField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockCON_IMP_INT: TStringField;
    QStockIMPUESTO_INTERNOS: TFloatField;
    QStockGRAVADO_IB: TStringField;
    QStockTASA_IB: TIntegerField;
    QStockACTUALIZACOSTO: TStringField;
    QStockDEPRODUCCION: TStringField;
    QStockPRODUCCIONDIRECTA: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTENIDO_COMPRA: TFloatField;
    QStockCONTROL_SERIE: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockUNIDAD_ULTIMAUSADA: TStringField;
    QStockID_TABLAPRECIOS: TIntegerField;
    QStockID_TABLAPRECIOSDETALLE: TIntegerField;
    QStockCODIGO_PRECIO: TIntegerField;
    QStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    QStockCOSTO_EXENTO_SOMBRA: TFloatField;
    QStockMONEDA: TIntegerField;
    QStockCOSTO_GRAVADO_P: TFloatField;
    QStockCOSTO_EXENTO_P: TFloatField;
    QStockCOSTO_TOTAL_P: TFloatField;
    QStockPOSICION: TStringField;
    QStockPRESENTACION_UNIDAD: TStringField;
    QStockPRESENTACION_CANTIDAD: TFloatField;
    QStockEDITAPRECIO: TStringField;
    QStockEDITADETALLE: TStringField;
    QStockURL: TStringField;
    QStockCOMANDA: TStringField;
    QStockPORCENTAJE_SOBRECOSTO: TFloatField;
    QStockRUBRO_GASTO: TStringField;
    QStockRUBRO_CTA_GASTO: TStringField;
    QStockPUBLICAR_WEB: TStringField;
    QStockGTIA_MESES: TIntegerField;
    QStockGARANTIAOFICIAL: TStringField;
    QStockADICIONAL_SOBRECOSTO: TFloatField;
    QStockIMPRIMIR_LSTPRECIOS: TStringField;
    QStockCONTROL_TRAZABILIDAD: TStringField;
    QStockIVA_MODIFICADO: TStringField;
    QStockSIGLAS: TStringField;
    QStockPRESENTACION_2_CANT: TFloatField;
    QStockTASA_MANUFACTURA: TStringField;
    QStockPLU: TStringField;
    QStockACOPIABLE: TStringField;
    QStockCIKO_TIPO: TIntegerField;
    QStockTIPOADICIONAL: TStringField;
    QStockLARGO_1: TFloatField;
    QStockLARGO_2: TFloatField;
    QStockLARGO_3: TFloatField;
    QStockROTURA_1: TFloatField;
    QStockROTURA_2: TFloatField;
    QStockCIMA: TFloatField;
    QStockBASE: TFloatField;
    QStockVOLUMEN: TFloatField;
    QStockPESO_CALCULADO: TFloatField;
    QStockPESO: TFloatField;
    QStockDIAMETRO_OLLA: TFloatField;
    QStockALTO_ACC: TFloatField;
    QStockMODO_IVA: TStringField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QStockMUESTRAMARCA: TStringField;
    QStockMUESTRATASA: TStringField;
    QStockMUESTRATASAPORCENTAJE: TFloatField;
    QStockMUESTRASOBRETASA: TStringField;
    QStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    QStockMUESTRATASAIB: TFloatField;
    QStockMUESTRATABLAPRECIODETALLE: TStringField;
    QStockMUESTRATABLAPRECIO1: TFloatField;
    QStockMUESTRATABLAPRECIO2: TFloatField;
    QDepositoStk: TFDQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFloatField;
    QDepositoStkMINIMO: TFloatField;
    QDepositoStkMEDIO: TFloatField;
    QDepositoStkFISICO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositoStkSECTOR: TStringField;
    QDepositoStkUBICACION: TStringField;
    QDepositoStkUNIDADES: TFloatField;
    QDepositoStkAVISO_MINIMOSTOCK: TStringField;
    QDepositoStkMUESTRADEPOSITO: TStringField;
    QMailing: TFDQuery;
    QMailingID: TIntegerField;
    QMailingTEXTO: TMemoField;
    DSPMailing: TDataSetProvider;
    CDSMailing: TClientDataSet;
    CDSMailingID: TIntegerField;
    CDSMailingTEXTO: TMemoField;
    QPresuCabID_OBRA: TIntegerField;
    QPresuCabMUESTRAOPRODUCCION: TStringField;
    QPresuCabID_FACT: TIntegerField;
    QPresuCabID_RTO: TIntegerField;
    QPresuCabFECHAVTA: TSQLTimeStampField;
    QPresuCabFECHAVTO: TSQLTimeStampField;
    QPresuCabFECHAVTO_PRESUPUESTO: TSQLTimeStampField;
    QPresuCabFECHA_HORA: TSQLTimeStampField;
    QPresuCabFECHA_TECNICA: TSQLTimeStampField;
    QPresuCabFECHA_FINANCIERA: TSQLTimeStampField;
    QPresuCabFECHA_ENTREGA: TSQLTimeStampField;
    QPresuCabFECHA_OC: TSQLTimeStampField;
    QPresuCabFECHA_REVISION: TSQLTimeStampField;
    QPresuDetFECHAVTA: TSQLTimeStampField;
    QStockFUAP: TSQLTimeStampField;
    QStockFECHA_ALTA: TSQLTimeStampField;
    QStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    QStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    QStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QDepositoStkFUAPRECIOS: TSQLTimeStampField;
    QDepositoStkFULTAJUSTE: TSQLTimeStampField;
    QPresuCabID_OBRA_SECTOR: TIntegerField;
    QPresuCabID_OPRODUCC: TIntegerField;
    QHayVencimientos: TFDQuery;
    QHayFiltros: TFDQuery;
    QComprobantePorDefectoPorUsuario: TFDQuery;
    QComprobantePorDefectoPorUsuarioID_COMPROBANTE: TIntegerField;
    QHayChequesAlCobro: TFDQuery;
    QHayVtosTransporte: TFDQuery;
    QBuscarCAE: TFDQuery;
    QBuscarCAEID_FC: TIntegerField;
    RemoteDBDatabase: TRemoteDBDatabase;
    XQRubros: TXDataset;
    XQSubRubros: TXDataset;
    XQArticulos: TXDataset;
    XQListaPrecio: TXDataset;
    XQCodigoBarra: TXDataset;
    XQMarcas: TXDataset;
    QGravarNroRto_Factura: TFDQuery;
    QCompraCab: TFDQuery;
    QCompraDet: TFDQuery;
    QProveedores: TFDQuery;
    QCondCompra: TFDQuery;
    QImpuestosComp: TFDQuery;
    QPercepcionIva: TFDQuery;
    QPercepcionIB: TFDQuery;
    QCompSubDetalle: TFDQuery;
    QCondPago: TFDQuery;
    QTasaPercepcioIva: TFDQuery;
    QTasaPercepcioIB: TFDQuery;
    QCompLotes: TFDQuery;
    QCompraTributos: TFDQuery;
    QCompraGastos: TFDQuery;
    QComp_DET: TFDQuery;
    QPresuCabNROCPBTE2: TStringField;
    QStockPrecio: TFDQuery;
    QStockPrecioDESCUENTO: TFloatField;
    QStockPrecioCOSTO_TOTAL: TFloatField;
    QStockPrecioPRECIO: TFloatField;
    QStockPrecioCOSTO_EXENTO: TFloatField;
    QStockPrecioCOSTO_GRAVADO: TFloatField;
    QPresuCabTIPO_OBRA: TIntegerField;
    QPresuCabFECHA_ENTREGA_2: TSQLTimeStampField;
    QPresuCabTIENE_PLANO: TStringField;
    QPresuCabID_FACTURA_ANTICIPO: TIntegerField;
    QPresuCabMUESTRAFACTURAANTICIPO: TStringField;
    QPresuCabMUESTRAOBRA: TStringField;
    QPresuCabMUESTRACONTACO: TStringField;
    QPresuCabMUESTRACORREOCONTACTO: TStringField;
    QPersonal: TFDQuery;
    QPersonalCARGO: TIntegerField;
    QPersonalCATEGORIA: TIntegerField;
    QPersonalCTACONTABLE: TIntegerField;
    QPersonalDOMICILIO: TStringField;
    QPersonalESTADO_CIVIL: TStringField;
    QPersonalAUTORIZAOC: TStringField;
    QPersonalSECTORDECOMPRA: TStringField;
    QPersonalFECHA_INGRESO: TSQLTimeStampField;
    QPersonalFECHA_NACIMIENTO: TSQLTimeStampField;
    QPersonalCODIGO: TStringField;
    QPersonalLOCALIDAD: TIntegerField;
    QPersonalNOMBRE: TStringField;
    QPersonalTELEFONO_1: TStringField;
    QPersonalMODODEPENDENCIA: TStringField;
    QPersonalTELEFONO_2: TStringField;
    QPersonalMUESTRACARGO: TStringField;
    QPersonalMUESTRACATEGORIA: TStringField;
    QPersonalMUESTRALOCALIDAD: TStringField;
    QPersonalVALORHORA: TFloatField;
    QPersonalCORREO: TStringField;
    QPersonalVENDEDOR: TStringField;
    QPersonalCOBRADOR: TStringField;
    QPersonalMUESTRACPOSTAL: TStringField;
    QPersonalCOMISION: TFloatField;
    QPersonalPOLITICACOMISION: TIntegerField;
    QPersonalACTIVO: TStringField;
    QPersonalSUCURSAL: TIntegerField;
    QPersonalCUIL: TStringField;
    QCtaGasto: TFDQuery;
    DSPCtaGasto: TDataSetProvider;
    CDSCtaGasto: TClientDataSet;
    CDSCtaGastoCODIGO: TStringField;
    CDSCtaGastoCODIGO_RUBRO: TStringField;
    CDSCtaGastoDETALLE: TStringField;
    CDSCtaGastoEXCLUYE: TStringField;
    QRubroGasto: TFDQuery;
    DSPRubroGasto: TDataSetProvider;
    CDSRubroGasto: TClientDataSet;
    CDSRubroGastoCODIGO: TStringField;
    CDSRubroGastoDETALLE: TStringField;
    QOrdenTrabajoCab: TFDQuery;
    QOrdenTrabajoDet: TFDQuery;
    QImpuestoOrdenTrabajo: TFDQuery;
    QOrdenTrabajoMovimientos: TFDQuery;
    QCondVenta: TFDQuery;
    QClientes: TFDQuery;
    QProductos: TFDQuery;
    QProductosID: TIntegerField;
    QProductosID_CATEGORIA: TIntegerField;
    QProductosIDENTIFICADOR: TStringField;
    QProductosDESCRIPCION: TStringField;
    QProductosPROPIETARIO: TStringField;
    QProductosOBS: TStringField;
    QProductosMARCA: TStringField;
    QProductosMODELO: TStringField;
    QProductosMUESTRACATEGORIA: TStringField;
    QProductosMUESTRAPROPIETARIO: TStringField;
    QProductosMUESTRAMARCA: TStringField;
    QStockMUESTRACTAGASTO: TStringField;
    QStockMUESTRARUBROGASTO: TStringField;
    QRubroFD: TFDQuery;
    QRubroFDCODIGO_RUBRO: TStringField;
    QRubroFDDETALLE_RUBRO: TStringField;
    QRubroFDCONTROL_RUBRO: TStringField;
    QRubroFDFUERA_PROMO: TStringField;
    QRubroFDORDEN: TIntegerField;
    QSubRubroFD: TFDQuery;
    QSubRubroFDCODIGO_SUBRUBRO: TStringField;
    QSubRubroFDDETALLE_SUBRUBRO: TStringField;
    QSubRubroFDCODIGO_RUBRO: TStringField;
    CDSRubroFD: TClientDataSet;
    DSPRubroFD: TDataSetProvider;
    CDSSubRubroFD: TClientDataSet;
    DSPSubRubroFD: TDataSetProvider;
    CDSRubroFDCODIGO_RUBRO: TStringField;
    CDSRubroFDDETALLE_RUBRO: TStringField;
    CDSRubroFDCONTROL_RUBRO: TStringField;
    CDSRubroFDFUERA_PROMO: TStringField;
    CDSRubroFDORDEN: TIntegerField;
    CDSSubRubroFDCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroFDDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroFDCODIGO_RUBRO: TStringField;
    QPersonalMUESTRADEPOSITO: TIntegerField;
    spHacerNC_FD: TFDStoredProc;
    QEmpresa: TFDQuery;
    QEmpresaNOMBRE: TStringField;
    QEmpresaACTIVIDAD: TStringField;
    QEmpresaDIRECCION: TStringField;
    QEmpresaLOCALIDAD: TStringField;
    QEmpresaCORREO: TStringField;
    QEmpresaTELEFONO1: TStringField;
    QEmpresaTELEFONO2: TStringField;
    QEmpresaCUIT: TStringField;
    QEmpresaCONDICIONIVA: TStringField;
    QEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    QEmpresaLOGO: TBlobField;
    QEmpresaCPOSTAL: TStringField;
    QEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_GANANCIA: TStringField;
    QEmpresaAG_RET_ING_BRUTOS: TStringField;
    QEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    QEmpresaTASA_PERCEPCION_IB: TFloatField;
    QEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    QEmpresaPROVINCIA: TIntegerField;
    QEmpresaTASA_RET_IIBB: TFloatField;
    QEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    QEmpresaPUNITORIOS: TFloatField;
    QEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    QEmpresaNRO_RENSPA: TStringField;
    QEmpresaNRO_RUCA: TIntegerField;
    QEmpresaCUIT_AUTORIZADO: TStringField;
    QEmpresaNOMBRE_AUTORIZADO: TStringField;
    QEmpresaCBU: TStringField;
    QEmpresaID_CPOSTAL: TIntegerField;
    QComprobantePorDefecto: TFDQuery;
    QOpciones: TFDQuery;
    QUltimoCodigoCli: TFDQuery;
    QUltimoCodigoCliCODIGO: TStringField;
    QPostal: TFDQuery;
    QPostalID_POSTAL: TIntegerField;
    QPostalCODIGO_POSTAL: TStringField;
    QPostalDETALLE_POSTAL: TStringField;
    QPostalTELEDISCADO: TStringField;
    QPostalPROVINCIA: TIntegerField;
    QPostalMUESTRAPROVINCIA: TStringField;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QVentaCab: TFDQuery;
    QVentaDet: TFDQuery;
    QImpuestosVta: TFDQuery;
    QVtaDetalleConsig: TFDQuery;
    QVtaSubDetalle: TFDQuery;
    QVentaLote: TFDQuery;
    QInscripcion: TFDQuery;
    QFPago: TFDQuery;
    QSucursal: TFDQuery;
    QIva: TFDQuery;
    QLDRCliente: TFDQuery;
    QAjusteSubDetalle: TFDQuery;
    QAjustesLote: TFDQuery;
    QLDR: TFDQuery;
    QMov_Carnes: TFDQuery;
    QFcVta_Prod_Det: TFDQuery;
    QFcVta_Prod_Mov: TFDQuery;
    QRecibo: TFDQuery;
    QMovAplicaCCVta: TFDQuery;
    QMovCCVta: TFDQuery;
    QTRetencion: TFDQuery;
    QSQLConsulta: TFDQuery;
    SPAplicarLibroIva: TFDStoredProc;
    CDSPrecioXCant: TClientDataSet;
    CDSPrecioXCantCANTIDAD: TFloatField;
    CDSPrecioXCantPRECIO: TFloatField;
    CDSPrecioXCantPRECIO_SINIVA: TFloatField;
    DSPrecioXCant: TDataSource;
    DSPPrecioXCant: TDataSetProvider;
    QPrecioXCant: TFDQuery;
    CDSListaPreciosUsuarios: TClientDataSet;
    CDSListaPreciosUsuariosID_LISTA: TIntegerField;
    CDSListaPreciosUsuariosNOMBRE: TStringField;
    CDSListaPreciosUsuariosID: TIntegerField;
    CDSListaPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField;
    CDSListaPreciosUsuariosF_PAGO: TIntegerField;
    CDSListaPreciosUsuariosID_USUARIO: TIntegerField;
    DSPListaPreciosUsuarios: TDataSetProvider;
    QListaPreciosUsuarios: TFDQuery;
    intgrfldQListaPreciosUsuariosID_LISTA: TIntegerField;
    QListaPreciosUsuariosNOMBRE: TStringField;
    QListaPreciosUsuariosID: TIntegerField;
    QListaPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField;
    QListaPreciosUsuariosF_PAGO: TIntegerField;
    QListaPreciosUsuariosID_USUARIO: TIntegerField;
    spAgregarPedidoBorrador: TFDStoredProc;
    QStockLote: TFDQuery;
    QStockLoteID: TIntegerField;
    QStockLoteID_COMPROBANTE: TIntegerField;
    QStockLoteCODIGO: TStringField;
    QStockLoteID_DETALLE_CPBTE: TIntegerField;
    QStockLoteFECHA_ENTRADA: TSQLTimeStampField;
    QStockLoteFECHA_VTO: TSQLTimeStampField;
    QStockLoteLOTE: TStringField;
    QStockLoteDESPACHO: TStringField;
    QStockLoteCANTIDAD: TFloatField;
    QStockLoteTIPO_COMPROB: TStringField;
    QStockLoteDEPOSITO: TIntegerField;
    QStockLoteSALDO: TFloatField;
    QCondCompraProv: TFDQuery;
    QCondCompraProvCODIGOPROVEE: TStringField;
    QCondCompraProvCODIGOPAGO: TIntegerField;
    QCondCompraProvDESCUENTO: TFloatField;
    QCondCompraProvDETALLE: TStringField;
    QCondCompraProvDIAS: TIntegerField;
    QCondCompraProvDESCUENTO_FPAGO: TFloatField;
    QCondVentaCli: TFDQuery;
    QCondVentaCliCODIGOCLIENTE: TStringField;
    QCondVentaCliCODIGOPAGO: TIntegerField;
    QCondVentaCliDESCUENTO: TFloatField;
    QCondVentaCliPOR_DEFECTO: TStringField;
    QCondVentaCliDETALLE: TStringField;
    QCondVentaCliDIAS: TIntegerField;
    QCondVentaCliDESCUENTO_FPAGO: TFloatField;
    QClienteContrato: TFDQuery;
    QClienteContratoCODIGO: TStringField;
    QClienteContratoNRO_CONTRATO: TStringField;
    QClienteContratoTIPO_SERVICIO: TIntegerField;
    QClienteContratoFECHA_SOLICITUD: TSQLTimeStampField;
    QClienteContratoFECHA_INSTALACION: TSQLTimeStampField;
    QClienteContratoINCIO_SERVICIO: TSQLTimeStampField;
    QClienteContratoLUGAR_INSTALACION: TStringField;
    QClienteContratoCOSTO_INICAL: TFloatField;
    QClienteContratoOBS: TMemoField;
    QClientesAnexos: TFDQuery;
    QClientesAnexosID: TIntegerField;
    QClientesAnexosCLIENTE: TStringField;
    QClientesAnexosARCHIVO: TStringField;
    QClientesGarantes: TFDQuery;
    QClientesGarantesID: TIntegerField;
    QClientesGarantesCODIGOCLIENTE: TStringField;
    QClientesGarantesNOMBRE: TStringField;
    QClientesGarantesDIRECCION: TStringField;
    QClientesGarantesLOCALIDAD: TStringField;
    QClientesGarantesCPOSTAL: TStringField;
    QClientesGarantesTELEFONO1: TStringField;
    QClientesGarantesTELEFONO2: TStringField;
    QClientesGarantesCELULAR: TStringField;
    QClientesGarantesEMAIL: TStringField;
    QClientesGarantesPOR_DEFECTO: TStringField;
    QCodRipsa: TFDQuery;
    QCodRipsaCODIGO: TStringField;
    QCodRipsaCODIGO_RIPSA: TStringField;
    QRemitoCab: TFDQuery;
    QRemitoCabID_RTO: TIntegerField;
    QRemitoCabTIPOCPBTE: TStringField;
    QRemitoCabCLASECPBTE: TStringField;
    QRemitoCabNROCPBTE: TStringField;
    QRemitoCabCODIGO: TStringField;
    QRemitoCabLETRARTO: TStringField;
    QRemitoCabSUCRTO: TStringField;
    QRemitoCabNUMERORTO: TStringField;
    QRemitoCabNOMBRE: TStringField;
    QRemitoCabRAZONSOCIAL: TStringField;
    QRemitoCabDIRECCION: TStringField;
    QRemitoCabCPOSTAL: TStringField;
    QRemitoCabLOCALIDAD: TStringField;
    QRemitoCabTIPOIVA: TIntegerField;
    QRemitoCabCUIT: TStringField;
    QRemitoCabLISTAPRECIO: TIntegerField;
    QRemitoCabFECHAVTA: TSQLTimeStampField;
    QRemitoCabFECHAVTO: TSQLTimeStampField;
    QRemitoCabCONDICIONVTA: TIntegerField;
    QRemitoCabANULADO: TStringField;
    QRemitoCabNROFACT: TStringField;
    QRemitoCabN_OPERACION2: TFloatField;
    QRemitoCabNETOGRAV1: TFloatField;
    QRemitoCabNETOGRAV2: TFloatField;
    QRemitoCabDSTO: TFloatField;
    QRemitoCabDSTOIMPORTE: TFloatField;
    QRemitoCabNETOEXEN1: TFloatField;
    QRemitoCabNETOEXEN2: TFloatField;
    QRemitoCabTOTAL: TFloatField;
    QRemitoCabDEBE: TFloatField;
    QRemitoCabIMPRESO: TStringField;
    QRemitoCabOBSERVACION1: TStringField;
    QRemitoCabOBSERVACION2: TStringField;
    QRemitoCabCPTE_MANUAL: TStringField;
    QRemitoCabSUCURSAL: TIntegerField;
    QRemitoCabZONA: TIntegerField;
    QRemitoCabLDR: TIntegerField;
    QRemitoCabDEPOSITO: TIntegerField;
    QRemitoCabCALCULA_SOBRETASA: TStringField;
    QRemitoCabDESGLOZAIVA: TStringField;
    QRemitoCabNROENTREGA: TIntegerField;
    QRemitoCabINGRESA_A_CTACTE: TStringField;
    QRemitoCabINGRESA_LIBRO_IVA: TStringField;
    QRemitoCabIDFACTURA: TIntegerField;
    QRemitoCabCOMISIONVENDEDOR: TFloatField;
    QRemitoCabVENDEDOR: TStringField;
    QRemitoCabUSUARIO: TStringField;
    QRemitoCabRENGLONES: TSmallintField;
    QRemitoCabNOTAPEDIDO_ID: TIntegerField;
    QRemitoCabNOTAPEDIDO_NROCPBTE: TStringField;
    QRemitoCabID_TRANSPORTE: TIntegerField;
    QRemitoCabFECHA_HORA: TSQLTimeStampField;
    QRemitoCabTAREAS: TStringField;
    QRemitoCabPRESUPUESTO_ID: TIntegerField;
    QRemitoCabPRESUPUESTO_NROCPBTE: TStringField;
    QRemitoCabNOTAVTA_ID: TIntegerField;
    QRemitoCabNOTAVTA_NROCPBTE: TStringField;
    QRemitoCabMUESTRACONDVENTA: TStringField;
    QRemitoCabMUESTRADEPOSITO: TStringField;
    QRemitoCabMUESTRASUCURSAL: TStringField;
    QRemitoCabMUESTRALDR: TStringField;
    QRemitoCabMUESTRAIVA: TStringField;
    QRemitoCabMUESTRACOMPROBANTE: TStringField;
    QRemitoCabID_TIPOCOMPROBANTE: TIntegerField;
    QRemitoCabMUESTRAVENDEDOR: TStringField;
    QRemitoCabCON_GTIA_EXTENDIDA: TStringField;
    QRemitoCabPOLIZA: TStringField;
    QRemitoCabMUESTRATELEFONO1: TStringField;
    QRemitoCabMUESTRATELEFONO2: TStringField;
    QRemitoCabCANT_BULTOS: TIntegerField;
    QRemitoCabMUESTRALDIRECCIONLDR: TStringField;
    QRemitoCabMUESTRACUITRANSPORTE: TStringField;
    QRemitoCabMUESTRACONDIVATRANSPORTE: TStringField;
    QRemitoCabREMITO_ELECTRONICO: TStringField;
    QRemitoCabCAE: TStringField;
    QRemitoCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QRemitoCabMUESTRACODIGOAFIP: TStringField;
    QRemitoCabMUESTRAOBSCLIENTE1: TStringField;
    QRemitoCabMUESTRAOBSCLIENTE2: TStringField;
    QRemitoCabDEVOLUCION: TStringField;
    QRemitoCabMUESTRADIRTRANSPORTE: TStringField;
    QRemitoCabMUESTRATETRANSPORTE: TStringField;
    QRemitoCabMUESTRALOCALITRANSPORTE: TStringField;
    QRemitoCabID_CHOFER: TIntegerField;
    QRemitoCabMUESTRACHOFER: TStringField;
    QRemitoCabTRASNPORTE_UNIDAD: TIntegerField;
    QRemitoCabTRASNPORTE_ADICIONAL: TIntegerField;
    QRemitoCabMUESTRANOMBRETRANSPORTE: TStringField;
    QRemitoCabMUESTRACPOSTALLDR: TStringField;
    QRemitoCabMUESTRALOCALIDADLDR: TStringField;
    QRemitoCabMUESTRATELE: TStringField;
    QRemitoCabPEDIDO_ID: TIntegerField;
    QRemitoCabMUESTRA_UNI_TRANSPORTE: TStringField;
    QRemitoCabMUESTRA_AUX_TRANSPORTE: TStringField;
    QRemitoCabID_TRANSFERENCIA: TIntegerField;
    QRemitoCabMUESTRANOTAPEDIDO: TStringField;
    QRemitoCabMUESTRA_ID_NOTAPEDIDO: TIntegerField;
    QRemitoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    QRemitoCabFECHA_ENTREGA: TSQLTimeStampField;
    QRemitoDet: TFDQuery;
    QRemitoDetID: TIntegerField;
    QRemitoDetID_CABRTO: TIntegerField;
    QRemitoDetTIPOCPBTE: TStringField;
    QRemitoDetCLASECPBTE: TStringField;
    QRemitoDetNROCPBTE: TStringField;
    QRemitoDetFECHAVTA: TSQLTimeStampField;
    QRemitoDetCODIGOARTICULO: TStringField;
    QRemitoDetDETALLE: TStringField;
    QRemitoDetDETALLE_ADICIONAL: TStringField;
    QRemitoDetUNIDAD: TStringField;
    QRemitoDetCANTIDAD: TFloatField;
    QRemitoDetDESGLOZAIVA: TStringField;
    QRemitoDetMODO_GRAVAMEN: TStringField;
    QRemitoDetIVA_TASA: TFloatField;
    QRemitoDetTIPOIVA_TASA: TIntegerField;
    QRemitoDetIVA_SOBRETASA: TFloatField;
    QRemitoDetTIPOIVA_SOBRETASA: TIntegerField;
    QRemitoDetDESCUENTO: TFloatField;
    QRemitoDetTOTAL_GRAVADO: TFloatField;
    QRemitoDetTOTAL_EXENTO: TFloatField;
    QRemitoDetTOTAL: TFloatField;
    QRemitoDetDEPOSITO: TIntegerField;
    QRemitoDetMARGEN: TFloatField;
    QRemitoDetAFECTA_STOCK: TStringField;
    QRemitoDetCALCULA_SOBRETASA: TStringField;
    QRemitoDetGRAVADO_IB: TStringField;
    QRemitoDetID_MONEDA: TIntegerField;
    QRemitoDetCOTIZACION: TFloatField;
    QRemitoDetLOTE: TIntegerField;
    QRemitoDetOBSERVACION: TStringField;
    QRemitoDetNOTAVENTA_ID: TIntegerField;
    QRemitoDetNOTAVENTA_ID_DET: TIntegerField;
    QRemitoDetCOSTO_GRAVADO: TFloatField;
    QRemitoDetCOSTO_EXENTO: TFloatField;
    QRemitoDetCOSTO_TOTAL: TFloatField;
    QRemitoDetUNITARIO_GRAVADO: TFloatField;
    QRemitoDetIVA_UNITARIO: TFloatField;
    QRemitoDetUNITARIO_EXENTO: TFloatField;
    QRemitoDetUNITARIO_TOTAL: TFloatField;
    QRemitoDetIVA_TOTAL: TFloatField;
    QRemitoDetMUESTRAMONEDA: TStringField;
    QRemitoDetMUESTRASIGNO: TStringField;
    QRemitoDetMUESTRACONTENIDO: TFloatField;
    QRemitoDetMUESTRAPRESENTACION: TFloatField;
    QRemitoDetCODIGOBARRA: TStringField;
    QRemitoDetMUESTRACODALTERNATIVO: TStringField;
    QRemitoDetPRECIO_EDITABLE: TStringField;
    QRemitoDetCANT_FACTURA: TFloatField;
    QRemitoDetPRESENTACION_CANT: TFloatField;
    QRemitoDetCANTIDAD_UNIDADES: TFloatField;
    QRemitoDetID_MERCA_ACOPIO_DET: TIntegerField;
    QRemitoDetMUESTRARUBRO: TStringField;
    QRemitoDetMUESTRADETALLERUBRO: TStringField;
    QRemitoDetMUESTRASUBRUB: TStringField;
    QRemitoDetMUESTRADETALLESUBRUB: TStringField;
    QRemitoDetRENGLON: TFloatField;
    QRemitoDetPRESENTACION_UNIDAD: TStringField;
    QRemitoDetID_FACTURA: TIntegerField;
    QRemitoDetMUESTRAFACTURA: TStringField;
    QRemitoDetCODIGO: TStringField;
    QRemitoDetID_DET_OPRODUCCION: TIntegerField;
    QRemitoDetMUESTRALISTAPRECIO: TIntegerField;
    QRemitoDetSUCURSAL: TIntegerField;
    QImpuestoRto: TFDQuery;
    QImpuestoRtoID_IMPUESTO: TIntegerField;
    QImpuestoRtoID_RTOCAB: TIntegerField;
    QImpuestoRtoCODIGO_GRAVAMEN: TIntegerField;
    QImpuestoRtoDETALLE: TStringField;
    QImpuestoRtoNETO: TFloatField;
    QImpuestoRtoTASA: TFloatField;
    QImpuestoRtoIMPORTE: TFloatField;
    QRemitoTroqueles: TFDQuery;
    QRemitoTroquelesID: TIntegerField;
    QRemitoTroquelesID_RTO: TIntegerField;
    QRemitoTroquelesID_TROQUEL: TIntegerField;
    QRemitoTroquelesNRO_TROQUEL: TStringField;
    QRemitoTroquelesFECHA: TSQLTimeStampField;
    QAplicPorCtroCosto: TFDQuery;
    DSPAplicPorCtroCosto: TDataSetProvider;
    CDSAplicPorCtroCosto: TClientDataSet;
    CDSAplicPorCtroCostoID: TIntegerField;
    CDSAplicPorCtroCostoID_CPBTE: TIntegerField;
    CDSAplicPorCtroCostoTIPOCPBTE: TStringField;
    CDSAplicPorCtroCostoCTRO_COSTO: TIntegerField;
    CDSAplicPorCtroCostoIMPUTADO: TFloatField;
    CDSAplicPorCtroCostoTOTAL: TFloatField;
    CDSAplicPorCtroCostoPORCENTAJE: TFloatField;
    CDSAplicPorCtroCostoTIPO: TStringField;
    CDSAplicPorCtroCostoDESCRIPCION: TStringField;
    QEgresoCaja: TFDQuery;
    QEgresoCajaDetalle: TFDQuery;
    QCajaCab: TFDQuery;
    QOrdenCompCab: TFDQuery;
    QOrdenCompDet: TFDQuery;
    QOrdenCompImpuesto: TFDQuery;
    QOrdenCompVtos: TFDQuery;
    QOPago: TFDQuery;
    QMovAplicaCCCompra: TFDQuery;
    QMovCCCompra: TFDQuery;
    QAjusteCab: TFDQuery;
    QAjusteDet: TFDQuery;
    QAnulacionOPago: TFDQuery;
    QObras: TFDQuery;
    QRtoObraCab: TFDQuery;
    QRtoObraDet: TFDQuery;
    QRtoObraSubDet: TFDQuery;
    QVentaDetID: TIntegerField;
    QVentaDetID_CABFAC: TIntegerField;
    QVentaDetTIPOCPBTE: TStringField;
    QVentaDetCLASECPBTE: TStringField;
    QVentaDetNROCPBTE: TStringField;
    QVentaDetRENGLON: TFloatField;
    QVentaDetFECHAVTA: TSQLTimeStampField;
    QVentaDetCODIGOARTICULO: TStringField;
    QVentaDetDETALLE: TStringField;
    QVentaDetUNIDAD: TStringField;
    QVentaDetMODO_GRAVAMEN: TStringField;
    QVentaDetCANTIDAD: TFloatField;
    QVentaDetUNIDADES_GRAVADO: TFloatField;
    QVentaDetUNIDADES_EXENTO: TFloatField;
    QVentaDetUNIDADES_TOTAL: TFloatField;
    QVentaDetCOSTO_GRAVADO: TFloatField;
    QVentaDetCOSTO_EXENTO: TFloatField;
    QVentaDetCOSTO_TOTAL: TFloatField;
    QVentaDetUNITARIO_GRAVADO: TFloatField;
    QVentaDetIVA_UNITARIO: TFloatField;
    QVentaDetUNITARIO_EXENTO: TFloatField;
    QVentaDetUNITARIO_TOTAL: TFloatField;
    QVentaDetDESGLOZAIVA: TStringField;
    QVentaDetTOTAL_EXENTO: TFloatField;
    QVentaDetTOTAL_GRAVADO: TFloatField;
    QVentaDetIVA_TOTAL: TFloatField;
    QVentaDetTOTAL: TFloatField;
    QVentaDetTIPOIVA_TASA: TIntegerField;
    QVentaDetTIPOIVA_SOBRETASA: TIntegerField;
    QVentaDetIVA_TASA: TFloatField;
    QVentaDetIVA_SOBRETASA: TFloatField;
    QVentaDetDESCUENTO: TFloatField;
    QVentaDetDEPOSITO: TIntegerField;
    QVentaDetMARGEN: TFloatField;
    QVentaDetAFECTA_STOCK: TStringField;
    QVentaDetCALCULA_SOBRETASA: TStringField;
    QVentaDetGRAVADO_IB: TStringField;
    QVentaDetCON_NRO_SERIE: TStringField;
    QVentaDetCON_CODIGO_BARRA: TStringField;
    QVentaDetIB_TASA: TFloatField;
    QVentaDetTIPOIB_TASA: TIntegerField;
    QVentaDetLOTE: TIntegerField;
    QVentaDetPRECIO_EDITABLE: TStringField;
    QVentaDetID_MONEDA: TIntegerField;
    QVentaDetCOTIZACION: TFloatField;
    QVentaDetDETALLE_ADICIONAL: TStringField;
    QVentaDetGRUPO_DETALLE: TIntegerField;
    QVentaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QVentaDetCTA_ORDEN_NROCPBTE: TStringField;
    QVentaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    QVentaDetCTA_ORDEN_CALSECPBTE: TStringField;
    QVentaDetMESES_GTIA: TIntegerField;
    QVentaDetCODIGOBARRA: TStringField;
    QVentaDetDE_PRODUCCION: TStringField;
    QVentaDetUNITARIO_TOTAL_OLD: TFloatField;
    QVentaDetUNITARIO_IVA_OLD: TFloatField;
    QVentaDetUNI_C_REC: TStringField;
    QVentaDetITEM_OCOMPRA: TIntegerField;
    QVentaDetCONTROL_TRAZABILIDAD: TStringField;
    QVentaDetCANTIDAD_UNIDADES: TFloatField;
    QVentaDetPRESENTACION_CANT: TFloatField;
    QVentaDetPRESENTACION_UNIDAD: TStringField;
    QVentaDetID_DET_REMITO: TIntegerField;
    QVentaDetMUESTRAMONEDA: TStringField;
    QVentaDetMUESTRACODALTERNATIVO: TStringField;
    QVentaDetMUESTRAGTIAOFICIAL: TStringField;
    QVentaDetACOPIABLE: TStringField;
    QVentaDetMUESTRAIVAMODIFICADO: TStringField;
    QVentaDetRUBRO_STK: TStringField;
    QVentaDetSUBRUBRO_STK: TStringField;
    QVentaDetMUESTADIFERENCIAENTREGA: TFloatField;
    QVentaCabID_FC: TIntegerField;
    QVentaCabTIPOCPBTE: TStringField;
    QVentaCabCLASECPBTE: TStringField;
    QVentaCabCODIGO: TStringField;
    QVentaCabNROCPBTE: TStringField;
    QVentaCabLETRAFAC: TStringField;
    QVentaCabSUCFAC: TStringField;
    QVentaCabNUMEROFAC: TStringField;
    QVentaCabNOMBRE: TStringField;
    QVentaCabRAZONSOCIAL: TStringField;
    QVentaCabDIRECCION: TStringField;
    QVentaCabCPOSTAL: TStringField;
    QVentaCabLOCALIDAD: TStringField;
    QVentaCabTIPOIVA: TIntegerField;
    QVentaCabCUIT: TStringField;
    QVentaCabLISTAPRECIO: TIntegerField;
    QVentaCabFECHAVTA: TSQLTimeStampField;
    QVentaCabFECHAVTO: TSQLTimeStampField;
    QVentaCabFECHA_FISCAL: TSQLTimeStampField;
    QVentaCabCONDICIONVTA: TIntegerField;
    QVentaCabANULADO: TStringField;
    QVentaCabNRORTO: TStringField;
    QVentaCabN_OPERACION2: TFloatField;
    QVentaCabNETOGRAV1: TFloatField;
    QVentaCabNETOGRAV2: TFloatField;
    QVentaCabNETONOGRAV1: TFloatField;
    QVentaCabNETONOGRAV2: TFloatField;
    QVentaCabDSTO: TFloatField;
    QVentaCabDSTOIMPORTE: TFloatField;
    QVentaCabNETOEXEN1: TFloatField;
    QVentaCabNETOEXEN2: TFloatField;
    QVentaCabTOTAL: TFloatField;
    QVentaCabDEBE: TFloatField;
    QVentaCabIMPRESO: TStringField;
    QVentaCabOBSERVACION1: TStringField;
    QVentaCabOBSERVACION2: TStringField;
    QVentaCabCPTE_MANUAL: TStringField;
    QVentaCabSUCURSAL: TIntegerField;
    QVentaCabFACTURANRO: TStringField;
    QVentaCabZONA: TIntegerField;
    QVentaCabLDR: TIntegerField;
    QVentaCabDEPOSITO: TIntegerField;
    QVentaCabCALCULA_SOBRETASA: TStringField;
    QVentaCabDESGLOZAIVA: TStringField;
    QVentaCabNROENTREGA: TIntegerField;
    QVentaCabINGRESA_A_CTACTE: TStringField;
    QVentaCabINGRESA_LIBRO_IVA: TStringField;
    QVentaCabTIPO_REMITO: TStringField;
    QVentaCabIDREMITO: TIntegerField;
    QVentaCabREDUCIDA: TStringField;
    QVentaCabCOMSIONVENDEDOR: TFloatField;
    QVentaCabLIQUIDADA: TStringField;
    QVentaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    QVentaCabVENDEDOR: TStringField;
    QVentaCabUSUARIO: TStringField;
    QVentaCabNC_CONTADO: TStringField;
    QVentaCabCAJA_POR_DEFECTO: TIntegerField;
    QVentaCabNRO_Z: TIntegerField;
    QVentaCabVALORES_RECIBIDOS: TFloatField;
    QVentaCabPERCEPCION_IB_TASA: TFloatField;
    QVentaCabPERCEPCION_IB_IMPORTE: TFloatField;
    QVentaCabPERCIBE_IB: TStringField;
    QVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QVentaCabRENGLONES: TSmallintField;
    QVentaCabFECHA_HORA: TSQLTimeStampField;
    QVentaCabNOTAPEDIDO_ID: TIntegerField;
    QVentaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QVentaCabID_FC_CLON: TIntegerField;
    QVentaCabPRESUPUESTO_ID: TIntegerField;
    QVentaCabPRESUPUESTO_NROCPBTE: TStringField;
    QVentaCabMONEDA_CPBTE: TIntegerField;
    QVentaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QVentaCabPOR_CTA_Y_ORDEN: TStringField;
    QVentaCabPROVEEDOR: TStringField;
    QVentaCabTIPO_VTA: TStringField;
    QVentaCabID_RECEPCION_GTIA: TIntegerField;
    QVentaCabJURIDICION: TIntegerField;
    QVentaCabJURIDICION_LOCALIDAD: TIntegerField;
    QVentaCabCON_GTIA_EXTENDIDA: TStringField;
    QVentaCabMESES_DE_GARANTIA: TIntegerField;
    QVentaCabPOLIZA: TStringField;
    QVentaCabVALOR_ASEGURADO: TFloatField;
    QVentaCabABONO_PERIODO: TStringField;
    QVentaCabNUMERO_OPERACION: TStringField;
    QVentaCabSALDO_ACTUAL_CC: TFloatField;
    QVentaCabID_NOTA_CAMBIO: TIntegerField;
    QVentaCabCAE: TStringField;
    QVentaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QVentaCabFACTURA_ELECTRONICA: TStringField;
    QVentaCabCANT_BULTOS: TIntegerField;
    QVentaCabCUOTAS_CC: TIntegerField;
    QVentaCabINTERVALO_CUOTA: TIntegerField;
    QVentaCabID_GARANTE: TIntegerField;
    QVentaCabPAGO_A_CTA: TFloatField;
    QVentaCabID_FC_CON_ADEL: TIntegerField;
    QVentaCabPRIMER_VTO: TSQLTimeStampField;
    QVentaCabANTICIPO_VTO: TSQLTimeStampField;
    QVentaCabCENTRO_COSTO: TIntegerField;
    QVentaCabID_PEDIDO_MORPHI: TIntegerField;
    QVentaCabID_PAIS: TSmallintField;
    QVentaCabCUIT_PAIS: TStringField;
    QVentaCabDOC_ADUANERO: TStringField;
    QVentaCabFECHA_CARGA: TSQLTimeStampField;
    QVentaCabNRO_INTERNO: TStringField;
    QVentaCabFOB_TOTAL: TFloatField;
    QVentaCabNOTAS: TStringField;
    QVentaCabDESTINO_DOCUMENTO: TStringField;
    QVentaCabPERMISO_EMBARQUE: TStringField;
    QVentaCabINCOTERMS: TStringField;
    QVentaCabCBU: TStringField;
    QVentaCabASOCIADO_ID_CPBTE: TIntegerField;
    QVentaCabASOCIADO_TIPO: TIntegerField;
    QVentaCabASOCIADO_PTOVTA: TIntegerField;
    QVentaCabASOCIADO_NRO: TFloatField;
    QVentaCabASOCIADO_CPTEFCH: TStringField;
    QVentaCabINF_X: TStringField;
    QVentaCabTIPO_OPERACION_EXPO: TStringField;
    QVentaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    QVentaCabID_ADUANA: TIntegerField;
    QVentaCabREFERENCIA_EXPO: TStringField;
    QVentaCabCAMBIO_EXPO: TFloatField;
    QVentaCabVUELTO: TFloatField;
    QVentaCabID_TRANSPORTE: TIntegerField;
    QVentaCabID_DESTINO: TIntegerField;
    QVentaCabHONORARIOS: TFloatField;
    QVentaCabHONORARIOS_PROCENTAJ: TFloatField;
    QVentaCabDEDUCE_GASTOS: TStringField;
    QVentaCabCON_CAEA: TStringField;
    QVentaCabCAEA_INFORMADO: TStringField;
    QVentaCabFACTURA_DE_ANTICIPO: TStringField;
    QVentaCabQRIMAGE: TBlobField;
    QVentaCabCONDICIONPEDIDO: TIntegerField;
    QVentaCabKEY_PLANER: TStringField;
    QVentaCabMUESTRACONDVENTA: TStringField;
    QVentaCabMUESTRADEPOSITO: TStringField;
    QVentaCabMUESTRASUCURSAL: TStringField;
    QVentaCabMUESTRALDR: TStringField;
    QVentaCabMUESTRADIRECCIONLDR: TStringField;
    QVentaCabMUESTRAIVA: TStringField;
    QVentaCabMUESTRACOMPROBANTE: TStringField;
    QVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    QVentaCabMUESTRAVENDEDOR: TStringField;
    QVentaCabMUESTRAPROVEEDOR: TStringField;
    QVentaCabMUESTRAMONEDACPBTE: TStringField;
    QVentaCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QVentaCabMUESTRAESFRANQUICIA: TStringField;
    QVentaCabMUESTRACOORPORATIVO: TStringField;
    QVentaCabMUESTRACODIGOAFIP: TStringField;
    QVentaCabMUESTRAZONA: TStringField;
    QVentaCabMUESTRAOBSCLIENTE1: TStringField;
    QVentaCabMUESTRAOBSCLIENTE2: TStringField;
    QVentaCabMUESTRAACOPIO: TIntegerField;
    QVentaCabMUESTRANOMBRECOMPLETO: TStringField;
    QVentaCabMUESTRAIDABONO: TIntegerField;
    QVentaCabMUESTRANROABONO: TStringField;
    QVentaCabENVIAR_CPTE_MAIL: TStringField;
    QVentaCabMUESTRAUSACHE: TStringField;
    QVentaCabMUESTRATRANSPORTE: TStringField;
    QVentaCabMUESTRAID_NC: TIntegerField;
    QVentaCabMUESTRANRONC: TStringField;
    QVentaCabMUESTRATIPONC: TStringField;
    QVentaCabMUESTRACLASENC: TStringField;
    QImpuestosVtaID_IMPUESTO: TIntegerField;
    QImpuestosVtaID_FCVTACAB: TIntegerField;
    QImpuestosVtaCODIGO_GRAVAMEN: TIntegerField;
    QImpuestosVtaDETALLE: TStringField;
    QImpuestosVtaNETO: TFloatField;
    QImpuestosVtaTASA: TFloatField;
    QImpuestosVtaIMPORTE: TFloatField;
    QCompraCabID_FC: TIntegerField;
    QCompraCabTIPOCPBTE: TStringField;
    QCompraCabCLASECPBTE: TStringField;
    QCompraCabCODIGO: TStringField;
    QCompraCabNROCPBTE: TStringField;
    QCompraCabLETRAFAC: TStringField;
    QCompraCabSUCFAC: TStringField;
    QCompraCabNUMEROFAC: TStringField;
    QCompraCabNOMBRE: TStringField;
    QCompraCabRAZONSOCIAL: TStringField;
    QCompraCabDIRECCION: TStringField;
    QCompraCabCPOSTAL: TStringField;
    QCompraCabLOCALIDAD: TStringField;
    QCompraCabTIPOIVA: TIntegerField;
    QCompraCabCUIT: TStringField;
    QCompraCabFECHAVTO: TSQLTimeStampField;
    QCompraCabCONDICIONCOMPRA: TIntegerField;
    QCompraCabANULADO: TStringField;
    QCompraCabORDENCOMPRA: TStringField;
    QCompraCabN_OPERACION2: TFloatField;
    QCompraCabNETOGRAV1: TFloatField;
    QCompraCabDSTO: TFloatField;
    QCompraCabDSTOIMPORTE: TFloatField;
    QCompraCabNETOGRAV2: TFloatField;
    QCompraCabNETOEXEN1: TFloatField;
    QCompraCabNETOEXEN2: TFloatField;
    QCompraCabIMPORTEEXCLUIDO2: TFloatField;
    QCompraCabIMPORTEEXCLUIDO1: TFloatField;
    QCompraCabRETENCION_IVA: TFloatField;
    QCompraCabTOTAL: TFloatField;
    QCompraCabDEBE: TFloatField;
    QCompraCabAPLICA: TStringField;
    QCompraCabOBSERVACION1: TStringField;
    QCompraCabOBSERVACION2: TStringField;
    QCompraCabSUCURSALCOMPRA: TIntegerField;
    QCompraCabZONA: TIntegerField;
    QCompraCabDEPOSITO: TIntegerField;
    QCompraCabDESGLOZAIVA: TStringField;
    QCompraCabCALCULA_SOBRETASA: TStringField;
    QCompraCabFECHAFISCAL: TSQLTimeStampField;
    QCompraCabNETOMONOTRIBUTO1: TFloatField;
    QCompraCabNETOMONOTRIBUTO2: TFloatField;
    QCompraCabCPBTE_INTERNO: TStringField;
    QCompraCabINGRESA_A_CTACTE: TStringField;
    QCompraCabINGRESA_LIBRO_IVA: TStringField;
    QCompraCabREDUCIDA: TStringField;
    QCompraCabTIPO_PROVEEDOR: TStringField;
    QCompraCabJURIDICCION: TIntegerField;
    QCompraCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QCompraCabFECHA_HORA: TSQLTimeStampField;
    QCompraCabUSUARIO: TStringField;
    QCompraCabTOTAL_UNIDADES: TFloatField;
    QCompraCabMONEDA_CPBTE: TIntegerField;
    QCompraCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QCompraCabNUMERO_OPERACION: TStringField;
    QCompraCabCAE: TStringField;
    QCompraCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QCompraCabFACTURA_ELECTRONICA: TStringField;
    QCompraCabCOD_OPERACION_AFIP: TSingleField;
    QCompraCabTIPOCOMP_AFIP: TStringField;
    QCompraCabCOD_CARACT_RECP_AFIP: TIntegerField;
    QCompraCabCOD_CARACT_EMIS_AFIP: TIntegerField;
    QCompraCabNRO_IIBB_RECEP: TStringField;
    QCompraCabNRO_RENSPA_EMISOR: TStringField;
    QCompraCabNRO_RENSPA_RECEP: TStringField;
    QCompraCabFECHA_OPERACION: TSQLTimeStampField;
    QCompraCabLUGAR_REALIZA_AFIP: TStringField;
    QCompraCabCOD_MOTIVO_AFIP: TIntegerField;
    QCompraCabNRO_RUCA_EMISOR_AFIP: TSingleField;
    QCompraCabNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    QCompraCabFECHA_FAENA_AFIP: TSQLTimeStampField;
    QCompraCabFECHA_RECEP_AFIP: TSQLTimeStampField;
    QCompraCabDATOS_ADIC_AFIP: TStringField;
    QCompraCabFECHA_INCIO_ACTIV: TSQLTimeStampField;
    QCompraCabCODIGOBARRA_AFIP: TStringField;
    QCompraCabCUIT_AUTORIZADO: TStringField;
    QCompraCabNOMBRE_AUTORIZADO: TStringField;
    QCompraCabTIPO_LIQUIDACION: TStringField;
    QCompraCabCUIT_AUTORIZADO_RECEP: TStringField;
    QCompraCabID_CPBTE_ANULADO_LIQ: TIntegerField;
    QCompraCabMUESTRACONDCOMPRA: TStringField;
    QCompraCabMUESTRADEPOSITO: TStringField;
    QCompraCabMUESTRASUCURSAL: TStringField;
    QCompraCabMUESTRACOMPROBANTE: TStringField;
    QCompraCabID_TIPOCOMPROBANTE: TIntegerField;
    QCompraCabMUESTRAMONEDACPBTE: TStringField;
    QCompraCabMUESTRACODIGOAFIP: TStringField;
    QCompraCabMUESTRASIGNOMONEDACPBTE: TStringField;
    QCompraCabMUESTRAINSCRIPCIONIVA: TStringField;
    QCompraDetID: TIntegerField;
    QCompraDetID_CABFAC: TIntegerField;
    QCompraDetTIPOCPBTE: TStringField;
    QCompraDetCLASECPBTE: TStringField;
    QCompraDetNROCPBTE: TStringField;
    QCompraDetCODIGOPROVEEDOR: TStringField;
    QCompraDetRENGLON: TFloatField;
    QCompraDetCODIGOARTICULO: TStringField;
    QCompraDetDETALLE: TStringField;
    QCompraDetDETALLE_ADICIONAL: TStringField;
    QCompraDetUNIDAD: TStringField;
    QCompraDetCANTIDAD: TFloatField;
    QCompraDetUNIDADES_TOTAL: TFloatField;
    QCompraDetUNIDADES_EXENTO: TFloatField;
    QCompraDetUNIDADES_GRAVADO: TFloatField;
    QCompraDetUNITARIO_TOTAL: TFloatField;
    QCompraDetUNITARIO_EXENTO: TFloatField;
    QCompraDetUNITARIO_GRAVADO: TFloatField;
    QCompraDetDESGLOZAIVA: TStringField;
    QCompraDetMODO_GRAVAMEN: TStringField;
    QCompraDetTIPOIVA_TASA: TIntegerField;
    QCompraDetIVA_TASA: TFloatField;
    QCompraDetTIPOIVA_SOBRETASA: TIntegerField;
    QCompraDetIVA_SOBRETASA: TFloatField;
    QCompraDetCOSTO_TOTAL: TFloatField;
    QCompraDetCOSTO_EXENTO: TFloatField;
    QCompraDetCOSTO_GRAVADO: TFloatField;
    QCompraDetDESCUENTO: TFloatField;
    QCompraDetTOTAL: TFloatField;
    QCompraDetDEPOSITO: TIntegerField;
    QCompraDetMARGEN: TFloatField;
    QCompraDetAFECTA_STOCK: TStringField;
    QCompraDetCALCULA_SOBRETASA: TStringField;
    QCompraDetCOSTO_IMP_INTERNO: TFloatField;
    QCompraDetUNIDADES_IMP_INTERNOS: TFloatField;
    QCompraDetUNITARIO_IMP_INTERNO: TFloatField;
    QCompraDetCON_NRO_SERIE: TStringField;
    QCompraDetID_RECEPCION_CAB: TIntegerField;
    QCompraDetID_RECEPCION_DET: TIntegerField;
    QCompraDetNRORECEPCION: TStringField;
    QCompraDetGRAVADO_IB: TStringField;
    QCompraDetID_MONEDA: TIntegerField;
    QCompraDetCOTIZACION: TFloatField;
    QCompraDetCONTROL_TRAZABILIDAD: TStringField;
    QCompraDetCANTIDAD_UNIDADES: TFloatField;
    QCompraDetPRESENTACION_CANT: TFloatField;
    QCompraDetTIPO_LIQUI: TIntegerField;
    QCompraDetCODIGO_RAZA: TIntegerField;
    QCompraDetDETALLE_RAZA: TStringField;
    QCompraDetTROPA: TIntegerField;
    QCompraDetCABEZAS: TIntegerField;
    QCompraDetMUESTRAMONEDA: TStringField;
    QCompraDetMUESTRACODALTERNATIVO: TStringField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QTarjetacredito_comp: TFDQuery;
    QTarjetacredito_compID: TIntegerField;
    QTarjetacredito_compNRO_TARJETA: TStringField;
    QTarjetacredito_compNOMBRE: TStringField;
    QTarjetacredito_compID_BANCO: TIntegerField;
    QTarjetacredito_compMONEDA: TIntegerField;
    QTarjetacredito_compID_TCREDITO: TIntegerField;
    QTarjetacredito_compMUESTRATARJETACREDITO: TStringField;
    QTarjetacredito_compMUESTRACUIT: TStringField;
    QTarjetacredito_compMUESTRABANCO: TStringField;
    QTarjetacredito_compMUESTRARAZONSOCIAL: TStringField;
    QTCredito: TFDQuery;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoMONEDA: TIntegerField;
    QTCreditoCODIGOARTICULO: TStringField;
    QTCreditoID_CUENTA_BANCO: TIntegerField;
    QTCreditoDIAS_ACREDITACION: TSmallintField;
    QTCreditoCUIT: TStringField;
    QTCreditoRAZONSOCIAL: TStringField;
    QTCreditoMUESTRAARTICULO: TStringField;
    QTCreditoMUESTRACTABCO: TStringField;
    QTCreditoMUESTRANROCTABCO: TStringField;
    QFPagoCODIGO: TIntegerField;
    QFPagoDETALLE: TStringField;
    QFPagoDIAS: TIntegerField;
    QFPagoDESCUENTO: TFloatField;
    QOrdenCompCabID_OC: TIntegerField;
    QOrdenCompCabTIPOCPBTE: TStringField;
    QOrdenCompCabCLASECPBTE: TStringField;
    QOrdenCompCabNROCPBTE: TStringField;
    QOrdenCompCabCODIGO: TStringField;
    QOrdenCompCabLETRA: TStringField;
    QOrdenCompCabSUC: TStringField;
    QOrdenCompCabNUMERO: TStringField;
    QOrdenCompCabNOMBRE: TStringField;
    QOrdenCompCabRAZONSOCIAL: TStringField;
    QOrdenCompCabDIRECCION: TStringField;
    QOrdenCompCabCPOSTAL: TStringField;
    QOrdenCompCabLOCALIDAD: TStringField;
    QOrdenCompCabTIPOIVA: TIntegerField;
    QOrdenCompCabCUIT: TStringField;
    QOrdenCompCabFECHA: TSQLTimeStampField;
    QOrdenCompCabFECHAVTO: TSQLTimeStampField;
    QOrdenCompCabCONDICIONCOMPRA: TIntegerField;
    QOrdenCompCabANULADO: TStringField;
    QOrdenCompCabN_OPERACION2: TFloatField;
    QOrdenCompCabNETOGRAV1: TFloatField;
    QOrdenCompCabNETOGRAV2: TFloatField;
    QOrdenCompCabDSTO: TFloatField;
    QOrdenCompCabDSTOIMPORTE: TFloatField;
    QOrdenCompCabNETOEXEN1: TFloatField;
    QOrdenCompCabNETOEXEN2: TFloatField;
    QOrdenCompCabIMPORTEEXCLUIDO1: TFloatField;
    QOrdenCompCabIMPORTEEXCLUIDO2: TFloatField;
    QOrdenCompCabNETOMONOTRIBUTO1: TFloatField;
    QOrdenCompCabNETOMONOTRIBUTO2: TFloatField;
    QOrdenCompCabTOTAL: TFloatField;
    QOrdenCompCabIMPRESO: TStringField;
    QOrdenCompCabSUCURSAL: TIntegerField;
    QOrdenCompCabDEPOSITO: TIntegerField;
    QOrdenCompCabAUTORIZO: TStringField;
    QOrdenCompCabREALIZO: TStringField;
    QOrdenCompCabCALCULA_SOBRETASA: TStringField;
    QOrdenCompCabDESGLOZAIVA: TStringField;
    QOrdenCompCabESTADO: TStringField;
    QOrdenCompCabFECHAAUTORIZACION: TSQLTimeStampField;
    QOrdenCompCabFECHACUMPLIDA: TSQLTimeStampField;
    QOrdenCompCabOBSERVACIONES: TMemoField;
    QOrdenCompCabNOTAS: TStringField;
    QOrdenCompCabUSUARIO: TStringField;
    QOrdenCompCabTRANSPORTE: TIntegerField;
    QOrdenCompCabTIPO: TSmallintField;
    QOrdenCompCabTIPO_PROVEEDOR: TStringField;
    QOrdenCompCabID_PRESUPUESTO_OC: TIntegerField;
    QOrdenCompCabTELEFONOS: TStringField;
    QOrdenCompCabFECHA_HORA: TSQLTimeStampField;
    QOrdenCompCabID_OCOMPRA_PREV: TIntegerField;
    QOrdenCompCabNRO_OC_ANTERIOR: TStringField;
    QOrdenCompCabID_OCOMPRA_NEXT: TIntegerField;
    QOrdenCompCabNRO_OC_SIGUIEN: TStringField;
    QOrdenCompCabMUESTRACONDCOMPRA: TStringField;
    QOrdenCompCabMUESTRADEPOSITO: TStringField;
    QOrdenCompCabMUESTRASUCURSAL: TStringField;
    QOrdenCompCabMUESTRACOMPROBANTE: TStringField;
    QOrdenCompCabID_TIPOCOMPROBANTE: TIntegerField;
    QOrdenCompCabMUESTRAREALIZO: TStringField;
    QOrdenCompCabMUESTRAAUTORIZO: TStringField;
    QOrdenCompCabMUESTRANUMEROPRESOC: TStringField;
    QOrdenCompCabMUESTRAID_PRESOC: TIntegerField;
    QOrdenCompCabMUESTRACORREO: TStringField;
    QOrdenCompDetID: TIntegerField;
    QOrdenCompDetID_CABOC: TIntegerField;
    QOrdenCompDetTIPOCPBTE: TStringField;
    QOrdenCompDetCLASECPBTE: TStringField;
    QOrdenCompDetNROCPBTE: TStringField;
    QOrdenCompDetRENGLON: TFloatField;
    QOrdenCompDetFECHA: TSQLTimeStampField;
    QOrdenCompDetCODIGOARTICULO: TStringField;
    QOrdenCompDetDETALLE: TStringField;
    QOrdenCompDetDETALLE_ADICIONAL: TStringField;
    QOrdenCompDetUNIDAD: TStringField;
    QOrdenCompDetCANTIDADPEDIDA: TFloatField;
    QOrdenCompDetCANTIDADAUTORIZADA: TFloatField;
    QOrdenCompDetCANTIDADRECIBIDA: TFloatField;
    QOrdenCompDetUNITARIO_TOTAL: TFloatField;
    QOrdenCompDetUNITARIO_GRAVADO: TFloatField;
    QOrdenCompDetUNITARIO_EXENTO: TFloatField;
    QOrdenCompDetDESGLOZAIVA: TStringField;
    QOrdenCompDetIVA_TASA: TFloatField;
    QOrdenCompDetTIPOIVA_TASA: TIntegerField;
    QOrdenCompDetIVA_SOBRETASA: TFloatField;
    QOrdenCompDetTIPOIVA_SOBRETASA: TIntegerField;
    QOrdenCompDetSUCURSAL: TIntegerField;
    QOrdenCompDetDEPOSITO: TIntegerField;
    QOrdenCompDetCALCULA_SOBRETASA: TStringField;
    QOrdenCompDetMODO_GRAVAMEN: TStringField;
    QOrdenCompDetTOTAL: TFloatField;
    QOrdenCompDetID_COMP_REC: TIntegerField;
    QOrdenCompDetTIPO_COMP_REC: TStringField;
    QOrdenCompDetCLASE_COMP_REC: TStringField;
    QOrdenCompDetNRO_COMP_REC: TStringField;
    QOrdenCompDetID_MONEDA: TIntegerField;
    QOrdenCompDetCOTIZACION: TFloatField;
    QOrdenCompDetID_DET_NOTAPEDIDO: TIntegerField;
    QOrdenCompDetMUESTRAPRESCANT: TFloatField;
    QOrdenCompDetMUESTRAPRESUNI: TStringField;
    QOrdenCompDetMUESTRAMONEDA: TStringField;
    QOrdenCompDetMUESTRACODALTERNATIVO: TStringField;
    QOrdenCompImpuestoID_IMPUESTO: TIntegerField;
    QOrdenCompImpuestoCODIGO_GRAVAMEN: TIntegerField;
    QOrdenCompImpuestoDETALLE: TStringField;
    QOrdenCompImpuestoID_OCCAB: TIntegerField;
    QOrdenCompImpuestoNETO: TFloatField;
    QOrdenCompImpuestoTASA: TFloatField;
    QOrdenCompImpuestoIMPORTE: TFloatField;
    QOrdenCompVtosID: TIntegerField;
    QOrdenCompVtosID_OCCAB: TIntegerField;
    QOrdenCompVtosDIAS: TSmallintField;
    QOrdenCompVtosFECHA_VENCIMIEMTO: TSQLTimeStampField;
    QOrdenCompVtosIMPORTE: TFloatField;
    QTRetencionID_RETENCION: TIntegerField;
    QTRetencionDETALLE: TStringField;
    QTRetencionTIPO: TSmallintField;
    QReciboID_RC: TIntegerField;
    QReciboTIPOCPBTE: TStringField;
    QReciboCLASECPBTE: TStringField;
    QReciboNROCPBTE: TStringField;
    QReciboCODIGO: TStringField;
    QReciboLETRARC: TStringField;
    QReciboSUCRC: TStringField;
    QReciboNUMERORC: TStringField;
    QReciboNOMBRE: TStringField;
    QReciboRAZONSOCIAL: TStringField;
    QReciboDIRECCION: TStringField;
    QReciboCPOSTAL: TStringField;
    QReciboLOCALIDAD: TStringField;
    QReciboTIPOIVA: TIntegerField;
    QReciboCUIT: TStringField;
    QReciboFECHA: TSQLTimeStampField;
    QReciboANULADO: TStringField;
    QReciboVENDEDOR: TStringField;
    QReciboSALDO_APLICAR: TFloatField;
    QReciboIMPRESO: TStringField;
    QReciboOBSERVACION1: TStringField;
    QReciboOBSERVACION2: TStringField;
    QReciboSUCURSAL: TIntegerField;
    QReciboZONA: TIntegerField;
    QReciboTOTAL_NETO: TFloatField;
    QReciboPORCENTAJE_DSCTO: TFloatField;
    QReciboIMPORTE_DSCTO: TFloatField;
    QReciboTOTAL: TFloatField;
    QReciboUSUARIO: TStringField;
    QReciboFECHA_HORA: TSQLTimeStampField;
    QReciboCPBTE_MANUAL: TStringField;
    QReciboNC_ID: TIntegerField;
    QReciboNC_TIPOCPBTE: TStringField;
    QReciboNC_CLASECPBTE: TStringField;
    QReciboNC_NROCOMPROB: TStringField;
    QReciboN_OPERACION2: TFloatField;
    QReciboNUMERO_OPERACION: TStringField;
    QReciboNRO_RECIBO_INTERMO: TIntegerField;
    QReciboID_REC_CUPON: TIntegerField;
    QReciboIMPORTE_RECARGO: TFloatField;
    QReciboLOTE_COBRO_TC: TStringField;
    QReciboMUESTRASUCURSAL: TStringField;
    QReciboMUESTRACOMPROBANTE: TStringField;
    QReciboID_TIPOCOMPROBANTE: TIntegerField;
    QReciboMUESTRAVENDEDOR: TStringField;
    QReciboMUESTRAIVA: TStringField;
    QReciboMUESTRANCREDITO: TStringField;
    QReciboMUESTRACHEQUES: TStringField;
    QVtaDetalleConsigID: TIntegerField;
    QVtaDetalleConsigID_CABFAC: TIntegerField;
    QVtaDetalleConsigID_DETFAC: TIntegerField;
    QVtaDetalleConsigCODIGO: TStringField;
    QVtaDetalleConsigDETALLE: TStringField;
    QVtaDetalleConsigCANTIDAD: TFloatField;
    QVtaDetalleConsigID_MOV_RECEPCION_CAB: TIntegerField;
    QVtaDetalleConsigID_MOV_RECEPCION_DET: TIntegerField;
    QVtaDetalleConsigLIQUIDADA: TStringField;
    QVtaDetalleConsigPRECIO_VTA: TFloatField;
    QVtaDetalleConsigPRECIO_COMPRA: TFloatField;
    QVtaDetalleConsigCODIGO_PROVEEDOR: TStringField;
    QVtaDetalleConsigMUESTRARECEPCIONNRO: TStringField;
    QVtaSubDetalleID: TIntegerField;
    QVtaSubDetalleID_DETFAC: TIntegerField;
    QVtaSubDetalleID_CABFAC: TIntegerField;
    QVtaSubDetalleTIPOCPBTE: TStringField;
    QVtaSubDetalleCLASECPBTE: TStringField;
    QVtaSubDetalleFECHA: TSQLTimeStampField;
    QVtaSubDetalleNROCPBTE: TStringField;
    QVtaSubDetalleCODIGOARTICULO: TStringField;
    QVtaSubDetalleSERIE: TStringField;
    QVtaSubDetalleDEPOSITO: TIntegerField;
    QVtaSubDetalleTIPO: TStringField;
    QCompraTributosID: TIntegerField;
    QCompraTributosID_FC: TIntegerField;
    QCompraTributosCODTRIBUTO: TIntegerField;
    QCompraTributosDESCRIPCION: TStringField;
    QCompraTributosBASEIMPONIBLE: TFloatField;
    QCompraTributosALICUOTA: TFloatField;
    QCompraTributosIMPORTE: TFloatField;
    QCompraGastosID: TIntegerField;
    QCompraGastosID_FC: TIntegerField;
    QCompraGastosCODGASTO: TIntegerField;
    QCompraGastosDESCRIPCION: TStringField;
    QCompraGastosBASEIMPONIBLE: TFloatField;
    QCompraGastosALICUOTA: TFloatField;
    QCompraGastosALICUOTAIVA: TFloatField;
    QCompraGastosIMPORTE: TFloatField;
    QComp_DETID: TIntegerField;
    QComp_DETID_FC: TIntegerField;
    QComp_DETNRO_DET: TStringField;
    QComp_DETNRO_RENSPA: TStringField;
    QOPagoID_OP: TIntegerField;
    QOPagoTIPOCPBTE: TStringField;
    QOPagoCLASECPBTE: TStringField;
    QOPagoNROCPBTE: TStringField;
    QOPagoCODIGO: TStringField;
    QOPagoLETRAOP: TStringField;
    QOPagoSUCOP: TStringField;
    QOPagoNUMEROOP: TStringField;
    QOPagoNOMBRE: TStringField;
    QOPagoRAZONSOCIAL: TStringField;
    QOPagoDIRECCION: TStringField;
    QOPagoCPOSTAL: TStringField;
    QOPagoLOCALIDAD: TStringField;
    QOPagoTIPOIVA: TIntegerField;
    QOPagoCUIT: TStringField;
    QOPagoNRO_IIBB: TStringField;
    QOPagoFECHA: TSQLTimeStampField;
    QOPagoANULADO: TStringField;
    QOPagoN_OPERACION2: TFloatField;
    QOPagoTOTAL: TFloatField;
    QOPagoSALDO_APLICAR: TFloatField;
    QOPagoOBSERVACION1: TStringField;
    QOPagoOBSERVACION2: TStringField;
    QOPagoSUCURSAL: TIntegerField;
    QOPagoDESCUENTO: TFloatField;
    QOPagoDESGLOZAIVA: TStringField;
    QOPagoNC_ID_FC: TIntegerField;
    QOPagoNC_LETRAFAC: TStringField;
    QOPagoNC_SUCFAC: TStringField;
    QOPagoNC_NUMEROFAC: TStringField;
    QOPagoTASA_PERCEPCIONIVA: TFloatField;
    QOPagoTASA_PERCEPCIONIB: TFloatField;
    QOPagoUSUARIO: TStringField;
    QOPagoTOTAL_NETO_GRAVADO: TFloatField;
    QOPagoTOTAL_PAGOS_DEL_MES: TFloatField;
    QOPagoTOTAL_RETENIDO_MES: TFloatField;
    QOPagoTASA_RETENCION_GANACIA: TFloatField;
    QOPagoMINIMO_NO_IMPONIBLE_GANANCIA: TFloatField;
    QOPagoRETIENE_GANACIAS: TStringField;
    QOPagoRETENCION_GANACIA_GENERADO: TStringField;
    QOPagoCODIGO_REGIMENA_GANANCIA: TIntegerField;
    QOPagoCONCEPTO_RETENCION_GANACIA: TStringField;
    QOPagoIMPUESTO_MINIMO_GANANCIA: TFloatField;
    QOPagoRETIENE_IIBB: TStringField;
    QOPagoTASA_RETENCION_IIBB: TFloatField;
    QOPagoMINIMO_IMPONIBLE_RET_IIBB: TFloatField;
    QOPagoFECHA_HORA: TSQLTimeStampField;
    QOPagoDESCUENTO_PORCENTAJE: TFloatField;
    QOPagoTOTAL_NETO: TFloatField;
    QOPagoNUMERO_OPERACION: TStringField;
    QOPagoPERMITIR_MODIF_TOTAL: TStringField;
    QOPagoRET_GAN_X_ESCALA: TStringField;
    QOPagoID_ESCALA_RET: TIntegerField;
    QOPagoGANC_ESCALA_DESDE: TFloatField;
    QOPagoGANC_ESCALA_HASTA: TFloatField;
    QOPagoGANC_ESCALA_VARIAC: TFloatField;
    QOPagoGANC_ESCALA_FIJO: TFloatField;
    QOPagoGANC_ESCALA_EXCED: TFloatField;
    QOPagoRETIENE_IVA: TStringField;
    QOPagoIVA_ACUMULADO: TFloatField;
    QOPagoENTREGADO: TStringField;
    QOPagoCOD_RET_IVA: TIntegerField;
    QOPagoCONCEPTO_RET_IVA: TStringField;
    QOPagoTASA_RET_IVA: TCurrencyField;
    QOPagoMUESTRASUCURSAL: TStringField;
    QOPagoMUESTRACOMPROBANTE: TStringField;
    QOPagoID_TIPOCOMPROBANTE: TIntegerField;
    QOPagoMUESTRACORREO: TStringField;
    QMovAplicaCCCompraID_MOV: TIntegerField;
    QMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    QMovAplicaCCCompraFECHA: TSQLTimeStampField;
    QMovAplicaCCCompraPROVEEDOR: TStringField;
    QMovAplicaCCCompraID_CPBTE: TIntegerField;
    QMovAplicaCCCompraTIPOCPBTE: TStringField;
    QMovAplicaCCCompraCLASECPBTE: TStringField;
    QMovAplicaCCCompraNUMEROCPBTE: TStringField;
    QMovAplicaCCCompraIMPORTE: TFloatField;
    QMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    QMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    QMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    QMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    QMovAplicaCCCompraDETALLE: TStringField;
    QMovAplicaCCCompraAPLICA_NETO: TFloatField;
    QMovAplicaCCCompraCONCILIADO: TStringField;
    QMovAplicaCCCompraAPLICA_IVA: TFloatField;
    QMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    QMovAplicaCCCompraMUESTRATOTALFACTURA: TFloatField;
    QMovCCCompraID_MOVCCCOMPRA: TIntegerField;
    QMovCCCompraID_CPBTE: TIntegerField;
    QMovCCCompraPROVEEDOR: TStringField;
    QMovCCCompraFECHACOMPRA: TSQLTimeStampField;
    QMovCCCompraFECHAVTO: TSQLTimeStampField;
    QMovCCCompraTIPOCPBTE: TStringField;
    QMovCCCompraCLASECPBTE: TStringField;
    QMovCCCompraNROCPBTE: TStringField;
    QMovCCCompraDEBE: TFloatField;
    QMovCCCompraHABER: TFloatField;
    QMovCCCompraSALDO: TFloatField;
    QMovCCCompraDETALLE: TStringField;
    QMovCCCompraID_MONEDA: TIntegerField;
    QMovCCCompraCOTIZACION: TFloatField;
    QMovCCCompraMUESTRAAPAGAR: TFloatField;
    QMovCCCompraGRUPO: TIntegerField;
    QMovCCCompraFISCAL: TStringField;
    QMov_CarnesID: TIntegerField;
    QMov_CarnesID_DET: TIntegerField;
    QMov_CarnesID_CAB: TIntegerField;
    QMov_CarnesCLASIFICACION: TStringField;
    QMov_CarnesNRO_TROPA: TStringField;
    QMov_CarnesMEDIA_1: TIntegerField;
    QMov_CarnesMEDIA_2: TIntegerField;
    QMov_CarnesMEDIA_3: TIntegerField;
    QMov_CarnesMEDIA_4: TIntegerField;
    QMov_CarnesMEDIA_5: TIntegerField;
    QMov_CarnesMEDIA_6: TIntegerField;
    QMov_CarnesMEDIA_7: TIntegerField;
    QMov_CarnesMEDIA_8: TIntegerField;
    QMov_CarnesT_KILOS: TIntegerField;
    QMov_CarnesT_MEDIAS: TIntegerField;
    QFcVta_Prod_DetID: TIntegerField;
    QFcVta_Prod_DetID_FCDET: TIntegerField;
    QFcVta_Prod_DetID_FCCAB: TIntegerField;
    QFcVta_Prod_DetCODIGO: TStringField;
    QFcVta_Prod_DetDETALLE: TStringField;
    QFcVta_Prod_DetUNIDAD: TStringField;
    QFcVta_Prod_DetCANTIDAD: TFloatField;
    QFcVta_Prod_DetDEPOSITO_DESTINO: TIntegerField;
    QFcVta_Prod_DetSUCURSAL: TIntegerField;
    QFcVta_Prod_DetFECHA: TSQLTimeStampField;
    QFcVta_Prod_DetAFECTA_STOCK: TStringField;
    QFcVta_Prod_MovID: TIntegerField;
    QFcVta_Prod_MovID_FC_DET: TIntegerField;
    QFcVta_Prod_MovCODIGO: TStringField;
    QFcVta_Prod_MovDETALLE: TStringField;
    QFcVta_Prod_MovCANTIDAD_UNITARIA: TFloatField;
    QFcVta_Prod_MovCANTIDAD_ESTIMADA: TFloatField;
    QFcVta_Prod_MovCANTIDAD_REAL: TFloatField;
    QFcVta_Prod_MovDEPOSITO_ORIGEN: TIntegerField;
    QFcVta_Prod_MovAFECTA_STOCK: TStringField;
    QOpcionesVALOR: TStringField;
    QAplicPorCtroCostoID: TIntegerField;
    QAplicPorCtroCostoID_CPBTE: TIntegerField;
    QAplicPorCtroCostoTIPOCPBTE: TStringField;
    QAplicPorCtroCostoCTRO_COSTO: TIntegerField;
    QAplicPorCtroCostoIMPUTADO: TFloatField;
    QAplicPorCtroCostoTOTAL: TFloatField;
    QAplicPorCtroCostoPORCENTAJE: TFloatField;
    QAplicPorCtroCostoTIPO: TStringField;
    QAplicPorCtroCostoCONCEPTO: TStringField;
    QAplicPorCtroCostoDETALLE_CONCEP: TStringField;
    QAplicPorCtroCostoIMPORTE_LINEA: TFloatField;
    QAplicPorCtroCostoPORCENTAJE_TOTAL: TFloatField;
    QAplicPorCtroCostoDESCRIPCION: TStringField;
    QCajaCabID_CAJA: TIntegerField;
    QCajaCabID_CUENTA_CAJA: TIntegerField;
    QCajaCabFECHA_INCIO: TSQLTimeStampField;
    QCajaCabFECHA_CIERRE: TSQLTimeStampField;
    QCajaCabSALDO_INCIAL: TFloatField;
    QCajaCabESTADO: TIntegerField;
    QCajaCabOBS: TMemoField;
    QCajaCabNUMEROCAJA: TIntegerField;
    QCajaCabMUESTRACTACAJA: TStringField;
    QPercepcionIBID_PERCEPCION: TIntegerField;
    QPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIBDETALLE: TStringField;
    QPercepcionIBID_FCCOMPCAB: TIntegerField;
    QPercepcionIBNETO: TFloatField;
    QPercepcionIBTASA: TFloatField;
    QPercepcionIBIMPORTE: TFloatField;
    QPercepcionIBJURIDICION: TIntegerField;
    QTasaPercepcioIBCODIGO: TIntegerField;
    QTasaPercepcioIBDESCRIPCION: TStringField;
    QTasaPercepcioIBTASA: TFloatField;
    QTasaPercepcioIBMINIMOAPLICABLE: TFloatField;
    QTasaPercepcioIBCOLUMNA: TSmallintField;
    QTasaPercepcioIBJURIDICION: TIntegerField;
    QTasaPercepcioIvaCODIGO: TIntegerField;
    QTasaPercepcioIvaDESCRIPCION: TStringField;
    QTasaPercepcioIvaTASA: TFloatField;
    QTasaPercepcioIvaMINIMOAPLICABLE: TFloatField;
    QTasaPercepcioIvaCOLUMNA: TSmallintField;
    QTasaPercepcioIvaCODIGOREGIMEN: TIntegerField;
    QEgresoCajaID_EGRESO: TIntegerField;
    QEgresoCajaTIPOCPBTE: TStringField;
    QEgresoCajaCLASECPBTE: TStringField;
    QEgresoCajaLETRA: TStringField;
    QEgresoCajaSUC: TStringField;
    QEgresoCajaNUMERO: TStringField;
    QEgresoCajaSUCURSALVENTA: TIntegerField;
    QEgresoCajaFECHA: TSQLTimeStampField;
    QEgresoCajaCODIGO_GASTO: TStringField;
    QEgresoCajaRUBRO_GASTO: TStringField;
    QEgresoCajaIMPORTE: TFloatField;
    QEgresoCajaDETALLE2: TStringField;
    QEgresoCajaNROCPBTE: TStringField;
    QEgresoCajaOBS: TMemoField;
    QEgresoCajaUSUARIO: TStringField;
    QEgresoCajaFECHA_HORA: TSQLTimeStampField;
    QEgresoCajaNUMERO_OPERACION: TStringField;
    QEgresoCajaMUESTRASUCURSAL: TStringField;
    QEgresoCajaMUESTRACOMPROBANTE: TStringField;
    QEgresoCajaID_TIPOCOMPROBANTE: TIntegerField;
    QEgresoCajaDetalleID: TIntegerField;
    QEgresoCajaDetalleID_CPBTE: TIntegerField;
    QEgresoCajaDetalleTIPOCPBTE: TStringField;
    QEgresoCajaDetalleCLASECPBTE: TStringField;
    QEgresoCajaDetalleNROCPBTE: TStringField;
    QEgresoCajaDetalleFECHACPBTE: TSQLTimeStampField;
    QEgresoCajaDetalleFECHAGASTO: TSQLTimeStampField;
    QEgresoCajaDetalleRUBROGASTO: TStringField;
    QEgresoCajaDetalleCODIGOGASTO: TStringField;
    QEgresoCajaDetalleDETALLE: TStringField;
    QEgresoCajaDetalleIMPORTE: TFloatField;
    QEgresoCajaDetalleSUCURSALVENTA: TIntegerField;
    QEgresoCajaDetalleMUESTRARUBRO: TStringField;
    QEgresoCajaDetalleMUESTRACUENTA: TStringField;
    QAnulacionOPagoID_ANULACION: TIntegerField;
    QAnulacionOPagoTIPOCPBTE: TStringField;
    QAnulacionOPagoCLASECPBTE: TStringField;
    QAnulacionOPagoNROCPBTE: TStringField;
    QAnulacionOPagoCODIGO: TStringField;
    QAnulacionOPagoLETRA: TStringField;
    QAnulacionOPagoSUC: TStringField;
    QAnulacionOPagoNUMERO: TStringField;
    QAnulacionOPagoNOMBRE: TStringField;
    QAnulacionOPagoRAZONSOCIAL: TStringField;
    QAnulacionOPagoCPOSTAL: TStringField;
    QAnulacionOPagoLOCALIDAD: TStringField;
    QAnulacionOPagoTIPOIVA: TIntegerField;
    QAnulacionOPagoCUIT: TStringField;
    QAnulacionOPagoFECHA: TSQLTimeStampField;
    QAnulacionOPagoTOTAL: TFloatField;
    QAnulacionOPagoOBSERVACIONES1: TStringField;
    QAnulacionOPagoOBSERVACIONES2: TStringField;
    QAnulacionOPagoSUCURSAL: TIntegerField;
    QAnulacionOPagoUSUARIO: TStringField;
    QAnulacionOPagoMUESTRASUCURSAL: TStringField;
    QAnulacionOPagoMUESTRACOMPROBANTE: TStringField;
    QAnulacionOPagoID_TIPOCOMPROBANTE: TIntegerField;
    QAjusteCabID_RTO: TIntegerField;
    QAjusteCabFECHA: TSQLTimeStampField;
    QAjusteCabLETRA: TStringField;
    QAjusteCabSUCRTO: TStringField;
    QAjusteCabNUMRTO: TStringField;
    QAjusteCabSUCURSAL: TIntegerField;
    QAjusteCabNROCPBTE: TStringField;
    QAjusteCabTIPOCPBTE: TStringField;
    QAjusteCabCLASECPBTE: TStringField;
    QAjusteCabOBS: TStringField;
    QAjusteCabDEPOSITO: TIntegerField;
    QAjusteCabAJUSTE_CERO_STOCK: TStringField;
    QAjusteCabUSUARIO: TStringField;
    QAjusteCabFECHA_HORA: TSQLTimeStampField;
    QAjusteCabTOTAL: TFloatField;
    QAjusteCabTOTAL_VTA: TFloatField;
    QAjusteCabLISTAPRECIO: TIntegerField;
    QAjusteCabMOTIVO: TIntegerField;
    QAjusteCabID_INVENTARIO: TIntegerField;
    QAjusteCabPERSONAL_RETIRA: TStringField;
    QAjusteCabMUESTRACOMPROBANTE: TStringField;
    QAjusteCabID_TIPOCOMPROBANTE: TIntegerField;
    QAjusteCabMUESTRASUCURSAL: TStringField;
    QAjusteCabMUESTRADEPOSITO: TStringField;
    QAjusteCabMUESTRAPERSONAL: TStringField;
    QAjusteDetID_RTO_DET: TIntegerField;
    QAjusteDetID_RTO_CAB: TIntegerField;
    QAjusteDetFECHA: TSQLTimeStampField;
    QAjusteDetCODIGO: TStringField;
    QAjusteDetDETALLE: TStringField;
    QAjusteDetUNIDAD: TStringField;
    QAjusteDetCANTIDAD: TFloatField;
    QAjusteDetNROCPBTE: TStringField;
    QAjusteDetDEPOSITO: TIntegerField;
    QAjusteDetCLASECPBTE: TStringField;
    QAjusteDetTIPOCPBTE: TStringField;
    QAjusteDetAFECTASTOCK: TStringField;
    QAjusteDetSTOCK_ACTUAL_COMPRA: TFloatField;
    QAjusteDetSTOCK_ACTUAL_VTA: TFloatField;
    QAjusteDetCON_NRO_SERIE: TStringField;
    QAjusteDetCOSTO_UNITARIO: TFloatField;
    QAjusteDetCOSTO_TOTAL: TFloatField;
    QAjusteDetPRECIO_UNITARIO: TFloatField;
    QAjusteDetPRECIO_TOTAL: TFloatField;
    QAjusteDetCONTROL_TRAZABILIDAD: TStringField;
    QAjusteDetUNIDADES_STK: TFloatField;
    QAjusteDetPRESENT_CANTIDAD: TFloatField;
    QAjusteDetID_MOTIVO: TIntegerField;
    QAjusteDetMUESTRACODALTERNATIVO: TStringField;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QProveedoresN_DE_CUENTA: TStringField;
    QProveedoresID_COD_POSTAL: TIntegerField;
    QProveedoresCOD_POSTAL: TStringField;
    QProveedoresLOCALIDAD: TStringField;
    QProveedoresDIRECCION: TStringField;
    QProveedoresTELEFONO_1: TStringField;
    QProveedoresTELEFONO_2: TStringField;
    QProveedoresCONDICION_IVA: TIntegerField;
    QProveedoresN_DE_CUIT: TStringField;
    QProveedoresACTIVO: TStringField;
    QProveedoresRETIENE_IVA: TStringField;
    QProveedoresRETIENE_IB: TStringField;
    QProveedoresRETIENE_GANANCIAS: TStringField;
    QProveedoresIVA_SERVICIOS: TStringField;
    QProveedoresPRECIOS_CON_IVA: TStringField;
    QProveedoresOBSERVACIONES: TMemoField;
    QProveedoresNOMBRE_REPRESENTANTE: TStringField;
    QProveedoresDIRECCION_REPRESENTANTE: TStringField;
    QProveedoresTELEFONO_REPRESENTANTE: TStringField;
    QProveedoresTIPO_PROVEEDOR: TStringField;
    QProveedoresFECHAULTIMACOMPRA: TSQLTimeStampField;
    QProveedoresFECHAALTA: TSQLTimeStampField;
    QProveedoresSALDO_INICIAL: TFloatField;
    QProveedoresID_PERC_IVA: TIntegerField;
    QProveedoresID_PERC_IBB: TIntegerField;
    QProveedoresID_PERC_IBB_2: TIntegerField;
    QProveedoresID_PERC_IBB_3: TIntegerField;
    QProveedoresRUBRO: TIntegerField;
    QProveedoresID_FACTURAPORDEFECTO: TIntegerField;
    QProveedoresID_FACTURACTDODEFECTO: TIntegerField;
    QProveedoresEXENTO_GANACIA: TStringField;
    QProveedoresCODIGO_REGIMEN_RET_GANACIA: TIntegerField;
    QProveedoresEXENTO_RETENCION_IB: TStringField;
    QProveedoresID_TASA_RETENCION_IB: TIntegerField;
    QProveedoresNRO_IIBB: TStringField;
    QProveedoresCORREO: TStringField;
    QProveedoresCONV_MULTI: TStringField;
    QProveedoresMONEDA_PRECIOS: TIntegerField;
    QProveedoresRUBRO_GASTO: TStringField;
    QProveedoresSUB_RUB_GASTOS: TStringField;
    QProveedoresCON_OCOMPRA: TStringField;
    QProveedoresAUTORIZADO_NOMBRE: TStringField;
    QProveedoresAUTORIZADO_TIPODOC: TStringField;
    QProveedoresAUTORIZADO_NRODOC: TStringField;
    QProveedoresRETENCION_IVA: TStringField;
    QProveedoresCODIGO_RET_IVA: TIntegerField;
    QProveedoresPORCENTAJE_RET_IVA: TSingleField;
    QProveedoresTELEDISCADO: TStringField;
    QProveedoresDESPERIVA: TStringField;
    QProveedoresDESPERIB: TStringField;
    QProveedoresDESPERIB2: TStringField;
    QProveedoresMUESTRADETALLERETIIBB: TStringField;
    QProveedoresMUESTRATASARETIIBB: TFloatField;
    QProveedoresMUESTRAMINIMPONIRETIIBB: TFloatField;
    QLDRClienteCODIGO_CLIENTE: TStringField;
    QLDRClienteCODIGO_LDR: TIntegerField;
    QLDRClienteNOMBRE: TStringField;
    QLDRClienteDIRECCION: TStringField;
    QLDRClienteCPOSTAL: TStringField;
    QLDRClienteLOCALIDAD: TStringField;
    QLDRClientePROVINCIA: TIntegerField;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
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
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesID_PLANTILLA: TIntegerField;
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
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesENVIAR_CPTE_MAIL: TStringField;
    QClientesNRO_IP: TStringField;
    QClientesCHEQUES: TStringField;
    QClientesID_ADMINISTRACION: TIntegerField;
    QClientesOBRA_SOCIAL: TIntegerField;
    QClientesNRO_AFILIADO: TStringField;
    QClientesNICKNAME_MERCADOPAGO: TStringField;
    QClientesBUSCADOR: TStringField;
    QClientesMUESTRATELEDISCADO: TStringField;
    QClientesMUESTRAVENDEDOR: TStringField;
    QClientesMUESTRACOBRADOR: TStringField;
    QClientesMUESTRACTACOORPORATIVA: TStringField;
    QClientesMUESTRAIDGARANTE: TIntegerField;
    QCompSubDetalleID: TIntegerField;
    QCompSubDetalleID_DETFAC: TIntegerField;
    QCompSubDetalleID_CABFAC: TIntegerField;
    QCompSubDetalleTIPOCPBTE: TStringField;
    QCompSubDetalleCLASECPBTE: TStringField;
    QCompSubDetalleFECHA: TSQLTimeStampField;
    QCompSubDetalleNROCPBTE: TStringField;
    QCompSubDetalleCODIGOARTICULO: TStringField;
    QCompSubDetalleSERIE: TStringField;
    QCompSubDetalleDEPOSITO: TIntegerField;
    QOrdenTrabajoCabID_OT: TIntegerField;
    QOrdenTrabajoCabTIPOCPBTE: TStringField;
    QOrdenTrabajoCabCLASECPBTE: TStringField;
    QOrdenTrabajoCabNROCPBTE: TStringField;
    QOrdenTrabajoCabDESCRIPCION: TMemoField;
    QOrdenTrabajoCabPRODUCTO: TIntegerField;
    QOrdenTrabajoCabLETRAOT: TStringField;
    QOrdenTrabajoCabSUCOT: TStringField;
    QOrdenTrabajoCabNUMEROOT: TStringField;
    QOrdenTrabajoCabFECHAINICIO: TSQLTimeStampField;
    QOrdenTrabajoCabFECHAESTIMADA: TSQLTimeStampField;
    QOrdenTrabajoCabFECHAESTIMADAFIN: TSQLTimeStampField;
    QOrdenTrabajoCabFECHAFINAL: TSQLTimeStampField;
    QOrdenTrabajoCabCONDICIONVTA: TIntegerField;
    QOrdenTrabajoCabANULADO: TStringField;
    QOrdenTrabajoCabNRORTO: TStringField;
    QOrdenTrabajoCabNETOGRAV1: TFloatField;
    QOrdenTrabajoCabNETOGRAV2: TFloatField;
    QOrdenTrabajoCabDSTO: TFloatField;
    QOrdenTrabajoCabDSTOIMPORTE: TFloatField;
    QOrdenTrabajoCabNETOEXEN1: TFloatField;
    QOrdenTrabajoCabNETOEXEN2: TFloatField;
    QOrdenTrabajoCabTOTAL: TFloatField;
    QOrdenTrabajoCabDEBE: TFloatField;
    QOrdenTrabajoCabIMPRESO: TStringField;
    QOrdenTrabajoCabSUCURSAL: TIntegerField;
    QOrdenTrabajoCabDEPOSITO: TIntegerField;
    QOrdenTrabajoCabCALCULA_SOBRETASA: TStringField;
    QOrdenTrabajoCabDESGLOZAIVA: TStringField;
    QOrdenTrabajoCabRESPONSABLE_OT: TStringField;
    QOrdenTrabajoCabUSUARIO: TStringField;
    QOrdenTrabajoCabESTADO: TIntegerField;
    QOrdenTrabajoCabPRIORIDAD_INICIAL: TSmallintField;
    QOrdenTrabajoCabDELTA_PRIORIDAD: TSmallintField;
    QOrdenTrabajoCabPRIORIDAD: TSmallintField;
    QOrdenTrabajoCabENTREGADO: TStringField;
    QOrdenTrabajoCabCODIGO: TStringField;
    QOrdenTrabajoCabLDR: TIntegerField;
    QOrdenTrabajoCabNOMBRE: TStringField;
    QOrdenTrabajoCabRAZONSOCIAL: TStringField;
    QOrdenTrabajoCabDIRECCION: TStringField;
    QOrdenTrabajoCabTIPOIVA: TIntegerField;
    QOrdenTrabajoCabCUIT: TStringField;
    QOrdenTrabajoCabCPOSTAL: TStringField;
    QOrdenTrabajoCabLOCALIDAD: TStringField;
    QOrdenTrabajoCabZONA: TIntegerField;
    QOrdenTrabajoCabFACTURA_ID_COMPROBANTE: TIntegerField;
    QOrdenTrabajoCabFACTURANRO: TStringField;
    QOrdenTrabajoCabFACTURA_ID: TIntegerField;
    QOrdenTrabajoCabFACTURA_TIPO: TStringField;
    QOrdenTrabajoCabFACTURA_CLASE: TStringField;
    QOrdenTrabajoCabFECHAFACTURA: TSQLTimeStampField;
    QOrdenTrabajoCabRESPONSABLE_TURNO: TStringField;
    QOrdenTrabajoCabARCHIVADA: TStringField;
    QOrdenTrabajoCabRECLAMADA: TStringField;
    QOrdenTrabajoCabTOTALHORAS: TSQLTimeStampField;
    QOrdenTrabajoCabPUNTOS: TFloatField;
    QOrdenTrabajoCabOBSERVACION1: TMemoField;
    QOrdenTrabajoCabLISTAPRECIO: TIntegerField;
    QOrdenTrabajoCabMAILENVIADO: TStringField;
    QOrdenTrabajoCabSENIA: TFloatField;
    QOrdenTrabajoCabOT_ANTERIOR_ID: TIntegerField;
    QOrdenTrabajoCabOT_ANTERIOR_NROCPBTE: TStringField;
    QOrdenTrabajoCabTELEFONO1: TStringField;
    QOrdenTrabajoCabTELEFONO2: TStringField;
    QOrdenTrabajoCabCORREOELECTRONICO: TStringField;
    QOrdenTrabajoCabDESCRIPCIONPRODUCTO: TStringField;
    QOrdenTrabajoCabIDENTIFICADORPRODUCTO: TStringField;
    QOrdenTrabajoCabMOTIVO_OTRABAJO: TIntegerField;
    QOrdenTrabajoCabFECHA_HORA: TSQLTimeStampField;
    QOrdenTrabajoCabTELEFONO_CELULAR: TStringField;
    QOrdenTrabajoCabID_AJUSTE_STOCK: TIntegerField;
    QOrdenTrabajoCabOBSERVACION2: TMemoField;
    QOrdenTrabajoCabPROBLEMA: TMemoField;
    QOrdenTrabajoCabPASSWORD: TStringField;
    QOrdenTrabajoCabPATRON: TStringField;
    QOrdenTrabajoCabMUESTRACONDVENTA: TStringField;
    QOrdenTrabajoCabMUESTRADEPOSITO: TStringField;
    QOrdenTrabajoCabMUESTRASUCURSAL: TStringField;
    QOrdenTrabajoCabMUESTRALDR: TStringField;
    QOrdenTrabajoCabMUESTRAIVA: TStringField;
    QOrdenTrabajoCabMUESTRACOMPROBANTE: TStringField;
    QOrdenTrabajoCabID_TIPOCOMPROBANTE: TIntegerField;
    QOrdenTrabajoCabMUESTRARESPONSABLEOT: TStringField;
    QOrdenTrabajoCabMUESTRARESPONSABLETURNO: TStringField;
    QOrdenTrabajoCabMUESTRATIPOFACTURA: TStringField;
    QOrdenTrabajoCabMUESTRATELEFONO1: TStringField;
    QOrdenTrabajoCabMUESTRATELEFONO2: TStringField;
    QOrdenTrabajoCabMUESTRACELULAR: TStringField;
    QOrdenTrabajoCabMUESTRANRODOC: TStringField;
    QOrdenTrabajoCabMUESTRANROAJUSTE: TStringField;
    QOrdenTrabajoDetID: TIntegerField;
    QOrdenTrabajoDetID_CABOT: TIntegerField;
    QOrdenTrabajoDetTIPOCPBTE: TStringField;
    QOrdenTrabajoDetCLASECPBTE: TStringField;
    QOrdenTrabajoDetNROCPBTE: TStringField;
    QOrdenTrabajoDetRENGLON: TFloatField;
    QOrdenTrabajoDetFECHAVTA: TSQLTimeStampField;
    QOrdenTrabajoDetCODIGOARTICULO: TStringField;
    QOrdenTrabajoDetDETALLE: TStringField;
    QOrdenTrabajoDetUNIDAD: TStringField;
    QOrdenTrabajoDetCANTIDAD: TFloatField;
    QOrdenTrabajoDetUNITARIO_TOTAL: TFloatField;
    QOrdenTrabajoDetUNITARIO_GRAVADO: TFloatField;
    QOrdenTrabajoDetUNITARIO_EXENTO: TFloatField;
    QOrdenTrabajoDetDESGLOZAIVA: TStringField;
    QOrdenTrabajoDetMODO_GRAVAMEN: TStringField;
    QOrdenTrabajoDetIVA_TASA: TFloatField;
    QOrdenTrabajoDetTIPOIVA_TASA: TIntegerField;
    QOrdenTrabajoDetIVA_SOBRETASA: TFloatField;
    QOrdenTrabajoDetTIPOIVA_SOBRETASA: TIntegerField;
    QOrdenTrabajoDetCOSTO_GRAVADO: TFloatField;
    QOrdenTrabajoDetCOSTO_EXENTO: TFloatField;
    QOrdenTrabajoDetCOSTO_TOTAL: TFloatField;
    QOrdenTrabajoDetDESCUENTO: TFloatField;
    QOrdenTrabajoDetTOTAL: TFloatField;
    QOrdenTrabajoDetDEPOSITO: TIntegerField;
    QOrdenTrabajoDetMARGEN: TFloatField;
    QOrdenTrabajoDetAFECTA_STOCK: TStringField;
    QOrdenTrabajoDetCALCULA_SOBRETASA: TStringField;
    QOrdenTrabajoDetGRAVADO_IB: TStringField;
    QOrdenTrabajoDetCOTIZACION: TFloatField;
    QOrdenTrabajoDetID_MONEDA: TIntegerField;
    QOrdenTrabajoDetCON_NROSERIE: TStringField;
    QImpuestoOrdenTrabajoID_OTCAB: TIntegerField;
    QImpuestoOrdenTrabajoID_IMPUESTO: TIntegerField;
    QImpuestoOrdenTrabajoCODIGO_GRAVAMEN: TIntegerField;
    QImpuestoOrdenTrabajoDETALLE: TStringField;
    QImpuestoOrdenTrabajoNETO: TFloatField;
    QImpuestoOrdenTrabajoTASA: TFloatField;
    QImpuestoOrdenTrabajoIMPORTE: TFloatField;
    QOrdenTrabajoMovimientosID: TIntegerField;
    QOrdenTrabajoMovimientosID_OTCAB: TIntegerField;
    QOrdenTrabajoMovimientosFECHA: TSQLTimeStampField;
    QOrdenTrabajoMovimientosDETALLE: TMemoField;
    QOrdenTrabajoMovimientosHORAINICIO: TSQLTimeStampField;
    QOrdenTrabajoMovimientosHORAFINAL: TSQLTimeStampField;
    QOrdenTrabajoMovimientosPRUDUCTO: TIntegerField;
    QOrdenTrabajoMovimientosTOTALTIEMPO: TSQLTimeStampField;
    QOrdenTrabajoMovimientosCLIENTE: TStringField;
    QOrdenTrabajoMovimientosOPERARIO: TStringField;
    QOrdenTrabajoMovimientosMAILENVIADO: TStringField;
    QInscripcionCODIGO: TIntegerField;
    QInscripcionDETALLE: TStringField;
    QInscripcionAPLICAPERCEPCIONIVA: TStringField;
    QInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    QInscripcionCOBRASOBRETASA: TStringField;
    QInscripcionDISCRIMINAIVA: TStringField;
    QIvaCODIGO: TIntegerField;
    QIvaDESCRIPCION: TStringField;
    QIvaTASA: TFloatField;
    QIvaCOLUMNA: TSmallintField;
    QRubroGastoCODIGO: TStringField;
    QRubroGastoDETALLE: TStringField;
    QCtaGastoCODIGO: TStringField;
    QCtaGastoCODIGO_RUBRO: TStringField;
    QCtaGastoDETALLE: TStringField;
    QCtaGastoEXCLUYE: TStringField;
    DSPCodigoBarra: TDataSetProvider;
    CDSCodigoBarra: TClientDataSet;
    CDSCodigoBarraCODIGO_STK: TStringField;
    QCodigoB: TFDQuery;
    DSPVerifRes3886: TDataSetProvider;
    CDSVerifRes3886: TClientDataSet;
    QVerifRes3886: TFDQuery;
    QVentaDetMUESTRAORDENPRODUCCION: TIntegerField;
    QDstoUser: TFDQuery;
    QUsuariosAdminNP: TFDQuery;
    QBuscaRto: TFDQuery;
    QBuscaRtoID_RTO: TIntegerField;
    QBuscaRtoCODIGO: TStringField;
    QBuscaRtoNOMBRE: TStringField;
    QBuscaRtoFECHAVTA: TSQLTimeStampField;
    QBuscaRtoTOTAL: TFloatField;
    QGrupoCpbteVta: TFDQuery;
    QGrupoCpbteVtaID_CAB: TIntegerField;
    QNotaPedidoImp: TFDQuery;
    QNotaPedidoDet: TFDQuery;
    QNotaPedidoCab: TFDQuery;
    QNotaPedidoCabID: TIntegerField;
    QNotaPedidoCabTIPOCPBTE: TStringField;
    QNotaPedidoCabCLASECPBTE: TStringField;
    QNotaPedidoCabNROCPBTE: TStringField;
    QNotaPedidoCabCODIGO: TStringField;
    QNotaPedidoCabLETRANP: TStringField;
    QNotaPedidoCabSUCNP: TStringField;
    QNotaPedidoCabNUMERONP: TStringField;
    QNotaPedidoCabNOMBRE: TStringField;
    QNotaPedidoCabRAZONSOCIAL: TStringField;
    QNotaPedidoCabDIRECCION: TStringField;
    QNotaPedidoCabCPOSTAL: TStringField;
    QNotaPedidoCabLOCALIDAD: TStringField;
    QNotaPedidoCabTIPOIVA: TIntegerField;
    QNotaPedidoCabCUIT: TStringField;
    QNotaPedidoCabLISTAPRECIO: TIntegerField;
    QNotaPedidoCabFECHAPEDIDO: TSQLTimeStampField;
    QNotaPedidoCabFECHAVTO: TSQLTimeStampField;
    QNotaPedidoCabCONDICIONVTA: TIntegerField;
    QNotaPedidoCabNETOGRAV1: TFloatField;
    QNotaPedidoCabNETOGRAV2: TFloatField;
    QNotaPedidoCabDSTO: TFloatField;
    QNotaPedidoCabDSTOIMPORTE: TFloatField;
    QNotaPedidoCabNETOEXEN1: TFloatField;
    QNotaPedidoCabNETOEXEN2: TFloatField;
    QNotaPedidoCabTOTAL: TFloatField;
    QNotaPedidoCabDEBE: TFloatField;
    QNotaPedidoCabIMPRESO: TStringField;
    QNotaPedidoCabOBSERVACION1: TStringField;
    QNotaPedidoCabOBSERVACION2: TStringField;
    QNotaPedidoCabSUCURSAL: TIntegerField;
    QNotaPedidoCabZONA: TIntegerField;
    QNotaPedidoCabLDR: TIntegerField;
    QNotaPedidoCabDEPOSITO: TIntegerField;
    QNotaPedidoCabCALCULA_SOBRETASA: TStringField;
    QNotaPedidoCabDESGLOZAIVA: TStringField;
    QNotaPedidoCabCOMISIONVENDEDOR: TFloatField;
    QNotaPedidoCabVENDEDOR: TStringField;
    QNotaPedidoCabUSUARIO: TStringField;
    QNotaPedidoCabRENGLONES: TSmallintField;
    QNotaPedidoCabORIGEN_ID_NOTA_PEDIDO: TIntegerField;
    QNotaPedidoCabORIGEN_TIPOCPBTE: TStringField;
    QNotaPedidoCabORIGEN_NROCPBTE: TStringField;
    QNotaPedidoCabCOPIA: TSmallintField;
    QNotaPedidoCabENTREGA_ID_CPBTE: TIntegerField;
    QNotaPedidoCabENTREGA_TIPOCPBTE: TStringField;
    QNotaPedidoCabENTREGA_NROCPBTE: TStringField;
    QNotaPedidoCabESTADO: TStringField;
    QNotaPedidoCabPRESUPUESTO_ID: TIntegerField;
    QNotaPedidoCabPRESUPUESTO_NROCPBTE: TStringField;
    QNotaPedidoCabMUESTRACONDVENTA: TStringField;
    QNotaPedidoCabMUESTRADEPOSITO: TStringField;
    QNotaPedidoCabMUESTRASUCURSAL: TStringField;
    QNotaPedidoCabMUESTRALDR: TStringField;
    QNotaPedidoCabMUESTRAIVA: TStringField;
    QNotaPedidoCabMUESTRACOMPROBANTE: TStringField;
    QNotaPedidoCabID_TIPOCOMPROBANTE: TIntegerField;
    QNotaPedidoCabMUESTRAVENDEDOR: TStringField;
    QNotaPedidoDetID: TIntegerField;
    QNotaPedidoDetID_CABNP: TIntegerField;
    QNotaPedidoDetTIPOCPBTE: TStringField;
    QNotaPedidoDetCLASECPBTE: TStringField;
    QNotaPedidoDetNROCPBTE: TStringField;
    QNotaPedidoDetRENGLON: TFloatField;
    QNotaPedidoDetFECHAPEDIOD: TSQLTimeStampField;
    QNotaPedidoDetCODIGOARTICULO: TStringField;
    QNotaPedidoDetDETALLE: TStringField;
    QNotaPedidoDetUNIDAD: TStringField;
    QNotaPedidoDetDESGLOZAIVA: TStringField;
    QNotaPedidoDetMODO_GRAVAMEN: TStringField;
    QNotaPedidoDetIVA_TASA: TFloatField;
    QNotaPedidoDetIVA_SOBRETASA: TFloatField;
    QNotaPedidoDetTIPOIVA_TASA: TIntegerField;
    QNotaPedidoDetTIPOIVA_SOBRETASA: TIntegerField;
    QNotaPedidoDetCANTIDAD_PEDIDIA: TFloatField;
    QNotaPedidoDetCANTIDAD_ENTREGADA: TFloatField;
    QNotaPedidoDetCANTIDAD_FALTANTE: TFloatField;
    QNotaPedidoDetCOSTO_EXENTO: TFloatField;
    QNotaPedidoDetCOSTO_GRAVADO: TFloatField;
    QNotaPedidoDetCOSTO_TOTAL: TFloatField;
    QNotaPedidoDetUNITARIO_EXENTO: TFloatField;
    QNotaPedidoDetUNITARIO_GRAVADO: TFloatField;
    QNotaPedidoDetIVA_UNITARIO: TFloatField;
    QNotaPedidoDetUNITARIO_TOTAL: TFloatField;
    QNotaPedidoDetTOTAL_EXENTO: TFloatField;
    QNotaPedidoDetTOTAL_GRAVADO: TFloatField;
    QNotaPedidoDetIVA_TOTAL: TFloatField;
    QNotaPedidoDetTOTAL: TFloatField;
    QNotaPedidoDetDESCUENTO: TFloatField;
    QNotaPedidoDetDEPOSITO: TIntegerField;
    QNotaPedidoDetMARGEN: TFloatField;
    QNotaPedidoDetAFECTA_STOCK: TStringField;
    QNotaPedidoDetCALCULA_SOBRETASA: TStringField;
    QNotaPedidoDetGRAVADO_IB: TStringField;
    QNotaPedidoDetID_MONEDA: TIntegerField;
    QNotaPedidoDetCOTIZACION: TFloatField;
    QNotaPedidoDetCANTIDAD_UNIDADES: TFloatField;
    QNotaPedidoDetPRESENTACION_CANTI: TFloatField;
    QNotaPedidoDetMUESTRASIGNO: TStringField;
    QNotaPedidoDetMUESTRACODALTERNATIVO: TStringField;
    QTabla_Users: TFDQuery;
    QTabla_Acces: TFDQuery;
    QTabla_Groups: TFDQuery;
    QTabla_Group_Acc: TFDQuery;
    QTabla_Members: TFDQuery;
    QTabla_permissions: TFDQuery;
    DSTabla_Users: TDataSource;
    DSTabla_Acces: TDataSource;
    DSTabla_Groups: TDataSource;
    DSTabla_Group_Acc: TDataSource;
    DSTabla_permissions: TDataSource;
    DSTabla_Members: TDataSource;
    QTabla_UsersUSER_ID: TIntegerField;
    QTabla_UsersLOGINNAME: TStringField;
    QTabla_UsersFULLNAME: TStringField;
    QTabla_UsersPASSWORD: TStringField;
    QTabla_UsersLASTACCES: TSQLTimeStampField;
    QTabla_UsersENABLED: TStringField;
    QTabla_UsersCREATEDATE: TSQLTimeStampField;
    QTabla_UsersLASTACCTIME: TSQLTimeStampField;
    QTabla_UsersCREATETIME: TSQLTimeStampField;
    QTabla_UsersACCESSOUNT: TIntegerField;
    QTabla_AccesID: TIntegerField;
    QTabla_AccesUSERNAME: TStringField;
    QTabla_AccesPERMISSION: TStringField;
    QTabla_GroupsID: TIntegerField;
    QTabla_GroupsNAME: TStringField;
    QTabla_GroupsDESCRIPTION: TStringField;
    QTabla_Group_AccGROUP_NAME: TStringField;
    QTabla_Group_AccPERMISSIONS: TStringField;
    QTabla_MembersUSERNAME: TStringField;
    QTabla_MembersGROUPNAME: TStringField;
    QTabla_permissionsPERMISSION: TStringField;
    QTabla_permissionsITEMS: TMemoField;
    QTabla_permissionsACTION: TIntegerField;
    QTabla_permissionsFORMNAME: TStringField;
    QAnulacioRecibos: TFDQuery;
    QAnulacioRecibosID_ANULACION: TIntegerField;
    QAnulacioRecibosTIPOCPBTE: TStringField;
    QAnulacioRecibosCLASECPBTE: TStringField;
    QAnulacioRecibosNROCPBTE: TStringField;
    QAnulacioRecibosCODIGO: TStringField;
    QAnulacioRecibosLETRA: TStringField;
    QAnulacioRecibosSUC: TStringField;
    QAnulacioRecibosNUMERO: TStringField;
    QAnulacioRecibosNOMBRE: TStringField;
    QAnulacioRecibosRAZONSOCIAL: TStringField;
    QAnulacioRecibosCPOSTAL: TStringField;
    QAnulacioRecibosLOCALIDAD: TStringField;
    QAnulacioRecibosTIPOIVA: TIntegerField;
    QAnulacioRecibosCUIT: TStringField;
    QAnulacioRecibosFECHA: TSQLTimeStampField;
    QAnulacioRecibosTOTAL: TFloatField;
    QAnulacioRecibosOBSERVACIONES1: TStringField;
    QAnulacioRecibosOBSERVACIONES2: TStringField;
    QAnulacioRecibosSUCURSAL: TIntegerField;
    QAnulacioRecibosUSUARIO: TStringField;
    QAnulacioRecibosMUESTRASUCURSAL: TStringField;
    QAnulacioRecibosMUESTRACOMPROBANTE: TStringField;
    QAnulacioRecibosID_TIPOCOMPROBANTE: TIntegerField;
    QVentaCabLOTEAFIP: TStringField;
    QClientesFECHA_INACTIVO: TSQLTimeStampField;
    QPersonalCODIGO_RELOJ: TStringField;
    QCompraCabLOTE_AFIP: TStringField;
    QPersonalLEGAJO: TStringField;
    FDMoniFlatFileClientLink: TFDMoniFlatFileClientLink;
    QRecepLote: TFDQuery;
    QAjustesLoteID: TIntegerField;
    QAjustesLoteID_DET: TIntegerField;
    QAjustesLoteID_FC: TIntegerField;
    QAjustesLoteID_LOTE: TIntegerField;
    QAjustesLoteCODIGO: TStringField;
    QAjustesLoteLOTE: TStringField;
    QAjustesLoteDESPACHO: TStringField;
    QAjustesLoteCANTIDAD: TFloatField;
    QAjustesLoteFECHA: TDateField;
    QAjustesLoteFECHAVTO: TDateField;
    QAjustesLoteDEPOSITO: TIntegerField;
    QAjustesLoteTIPO_COMPROB: TStringField;
    QCompLotesID: TIntegerField;
    QCompLotesID_DET: TIntegerField;
    QCompLotesID_FC: TIntegerField;
    QCompLotesID_LOTE: TIntegerField;
    QCompLotesCODIGO: TStringField;
    QCompLotesLOTE: TStringField;
    QCompLotesDESPACHO: TStringField;
    QCompLotesCANTIDAD: TFloatField;
    QCompLotesDEPOSITO: TIntegerField;
    QCompLotesTIPO_COMPROB: TStringField;
    QRecepLoteID: TIntegerField;
    QRecepLoteID_DETRECP: TIntegerField;
    QRecepLoteID_CABRECP: TIntegerField;
    QRecepLoteID_LOTE: TIntegerField;
    QRecepLoteCODIGO: TStringField;
    QRecepLoteLOTE: TStringField;
    QRecepLoteDESPACHO: TStringField;
    QRecepLoteCANTIDAD: TFloatField;
    QRecepLoteDEPOSITO: TIntegerField;
    QRecepLoteTIPO_COMPROB: TStringField;
    QCompraCabFECHACOMPRA: TSQLTimeStampField;
    QCompraDetFECHACOMPRA: TSQLTimeStampField;
    QRecepLoteFECHA: TSQLTimeStampField;
    QRecepLoteFECHAVTO: TSQLTimeStampField;
    QCompLotesFECHA: TSQLTimeStampField;
    QCompLotesFECHAVTO: TSQLTimeStampField;
    FdcUser: TFDConnection;
    QEmpresaCOD_ACTIVIDAD: TStringField;
    QVentaCabCODIGO_ACTIVIDAD: TStringField;
    QProvincia: TFDQuery;
    QProvinciaID_PRO: TIntegerField;
    QProvinciaNOMBRE: TStringField;
    QProvinciaCODIGO_COT: TStringField;
    QRemitoCabMUESTRAPROVINCIA: TStringField;
    QRemitoCabLETRACOT: TStringField;
    QEmpresaNOMBRE_FANTASIA: TStringField;
    QExistenciaCODIGO_STK: TStringField;
    QExistenciaDETALLE_STK: TStringField;
    QExistenciaFISICO: TFloatField;
    QExistenciaCOMPROMETIDO: TFloatField;
    QExistenciaSALDO: TFloatField;
    QExistenciaDEPOSITO_STK: TIntegerField;
    QExistenciaEN_TRANSITO: TFloatField;
    QExistenciaACOPIO: TFloatField;
    QExistenciaDEPOSITO_NOMBRE: TStringField;
    QExistenciaSEC: TStringField;
    QExistenciaUBIC: TStringField;
    QExistenciaFULTAJUSTE: TSQLTimeStampField;
    QEmpresaCODIGO_COT: TStringField;
    QEmpresaDIRECCION_NRO: TStringField;
    QVentaCabTRANSPORTE_UNIDAD: TIntegerField;
    QVentaCabTRANSPORTE_ADICIONAL: TIntegerField;
    QVentaCabID_CHOFER: TIntegerField;
    QRemitoCabMUESTRADOMINIOUNIDTR: TStringField;
    QVentaCabMUESTRACHOFER: TStringField;
    QVentaCabMUESTRATPDOCCHOFER: TStringField;
    QVentaCabMUESTRANRDOCCHOFER: TStringField;
    QVentaCabMUESTRADOMINIOUNIDADTR: TStringField;
    QVentaCabMUESTRAAUXILIARTR: TStringField;
    QVentaCabMUESTRADIRTRANSPORTE: TStringField;
    QVentaCabMUESTRATETRANSPORTE: TStringField;
    QVentaCabMUESTRALOCALITRANSPORTE: TStringField;
    QVentaCabMUESTRANOMBRETRANSPORTE: TStringField;
    QVentaCabMUESTRACONDIVATRANSPORTE: TStringField;
    QStockPERCIBE_IVA: TStringField;
    QStockID_TASA_PERCEP_IVA: TIntegerField;
    QStockAPLICA_TASA_DIF: TStringField;
    QPercepcionIvaVta: TFDQuery;
    QPercepcionIvaVtaID_PERCEPCION: TIntegerField;
    QPercepcionIvaVtaCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIvaVtaDETALLE: TStringField;
    QPercepcionIvaVtaID_FCVTACAB: TIntegerField;
    QPercepcionIvaVtaNETO: TFloatField;
    QPercepcionIvaVtaTASA: TFloatField;
    QPercepcionIvaVtaIMPORTE: TFloatField;
    QPercepcionIvaVtaCODIGOREGIMEN: TIntegerField;
    QPercepcionIvaID_PERCEPCION: TIntegerField;
    QPercepcionIvaCODIGO_PERCEPCION: TIntegerField;
    QPercepcionIvaDETALLE: TStringField;
    QPercepcionIvaID_FCCOMPCAB: TIntegerField;
    QPercepcionIvaNETO: TFloatField;
    QPercepcionIvaTASA: TFloatField;
    QPercepcionIvaIMPORTE: TFloatField;
    QPercepcionIvaCODIGOREGIMEN: TIntegerField;
    QEmpresaAG_PERCEPCION_IVA: TStringField;
    QEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    QVentaCabPERCIBE_IVA: TStringField;
    QVentaCabMINIMO_PERCI_IVA: TFloatField;
    QVentaDetPERCIBE_IVA: TStringField;
    QVentaDetTASA_PERCEP_IVA: TFloatField;
    QVentaDetID_TASA_PERCEPCION_IVA: TIntegerField;
    QVentaDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    QVentaCabMUESTRA_UNI_TRANSPORTE: TStringField;
    QVentaCabMUESTRACUITTRANSPORTE: TStringField;
    QRemitoCabCOT: TStringField;
    QVentaCabCOT: TStringField;
    QVentaCabMUESTRADIRECCION_CALLE: TStringField;
    QVentaCabMUESTRADIRECCION_NRO: TStringField;
    QVentaCabMUESTRADIRECCION_PISO: TStringField;
    QVentaCabMUESTRADIRECCION_DEPTO: TStringField;
    QRemitoCabMUESTRADIRECCION_CALLE: TStringField;
    QRemitoCabMUESTRADIRECCION_NRO: TStringField;
    QRemitoCabMUESTRADIRECCION_PISO: TStringField;
    QRemitoCabMUESTRADIRECCION_DEPTO: TStringField;
    QVentaCabLETRACOT: TStringField;
    QStockDISPONIBLE: TStringField;
    QClientesPERCIBE_IVA: TStringField;
    QStockPLU_SECCION: TStringField;
    QStockPRESENTACION_TOLERANCIA: TFloatField;
    QVentaDetPRESENTACION_TOLERANCIA: TFloatField;
    QCompraDetMUESTRACODIGOBARRA: TStringField;
    QCompraDetMUESTRAPRECIOVTA: TFloatField;
    QStockDESCRIPCION_CORTA: TMemoField;
    QStockDESCRIPCION_LARGA: TMemoField;
    QPresuCabPARA_ACOPIO: TStringField;
    QPresuCabMUESTRADIRECCIONSUC: TStringField;
    QPresuCabMUESTRATE1SUC: TStringField;
    QPresuCabMUESTRATE2SUC: TStringField;
    QPresuCabMUESTRARAZONSSUC: TStringField;
    QPresuCabMUESTRALOCALIDADSUC: TStringField;
    QStockCATEGORIAS_WEB: TStringField;
    QCompraDetCANTIDAD_INVENTARIO: TFloatField;
    QOrdenTrabajoCabMUESTRAPRODUCTO: TStringField;
    QOrdenTrabajoCabMUESTRAMODELOPRODUCTO: TStringField;
    QOrdenTrabajoCabMUESTRACATEGORIAPRODUCTO: TStringField;
    QOrdenCompDetMUESTRAPRECIOVTA: TFloatField;
    QOrdenCompDetMUESTRACODIGOBARRA: TStringField;
    QOrdenTrabajoCabMUESTRAMARCAPRODUCTO: TStringField;
    QPersonalAFILIADO: TStringField;
    QPresuCabNETO_ACUMULADO: TFloatField;
    QPresuCabMARGEN_GENERAL: TFloatField;
    QSucursalCOT_CLAVE: TStringField;
    QSucursalCOT_CUIT: TStringField;
    QStockPLU_2: TStringField;
    QStockDETALLE_CORTO: TStringField;
    QPresuCabMUESTRALDRDIRECCION: TStringField;
    QPresuCabMUESTRANOMBREUSUARIOREAL: TStringField;
    QRemitoCabMUESTRANOMBREUSUARIOREAL: TStringField;
    QVentaCabMUESTRANOMBREUSUARIOREAL: TStringField;
    QVentaDetMUESTRACONTENIDO: TFloatField;
    QStockARTICULO_VARIABLE: TStringField;
    QPercecpionIvaPres: TFDQuery;
    QPercecpionIvaPresID_PERCEPCION: TIntegerField;
    QPercecpionIvaPresCODIGO_PERCEPCION: TIntegerField;
    QPercecpionIvaPresDETALLE: TStringField;
    QPercecpionIvaPresID_PR: TIntegerField;
    QPercecpionIvaPresNETO: TFloatField;
    QPercecpionIvaPresTASA: TFloatField;
    QPercecpionIvaPresIMPORTE: TFloatField;
    QPercecpionIvaPresCODIGOREGIMEN: TIntegerField;
    QOrdenCompDetMUESTRACODARTIPROVEE: TStringField;
    QNotaPedidoCabFACTURA_ID: TIntegerField;
    QNotaPedidoCabFACTURA_NROCPBTE: TStringField;
    QPersonalDEPOSITO: TIntegerField;
    QStockFOB: TSingleField;
    QCarneCab: TFDQuery;
    QCarneDet: TFDQuery;
    QCarneCabID: TIntegerField;
    QCarneCabID_DET: TIntegerField;
    QCarneCabCLASIFICACION: TStringField;
    QCarneCabNRO_TROPA: TStringField;
    QCarneCabT_KILOS: TIntegerField;
    QCarneCabT_MEDIAS: TIntegerField;
    QCarneDetID: TIntegerField;
    QCarneDetID_DET: TIntegerField;
    QCarneDetMEDIA: TIntegerField;
    QCarneDetEN_STOCK: TStringField;
    QEmpresaTASA_LEY15311: TFloatField;
    QSucursalAPLICA_LEY15311: TStringField;
    QVentaCabMUESTRAAPLICALEY15311: TStringField;
    QVentaCabID_OBRA: TIntegerField;
    QVentaCabMUESTRAOBRA: TStringField;
    QCompraCabID_OBRA: TIntegerField;
    QCompraCabMUESTRAOBRA: TStringField;
    QReciboID_OBRA: TIntegerField;
    QReciboMUESTRAOBRA: TStringField;
    QOPagoID_OBRA: TIntegerField;
    QOPagoMUESTRAOBRA: TStringField;
    QProveedoresCBU: TStringField;
    spRecreaIVADetFc: TFDStoredProc;
    QClientesESQUEMALISTA: TIntegerField;
    QStockCODIGO_ART_VARIABLE: TStringField;
    QVentaCabPROCESADA: TStringField;
    QRemitoLOTE: TFDQuery;
    QRemitoLOTEID: TIntegerField;
    QRemitoLOTEID_DET: TIntegerField;
    QRemitoLOTEID_RTO: TIntegerField;
    QRemitoLOTEID_LOTE: TIntegerField;
    QRemitoLOTECODIGO: TStringField;
    QRemitoLOTELOTE: TStringField;
    QRemitoLOTEDESPACHO: TStringField;
    QRemitoLOTECANTIDAD: TFloatField;
    QRemitoLOTEFECHA: TSQLTimeStampField;
    QRemitoLOTEFECHAVTO: TSQLTimeStampField;
    QRemitoLOTETIPO_COMPROB: TStringField;
    QRemitoLOTEDEPOSITO: TIntegerField;
    QVentaLoteID: TIntegerField;
    QVentaLoteID_DET: TIntegerField;
    QVentaLoteID_FC: TIntegerField;
    QVentaLoteID_LOTE: TIntegerField;
    QVentaLoteCODIGO: TStringField;
    QVentaLoteLOTE: TStringField;
    QVentaLoteDESPACHO: TStringField;
    QVentaLoteCANTIDAD: TFloatField;
    QVentaLoteFECHA: TSQLTimeStampField;
    QVentaLoteFECHAVTO: TSQLTimeStampField;
    QVentaLoteDEPOSITO: TIntegerField;
    QVentaLoteTIPO_COMPROB: TStringField;
    QRemitoDetCONTROLA_TRAZABILIDAD: TStringField;
    QStockDIAS_VENCIMIENTO: TIntegerField;
    QPresuCabPERCIBE_IVA: TStringField;
    QPresuDetPERCIBE_IVA: TStringField;
    QPresuDetTASA_PERCEP_IVA: TFloatField;
    QPresuDetID_TASA_PERCEPCION_IVA: TIntegerField;
    QPresuDetPERCEPCION_IVA_DIFERENCIAL: TStringField;
    QPresuCabA_COBRAR: TStringField;
    QPresuCabMINIMO_PERC_IVA: TFloatField;
    QNotaPedidoCabID_PEDIDO_MOVIL: TIntegerField;
    QReciboMONEDA_ALTERNATIVA: TIntegerField;
    QReciboCOTIZACION: TFloatField;
    QReciboMUESTRASIGNOMONEDA: TStringField;
    QStockFOTO: TBlobField;
    QStockLoteMUESTRADEPOSITO: TStringField;
    QVentaCabIMPORTE_PERCEPCION_IVA: TFloatField;
    QVentaCabMUESTRATELEFONO_1: TStringField;
    QVentaCabMUESTRATELEFONO_2: TStringField;
    QVentaCabMUESTRATELEFONOMOVIL: TStringField;
    QTCreditoORDEN: TIntegerField;
    QTCreditoVISIBLE: TStringField;
    QReciboMUESTANCIMPORTE: TFloatField;
    QEgresoCajaID_OBRA: TIntegerField;
    QVentaCabNC_POR_DIFERENCIA: TStringField;
    QCompraCabNC_POR_DIFERENCIA: TStringField;
    QVentaDetNovedades: TFDQuery;
    QVentaDetNovedadesID: TIntegerField;
    QVentaDetNovedadesID_CABFAC: TIntegerField;
    QVentaDetNovedadesCODIGO: TStringField;
    QVentaDetNovedadesDETALLE: TStringField;
    QVentaDetNovedadesPRECIO: TFloatField;
    QVentaDetNovedadesTIPO: TStringField;
    QVentaDetNovedadesFECHA_HORA: TSQLTimeStampField;
    QVentaDetNovedadesUSUARIO: TStringField;
    QVentaDetNovedadesTIPOCPBTE: TStringField;
    QVentaDetNovedadesPRECIO_OLD: TFloatField;
    QVentaDetUNITARIO_TOTAL_OLD_2: TFloatField;
    QRemitoCabREMITO_IMPRENTA: TStringField;
    QRemitoCabREMITO_FECHA_RANGO: TStringField;
    QRemitoCabREMITO_DIRECCION: TStringField;
    QRemitoCabREMITO_CAI: TStringField;
    QRemitoCabREMITO_VENCIMIENTO_CAI: TStringField;
    QPersonalSECTOR_PRODUCCION: TIntegerField;
    QEmpresaDIRECCION_OPERACION: TStringField;
    QPresuDetMUESTRAPRODUCIDOS: TFloatField;
    QLDRClienteEMAIL: TStringField;
    QSeriesAMayuscula: TFDQuery;
    procedure QSQLConsultaAfterClose(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);

  private
    { Private declarations }
    FSucursalPorDef                  : Integer;
    FUltCodigoCli                    : String;
    FInscripcionPorDefecto           : integer;
    FPathReportesCpbte,
    FPathReportesLst,
    FPathImagenes                    : String;
    FNombreIni                       : String;
    FUsuarioAdministrador            : Boolean;
	  FBuscaCodigoFree                 : Boolean;
    FOP_CODIGOCLIENTE                : string;
    FFacturado                       : Boolean;
    FFechaUltimaActulizacionPrecio   : TDateTime;
    FCodigoBarraSerie                : String;
    FDesdePLU                        : Boolean;
    FPrecioPLU                       : String;
    FClaveCot                        : string;
    FModoCOT                         : Integer;
    FEncontroCodigoBarra             : Boolean;
    FEncontroCodigoSerie             : Boolean;
    FModificaListPrecios             : Boolean;

  //  FUsaFirma                        : Boolean;
  //  FLimiteFactB                     : Extended;  // para el uso de la Fiscalizacion sin documento

    function  ReadFile        (const FileName,Section, Name: string; const ValPorDef: Variant):  Variant;
    procedure WriteFile       (const FileName,Section, Name: string; const Value: Variant);

    function  ReadGeneralFile (const Section, Name: string; const ValPorDef: Variant):  Variant;
    procedure WriteGeneralFile(const Section, Name: string; const Value: Variant);
    function  ReadUserFile    (const Section, Name: string; const ValPorDef: Variant):  Variant;
    procedure WriteUserFile   (const Section, Name: string; const Value: Variant);
    function  ReadDBOption    (const Name: string): Variant;
    procedure WriteDBOption   (const Name: string; const Value: Variant);


    function  GetAgenteRetencionGanancias   : Boolean;
    function  GetAgenteRetencionIB          : Boolean;
    function  GetAgentePercepcionIB         : Boolean;
    function  GetAgenda                     : Boolean;
    function  GetCaja                       : string; //INTEGER
    function  GetClientePorDefecto          : String;
    function  GetCPostalPorDef              : string;
    function  GetDeposito                   : string;   /// INTEGER
    function  GetLimiteFacB                 : Extended;   /// INTEGER

    //    function  GetDiscriminaIva              : Boolean;
    function  GetEmpleado                   : string;
    function  GetMainPath                   : string;
    function  GetFormatoStock               : string;
    function  GetSucursalPorDef             : integer;
    function  GetInscripcionPorDefecto      : integer;
    function  GetPathReportesCpbte          : string;
    function  GetPathReportesLst            : string;
    function  GetPathImagenes               : string;
    function  GetOpCodigoCliente            : string;
    function  GetSucursal                   : Integer;
    function  GetIngresa_NroInterno         : Boolean;
    function  GetIngresa_NroOp              : Boolean;
    function  GetTasaPercepcionIB           : Extended;
    function  GetTasaRetencionIB            : Extended;
    function  GetMinim_Imp_IB_Perc          : Extended;
    function  GetMinim_Imp_IB_Rete          : Extended;
    function  GetControlaSerie              : Boolean;
    function  GetControlaFinOperacion       : Boolean;
    function  GetControlaDeuda              : Boolean;
    function  GetControlaLteCredito         : Boolean;
    function  GetControlaLineaCero          : Boolean;
    function  GetControlaFechaVta           : Boolean;
    function  GetBloqueadeudor              : Boolean;
    function  GetPreviewFactura             : Boolean;
    function  GetSubRubrosRES3886           : String;
    function  GetModoPLU                    : Integer;
    function  GetCodInicioPLU               : Integer;
    function  GetCodLongPLU                 : Integer;
    function  GetPesoInioPLU                : Integer;
    function  GetPesoLongPLU                : Integer;
    function  GetSerieDeposito              : Boolean;
    function  GetSerieVta                   : Boolean;
    function  GetSerieCompra                : Boolean;
    function  GetCpbtePorUsuario            : Boolean;
    function  GetOrdenCompraTope            : Extended;
    function  GetOrdenCompraPendientes      : Boolean;
    function  GetUsaTablaDePrecios          : Boolean;
    function  GetUsaConsignacion            : Boolean;

    function  GeMascaraAplicacionesCC       : String;
    function  GetMascaraImportes            : String;
    function  GetMascaraCheques             : String;
    function  GetMascaraDetalleUnitario     : String;
    function  GetMascaraDetalleCantidad     : String;
    function  GetMascaraDetalleDescuento    : String;
    function  GetMascaraDetalleTotal        : String;
    function  GetMascaraIvaTasa             : String;
    function  GetMascaraIvaImporte          : String;
    function  GetMascaraCabecera            : String;
    function  GetMascaraImportesComp        : String;
    function  GetMascaraDetalleUnitarioComp : String;
    function  GetMascaraDetalleCantidadComp : String;
    function  GetMascaraDetalleDescuentoComp: String;
    function  GetMascaraDetalleTotalComp    : String;
    function  GetMascaraCabeceraComp        : String;
    function  GetMascaraEgresos             : String;
    function  GetMascaraOrdenPago           : String;
    function  GetMascaraRecibos             : String;
    function  GetMascaraVales               : String;
    function  GetEscCpbte                   : Boolean;
    function  GetAutorizaVtaCtdo            : Boolean;
    function  GetAutoConfirmaTxStock        : Boolean;
    function  GetMonedaVta                  : Integer;
    function  GetMonedaCompra               : Integer;
    function  GetActualizaCosto             : Boolean;
    function  GetActualizaCostoMayor        : Boolean;
    function  GetAutoConfirmaOrdenCompra    : Boolean;
    function  GetDescuentaStockRto          : Boolean;
    function  GetControlaRtoFiscal          : Boolean;
    function  GetDatosContable              : String;
    function  GetUsaBDE                     : Boolean;
    function  GetDatosSinBDEPath            : String;
    function  GetSYSDBA                     : String;
    function  GetPassword                   : String;
    function  GetTipoBaseDatos              : Integer;
    function  GetPrNomCpbte                 : String;
    function  GetPrNomListados              : String;
    function  GetPrCpbteDefecto             : Boolean;
    function  GetPrListadoDefecto           : Boolean;
    function  GetScannerSerie               : Boolean;
    function  GetPuertoCom                  : String;
    function  GetProveedorPorDefecto        : String;
    function  GetTIvaPorDefecto             : Integer;
    function  GetSTIvaPorDefecto            : Integer;
    function  GetGravamenPorDefecto         : String;
    function  GetUnidadesPorDefecto         : Integer;
    function  GetDatos                      : String;
    function  GetIcono                      : String;
    function  GetImagen                     : String;
    function  GetImagenModo                 : Integer;
    function  GetRenglones                  : Integer;
    function  GetUltCodigoCli               : string;
    function  GetUsarPathCpbte              : Boolean;
    function  GetUsarPathLst                : Boolean;
    function  GetVerificaNroCpbte           : Boolean;
    function  GetStockSubRubExp             : String;
    function  GetVerificaCambioPrecio       : Boolean;
    function  GetVerificaCambioPrecioCompra : Boolean;

    procedure SetUsarPathCpbte            (Value  : Boolean);
    procedure SetUsarPathLst              (Value  : Boolean);
    procedure SetSucursalPorDef           (Value: integer);
    procedure SetPathReportesCpbte        (Value: string);
    procedure SetPathReportesLst          (Value: string);
    procedure SetFormatoStock             (Value: string);
    procedure SetSucursal                 (Value: integer);
    function GetVenderSinStock: Boolean;
    function GetVerStock: Boolean;
    function GetUsaFirma: Boolean;
    function GetAgentePercepcioIVA              : String;
    function GetMinimo_Percepcion_Iva           : Extended;
    function GetClaveCot: String;
    function GetCuitCot: String;
    function GetModoCot: Integer;
    function GetClaveUsuarioWoordPress: String;
    function GetURlWoordPress: String;
    function GetUsuarioWoordPress: string;
    function Capitalize(Text: string): string;
    function GetMostrarPedidos: Boolean;
    function GetImprimePedidosApp:Boolean;
    function GetPresupuestarSinStock: boolean;
    function GetPluDecimales: integer;
    function GetPluCoeficiente:Extended;
    function GetCodigoBarra: String;
    function GetCodigoConceptoCOT: String;
    function GetDetalleConceptoCOT :String;
    function GetFacturaPorJuriddicion: Boolean;
    function GetTasaLey15311: Extended;
    function GetActualizaPadronWeb: Boolean;
    function GetToleranciaDeuda: Extended;
    function GetCBUEmpresa: String;
    function GetImageFormat(Stream: TStream): String;




  public
    AnularFactura ,
    ActualizaPrecioVta,
    FacturaPorCtaOrden,
    ModificaPrecioVta ,
    ModificaDetalleArticulo,
    AplicaDescuento,

    ModificaCaja,
    VerCostos,
    ModificaLineaOT,
    FiltraCajaUser,
    BorraLineaOT,
    BorrarAplCCCOMp,
    BorrarAplCCVta,
    ModificaAbono,
    ModificaVendedor,
    ModificaDeposito,
    ModificaSucursal,
    ModificaCreditoClientes,
    VerCostoFichaStock,
    VenderDebajoMinimo,
    ABMClientes,
    ABMArticulos,
    BorrarRecibos,
    CargarFcVtaManual,
    BorrarFcCompra,
    AnularRemitos,
    BorrarRemitos,
    BMIncidencias,
    BMNotaPedido,
    AutorizadoLineaConCero,
    UsuarioAdministrador,
    VerCtaCtePersonal,
    AutorizadoReimprimirFc,
    ModificaAsignadoOT,
    ModificaFactura,
    AutorizadoHacerNC,
    BorrarOPago,
    HayFiltros,

    TraerDscto_a_NC,
    AvisoSinCae             :Boolean;
    TopeDsctoGral,
    TopeDsctoLinea,
    DsctoLineaTemp       : Real;
    CajaSeleccionada,
    UsuarioActivoId ,
    IntervMaxDesdeULtActuPrecio   : Integer;

    NombreIni,
    UsuarioActivo,
    JustificaCodigo,
    Nombre_PC,
    CharCodigo           : String;

    DecRedondeo          : ShortInt;

    HayProduccion        : Boolean;

    Cuit_SUCURSAL        : String;
    Certificado_SUCURSAL : String;
    // para la consulta de precios si es por Proveedor o no
    PrecioPorProveedor  : Boolean;
    IdListaProveedor    : Integer;
    /// Matematicas ///
 //   function  Encode64        (S: string)                                                                   : string;
    function  Redondear       (const Value: Extended; const Tipo: integer=1; const Multiplo: Extended=1)    : Extended;
    /// Strings, formateo ///
    function  CapitalizeAll(Text: string): string;
    function  FormatoCUIT     (const codigo: string)                                                        : String;
    function  NombreHojaExcel (Archivo:String)                                                              : String;
    function  StringATStrings (const AString: WideString)                                                   : TStrings;
    function  FieldToString   (ACDS: TClientDataSet; const FieldName: string; const Separador: String = ',';
                                  const Comillas: string = '')                                              : String;     //// Arma un string con los valores de un campo

    procedure CopiarClipBoard(Grilla:TDBGrid);

   /// STOCK ///
    function  StockEditDetalle          (const Codigo: string)                                              : Boolean;
    function  SearchCodigo              (const Text: String; var Datos:TDataSource;
                                         const CodigoAlternativo:Boolean = False;
                                         const Proveedor:String = '' )                                      : String;
    function  SearchCodigoBarra         (const CodigoBarra: string)                                         : String;
    function  CodificaStock             (const Codigo: string)                                              : String;
    procedure ConfirmaStock             (const Deposito: Integer; const Codigo: string; const Fecha: Integer=0);
    procedure SetStockCostos(Codigo:string;Gravado,Imp:Extended;Modo:string);
    Function GetDetalleArticulo         (cod:string)                                                        : String;
    function GetStockWeb                (Codigo:String)                                                     : Extended;
    Function GetModoCodificacion                                                                            : Boolean;
    Function GetCodificacionSecuencial                                                                      : Boolean;
    function GetActualizaPrecioVta                                                                          : Boolean;
    function GetCodigo_x_Alternativo(const CodigoAlternativo: string)                                       : TStock;
    function GetCodigoExistente(const Codigo: string)                                                       : Boolean;
    function GetUltimoCodigoStk_RubSub(const Rubro,SubRub:string)                                           : String;
    Function GetDiasVto(Codigo:string):Integer;
    // para trae los concpetos de compra
    function GetConceptoCompras(Proveedor:string)               :string;
  /// COMPRAS ///
    function  GrupoCpbteCompras         (const IdCpbte:         integer)                                    : integer;

  /// VENTAS ///
    function  Hacer_NC                  (id_Comprobante,id_cpbte,id_cta_caja:Integer; Fecha:TDateTime)      : Integer;
    function  CodigoBarraFcElectronica  (Numero:String)                                                     : String;
    function  GrupoCpbteVta             (const IdCpbte:         integer)                                    : integer;
    function  BuscaOP_PorFc             (const IdCpbte:         integer)                                    : Boolean;  overload;
    function  BuscaOP_PorFc             (const IdCpbte:         integer; var Res: Integer)                  : Boolean;  overload;
//    function  UpdateRto                 (Id, IdFactura:   integer; Numero: string)              : Boolean;
    function  ListaPorDefecto           (const Sucursal:        Integer =-1)                                : Integer;

    procedure CalculaPrecioVta_FD       (ModoIVA:string; const listaProveedor, lista,sucursal,deposito        :Integer;
                                         const codigoarticulo,codigocliente,tipocpbte         :String;
                                         const cotizacion,cotizacion_cpbte                    :extended;
                                         var P_Gravado,P_exento,P_Total,
                                            Iva_Unitario,Margen,dscto,PFinal                  :extended );

    procedure NuevoRecibo               (const Cliente: string ; const Importe: extended;
                                         const Obs: String = ''; const Aplicacion:   integer  = -1);
    procedure Agregar_Pedido_Borrador   (const Codigo,Detalle:string; const Cantidad:Extended);
    procedure CorrigeIvaDetVta          (const id   :Integer);
    procedure RevNroRto;
    function  DepositoPorSucursal       (const Sucursal: Integer)                                        : Integer;
    procedure APlicarNC_Venta(Codigo: string; Asociado_id_cpbte,
                              Id_Nota_credito: Integer);
    procedure APlicarNC_Recibos(Codigo: string; Id_Nota_credito,Id_mov_ctacte                            : Integer);
    procedure APlicarAJ_Venta(Codigo: string; Asociado_id_cpbte: Integer);
    procedure APlicar_Consolidacion(Codigo: string; id_ajuste: Integer);
    function GetLoteAjustes               : Integer;

  /// REMITOS ///
    function  VerificaNroRto            (const Letra, SucFac, NumFac, Tipo, Clase: string;
                                         const Sucursal: Integer)                                        : Boolean;
    function RecuperarLoteRtos(id_factura:Integer)                                                       : Boolean;
   /// CAJA  ///
    function  CajaCerrada                (const Caja:Integer)                                            : Boolean;
    function  CajaCerradaNC(id_fc:Integer;Clasecpbte:String)                                             : Boolean;

    procedure Abrir_Cerrar_Caja          (const id_caja:Integer; const Estado:Integer);


  /// COMPROBANTES ///
    function CpbtePorDefecto           (Tipo,CompraVenta: string; Sucursal: integer;
                                               DesglozaIva : String; Usuario:Integer )     : String;
    function CpbtePorTipo              (Tipo,CompraVenta: string; Sucursal: integer;
                                               DesglozaIva : String)                                  : String;
    function CpbtePorTipoUsuario       (Tipo,CompraVenta: string; Sucursal: integer;
                                               DesglozaIva : String; Usuario : Integer )     : String;
    function VerificaNro               (Letra, SucFac, NumFac, Tipo, Clase: string;
                                               Sucursal: Integer)                                     : Boolean;
    function BuscarCpbteVta(letra, numfac, sucfac: String; sucursal: Integer; tipo, tipo2: String)    : boolean;

    function TraerNro(Letra: string; SucFac: string; Tipo: string; Clase: string; Sucursal: Integer):String;
    function CompDeCommpraCC(CodigoAfip: String; Sucursal:Integer): Integer;

    function VerificaNroOP(Prefijo,Numero, Clase, Letra:String; Sucursal:Integer): Boolean;
    function TraerNroOpFree(Prefijo,Numero, Clase, Letra:String; Sucursal:Integer):string;

    function BuscarRecibo(Clase, Letra, Prefijo, Numero: string;
             Sucursal: Integer): Boolean;
  /// COSTOS ///
    function  AplicPorCtroCosto         (const ID: Integer; const TipoCpbte, Tipo: string)                  : Boolean;

  /// AFIP, ARBA  ///
    function  VerificarCAE              (NroCAE:String)                                                     : Boolean;
    function  VerifRes3886              (const Subrubro: string)                                            : Boolean;
    function  TasaPerRetIIBB_CUIT       (CUIT: string; var TasaPer, TasaRet: Extended)                      : Boolean;  overload;
    function  TasaPerRetIIBB_CUIT       (CUIT: string; var TasaPer, TasaRet: Extended;
                                         var Desde, Hasta: TDateTime)                                       : Boolean;  overload;
    procedure Consulta_PadronIIBB       (cuit:string; Fecha:TDateTime;var Percepcion,Retencion:Extended);
    procedure VerTasaIIBB(cuit:string;Fecha:TDateTime;var Percepcion,Retencion:Extended);

    function GetCertificadoSucursal(Sucursal:Integer):String;
    function GetCuitSucursal(Sucursal: Integer): String;
    function GetRazonSocialSucursal(Sucursal: Integer): String;
    function GetTasaPercepcionIVA(Id:Integer):Extended;
    function GetPCName  : string;

    function  JurisdiccionPorSucursal   (const Sucursal: integer; var  Jurisdiccion: TJurisdiccion)         : Boolean;
    function  JurisdiccionIIBLocalidad (Localidad:String; var Jurisdiccion: TJurisdiccion)                  : Boolean;
 //   function  GetFacturaPorJuridiccion                                                                      : Boolean;
  /// CLIENTES  ///
    function  SearchCodigoCliente       (codigo: string)                                                     : string;
    function  NuevoCliente              (var Nombre: string)                                                 : string; overload;        // Permite pasar Nombre
    function  NuevoCliente                                                                                   : string; overload;        // Devuelve el nuevo c�digo
    function  ModificarCliente          (const Codigo: string)                                               : Boolean; overload;

    function  ModificarDatosCliente(var DS: TDataSource)                                                     : Boolean; overload;
    function  ModificarDatosCliente(var CDS: TDataSet)                                                       : Boolean; overload;
    function  HayAcopios(id: Integer):Boolean;
    function  Autoriza_Comprobante(Dato:Integer):Boolean;
    function  CotizacionCliente(const Cliente: String; const IdMoneda: Integer = 1) : Extended;
	  function  GetLdrNombre(codigo:string;ldr:integer) : String;
    function  GetLdrDireccion(codigo:string;ldr:integer) : String;
    function  GetLdrDireccionPlus(codigo:string;ldr:integer): String;
    function  GetLdrCorreo(codigo:string;ldr:integer): String;
    function  GetNroDocumento(codigo: string): String;
    function  GetCondicionIvaCliente(codigo:string) : Integer;
    function  GetPrimerLdr(codigo:string) : Integer;
    function  GetCondicionVtaPorDefecto(codigo: string): Integer;
    function  GetAvisoSinCAE: Boolean;
    property  UltimoCodigoCli                    : String      read GetUltCodigoCli                    write FUltCodigoCli;
    property  BuscaCodigoFree                    : Boolean     read FBuscaCodigoFree                   write FBuscaCodigoFree;

   /// WINDOWS ///
    function  GetOSVersion:string;
    function  EjecutaFic                (const fic: string; const mute: boolean = false)                      : Boolean;
  /// OTROS ///
    function  FiltroRubroUsurio(Usuarioid:integer;Rubro:String):Boolean;
    procedure LogFileFD(ConTx,Tipo:Integer;Detalle,Origen:String);
    function  ListaDirectorios(directorioPadre: string) : TStringList;
    function  DelDir(dir: String): boolean;
    function  Colores(var AColor: TColor):  Boolean;
    function  CondicionIvaPercecpion(codigo: Integer): string;
    /// BASE DE DATOS ///
    function Conectar                           : Boolean;
    function ConectarContable                   : Boolean;

    function Redondeo(Precio:extended;Presicion:Integer)       : Extended;
    function Redondeo_Menos(Precio:extended;Presicion:Integer) : Extended;
    procedure CopyClientDataset(Origen, Destino                : TClientDataset);
    function GetUsaContabilidad                                : Boolean;
    function GetMargenUtilidad                                 : Extended;
    function GetUsaBCRA                                        : Boolean;
    function GetCorreoNovedades                                : string;
    function GetControlaLista                                  : Boolean;
    function GetFacturaCtaOrden                                : Boolean;
    // Operaciones de Caja
    function GetClienteConPrecio(Codigo,Cod_Articulo:string):Boolean;

    function GetLineasComprobante(Id:Integer):Integer;
    function GetCalcualIvaItems(Id: Integer): String;
    procedure GravarCot(Tipo: string; id: Integer; Cot: String);
    // Opciones WoordPress
    function GetListaPreciosWoordPress: Integer;
    function GetBonificacionWoordPress: Extended;
    function GetPrecioLista(Codigo: string; Lista: Integer): Extended;

    procedure COT_Sucursal(id_sucursal: Integer; var Cot_CUit,
      Cot_Clave: String);

    procedure ActualizaCostoFc_Vta(Id:Integer);

    function GetCorreoCliente_1(codigo:string)  :String;
    function GetCorreoCliente_2(codigo:string)  :String;
    function GetArticuloProveedor(const Codigo,Proveedor:String):String;
    function GetRtoDescuentaStock               :Boolean;
    function IngresarMediaRes(Id_cab,
                              Id_det: Integer;
                              clasificacion:String;
                              NroTropa,kilos,medias :Integer;
                              Arreglo: TStringList): Boolean;

    Function GetPrimerClasePago(Tipo:Integer):Integer;
    function GetCuitEmpresa: String;
    function GetDireccionEmpresa: String;

    function HayNotaPedido(id:Integer;Tipo:String):Boolean;
    function GetEsquemaLista(codigo:string)  :Integer;
    function GetTipoCompVta(Id:Integer):string;
    function SetFechaVencimentoCompra(IdFc:integer;Fecha:TDateTime): Boolean;
    function SetFechaVencimentoVta(IdFc: integer; Fecha: TDateTime): Boolean;

    function GetAdministraPresupuestos: boolean;
    function LeerQR(const QRData:String;var Data: TQRData):Boolean;

    procedure SetKeyboardLayout(const Layout: string);
    procedure GuardarImagenReducidaEnStock(CodigoProducto: string);
    function NoSi(const Value: Boolean): string;
    function GetLocalidad_Nombre(NombreLocalidad: String;
      var Localidad: TLocalidad): Boolean;
    function GetLocalidad_CPostal(CPostal: String;
      var Localidad: TLocalidad): Boolean;
    function GetHayRegistroPikeo(Cliente: String): Boolean;
    function BorrarRegistrPikeo(Lote:Integer):Boolean;
    function GetMotivoAjusteProduccion: Integer;
    function Hacer_Factura_venta( USUARIO       :String;
                                  ID_COMPROBANTE:Integer;
                                  COMP_TOTAL    :Extended;
                                  COMP_FECHA    :TDateTime;
                                  COMP_DEPOSITO :integer;
                                  CLIENTE       :string):Boolean;
    function GetCodAfipCpbte(id_cpbte:Integer):Integer;

    function GetFcConAplicacion(id:Integer;Tipo:String): Boolean;
    function BorrarApicacionNC(Id: Integer; Tipo, Clase: String): Boolean;
    function GetApiKeyOpenAI: String;
    function GetApiKeyGoogle: String;
    function GetProveedorCuit(Cuit:string):string;
    function AltaProveedor(Nombre,RazonSocial,Cuit:String;CondicionIVA:Integer ):string;
    function ComprobanteCompra_x_CodigoAfip(CodigoAfip:String;Sucursal:Integer):Integer;
    function GetStockMinimo: boolean;
  published
    property UsaFirma                           : Boolean     read GetUsaFirma;

    property Agenda                             : Boolean     read GetAgenda;
    property DatosContable                      : String      read GetDatosContable;
    property UsaBDE                             : Boolean     read GetUsaBDE;
    property DatosSinBDEPath                    : String      read GetDatosSinBDEPath;
    property SYSDBA                             : String      read GetSYSDBA;
    property DBPassword                         : String      read GetPassword;
    property TipoBaseDatos                      : Integer     read GetTipoBaseDatos;
    property Datos                              : string      read GetDatos;
    property Icono                              : string      read GetIcono;
    /// VARIABLES GLOBALES SEMÁFORO ///
    property Facturado                          : Boolean     read FFacturado                         write FFacturado;
    property FechaUltimaActulizacionPrecio      : TDateTime   read FFechaUltimaActulizacionPrecio     write FFechaUltimaActulizacionPrecio;
    property CodigoBarraSerie                   : String      read FCodigoBarraSerie                  write FCodigoBarraSerie;
    property PresupuestarSinStock               : Boolean     read GetPresupuestarSinStock;
    property RtoDescuentaStock                  : Boolean     read GetRtoDescuentaStock;

    //property AgentePerepcionIB                  : Boolean     read GetAgentePerepcionIB               write FAgentePerepcionIB;
    property EncontroCodigoBarra                : Boolean     read FEncontroCodigoBarra               write FEncontroCodigoBarra;
    property EncontroCodigoSerie                : Boolean     read FEncontroCodigoSerie               write FEncontroCodigoSerie;
    property SubRubrosRES3886                   : String      read GetSubRubrosRES3886;

    /// OPCIONES USUARIO  ///

    property UsarPathCpbte                      : Boolean     read GetUsarPathCpbte                   write SetUsarPathCpbte;
    property UsarPathLst                        : Boolean     read GetUsarPathLst                     write SetUsarPathLst;
    property Sucursal                           : Integer     read GetSucursal                        write SetSucursal;
    property Deposito                           : string      read GetDeposito;// INTEGER
    property MostrarPedidos                     : Boolean     read GetMostrarPedidos;
    property ImprimePedidosApp                  : Boolean     read GetImprimePedidosApp;
    property ModificaListaPrecios               : Boolean     read FModificaListPrecios  write FModificaListPrecios;
    //   property Empleado                           : string      read GetEmpleado;
    property Caja                               : string      read GetCaja;  ///INTEGER
    property ClientePorDefecto                  : string      read GetClientePorDefecto;
 //   property DiscriminaIva                      : Boolean     read GetDiscriminaIva;

    // Opciones PLU
    property DesdePLU                           : Boolean     read FDesdePLU                          write FDesdePLU;
    property PrecioPLU                          : String      read FPrecioPLU                         write FPrecioPLU;
    property ModoPLU                            : Integer     read GetModoPLU;
    property CodInicioPLU                       : Integer     read GetCodInicioPLU;
    property CodLongPLU                         : Integer     read GetCodLongPLU;
    property PluDecimales                       : Integer     read GetPluDecimales;
    property PesoInioPLU                        : Integer     read GetPesoInioPLU;
    property PesoLongPLU                        : Integer     read GetPesoLongPLU;
    property PluCoeficiente                     : Extended    read GetPluCoeficiente;// para dividir el precio que viene en la etiqueta
    property PluCodigoBarra                     : String      read GetCodigoBarra   ;// el codigo de test

    /// OPCIONES GENERALES ///
    property VerificaNroCpbte                   : Boolean     read GetVerificaNroCpbte;
    property StockSubRubExp                     : String      read GetStockSubRubExp;


    property VerificaCambioPrecio               : Boolean     read GetVerificaCambioPrecio;
    property VerificaCambioPrecioCompra         : Boolean     read GetVerificaCambioPrecioCompra;
    property Imagen                             : string      read GetImagen;
    property ImagenModo                         : Integer     read GetImagenModo;
    property MainPath                           : string      read GetMainPath;
    property AgenteRetencionIB                  : Boolean     read GetAgenteRetencionIB;
    property AgenteRetencionGanancias           : boolean     read GetAgenteRetencionGanancias;
    property AgentePercepcionIB                 : Boolean     read GetAgentePercepcionIB;
    property ActualizaPadronIIBBWeb             : Boolean     read GetActualizaPadronWeb;
    property TasaPercepcionIB                   : Extended    read GetTasaPercepcionIB;
    property TasaRetencionIB                    : Extended    read GetTasaRetencionIB;
    property TasaLey15311                       : Extended    read GetTasaLey15311;
    property Minim_Imp_IB_Perc                  : Extended    read GetMinim_Imp_IB_Perc;
    property Minim_Imp_IB_Rete                  : Extended    read GetMinim_Imp_IB_Rete;
    property PathReportesCpbte                  : string      read GetPathReportesCpbte               write SetPathReportesCpbte;
    property PathReportesLst                    : String      read GetPathReportesLst                 write SetPathReportesLst;
    property PathImagenes                       : String      read GetPathImagenes;//                    write SetPathImagenes;
    property FacturaPorJuridiccion              : Boolean     read GetFacturaPorJuriddicion;

    property CPostalPorDef                      : string      read GetCPostalPorDef;
    property SucursalPorDef                     : integer     read GetSucursalPorDef                  write SetSucursalPorDef;
    property InscripcionPorDefecto              : integer     read GetInscripcionPorDefecto           write FInscripcionPorDefecto;
    property OP_CODIGOCLIENTE                   : string      read GetOpCodigoCliente                 write FOp_CodigoCliente;
    property FormatoStock                       : string      read GetFormatoStock                    write SetFormatoStock;
    property Ingresa_NroInterno                 : Boolean     read GetIngresa_NroInterno;
    property Ingresa_NroOp                      : Boolean     read GetIngresa_NroOp;
    property ControlaSerie                      : Boolean     read GetControlaSerie;
    property ContolaFinOperacion                : Boolean     Read GetControlaFinOperacion;
    property BloqueaDeudor                      : Boolean     read GetBloqueaDeudor;
    property ControlaLteCredito                 : Boolean     read GetControlaLteCredito;
    property PreviewFactura                     : Boolean     read GetPreviewFactura;
    property ControlaDeuda                      : Boolean     read GetControlaDeuda;
    property ControlaRtoFiscal                  : Boolean     read GetControlaRtoFiscal;
    property SerieDeposito                      : Boolean     read GetSerieDeposito;
    property SerieVta                           : Boolean     read GetSerieVta;
    property SerieCompra                        : Boolean     read GetSerieCompra;
    property CpbtePorUsuario                    : Boolean     read GetCpbtePorUsuario;
    property UsaTablaDePrecios                  : Boolean     read GetUsaTablaDePrecios;
    property UsaConsignacion                    : Boolean     read GetUsaConsignacion;
    // WoordPree
    property URlWoordPress                      : string      read GetURlWoordPress;
    property UsuarioWoordPress                  : string      read GetUsuarioWoordPress;
    property ClaveUsuarioWoordPress             : string      read GetClaveUsuarioWoordPress;
    property ListaPreciosWoordPress             : Integer     read GetListaPreciosWoordPress;
    property BonificacionWoordPress             : Extended    read GetBonificacionWoordPress;

    property MascaraAplicacionesCC              : String      read GeMascaraAplicacionesCC;
    property MascaraImportes                    : String      read GetMascaraImportes;
    property MascaraCheques                     : String      read GetMascaraCheques;
    property MascaraDetalleUnitario             : String      read GetMascaraDetalleUnitario;
    property MascaraDetalleCantidad             : String      read GetMascaraDetalleCantidad;
    property MascaraDetalleDescuento            : String      read GetMascaraDetalleDescuento;
    property MascaraDetalleTotal                : String      read GetMascaraDetalleTotal;
    property MascaraIvaTasa                     : String      read GetMascaraIvaTasa;
    property MascaraIvaImporte                  : String      read GetMascaraIvaImporte;
    property MascaraCabecera                    : String      read GetMascaraCabecera;
    property MascaraImportesComp                : String      read GetMascaraImportesComp;
    property MascaraDetalleUnitarioComp         : String      read GetMascaraDetalleUnitarioComp;
    property MascaraDetalleCantidadComp         : String      read GetMascaraDetalleCantidadComp;
    property MascaraDetalleDescuentoComp        : String      read GetMascaraDetalleDescuentoComp;
    property MascaraDetalleTotalComp            : String      read GetMascaraDetalleTotalComp;
    property MascaraCabeceraComp                : String      read GetMascaraCabeceraComp;
    property MascaraEgresos                     : string      read GetMascaraEgresos;
    property MascaraOrdenPago                   : string      read GetMascaraOrdenPago;
    property MascaraRecibos                     : string      read GetMascaraRecibos;
    property MascaraVales                       : string      read GetMascaraVales;
    property EscCpbte                           : Boolean     read GetEscCpbte;
    property ControlaLineaCero                  : Boolean     read GetControlaLineaCero;
    property AutorizaVtaCtdo                    : Boolean     read GetAutorizaVtaCtdo;
    property AutoConfirmaTxStock                : Boolean     read GetAutoConfirmaTxStock;
    property MonedaVta                          : Integer     read GetMonedaVta;
    property MonedaCompra                       : Integer     read GetMonedaCompra;
    property ControlaFechaVta                   : Boolean     read GetControlaFechaVta;
    property ActualizaCosto                     : Boolean     read GetActualizaCosto;
    property ActualizaCostoMayor                : Boolean     read GetActualizaCostoMayor;
    property AutoConfirmaOrdenCompra            : Boolean     read GetAutoConfirmaOrdenCompra;
    property PrNomCpbte                         : String      read GetPrNomCpbte;
    property PrNomListados                      : String      read GetPrNomListados;
    property PrCpbteDefecto                     : Boolean     read GetPrCpbteDefecto;
    property PrListadoDefecto                   : Boolean     read GetPrListadoDefecto;
    property ScannerSerie                       : Boolean     read GetScannerSerie;
    property PuertoCom                          : String      read GetPuertoCom;
    property ProveedorPorDefecto                : String      read GetProveedorPorDefecto;
    property TIvaPorDefecto                     : Integer     read GetTIvaPorDefecto;
    property STIvaPorDefecto                    : Integer     read GetSTIvaPorDefecto;
    property GravamenPorDefecto                 : String      read GetGravamenPorDefecto;
    property UnidadesPorDefecto                 : Integer     read GetUnidadesPorDefecto;
    property OrdenCompraTope                    : Extended    read GetOrdenCompraTope;
    property OrdenCompraPendientes              : Boolean     read GetOrdenCompraPendientes;
    property Renglones                          : Integer     read GetRenglones;
    property VenderSinStock                     : Boolean     read GetVenderSinStock;
    property VerStock                           : Boolean     read GetVerStock;
    property LimiteFactB                        : Extended    read GetLimiteFacB;
    property ToleranciaDeuda                    : Extended    read GetToleranciaDeuda;

    property Minim_Imp_Perc_IVA                 : Extended    read GetMinimo_Percepcion_Iva;
    property AgentePercepcionIVA                : String      read GetAgentePercepcioIVA;
    property CBUEmpresa                         : String      read getCBUEmpresa;
    function DBOpciones( const Nombre: string)  :Variant;
    property EmpleadoPorDefecto                 :string       read GetEmpleado;
    property ClaveCOT                           :string       read GetClaveCot;
    property CuitCOT                            :string       read GetCuitCot;
    property CodigoConceptoCOT                  :string       read GetCodigoConceptoCOT;
    property DetalleConceptoCOT                 :string       read GetDetalleConceptoCOT;

    property ModoCOT                            :Integer      read GetModoCot;
    property NombrePc                           :String       read getPcName;

  end;

{$I CONSTANTESSQL}


var
  DMMain_FD: TDMMain_FD;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
uses DMStoreProcedureForm, UClienteNuevo,  URecibo_2,
     UMuestraListaCodBarra, FEAFIPLib_TLB, ShellAPI, UConfiguraPath, DMContableForm;

{$R *.dfm}

// controla si el usuario esta autorizado a usar este comprobante

function TDMMain_FD.LeerQR(const QRData:String;var Data: TQRData):Boolean;
var
  FixedURL, Base64String, DecodedData: string;
  JSONObj   : TJSONObject;
  Resultado : TQRData;
  FechaStr  : String;
  D,M,A     : Word;
begin
  // Reparar la URL del QR
  FixedURL := QRData.Replace('_p','?p',[rfReplaceAll])
                    .Replace('¿', '=', [rfReplaceAll])
                    .Replace('¡', '=', [rfReplaceAll])
                    .Replace('Ñ--', '://', [rfReplaceAll])
                    .Replace('-', '/', [rfReplaceAll])
                    .Replace('¿', '?', [rfReplaceAll])
                    .Trim;

    // Verificar si la URL contiene el parámetro 'p'
    if not FixedURL.Contains('?p=') then
    begin
      ShowMessage('El contenido del QR no corresponde a una factura AFIP.');
      Exit;
    end;

    // Extraer el valor de 'p' (contenido Base64)
    Base64String := FixedURL.Substring(Pos('?p=', FixedURL) + 2);

    // Decodificar Base64 a UTF-8
    DecodedData := TEncoding.UTF8.GetString(TNetEncoding.Base64.DecodeStringToBytes(Base64String));

    // Mostrar los datos decodificados (JSON)
    //ShowMessage('Datos decodificados: ' + DecodedData);

    // Parsear el JSON
    JSONObj := TJSONObject.ParseJSONValue(DecodedData) as TJSONObject;
    if Assigned(JSONObj) then
      begin
        try
          // Leer y mostrar información {"ver":1,
          //                               "fecha":"2025-01-16",
          //                               "cuit":20232247488,
          //                               "ptoVta":2,
          //                               "tipoCmp":1,
          //                               "nroCmp":5663,
          //                               "importe":28003.2,
          //                               "moneda":"PES",
          //                               "ctz":1,
          //                               "tipoDocRec":80,
          //                               "nroDocRec":30588194767,
          //                               "tipoCodAut":"E",
          //                               "codAut":75038976624997}
          Data.Cuit     := JSONObj.GetValue<string>('cuit');
          Data.TipoComp := JSONObj.GetValue<string>('tipoCmp');
          Data.Prefijo  := JSONObj.GetValue<string>('ptoVta');
          Data.Numero   := JSONObj.GetValue<string>('nroCmp');
          Data.Importe  := StrToFloat(JSONObj.GetValue<string>('importe'));
          FechaStr      := JSONObj.GetValue<string>('fecha');
          if FechaStr[1]<>' ' then
            begin
              A:= System.SysUtils.StrToInt(Copy(FechaStr,1,4));
              M:= System.SysUtils.StrToInt(Copy(FechaStr,6,2));
              D:= System.SysUtils.StrToInt(Copy(FechaStr,9,2));
              Data.Fecha    := EncodeDate(A,M,D);
            end
          else
            Data.fecha:=Date;
          Result:=True;
        finally
          JSONObj.Free;
        end;
      end
    else
      begin
        Result:=False;
        ShowMessage('Error al interpretar el JSON.');
      end;
end;


function TDMMain_FD.Capitalize(Text: string): string;
var Aux, Capital: string;
begin
  result:='';
  if Text<>'' then
    begin
      Capital := AnsiUpperCase(Text[1]);
      Aux := AnsiLowerCase(Text);
      Aux[1] := Capital[1];
      result := Aux;
    end;
end;

function TDMMain_FD.CapitalizeAll(Text: string): string;
var i: integer;
 CopyText: string;
 CapitalizeText: string;
begin
  for i := 1 to Length(Text) do
    begin
      if (Text[i] <> ' ') or (i = Length(Text)) then
        CopyText := CopyText + Text[i]
      else
        begin
          CapitalizeText := CapitalizeText + ' ' + Capitalize(CopyText);
          CopyText := '';
        end;
    end;
  result := CapitalizeText + ' ' + Capitalize(Copytext);
end;

procedure TDMMain_FD.CopiarClipBoard(Grilla: TDBGrid);
var
  i_local,j_local: Integer;
  BookMark_local: TBookmark;
  s_local,Campo: string;
begin
  Grilla.DataSource.DataSet.DisableControls;  // evita parpadeo en la grilla
  try
    BookMark_local:= Grilla.DataSource.DataSet.Bookmark;  // guardar posición
    Grilla.DataSource.DataSet.first; // ir a 1era fila
    s_local:= '';

    for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
      begin
       //  if (chklstColumnas.Checked[j_local]) then
          begin
            campo:='';
            campo:= Grilla.Columns[j_local].Title.Caption;
            s_local:= s_local + campo +
              Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Columns[j_local].Title.Caption));

//            if i_local < Grilla.Columns.Count then s_local:= s_local + #9;
            s_local:= s_local + #9;
          end;
      end;
    s_local:= s_local + #13 + #10;                  //CRLF

    Grilla.DataSource.DataSet.first; // ir a 1era fila


    for i_local:= 0 to Grilla.Datasource.dataset.RecordCount - 1 do  // nro filas mostradas
      begin
        for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
          begin
         //  if (chklstColumnas.Checked[j_local]) then
            begin
              campo:='';
               campo:= Grilla.Fields[j_local].AsString;
               campo:= Grilla.Columns[j_local].Field.Text;

               s_local:= s_local + campo +
                 Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Fields[j_local].AsString));
               if i_local < Grilla.datasource.dataset.recordCount then s_local:= s_local + #9;
             end;
          end;
        s_local:= s_local + #13 + #10;                  //CRLF
        Grilla.DataSource.DataSet.Next;   // siguiente fila
      end;
    ClipBoard.SetTextBuf(PChar(s_local));  // a portapapeles
    Grilla.DataSource.DataSet.Bookmark:= BookMark_local; // restaurar posición
  finally
    Grilla.DataSource.DataSet.EnableControls;
  end;
end;

//**********************************************/
// Copia Datos de Un Dataset a Otro ////////////
//**********************************************/

procedure TDMMain_FD.CopyClientDataset(Origen, Destino: TClientDataset);
var
  Stream: TMemoryStream;
begin
  Stream:= TMemoryStream.Create;
  try
    Origen.SaveToStream(Stream);
    Stream.Position:= 0;
    Destino.LoadFromStream(Stream);
  finally
    Stream.Free;
  end;
end;
//**********************************************/
//**********************************************/


function TDMMain_FD.Conectar                  : Boolean;
begin
  if TipoBaseDatos = 0 then
    begin

      DMMain_FD.fdcGestion.Params.Values['Database']   := DatosSinBDEPath;
      DMMain_FD.fdcGestion.Params.Values['User_Name']  := SYSDBA;
      DMMain_FD.fdcGestion.Params.Values['Password']   := DBPassword;
      DMMain_FD.fdcGestion.Params.Values['DriverID']   := 'IB';
      DMMain_FD.fdcGestion.Params.Values['SQLDialect'] := '1';

    end
  else if TipoBaseDatos = 1 then
    begin

      DMMain_FD.fdcGestion.Params.Values['Database']   := DatosSinBDEPath;
      DMMain_FD.fdcGestion.Params.Values['User_Name']  := SYSDBA;
      DMMain_FD.fdcGestion.Params.Values['Password']   := DBPassword;;
      DMMain_FD.fdcGestion.Params.Values['DriverID']   := 'FB';
      DMMain_FD.fdcGestion.Params.Values['SQLDialect'] := '3';

      DMMain_FD.FdcUser.Params.Values['Database']   := DatosSinBDEPath;
      DMMain_FD.FdcUser.Params.Values['User_Name']  := SYSDBA;
      DMMain_FD.FdcUser.Params.Values['Password']   := DBPassword;;
      DMMain_FD.FdcUser.Params.Values['DriverID']   := 'FB';
      DMMain_FD.FdcUser.Params.Values['SQLDialect'] := '3';

    end;

  try
    DMMain_FD.FDMoniFlatFileClientLink.FileName:= ReadGeneralFile('Monitoreo', 'path', '');
    DMMain_FD.FDMoniFlatFileClientLink.Tracing := ReadGeneralFile('Monitoreo', 'Activo', False);


    DMMain_FD.fdcGestion.Connected := True;
    DMMain_FD.FdcUser.Connected    := True;

    Result      :=  DMMain_FD.fdcGestion.Connected;
  except
    on e: Exception do
      begin
        DMMain_FD.fdcGestion.Connected      := False;
        DMMain_FD.FdcUser.Connected         := False;
        Result  :=  False;
      end;
  end;

end;

function  TDMMain_FD.ConectarContable       : Boolean;
begin
  if TipoBaseDatos = 0 then
    begin
      DMContable.fdcContables.Params.Values['Database']  := DatosContable;
      DMContable.fdcContables.Params.Values['User_Name'] := SYSDBA;
      DMContable.fdcContables.Params.Values['Password']  := DBPassword;
      DMContable.fdcContables.Params.Values['DriverID']  := 'IB';
      DMContable.fdcContables.Params.Values['SQLDialect']:= '1';
    end
  else if TipoBaseDatos = 1 then
    begin
      DMContable.fdcContables.Params.Values['Database']  := DatosContable;
      DMContable.fdcContables.Params.Values['User_Name'] := SYSDBA;
      DMContable.fdcContables.Params.Values['Password']  := DBPassword;
      DMContable.fdcContables.Params.Values['DriverID']  := 'FB';
      DMContable.fdcContables.Params.Values['SQLDialect'] := '3';
    end;

  try
    if (DatosContable<>'') then
      DMContable.fdcContables.Connected := True;

    Result    := DMContable.fdcContables.Connected;
  except
    on e: Exception do
    begin
      DMContable.fdcContables.Connected := False;
      Result  :=  False;
    end;
  end;
end;


function TDMMain_FD.Autoriza_Comprobante(Dato:Integer):Boolean;
begin
  if CpbtePorUsuario then
    begin
      DMStoreProcedure.QComprob_User.Close;
      DMStoreProcedure.QComprob_User.ParamByName('Usuario').Value     :=  UsuarioActivoId;
      DMStoreProcedure.QComprob_User.ParamByName('Comprobante').Value :=  Dato;
      DMStoreProcedure.QComprob_User.Open;
      Result:=DMStoreProcedure.QComprob_User.Fields[0].Value='S';
      if Result=False Then
        ShowMessage('No tiene permiso para usar este comprobante');
      DMStoreProcedure.QComprob_User.Close;
    end
  else
    Result:=True;
  if (UsuarioActivoId=0) or (UsuarioActivo='master') or (UsuarioActivoId=1) Then
    result:=True;
end;


function TDMMain_FD.CotizacionCliente(const Cliente: String; const IdMoneda: Integer = 1)  : Extended;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLCotizacionCliente,[Cliente,IdMoneda]);
  if Q.Fields[0].AsString <> '' then
    Result    :=  Q.Fields[0].AsFloat
  else
    Result    :=  1;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TDMMain_FD.CorrigeIvaDetVta(const id:Integer);
begin
   fdcGestion.StartTransaction;
  try
    DMStoreProcedure.spCorrigeIVAFacVta.Close;
    DMStoreProcedure.spCorrigeIVAFacVta.Params.ParamByName('id').Value:=Id;
    DMStoreProcedure.spCorrigeIVAFacVta.ExecProc;
    fdcGestion.Commit;
  Except
    fdcGestion.Rollback;
    ShowMessage('No se pudo realizar la correcion de Iva en los detalle...');
  end;
  DMStoreProcedure.spCorrigeIVAFacVta.Close;
end;

procedure TDMMain_FD.RevNroRto;
var Q:TFDQuery;
begin
  Q:= TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.ExecSQL(SQLRevNroRto);
  Q.Close;
  FreeAndNil(q);
end;

function TDMMain_FD.DelDir(dir: String): boolean;
var
  fos: TSHFileOpStruct;
begin
	ZeroMemory(@fos, SizeOf(fos));
	with fos do
	  begin
	    wFunc  := FO_DELETE;
	    fFlags := FOF_SILENT or FOF_NOCONFIRMATION;
	    pFrom  := PChar(dir+#0);
	  end;
	  Result:=(0=ShFileOperation(fos));
end;

function  TDMMain_FD.DepositoPorSucursal       (const Sucursal: Integer)   : Integer;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLDepositoPorSucursal,[Sucursal]);
  if Q.Fields[0].AsString <> '' then
    Result  :=  Q.Fields[0].AsInteger
  else
    Result  :=  -1;
  Q.Close;
  FreeAndNil(q);
end;

function  TDMMain_FD.JurisdiccionPorSucursal   (const Sucursal: integer; var Jurisdiccion: TJurisdiccion)      : Boolean;
VAR Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLJurisdiccionPorSucursal,[Sucursal]);
  if not Q.IsEmpty then
    begin
      Jurisdiccion.ID         :=  Q.FieldByName('ID').AsInteger;
      Jurisdiccion.LOCALIDAD  :=  Q.FieldByName('ID_JURIDICION_LOCALIDAD').AsInteger;
      Jurisdiccion.DETALLE    :=  Q.FieldByName('MUESTRAJURIDICCION').AsString;
      Result                  :=  True;
    end
  else
    Result                    :=  False;
  Q.Close;
  FreeAndNil(Q);
end;


function  TDMMain_FD.JurisdiccionIIBLocalidad (Localidad:String; var Jurisdiccion: TJurisdiccion)  : Boolean;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Add('select j.id_juridicion,min(j.id) as id,j.localidad from juridicion_localidad_w j '+
                'where j.localidad = ' + QuotedStr(localidad)+
                ' group by j.id_juridicion,j.localidad');
  Query.Open;
  if not Query.IsEmpty then
    begin
      Jurisdiccion.LOCALIDAD := Query.FieldByName('id').AsInteger;
      Jurisdiccion.ID        := Query.FieldByName('id_juridicion').AsInteger;
      Result                 := True;
    end
  else
    Result                   := False;
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetLocalidad_Nombre (NombreLocalidad:String;var Localidad: TLocalidad)  : Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select c.id_postal,c.codigo_postal,c.detalle_postal,c.telediscado,c.provincia from c_postal c '+
                'where c.detalle_postal containing ' + QuotedStr(NombreLocalidad) +
                ' order by c.detalle_postal asc rows 1 ');
  Query.Open;
  if not Query.IsEmpty then
    begin
      localidad.ID            := Query.FieldByName('id_postal').AsInteger;
      Localidad.Codigo_Postal := Query.FieldByName('codigo_postal').AsString;
      Localidad.Detalle       := Query.FieldByName('detalle_postal').AsString;
      Localidad.Telediscado   := Query.FieldByName('telediscado').AsString;
      Localidad.Id_Provincia  := Query.FieldByName('provincia').AsInteger;
      Result                  :=  True;
    end
  else
    Result                    :=  False;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetLoteAjustes: Integer;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select coalesce( Max(j.lote),0) from ajuste_cc_clientes j ');
  Query.Open;
  if not Query.IsEmpty then
    begin
      Result  := Query.fields[0].Value+1;
    end
  else
    Result    := 1;
  Query.Close;
  FreeAndNil(Query);

end;

function  TDMMain_FD.GetLocalidad_CPostal (CPostal:String;var Localidad: TLocalidad)  : Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select c.id_postal,c.codigo_postal,c.detalle_postal,c.telediscado,c.provincia from c_postal c '+
                'where c.codigo_postal containing ' + QuotedStr(CPostal) +
                ' order by c.c_postal asc rows 1 ');
  Query.Open;
  if not Query.IsEmpty then
    begin
      localidad.ID            := Query.FieldByName('id_postal').AsInteger;
      Localidad.Codigo_Postal := Query.FieldByName('codigo_postal').AsString;
      Localidad.Detalle       := Query.FieldByName('detalle_postal').AsString;
      Localidad.Telediscado   := Query.FieldByName('telediscado').AsString;
      Localidad.Id_Provincia  := Query.FieldByName('provincia').AsInteger;
      Result                  :=  True;
    end
  else
    Result                    :=  False;
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetHayRegistroPikeo (Cliente:String)  : Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select count(*) from borrador_registro r where r.cliente='+QuotedStr(Cliente));
  Query.Open;
  Result      := Query.Fields[0].AsInteger>0;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.BorrarRegistrPikeo(Lote: Integer): Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  if Lote>0 then
    Result:=Query.ExecSQL('delete from borrador_registro r where r.id_lote='+QuotedStr(IntToStr(lote)))>0
  else
    if Lote<0 then
      Result:=Query.ExecSQL('delete from borrador_registro r where r.cliente='+QuotedStr(''))>0;

  Query.Close;
  FreeAndNil(Query);
end;



function  TDMMain_FD.VerificaNroRto            (const Letra, SucFac, NumFac, Tipo, Clase: string; const Sucursal: Integer)  : Boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLBuscaRto,[Letra,SucFac,NumFac,Sucursal,Tipo,Clase]);
  Result  := not Q.IsEmpty ;
  if Result then
    ShowMessage('Este Comprobante ya esta ingresado....');
  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.CajaCerrada(const Caja:Integer):boolean;
var Q:TFDQuery;
begin
  Q:= TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLEstadoCaja,[Caja]);
  Result  :=  Q.Fields[0].AsInteger  = 1;
  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.CajaCerradaNC(id_fc:Integer;Clasecpbte:String): Boolean;
var Q:TFDQuery;
begin
  Q := TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;

  Q.SQL.Text:='select coalesce(cc.estado,1) from caja_mov cm '+
              'left join caja_cab cc on cc.id_caja=cm.id_caja '+
              'where cm.id_comprobante = :id_fc and '+
              ' cm.tipo_comprob   = ''NC'' and '+
              ' cm.clase_comprob  = :clasecpbte and '+
              ' cm.tipo_operacion = ''E'' ';
  Q.ParamByName('id_fc').AsInteger     := id_fc;
  Q.ParamByName('clasecpbte').AsString := Clasecpbte;
  Q.Open;
  if Q.Fields[0].AsString<>'' then
    result:=Q.Fields[0].ASInteger=1
  else
    Result:=True;
  Q.Close;
  FreeAndNIl(Q);
end;

procedure TDMMain_FD.Abrir_Cerrar_Caja(const id_caja:Integer; const Estado:Integer);
var QQuery:TFDQuery;
begin
  QQuery:=TFDQuery.Create(nil);
  QQuery.Connection := fdcGestion;
  QQuery.SQL.Text   := 'update caja_cab cb set cb.estado = :estado where cb.id_caja = :id_caja';
  QQuery.ParamByName('estado').AsInteger     := Estado;
  QQuery.ParamByName('id_caja').AsInteger    := id_caja;
  try
    QQuery.ExecSQL();
  finally
    QQuery.Close;
  end;
  LogFileFD(1,2,'Modificacion de estado de caja a estado :'+ IntToStr(estado),'VARIOS');
  FreeAndNil(QQuery);
end;

function  TDMMain_FD.GrupoCpbteCompras(const IdCpbte:   integer) : integer;
var q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLGrupoCpbteCompras,[IdCpbte]);
  if Q.IsEmpty then
    Result  :=  -1
  else
    Result  :=  Q.Fields.Fields[0].AsInteger;
  Q.Close;
  FreeAndNil(Q);
end;

function  TDMMain_FD.GrupoCpbteVta(const IdCpbte:   integer) : integer;
var q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLGrupoCpbteVta,[IdCpbte]);
  if Q.IsEmpty then
    Result  :=  -1
  else
    Result  :=  Q.Fields.Fields[0].AsInteger;
  Q.Close;
  FreeAndNil(Q);
end;


Function TDMMain_FD.GetImageFormat(Stream : TStream) : String;
Var
   FirstBytes: AnsiString;
begin
   Result := '';
   if (Stream <> nil) and (Stream.Size > 40) then
   begin
      try
         SetLength(FirstBytes, 8);
         Stream.Read(FirstBytes[1], 8);
         if Copy(FirstBytes, 1, 2) = 'BM' then
            Result := '.bmp'
         else if FirstBytes = #137'PNG'#13#10#26#10 then
            Result := '.png'
         else if Copy(FirstBytes, 1, 3) = 'GIF' then
            Result := '.gif'
         else if Copy(FirstBytes, 1, 2) = #$FF#$D8 then
            Result := '.jpg'
         else if Copy(FirstBytes, 1, 3) = #$49#$49#$2A then
            Result := '.tif'
         else if Copy(FirstBytes, 1, 3) = #$0#$0#$01 then
            Result := '.ico'
      Finally
      end;
   end;
End;


procedure TDMMain_FD.GuardarImagenReducidaEnStock(CodigoProducto: string);
var
  Conn: TFDConnection;
  QueryFoto, QueryStock: TFDQuery;
  ImagenOriginal : TGraphic;
  ImagenReducida : TJPEGImage;
  RutaImagen     : String;
  Bitmap         : TBitmap;

  MemStream: TMemoryStream;
begin
  Conn           := TFDConnection.Create(nil);
  QueryFoto      := TFDQuery.Create(nil);
  QueryStock     := TFDQuery.Create(nil);
  ImagenReducida := TJPEGImage.Create;
  Bitmap         := TBitmap.Create;
  MemStream      := TMemoryStream.Create;

  try
    Conn.Params          := DMMain_FD.fdcGestion.Params;
    Conn.LoginPrompt     := False;
    Conn.Connected       := True;
    QueryFoto.Connection := Conn;
    QueryFoto.SQL.Text   := 'SELECT f.foto FROM STOCK_FOTOS f '+
                            'WHERE f.codigo = :Codigo ORDER BY f.por_defecto DESC,f.id ROWS 1';
    QueryFoto.ParamByName('Codigo').AsString := CodigoProducto;
    QueryFoto.Open;

    if not QueryFoto.IsEmpty then
      begin
        RutaImagen := GetPathImagenes +'\'+ QueryFoto.FieldByName('FOTO').AsString;
        // Determinar el formato de la imagen
        if LowerCase(ExtractFileExt(RutaImagen)) = '.png' then
          ImagenOriginal := TPngImage.Create
        else
          ImagenOriginal := TJPEGImage.Create;

        ImagenOriginal.LoadFromFile(RutaImagen);

        // Redimensionar la imagen a 100x100 píxeles
        Bitmap.Width  := 100;
        Bitmap.Height := 100;
        Bitmap.Canvas.StretchDraw(Rect(0, 0, 100, 100),ImagenOriginal);

        ImagenReducida.Assign(Bitmap);
        ImagenReducida.CompressionQuality := 80;
        ImagenReducida.SaveToStream(MemStream);

  //    ImagenReducida.Assign(Bitmap);
  //    ImagenReducida.SaveToStream(MemStream);
  //    MemStream.Position := 0;

      // Insertar la imagen en STOCK
        QueryStock.Connection := Conn;
        QueryStock.SQL.Text := 'UPDATE STOCK SET FOTO = :Imagen WHERE CODIGO_STK = :Codigo';
        QueryStock.ParamByName('Imagen').LoadFromStream(MemStream, ftBlob);
        QueryStock.ParamByName('Codigo').AsString := CodigoProducto;
        QueryStock.ExecSQL;
        QueryStock.Close;

      end;
  finally
    QueryFoto.Free;
    QueryStock.Free;
    ImagenOriginal.Free;
    ImagenReducida.Free;
    Bitmap.Free;
    MemStream.Free;
    Conn.Free;
  end;
end;

function  TDMMain_FD.BuscaOP_PorFc(const IdCpbte:  integer)                   : Boolean;
var Aux: Integer;
begin
  Result  := BuscaOP_PorFc(IdCpbte, Aux);
end;


function  TDMMain_FD.BuscaOP_PorFc(const IdCpbte:  integer; var Res: Integer)  : Boolean;
VAR Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  try
    Q.Open(SQLBuscaOP_PorFc,[IdCpbte]);
    if (not Q.IsEmpty) and (Q.Fields[0].AsString<>'') then
      begin
        Res     :=  Q.Fields[0].AsInteger;
        Result  :=  True;
      end
    else
      begin
        Res     :=  -1;
        Result  :=  False;
      end;
  except
    Res     :=  -1;
    Result  :=  False;
  end;

  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.BuscarCpbteVta(letra, numfac, sucfac: String;
  sucursal: Integer; tipo, tipo2: String): boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  try
    Q.SQL.Text := 'select f.id_fc,f.codigo,f.nombre,f.fechavta,f.total from fcvtacab f '+
                  'where f.letrafac = :Letra and f.sucfac = :sucfac and f.numerofac = :numfac and '+
                  'f.sucursal = :sucursal and (f.tipocpbte = :tipo or f.tipocpbte= :tipo2 )';
    Q.ParamByName('Letra').AsString     := letra;
    Q.ParamByName('sucfac').AsString    := sucfac;
    Q.ParamByName('numfac').AsString    := numfac;
    Q.ParamByName('sucursal').AsInteger := sucursal;
    Q.ParamByName('tipo').AsString      := tipo;
    Q.ParamByName('tipo2').AsString     := tipo2;
    Q.Open;
    if not(q.isEmpty) Then
      Result  :=  True
    else
      Result  :=False;
  except
    Result  :=  False;
  end;
  Q.Close;
  FreeAndNil(Q);

end;

function TDMMain_FD.BuscarRecibo(Clase, Letra, Prefijo, Numero: string;
  Sucursal: Integer): Boolean;
var Query:TFDQuery;
    Conn :TFDConnection;
begin
  Conn       := TFDConnection.Create(nil);
  Query      := TFDQuery.Create(nil);
  try
    Conn.Params         := DMMain_FD.fdcGestion.Params;
    Conn.LoginPrompt    := False;
    Conn.Connected      := True;
    Query.Connection    := Conn;
    Query.SQL.Text := '''
                      select coalesce( max(r.id_rc),0) from recibos r where
                        r.clasecpbte = :clase and
                        r.letrarc    = :Letra and
                        r.sucrc      = :suc and
                        r.numerorc   = :num and
                        r.sucursal   = :sucursal
                     ''' ;
    Query.ParamByName('clase').AsString     := Clase;
    Query.ParamByName('letra').AsString     := Letra;
    Query.ParamByName('suc').AsString       := Prefijo;
    Query.ParamByName('num').AsString       := Numero;
    Query.ParamByName('sucursal').AsInteger := sucursal;
    Query.Open;
    Result  := (Query.Fields[0].Value>0);
  except
    Result  := False;
  end;
  Query.Close;
  Conn.Close;
  FreeAndNil(Query);
  FreeAndNil(Conn);
end;


function TDMMain_FD.ListaDirectorios(directorioPadre: string) : TStringList;
var
 sr: TSearchRec;
begin
  Result := TStringList.Create;
  if FindFirst( directorioPadre + 'Log*', faDirectory, sr) = 0 then
    repeat
      if (sr.Attr = faDirectory) and (sr.TimeStamp<Date-30) then
        Result.Add(directorioPadre + sr.Name);
    until FindNext(sr) <> 0;
  System.SysUtils.FindClose(sr);
end;

function TDMMain_FD.ListaPorDefecto (const Sucursal: Integer =-1) : Integer;
var  Aux:  integer;
Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Aux :=  -1;
  if Sucursal <> -1 then
    begin
      Q.Open(SQLListaPorDefectoSuc,[Sucursal]);
      if Q.Fields[0].AsString <>'' then
        Aux  :=  Q.Fields[0].AsInteger
      else
        Aux:=-1;
      Q.Close;
    end;

  if Aux = -1 then
    begin
      Q.Open(SQLListaPorDefecto);
      if Q.Fields[0].AsString <>'' then
        Aux  :=  Q.Fields[0].AsInteger
      else
        Aux:=-1;
      Q.Close;
    end;

  if Aux = -1 then
    begin
      Q.Open(SQLListaPrimera);
      if Q.Fields[0].AsString <>'' then
        Aux  :=  Q.Fields[0].AsInteger;
      Q.Close;
    end;

  Result  :=  Aux;
  FreeAndNil(Q);
end;

procedure TDMMain_FD.ActualizaCostoFc_Vta(Id: Integer);
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Add('execute procedure actualiza_costo_fcvta (:id)');
  Query.ParamByName('id').Value := id;

  Query.ExecSQL;
  Query.Close;

  FreeAndNil(query);

end;

procedure TDMMain_FD.APlicar_Consolidacion(Codigo: string; id_ajuste:Integer);
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Add('execute procedure HACER_APLICACION_CONSOLIDACION (:codigo,:id_ajuste)');
  Query.ParamByName('codigo').Value       := codigo;
  Query.ParamByName('id_ajuste').Value    := id_ajuste;
  Query.ExecSQL;
  Query.Close;

  FreeAndNil(query);

end;

procedure TDMMain_FD.APlicarAJ_Venta(Codigo: string; Asociado_id_cpbte:Integer);
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Add('execute procedure HACER_APLICACION_CCVTA_AJ (:codigo,:asociado_id_cpbte)');
  Query.ParamByName('codigo').Value            := codigo;
  Query.ParamByName('asociado_id_cpbte').Value := Asociado_id_cpbte;
  Query.ExecSQL;
  Query.Close;

  FreeAndNil(query);

end;

procedure TDMMain_FD.APlicarNC_Recibos(Codigo: string; Id_Nota_credito,Id_mov_ctacte: Integer);
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('execute procedure HACER_APLICACION_CCVTA_RC_NC (:codigo,:id_nota_credito,:id_movctacte)');
  Query.ParamByName('codigo').Value            := codigo;
  Query.ParamByName('id_nota_credito').Value   := Id_Nota_credito;
  Query.ParamByName('id_movctacte').Value      := Id_mov_ctacte;
  Query.ExecSQL;
  Query.Close;

  FreeAndNil(query);

end;

procedure TDMMain_FD.APlicarNC_Venta(Codigo:string;Asociado_id_cpbte,Id_Nota_credito: Integer);
var Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Add('execute procedure HACER_APLICACION_CCVTA (:codigo,:asociado_id_cpbte,:id_nota_credito)');
  Query.ParamByName('codigo').Value            := codigo;
  Query.ParamByName('asociado_id_cpbte').Value := Asociado_id_cpbte;
  Query.ParamByName('id_nota_credito').Value   := Id_Nota_credito;
  Query.ExecSQL;
  Query.Close;

  FreeAndNil(query);

end;

procedure TDMMain_FD.Agregar_Pedido_Borrador(const codigo,detalle:string; const Cantidad:Extended);
begin
  fdcGestion.StartTransaction;
  try
    spAgregarPedidoBorrador.Close;
    spAgregarPedidoBorrador.ParamByName('codigo').Value        := Codigo;
    spAgregarPedidoBorrador.ParamByName('Detalle').AsString    := Detalle;
    spAgregarPedidoBorrador.ParamByName('cantidad').AsFloat    := Cantidad;

    spAgregarPedidoBorrador.ExecProc;
    spAgregarPedidoBorrador.Close;
    fdcGestion.Commit;
  except
    fdcGestion.Rollback;
    ShowMessage('NO se ingreso registro en el LogFile....!');
  end;
end;

function TDMMain_FD.AltaProveedor(Nombre, RazonSocial, Cuit: String;
  CondicionIVA: Integer): string;
  var Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Add('execute procedure Ingresar_proveedor (:codigo,:nombre,:razonsocial,:direccion,'+
                ':cuit,:telefono,:cpostal,:cond_iva,:obs,:mail)');
  Query.ParamByName('codigo').Value      := '';
  Query.ParamByName('Nombre').Value      := AnsiRightStr(nombre,35);
  Query.ParamByName('razonsocial').Value := AnsiRightStr(razonSocial,35);
  Query.ParamByName('direccion').Value   := '';
  Query.ParamByName('cuit').Value        := cuit;
  Query.ParamByName('telefono').Value    := '';
  Query.ParamByName('cpostal').Value     := '7600';
  Query.ParamByName('cond_iva').Value    := CondicionIVA;
  Query.ParamByName('obs').Value         := '';
  Query.ParamByName('mail').Value        := '';
  Query.open;// ExecSQL;
  result:=  Query.Fields[0].AsString;

  Query.Close;
  FreeAndNil(query);
end;

function TDMMain_FD.ComprobanteCompra_x_CodigoAfip(CodigoAfip:String;Sucursal:Integer):Integer;
  var Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Add('select c.id_comprobante from comprobantes c where c.codigo_afip=:codigoafip '+
                'and c.compra_venta=''C'' and c.tipo_comprob=''FC'' and c.sucursal=:sucursal');
  Query.ParamByName('codigoAfip').Value  := AnsiRightStr('000'+codigoAfip,3);
  Query.ParamByName('sucursal').Value    := Sucursal;
  Query.open;// ExecSQL;
  if Not(VarIsNull(Query.Fields[0].AsInteger)) then
    result:= Query.Fields[0].AsInteger
  else
    Result:=-1;

  Query.Close;
  FreeAndNil(query);
end;



function  TDMMain_FD.CodificaStock    (const Codigo: string)      : string;
var
  Justifica,Char, SAux: string;
begin
  SAux  :=  Trim(Codigo);
  if Length(SAux) <> 8 then
    begin
      Justifica               :=  JustificaCodigo;
      Char                    :=  CharCodigo;
      if Char = '' then Char  :=  '0';

      while Length(Char)< 8 do
        Char                  :=  Char + Char; //  ARMO UNA CADENA DE 8 CARACTERES DE RELLENO

      if Justifica = 'I' then
        SAux    :=  LeftStr (Trim(Codigo) + Char,   8)
      else  // IF JUSTIFICA = 'D'/''
        SAux    :=  RightStr( Char + Trim(Codigo),  8);
    end;

  Result  :=  SAux;
end;

procedure TDMMain_FD.ConfirmaStock(const Deposito: Integer; const Codigo: string; const Fecha:Integer = 0);
begin
  DMStoreProcedure.QConfirmaExistencia.Close;
  DMStoreProcedure.QConfirmaExistencia.ParamByName('deposito').Value:=Deposito;
  DMStoreProcedure.QConfirmaExistencia.ParamByName('codigo').Value  :=Codigo;
  if Fecha=0 then
    DMStoreProcedure.QConfirmaExistencia.ParamByName('Fecha').Clear
  else
    DMStoreProcedure.QConfirmaExistencia.ParamByName('Fecha').AsDateTime :=Date;
  DMStoreProcedure.QConfirmaExistencia.ExecSQL();
  DMStoreProcedure.QConfirmaExistencia.Close;
end;

function  TDMMain_FD.StockEditDetalle (const Codigo: string)      : Boolean;
VAR Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLStockEditDetalle,[Codigo]);
  Result  :=  Q.Fields[0].AsString = 'S';
  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.SearchCodigo(const Text: String; var Datos:TDataSource; const CodigoAlternativo:Boolean = False;const Proveedor:String=''):String;
var
  CodTxt,AUx,CodAlternativo, Resultado:String;
begin
  If Datos.State=dsBrowse Then Datos.edit;

  EncontroCodigoBarra := False;
  EncontroCodigoSerie := False;

  if CodigoAlternativo then
    CodTxt:='********';

  Resultado  :=  '';

  // ***  Busca por el codigo del proveedor
  if Proveedor<>'' then
    begin
      QSQLConsulta.Open(SQLBuscaCodigoProveedor,[Text,Proveedor]);
      if QSQLConsulta.Fields[0].AsString <> '' then
        begin
          Resultado             := QSQLConsulta.Fields[0].AsString;
          EncontroCodigoBarra   := False;
          EncontroCodigoSerie   := False;
        end;
      QSQLConsulta.Close;
    end;

  if Resultado = '' then
    if (Length(Trim(Text))<=8) and (CodigoAlternativo = False) then
      begin
        CodTxt  :=  CodificaStock(Text);
        QSQLConsulta.Open(SQLBuscaCodigoStk,[CodTxt]);
        Resultado      := QSQLConsulta.Fields[0].AsString;
        QSQLConsulta.Close;
      end;

  if Resultado = '' then
    begin
      Resultado   := SearchCodigoBarra(Text);
      if Resultado <> '' then
        EncontroCodigoBarra   :=  True;
    end;

    //**************************************
    // Busqueda por PLU Balanza
    //**************************************
    DesdePLU    :=  False;

    If (Resultado = '') Then
      begin
        if Length(Trim(Text))>8 then
          CodTxt:= Copy(Trim(Text),CodInicioPlu,CodLongPlu)
        else
          CodTxt:='';

        if CodTxt<>'' then
          begin
            CodTxt                := '00000000'+CodTxt;
            CodTxt                := AnsiRightStr(CodTxt,5);
            QSQLConsulta.Open(SQLBuscaPLU,[CodTxt]);
            if QSQLConsulta.Fields[0].AsString <> '' then
              begin
                DesdePLU          := True;
                Resultado         := QSQLConsulta.Fields[0].AsString; //DMbuscadores.QBuscaStockPLUCODIGO_STK.AsString;
                Aux               := Copy(Trim(Text),PesoInioPLU,PesoLongPLU);
                if Aux='' then Aux:='0';
                PrecioPlu         := Aux;
              end
            else
              Resultado           :='';
            QSQLConsulta.Close;
          end
        else
          Resultado               :='';
      end;
    //********* fin Busqueda PLU ********************
    //***********************************************
    if (DesdePLU = False) and (Resultado = '') Then
      begin
        // BUsco por el serie ...

        QSQLConsulta.Open(SQLBuscaCodigoSerie,[UpperCase(Text)]);
        if QSQLConsulta.Fields[0].AsString <> '' then
          begin
            Resultado             := QSQLConsulta.Fields[0].AsString;
            EncontroCodigoBarra   := True;
            EncontroCodigoSerie   := True;
          end;
        QSQLConsulta.Close;


        if Resultado = '' then
          begin
            EncontroCodigoBarra   := False;
            EncontroCodigoSerie   := False;
            // **** BUsco por Alternativo **************************...
            CodAlternativo        := Trim(Text);

            if Length(CodAlternativo) <  20 then
              begin
                QSQLConsulta.Open(SQLBuscaCodigoAlternativo,[CodAlternativo]);
                if (QSQLConsulta.RecordCount > 1) then
                  begin
                    if Not Assigned(FormMuestraListaCodigoBarra) then
                      FormMuestraListaCodigoBarra :=  TFormMuestraListaCodigoBarra.Create(Application);
                    FormMuestraListaCodigoBarra.dbgArticulos.Columns.Clear;
                    FormMuestraListaCodigoBarra.DSArticulos.DataSet := QSQLConsulta;

//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[0].Title.Alignment:=taCenter;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[1].Title.Alignment:=taCenter;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[2].Title.Alignment:=taCenter;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[3].Title.Alignment:=taCenter;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[4].Title.Alignment:=taCenter;
//
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[0].Alignment:=taCenter;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[1].Alignment:=taCenter;
//
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[0].Width:=120;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[1].Width:=120;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[2].Width:=350;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[3].Width:=300;
//                    FormMuestraListaCodigoBarra.dbgArticulos.Columns[4].Width:=300;
//

                      FormMuestraListaCodigoBarra.ShowModal;
                  end;

                If ((QSQLConsulta.Active) and (QSQLConsulta.Fields[0].AsString <> '')) Then
                  begin
                    Resultado             := QSQLConsulta.Fields[0].AsString;
                    EncontroCodigoBarra   := False;
                    EncontroCodigoSerie   := False;
                  end
                else
                  begin
                    Resultado             := Text;
                    EncontroCodigoBarra   := False;
                    EncontroCodigoSerie   := False;
                  end;
                QSQLConsulta.Close;
              end
            else
              Resultado  :=  Text;
            //***************************************************
          end;
      end;
  Result  :=  Resultado;
end;

function  TDMMain_FD.SearchCodigoBarra(const CodigoBarra: string)             : String;
VAR Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLBuscaCodigoBarra,[CodigoBarra]);
  if Q.RecordCount>1 Then
    begin
      if Not(Assigned(FormMuestraListaCodigoBarra)) Then
        FormMuestraListaCodigoBarra           :=  TFormMuestraListaCodigoBarra.Create(application);
      FormMuestraListaCodigoBarra.CodigoBarra :=  UpperCase(CodigoBarra);
      FormMuestraListaCodigoBarra.ShowModal;
      Result  :=    FormMuestraListaCodigoBarra.Codigo;
    end
  else
    Result    :=    Q.Fields[0].AsString;
  EncontroCodigoBarra   :=  (not Result.IsEmpty) and (Result <> '');
  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.GetCodigo_x_Alternativo(const CodigoAlternativo: string)  : TStock;
var
  Query: TFDQuery;
  Stock: TStock;
begin
  Stock := TStock.Create;
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := fdcGestion;
    Query.SQL.Text := 'select codigo_stk, reemplazo_stk, Detalle_stk, rubro_stk, subrubro_stk ' +
                      'from stock where reemplazo_stk = :codigoalternativo';
    Query.ParamByName('codigoalternativo').AsString := CodigoAlternativo;
    Query.Open;

    if not Query.IsEmpty then
    begin
      Stock.Codigo          := Query.Fields[0].AsString;
      Stock.CodiAlternativo := Query.Fields[1].AsString;
      Stock.Detalle         := Query.Fields[2].AsString;
      Stock.Rubro           := Query.Fields[3].AsString;
      Stock.SubRubro        := Query.Fields[4].AsString;
      Stock.Ok              := True;
    end
    else
    begin
      Stock.Codigo          := '';
      Stock.CodiAlternativo := '';
      Stock.Detalle         := '';
      Stock.Rubro           := '';
      Stock.SubRubro        := '';
      Stock.Ok              := False;
    end;

    Result := Stock;  // Asegura que el objeto se devuelva correctamente.
  finally
    Query.Close;
    Query.Free;
    FreeAndNil(Stock);
  end;

end;

function TDMMain_FD.GetCodigoExistente(const codigo: string): Boolean;
Var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select Codigo_Stk from Stock where codigo_stk = :codigo ');
  Query.ParamByName('codigo').AsString := Codigo;
  Query.Open;
  Result:=Not(Query.IsEmpty);

  Query.Close;

  FreeAndNil(query);

end;

function TDMMain_FD.GetUltimoCodigoStk_RubSub(const Rubro,SubRub:string): String;
  Var Query:TFDQuery;
  Num:Integer;
  Cadena:String;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select max(Codigo_Stk) from Stock where (Rubro_Stk = :id_Rubro ) and ( SubRubro_Stk = :id_SubRubro ) ');
  Query.ParamByName('id_rubro').AsString    := Rubro;
  Query.ParamByName('id_Subrubro').AsString := SubRub;
  Query.Open;

  IF (Query.Fields[0].AsString<>'') THEN
    Num := (StrToInt(Query.Fields[0].AsString)) + 1
  ELSE
    num := StrToInt(SubRub+'000');

  Query.Close;
  Cadena := Copy('00000000000', 1, 8 - Length(IntToStr(Num))) + IntToStr(Num);
  Result:= Cadena;// Not(Query.IsEmpty);
  Query.Close;
  FreeAndNil(query);
end;


function  TDMMain_FD.FormatoCUIT(const codigo: string): string;
var
  Aux:  string;
begin
  Aux :=  Trim(codigo);
  if Length(Aux)>11 then
    begin
      Aux :=  AnsiReplaceStr(Aux,'-','');
      Aux :=  AnsiReplaceStr(Aux,'.','');
      Result:=Aux;
    end
  else
    if Length(Aux)=11 then
      begin
        Aux :=  Aux.Insert(2,'-');
        Aux :=  Aux.Insert(11,'-');
        Result  :=  Aux;
      end
    else
      Result  :=  '00000000000';
end;

function TDMMain_FD.NombreHojaExcel(Archivo:String):String;
var  Excel: OleVariant;
     Libro: OleVariant;
begin
  Excel := CreateOleObject('Excel.Application');
  Libro := Excel.WorkBooks.Open(Archivo);
  Result:= Trim(Libro.Worksheets.Item[1].Name)+'$';
  Libro.Close;
  //FreeAndNil(Excel);
end;

function TDMMain_FD.NoSi(const Value: Boolean): string;
const
  CNOSI : array[Boolean] of string =('N', 'S');
begin
  Result:= CNOSI[Value];
end;


function  TDMMain_FD.StringATStrings(const AString: WideString)       : TStrings;
var
  SAux: TStrings;
begin
  if Trim(AString)<>'' then
    begin
      SAux    :=  TStringList.Create;
      ExtractStrings([','],[],PWideChar(AString),SAux);
      Result  :=  SAux;
    end
  else
    Result  :=  nil;
end;

function  TDMMain_FD.FieldToString   (ACDS: TClientDataSet; const FieldName: string; const Separador: String = ',';
                                        const Comillas: string = ''): String;
var
  CDSClone:TClientDataSet;  AField: TField;   Res: string;
begin
  Res :=  '';
  if (ACDS.Active) and (not ACDS.IsEmpty) then
    begin
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(ACDS,True);
      CDSClone.First;
      AField  := ACDS.FindField(FieldName);
      if AField <> nil then
        while not CDSClone.Eof do
          begin
            Res   :=  Res + Comillas + AField.AsString + Comillas;
            if CDSClone.RecNo < CDSClone.RecordCount -1 then
              Res :=  Res + Separador;
            CDSClone.Next;
          end;
      CDSClone.Close;
      FreeAndNil(CDSClone);
    end;
  Result  :=  Res;
end;


function  TDMMain_FD.SearchCodigoCliente(codigo: string): string;
var Aux, RAux: string;
Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Aux :=  Trim(Codigo);
  if Length(Aux)<=6 then
    Result  :=  RightStr('000000'+Aux,6)
  else
    begin
      //// BUSCO POR TARJETA DE CLIENTE
      Q.Open(SQLBuscaClientePorTarjeta,[Aux]);
      RAux  :=  Q.Fields.Fields[0].AsString;
      ///// BUSCO POR CUIT
      if RAux='' then
        begin
          Q.Close;
          Q.Open(SQLBuscaClientePorCUIT,[FormatoCUIT(Aux)]);
          RAux  :=  Q.Fields.Fields[0].AsString;
        end;
      ////  BUSCO POR DOCUMENTO
      if RAux='' then
        begin
          Q.Close;
          Q.Open(SQLBuscaClientePorDocumento,[Aux]);
          RAux  :=  Q.Fields.Fields[0].AsString;
        end;

      Q.Close;
      Result  :=  RAux;
    end;
  FreeAndNil(Q);
end;


function  TDMMain_FD.Colores(var AColor: TColor):  Boolean;
var
  Colores:  TColorDialog;
begin
  Colores   :=  TColorDialog.Create(Application);
  if  Colores.Execute then
    begin
      AColor    :=  Colores.Color;
      Result    :=  True;
    end
  else
    Result      :=  False;
  Colores.Free;
end;

function TDMMain_FD.CompDeCommpraCC(CodigoAfip: String; Sucursal:Integer): Integer;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Add('select min(c.id_comprobante) as Id_Comprobante from comprobantes c where c.codigo_afip=:codigo and c.sucursal=:sucursal and c.compra_venta=''C'' and c.tipo_comprob=''FC''; ');
  Query.ParamByName('codigo').AsString    := AnsiRightStr('000'+CodigoAfip,3);
  Query.ParamByName('sucursal').AsInteger := Sucursal;
  Query.Open;

  IF (Query.Fields[0].AsString<>'') THEN
    Result := (StrToInt(Query.Fields[0].AsString))
  ELSE
    Result := -1;

  Query.Close;

  FreeAndNil(query);
end;

procedure TDMMain_FD.DataModuleCreate(Sender: TObject);
begin
  TrueBoolStrs      :=  ['S','Si'];              /// Utilizados para las funciones StrToBool y BoolToStr
  FalseBoolStrs     :=  ['N','No'];
end;

function  TDMMain_FD.DBOpciones( const Nombre: string)  :Variant;
Var Aux:  Variant;
begin
  Aux :=  '';
  try
    Aux :=  ReadDBOption(Nombre);
  finally   
    Result  :=  Aux;     
  end;
end;


function  TDMMain_FD.ReadFile        (const FileName,Section, Name: string; const ValPorDef: Variant):  Variant;
var
  ArchIni:   TIniFile; VT: word; SAux: string;  BAux: Boolean;
begin
  ArchIni   :=  TIniFile.Create(MainPath + FileName);
  VT        :=  VarType(ValPorDef);
  case VT of
    vtInteger, vtInt64: Result  :=  ArchIni.ReadInteger(Section,Name,ValPorDef);
    vtBoolean:
                 begin
                  try
                    Baux  :=  ArchIni.ReadBool(Section,Name,ValPorDef);
                  except
                    SAux  :=  ArchIni.ReadString(Section,Name,'N');
                    Baux  :=  StrToBool(SAux);
                  end;
                  Result  :=  BAux;
                end;

    vtExtended, vtCurrency: Result  :=  ArchIni.ReadFloat(Section,Name,ValPorDef);
    else
      Result  :=  ArchIni.ReadString(Section,Name,ValPorDef);
  end;
  ArchIni.free;
end;

procedure TDMMain_FD.WriteFile       (const FileName,Section, Name: string; const Value: Variant);
  var
  ArchIni:   TIniFile; ABool: Boolean; AFloat: extended; AInt: Integer; VT: word;
begin
  ArchIni  :=  TIniFile.Create(MainPath + FileName);

  VT  :=  VarType(Value);
  case VT of
    vtInteger, vtInt64: ArchIni.WriteInteger(Section,Name,Value);
    vtBoolean:          ArchIni.WriteBool(Section,Name,Value);
    vtExtended:         ArchIni.WriteFloat(Section,Name,Value);
    else                ArchIni.WriteString(Section,Name,Value);
  end;
  ArchIni.Free;
end;

function  TDMMain_FD.ReadGeneralFile (const Section, Name: string; const ValPorDef: Variant): Variant;
begin
  Result  :=  ReadFile('General.Ini', Section, Name,ValPorDef);
end;

procedure TDMMain_FD.WriteGeneralFile(const Section, Name: string; const Value: Variant);
begin
  WriteFile('General.Ini',Section,Name,Value);
end;

function  TDMMain_FD.ReadUserFile    (const Section, Name: string; const ValPorDef: Variant) :  Variant;
begin
  Result  :=  ReadFile(NombreIni, Section, Name,ValPorDef);
end;

function TDMMain_FD.RecuperarLoteRtos(id_factura: Integer): Boolean;
var QRtos,QFac:TFDQuery;
begin
  QRtos               := TFDQuery.Create(nil);
  QRtos.Connection    := DMMain_FD.fdcGestion;
  QRtos.SQL.Text      := 'update rtocab rto set  rto.idfactura=null, rto.nrofact=null, rto.anulado=''N''  where  rto.idfactura = :id ';
  QRtos.ParamByName('id').Value := id_factura;

  QFac                := TFDQuery.Create(nil);
  QFac.Connection     := DMMain_FD.fdcGestion;
  QFac.SQL.Text       := 'update fcvtacab fc set  fc.nrorto='''', fc.idremito =null  where  fc.id_Fc = :id ';
  QFac.ParamByName('id').Value := id_factura;

  fdcGestion.StartTransaction;
  try
    QRtos.ExecSQL;
    QFac.ExecSQL;
    fdcGestion.Commit;
    Result := True;
  except
    fdcGestion.Rollback;
    Result := False;
  end;
  QRtos.Close;
  QFac.Close;
  FreeAndNil(qrtos);
  FreeAndNil(QFac);
end;

procedure TDMMain_FD.WriteUserFile   (const Section, Name: string; const Value: Variant);
begin
  WriteFile(NombreIni, Section, Name,Value);
end;


function  TDMMain_FD.ReadDBOption    (const Name: string): Variant;
var
 AVal   : Variant;
 Aux    : Extended;
 AuxBool: Boolean;
 FType  : TFieldType;
 Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLOptionsSel,[Name]);  // >> ver el SQL en ConstatesSQL.pas
  if not Q.IsEmpty then
    begin
      AVal  :=  Q.FieldByName('VALOR').Value;
//    if (AVal = 'S') or (UpperCase(AVal) = 'SI') then//
//      else
//        if (AVal = 'N') or (UpperCase(AVal) = 'NO') then
//          AVal  :=  False;
      if Not(TryStrToFloat(AVal,Aux)) then
        if (Length(AVal)<3) and (TryStrToBool(String(AVal),AuxBool)) then
          AVal  :=  AuxBool;
      Result    :=  AVal;
    end
  else
    begin
      ShowMessage(' Falta Opción ' + Name + ': Revisar Base de Datos.');
      FType :=  Q.FieldDefs.Find('VALOR').DataType;
      case FType of
        ftString, ftWideString:             Result  :=  '';
        ftSmallint,ftWord, ftInteger,
          ftLargeint, ftShortint,
          ftLongWord, ftFloat, ftCurrency,
          ftFMTBcd:                         Result  :=  0;
        ftBoolean:                          Result  :=  False;
        ftDate,  ftDateTime, ftTimeStamp:   Result  :=  Date;
      end;

    end;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TDMMain_FD.WriteDBOption   (const Name: string; const Value: Variant);
var
  AuxValue: Variant;  ABool: Boolean;
  Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  if (VarType(Value) = vtBoolean) and
     (TryStrToBool(Value,ABool))
  then
    AuxValue  :=  ABool
  else
    AuxValue  :=  Value;

  Q.ExecSQL(SQLOptionsUpd, [Name, AuxValue]);
  Q.Close;
  FreeAndNil(q);

end;

function  TDMMain_FD.Redondear(const Value: Extended; const Tipo: integer=1; const Multiplo: Extended=1):   Extended;
begin
  case Tipo of
    0:  Result    :=  Value;                                          /// Sin Redondear
    1:  Result    :=  Round(Value/Multiplo)     *  Multiplo;           /// ROUND
    2:  Result    := (Trunc(Value/Multiplo)+1)  *  Multiplo;          /// UP
    3:  Result    :=  Trunc(Value/Multiplo)     *  Multiplo;          /// TRUNC
    4:  Result    := (Round(Value/Multiplo)     *  Multiplo) - 0.01;  /// $ 99,99.-
  end;
end;


function TDMMain_FD.Redondeo(Precio: extended; Presicion: Integer): Extended;
var
  Decimales   : Extended;
  Enteros     : Integer;
  DecEnteros  : Integer;
  StrDec,StrEnt,
  NumeroStr   : String;
  UltimoDigito: String;
  Aux         : Integer;
begin
  NumeroStr  := FormatFloat('0.000',Precio);
  StrDec     := Copy(NumeroStr,pos('.',NumeroStr)+1,3);
  StrEnt     := Copy(NumeroStr,1,pos('.',NumeroStr)-1);
  DecEnteros := StrToInt(StrDec);
  Enteros    := StrToInt(StrEnt);

  if Presicion=3 then
    begin
      UltimoDigito:=Copy(StrDec,3,1);
      Aux:=StrToInt(UltimoDigito);
      if (Aux<5) and (Aux>0) then
        DecEnteros:=DecEnteros+(5-Aux)
      else
        if (Aux>0) and (Aux>5) Then
          DecEnteros:=DecEnteros+(5-(Aux-5));
      decimales  := DecEnteros * 0.001;
    end
  else
    if Presicion=2 then
      begin
        UltimoDigito:=Copy(StrDec,2,2);
        Aux:=StrToInt(UltimoDigito);
        if (Aux<50) and (Aux>0) then
          DecEnteros:=DecEnteros+(50-Aux)
        else
          if (Aux>0) and (Aux>50)  Then
            DecEnteros:=DecEnteros+(50-(Aux-50));
        decimales  := DecEnteros * 0.001;
      end
    else
      if Presicion=1 then
        begin
          UltimoDigito:=Copy(StrDec,1,3);
          Aux:=StrToInt(UltimoDigito);
          if (Aux<500) and (Aux>0) then
            DecEnteros:=0
          else
            if (Aux>0) and (Aux>500)  Then
              DecEnteros:=DecEnteros+(500-(Aux-500));
          decimales  := DecEnteros * 0.001;
        end
      else
        if Presicion=0 then
          begin
            UltimoDigito:=AnsiRightStr(StrEnt,1);
            Aux:=StrToInt(UltimoDigito);
            if (Aux<=9) and (Aux>0) then
              Enteros:=Enteros+(9-Aux)+1
            else
              if (Aux=0) Then
                Enteros:=Enteros;
            decimales  := 0;
         end;

   result := (Enteros+Decimales);

end;

function TDMMain_FD.Redondeo_Menos(Precio: extended; Presicion: Integer): Extended;
var
Decimales:Extended;
Enteros  :Integer;
DecEnteros:Integer;
StrDec,StrEnt,NumeroStr:String;
UltimoDigito:String;
Aux:Integer;
begin
  NumeroStr:=FormatFloat('0.000',Precio);
  StrDec   :=Copy(NumeroStr,pos('.',NumeroStr)+1,3);
  StrEnt   :=Copy(NumeroStr,1,pos('.',NumeroStr)-1);
  DecEnteros := StrToInt(StrDec);
  Enteros    := StrToInt(StrEnt);
  //decenteros := DecEnteros + 5 - (DecEnteros Mod 5);
//  StrDec:=IntToStr(DecEnteros);
  if Presicion=3 then
    begin
      UltimoDigito:=Copy(StrDec,3,1);
      Aux:=StrToInt(UltimoDigito);
      if (Aux<5) and (Aux>0) then
        DecEnteros:=DecEnteros+(5-Aux)
      else
        if (Aux>0) and (Aux>5) Then
          DecEnteros:=DecEnteros+(5-(Aux-5));
      decimales  := DecEnteros * 0.001;
    end
  else
    if Presicion=2 then
      begin
        UltimoDigito:=Copy(StrDec,2,2);
        Aux:=StrToInt(UltimoDigito);
        if (Aux<50) and (Aux>0) then
          DecEnteros:=DecEnteros+(50-Aux)
        else
          if (Aux>0) and (Aux>50)  Then
            DecEnteros:=DecEnteros+(50-(Aux-50));
        decimales  := DecEnteros * 0.001;
      end
    else
      if Presicion=1 then
        begin
          UltimoDigito:=Copy(StrDec,1,3);
          Aux:=StrToInt(UltimoDigito);
          if (Aux<500) and (Aux>0) then
            DecEnteros:=0
          else
            if (Aux>0) and (Aux>500)  Then
              DecEnteros:=DecEnteros+(500-(Aux-500));
          decimales  := DecEnteros * 0.001;
        end;

   result := (Enteros+Decimales);

end;

function TDMMain_FD.NuevoCliente                     : string;
begin
  if (FormClienteNuevo <> nil) then FreeAndNil(FormClienteNuevo);

  FormClienteNuevo :=  TFormClienteNuevo.Create(Application);
  FormClienteNuevo.Agregar.Execute;
  FormClienteNuevo.ShowModal;
  if FormClienteNuevo.Codigo <> '' then
    Result    := FormClienteNuevo.Codigo
  else
    Result    :=  '';
end;

function  TDMMain_FD.NuevoCliente(var Nombre:string)  : string;
begin
  if (FormClienteNuevo <> nil) then FreeAndNil(FormClienteNuevo);

  FormClienteNuevo          :=  TFormClienteNuevo.Create(Application);
  FormClienteNuevo.Nombre   :=  Nombre;
  FormClienteNuevo.Agregar.Execute;
  FormClienteNuevo.ShowModal;
  if FormClienteNuevo.Codigo <> '' then
    begin
      Nombre            := FormClienteNuevo.Nombre;
      Result            := FormClienteNuevo.Codigo;
    end
  else
    Result  :=  '';
end;


procedure TDMMain_FD.NuevoRecibo (const Cliente: string ; const Importe: extended; const Obs: string = ''; const Aplicacion: Integer = -1);
begin
  if not Assigned(FormRecibo_2) then
    FormRecibo_2  :=  TFormRecibo_2.Create(Application)
  else
    FormRecibo_2.Cancelar.Execute;
  //FormRecibo_2.Show;
  FormRecibo_2.Agregar.Execute;
  FormRecibo_2.Cliente        :=  Cliente;
  FormRecibo_2.Importe        :=  Importe;
 // FormRecibo_2.Observaciones  :=  Obs;

//  if Aplicacion>0 then   FormRecibo_2.GeneraAplicacion(Aplicacion);
end;


procedure TDMMain_FD.QSQLConsultaAfterClose(DataSet: TDataSet);
begin
  QSQLConsulta.Params.Clear;
  QSQLConsulta.SQL.Clear;
end;

function TDMMain_FD.CodigoBarraFcElectronica(Numero:String):String;
var Longitud:Integer;
  I: Integer;
SumaPares,SumaImpares,SumaTotal:Integer;
verificador:Integer;
begin
  SumaPares   := 0;
  SumaImpares := 0;
  SumaTotal   := 0;
  Longitud    := Length(Trim(NUmero));
  for I := 1 to Longitud  do
    begin
      if ((I mod 2) =0) then SumaPares   := SumaPares+StrToInt(Numero[i])  else
      if ((I mod 2)<>0) then SumaImpares := SumaImpares+StrToInt(Numero[i]);
    end;
  SumaPares   := SumaPares*3;
  SumaTotal   := SumaPares+SumaImpares;
  Verificador := 10-(SumaTotal mod 10);
  result      := Numero+IntToStr(Verificador);
end;

{$D+}

function TDMMain_FD.CpbtePorDefecto           (Tipo,CompraVenta: string; Sucursal: integer;
                                               DesglozaIva : String; Usuario:Integer )  : String;
var
  ResCpbte: String;
  Q:TFDQuery;
begin
  ResCpbte      :=  '';
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  if DMMain_FD.CpbtePorUsuario then // esto verifica si la opcion es true o false
      ResCpbte  :=  CpbtePorTipoUsuario (Tipo,CompraVenta,Sucursal,DesglozaIva,Usuario)
  else
    begin
      Q.SQL.Text := SQLCpbtePorDefecto;
      Q.ParamByName('tipo').AsString         := Tipo;
      Q.ParamByName('compraventa').AsString  := Compraventa;
      Q.ParamByName('sucursal').AsInteger    := sucursal;
      Q.ParamByName('desglozaiva').AsString  := desglozaiva;
      Q.Open;
      Q.Last;
      ResCpbte  := Q.Fields[0].AsString;
      Q.Close;
    end;
  if ResCpbte = '' then
      ResCpbte  := CpbtePorTipo (Tipo,CompraVenta,Sucursal,DesglozaIva);
  Result  :=  ResCpbte;
  FreeAndNil(Q);
end;


function TDMMain_FD.CpbtePorTipoUsuario        (Tipo,CompraVenta: string; Sucursal: integer;
                                                DesglozaIva : String; Usuario : Integer )       : String;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.SQL.Text := SQLCpbtePorTipoUsuario;
  Q.ParamByName('tipo').AsString         := Tipo;
  Q.ParamByName('compraventa').AsString  := Compraventa;
  Q.ParamByName('sucursal').AsInteger    := sucursal;
  Q.ParamByName('desglozaiva').AsString  := desglozaiva;
  Q.ParamByName('usuario').AsInteger     := usuario;
  Q.Open;
  Q.First;
  Result  :=  Q.Fields[0].AsString;
  Q.Close;
  FreeAndNil(Q);
end;

function TDMMain_FD.CpbtePorTipo                ( Tipo,CompraVenta: string; Sucursal: integer;
                                                  DesglozaIva : String)                                    : String;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.SQL.Text := SQLCpbtePorTipo;
  Q.ParamByName('tipo').AsString         := Tipo;
  Q.ParamByName('compraventa').AsString  := Compraventa;
  Q.ParamByName('sucursal').AsInteger    := sucursal;
  Q.ParamByName('desglozaiva').AsString  := desglozaiva;
  Q.Open;
  if (Q.RecordCount=1) and (Q.Fields[0].AsString<>'') then
    Result    :=  Q.Fields[0].AsString
  else
    Result    :=  '';

  Q.Close;
  FreeAndNil(q);

end;

function TDMMain_FD.CondicionIvaPercecpion(codigo:Integer):string;
var Query:TFDQuery;
begin
   Query:=TFDQuery.Create(nil);
   Query.Connection:=fdcGestion;
   Query.SQL.Text:='select APLICAPERCEPCIONIVA from inscripcion where Codigo=:Codigo';
   Query.ParamByName('codigo').Value := codigo;
   Query.open;
   if (Query.RecordCount=1) and (Query.Fields[0].AsString<>'') then
    Result    :=  Query.Fields[0].AsString
  else
    Result    :=  '';

  Query.Close;
  FreeAndNil(query);
end;

function TDMMain_FD.VerificaNro ( Letra, SucFac, NumFac, Tipo, Clase: string; Sucursal: Integer) :Boolean;
var
  Resultado : Boolean;   T1, T2: string;
  Q:TFDQuery;
begin
  Q:=TFDQuery.Create(NIl);
  Q.Connection:=fdcGestion;

  Resultado :=  False;
  Q.Open(SQLBuscaFC,[Letra, SucFac, NumFac, Sucursal, Tipo, Clase]);
  Resultado := not Q.IsEmpty;
  Q.Close;

  if Resultado then
    ShowMessage('Este Comprobante ya esta ingresado....(.)')
  else
    if VerificaNroCpbte then
      begin
        if ((tipo='FC') or (Tipo='FO')) then
          begin
            T1  :=  'FC';
            T2  :=  'FO';
          end
        else
          begin
            T1  :=  Tipo;
            T2  :=  Tipo;
          end;

        Q.Open(SQLBuscaFCPorNro,[Letra,SucFac,NumFac,T1,T2,Sucursal]);
        Resultado   :=  not Q.IsEmpty;
        Q.Close;

        if Not Resultado then
          begin
            Q.Open(SQLBuscaFCPorNro,[Letra,SucFac,NumFac,T1,T2,-1]);
            Resultado   :=  (not Q.IsEmpty) and
                            (MessageDlg('Hay un Comprobante con el mismo Tipo/Letra/Prefijo/Numero .... '+#13+
                                        'pero puede ser de otra sucursal...ignora la revisión y Continúa ???  (..) ',
                                         mtConfirmation,mbYesNo,0,mbYes) = mrNo);
            Q.Close;
          end
        else
          ShowMessage('Este número ya está ingresado en esta sucursal ....(..)');
      end;
  Result  :=  Resultado;
  FreeAndNil(Q);
end;

function TDMMain_FD.VerificaNroOP(Prefijo,Numero, Clase, Letra:String; Sucursal:Integer): Boolean;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Text   :='''
                       select op.id_op,op.clasecpbte,op.razonsocial  from ordenpago op
                         where op.sucop=:Prefijo
                         and op.numeroop =:numero
                         and op.clasecpbte=:clase
                         and op.sucursal =:sucursal
                         and op.letraop  =:letra
                     ''';
  Query.ParamByName('prefijo').AsString    := Prefijo;
  Query.ParamByName('numero').AsString     := Numero;
  Query.ParamByName('clase').AsString      := clase;
  Query.ParamByName('letra').AsString      := Letra;
  Query.ParamByName('sucursal').AsInteger  := sucursal;
  Query.Open;
  Result:= query.RecordCount>0;
  FreeAndNil(Query);
end;

function TDMMain_FD.TraerNroOpFree(Prefijo,Numero, Clase, Letra:String; Sucursal:Integer):string;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.SQL.Text   :='''
                      select * from PRIMER_NUMEROOP_FALTANTE(:sucursal, :prefijo, :letra, :clase);
                     ''';
  Query.ParamByName('prefijo').AsString    := Prefijo;
  Query.ParamByName('clase').AsString      := clase;
  Query.ParamByName('letra').AsString      := Letra;
  Query.ParamByName('sucursal').AsInteger  := sucursal;
  Query.Open;
  if query.RecordCount>0 then
    Result:=query.Fields[0].Asstring
  else
    Result:='';
  FreeAndNil(Query);

end;

function TDMMain_FD.TraerNro(Letra: string; SucFac: string;
                            Tipo: string; Clase: string; Sucursal: Integer):String;
var n:integer;
   Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Add('execute procedure ultimo_nro_cpbte(:Tipo,:Letra,:Clase,:Prefijo,:sucursal)');
  Query.ParamByName('tipo').AsString      :=Tipo;
  Query.ParamByName('letra').AsString     :=Letra;
  Query.ParamByName('clase').AsString     :=Clase;
  Query.ParamByName('prefijo').AsString   :=SucFac;
  Query.ParamByName('sucursal').AsInteger :=Sucursal;
  Query.Open;
  n:=Query.Fields[0].AsInteger;
  result:=Copy('00000000',1,8-length(IntToStr(n)))+IntToStr(n);

  Query.Close;

  FreeAndNil(query);

end;


function TDMMain_FD.AplicPorCtroCosto(const ID: Integer; const TipoCpbte, Tipo: string): Boolean;
begin
  CDSAplicPorCtroCosto.Close;
  CDSAplicPorCtroCosto.ParamByName('ID').Value          :=  ID;
  CDSAplicPorCtroCosto.ParamByName('TipoCpbte').Value   :=  TipoCpbte;
  CDSAplicPorCtroCosto.ParamByName('Tipo').Value        :=  Tipo;
  CDSAplicPorCtroCosto.Open;
  Result  :=  not CDSAplicPorCtroCosto.IsEmpty;
end;


function TDMMain_FD.GetPluCoeficiente: Extended;
var Valor:Integer;
begin
  Valor:= PluDecimales;

  if Valor = 0 Then Result:=1
  else
  if Valor = 1 Then Result:=0.1
  else
  if Valor = 2 Then Result:=0.01;
   //
end;

function  TDMMain_FD.GetControlaFinOperacion       : Boolean;
begin
  Result  :=  ReadDBOption('FINOPER');
end;

function  TDMMain_FD.GetCodigoBarra       : String;
begin
  Result  :=  ReadGeneralFile('PLU', 'Numero', '2012345678909');
end;

function  TDMMain_FD.GetControlaSerie               : Boolean;
begin
  Result  :=  ReadDBOption('CONTROLSERIE');
end;

function TDMMain_FD.GetControlaLista                : Boolean;
begin
    Result  :=  ReadDBOption('LISTAUSER');
end;

function TDMMain_FD.GetCorreoCliente_1(codigo: string): String;
  var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  q.SQL.Text:='select correoelectronico from  clientes where codigo=:codigo';
  Q.ParamByName('codigo').Value:=Codigo;
  Q.Open;
  if q.Fields[0].AsString<>'' then
    result:=q.Fields[0].AsString
  else
    result:='';
  FreeAndNil(q);
end;

function TDMMain_FD.GetCorreoCliente_2(codigo: string): String;
 var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  q.SQL.Text:='select correoelectronico_2 from  clientes where codigo=:codigo';
  Q.ParamByName('codigo').Value:=Codigo;
  Q.Open;
  if q.Fields[0].AsString<>'' then
    result:=q.Fields[0].AsString
  else
    result:='';
  FreeAndNil(q);
end;


function TDMMain_FD.GetEsquemaLista(codigo: string): Integer;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.SQL.Text  := 'select c.esquemalista from clientes c where c.codigo=:codigo';
  Query.ParamByName('codigo').Value:=Codigo;
  Query.Open;

  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsInteger
  else
    Result:=-1;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetCodAfipCpbte(id_cpbte: Integer): Integer;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.SQL.Text  := '''
                     select coalesce (cast( c.codigo_afip as Integer),1) as CodigoAFIP,f.nrocpbte from fcvtacab f
                       left join comprobantes c on c.tipo_comprob  = f.tipocpbte and
                                                   c.clase_comprob = f.clasecpbte and
                                                   c.letra         = f.letrafac and
                                                   c.sucursal      = f.sucursal and
                                                   c.compra_venta  = 'V'
                     where f.id_fc= :id_cpbte
                     ''';
  Query.ParamByName('id_cpbte').Value:=id_cpbte;
  Query.Open;

  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsInteger
  else
    Result:=-1;
  Query.Close;
  FreeAndNil(Query);

end;

// **** Lectura de Tabla de Opciones ........................

function TDMMain_FD.GetUsaBCRA               : Boolean;
Var Query:TFDQuery;
begin
  // *************************************************************
  // Levanto el si Usa Control de Cheuqes BCRA
  // *************************************************************
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value := 'BCRA';
  DMMain_FD.QOpciones.Open;
  if (DMMain_FD.QOpciones.IsEmpty) Then
    begin
      Query := TFDQuery.Create(Self);
      Query.SQL.Text :='''
                         Insert into opciones (opcion,descripcion,valor,grupo) values
                           (''BCRA'',''Control de cheques BCRA'',''No'',''I'')
                       ''';
      Query.Connection := DMMain_FD.fdcGestion;
      Query.ExecSQL;
      Query.Close;
      FreeAndNil(Query);
    end
  else
    Result:= Copy(DMMain_FD.QOpciones.Fields[0].AsString,1, 1) = 'S';
  DMMain_FD.QOpciones.Close;

end;

function TDMMain_FD.GetFacturaCtaOrden               : Boolean;
begin
  Result  :=  ReadDBOption('CTAORDEN');
end;


function TDMMain_FD.GetCorreoNovedades               : string;
begin
  Result  :=  ReadDBOption('MAILNOVEDADES');
end;


function  TDMMain_FD.GetMotivoAjusteProduccion       : Integer;
begin
  Result  :=  ReadDBOption('MOTIVOPROD');
end;

function  TDMMain_FD.GetBloqueadeudor               : Boolean;
begin
  Result  :=  ReadDBOption('BLOQUEADEUDOR');
end;

function  TDMMain_FD.GetControlaLteCredito          : Boolean;
begin
  Result  :=  ReadDBOption('LTECREDITO');
end;

function  TDMMain_FD.GetPreviewFactura              : Boolean;
begin
  Result  :=  ReadDBOption('PREVIEWFACTUR');
end;

function  TDMMain_FD.GetMargenUtilidad             : Extended;
begin
  Result  :=  ReadDBOption('MARGEN');
end;

function  TDMMain_FD.GetControlaDeuda               : Boolean;
begin
  Result  :=  ReadDBOption('CTRDEUDA');
end;

function  TDMMain_FD.GetModoCodificacion           : Boolean;
begin
  Result  :=  ReadDBOption('ALFA');
end;



function  TDMMain_FD.GetCodificacionSecuencial    : Boolean;
begin
  Result  :=  ReadDBOption('SECUENCIAL');
end;

function  TDMMain_FD.GetActualizaPrecioVta    : Boolean;
begin
  Result  :=  ReadDBOption('COSTOVTA');
end;

function  TDMMain_FD.GetRenglones                   : Integer;
begin
  Result  :=  ReadDBOption('RENGLONES');
end;

function  TDMMain_FD.GetSucursal                    : Integer;
begin
  Result  :=  ReadUserFile('Sucursal', 'Sucursal',1);
end;


function  TDMMain_FD.GetDeposito                    : String;
begin
  Result  :=  ReadUserFile('Deposito', 'Deposito', '1');
end;

function  TDMMain_FD.GetModoPLU                     : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'Modo', 1);
end;

function  TDMMain_FD.GetActualizaPadronWeb   : Boolean;
begin
  Result  :=  ReadGeneralFile('Padron','PadronIIBBWeb', False);
end;

function  TDMMain_FD.GetAvisoSinCAE   : Boolean;
begin
  Result  :=  ReadGeneralFile('AvisoSinCae','Estado', False);
  //GeneralIni.ReadBool('AvisoSinCae', 'Estado', True);
end;

function  TDMMain_FD.GetCodInicioPLU                : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'CodInicio', 1);
end;


function  TDMMain_FD.GetPluDecimales  : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'Decimales', 2);
end;

function  TDMMain_FD.GetCodLongPLU                  : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'CodLong', 1);
end;

function  TDMMain_FD.GetPesoInioPLU                 : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'PesoInicio', 1);
end;

function  TDMMain_FD.GetPesoLongPLU                 : integer;
begin
  Result  :=  ReadGeneralFile('PLU', 'PesoLong', 1);
end;


function  TDMMain_FD.GetVerificaNroCpbte            : Boolean;
begin
  Result  :=  ReadGeneralFile('control', 'NumeracionCpbte',False);
end;

function  TDMMain_FD.GetStockSubRubExp            : String;
begin
  Result  :=  ReadGeneralFile('StockExp', 'SubRubro','');
end;

function  TDMMain_FD.GetMostrarPedidos            : Boolean;
begin
  Result  :=  Readuserfile('Pedidos', 'MostrarPedidos',False);
end;

function  TDMMain_FD.GetImprimePedidosApp  :Boolean;
begin
  Result  :=  Readuserfile('PedidosApp', 'ImprimePedidosApp',False);
end;

function  TDMMain_FD.GetUsaFirma            : Boolean;
begin
  Result  :=  ReadDBOption('FIRMA');
end;

function TDMMain_FD.GetVerStock: Boolean;
begin
  result:=ReadDBOption('VERSTOCK');
end;

function TDMMain_FD.GetVenderSinStock: Boolean;
begin
  result:=ReadDBOption('VTASTOCKCERO');
end;

function  TDMMain_FD.GetVerificaCambioPrecio       : Boolean;
begin
  Result  :=  ReadUserFile('Control', 'VerificaCambioPrecio', True);
end;

function  TDMMain_FD.GetVerificaCambioPrecioCompra : Boolean;
begin
  Result  :=  ReadUserFile('Control', 'VerificaCambioPrecioCompra', True);
end;


function  TDMMain_FD.GetImagen                      : String;
begin
  Result  :=  ReadUserFile('Imagen', 'nombre', '');
end;

function  TDMMain_FD.GetImagenModo                      : Integer;
begin
  Result  :=  ReadUserFile('Imagen', 'modo', 0);
end;

function  TDMMain_FD.GetEmpleado                    : String;
var Query:TFDQuery;
begin
  Result  :=  ReadUserFile('Empleado', 'Empleado', '000001');
  if Result='-1' then
    begin
      Query:=TFDQuery.Create(nil);
      Query.Connection:=fdcGestion;
      Query.Open('select min(p.codigo) as Codigo from personal p where p.vendedor=''S'' ' );
      Result:=Query.Fields[0].AsString;
      Query.close;
      FreeAndNil(query);
    end;
end;

function  TDMMain_FD.GetAgenda                      : Boolean;
begin
  Result  :=  ReadUserFile('Agenda', 'Agenda', False);
end;


// rutinas del COT**************************************************************
function  TDMMain_FD.GetClaveCot               : String;
begin
  Result  :=  ReadGeneralFile('Cot', 'Clave','');
end;

function  TDMMain_FD.GetCuitCot               : String;
begin
  Result  :=  ReadGeneralFile('Cot', 'Cuit','');
end;


function TDMMain_FD.GetCuitEmpresa: String;
var QQuery:TFDQuery;
begin
  QQuery:=TFDQuery.Create(nil);
  QQuery.Connection := fdcGestion;
  QQuery.SQL.Text   := 'select cuit from empresa';
  QQuery.Open;
  if Not(qquery.IsEmpty) then
    Result:=(QQuery.Fields[0].AsString);
  QQuery.Close;
  FreeAndNil(QQuery);
end;

function TDMMain_FD.GetDireccionEmpresa: String;
var QQuery:TFDQuery;
begin
  QQuery:=TFDQuery.Create(nil);
  QQuery.Connection := fdcGestion;
  QQuery.SQL.Text   := 'select direccion_operacion from empresa';
  QQuery.Open;
  if Not(qquery.IsEmpty) then
    Result:=(QQuery.Fields[0].AsString);
  QQuery.Close;
  FreeAndNil(QQuery);
end;

function  TDMMain_FD.GetModoCot               : Integer;
begin
  Result  :=  ReadGeneralFile('Cot', 'Modo',0);
end;

function  TDMMain_FD.GetCodigoConceptoCOT :String;
begin
  Result  :=  ReadGeneralFile('Cot', 'Codigo',0);
end;

function  TDMMain_FD.GetDetalleConceptoCOT :String;
begin
  Result  :=  ReadGeneralFile('Cot', 'Detalle','');
end;

function TDMMain_FD.GetDiasVto(Codigo: string): Integer;
 var QQuery:TFDQuery;
begin
  QQuery            := TFDQuery.Create(nil);
  QQuery.Connection := fdcGestion;
  QQuery.SQL.Text   := 'select s.dias_vencimiento from stock s where s.codigo_stk = '+ QuotedStr(codigo);
  try
    QQuery.Open;
    if Not(qquery.IsEmpty) then
      begin
        Result:= QQuery.Fields[0].AsInteger;
      end
    else
      Result:= 0;
  finally
    QQuery.Close;
  end;
  FreeAndNil(QQuery);
end;

procedure TDMMain_FD.COT_Sucursal(id_sucursal:Integer; var Cot_Cuit,Cot_Clave:String);
  var QQuery:TFDQuery;
begin
  QQuery:=TFDQuery.Create(nil);
  QQuery.Connection := fdcGestion;
  QQuery.SQL.Text   := 'select cot_clave,cot_cuit from sucursal where codigo = '+ IntToStr(id_sucursal);
  try
   Cot_Clave := '';
   Cot_CUit  := '';

    QQuery.Open;
    if Not(qquery.IsEmpty) then
      begin
       Cot_Clave := Trim(QQuery.Fields[0].AsString);
       Cot_CUit  := Trim(AnsiReplaceStr(Trim(QQuery.Fields[1].AsString),'-',''));
      end;
  finally
    QQuery.Close;
  end;
  FreeAndNil(QQuery);
end;

//******************************************************************************
function  TDMMain_FD.GetClientePorDefecto          : String;
begin
  Result  :=  ReadUserFile('cliente', 'cliente', '');
end;

function  TDMMain_FD.GetCaja                       : String;
begin
  Result  :=  ReadUserFile('Caja', 'Caja', '1');
end;


function TDMMain_FD.GetCertificadoSucursal(Sucursal: Integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.sql.text:='select s.certificado_elec from sucursal s where s.codigo = :codigo';
  Query.ParamByName('codigo').AsInteger     := Sucursal;
  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetCuitSucursal(Sucursal: Integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.sql.text:='select s.cuit from sucursal s where s.codigo = :Codigo ';
  Query.ParamByName('codigo').AsInteger     := Sucursal;
  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=(Query.Fields[0].AsString)
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetRazonSocialSucursal(Sucursal: Integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.sql.text:='select s.razonsocial from sucursal s where s.codigo = :codigo';
  Query.ParamByName('codigo').AsInteger     := Sucursal;

  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetTasaPercepcionIVA(Id:Integer):Extended;
 var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.sql.text:='select p.tasa from percepiva p where p.codigo = :id';
  Query.ParamByName('id').AsInteger     := id;

  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsFloat
  else
    Result:=0;
  Query.Close;
  FreeAndNil(Query);
 end;

function TDMMain_FD.GetLdrDireccion(codigo:string;ldr:integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open(SQLLdrDireccion,[codigo,ldr]);
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetLdrDireccionPlus(codigo:string;ldr:integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.SQl.Text:='''
                   select coalesce(l.direccion,'')||','||Coalesce(l.localidad,'MAR DEL PLATA')||','||coalesce(p.nombre,'BUENOS AIRES') from ldrcliente l
                      left join provincia p on p.id_pro=l.provincia
                    where l.codigo_cliente = :cliente and l.codigo_ldr = :ldr
                   ''';
  Query.ParamByName('cliente').Value:=codigo;
  Query.ParamByName('ldr').Value    :=ldr;
  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetLdrCorreo(codigo: string; ldr: Integer): string;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.SQl.Text:='''
                    select l.email from ldrcliente l
                      where l.codigo_cliente = :cliente and l.codigo_ldr = :ldr
                   ''';
  Query.ParamByName('cliente').Value:=codigo;
  Query.ParamByName('ldr').Value    :=ldr;
  Query.Open;
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;


function TDMMain_FD.GetNroDocumento(codigo:string): String;
var Query:TFDQuery;
begin
  if Trim(codigo)<>'' then
    begin
      Query           := TFDQuery.Create(nil);
      Query.Connection:= fdcGestion;
      Query.SQL.Text:='select c.nrodocumento from clientes c where c.codigo='+codigo;
      Query.Open;
      if Not(Query.IsEmpty) then
        Result:=Query.Fields[0].AsString
      else
        Result:='';
      Query.Close;
      FreeAndNil(Query);
    end;
end;

function TDMMain_FD.GetLdrNombre(codigo:string;ldr:integer): String;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open(SQLLdrNombre,[codigo,ldr]);
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsString
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetPrimerClasePago(Tipo:Integer): Integer;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open('select min(id_fpago) from Formapago where id_tpago='+intToStr(Tipo));
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsInteger
  else
    Result:= -1;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetPrimerLdr(codigo:string): Integer;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open('select min(Codigo_Ldr) From LdrCliente Where Codigo_Cliente=:Codigo',[codigo]);
  if Not(Query.IsEmpty) then
    Result:=Query.Fields[0].AsInteger
  else
    Result:=-1;
  Query.Close;
  FreeAndNil(Query);
end;


function TDMMain_FD.GetConceptoCompras(Proveedor: string): string;
var Query:TFDQuery;
ceArt_21:String;
ArchivoIni:TIniFile;
begin
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFcComprAFIP_Portal.ini');
  ceARt_21         := ArchivoINI.ReadString('Art_21', 'Codigo', '');
  ArchivoIni.Free;


  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;
  Query.Open('select t.concpeto from tabla_relac_provee_stock t where t.codigo=:proveedor',[proveedor]);
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsString
  else
    Result:=ceArt_21;// '';


  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetCondicionIvaCliente(codigo: string): Integer;
  var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open('select c.condicion_iva from clientes c where c.codigo=:codigo ',[codigo]);
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsInteger
  else
   Result:=-1;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetCondicionVtaPorDefecto(codigo:string): Integer;
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
  Query.Open('select min(codigopago) from condventa where codigocliente=:codigo and por_defecto=''S'' ',[codigo]);
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsInteger
  else
    begin
      Query.Close;  // si no busco la primera
      Query.Open('select Min(codigopago) from condventa where codigocliente=:codigo',[codigo]);
      if Query.Fields[0].AsString<>'' then
        Result:=Query.Fields[0].AsInteger
      else
        Result:=-1;
      Query.Close;
    end;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetLineasComprobante(Id: Integer): Integer;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select lineas_detalle from comprobantes where id_comprobante='+IntToStr(id);
  QUery.Open;
  if Query.Fields[0].Value > 0 then
    Result:=Query.Fields[0].Value
  else
    Result:=20;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetCalcualIvaItems(Id: Integer): String;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select Calcula_iva_articulos from comprobantes where id_comprobante='+IntToStr(id);
  QUery.Open;
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].AsString
  else
    Result:='S';
  Query.Close;
  FreeAndNil(Query);
end;

procedure TDMMain_FD.VerTasaIIBB(cuit:string;Fecha:TDateTime;var Percepcion,Retencion:Extended);
var
  lwsPadron: IwsPadronARBA;
  GRet:Integer;
  D,M,A:Word;
  desde,hasta,Cuit_:String;
  FechaAux1,FechaAux2:TDateTime;
  TasaRet:Real;
begin
  Cuit_:= Cuit;
  Cuit := Trim(AnsiReplaceStr(Cuit,'-',''));
  if Cuit='00000000000' then Cuit:='';

  DecodeDate(Fecha,a,m,d);
  FechaAux1:=EncodeDate(a,m,1);
  FechaAux2:=EncodeDate(a,m,DaysInMonth(FechaAux1));
  Desde:=FormatDateTime('yyyymmdd',FechaAux1);
  Hasta:=FormatDateTime('yyyymmdd',FechaAux2);
  If (ActualizaPadronIIBBWeb) and (Cuit<>'') Then
    begin
      lwsPadron                := CowsPadronARBA.Create;
      lwsPadron.ModoProduccion := true;
      lwsPadron.User           := '20129063662';//CUIT';
      lwsPadron.Password       := '896897';//Contraseña';
      If  lwsPadron.ConsultaAlicuota(desde, hasta, StrToFloat(cuit)) Then
        begin
         // ShowMessage('Error :'+IntToStr(lwsPadron.ErrorCode)+' '+lwsPadron.ErrorDesc);
         // SysUtils.FormatSettings.DecimalSeparator :='.';
          try
          TasaRet:= lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion;
          Percepcion:= lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion;

            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) Then
             if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion)>0 Then
               if FloatToStr(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion)<>'' then
                 Percepcion := (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion);
          Except
            abort;
          end;
          try
            Retencion:= lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion;
            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) then
             if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion)>0 Then
              if (FLoatToStr(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion)<>'') then
                if Not(VarIsNull(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion))  then
                  if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion>=0) Then
                    Retencion  := (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion);
          Except
            abort;
            //Retencion:=0;
          end;

          try
            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) then
              if (FLoatToStr(lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion)<>'') then
                if Not(VarIsNull(lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion))  then
                  if (lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion>=0) Then
                    GRet  := (lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion);
          Except
            abort;
            GRet:=0;
          end;
         end
      Else
        begin
        //  Percepcion := -1;
        //  Retencion  := -1;
        //  ShowMessage (lwsPadron.ErrorDesc);
        end;
     // FreeAndNil(lwsPadron);
    end;
end;


function  TDMMain_FD.GetSerieDeposito               : Boolean;
begin
  Result  :=  ReadDBOption('SERIEDEPOSITO');
end;

function  TDMMain_FD.GetSerieVta                 : Boolean;
begin
  Result  :=  ReadDBOption('INGSERIEVTA');
end;

function  TDMMain_FD.GetSerieCompra                 : Boolean;
begin
  Result  :=  ReadDBOption('SERIECOMPRA');
end;

function  TDMMain_FD.GetCpbtePorUsuario             : Boolean;
begin
  Result  :=  ReadDBOption('COMPUSER');
end;

function  TDMMain_FD.GetUsaTablaDePrecios             : Boolean;
begin
  Result  :=  ReadDBOption('TABLAPRECIO');
end;

function  TDMMain_FD.GetUsaConsignacion              : Boolean;
begin
  Result  :=  ReadDBOption('CONSIGNACION');
end;

function  TDMMain_FD.GetUsaContabilidad              : Boolean;
begin
  Result  :=  ReadDBOption('USACONTABLE');
end;

function  TDMMain_FD.GetMascaraImportes               : String;
begin
  Result  :=  ReadDBOption('VALORES');
end;


function  TDMMain_FD.GetMascaraCheques                : String;
begin
  Result  :=  ReadDBOption('CHEQUES');
end;

function  TDMMain_FD.GeMascaraAplicacionesCC            : String;
begin
  Result  :=  ReadDBOption('APLICACIONES');
end;

function  TDMMain_FD.GetMascaraDetalleUnitario     : String;
begin
  Result  :=  ReadDBOption('VTADETUNITARI');
end;

function  TDMMain_FD.GetMascaraDetalleCantidad     : String;
begin
  Result  :=  ReadDBOption('VTADETCANTIDA');
end;

function  TDMMain_FD.GetMascaraDetalleDescuento    : String;
begin
  Result  :=  ReadDBOption('VTADETDESCUEN');
end;

function  TDMMain_FD.GetMascaraDetalleTotal        : String;
begin
  Result  :=  ReadDBOption('VTADETTOTAL');
end;

function  TDMMain_FD.GetMascaraIvaTasa             : String;
begin
  Result  :=  ReadDBOption('IVATASA');
end;

function  TDMMain_FD.GetMascaraIvaImporte          : String;
begin
  Result  :=  ReadDBOption('IVAIMPORTES');
end;

function  TDMMain_FD.GetMascaraCabecera             : String;
begin
  Result  :=  ReadDBOption('VTACABECERA');
end;

function  TDMMain_FD.GetEscCpbte                    : Boolean;
begin
  // controla la cancelacion de comprobante
  Result  :=  ReadDBOption('ESCCPBTE');
end;


function  TDMMain_FD.GetControlaLineaCero           : Boolean;
begin
  Result  :=  ReadDBOption('LINEACERO');
end;

function  TDMMain_FD.GetMascaraImportesComp           : String;
begin
  Result  :=  ReadDBOption('LINEACERO');
end;

function  TDMMain_FD.GetMascaraDetalleUnitarioComp           : String;
begin
  Result  :=  ReadDBOption('COMPDETUNITAR');
end;

function  TDMMain_FD.GetMascaraDetalleCantidadComp           : String;
begin
  Result  :=  ReadDBOption('COMPDETCANTID');
end;

function  TDMMain_FD.GetMascaraDetalleDescuentoComp           : String;
begin
  Result  :=  ReadDBOption('COMPDETDESCUE');
end;

function  TDMMain_FD.GetMascaraDetalleTotalComp           : String;
begin
  Result  :=  ReadDBOption('COMPDETTOTAL');
end;

function  TDMMain_FD.GetMascaraCabeceraComp               : String;
begin
  Result  :=  ReadDBOption('COMPCABECERA');
end;

function  TDMMain_FD.GetMascaraEgresos                    : String;
begin
  Result  :=  ReadDBOption('EGRESOS');

end;

function  TDMMain_FD.GetMascaraOrdenPago                  : String;
begin
  Result  :=  ReadDBOption('ORDENPAGO');
end;

function  TDMMain_FD.GetMascaraRecibos                      : String;
begin
  Result  :=  ReadDBOption('RECIBOS');
end;


function  TDMMain_FD.GetMascaraVales                      : String;
begin
  Result  :=  ReadDBOption('VALES');
end;

function  TDMMain_FD.GetAutorizaVtaCtdo                   : Boolean;
begin
  Result  :=  ReadDBOption('VTACTDO');
end;

function  TDMMain_FD.GetAutoConfirmaTxStock               : Boolean;
begin
  Result  :=  ReadDBOption('AUTOTX');
end;

function  TDMMain_FD.GetMonedaVta                         : Integer;
begin
  try
    Result  :=  ReadDBOption('MONEDAVTA');
  Except
    Result  :=  1;
  end;
end;

function  TDMMain_FD.GetMonedaCompra                      : Integer;
begin
  try
    Result  :=  ReadDBOption('MONEDACOMPRA');
  Except
    Result  :=  1;
  end;
end;

function  TDMMain_FD.GetControlaFechaVta                : Boolean;
begin
  Result  :=  ReadDBOption('CONTFECHAVTA');
end;


function  TDMMain_FD.GetActualizaCosto                  : Boolean;
begin
  Result  :=  ReadDBOption('PRECOSTO');
end;

function  TDMMain_FD.GetActualizaCostoMayor             : Boolean;
begin
  Result  :=  ReadDBOption('ACTPREMAYOR');
end;

function  TDMMain_FD.GetAutoConfirmaOrdenCompra          : Boolean;
begin
  Result  :=  ReadDBOption('AUTOOC');
end;

function  TDMMain_FD.GetDescuentaStockRto               : Boolean;
begin
  Result  :=  ReadDBOption('STOCKRTO');
end;

function TDMMain_FD.GetDetalleArticulo(cod: string): String;
VAR Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.SQL.Text:='select s.detalle_stk from stock s where s.codigo_stk=:codigo';
  Q.ParamByName('codigo').AsString:=cod;
  Q.Open;
  if Q.Fields[0].AsString<>'' then
    Result:=Q.Fields[0].AsString
  else
   Result:='';
  Q.Close;
  FreeAndNil(Q);
end;

function  TDMMain_FD.GetControlaRtoFiscal               : Boolean;
begin
  Result  :=  ReadDBOption('RTOFISCAL');
end;

function  TDMMain_FD.GetRtoDescuentaStock               : Boolean;
begin
  Result  :=  ReadDBOption('STOCKRTO');
end;

function TDMMain_FD.GetPresupuestarSinStock:boolean;
begin
  Result  := ReadUserFile('Presupuesto','PresupuestarSinStock',True);
end;

function TDMMain_FD.GetAdministraPresupuestos:boolean;
begin
  Result  := ReadUserFile('Presupuesto','AlCobro',False);
end;

function TDMMain_FD.GetStockMinimo:boolean;
begin
  Result  := ReadGeneralFile('AvisoStockMinimo','Estado',True);
end;

function  TDMMain_FD.GetDatosContable              : String;
begin
  Result  := ReadGeneralFile('Datos', 'DatosContable', '');
end;

function  TDMMain_FD.GetUsaBDE                     : Boolean;
begin
  Result  := ReadGeneralFile('Datos', 'BDE', True);
end;

function  TDMMain_FD.GetDatosSinBDEPath            : String;
begin
  Result  := ReadGeneralFile('Datos', 'DatosSinBDEPath', '');
end;

function  TDMMain_FD.GetSYSDBA                     : String;
begin
  Result  := ReadGeneralFile('Datos', 'UsuarioBD', 'SYSDBA');
end;

function  TDMMain_FD.GetPassword                   : String;
begin
  Result  := ReadGeneralFile('Datos', 'UsuarioPassword', 'regulador');
end;


function  TDMMain_FD.GetPrNomCpbte                 : String;
begin
  Result  := ReadGeneralFile('Impresoras', 'Comprobantes', '');
end;

function  TDMMain_FD.GetPrNomListados              : String;
begin
  Result  := ReadGeneralFile('Impresoras', 'Listados', '');
end;

function  TDMMain_FD.GetPrCpbteDefecto             : Boolean;
begin
  Result  := ReadGeneralFile('Impresoras', 'ComprobanteDefecto', True);
end;

function  TDMMain_FD.GetPrListadoDefecto           : Boolean;
begin
  Result  := ReadGeneralFile('Impresoras', 'ListadoDefecto', True);
end;

function  TDMMain_FD.GetScannerSerie               : Boolean;
begin
  Result  := ReadGeneralFile('Scanner', 'Activo', False);
end;

function  TDMMain_FD.GetPuertoCom                  : String;
begin
  Result  := ReadGeneralFile('Scanner', 'Puerto', 'COM2');
end;


function  TDMMain_FD.GetApiKeyOpenAI             : String;
begin
  Result  := ReadGeneralFile('OPENAI', 'APIKEY', '');
end;

function  TDMMain_FD.GetApiKeyGoogle             : String;
begin
  Result  := ReadGeneralFile('GOOGLE', 'APIKEY', '');
end;

function TDMMain_FD.GetProveedorCuit(Cuit: string): string;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:= fdcGestion;
 // Cuit:=ReplaceStr(Cuit,'-','');
  Query.SQL.Text:='select p.codigo from poveedor p where p.n_de_cuit = '+ QuotedStr(Cuit) ;
  QUery.Open;
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].Value
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetProveedorPorDefecto        : String;
begin
  Result  := ReadGeneralFile('Proveedor', 'Proveedor', '');
end;

function  TDMMain_FD.GetTIvaPorDefecto             : Integer;
begin
  Result  := ReadGeneralFile('Iva', 'Tasa', 1);
end;

function  TDMMain_FD.GetSTIvaPorDefecto            : Integer;
begin
  Result  := ReadGeneralFile('Iva', 'SobreTasa', 1);
end;

function TDMMain_FD.GetStockWeb(Codigo: String)    : Extended;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select (sum(ms.entra)-sum(ms.sale)) from mov_stock ms '+
                  ' left join depositos d on d.id = ms.deposito '+
                  'where ms.codigo_articulo ='+QuotedStr(codigo)+' and d.centraliza_web=''S'' ';
  QUery.Open;
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].Value
  else
    Result:=0;
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetGravamenPorDefecto         : String;
begin
  Result  := ReadGeneralFile('Gravamen', 'gravamen', 'G');
end;

function  TDMMain_FD.GetUnidadesPorDefecto         : Integer;
begin
  Result  := ReadGeneralFile('Unidad', 'Unidad', 1);
end;

function  TDMMain_FD.GetTipoBaseDatos               : Integer;
begin
  Result  := ReadGeneralFile('Datos', 'BaseDatos', 1);
end;

function TDMMain_FD.GetTipoCompVta(Id: Integer): string;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select f.tipocpbte from fcvtacab f where f.id_fc = :id';
  Query.ParamByName('id').AsInteger     := id;
  QUery.Open;
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].Value
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetDatos                 : String;
begin
  Result  := ReadGeneralFile('Datos', 'Datos', 'GestionV3');
end;

function  TDMMain_FD.GetIcono               : string;
begin
  Result  := ReadGeneralFile('Icono', 'Path', '');
end;

function TDMMain_FD.GetLimiteFacB: Extended;
begin
  Result  := ReadGeneralFile('Facturacion', 'LimiteB', 0.00);
end;

function TDMMain_FD.GetToleranciaDeuda: Extended;
begin
  Result  := ReadGeneralFile('Facturacion', 'ToleranciaDeuda', 0.00);
end;


// WoordPress ****************************************************************
function TDMMain_FD.GetClaveUsuarioWoordPress: String;
begin
  Result  := ReadGeneralFile('wpress', 'pass', '');
end;

function TDMMain_FD.GetUsuarioWoordPress: string;
begin
  Result  := ReadGeneralFile('wpress', 'usuario', '');
end;


function TDMMain_FD.GetURlWoordPress: String;
begin
  Result  := ReadGeneralFile('wpress', 'Dominio', '');
end;

function TDMMain_FD.GetListaPreciosWoordPress: Integer;
begin
  Result  := ReadGeneralFile('wpress', 'ListaPrecios', -1);
end;

function TDMMain_FD.GetBonificacionWoordPress: Extended;
begin
  Result  := ReadGeneralFile('wpress', 'Bonificacion', 0);
end;

//*****************************************************************************

function  TDMMain_FD.GetTasaPercepcionIB            : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaTASA_PERCEPCION_IB.IsNull then
    Result  :=  0
  else
    Result  :=  QEmpresaTASA_PERCEPCION_IB.AsFloat;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetTasaRetencionIB             : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaTASA_RET_IIBB.IsNull then
    Result  :=  0
  else
  Result  :=  QEmpresaTASA_RET_IIBB.AsFloat;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetTasaLey15311             : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaTASA_LEY15311.IsNull then
    Result  :=  0
  else
  Result  :=  QEmpresaTASA_LEY15311.AsFloat;
  QEmpresa.Close;
end;



function  TDMMain_FD.GetMinim_Imp_IB_Perc           : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaMINO_IMP_PERCEP_IB.IsNull then
    Result  :=  0
  else
  Result  :=  QEmpresaMINO_IMP_PERCEP_IB.AsFloat;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetMinimo_Percepcion_Iva           : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaMIN_IMP_PERCEPCION_IVA.IsNull then
    Result  :=  0
  else
  Result  :=  QEmpresaMIN_IMP_PERCEPCION_IVA.AsFloat;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetMinim_Imp_IB_Rete           : Extended;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if QEmpresaMINIMO_IMP_RET_IIBB.IsNull then
    Result  :=  0
  else
  Result  := QEmpresaMINIMO_IMP_RET_IIBB.AsFloat;
  QEmpresa.Close;
end;


function  TDMMain_FD.GetIngresa_NroInterno   : Boolean;
begin
  Result  :=  ReadDBOption('RECINTERNO');
end;

function  TDMMain_FD.GetIngresa_NroOp        : Boolean;
begin
  Result  :=  ReadDBOption('INGRESANOP');
end;

function  TDMMain_FD.GetOrdenCompraTope       : Extended;
begin
  Result  :=  ReadDBOption('TOPEOC');
end;

function  TDMMain_FD.GetOrdenCompraPendientes : Boolean;
begin
  Result  :=  ReadDBOption('OCOMPRA');
end;

procedure TDMMain_FD.SetStockCostos(Codigo: string; Gravado, Imp: Extended; Modo: string);
  var Q:TFDQuery;
begin
  Q :=TFDQuery.Create(nil);
  Q.Connection :=fdcGestion;
  Q.SQL.Text:='''
                update stock s set s.costo_gravado_stk = :gravado,
                                   s.costo_exento_stk  = :imp,
                                   s.impuesto_internos = 0,
                                   s.modo_gravamen     = :modo
                  where s.codigo_stk = :codigo
              ''';
  Q.ParamByName('codigo').Value  := Codigo;
  Q.ParamByName('gravado').Value := Gravado;
  Q.ParamByName('imp').Value     := Imp;
  Q.ParamByName('modo').Value    := Modo;
  Q.ExecSQL;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TDMMain_FD.SetSucursal(Value: Integer);
begin
  WriteUserFile('Sucursal', 'Sucursal',Value);
end;

function  TDMMain_FD.ModificarCliente(const Codigo: string): Boolean;
begin
  if (FormClienteNuevo <> nil) then FreeAndNil(FormClienteNuevo);

  FormClienteNuevo          :=  TFormClienteNuevo.Create(Application);
  FormClienteNuevo.Codigo   :=  Codigo;
  FormClienteNuevo.Modificar.Execute;
  FormClienteNuevo.ShowModal;
  Result := FormClienteNuevo.Codigo <> '';

end;

function TDMMain_FD.ModificarDatosCliente(var DS: TDataSource)             : Boolean;
var
  CDS: TDataSet;
begin
  CDS     :=  DS.DataSet;
  Result  :=  ModificarDatosCliente(CDS);
end;

function TDMMain_FD.ModificarDatosCliente(var CDS: TDataSet)          : Boolean;
begin
  if (FormClienteNuevo <> nil) then FreeAndNil(FormClienteNuevo);
  try
    FormClienteNuevo          :=  TFormClienteNuevo.Create(Application);
    FormClienteNuevo.ModificarDatos(CDS);
    FormClienteNuevo.ShowModal;
    Result := FormClienteNuevo.Codigo <> '';
  except
    if (FormClienteNuevo <> nil) then FreeAndNil(FormClienteNuevo);
    Result  :=  False;
  end;
end;


function  TDMMain_FD.GetAgentePercepcioIVA   : String;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  Result  :=  QEmpresaAG_PERCEPCION_IVA.Value;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetCBUEmpresa: String;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  Result  :=  QEmpresaCBU.Value;
  QEmpresa.Close;
end;

function  TDMMain_FD.GetAgenteRetencionIB   : Boolean;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  Result  :=  QEmpresaAG_RET_ING_BRUTOS.Value = 'S';
  QEmpresa.Close;
end;

function TDMMain_FD.GetArticuloProveedor(const Codigo, Proveedor: String): String;
 var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;

  Query.SQL.Text:= 'select ld.codigo_proveedor from lista_precios_prov_detalle ld '+
                   ' left join lista_precios_prov_cabecera lc on lc.id = ld.id_cab '+
                   ' where  ld.codigo = '+QuotedStr(trim(codigo))+' and lc.codigo_provee = '+QuotedStr(Trim(proveedor));
  QUery.Open;
  if Query.Fields[0].AsString<>'' then
    Result:=Query.Fields[0].Value
  else
    Result:='';
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetAgenteRetencionGanancias : Boolean;
 var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;

  Query.SQL.Text:= 'select e.*, c.id_postal as id_cpostal,p.codigo_cot from Empresa e '+
                    ' left join c_postal c on c.codigo_postal = e.cpostal '+
                    ' left join provincia p on p.id_pro=e.provincia';
  QUery.Open;

  Result  :=  Query.FieldByName('AG_RET_GANANCIA').Value = 'S';
  Query.Close;
  FreeAndNil(Query);

end;

function  TDMMain_FD.GetAgentePercepcionIB   : Boolean;
 var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;

  Query.SQL.Text:= 'select e.*, c.id_postal as id_cpostal,p.codigo_cot from Empresa e '+
                    ' left join c_postal c on c.codigo_postal = e.cpostal '+
                    ' left join provincia p on p.id_pro=e.provincia';
  QUery.Open;

  Result  :=  Query.FieldByName('AG_PERCEPCION_ING_BRUTOS').Value = 'S';
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetMainPath            : String;
begin
  Result  :=  ExtractFilePath(ParamStr(0));
end;


function  TDMMain_FD.GetUsarPathCpbte        : Boolean;
begin
  Result  :=   ReadUserFile('Reportes', 'UsarDirCpbte',Boolean(False));       // FUsarPathCpbte;
end;


procedure TDMMain_FD.SetUsarPathCpbte(Value  : Boolean);
begin
  WriteUserFile('Reportes','UsarDirCpbte',BoolToStr(Value,True));
end;

function  TDMMain_FD.GetUsarPathLst          : Boolean;
begin
   Result  :=    ReadUserFile('Reportes', 'UsarDirListados',Boolean(False));     // FUsarPathLst;
end;

procedure TDMMain_FD.SetUsarPathLst(Value  : Boolean);
begin
    WriteUserFile('Reportes','UsarDirListados',BoolToStr(Value,True));
end;


function  TDMMain_FD.GetPathReportesCpbte: string;
var
  Aux: string;
begin
  if UsarPathCpbte then
    Aux       :=  ReadUserFile('Reportes','DirCpbte',MainPath + 'Reportes')
  else
    Aux       :=  ReadDBOption('CPBTES');

  if Aux = '' then
    if Assigned(DMMain_FD) then
      Aux     :=  DMMain_FD.PathReportesCpbte
    else
      Aux     :=  FPathReportesCpbte;

  Result  :=  Aux;
end;

function  TDMMain_FD.GetPathReportesLst: string;
var
  Aux: string;
begin
  if UsarPathLst then
    Aux :=  ReadUserFile('Reportes','DirListados',MainPath + 'Reportes')
  else
    Aux :=  ReadDBOption('REPORTES');

  if Aux='' then
    if Assigned(DMMain_FD) then
      Aux :=  DMMain_FD.PathReportesLst
    else
      Aux   :=  FPathReportesLst;

  Result  :=  Aux;
end;

function  TDMMain_FD.GetPathImagenes: string;
var
  Aux: string;
begin
  Aux :=  ReadDBOption('IMAGENES');

  if Aux='' then
    if Assigned(DMMain_FD) then
      Aux :=  DMMain_FD.PathImagenes;

  Result  :=  Aux;
end;

function TDMMain_FD.GetPCName: string;
var
  Buffer: array[0..MAX_COMPUTERNAME_LENGTH] of Char;
  Size: Cardinal;
begin
  FillChar(Buffer,Sizeof(Buffer),0);
  Size:= Sizeof(Buffer);
  if GetComputerName(Buffer,Size) then
    Result:= String(PChar(@Buffer))
  else
    Result:= '';
end;


//procedure TDMMain_FD.SetPathImagenes(const Value: String);
//begin
//  WriteDBOption('IMAGENES',Value);
//  FPathImagenes    :=  Value;
//end;

procedure TDMMain_FD.SetPathReportesCpbte(Value: string);
begin
  if UsarPathCpbte then
    WriteUserFile('Reportes','DirCpbte',Value)
  else
    WriteDBOption('CPBTES',Value);

  FPathReportesCpbte    :=  Value;
end;

procedure TDMMain_FD.SetPathReportesLst(Value: string);
begin
  if UsarPathLst then
    WriteUserFile('Reportes','DirListados',Value)
  else
    WriteDBOption('REPORTES',Value);

  FPathReportesLst    :=  Value;

end;

function TDMMain_FD.GetOSVersion:string;
 var
  OSVersion: TOSVersionInfo;
  FVersion,FPlatform,serPack:String;
  FPlatformID: DWord;
begin
   OSVersion.dwOSVersionInfoSize := SizeOf(OSVersion);

   if GetVersionEx(OSVersion) then
      begin
         FVersion := Format('%d.%d (%d.%s)',[OSVersion.dwMajorVersion, OSVersion.dwMinorVersion,(OSVersion.dwBuildNumber and $FFFF), OSVersion.szCSDVersion]);
         FPlatformID:= OSVersion.dwPlatformID;
         case OSVersion.dwPlatformID of
             1:begin
                Case OSVersion.dwMinorVersion  of
                0: FPlatform  := 'Windows 95';
                10: FPlatform := 'Windows 98';
                90: FPlatform := 'Windows Millennium';
                end;
               end;
             2:begin
                Case OSVersion.dwMajorVersion  of
                3:FPlatform := 'Windows NT 3.51';
                4:FPlatform := 'Windows NT 4.0';
                5:begin
                     if OSVersion.dwMinorVersion=0 then
                        FPlatform := 'Windows 2000'
                     else
                        FPlatform := 'Windows XP';
                  end;
                 6:FPlatform := 'Windows Vista';
                 end;
               end;
            else
                FPlatform := '';
         end;  //of case
      end; //of if
      serPack:=OSVersion.szCSDVersion;
   result:=FPlatform+' '+serPack;
end;

function TDMMain_FD.EjecutaFic(const Fic: string; const mute: Boolean = False): boolean;
var
  code: integer;
  txt: string;
begin
  Result:= false;
  //Pruebo a abrir el fichero...
  code:= ShellExecute(Application.Handle,'', PChar(fic), nil,nil,SW_SHOW);

  if (code<0) or (code>32) then
    Result:= true  //Todo ha ido bien
  else begin
    case code of //Algo ha ocurrido
       0: txt := 'El sistema operativo se ha quedado sin memoria o recursos.';
       2: txt := 'El archivo especificado no se ha encontrado.';
       3: txt := 'La ruta especificada no es v�lida.';
       5: txt := 'El sistema operativo deneg� el '+
                 'acceso al fichero especificado.';
       8: txt := 'No hay suficiente memoria para completar la operaci�n';
      10: txt := 'Versi�n de Windows err�nea.';
      11: txt := 'El fichero .EXE es inv�lido (non-Win32 .EXE or '
                          + 'error in .EXE image).';
      12: txt := 'La aplicaci�n se dise�� para un sistema operativo distinto.';
      13: txt := 'La aplicaci�n se dise�o para MS-DOS 4.0';
      15: txt := 'Intento de carga de un programa real-mode.';
      16: txt := 'Intento de cargar una segunda instancia de una aplicaci�n '+
                 'sin segmentos de datos non-readonly.';
      19: txt := 'Intento de carga de un fichero de aplicaci�n comprimido.';
      20: txt := 'Fallo en el fichero DLL (Dynamic-link library).';
      26: txt := 'Violaci�n de compartici�n.';
      27: txt := 'El nombre de fichero asociado es incompleto o no es v�lido.';
      28: txt := 'La transacci�n DDE no se pudo completar debido a que la petici�n expir�.';
      29: txt := 'La transacci�n DDE fall�.';
      30: txt := 'La transacci�n DDE no se pudo completar debido a que otras '+
                'transacciones DDE estaban siendo procesadas.';
      31: begin  //No hay programa asociado, abro formulario de abrir con...
            shellexecute(Application.handle,'open','RUNDLL32.EXE',PChar('shell32.dll,OpenAs_RunDLL '+fic),nil,sw_shownormal);
            Result:= true;
            exit;
          end;
      32: txt := 'No se pudo encontrar la DLL especificada.';
      else
        txt := 'Error inesperado';
    end;
    //Si no estamos en mute, lanzo un mensaje con el error encontrado
    if not mute then
      ShowMessage('Error '+IntToStr(code)+': '+txt);
  end;
end;


function  TDMMain_FD.GetOpCodigoCliente: string;
begin
// Codifica cliente segun Sucursal
  QOpciones.Close;
  QOpciones.ParamByName('opcion').Value:='CODIGOCLIENTE';
  QOpciones.Open;
  if QOpciones.IsEmpty then
    FOP_CODIGOCLIENTE  :=  'No'
  else
    FOP_CODIGOCLIENTE  := QOpciones.Fields[0].AsString;
  QOpciones.Close;

  Result  :=  FOP_CODIGOCLIENTE;
end;

function  TDMMain_FD.GetUltCodigoCli: string;
var
  PrimerCodigo, AuxCodigo: string;  IntAux, Suc: integer;      QCodigoFree: TFDQuery;
begin

  if OP_CODIGOCLIENTE = 'Si' then
    Suc   := SucursalPorDef
  else
    Suc   :=  -1;

  //****************************************
  QUltimoCodigoCli.Close;
  QUltimoCodigoCli.ParamByName('sucursal').Value := Suc;
  QUltimoCodigoCli.Open;

  if (Suc<= -1) then Suc:=0;

  PrimerCodigo  := IntToStr(Suc)+'00001';

  AuxCodigo  := QUltimoCodigoCli.Fields[0].AsString;

  QUltimoCodigoCli.Close;

  if AuxCodigo = '' Then
     Result :=  PrimerCodigo
  else
    begin
      if TryStrToInt(AuxCodigo,IntAux) then
        begin
          AuxCodigo := IntToStr(IntAux + 1);
          if (Suc=0) and (FBuscaCodigoFree) then
            begin
              QCodigoFree :=  TFDQuery.Create(Self);
              QCodigoFree.Connection  :=  fdcGestion;
              QCodigoFree.SQL.Text    :=  'select * from buscar_codigo_free';
              QCodigoFree.Open;
              if QCodigoFree.Fields[0].AsString<>'' then
                AuxCodigo :=  QCodigoFree.Fields[0].AsString;
              QCodigoFree.Close;
              QCodigoFree.Free;

            end;
          AuxCodigo :=  RightStr('000000' + AuxCodigo,6);
          Result    :=  AuxCodigo;
        end
      else
        Result  :=  '';
    end;
end;

function  TDMMain_FD.GetInscripcionPorDefecto: integer;
var
  GeneralIni: TIniFile;
begin
  if (VarIsNull(FInscripcionPorDefecto)) or (FInscripcionPorDefecto<=0) then
    begin
      GeneralIni := TIniFile.Create(MainPath +'General.ini');
      FInscripcionPorDefecto     := GeneralIni.ReadInteger('Inscripcion','Inscripcion',1);
      GeneralIni.Free;
    end;
  Result  :=  FInscripcionPorDefecto;
end;

function  TDMMain_FD.GetSucursalPorDef: integer;
begin
  if (not VarIsNull(FSucursalPorDef)) and (FSucursalPorDef>0) then
    Result  :=  FSucursalPorDef
  else
    Result  :=  1;
end;

function  TDMMain_FD.GetCPostalPorDef: string;
begin
  QEmpresa.Close;
  QEmpresa.Open;
  if (not QEmpresa.IsEmpty) and
     (not QEmpresaID_CPOSTAL.IsNull)
  then
    Result  :=  QEmpresaID_CPOSTAL.AsString
  else
    Result  :=  '';
  QEmpresa.Close;
end;


function TDMMain_FD.GetFacturaPorJuriddicion: Boolean;
begin
  Result:= ReadDBOption('GRUPJUR');
end;

function TDMMain_FD.BorrarApicacionNC(Id:Integer;Tipo,Clase:String):Boolean;
var Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Text   :='delete from movaplicaccvta where id_cpbte=:id and tipocpbte=:tipo and clasecpbte=:clase ';
  Query.ParamByName('Tipo').Value  := Tipo;
  Query.ParamByName('Clase').Value := Clase;
  Query.ParamByName('id').Value    := id;
  if QUery.ExecSQL(True)=0 Then RESULT:=True
  else
  Result := False;
  FreeAndNil(Query);
end;


function TDMMain_FD.GetFcConAplicacion(id:Integer;Tipo:String): Boolean;
var Query:TFDQuery;
begin
  Query            :=TFDQuery.Create(nil);
  Query.Connection :=fdcGestion;
  Query.SQL.Text   :='select count(m.id_mov) from movaplicaccvta m where m.aplica_id_cpbte=:id and m.aplica_tipocpbte=:tipo ';
  Query.ParamByName('Tipo').Value := Tipo;
  Query.ParamByName('id').Value   := id;
  QUery.open;
  Result := Query.fields[0].Value>0;
  Query.Close;
  FreeAndNil(Query);
end;

function  TDMMain_FD.GetFormatoStock:  string;
begin
  Result  :=  ReadDBOption('STOCK');
end;


procedure TDMMain_FD.SetSucursalPorDef(Value: integer);
begin
  FSucursalPorDef :=  Value;
end;

function TDMMain_FD.SetFechaVencimentoCompra(IdFc: integer; Fecha: TDateTime): Boolean;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='update fccompcab f set f.fechavto=:fecha where f.id_fc=:id ';
  Query.ParamByName('fecha').Value:=Fecha;
  Query.ParamByName('id').Value:=idFc;
  QUery.ExecSQL;
  Result:=True;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.SetFechaVencimentoVta(IdFc: integer; Fecha: TDateTime): Boolean;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='update fcvtacab f set f.fechavto=:fecha where f.id_fc=:id ';
  Query.ParamByName('fecha').Value:=Fecha;
  Query.ParamByName('id').Value:=idFc;
  QUery.ExecSQL;
  Result:=True;
  Query.Close;
  FreeAndNil(Query);
end;

procedure TDMMain_FD.SetFormatoStock  (Value:string);
begin
  WriteDBOption('STOCK',Value);
end;


procedure TDMMain_FD.SetKeyboardLayout(const Layout: string);
var
  HKL: windows.HKL;
begin
{Español (España, Internacional): 0000080A
 Español (Latinoamérica): 00000C0A
 Inglés (Estados Unidos): 00000409
 Francés (Francia): 0000040C
 Alemán (Alemania): 00000407

  Ejemplo: Establecer el teclado en Español (Argentina)
  SetKeyboardLayout('0000080A'); // Código de distribución de teclado
}
  HKL := LoadKeyboardLayout(PChar(Layout), KLF_ACTIVATE);
  if HKL = 0 then
    ShowMessage('Error al cambiar la distribución del teclado.')
  else
    ShowMessage('Distribución del teclado cambiada correctamente.');
end;

function  TDMMain_FD.GetSubRubrosRES3886           : String;
var
  SAux : String;
  Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=fdcGestion;
  Q.Open(SQLRes3668);
  if Q.Fields[0].AsString<>'' then
    SAux  :=  Q.Fields[0].AsString;
  Result  :=  SAux;
  Q.Close;
  FreeAndNil(Q);
end;

function  TDMMain_FD.VerifRes3886(const Subrubro: string)                  : Boolean;
var A:String;
begin
  a:=SubRubrosRES3886;
  if (a<>'') then
    Result    :=  a<>''
  else
    Result:=False;
end;


procedure TDMMain_FD.Consulta_PadronIIBB(cuit:string; Fecha:TDateTime;var Percepcion,Retencion:Extended);
var
  lwsPadron: IwsPadronARBA;
  GRet:Integer;
  D,M,A:Word;
  desde,hasta,Cuit_:String;
  FechaAux1,FechaAux2:TDateTime;
 // TasaRet:Real;
begin
  Cuit_:= Cuit;
  Cuit := Trim(AnsiReplaceStr(Cuit,'-',''));
  if Cuit='00000000000' then Cuit:='';

  DecodeDate(Fecha,a,m,d);
  FechaAux1 := EncodeDate(a,m,1);
  FechaAux2 := EncodeDate(a,m,DaysInMonth(FechaAux1));
  Desde     := FormatDateTime('yyyymmdd',FechaAux1);
  Hasta     := FormatDateTime('yyyymmdd',FechaAux2);
  If (ActualizaPadronIIBBWeb) and (Cuit<>'') Then
    begin
      lwsPadron                := CowsPadronARBA.Create;
      lwsPadron.ModoProduccion := true;
      lwsPadron.User           := '20129063662';//CUIT';
      lwsPadron.Password       := '896897';     //Contraseña';
      If  lwsPadron.ConsultaAlicuota(desde, hasta, StrToFloat(cuit)) Then
        begin
         // ShowMessage('Error :'+IntToStr(lwsPadron.ErrorCode)+' '+lwsPadron.ErrorDesc);
         // SysUtils.FormatSettings.DecimalSeparator :='.';
          try
            Retencion  := lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion;
            Percepcion := lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion;

            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) Then
             if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion)>0 Then
               if FloatToStr(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion)<>'' then
                 Percepcion := (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaPercepcion);
          Except
            Percepcion:=0;
            GRet      :=0;
            abort;
          end;
          try
           // Retencion:= lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion;
            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) then
             if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion)>0 Then
              if (FLoatToStr(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion)<>'') then
                if Not(VarIsNull(lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion))  then
                  if (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion>=0) Then
                    Retencion  := (lwsPadron.ConsultaAlicuotaRespuesta.AlicuotaRetencion);
          Except
            Retencion:=0;
            GRet     :=0;
            abort;
          end;

          try
            if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) then
              if (FLoatToStr(lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion)<>'') then
                if Not(VarIsNull(lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion))  then
                  if (lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion>=0) Then
                    GRet  := (lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion);
          Except
            abort;
            GRet:=0;
          end;

          if (lwsPadron.ConsultaAlicuotaRespuesta<>nil) then
            begin
              try
                DMStoreProcedure.spGravar_2.Close;
                DMStoreProcedure.spGravar_2.ParamByName('TIPO_PERCECPION').Value := '*';
                DMStoreProcedure.spGravar_2.ParamByName('desde').AsDate       := FechaAux1;
                DMStoreProcedure.spGravar_2.ParamByName('hasta').AsDate       := FechaAux2;
                DMStoreProcedure.spGravar_2.ParamByName('fecha').AsDate       := Date;
                DMStoreProcedure.spGravar_2.ParamByName('cuit').Value         := cuit_;
                DMStoreProcedure.spGravar_2.ParamByName('tipo').Value         := 'D';
                DMStoreProcedure.spGravar_2.ParamByName('estado').Value       := 'N';
                DMStoreProcedure.spGravar_2.ParamByName('cambio').Value       := 'N';
                DMStoreProcedure.spGravar_2.ParamByName('tasa_perc').AsFloat  := Percepcion;
                DMStoreProcedure.spGravar_2.ParamByName('tasa_ret').AsFloat   := Retencion;
                DMStoreProcedure.spGravar_2.ParamByName('g_per').Value        := lwsPadron.ConsultaAlicuotaRespuesta.GrupoPercepcion;
                DMStoreProcedure.spGravar_2.ParamByName('g_ret').Value        := GRet;// lwsPadron.ConsultaAlicuotaRespuesta.GrupoRetencion;
                DMStoreProcedure.spGravar_2.ExecProc;

                ShowMessage('Nueva Tasa de IIBB ....'+#13+
                            'Percepcion :'+FormatFloat('0.00',Percepcion)+'%  '+
                            'Retencion  :'+FormatFloat('0.00',Retencion)+'%');

              finally
                DMStoreProcedure.spGravar_2.Close;
              end;
            end;
        end
      Else
        begin
          Retencion := 0;
          Percepcion:= 0;

           Retencion  :=  TasaRetencionIB;
          Percepcion  :=  TasaPercepcionIB;

          ShowMessage ('Mensaje desde ARBA:'+ #13+
                       (lwsPadron.ErrorDesc) + #13 +
                       'Se toma las Tasas Por defecto...');
        end;
     // FreeAndNil(lwsPadron);
    end;
end;


function  TDMMain_FD.TasaPerRetIIBB_CUIT(CUIT: string; var TasaPer, TasaRet: Extended) : Boolean;
vAR q:TFDQuery;
begin
  Q:=TFDQuery.Create(NIL);
  Q.Connection:=fdcGestion;
  Q.SQL.Text  :=SQLTasaPercep_Reten_IIBB;
  Q.ParamByName('cuit').AsString         := cuit;
  Q.Open;
  if Q.Fields[0].AsString <> '' then
    begin
      TasaPer :=  Q.Fields.FieldByName('tasa_percepcion').AsFloat;
      TasaRet :=  Q.Fields.FieldByName('tasa_retencion').AsFloat;
      Result  :=  True;
    end
  else
    Result    :=  False;
  Q.Close;
  FreeAndNil(Q);
end;

function  TDMMain_FD.TasaPerRetIIBB_CUIT(CUIT: string; var TasaPer, TasaRet: Extended; var Desde, Hasta: TDateTime) : Boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection :=fdcGestion;
  Q.SQL.Text   :=SQLTasaPercep_Reten_IIBB;
  Q.ParamByName('cuit').AsString         := cuit;
  Q.Open;
  if (Trim(Q.Fields[0].AsString)<>'') then
    begin
      TasaPer :=  Q.Fields.FieldByName('tasa_percepcion').AsFloat;
      TasaRet :=  Q.Fields.FieldByName('tasa_retencion').AsFloat;
      Desde   :=  Q.Fields.FieldByName('desde').AsDateTime;
      Hasta   :=  Q.Fields.FieldByName('hasta').AsDateTime;
      Result  :=  True;
    end
  else
    Result    :=  False;
  Q.Close;
  FreeAndNil(Q);
end;


procedure TDMMain_FD.CalculaPrecioVta_FD(ModoIVA:String;
                                         const ListaProveedor,lista,sucursal,deposito     :Integer;  // Modo=0 Blanco Modo=1 Negro
                                         const codigoarticulo,codigocliente,tipocpbte         :String;
                                         const cotizacion,cotizacion_cpbte                    :extended;
                                         var P_Gravado,P_exento,P_Total,
                                             Iva_Unitario,Margen,dscto,PFinal                 :extended );
var QPrecio    : TFDQuery;
    QPrecioiVA : TFDQuery;
    Conection  : TFDConnection;
begin
  Conection:=TFDConnection.Create(nil);
  Conection.ConnectionName              := 'PreciosVta';
  Conection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
  Conection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
  Conection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
  Conection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
  Conection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
  Conection.LoginPrompt                 := False;
  Conection.Connected                   := True;

  QPrecioIVA                := TFDQuery.Create(nil);
  QPrecioIVA.ConnectionName := Conection.ConnectionName;
  QPrecioIVA.SQL.Text       :='''
                                select a.codigo,g.tasa from articulos_siniva a
                                  left join stock s on s.codigo_stk=a.codigo
                                  left join gravamen g on g.codigo=s.tasa_iva
                                where a.codigo = :codigo
                              ''';
  QPrecio                := TFDQuery.Create(nil);
  QPrecio.ConnectionName := Conection.ConnectionName;
  QPrecio.SQL.Text       :='''
                             select p.* from calculo_precio_venta
                                (:Lista,:Sucursal,
                                :Deposito,:CodigoArticulo,
                                :CodigoCliente,:TipoCpbte,
                                :Cotizacion,:CotizacionCpbte,
                                :ListaProveedor) p
                           ''';
  if ListaProveedor<=0 then
    QPrecio.ParamByName('ListaProveedor').AsInteger := -1
  else
    QPrecio.ParamByName('ListaProveedor').AsInteger := listaProveedor;
  QPrecio.ParamByName('lista').AsInteger            := lista;
  QPrecio.ParamByName('Sucursal').AsInteger         := sucursal;
  QPrecio.ParamByName('Deposito').AsInteger         := deposito;
  QPrecio.ParamByName('CodigoArticulo').AsString    := codigoarticulo;
  QPrecio.ParamByName('CodigoCliente').AsString     := codigocliente;
  QPrecio.ParamByName('TipoCpbte').AsString         := tipocpbte;
  QPrecio.ParamByName('Cotizacion').AsFloat         := cotizacion;
  QPrecio.ParamByName('CotizacionCpbte').AsFloat    := cotizacion_cpbte;
  QPrecio.Open;

  p_gravado     := QPrecio.FieldByName('P_GRAVADO').AsFloat;
  P_exento      := QPrecio.FieldByName('P_exento').AsFloat;
  p_total       := QPrecio.FieldByName('P_total').AsFloat;
  IVA_UNITARIO  := QPrecio.FieldByName('iva_unitario').AsFloat;
  MARGEN        := QPrecio.FieldByName('margen').AsFloat;
  DSCTO         := QPrecio.FieldByName('dscto').AsFloat;
  PFinal        := QPrecio.FieldByName('P_FINAL').AsFloat;

  if (ModoIVA='S') or (ModoIVA='N') then  // Modo Blanco
    begin
      QPrecioIVA.ParamByName('Codigo').AsString   := codigoarticulo;
      QPrecioIVA.Open;

      if QPrecioIVA.Fields[0].AsString<>'' then
        begin
          P_gravado    := p_gravado/(1+QPrecioiVA.Fields[1].AsFloat*0.01);
          P_Total      := P_gravado + p_exento;
          Iva_Unitario := P_gravado*(QPrecioiVA.Fields[1].AsFloat*0.01);
          PFinal       := P_Total + Iva_Unitario;
        end;
    end;


  QPrecioiVA.Close;
  QPrecio.Close;

  //**************************************************************************************
  FreeAndNil(QPrecioIVA);
  FreeAndNil(QPrecio);
  FreeAndNil( Conection);


  IdListaProveedor:= -1;
end;


function TDMMain_FD.GetClienteConPrecio(Codigo, Cod_Articulo: string): Boolean;
var Query:TFDQuery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select count(pc.id) from precioespecialcab pc '+
                  '  left join precioespecialdet pd on pd.id_cabecera=pc.id '+
                  'where pc.codigocliente='+QuotedStr(codigo)+' and pd.codigoarticulo ='+QuotedStr(Cod_Articulo);

  QUery.Open;
  if Query.Fields[0].Value > 0 then
    Result:=True
  else
    Result:=False;
  Query.Close;
  FreeAndNil(Query);
end;

function TDMMain_FD.GetPrecioLista(Codigo: string;Lista:Integer): Extended;
var Query:TFDQuery;
begin
  Query            := TFDQuery.Create(nil);
  Query.Connection := fdcGestion;

//  Query.SQL.Text   := 'select p.precio from LISTAPRECIOESPECIALART p '+
//                      ' where p.codigoarticulo='+QuotedStr(Codigo)+' and p.id_cab ='+IntToStr(Lista);

  Query.SQL.Text   := 'select l.precio * m.cotizacion  from listaprecioespecialart l '+
                      '  left join stock s on s.codigo_stk=l.codigoarticulo '+
                      '  left join monedas m on m.id=s.moneda '+
                      ' where l.codigoarticulo='+QuotedStr(codigo)+' and l.id_cab='+IntToStr(Lista);

  QUery.Open;

  if (Trunc(Query.Fields[0].AsFloat*100) > 0) then
    Result:=Query.Fields[0].AsFloat
  else
    Result:=0;
  Query.Close;
  FreeAndNil(Query);
end;


function TDMMain_FD.VerificarCAE(NroCAE:String):Boolean;
begin
  QBuscarCAE.Close;
  QBuscarCAE.ParamByName('NroCAE').AsString:=NroCae;
  QBuscarCAE.Open;
  if QBuscarCAE.Fields[0].AsString<>'' then
    Result:=True
  else
    Result:=False;
end;


function TDMMain_FD.FiltroRubroUsurio(Usuarioid: Integer; Rubro: string): Boolean;
var Query:TFDQuery;
begin
  Query:=TFDQUery.Create(nil);
  Query.Connection:=fdcGestion;
  Query.SQL.Text:='select count(*) from usuario_lista_eceptuar u '+
                  ' where u.id_usuario = '+IntToStr(UsuarioID)+' and ( u.rubro = :rubro or :rubro = ''***'' )';
  Result:=False;
  Query.ParamByName('rubro').AsString:='***';
  Query.Open;
  if Query.Fields[0].Value>0 then
    begin
      Query.Close;
      Query.ParamByName('rubro').AsString:=rubro;
      Query.Open;
      Result:=Query.Fields[0].Value<=0;
    end;
  Query.Close;
  FreeAndNil(Query);
end;


function TDMMain_FD.Hacer_Factura_venta(USUARIO: String;
  ID_COMPROBANTE: Integer; COMP_TOTAL: Extended; COMP_FECHA: TDateTime;
  COMP_DEPOSITO: integer; CLIENTE: string): Boolean;
begin
//
end;

function TDMMain_FD.Hacer_NC(id_comprobante, id_cpbte,id_cta_caja: Integer; Fecha: TDateTime):Integer;
begin
  fdcGestion.StartTransaction;
    try
      spHacerNC_FD.Close;
      spHacerNC_FD.ParamByName('ID_CPBTE').AsInteger       := id_cpbte;
      spHacerNC_FD.ParamByName('ID_COMPROBANTE').AsInteger := id_Comprobante;
      spHacerNC_FD.ParamByName('FECHA').AsDateTime         := Date;
      spHacerNC_FD.ParamByName('ID_CTA_CAJA').AsInteger    := id_cta_caja;

      spHacerNC_FD.ExecProc;
      fdcGestion.Commit;
      Result:= spHacerNC_FD.ParamByName('ID_NC_GENERADA').ASInteger;
    except
      Result:=-1;
      fdcGestion.Rollback;
    end;
  spHacerNC_FD.Close;

end;

function TDMMain_FD.HayAcopios(id: Integer): Boolean;
var QHayAcopio:TFDQuery;
begin

  QHayAcopio            := TFDQuery.Create(nil);
  QHayAcopio.Connection := fdcGestion;
  QHayAcopio.SQL.Text   := 'select c.id,sum(d.entregado) as entregado from merca_enacopio_cab c '+
                           '  left join merca_enacopio_det d on d.id_cab=c.id '+
                           'where c.id_factura ='+IntToStr(id)+' and c.cumplido=''N'' '+
                           ' group by c.id ';
  QHayAcopio.Open;

  if Not(QHayAcopio.IsEmpty) then
    begin
      result:= True;//Int(RoundTo(CDSHayAcopiosENTREGADO.AsFloat,-2)*100) > 0;
    end
  else
    Result:=False;
  QHayAcopio.Close;
  FreeAndNil(QHayAcopio);
end;

function TDMMain_FD.HayNotaPedido(id: Integer; Tipo: String): Boolean;
var Q:TFDQuery;
begin
  if Not(VarisNull(id)) then
    begin
      Q:= TFDQuery.Create(nil);
      Q.Connection := fdcGestion;
      if Tipo='PR' then
        Q.SQL.Text   := 'select count(n.id) from npedidocab_cliente n where n.presupuesto_id='+IntToStr(id)
      else
        if (Tipo='FC') or (Tipo='FO') or (Tipo='TK') or (Tipo='NC') or (Tipo='ND') then
          Q.SQL.Text   := 'select count(n.id) from npedidocab_cliente n where n.factura_id='+IntToStr(id);
      try
        Q.Open;
        if Not(Q.IsEmpty) then
          begin
            result:= Q.fields[0].Value;
          end
        else
          Result:=False;
        Q.Close;
      except
        Result:=False;
      end;
      FreeAndNil(Q);
    end;
end;

function TDMMain_FD.IngresarMediaRes(id_cab, Id_det: Integer; clasificacion:String;NroTropa,kilos,medias:Integer;
                                     Arreglo: TStringList): Boolean;
var
  QueryCab,QueryDet:TFDQuery;
  QConection:TFDConnection;
  I: Integer;
begin
  QConection := TFDConnection.Create(NIL);
  with QConection do
    begin
      ConnectionName                         := 'PedidosSuc';
      QConection.Params.Values['Database']   := DMMain_FD.fdcGestion.Params.Values['Database'];
      QConection.Params.Values['User_Name']  := DMMain_FD.fdcGestion.Params.Values['User_Name'];
      QConection.Params.Values['Password']   := DMMain_FD.fdcGestion.Params.Values['Password'];
      QConection.Params.Values['DriverID']   := DMMain_FD.fdcGestion.Params.Values['DriverID'];
      QConection.Params.Values['SQLDialect'] := DMMain_FD.fdcGestion.Params.Values['SQLDialect'];
      LoginPrompt          := False;
      QConection.Connected := True;
    end;

  try
    QConection.StartTransaction;
    QueryCab            := TFDQuery.Create(nil);
    QueryDet            := TFDQuery.Create(nil);
    QueryCab.Connection := QConection;
    QueryDet.Connection := QConection;
    QueryCab.SQL.Text   := 'insert into fccompdet_carnes ( id,id_det,id_cab,clasificacion,nro_tropa,t_kilos,t_medias ) '+
                           '  values ( :id,:id_det,:id_cab,:clasificacion,:nro_tropa,:t_kilos,:t_medias ) ';
    QueryDet.SQL.Text   := 'insert into fccompdet_carnes_det ( id,id_det,Media ) '+
                           '  values ( :id,:id_det,:media )';

    QueryCab.close;
    QueryCab.ParamByName('id').Value            := -1;
    QueryCab.ParamByName('id_cab').Value        := id_cab;
    QueryCab.ParamByName('id_det').Value        := id_det;
    QueryCab.ParamByName('clasificacion').Value := clasificacion;
    QueryCab.ParamByName('nro_tropa').Value     := NroTropa;
    QueryCab.ParamByName('t_kilos').Value       := kilos;
    QueryCab.ParamByName('t_medias').Value      := medias;
    QueryCab.ExecSQL;

    for I := 0 to Arreglo.Count-1 do
      begin
        QueryDet.ParamByName('id').Value           := -1;
        QueryDet.ParamByName('id_det').Value       := Id_det;
        QueryDet.ParamByName('media').Value        := Arreglo[I];
        QueryDet.ExecSQL;
      end;
    Result:=True;
    QConection.Commit;
  except
    Result:=False;
    QConection.Rollback;
  end;
  QueryCab.Close;
  QueryDet.Close;
  QueryCab.DisposeOf;
  Querydet.DisposeOf;
  QConection.Close;
  QConection.DisposeOf;
  //
end;

procedure TDMMain_FD.LogFileFD(ConTx,Tipo: Integer; Detalle, Origen: String);
begin
  {es un tipo   0=aviso
                1=error
                2=modificacion
                3=insercion
                4=BORRADO
                5=transformacion fc
                6=clonado
  }
  if ConTx>=1 then
    begin
      fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spGravarLogFD_.Close;
        DMStoreProcedure.spGravarLogFD_.ParamByName('Tipo').Value          := Tipo;
        DMStoreProcedure.spGravarLogFD_.ParamByName('Detalle').AsString    := Detalle;
        DMStoreProcedure.spGravarLogFD_.ParamByName('Origen').AsString     := Origen;
        DMStoreProcedure.spGravarLogFD_.ParamByName('Usuario').AsString    := DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spGravarLogFD_.ParamByName('Nombre_pc').AsString  := DMMain_FD.Nombre_PC;
        DMStoreProcedure.spGravarLogFD_.ExecProc;
        fdcGestion.Commit;
        DMStoreProcedure.spGravarLogFD_.Close;
      except
        fdcGestion.Rollback;
        DMStoreProcedure.spGravarLogFD_.Close;
        ShowMessage('NO se ingreso registro en el LogFile....!');
      end;
    end
  else
    begin
      DMStoreProcedure.spGravarLogFD_.Close;
      DMStoreProcedure.spGravarLogFD_.ParamByName('Tipo').Value          := Tipo;
      DMStoreProcedure.spGravarLogFD_.ParamByName('Detalle').AsString    := Detalle;
      DMStoreProcedure.spGravarLogFD_.ParamByName('Origen').AsString     := Origen;
      DMStoreProcedure.spGravarLogFD_.ParamByName('Usuario').AsString    := DMMain_FD.UsuarioActivo;
      DMStoreProcedure.spGravarLogFD_.ParamByName('Nombre_pc').AsString  := DMMain_FD.Nombre_PC;
      DMStoreProcedure.spGravarLogFD_.ExecProc;
      DMStoreProcedure.spGravarLogFD_.Close;
    end;

  if fdcGestion.InTransaction then
    fdcGestion.Commit;
end;

procedure TDMMain_FD.GravarCot(Tipo:string;id:Integer;Cot:String);
  var Query:TFDQUery;
begin
  Query:=TFDQuery.Create(nil);
  Query.Connection:= fdcgestion;
  if Tipo='R' then
    Query.SQL.Text  := 'update RtoCab f set f.COT ='+cot+ ' where f.id_rto='+IntToStr(id)
  else
    if ((Tipo='A') or (Tipo='B')) then
      Query.SQL.Text  := 'update fcvtacab f set f.COT ='+cot+ ' where f.id_fc='+IntToStr(id);

  Query.ExecSQL;
  Query.Close;
  FreeAndNil(Query);
end;

end.
