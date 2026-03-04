UNIT DMStock;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBClient,Math,
  Provider, IBGenerator,Librerias,Variants, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.StrUtils;

TYPE
  TDatosStock = CLASS(TDataModule)
    DSMovStock: TDataSource;
    DSPStock: TDataSetProvider;
    DSPDepositoStk: TDataSetProvider;
    IBGId_depositoStk: TIBGenerator;
    DSBuscaDeposito: TDataSource;
    DSPProvStock: TDataSetProvider;
    CDSProvStock: TClientDataSet;
    ibgId_ProStock: TIBGenerator;
    CDSSeries: TClientDataSet;
    DSPSeries: TDataSetProvider;
    DSSeries: TDataSource;
    DSPMovSeries: TDataSetProvider;
    CDSMovSeries: TClientDataSet;
    DSMovSeries: TDataSource;
    DSCodigoBarra: TDataSource;
    DSPCodigoBasrra: TDataSetProvider;
    CDSCodigoBarra: TClientDataSet;
    ibgIdCodBarra: TIBGenerator;
    DSListaInBruto: TDataSource;
    DSStockHistorial: TDataSource;
    DSPListaArt: TDataSetProvider;
    DSListaArt: TDataSource;
    CDSDatosXML: TClientDataSet;
    DSBuscaMoneda: TDataSource;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockMONEDA: TIntegerField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    DSBuscaIva1: TDataSource;
    DSBuscaIva2: TDataSource;
    DSPBuscaIva: TDataSetProvider;
    CDSBuscaIva1: TClientDataSet;
    CDSBuscaIva1CODIGO: TIntegerField;
    CDSBuscaIva1DESCRIPCION: TStringField;
    CDSBuscaIva2: TClientDataSet;
    CDSBuscaIva2CODIGO: TIntegerField;
    CDSBuscaIva2DESCRIPCION: TStringField;
    DSProStock: TDataSource;
    CDSBuscaMarca: TClientDataSet;
    DSPBuscaMarca: TDataSetProvider;
    CDSBuscaMarcaMARCA_STK: TStringField;
    CDSBuscaMarcaDESCRIPCION_MARCA: TStringField;
    DSDepositoStk: TDataSource;
    CDSDepositoStk: TClientDataSet;
    CDSDepositoStkID_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_DEPOSITO: TIntegerField;
    CDSDepositoStkCODIGO_STK: TStringField;
    CDSDepositoStkSUCURSAL: TIntegerField;
    CDSDepositoStkMUESTRADEPOSITO: TStringField;
    CDSDepositoStkCOMPRAINCIAL: TFloatField;
    CDSDepositoStkCOMPRAMINIMO: TFloatField;
    CDSDepositoStkCOMPRAMEDIO: TFloatField;
    CDSDepositoStkCOMPRAFISICO: TFloatField;
    CDSDepositoStkPRECIOVENTA: TFloatField;
    DSListaUnidad: TDataSource;
    CDSBuscaMoneda: TClientDataSet;
    DSPBuscaMoneda: TDataSetProvider;
    CDSBuscaMonedaID: TIntegerField;
    CDSBuscaMonedaMONEDA: TStringField;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    DSListaDepositos: TDataSource;
    CDSListaDepositos: TClientDataSet;
    DSPListaDepositos: TDataSetProvider;
    CDSListaIngBruto: TClientDataSet;
    DSPListaIngBruto: TDataSetProvider;
    CDSListaHistorial: TClientDataSet;
    DSPListaHistorial: TDataSetProvider;
    CDSListaHistorialID: TIntegerField;
    CDSListaHistorialCODIGO_STK: TStringField;
    CDSListaHistorialID_CAMBIO_PRECIO_GENERAL: TIntegerField;
    CDSListaHistorialMOTIVO: TStringField;
    CDSMovSeriesID_MOV: TIntegerField;
    CDSMovSeriesID_STOCK_SERIE: TIntegerField;
    CDSMovSeriesCODIGO_STK: TStringField;
    CDSMovSeriesID_CPBTE: TIntegerField;
    CDSMovSeriesTIPOCPBTE: TStringField;
    CDSMovSeriesCLASECPBTE: TStringField;
    CDSMovSeriesNROCPBTE: TStringField;
    CDSMovSeriesDEPOSITO: TIntegerField;
    CDSMovSeriesDETALLE: TStringField;
    CDSMovSeriesORIGEN: TStringField;
    CDSMovSeriesMUESTRADEPOSITO: TStringField;
    CDSCodigoBarraID: TIntegerField;
    CDSCodigoBarraCODIGO_STK: TStringField;
    CDSCodigoBarraCODIGOBARRA: TStringField;
    CDSCodigoBarraPRESENTACION: TIntegerField;
    CDSBuscaTablaPrecioDet: TClientDataSet;
    DSPBuscaTablaPrecioDet: TDataSetProvider;
    CDSBuscaTablaPrecioDetID: TIntegerField;
    CDSBuscaTablaPrecioDetID_CAB: TIntegerField;
    CDSBuscaTablaPrecioDetCODIGO: TIntegerField;
    CDSBuscaTablaPrecioDetPRECIO1: TFMTBCDField;
    CDSBuscaTablaPrecioDetPRECIO2: TFMTBCDField;
    CDSBuscaTablaPrecioCab: TClientDataSet;
    DSPBuscaTablaPrecioCab: TDataSetProvider;
    CDSBuscaTablaPrecioCabID: TIntegerField;
    CDSBuscaTablaPrecioCabDETALLE: TStringField;
    CDSBuscaTablaPrecioCabFECHA: TSQLTimeStampField;
    CDSListaArt: TClientDataSet;
    CDSListaArtID: TIntegerField;
    CDSListaArtID_CAB: TIntegerField;
    CDSListaArtCODIGOARTICULO: TStringField;
    CDSListaArtMUESTRALISTA: TStringField;
    CDSListaArtMUESTRAPORDEFECTO: TStringField;
    CDSCodigoBarraMUESTRAPRESENTACION: TStringField;
    CDSSeriesID: TIntegerField;
    CDSSeriesCODIGO_STK: TStringField;
    CDSSeriesCODIGOSERIE: TStringField;
    CDSSeriesID_CPBTE_INGRESO: TIntegerField;
    CDSSeriesTIPOCPBTE_INGRESO: TStringField;
    CDSSeriesCLASECPBTE_INGRESO: TStringField;
    CDSSeriesNRO_CPBTE_INGRESO: TStringField;
    CDSSeriesID_CPBTE_EGRESO: TIntegerField;
    CDSSeriesTIPOCPBTE_EGRESO: TStringField;
    CDSSeriesCLASECPBTE_EGRESO: TStringField;
    CDSSeriesNRO_CPBTE_EGRESO: TStringField;
    CDSSeriesDEPOSITO: TIntegerField;
    CDSSeriesOBS: TStringField;
    CDSSeriesALTA_POR_VTA: TStringField;
    CDSSeriesMUESTRAPROVEEDOR: TStringField;
    CDSSeriesMUESTRACLIENTE: TStringField;
    CDSSeriesMUESTRAPROVEEDOR_2: TStringField;
    CDSProvStockID_PROVEESTOCK: TIntegerField;
    CDSProvStockCODIGO_STK: TStringField;
    CDSProvStockCODIGO_PROVEEDOR: TStringField;
    CDSProvStockNROCPBTE: TStringField;
    CDSProvStockTIPO_CPBTE: TStringField;
    CDSProvStockCLASE_CPBTE: TStringField;
    CDSProvStockID_CPBTE: TIntegerField;
    CDSProvStockCODIGO_FACTURACION: TStringField;
    CDSProvStockCODIGO_REFERENCIA: TStringField;
    CDSProvStockCODIGO_INTERNO: TStringField;
    CDSProvStockRANKING: TIntegerField;
    CDSProvStockPORDEFECTO: TStringField;
    CDSProvStockMUESTRAPROVEEDOR: TStringField;
    CDSSeriesMUESTRAPROVEEDORFINAL: TStringField;
    CDSListaDepositosID: TIntegerField;
    CDSListaDepositosNOMBRE: TStringField;
    CDSStockFotos: TClientDataSet;
    DSPStockFotos: TDataSetProvider;
    ibgIdFoto: TIBGenerator;
    DSStockFotos: TDataSource;
    CDSStockFotosID: TIntegerField;
    CDSStockFotosCODIGO: TStringField;
    CDSStockFotosFOTO: TStringField;
    CDSStockFotosPOR_DEFECTO: TStringField;
    CDSStockCOMANDA: TStringField;
    CDSStockMUESTRACOSTOCONIVA: TFMTBCDField;
    CDSStockMUESTRAFIJACIONCONIVA: TFMTBCDField;
    DSListaArtSubDet: TDataSource;
    CDSListaArtSubDet: TClientDataSet;
    DSPListaArtSubDet: TDataSetProvider;
    CDSListaArtSubDetID: TIntegerField;
    CDSListaArtSubDetID_LISTADETALLE: TIntegerField;
    CDSListaArtSubDetCODIGO: TStringField;
    ibgListaArtSubDet: TIBGenerator;
    CDSListaArtHAYSUBDET: TIntegerField;
    CDSDepositoStkSECTOR: TStringField;
    CDSDepositoStkUBICACION: TStringField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    DSPTrazables: TDataSetProvider;
    CDSTrazables: TClientDataSet;
    DSTrazables: TDataSource;
    CDSTrazablesCODIGO_STK: TStringField;
    CDSTrazablesDETALLE_STK: TStringField;
    CDSTrazablesRUBRO_STK: TStringField;
    CDSTrazablesSUBRUBRO_STK: TStringField;
    CDSTrazablesDETALLE_RUBRO: TStringField;
    CDSTrazablesDETALLE_SUBRUBRO: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    DSArticulosSeriesTrazab: TDataSource;
    CDSArticulosSeriesTrazab: TClientDataSet;
    DSPArticulosSeriesTrazab: TDataSetProvider;
    CDSArticulosSeriesTrazabCODIGO_STK: TStringField;
    CDSArticulosSeriesTrazabDETALLE_STK: TStringField;
    CDSArticulosSeriesTrazabCONTROL_SERIE: TStringField;
    CDSArticulosSeriesTrazabCONTROL_TRAZABILIDAD: TStringField;
    CDSStockSIGLAS: TStringField;
    DSLotes: TDataSource;
    DSPMovLote: TDataSetProvider;
    CDSMovLote: TClientDataSet;
    DSMovLote: TDataSource;
    CDSMovLoteID: TIntegerField;
    CDSMovLoteID_LOTE: TIntegerField;
    CDSMovLoteCODIGO: TStringField;
    CDSMovLoteID_COMPROBANTE: TIntegerField;
    CDSMovLoteID_DETALLE_CPBTE: TIntegerField;
    CDSMovLoteTIPO_COMPROBANTE: TStringField;
    CDSMovLoteTIPO: TStringField;
    CDSMovLoteDEPOSITO: TIntegerField;
    CDSMovLoteMUESTRANROCPBTE: TStringField;
    CDSMovLoteMUESTRAOPERACION: TStringField;
    CDSMovLoteMUESTRADEPOSITO: TStringField;
    CDSMovLoteMUESTRANOMBRE: TStringField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockPLU: TStringField;
    CDSDepositoStkAVISO_MINIMOSTOCK: TStringField;
    CDSSeriesDATOS_ADICIONAL1: TStringField;
    CDSSeriesDATOS_ADICIONAL2: TStringField;
    CDSSeriesDATOS_ADICIONAL3: TStringField;
    CDSSeriesDATOS_ADICIONAL4: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSBuscaIva1TASA: TFloatField;
    CDSBuscaIva2TASA: TFloatField;
    QMovStk: TFDQuery;
    QLotes_: TFDQuery;
    QVerificaPLU: TFDQuery;
    QVerificaPLUPLU: TStringField;
    QListaUnidadFD: TFDQuery;
    QMarcaFD: TFDQuery;
    QProveedores: TFDQuery;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QVerificaStockConMov: TFDQuery;
    QVerificaStockConMovESTADO: TStringField;
    QProveedoresCODIGO: TStringField;
    QProveedoresNOMBRE: TStringField;
    QProveedoresRAZON_SOCIAL: TStringField;
    QBorraHistorial: TFDQuery;
    QListaPresentacion: TFDQuery;
    QBorraProvStock: TFDQuery;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    QListaPresentacionID: TIntegerField;
    QListaPresentacionDETALLE: TStringField;
    CDSStockMODO_IVA: TStringField;
    QMovLote: TFDQuery;
    CDSMovLoteENTRA: TFloatField;
    CDSMovLoteSALE: TFloatField;
    QTiposAdicionales: TFDQuery;
    DSTipoAdicional: TDataSource;
    QTiposAdicionalesID: TIntegerField;
    QTiposAdicionalesTIPO: TStringField;
    QTiposAdicionalesDESCRIPCION: TStringField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockPESO_CALCULADO: TFloatField;
    QListaHistorial: TFDQuery;
    CDSListaHistorialUSUARIO: TStringField;
    CDSListaHistorialCOSTO_GRAVADO_OLD: TFloatField;
    CDSListaHistorialCOSTO_EXENTO_OLD: TFloatField;
    CDSListaHistorialCOSTO_OLD: TFloatField;
    CDSListaHistorialF_PRECIO_GRAVADO_OLD: TFloatField;
    CDSListaHistorialF_PRECIO_EXENTO_OLD: TFloatField;
    CDSListaHistorialFPRECIO_OLD: TFloatField;
    CDSListaHistorialCOSTO_GRAVADO_NEW: TFloatField;
    CDSListaHistorialCOSTO_EXENTO_NEW: TFloatField;
    CDSListaHistorialCOSTO_NEW: TFloatField;
    CDSListaHistorialF_PRECIO_GRAVADO_NEW: TFloatField;
    CDSListaHistorialF_PRECIO_EXENTO_NEW: TFloatField;
    CDSListaHistorialFPRECIO_NEW: TFloatField;
    CDSListaHistorialID_FC_COMPRA: TIntegerField;
    QSeccionPLU: TFDQuery;
    DSPSeccionPLU: TDataSetProvider;
    CDSSeccionPLU: TClientDataSet;
    CDSSeccionPLUID: TIntegerField;
    DSSeccionPLU: TDataSource;
    CDSListaHistorialFECHA: TSQLTimeStampField;
    CDSMovLoteFECHA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    CDSDepositoStkINICIAL: TFloatField;
    CDSDepositoStkMINIMO: TFloatField;
    CDSDepositoStkMEDIO: TFloatField;
    CDSDepositoStkFISICO: TFloatField;
    CDSDepositoStkRECARGO: TFloatField;
    CDSDepositoStkUNIDADES: TFloatField;
    QProvStock: TFDQuery;
    CDSProvStockCOSTO_BRUTO: TFloatField;
    CDSProvStockCOSTO_NETO: TFloatField;
    CDSProvStockDESCUENTO: TFloatField;
    QListArt: TFDQuery;
    CDSListaArtRECARGO: TFloatField;
    CDSListaArtCOSTO_GRAVADO: TFloatField;
    CDSListaArtCOSTO_EXENTO: TFloatField;
    CDSListaArtCOSTO_TOTAL: TFloatField;
    CDSListaArtIVA_TASA: TFloatField;
    CDSListaArtPRECIO_GRAVADO: TFloatField;
    CDSListaArtIVA_IMPORTE: TFloatField;
    CDSListaArtPRECIO_EXENTO: TFloatField;
    CDSListaArtPRECIO: TFloatField;
    CDSListaArtDESCUENTO: TFloatField;
    CDSListaArtREC_APLICAR: TFloatField;
    QSeries: TFDQuery;
    QMovSeries: TFDQuery;
    QCodigoBarra: TFDQuery;
    QCodigoBarraID: TIntegerField;
    QCodigoBarraCODIGO_STK: TStringField;
    QCodigoBarraCODIGOBARRA: TStringField;
    QCodigoBarraPRESENTACION: TIntegerField;
    QCodigoBarraPRESENTACION_CANTIDAD: TFloatField;
    QCodigoBarraMUESTRAPRESENTACION: TStringField;
    CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField;
    QStockFotos: TFDQuery;
    QStockFotosID: TIntegerField;
    QStockFotosCODIGO: TStringField;
    QStockFotosFOTO: TStringField;
    QStockFotosPOR_DEFECTO: TStringField;
    QListaArtSubDet: TFDQuery;
    QListaArtSubDetID: TIntegerField;
    QListaArtSubDetID_LISTADETALLE: TIntegerField;
    QListaArtSubDetCODIGO: TStringField;
    QListaArtSubDetCANTIDAD: TFloatField;
    QListaArtSubDetCOSTO_EXENTO: TFloatField;
    QListaArtSubDetCOSTO_GRAVADO: TFloatField;
    QListaArtSubDetCOSTO_TOTAL: TFloatField;
    QListaArtSubDetRECARGO: TFloatField;
    QListaArtSubDetPRECIO_EXENTO: TFloatField;
    QListaArtSubDetPRECIO_GRAVADO: TFloatField;
    QListaArtSubDetIVA_TASA: TFloatField;
    QListaArtSubDetIVA_IMPORTE: TFloatField;
    QListaArtSubDetPRECIO: TFloatField;
    QListaArtSubDetDESCUENTO: TFloatField;
    CDSListaArtSubDetCANTIDAD: TFloatField;
    CDSListaArtSubDetCOSTO_EXENTO: TFloatField;
    CDSListaArtSubDetCOSTO_GRAVADO: TFloatField;
    CDSListaArtSubDetDESCUENTO: TFloatField;
    CDSListaArtSubDetCOSTO_TOTAL: TFloatField;
    CDSListaArtSubDetRECARGO: TFloatField;
    CDSListaArtSubDetPRECIO_EXENTO: TFloatField;
    CDSListaArtSubDetPRECIO_GRAVADO: TFloatField;
    CDSListaArtSubDetIVA_TASA: TFloatField;
    CDSListaArtSubDetIVA_IMPORTE: TFloatField;
    CDSListaArtSubDetPRECIO: TFloatField;
    QTrazables: TFDQuery;
    QArticulosSeriesTrazab: TFDQuery;
    QListaIngBruto: TFDQuery;
    CDSMovSeriesFECHA: TSQLTimeStampField;
    CDSProvStockULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockFUAP: TSQLTimeStampField;
    DSPMovStock: TDataSetProvider;
    CDSMovStock: TClientDataSet;
    CDSMovStockID: TIntegerField;
    CDSMovStockCOSTO: TFloatField;
    CDSMovStockFECHA: TSQLTimeStampField;
    CDSMovStockTIPOOPERACION: TStringField;
    CDSMovStockTIPOCPBTE: TStringField;
    CDSMovStockCLASECPBTE: TStringField;
    CDSMovStockNROCPBTE: TStringField;
    CDSMovStockDETALLE: TStringField;
    CDSMovStockENTRA: TFloatField;
    CDSMovStockSALE: TFloatField;
    CDSMovStockUNIDAD: TStringField;
    CDSMovStockID_COMPROB: TIntegerField;
    CDSMovStockUNIDADES: TFloatField;
    CDSDepositoStkFUAPRECIOS: TSQLTimeStampField;
    CDSDepositoStkFULTAJUSTE: TSQLTimeStampField;
    CDSListaArtMUESTRAFECHA: TSQLTimeStampField;
    QListArtID: TIntegerField;
    QListArtID_CAB: TIntegerField;
    QListArtRUBRO: TStringField;
    QListArtSUBRUBRO: TStringField;
    QListArtCODIGOARTICULO: TStringField;
    QListArtCOSTO_GRAVADO: TFloatField;
    QListArtCOSTO_EXENTO: TFloatField;
    QListArtCOSTO_TOTAL: TFloatField;
    QListArtIVA_TASA: TFloatField;
    QListArtRECARGO: TFloatField;
    QListArtPRECIO_GRAVADO: TFloatField;
    QListArtIVA_IMPORTE: TFloatField;
    QListArtPRECIO_EXENTO: TFloatField;
    QListArtPRECIO: TFloatField;
    QListArtDESCUENTO: TFloatField;
    QListArtREC_APLICAR: TFloatField;
    QListArtFECHA: TSQLTimeStampField;
    QListArtMUESTRALISTA: TStringField;
    QListArtMUESTRAFECHA: TSQLTimeStampField;
    QListArtMUESTRAPORDEFECTO: TStringField;
    QListArtHAYSUBDET: TIntegerField;
    CDSSeriesFECHAINGRESO: TSQLTimeStampField;
    CDSSeriesFECHAEGRESO: TSQLTimeStampField;
    spMarcaProveeDefectoFD: TFDStoredProc;
    spAltaCBFD: TFDStoredProc;
    spRearmarMovFD: TFDStoredProc;
    spCambioPrecioFD: TFDStoredProc;
    spAsociarListaProveedorFD: TFDStoredProc;
    QUltimoCodigoStk: TFDQuery;
    QUltimoCodigoStkCODIGO: TStringField;
    QListArtMUESTRADETALLESTOCK: TStringField;
    CDSListaArtMUESTRADETALLESTOCK: TStringField;
    QListArtMUESTRACODIGOBARRA: TStringField;
    CDSListaArtMUESTRACODIGOBARRA: TStringField;
    CDSStockMUESTRACTAGASTO: TStringField;
    CDSStockMUESTRARUBROGASTO: TStringField;
    CDSMarca: TClientDataSet;
    DSPMarca: TDataSetProvider;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaOBSERVACION_MARCA: TStringField;
    DSPListaUnidad: TDataSetProvider;
    CDSListaUnidad: TClientDataSet;
    CDSListaUnidadID: TIntegerField;
    CDSListaUnidadSIGLAS: TStringField;
    CDSListaUnidadDESCRIPCION: TStringField;
    CDSListaArtRUBRO: TStringField;
    CDSListaArtSUBRUBRO: TStringField;
    CDSListaArtFECHA: TSQLTimeStampField;
    QListArtCODIGOALTERNATIVO: TStringField;
    CDSListaArtCODIGOALTERNATIVO: TStringField;
    QEnArtProduccion: TFDQuery;
    DSPEnArtProduccion: TDataSetProvider;
    CDSEnArtProduccion: TClientDataSet;
    DSEnArtProduccion: TDataSource;
    CDSEnArtProduccionID_CAB: TIntegerField;
    CDSEnArtProduccionCODIGO: TStringField;
    CDSEnArtProduccionDETALLE: TStringField;
    CDSEnArtProduccionCANTIDAD_FISICA: TFloatField;
    CDSEnArtProduccionCODIGO_STK: TStringField;
    CDSLotes: TClientDataSet;
    DSPLotes: TDataSetProvider;
    CDSLotesID: TIntegerField;
    CDSLotesID_COMPROBANTE: TIntegerField;
    CDSLotesCODIGO: TStringField;
    CDSLotesID_DETALLE_CPBTE: TIntegerField;
    CDSLotesLOTE: TStringField;
    CDSLotesDESPACHO: TStringField;
    CDSLotesCANTIDAD: TFloatField;
    CDSLotesTIPO_COMPROB: TStringField;
    CDSLotesDEPOSITO: TIntegerField;
    CDSLotesSALDO: TFloatField;
    CDSLotesFECHA_ENTRADA: TSQLTimeStampField;
    CDSLotesFECHA_VTO: TSQLTimeStampField;
    QListArtMUESTRAACTUALIZAPOREXCEPCION: TStringField;
    CDSListaArtMUESTRAACTUALIZAPOREXCEPCION: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    DSPBuscaPercepIVA: TDataSetProvider;
    CDSBuscaPercepIVA: TClientDataSet;
    CDSBuscaPercepIVACODIGO: TIntegerField;
    CDSBuscaPercepIVADESCRIPCION: TStringField;
    CDSBuscaPercepIVATASA: TFloatField;
    DSPercepIVA: TDataSource;
    CDSSeccionPLUDETALLE: TStringField;
    QTablaPrecioDet: TFDQuery;
    QTablaPrecioDetID: TIntegerField;
    QTablaPrecioDetID_CAB: TIntegerField;
    QTablaPrecioDetCODIGO: TIntegerField;
    QTablaPrecioDetPRECIO1: TFloatField;
    QTablaPrecioDetPRECIO2: TFloatField;
    QTablaPrecioCab: TFDQuery;
    QTablaPrecioCabID: TIntegerField;
    QTablaPrecioCabDETALLE: TStringField;
    QTablaPrecioCabFECHA: TSQLTimeStampField;
    CDSSeccionPLUPARENT: TIntegerField;
    CDSStockDISPONIBLE: TStringField;
    CDSStockPLU_SECCION: TStringField;
    CDSStockPRESENTACION_TOLERANCIA: TFloatField;
    spAMCategorias: TFDStoredProc;
    CDSStockDESCRIPCION_CORTA: TMemoField;
    CDSStockDESCRIPCION_LARGA: TMemoField;
    spABMStockWord: TFDStoredProc;
    CDSStockCATEGORIAS_WEB: TStringField;
    CDSStockPLU_2: TStringField;
    CDSStockDETALLE_CORTO: TStringField;
    CDSStockARTICULO_VARIABLE: TStringField;
    CDSStockFOB: TSingleField;
    CDSStockCODIGO_ART_VARIABLE: TStringField;
    CDSStockDIAS_VENCIMIENTO: TIntegerField;
    QVariaciones: TFDQuery;
    CDSVariaciones: TClientDataSet;
    DSPVariaciones: TDataSetProvider;
    DSVariaciones: TDataSource;
    CDSVariacionesID: TIntegerField;
    CDSVariacionesCODIGO: TStringField;
    CDSVariacionesVARIACION: TStringField;
    CDSVariacionesDETALLE_STK: TStringField;
    QBuscadorArticulosWeb: TFDQuery;
    QBuscadorArticulosWebCODIGO_STK: TStringField;
    QBuscadorArticulosWebDETALLE_STK: TStringField;
    CDSStockFOTO: TBlobField;
    QListArtCLONADA: TStringField;
    CDSListaArtCLONADA: TStringField;
    QListArtMUESTRACLONDE: TIntegerField;
    CDSListaArtMUESTRACLONDE: TIntegerField;
    QListaArtSubDetID_LISTA_SECUNDARIA: TIntegerField;
    CDSListaArtSubDetID_LISTA_SECUNDARIA: TIntegerField;
    PROCEDURE DataModuleDestroy(Sender: TObject);
    PROCEDURE CDSDepositoStkCODIGO_DEPOSITOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSDepositoStkRECARGOSetText(Sender: TField;
      CONST Text: STRING);
    PROCEDURE CDSDepositoStkCalcFields(DataSet: TDataSet);
    PROCEDURE CDSDepositoStkNewRecord(DataSet: TDataSet);
    PROCEDURE CDSStockNewRecord(DataSet: TDataSet);
    procedure CDSProvStockNewRecord(DataSet: TDataSet);
    procedure CDSDepositoStkPRECIOVENTASetText(Sender: TField;
      const Text: String);
    procedure CDSStockBeforePost(DataSet: TDataSet);
    procedure CDSSeriesAfterScroll(DataSet: TDataSet);
    procedure CDSCodigoBarraNewRecord(DataSet: TDataSet);
    procedure CDSCodigoBarraBeforePost(DataSet: TDataSet);
    procedure CDSListaArtPRECIOSetText(Sender: TField; const Text: String);
    procedure CDSListaArtRECARGOSetText(Sender: TField;
      const Text: String);
    procedure CDSSeriesCalcFields(DataSet: TDataSet);
    procedure CDSStockCODIGO_STKSetText(Sender: TField; const Text: string);
    procedure CDSStockCOSTO_GRAVADO_SOMBRASetText(Sender: TField;
      const Text: string);
    procedure CDSStockCOSTO_GRAVADO_STKSetText(Sender: TField;
      const Text: string);
    procedure CDSStockFIJACION_PRECIO_GRAVADOSetText(Sender: TField;
      const Text: string);
    procedure CDSStockFIJACION_PRECIO_EXENTOSetText(Sender: TField;
      const Text: string);
    procedure CDSStockCOSTO_EXENTO_STKSetText(Sender: TField;
      const Text: string);
    procedure CDSStockDETALLE_STKSetText(Sender: TField; const Text: string);
    procedure CDSStockCODIGO_PRECIOSetText(Sender: TField; const Text: string);
    procedure CDSStockID_TABLAPRECIOSSetText(Sender: TField;
      const Text: string);
    procedure CDSStockMARCA_STKSetText(Sender: TField; const Text: string);
    procedure CDSStockSUBRUBRO_STKSetText(Sender: TField; const Text: string);
    procedure CDSProvStockCODIGO_PROVEEDORSetText(Sender: TField;
      const Text: string);
    procedure CDSStockRUBRO_STKSetText(Sender: TField; const Text: string);
    procedure CDSListaArtBeforeInsert(DataSet: TDataSet);
    procedure CDSStockTASA_IVAChange(Sender: TField);
    procedure CDSStockSOBRETASA_IVAChange(Sender: TField);
    procedure CDSStockCOSTO_FINALSetText(Sender: TField; const Text: string);
    procedure CDSStockFIJACION_PRECIO_FINALSetText(Sender: TField;
      const Text: string);
    procedure CDSStockFIJACION_PRECIO_TOTALChange(Sender: TField);
    procedure CDSStockFotosNewRecord(DataSet: TDataSet);
    procedure CDSStockFotosAfterScroll(DataSet: TDataSet);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure CDSListaArtSubDetNewRecord(DataSet: TDataSet);
    procedure CDSListaArtAfterScroll(DataSet: TDataSet);
    procedure CDSListaArtSubDetAfterPost(DataSet: TDataSet);
    procedure CDSListaArtSubDetAfterDelete(DataSet: TDataSet);
    procedure CDSListaArtSubDetPRECIOSetText(Sender: TField;
      const Text: string);
    procedure CDSListaArtSubDetRECARGOSetText(Sender: TField;
      const Text: string);
    procedure CDSListaArtSubDetBeforePost(DataSet: TDataSet);
    procedure CDSDepositoStkUBICACIONSetText(Sender: TField;
      const Text: string);
    procedure CDSStockPLUSetText(Sender: TField; const Text: string);
    procedure CDSSeriesBeforeEdit(DataSet: TDataSet);
    procedure CDSSeriesBeforeInsert(DataSet: TDataSet);
    procedure CDSStockLARGO_1SetText(Sender: TField; const Text: string);
    procedure CDSStockLARGO_2SetText(Sender: TField; const Text: string);
    procedure CDSStockLARGO_3SetText(Sender: TField; const Text: string);
    procedure CDSStockROTURA_1SetText(Sender: TField; const Text: string);
    procedure CDSStockROTURA_2SetText(Sender: TField; const Text: string);
    procedure CDSStockPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure CDSStockCLASE_ARTICULOChange(Sender: TField);
    procedure CDSStockCOSTO_EXENTO_SOMBRASetText(Sender: TField;
      const Text: string);
    procedure CDSStockPLU_2SetText(Sender: TField; const Text: string);
    procedure CDSCodigoBarraCODIGOBARRASetText(Sender: TField;
      const Text: string);
    procedure CDSListaArtMUESTRACLONDEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    Mascara:String;
    FUNCTION AsignarTablaPrecio(Dato: Integer): Boolean;
    FUNCTION AsignarCodigoTablaPrecio(Lista,Codigo: Integer): Boolean;
    FUNCTION AsignarMarca(Dato: STRING): Boolean;
    FUNCTION AsignarRubro(Dato: STRING): Boolean;
    FUNCTION AsignarSubRubro(Dato: STRING): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    Procedure AsignarMascaras;
    function SumaChar(Str: string):string;
    function SacaSufijo(cod:string):string;
    function Fact9(rango:integer):integer;
    function IdProduccion(Codigo:String):Integer;
    { Public declarations }
  END;

VAR
  DatosStock: TDatosStock;

IMPLEMENTATION

USES UStock_2, DMBuscadoresForm,UDMain_FD;

{$R *.DFM}

procedure TDatosStock.AsignarMascaras;
var i:Integer;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').AsString:='STOCK';
  DMMain_FD.QOpciones.Open;

  Mascara:=',0.000';

  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;

  DMMain_FD.QOpciones.Close;

  if True then

  if DatosStock.CDSStockCONTENIDO_COMPRA.DataType=ftFMTBcd then
    begin
      TFMTBCDField(DatosStock.CDSStockCONTENIDO_COMPRA).DisplayFormat     :=',0.0000';
      TFMTBCDField(DatosStock.CDSStockCONTENIDO_COMPRA).EditFormat        :='0.0000'
    end
  else
    if DatosStock.CDSStockCONTENIDO_COMPRA.DataType=ftFloat then
      begin
        TFloatField(DatosStock.CDSStockCONTENIDO_COMPRA).DisplayFormat       :='0.0000';
        TFloatField(DatosStock.CDSStockCONTENIDO_COMPRA).EditFormat          :='0.0000';
      end;

  For i:=0 to DatosStock.CDSStock.FieldCount-1 do
    begin
      if (DatosStock.CDSStock.Fields[i].DataType=ftBCD) or (DatosStock.CDSStock.Fields[i].DataType=ftFMTBcd) Then
        TFMTBCDField(DatosStock.CDSStock.fields[i]).DisplayFormat:=Mascara
      else
          if (DatosStock.CDSStock.Fields[i].DataType=ftFloat) Then
            TFloatField(DatosStock.CDSStock.fields[i]).DisplayFormat:=Mascara;
    end;

  For i:=0 to DatosStock.CDSDepositoStk.FieldCount-1 do
    begin
      if (DatosStock.CDSDepositoStk.Fields[i].DataType=ftBCD) or (DatosStock.CDSDepositoStk.Fields[i].DataType=ftFMTBcd) Then
        TFMTBCDField(DatosStock.CDSDepositoStk.fields[i]).DisplayFormat:=Mascara
      else
          if (DatosStock.CDSDepositoStk.Fields[i].DataType=ftFloat) Then
            TFloatField(DatosStock.CDSDepositoStk.fields[i]).DisplayFormat:=Mascara;
    end;


  //****************************************************************************/
  TFloatField(DatosStock.CDSStockCONTENIDO_COMPRA).EditFormat           :='0.0000';
  TFloatField(DatosStock.CDSStockCONTENIDO_COMPRA).DisplayFormat        :='0.0000';


  //****************************************************************************/


  For i:=0 to DatosStock.CDSListaArt.FieldCount-1 do
    begin
      if (DatosStock.CDSListaArt.Fields[i].DataType=ftBCD) or (DatosStock.CDSListaArt.Fields[i].DataType=ftFMTBcd) Then
        TFMTBCDField(DatosStock.CDSListaArt.fields[i]).DisplayFormat:=Mascara
      else
          if (DatosStock.CDSListaArt.Fields[i].DataType=ftFloat) Then
            TFloatField(DatosStock.CDSListaArt.fields[i]).DisplayFormat:=Mascara;
    end;


  TFloatField(DatosStock.CDSListaArtSubDetPRECIO_EXENTO).EditFormat     :=Mascara;
  TFloatField(DatosStock.CDSListaArtSubDetPRECIO_EXENTO).DisplayFormat  :=Mascara;

  TFloatField(DatosStock.CDSListaArtSubDetPRECIO_GRAVADO).EditFormat    :=Mascara;
  TFloatField(DatosStock.CDSListaArtSubDetPRECIO_GRAVADO).DisplayFormat :=Mascara;

  TFloatField(DatosStock.CDSListaArtSubDetPRECIO).EditFormat            :=Mascara;
  TFloatField(DatosStock.CDSListaArtSubDetPRECIO).DisplayFormat         :=Mascara;

  TFloatField(DatosStock.CDSListaArtRECARGO).EditFormat                 :='0.00';//Mascara;
  TFloatField(DatosStock.CDSListaArtRECARGO).DisplayFormat              :=',0.00';//Mascara;

  TFloatField(DatosStock.CDSListaArtSubDetRECARGO).EditFormat           :='0.00';
  TFloatField(DatosStock.CDSListaArtSubDetRECARGO).DisplayFormat        :=',0.00';

end;

FUNCTION TDatosStock.AsignarTablaPrecio(dato: integer): Boolean;
BEGIN
  QTablaPrecioCab.Close;
  QTablaPrecioCab.ParamByName('id').Value := dato;
  QTablaPrecioCab.Open;
  IF NOT (QTablaPrecioCab.IsEmpty) THEN
    BEGIN
      result := True;
      CDSStockMUESTRATABLAPRECIODETALLE.Value := QTablaPrecioCabDETALLE.Value;
    END
  ELSE
    begin
      Result := False;
      CDSStockMUESTRATABLAPRECIODETALLE.Clear;
    end;
 QTablaPrecioCab.Close;
END;

FUNCTION TDatosStock.AsignarCodigoTablaPrecio(Lista,Codigo: integer): Boolean;
BEGIN
  QTablaPrecioDet.Close;
  QTablaPrecioDet.ParamByName('id_lista').Value := Lista;
  QTablaPrecioDet.ParamByName('codigo').Value   := Codigo;
  QTablaPrecioDet.Open;
  IF NOT (QTablaPrecioDet.IsEmpty) THEN
    BEGIN
      result := True;
      CDSStockCODIGO_PRECIO.Value          := QTablaPrecioDetCODIGO.Value;
      CDSStockID_TABLAPRECIOSDETALLE.Value := QTablaPrecioDetID.Value;
      CDSStockMUESTRATABLAPRECIO1.AsFloat  := QTablaPrecioDetPRECIO1.AsFloat;
      CDSStockMUESTRATABLAPRECIO2.AsFloat  := QTablaPrecioDetPRECIO2.AsFloat;
    END
  ELSE
    begin
      Result := False;
      CDSStockCODIGO_PRECIO.Clear;
      CDSStockID_TABLAPRECIOSDETALLE.Clear;
      CDSStockMUESTRATABLAPRECIO1.Clear;
      CDSStockMUESTRATABLAPRECIO2.Clear;
    end;
  QTablaPrecioDet.Close;
END;

FUNCTION TDatosStock.AsignarMarca(dato: STRING): Boolean;
BEGIN
  CDSMarca.Close;
  CDSMarca.Params.ParamByName('Codigo').Value := dato;
  CDSMarca.Open;
  IF NOT (CDSMarca.IsEmpty) THEN
    BEGIN
      result := True;
      CDSStockMUESTRAMARCA.Value := CDSMarcaDESCRIPCION_MARCA.Value;
    END
  ELSE
    Result := False;
  CDSMarca.Close;
END;

FUNCTION TDatosStock.AsignarRubro(dato: STRING): Boolean;
BEGIN
  DMMain_FD.CDSRubroFD.Close;
  DMMain_FD.CDSRubroFD.Params.ParamByName('Rubro').Value := dato;
  DMMain_FD.CDSRubroFD.Open;
  IF NOT (DMMain_FD.CDSRubroFD.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSStockRUBRO_STK.AsString    := dato;
      CDSStockMUESTRARUBRO.AsString := DMMain_FD.CDSRubroFDDETALLE_RUBRO.AsString;
    END
  ELSE
    result := False;
  DMMain_FD.CDSRubroFD.Close;
END;

FUNCTION TDatosStock.AsignarSubRubro(dato: STRING): Boolean;
VAR
  Num: Integer;
  Cadena: STRING;
BEGIN
  DMMain_FD.CDSSubRubroFD.Close;
  DMMain_FD.CDSSubRubroFD.Params.ParamByName('SubRubro').Value := Dato;
  DMMain_FD.CDSSubRubroFD.Open;
  IF NOT (DMMain_FD.CDSSubRubroFD.IsEmpty) and (AsignarRubro(DMMain_FD.CDSSubRubroFDCODIGO_RUBRO.AsString)) THEN
    BEGIN
      result := True;
   //   CDSStockRUBRO_STK.Text  :=  DMMain_FD.CDSSubRubroFDCODIGO_RUBRO.AsString;
      CDSStockMUESTRASUBRUBRO.Value := DMMain_FD.CDSSubRubroFDDETALLE_SUBRUBRO.Value;
      if (CDSStock.State = dsInsert) and (Not(FormStock_2.CodigoSecuencial)) Then
        begin
          //*************si el codigo es solo numerico ********************
          if Not(FormStock_2.CodigoAlfa) Then
            begin
              //QUlitmoCodigoStk_RubSub.Close;
              //QUlitmoCodigoStk_RubSub.ParamByName('Id_Rubro').Value    := CDSStockRUBRO_STK.Value;
             // QUlitmoCodigoStk_RubSub.ParamByName('Id_SubRubro').Value := dato;
              //QUlitmoCodigoStk_RubSub.Open;
              //IF (QUlitmoCodigoStk_RubSub.Fields[0].AsString<>'') THEN
               //  Num := StrToInt(QUlitmoCodigoStk_RubSub.Fields[0].Value) + 1
              //ELSE
               // num := StrToInt(Dato+'000');
              //QUlitmoCodigoStk_RubSub.Close;

              //Cadena := Copy('00000000000', 1, CDSStockCODIGO_STK.Size - Length(IntToStr(Num))) + IntToStr(Num);
              Cadena:=DMMain_FD.GetUltimoCodigoStk_RubSub(CDSStockRUBRO_STK.AsString,Dato);

//               QVerificaCodigoExistente.Close;
//               QVerificaCodigoExistente.ParamByName('codigo').Value:=Cadena;
//               QVerificaCodigoExistente.OPen;
//              if (QVerificaCodigoExistente.IsEmpty) Then
              if Not(DMMain_FD.GetCodigoExistente(cadena)) Then
                BEGIN
                  ShowMessage('Segun el Rubro-SubRubro elegido se propone el codigo: ' + Cadena);
                  CDSStockCODIGO_STK.Value := Cadena;
                END
               ELSE
                 //while Not(QVerificaCodigoExistente.IsEmpty) do
                 while Not (DMMain_FD.GetCodigoExistente(cadena)) do
                   begin
                     Cadena:=IntToStr(StrToInt(cadena)+1);
                     Cadena := Copy('00000000000', 1, CDSStockCODIGO_STK.Size - Length(Cadena)) + Cadena;
//                     QVerificaCodigoExistente.Close;
//                     QVerificaCodigoExistente.ParamByName('codigo').Value:=Cadena;
//                     QVerificaCodigoExistente.OPen;

       //              if QVerificaCodigoExistente.IsEmpty Then
                     if not(DMMain_FD.GetCodigoExistente(cadena)) Then

                       BEGIN
                         ShowMessage('Segun el Rubro-SubRubro elegido se propone el codigo: ' + Cadena);
                         CDSStockCODIGO_STK.Value := Cadena;
                       END;
                   end;
            end;
          //*****************************************

        end;
    END
  ELSE
    result := False;
  DMMain_FD.CDSSubRubroFD.Close;
END;

FUNCTION TDatosStock.AsignarDeposito(dato: Integer): Boolean;
BEGIN
  QDeposito.Close;
  QDeposito.Params.ParamByName('Id').Value := Dato;
  QDeposito.Open;
  IF NOT (QDeposito.IsEmpty) THEN
    BEGIN
      result := True;
      CDSDepositoStkMUESTRADEPOSITO.Value := QDepositoNOMBRE.Value;
      CDSDepositoStkSUCURSAL.Value        := QDepositoSUCURSAL.Value;
    END
  ELSE
    result := False;
  QDeposito.Close;
END;

PROCEDURE TDatosStock.DataModuleDestroy(Sender: TObject);
BEGIN
  DatosStock := NIL;
END;

PROCEDURE TDatosStock.CDSDepositoStkCODIGO_DEPOSITOSetText(Sender: TField; CONST Text: STRING);
BEGIN
  if (Text<>'') and (Text<>#13) Then
    begin
      IF (CDSDepositoStk.State = dsBrowse) AND (CDSStock.State IN [dsInsert, dsEdit]) THEN
        CDSDepositoStk.Edit;
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Dato no Válido');
          CDSDepositoStk.Cancel;
        END;
    end;
END;

PROCEDURE TDatosStock.CDSDepositoStkRECARGOSetText(Sender: TField; CONST Text: STRING);
Var Aux:Real;
BEGIN
  if Text<>'' Then
    begin
      if (FormStock_2<>nil)  Then
        begin
          Aux:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
          Aux:=Aux+CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
        end;
    Sender.AsString := Text;
    CDSDepositoStkPRECIOVENTA.Value := (1+Sender.AsFloat * 0.01) * (Aux + CDSStockIMPUESTO_INTERNOS.AsFloat);
  end;
END;

procedure TDatosStock.CDSDepositoStkUBICACIONSetText(Sender: TField;
  const Text: string);
var text_ :String;
begin
  Text_:=Text;
  Text_:=Copy('000',1,Length(Text_))+Text_;
  Sender.AsString:=Text;
end;

PROCEDURE TDatosStock.CDSDepositoStkCalcFields(DataSet: TDataSet);
Var Aux:Real;
BEGIN
  if (FormStock_2<>nil) Then
    begin
      Aux:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      Aux:=Aux+CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
    end;
  CDSDepositoStkPRECIOVENTA.Value := Moneda3D('+',Mascara,Moneda3D('+',Mascara,(1 + (CDSDepositoStkRECARGO.AsFloat *0.01))) *
                                       Aux) + CDSStockIMPUESTO_INTERNOS.AsFloat;
  if Trunc(CDSStockCONTENIDO_COMPRA.AsFloat*100)<>0 then
    begin
      CDSDepositoStkCOMPRAINCIAL.Value:=CDSDepositoStkINICIAL.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
      CDSDepositoStkCOMPRAMEDIO.Value :=CDSDepositoStkMEDIO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
      CDSDepositoStkCOMPRAMINIMO.Value:=CDSDepositoStkMINIMO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
      CDSDepositoStkCOMPRAFISICO.Value:=CDSDepositoStkFISICO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
    end
  else
    if Trunc(CDSStockCONTENIDO_COMPRA.AsFloat*100)=0 then
      begin
        CDSDepositoStkCOMPRAINCIAL.Value:=CDSDepositoStkINICIAL.AsFloat;
        CDSDepositoStkCOMPRAMEDIO.Value :=CDSDepositoStkMEDIO.AsFloat;
        CDSDepositoStkCOMPRAMINIMO.Value:=CDSDepositoStkMINIMO.AsFloat;
        CDSDepositoStkCOMPRAFISICO.Value:=CDSDepositoStkFISICO.AsFloat;
      end


END;

PROCEDURE TDatosStock.CDSDepositoStkNewRecord(DataSet: TDataSet);
BEGIN
  CDSDepositoStkID_DEPOSITO.Value          := IBGId_depositoStk.IncrementFD(1);
  CDSDepositoStkCODIGO_STK.Value           := CDSStockCODIGO_STK.Value;
  CDSDepositoStkINICIAL.AsFloat            := 0;
  CDSDepositoStkMINIMO.AsFloat             := 0;
  CDSDepositoStkMEDIO.AsFloat              := 0;
  CDSDepositoStkFISICO.AsFloat             := 0;
  CDSDepositoStkRECARGO.AsFloat            := 0;
  CDSDepositoStkFUAPRECIOS.AsFloat         := Date;
  CDSDepositoStkUNIDADES.AsFloat           := 0;
  CDSDepositoStkAVISO_MINIMOSTOCK.AsString := 'N';

END;

function TDatosStock.Fact9(rango:integer):integer;
var Cod,aux: extended;
begin
  Cod :=  0;
  aux :=  0;
  while aux<rango do
    begin
      Cod :=  Cod + 9 * Power(10,aux);
      aux :=  aux + 1;
    end;
  result  :=  Round(cod);
end;

function TDatosStock.IdProduccion(Codigo: String): Integer;
var Q:TFdQuery;
begin
  Q:=TFDQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select max(s.id) from stock_produccion_cab s where s.codigo='+codigo;
  Q.Open;
  IF Q.Fields[0].AsString<>'' Then
    Result:=Q.Fields[0].Value
  else
    Result:=-1;
  Q.Close;
  FreeAndNil(q);
end;

function TDatosStock.SacaSufijo(cod:string):string;
var Num2,Len: integer; Cadena, pref: string;
begin
  if not TryStrToInt(Cod[length(cod)-1],Num2) then
    result  :=  SumaChar(Cod)
  else
    begin
      Num2:=0;
      pref:='';
      Len   :=  Length(cod);
      while (Len>2) and (not TryStrToInt(RightStr(Cod,Len),Num2)) do Len:=Len-1;
      if Num2<0 then                //si el ultimo caracter es un - evito que tome el numero negativo
        begin
          Num2  :=  Num2*-1;
          Len   :=  Len-1;
        end;
      if Len>2 then
        begin
          Num2  :=  Num2 + 1;

          if Num2>=Fact9(Len) then
            begin
              Len := Len+1;
              Num2 := 0;
            end;
        end
      else
        len  := 3;
      pref      :=  LeftStr(cod,Length(cod)-len);
      Cadena    :=  IntToStr(num2);
      while Length(Cadena)<len do Cadena  :=  '0' + Cadena;
  
      Result    :=  pref + Cadena;
    end;
end;

function TDatosStock.SumaChar(Str: string):string;
var Ch: Char; ChCod:integer; Aux:string;
begin
  Aux     :=  str;
  Ch      :=  Str[Length(Str)];
  ChCod   :=  Ord(Ch);
  ChCod   :=  ChCod +1;
  Aux[Length(Aux)]  :=  Chr(ChCod);
  Result  :=  Aux;
end;

PROCEDURE TDatosStock.CDSStockNewRecord(DataSet: TDataSet);
var Codigo: string;
BEGIN
  if (FormStock_2.CodigoSecuencial) and (Not(FormStock_2.CodigoAlfa)) Then
    begin
      QUltimoCodigoStk.Close;
      QUltimoCodigoStk.ParamByName('Prefijo').Value :=  '[0-9]{8}';
      QUltimoCodigoStk.Open;
      if QUltimoCodigoStk.Fields[0].AsString<>'' Then
        CDSStockCODIGO_STKSetText(CDSStockCODIGO_STK,IntToStr(QUltimoCodigoStk.Fields[0].AsInteger+1))
      else
        CDSStockCODIGO_STKSetText(CDSStockCODIGO_STK,'0');
      QUltimoCodigoStk.Close;
    end;
  if (FormStock_2.CodigoAlfa) Then
    begin
      FormStock_2.QUltimoCodigo2.Close;
      FormStock_2.QUltimoCodigo2.Open;
      if FormStock_2.QUltimoCodigo2.Fields[0].AsString<>'' Then
        Codigo  :=  FormStock_2.QUltimoCodigo2.Fields[0].AsString
      else
        Codigo  :=  '00000000';
      FormStock_2.QUltimoCodigo2.Close;

      CDSStockCODIGO_STK.AsString :=  SacaSufijo(codigo);
    end;
  CDSStockFECHA_ALTA.AsDateTime          := Date;
  CDSStockCONTROLASTOCK.Value            := 'S';
  CDSStockACTUALIZACOSTO.Value           := 'S';
  CDSStockMODO_GRAVAMEN.Value            := 'G';
  CDSStockIMPRIMIR_LSTPRECIOS.Value      := 'S';
  CDSStockCON_IMP_INT.Value              := 'N';
  CDSStockPRODUCCIONDIRECTA.Value        := 'N';
  CDSStockDEPRODUCCION.Value             := 'N';
  CDSStockCONTROL_SERIE.Value            := 'N';
  CDSStockARTICULO_VARIABLE.Value        := 'X';
  CDSStockPUBLICAR_WEB.Value             := 'N';
  CDSStockARTICULO_VARIABLE.Value        := 'N';

  CDSStockGARANTIAOFICIAL.Value          := 'N';
  CDSStockCONTROL_TRAZABILIDAD.Value     := 'N';
  CDSStockIVA_MODIFICADO.Value           := 'N';
  CDSStockUSA_CODIGOBARRA.Value          := 'S';
  CDSStockTASA_MANUFACTURA.Value         := 'N';
  CDSStockPLU.Value                      := '';
  CDSStockACOPIABLE.Value                := 'S';
  CDSStockMODO_IVA.Value                 := 'A';
  CDSStockCLASE_ARTICULO.Value           := 3;
  CDSStockCOSTO_EXENTO_STK.AsFloat       := 0;
  CDSStockCOSTO_GRAVADO_STK.AsFloat      := 0;
  CDSStockCOSTO_TOTAL_STK.AsFloat        := 0;
  CDSStockCOSTO_EXENTO_P.AsFloat         := 0;
  CDSStockCOSTO_GRAVADO_P.AsFloat        := 0;
  CDSStockCOSTO_TOTAL_P.AsFloat          := 0;
  CDSStockSIGLAS.Value                   := '';
  CDSStockDISPONIBLE.Value               := 'S';
  CDSStockRUBRO_GASTO.Value              := '***';
  CDSStockRUBRO_CTA_GASTO.Value          := '******';
  CDSStockFIJACION_PRECIO_GRAVADO.AsFloat:= 0;
  CDSStockFIJACION_PRECIO_EXENTO.AsFloat := 0;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat  := 0;
  CDSStockFUAP.AsDateTime                := Date;
  CDSStockGRAVADO_IB.Value               := 'S';
  CDSStockPERCIBE_IVA.Value              := 'N';
  CDSStockID_TASA_PERCEP_IVA.Value       := -1;
  CDSStockAPLICA_TASA_DIF.Value          := 'N';

  CDSStockACTUALIZACOSTO.Value           := 'S';
  CDSStockEDITAPRECIO.Value              := 'S';
  CDSStockEDITADETALLE.Value             := 'S';
  CDSStockCONTENIDO_COMPRA.AsFloat       := 1;
  CDSStockCOSTO_GRAVADO_SOMBRA.AsFloat   := 0;
  CDSStockCOSTO_EXENTO_SOMBRA.AsFloat    := 0;
  CDSStockFECHA_ACT_SOMBRA.Clear;
  CDSStockMODO_GRAVAMEN.Value            := FormStock_2.GravamenPorDefecto;
  CDSStockTASA_IVA.Value                 := FormStock_2.TIvaPorDefecto;
  CDSStockSOBRETASA_IVA.Value            := FormStock_2.STIvaPorDefecto;
  CDSStockUNIDAD.Value                   := IfThen( FormStock_2.dbcUnidad.ListSource.DataSet.Locate('id',FormStock_2.UnidadesPorDefecto,[]),
                                  {THEN}            FormStock_2.dbcUnidad.ListSource.DataSet.FieldByName('siglas').AsString,
                                  {ELSE}            'UNI');
  CDSStockUNIDAD_COMPRA.Value            := IfThen( FormStock_2.dbcUnidadesCompra.ListSource.DataSet.Locate('id',FormStock_2.UnidadesPorDefecto,[]),
                                                    FormStock_2.dbcUnidadesCompra.ListSource.DataSet.FieldByName('siglas').AsString,
                                                    'UNI');
  CDSStockGRAVADO_IB.Value               := 'S';
  CDSStockTASA_IB.Value                  := 1;
  CDSStockPRESENTACION_CANTIDAD.AsFloat  := 1;
  CDSStockPRESENTACION_UNIDAD.Value      := IfThen( FormStock_2.dbcPRESENTACION_UNIDAD.ListSource.DataSet.Locate('id',FormStock_2.UnidadesPorDefecto,[]),
                                                    FormStock_2.dbcPRESENTACION_UNIDAD.ListSource.DataSet.FieldByName('siglas').AsString,
                                                    'UNI');
  CDSStockPRESENTACION_TOLERANCIA.AsFloat:= 0;
  CDSStockCOMANDA.Value                  := 'N';
  CDSStockCOSTO_IVA.AsFloat              := 0;
  CDSStockFIJACION_PRECIO_IVA.AsFloat    := 0;
  CDSStockGTIA_MESES.Value               := 6;
  CDSStockPRESENTACION_2_CANT.Value      := 1;
  CDSStockPLU_SECCION.AsString           := '';

  CDSStockCIKO_TIPO.Value                := 0;
  CDSStockLARGO_1.Value                  := 0;
  CDSStockLARGO_2.Value                  := 0;
  CDSStockLARGO_3.Value                  := 0;
  CDSStockROTURA_1.Value                 := 0;
  CDSStockROTURA_2.Value                 := 0;
  CDSStockCIMA.Value                     := 0;
  CDSStockBASE.Value                     := 0;
  CDSStockVOLUMEN.Value                  := 0;
  CDSStockPESO_CALCULADO.Value           := 0;
  CDSStockMODO_IVA.Value                 := 'A';

  CDSStockPESO.Value                     := 0;
  CDSStockDIAMETRO_OLLA.Value            := 0;
  CDSStockALTO_ACC.Value                 := 0;
  CDSStockADICIONAL_SOBRECOSTO.Value     := 0;
  CDSStockCODIGO_ART_VARIABLE.AsString   :='';

  CDSStockDIAS_VENCIMIENTO.Value         := 0;


  if FormStock_2.PrecioArticulo then
    CDSStockEDITAPRECIO.AsString:='S'
  else
    CDSStockEDITAPRECIO.Value:='N';

  if FormStock_2.DetalleArticulo then
    CDSStockEDITADETALLE.Value:='S'
  else
    CDSStockEDITADETALLE.Value:='N';

  if FileExists(ExtractFilePath(ParamStr(0))+'UltimoItem.XML') then
    begin

      if CDSDatosXML.FieldByName('DETALLE_STK')<>nil Then
        CDSStockDETALLE_STK.Value           := CDSDatosXML.FieldByName('DETALLE_STK').AsString;

      if CDSDatosXML.FieldByName('DETALLE_STK_ADICIONAL')<>nil Then
        CDSStockDETALLE_STK_ADICIONAL.Value := CDSDatosXML.FieldByName('DETALLE_STK_ADICIONAL').AsString;

      if (CDSDatosXML.FieldByName('RUBRO_STK')<>nil) and (CDSDatosXML.FieldByName('RUBRO_STK').AsString<>'') Then
        CDSStockRUBRO_STKSetText(CDSStockRUBRO_STK,CDSDatosXML.FieldByName('RUBRO_STK').AsString);

      if (CDSDatosXML.FieldByName('subRUBRO_STK')<>nil) and (CDSDatosXML.FieldByName('subRUBRO_STK').Value<>'') Then
        CDSStockSUBRUBRO_STKSetText(CDSStocksubRUBRO_STK,CDSDatosXML.FieldByName('subRUBRO_STK').AsString);

       if (CDSDatosXML.FieldByName('Unidad')<>nil) and (CDSDatosXML.FieldByName('Unidad').Value<>'') Then
         CDSStockUNIDAD.Value:=CDSDatosXML.FieldByName('Unidad').Value;

       if (CDSDatosXML.FieldByName('Unidad_Compra')<>nil) and (CDSDatosXML.FieldByName('Unidad_Compra').Value<>'') Then
         CDSStockUNIDAD_COMPRA.Value:=CDSDatosXML.FieldByName('Unidad_Compra').Value;

       if (CDSDatosXML.FieldByName('ActualizaCosto')<>nil) and (CDSDatosXML.FieldByName('ActualizaCosto').Value<>'') Then
         if not(VarIsNull(CDSDatosXML.FieldByName('ActualizaCosto').Value)) Then
            CDSStockACTUALIZACOSTO.Value:=CDSDatosXML.FieldByName('ActualizaCosto').Value;

       if (CDSDatosXML.FieldByName('usa_codigobarra')<>nil) and (CDSDatosXML.FieldByName('usa_codigobarra').Value<>'') Then
         if not(VarIsNull(CDSDatosXML.FieldByName('Usa_codigobarra').Value)) Then
           CDSStockUSA_CODIGOBARRA.Value:=CDSDatosXML.FieldByName('Usa_codigobarra').Value;

    end;

  CDSStockMONEDA.Value        := FormStock_2.MonedaStock;
  CDSStockREEMPLAZO_STK.Value := '';

  IF FormStock_2.dbcGravamen.ItemIndex IN [3,4] THEN
    BEGIN
      FormStock_2.dbeImpuesto.Enabled := True;
      FormStock_2.dbeImpuesto.Color   := clWindow;
    END
  ELSE
    BEGIN
      FormStock_2.dbeImpuesto.Enabled := False;
      FormStock_2.dbeImpuesto.Color   := clBtnFace;
    END;

//      if dbcGravamen.Value[1] in ['M','Y'] then
  IF FormStock_2.dbcGravamen.ItemIndex IN [2,4] THEN
    begin
      FormStock_2.dbeCostoNoGravado.Enabled     := True;
      FormStock_2.dbeCostoNoGravado.Color       := clWindow;
      FormStock_2.dbeCostoGravado.Enabled       := True;
      FormStock_2.dbeCostoGravado.Color         := clWindow;

      FormStock_2.dbeCostoGravadoSombra.Color   := clWindow;
      FormStock_2.dbeCostoGravadoSombra.Enabled := True;
      FormStock_2.dbeCostoExentoSombra.Color    := clWindow;
      FormStock_2.dbeCostoExentoSombra.Enabled  := True;

      FormStock_2.dbeFPnoGravado.Enabled        := True;
      FormStock_2.dbeFPnoGravado.Color          := clWindow;
      FormStock_2.dbeFPGravado.Enabled          := True;
      FormStock_2.dbeFPGravado.Color            := clWindow;
    end;

//      if dbcGravamen.Value[1] in ['E'] then
    IF FormStock_2.dbcGravamen.ItemIndex IN [1] THEN
      begin
        FormStock_2.dbeCostoNoGravado.Enabled     := True;
        FormStock_2.dbeCostoNoGravado.Color       := clWindow;
        FormStock_2.dbeCostoGravado.Enabled       := False;
        FormStock_2.dbeCostoGravado.Color         := clBtnFace;

        FormStock_2.dbeCostoGravadoSombra.Color   := clBtnFace;
        FormStock_2.dbeCostoGravadoSombra.Enabled := False;
        FormStock_2.dbeCostoExentoSombra.Color    := clWindow;
        FormStock_2.dbeCostoExentoSombra.Enabled  := True;

        DatosStock.CDSStockCOSTO_GRAVADO_STK.AsFloat      := 0;
        DatosStock.CDSStockFIJACION_PRECIO_GRAVADO.AsFloat:= 0;
        FormStock_2.dbeFPnoGravado.Enabled                := True;
        FormStock_2.dbeFPnoGravado.Color                  := clWindow;
        FormStock_2.dbeFPGravado.Enabled                  := False;
        FormStock_2.dbeFPGravado.Color                    := clBtnFace;
      end;
//      if dbcGravamen.Value[1] in ['G','I'] then
    IF FormStock_2.dbcGravamen.ItemIndex IN [0,3] THEN
      begin
        FormStock_2.dbeCostoNoGravado.Enabled     := False;
        FormStock_2.dbeCostoNoGravado.Color       := clBtnFace;
        FormStock_2.dbeCostoGravado.Enabled       := True;
        FormStock_2.dbeCostoGravado.Color         := clWindow;

        FormStock_2.dbeCostoGravadoSombra.Color   := clWindow;
        FormStock_2.dbeCostoGravadoSombra.Enabled := True;
        FormStock_2.dbeCostoExentoSombra.Color    := clBtnFace;
        FormStock_2.dbeCostoExentoSombra.Enabled  := False;

        FormStock_2.dbeFPnoGravado.Enabled        := False;
        FormStock_2.dbeFPnoGravado.Color          := clBtnFace;
        FormStock_2.dbeFPGravado.Enabled          := True;
        FormStock_2.dbeFPGravado.Color            := clWindow;
      end;
 // FormStock_2.dbeDescripcion.SetFocus;
END;

procedure TDatosStock.CDSStockPLUSetText(Sender: TField; const Text: string);
begin
 if (Text<>'') and (Text<>#13) Then
  begin
    Sender.AsString:=Copy('00000', 1, 5 - Length(Text)) + Text;
    //verifico si existe....
    QVerificaPLU.Close;
    QVerificaPLU.ParamByName('codigo').Value:=Sender.AsString;
    QVerificaPLU.Open;
    if Not(QVerificaPLU.IsEmpty) Then
      begin
        ShowMessage('Codigo en Uso.... Verifique y vuelva a intentar...');
        Sender.AsString:='';
      end;
  end;
end;

procedure TDatosStock.CDSStockPLU_2SetText(Sender: TField; const Text: string);
begin
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Copy('00000', 1, 5 - Length(Text)) + Text;
      //verifico si existe....
      QVerificaPLU.Close;
      QVerificaPLU.ParamByName('codigo').Value:=Sender.AsString;
      QVerificaPLU.Open;
      if Not(QVerificaPLU.IsEmpty) Then
        begin
          ShowMessage('Codigo en Uso.... Verifique y vuelva a intentar...');
          Sender.AsString:='';
        end;
    end;
end;

procedure TDatosStock.CDSStockPostError(DataSet: TDataSet; E: EDatabaseError;
  var Action: TDataAction);
begin
  ShowMessage(e.Message);
end;

procedure TDatosStock.CDSStockROTURA_1SetText(Sender: TField;
  const Text: string);
begin
   if StrToFloat(Text)>50000 then
    Sender.AsString:='50000'
  else
    Sender.AsString:=Text;
end;

procedure TDatosStock.CDSStockROTURA_2SetText(Sender: TField;
  const Text: string);
begin
  if StrToFloat(Text)>50000 then
    Sender.AsString:='50000'
  else
    Sender.AsString:=Text;
end;

procedure TDatosStock.CDSStockRUBRO_STKSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      if Not(FormStock_2.CodigoAlfa) then
        Sender.AsString:=Copy('000000',1,3-length(Text))+Text
      else
        Sender.AsString:=Text;
      if Not(AsignarRubro(Sender.AsString)) then
        Sender.AsString:='';
    end;
end;

procedure TDatosStock.CDSStockSOBRETASA_IVAChange(Sender: TField);
begin
  CDSStockMUESTRASOBRETASAPROCENTAJE.AsFloat:=FormStock_2.dbcSobreTasa.ListSource.DataSet.FieldByName('tasa').Value;
end;

procedure TDatosStock.CDSStockSUBRUBRO_STKSetText(Sender: TField;
  const Text: string);
var
  CodAux: string;
begin
  if (Text<>'') and (Text<>#13) Then
    begin
      if Not(FormStock_2.CodigoAlfa) then
        CodAux := Copy('00000', 1, 3 - Length(Text)) + Text
      else
        CodAux := Text;
      IF (AsignarSubRubro(CodAux)) THEN
        Sender.AsString :=  CodAux
      ELSE
        ShowMessage('Codigo no Válido');
    end
  ELSE
    BEGIN
      Sender.Clear;
      CDSStockSUBRUBRO_STK.Clear;
      CDSStockMUESTRARUBRO.Clear;
      CDSStockMUESTRASUBRUBRO.Clear;
    END;

end;

procedure TDatosStock.CDSStockTASA_IVAChange(Sender: TField);
begin
  CDSStockMUESTRATASAPORCENTAJE.AsFloat := FormStock_2.dbcTasa.ListSource.DataSet.FieldByName('tasa').Value;
  CDSStockCOSTO_IVA.ASFloat             := RoundTo(CDSStockCOSTO_GRAVADO_STK.AsFloat * CDSStockMUESTRATASAPORCENTAJE.AsFloat * 0.01,-3);
  CDSStockFIJACION_PRECIO_IVA.ASFloat   := RoundTo(CDSStockFIJACION_PRECIO_GRAVADO.AsFloat * CDSStockMUESTRATASAPORCENTAJE.AsFloat * 0.01,-3);

  CDSStockCOSTO_FINAL.AsFloat           := CDSStockCOSTO_GRAVADO_STK.ASFloat + CDSStockCOSTO_IVA.ASFloat;
  CDSStockFIJACION_PRECIO_FINAL.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.ASFloat + CDSStockFIJACION_PRECIO_IVA.AsFloat;

  CDSStockCOSTO_TOTAL_STK.AsFloat       := CDSStockCOSTO_EXENTO_STK.AsFloat + CDSStockCOSTO_GRAVADO_STK.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;

end;

procedure TDatosStock.CDSProvStockCODIGO_PROVEEDORSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=copy('000000',1,6-length(Text))+Text;
      QProveedores.Close;
      QProveedores.ParamByName('Codigo').Value:= Sender.AsString;
      QProveedores.Open;
      if Not(QProveedores.IsEmpty) Then
        begin
          if CDSProvStock.State=dsBrowse Then
            CDSProvStock.Edit;
          CDSProvStockCODIGO_PROVEEDOR.Value:=QProveedoresCODIGO.Value;
          CDSProvStockMUESTRAPROVEEDOR.Value:=QProveedoresNOMBRE.Value;
        //  FormStock_2.dbgProveedores.SelectedIndex:=1;
        end
      else
        begin
          ShowMessage('Dato No Valido');
          CDSProvStock.Cancel;
        end;
    end;
  QProveedores.Close;
end;

procedure TDatosStock.CDSProvStockNewRecord(DataSet: TDataSet);
begin
  CDSProvStockID_PROVEESTOCK.Value  := ibgId_ProStock.IncrementFD(1);
  CDSProvStockCODIGO_STK.Value      := CDSStockCODIGO_STK.Value;
  CDSProvStockCOSTO_BRUTO.AsFloat   := 0;
  CDSProvStockDESCUENTO.AsFloat     := 0;
  CDSProvStockCOSTO_NETO.AsFloat    := 0;
  CDSProvStockULTIMA_COMPRA.AsFloat := Date;
  CDSProvStockPORDEFECTO.Value      := 'N';
  CDSProvStockRANKING.Value         := 0;
end;

procedure TDatosStock.CDSDepositoStkPRECIOVENTASetText(Sender: TField;
  const Text: String);
var Aux:Real;
begin

//  if FormStock_2.chbConIva.Checked=False Then
//   wwCDSStockFIJACION_PRECIO_GRAVADO.Value:=Sender.AsFloat
//  else
//   wwCDSStockFIJACION_PRECIO_GRAVADO.Value:=
//   Sender.AsFloat/(1+(wwCDSStockMUESTRATASAPORCENTAJE.Value*0.01));


   if (FormStock_2<>nil)  Then
      begin
        Aux:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
        Aux:=Aux+CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      end;
  Sender.AsString:=Text;
  CDSDepositoStkRECARGO.AsFloat:= ((Sender.AsFloat-Aux)/Aux)*100;
end;

procedure TDatosStock.CDSStockBeforePost(DataSet: TDataSet);
var i:Integer;
begin
  if (CDSStockFIJACION_PRECIO_GRAVADO.AsFloat<=0) and (CDSStockCOSTO_GRAVADO_STK.AsFloat>0) Then
    begin
      CDSStockFIJACION_PRECIO_GRAVADO.AsFloat:= CDSStockCOSTO_GRAVADO_STK.AsFloat;
      CDSStockFIJACION_PRECIO_IVA.AsFloat    := CDSStockCOSTO_IVA.ASFloat;
      CDSStockFIJACION_PRECIO_TOTAL.AsFloat  := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat +
                                                CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
    end
  else
    if (CDSStockFIJACION_PRECIO_EXENTO.AsFloat<=0) and (CDSStockCOSTO_EXENTO_STK.AsFloat>0) Then
      begin
        CDSStockFIJACION_PRECIO_EXENTO.AsFloat:= CDSStockCOSTO_EXENTO_STK.AsFloat;
        CDSStockFIJACION_PRECIO_TOTAL.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat +
                                                 CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      end;

 // CDSStockFIJACION_PRECIO_TOTAL.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat +
 //                                          CDSStockFIJACION_PRECIO_EXENTO.AsFloat +
 //                                          CDSStockFIJACION_PRECIO_IVA.AsFloat;
 // CDSStockCOSTO_TOTAL_STK.AsFloat       := CDSStockCOSTO_GRAVADO_STK.AsFloat +
 //                                          CDSStockCOSTO_EXENTO_STK.AsFloat +
 //                                          CDSStockCOSTO_IVA.AsFloat;

   //  *****  controla los campos requeridos **************
//  For i:=0 to CDSStock.FieldCount-1 do
//    begin
//      if CDSStock.Fields[i].Required Then
//        ShowMessage(CDSStock.Fields[i].FieldName+' : '+
//                    CDSStock.Fields[i].AsString);
//    end;
  // *****************************************************
end;

procedure TDatosStock.CDSStockCalcFields(DataSet: TDataSet);
begin
  if CDSStock.IsEmpty=False then
    begin
      try
        CDSStockMUESTRACOSTOCONIVA.AsFloat   := CDSStockCOSTO_FINAL.AsFloat + CDSStockCOSTO_EXENTO_STK.AsFloat;
        CDSStockMUESTRAFIJACIONCONIVA.AsFloat:= CDSStockFIJACION_PRECIO_FINAL.AsFloat + CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      except
        CDSStockMUESTRAFIJACIONCONIVA.AsFloat:= 0;
      end;
    end;
end;

procedure TDatosStock.CDSStockCLASE_ARTICULOChange(Sender: TField);
begin
//ERIK
   if Sender.AsInteger=9 then
    try
     CDSStockUNIDAD.AsString := 'DIA';
    except

    end;
end;

procedure TDatosStock.CDSStockCODIGO_PRECIOSetText(Sender: TField;
  const Text: string);
begin
  if CDSStockID_TABLAPRECIOS.AsString='' Then
    Raise  Exception.Create('No se indico la tabla de precios....');

  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
       if CDSStockID_TABLAPRECIOS.AsString<>'' Then
         begin
          if Not(AsignarCodigoTablaPrecio( CDSStockID_TABLAPRECIOS.Value,Sender.AsInteger)) Then
            begin
              ShowMessage('Dato no Valido....');
              Sender.Clear;
            end;
         end;
    end;
end;

procedure TDatosStock.CDSStockCODIGO_STKSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) Then
  begin
     if DMMain_FD.JustificaCodigo='D' Then
        Sender.AsString:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text)) + Text
      else
        if DMMain_FD.JustificaCodigo='I' Then
          Sender.AsString:=Text+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(Text));

    //verifico si existe....
    if (DMMain_FD.GetCodigoExistente(Sender.AsString)) then
      begin
        ShowMessage('Codigo en Uso.... Verifique y vuelva a intentar...');
        CDSStockCODIGO_STK.Clear;
      end;
    CDSStockREEMPLAZO_STK.Value:=CDSStockCODIGO_STK.Value;
  end;
end;


procedure TDatosStock.CDSStockCOSTO_EXENTO_SOMBRASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockFECHA_ACT_SOMBRA.AsDateTime  := Date;
end;

procedure TDatosStock.CDSStockCOSTO_EXENTO_STKSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockFIJACION_PRECIO_EXENTO.AsFloat:=Sender.AsFloat;

  CDSStockCOSTO_TOTAL_STK.AsFloat       := CDSStockCOSTO_EXENTO_STK.AsFloat + CDSStockCOSTO_GRAVADO_STK.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
end;

procedure TDatosStock.CDSStockCOSTO_FINALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockCOSTO_GRAVADO_STK.AsFloat       := RoundTo(Sender.ASFloat / (1 +CDSStockMUESTRATASAPORCENTAJE.AsFloat *0.01),-3);
  CDSStockCOSTO_IVA.AsFloat               := CDSStockCOSTO_FINAL.AsFloat - CDSStockCOSTO_GRAVADO_STK.AsFloat;
  CDSStockCOSTO_TOTAL_STK.AsFloat         := CDSStockCOSTO_EXENTO_STK.AsFloat + CDSStockCOSTO_GRAVADO_STK.AsFloat;

  CDSStockFIJACION_PRECIO_GRAVADO.AsFloat := CDSStockCOSTO_GRAVADO_STK.AsFloat;
  CDSStockFIJACION_PRECIO_EXENTO.AsFloat  := CDSStockCOSTO_EXENTO_STK.AsFloat;
  CDSStockFIJACION_PRECIO_IVA.AsFloat     := CDSStockCOSTO_IVA.AsFloat;
  CDSStockFIJACION_PRECIO_FINAL.AsFloat   := CDSStockCOSTO_FINAL.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat   := CDSStockCOSTO_TOTAL_STK.AsFloat;

end;

procedure TDatosStock.CDSStockCOSTO_GRAVADO_SOMBRASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockCOSTO_GRAVADO_SOMBRA.AsFloat := Sender.AsFloat;
  CDSStockFECHA_ACT_SOMBRA.AsDateTime  := Date;
 end;

procedure TDatosStock.CDSStockCOSTO_GRAVADO_STKSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockCOSTO_GRAVADO_STK.AsFloat       := Sender.AsFloat;
  CDSStockCOSTO_IVA.AsFloat               := RoundTo(Sender.AsFloat * (CDSStockMUESTRATASAPORCENTAJE.AsFloat * 0.01),-3);
  CDSStockCOSTO_FINAL.AsFloat             := CDSStockCOSTO_GRAVADO_STK.AsFloat + CDSStockCOSTO_IVA.AsFloat;
  CDSStockCOSTO_TOTAL_STK.AsFloat         := CDSStockCOSTO_EXENTO_STK.AsFloat + CDSStockCOSTO_GRAVADO_STK.AsFloat;

  CDSStockFIJACION_PRECIO_GRAVADO.AsFloat := CDSStockCOSTO_GRAVADO_STK.AsFloat;
  CDSStockFIJACION_PRECIO_IVA.AsFloat     := CDSStockCOSTO_IVA.AsFloat;
  CDSStockFIJACION_PRECIO_FINAL.AsFloat   := CDSStockCOSTO_FINAL.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat   := CDSStockCOSTO_TOTAL_STK.AsFloat;

end;

procedure TDatosStock.CDSStockDETALLE_STKSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if CDSStock.state in [dsInsert] then
    begin
      CDSStockDETALLE_STK_ADICIONAL.value := Trim(Sender.AsString);
      CDSStockDETALLE_CORTO.value         := Copy(Trim(Sender.AsString),1,18);
    end;
end;

procedure TDatosStock.CDSStockFIJACION_PRECIO_EXENTOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.ASFloat + CDSStockFIJACION_PRECIO_FINAL.AsFloat;

  if (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000) > Trunc(CDSStockFIJACION_PRECIO_TOTAL.AsFloat*1000))
     or (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000)=0) then
    begin
      CDSStockCOSTO_GRAVADO_STK.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSStockCOSTO_EXENTO_STK.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      CDSStockCOSTO_IVA.AsFloat        := CDSStockFIJACION_PRECIO_IVA.AsFloat;
      CDSStockCOSTO_FINAL.AsFloat      := CDSStockFIJACION_PRECIO_FINAL.AsFloat;
      CDSStockCOSTO_TOTAL_STK.AsFloat  := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
    end;
end;

procedure TDatosStock.CDSStockFIJACION_PRECIO_FINALSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockFIJACION_PRECIO_GRAVADO.AsFloat := RoundTo(Sender.ASFloat / (1 +CDSStockMUESTRATASAPORCENTAJE.AsFloat *0.01),-3);
  CDSStockFIJACION_PRECIO_IVA.AsFloat     := CDSStockFIJACION_PRECIO_FINAL.AsFloat - CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat   := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;

  if (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000) > Trunc(CDSStockFIJACION_PRECIO_TOTAL.AsFloat*1000))
     or (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000)=0) then
    begin
      CDSStockCOSTO_GRAVADO_STK.AsFloat   := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSStockCOSTO_EXENTO_STK.AsFloat    := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      CDSStockCOSTO_IVA.AsFloat           := CDSStockFIJACION_PRECIO_IVA.AsFloat;
      CDSStockCOSTO_FINAL.AsFloat         := CDSStockFIJACION_PRECIO_FINAL.AsFloat;
      CDSStockCOSTO_TOTAL_STK.AsFloat     := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
    end;
end;

procedure TDatosStock.CDSStockFIJACION_PRECIO_GRAVADOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSStockFIJACION_PRECIO_GRAVADO.AsFloat := Sender.AsFloat;
  CDSStockFIJACION_PRECIO_IVA.AsFloat     := RoundTo(Sender.AsFloat * (CDSStockMUESTRATASAPORCENTAJE.AsFloat * 0.01),-3);
  CDSStockFIJACION_PRECIO_FINAL.AsFloat   := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat + CDSStockFIJACION_PRECIO_IVA.AsFloat;
  CDSStockFIJACION_PRECIO_TOTAL.AsFloat   := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;

  if (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000) > Trunc(CDSStockFIJACION_PRECIO_TOTAL.AsFloat*1000))
     or (Trunc(CDSStockCOSTO_TOTAL_STK.AsFloat*1000)=0) then
    begin
      CDSStockCOSTO_GRAVADO_STK.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSStockCOSTO_EXENTO_STK.AsFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      CDSStockCOSTO_IVA.AsFloat         := CDSStockFIJACION_PRECIO_IVA.AsFloat;
      CDSStockCOSTO_FINAL.AsFloat       := CDSStockFIJACION_PRECIO_FINAL.AsFloat;
      CDSStockCOSTO_TOTAL_STK.AsFloat   := CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
    end;
end;

//////Chat GPT //////////////////////////////////////////////////////////////////////////////////////////////
procedure TDatosStock.CDSStockFIJACION_PRECIO_TOTALChange(Sender: TField);
var Precio, Precio2, CostoGravado, CostoExento, NuevoRecargo: Extended;
begin
  CDSListaArt.First;
  while not CDSListaArt.Eof do
    begin
      if CDSListaArt.State = dsBrowse then
        CDSListaArt.Edit;
       // Actualiza costos y tasa de IVA
      CDSListaArtCOSTO_GRAVADO.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSListaArtCOSTO_EXENTO.AsFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
      CDSListaArtCOSTO_TOTAL.AsFloat   := CDSListaArtCOSTO_GRAVADO.AsFloat + CDSListaArtCOSTO_EXENTO.AsFloat;
      CDSListaArtIVA_TASA.AsFloat      := CDSStockMUESTRATASAPORCENTAJE.AsFloat;

      Precio := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01), -3);

      if (DMMain_FD.ActualizaPrecioVta) or (CDSListaArtMUESTRAACTUALIZAPOREXCEPCION.Value = 'S') then
        begin //  CASO 1: Actualiza el precio según el nuevo costo
          CostoGravado := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01);
          CostoExento  := CDSListaArtCOSTO_EXENTO.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01);

          CDSListaArtPRECIO_GRAVADO.AsFloat := RoundTo(CostoGravado, -3);

          if CDSStockMODO_GRAVAMEN.AsString[1] in ['M', 'Y', 'I'] then
            CDSListaArtPRECIO_EXENTO.AsFloat := RoundTo(CDSListaArtCOSTO_EXENTO.AsFloat, -3)
          else
            CDSListaArtPRECIO_EXENTO.AsFloat := RoundTo(CostoExento, -3);

          CDSListaArtIVA_IMPORTE.AsFloat := Precio - CDSListaArtPRECIO_GRAVADO.AsFloat;
          CDSListaArtPRECIO.AsFloat      := CDSListaArtPRECIO_GRAVADO.AsFloat +
                                            CDSListaArtPRECIO_EXENTO.AsFloat +
                                            CDSListaArtIVA_IMPORTE.AsFloat;

          // Subdetalles
          CDSListaArtSubDet.First;
          CDSListaArtSubDetPRECIO.OnSetText := nil;
          while not CDSListaArtSubDet.Eof do
            begin
              CDSListaArtSubDet.Edit;
              CDSListaArtSubDetCOSTO_GRAVADO.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetCOSTO_EXENTO.AsFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
              CDSListaArtSubDetCOSTO_TOTAL.AsFloat   := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat + CDSListaArtSubDetCOSTO_EXENTO.AsFloat;
              CDSListaArtSubDetIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.AsFloat;

              Precio2 := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01), -4);
              CDSListaArtSubDetPRECIO_GRAVADO.AsFloat := RoundTo(CDSListaArtSubDetCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01), -4);

              if CDSStockMODO_GRAVAMEN.AsString[1] in ['M', 'Y', 'I'] then
                CDSListaArtSubDetPRECIO_EXENTO.AsFloat := RoundTo(CDSListaArtSubDetCOSTO_EXENTO.AsFloat, -4)
              else
                CDSListaArtSubDetPRECIO_EXENTO.AsFloat := RoundTo(CDSListaArtSubDetCOSTO_EXENTO.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01), -4);

              CDSListaArtSubDetIVA_IMPORTE.AsFloat := Precio2 - CDSListaArtSubDetPRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetPRECIO.AsFloat     := CDSListaArtSubDetPRECIO_GRAVADO.AsFloat +
                                                     CDSListaArtSubDetPRECIO_EXENTO.AsFloat +
                                                     CDSListaArtSubDetIVA_IMPORTE.AsFloat;

              CDSListaArtSubDet.Next;
            end;
            CDSListaArtSubDetPRECIO.OnSetText := CDSListaArtSubDetPRECIOSetText;
        end
      else
        begin  //  CASO 2: Mantiene el precio, ajusta el recargo
          Precio := CDSListaArtPRECIO.Value;

          if CDSListaArtCOSTO_GRAVADO.AsFloat > 0 then
            begin
              // Recalcula recargo para mantener el precio
              NuevoRecargo := ((CDSListaArtPRECIO_GRAVADO.AsFloat - CDSListaArtCOSTO_GRAVADO.AsFloat) / CDSListaArtCOSTO_GRAVADO.AsFloat) * 100;
              CDSListaArtRECARGO.AsFloat := NuevoRecargo;
            end;

          if CDSStockMODO_GRAVAMEN.AsString[1] in ['M', 'Y', 'I'] then
            CDSListaArtPRECIO_EXENTO.AsFloat := RoundTo(CDSListaArtCOSTO_EXENTO.AsFloat, -3)
          else
            CDSListaArtPRECIO_EXENTO.AsFloat := RoundTo(CostoExento, -3);

          CDSListaArtIVA_IMPORTE.AsFloat := Precio - CDSListaArtPRECIO_GRAVADO.AsFloat;

          // Subdetalles
          CDSListaArtSubDet.First;
          CDSListaArtSubDetPRECIO.OnSetText := nil;
          while not CDSListaArtSubDet.Eof do
            begin
              CDSListaArtSubDet.Edit;
              CDSListaArtSubDetCOSTO_GRAVADO.AsFloat := CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetCOSTO_EXENTO.AsFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
              CDSListaArtSubDetCOSTO_TOTAL.AsFloat   := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat + CDSListaArtSubDetCOSTO_EXENTO.AsFloat;
              CDSListaArtSubDetIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.AsFloat;

              if CDSListaArtSubDetCOSTO_GRAVADO.AsFloat > 0 then
              begin
                // Recalcula recargo en subdetalles
                NuevoRecargo := ((CDSListaArtSubDetPRECIO_GRAVADO.Value - CDSListaArtSubDetCOSTO_GRAVADO.Value) / CDSListaArtSubDetCOSTO_GRAVADO.Value) * 100;
                CDSListaArtSubDetRECARGO.AsFloat := NuevoRecargo;
              end;

              CDSListaArtSubDet.Next;
            end;
          CDSListaArtSubDetPRECIO.OnSetText := CDSListaArtSubDetPRECIOSetText;
        end;
      CDSListaArt.Next;
    end;
end;


///////////////////////////////////////////////////////////////////////////////////////////////////


{

procedure TDatosStock.CDSStockFIJACION_PRECIO_TOTALChange(Sender: TField);
var Precio,Precio2,CostoGravado,CostoExento:Extended;
begin
  CDSListaArt.First;
  while Not(CDSListaArt.Eof) do
    begin
      if CDSListaArt.State=dsBrowse then
        CDSListaArt.Edit;
      CDSListaArtCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSListaArtCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.ASFloat;
      CDSListaArtCOSTO_TOTAL.ASFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSListaArtIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.ASFloat;

      Precio:= RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * ( 1 + CDSListaArtRECARGO.ASFloat * 0.01),-3);

      if ( DMMain_FD.ActualizaPrecioVta) or (CDSListaArtMUESTRAACTUALIZAPOREXCEPCION.Value='S') then // si actualiza precio de venta cuando cambia el costo
        begin
          CostoGravado                      := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01);
          CostoExento                       := CDSListaArtCOSTO_EXENTO.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01);
          CDSListaArtPRECIO_GRAVADO.ASFloat := RoundTo(CostoGravado,-3);
          // si es que tiene impuesto internos esto pasan como estan... sin recargo
          if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
            CDSListaArtPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtCOSTO_EXENTO.AsFloat ,-3)
          else
            CDSListaArtPRECIO_EXENTO.ASFloat := RoundTo(CostoExento,-3);

          CDSListaArtIVA_IMPORTE.AsFloat   := Precio - CDSListaArtPRECIO_GRAVADO.ASFloat;

          CDSListaArtPRECIO.AsFloat        := CDSListaArtPRECIO_GRAVADO.AsFloat +
                                              CDSListaArtPRECIO_EXENTO.AsFloat +
                                              CDSListaArtIVA_IMPORTE.AsFloat;
          CDSListaArtSubDet.First;
          CDSListaArtSubDetPRECIO.OnSetText:=nil;
          While Not(CDSListaArtSubDet.Eof) do
            begin
              CDSListaArtSubDet.Edit;
              CDSListaArtSubDetCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.ASFloat;
              CDSListaArtSubDetCOSTO_TOTAL.ASFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.ASFloat;

              Precio2 := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * ( 1 + CDSListaArtSubDetRECARGO.ASFloat * 0.01),-4);

              CDSListaArtSubDetPRECIO_GRAVADO.ASFloat:= RoundTo(CDSListaArtSubDetCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01),-4);

              // si es que tiene impuesto internos esto pasan como estan... sin recargo
              if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
                CDSListaArtSubDetPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtSubDetCOSTO_EXENTO.AsFloat * 1 ,-4)
              else
                CDSListaArtSubDetPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtSubDetCOSTO_EXENTO.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01),-4);

              CDSListaArtSubDetIVA_IMPORTE.AsFloat   := Precio2 - CDSListaArtSubDetPRECIO_GRAVADO.ASFloat;

              CDSListaArtSubDetPRECIO.AsFloat        := CDSListaArtSubDetPRECIO_GRAVADO.AsFloat +
                                                        CDSListaArtSubDetPRECIO_EXENTO.AsFloat +
                                                        CDSListaArtSubDetIVA_IMPORTE.AsFloat;
              CDSListaArtSubDet.Next;
            end;
          CDSListaArtSubDetPRECIO.OnSetText:=CDSListaArtSubDetPRECIOSetText;
        end
      else
        begin
          if CDSListaArt.State=dsBrowse then
             CDSListaArt.Edit;
           CDSListaArtCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
           CDSListaArtCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.ASFloat;
           CDSListaArtCOSTO_TOTAL.ASFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
           CDSListaArtIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.ASFloat;

           precio := CDSListaArtPRECIO.Value;

          if CDSListaArtPRECIO_GRAVADO.ASFloat>0 then
            CDSListaArtRECARGO.AsFloat:=   (((CDSListaArtPRECIO_GRAVADO.AsFloat - CDSListaArtCOSTO_GRAVADO.ASFloat) / CDSListaArtPRECIO_GRAVADO.AsFloat) * 100);

          // si es que tiene impuesto internos esto pasan como estan... sin recargo
          if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
            CDSListaArtPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtCOSTO_EXENTO.AsFloat ,-3)
          else
            CDSListaArtPRECIO_EXENTO.ASFloat := RoundTo(CostoExento,-3);

          CDSListaArtIVA_IMPORTE.AsFloat   := Precio - CDSListaArtPRECIO_GRAVADO.ASFloat;

          CDSListaArtSubDet.First;
          CDSListaArtSubDetPRECIO.OnSetText:=nil;
          While Not(CDSListaArtSubDet.Eof) do
            begin
              CDSListaArtSubDet.Edit;
              CDSListaArtSubDetCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.ASFloat;
              CDSListaArtSubDetCOSTO_TOTAL.ASFloat  := CDSStockFIJACION_PRECIO_EXENTO.AsFloat + CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
              CDSListaArtSubDetIVA_TASA.AsFloat     := CDSStockMUESTRATASAPORCENTAJE.ASFloat;

              Precio2 := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * ( 1 + CDSListaArtSubDetRECARGO.ASFloat * 0.01),-3);

              CDSListaArtSubDetRECARGO.Value:=((CDSListaArtSubDetPRECIO_GRAVADO.Value-CDSListaArtSubDetCOSTO_GRAVADO.Value)/CDSListaArtSubDetCOSTO_GRAVADO.Value)*100;

              CDSListaArtSubDet.Next;
            end;
          CDSListaArtSubDetPRECIO.OnSetText:=CDSListaArtSubDetPRECIOSetText;

        end;

      CDSListaArt.Next;
    end;
end;
  }
procedure TDatosStock.CDSStockFotosAfterScroll(DataSet: TDataSet);
begin
//  FormStock_2.imgFoto.Picture:=Nil;
  try
    if FileExists(FormStock_2.opdImagenes.InitialDir + '\' + CDSStockFotosFOTO.AsString) then
      FormStock_2.imgFoto.Picture.LoadFromFile(FormStock_2.opdImagenes.InitialDir + '\' + CDSStockFotosFOTO.AsString);
  Except
    //ShowMessage('Imagen no Disponible');
  end;
end;

procedure TDatosStock.CDSStockFotosNewRecord(DataSet: TDataSet);
begin
  CDSStockFotosID.Value          := ibgIdFoto.IncrementFD(1);
  CDSStockFotosCODIGO.Value      := CDSStockCODIGO_STK.Value;
  CDSStockFotosPOR_DEFECTO.Value := 'N';
  CDSStockFotosFOTO.Value        := '';

end;

procedure TDatosStock.CDSStockID_TABLAPRECIOSSetText(Sender: TField;
  const Text: string);
begin
 if (Text<>'') and (Text<>#13) Then
   begin
     Sender.AsString:=Text;
     if Not(AsignarTablaPrecio(Sender.AsInteger)) Then
       begin
         ShowMessage('Dato no Valido....');
         Sender.Clear;
       end;
   end;
end;

procedure TDatosStock.CDSStockLARGO_1SetText(Sender: TField;
  const Text: string);
begin
  if StrToFloat(Text)>9999 then
    Sender.AsString:='9999'
  else
    Sender.AsString:=Text;
end;

procedure TDatosStock.CDSStockLARGO_2SetText(Sender: TField;
  const Text: string);
begin
  if StrToFloat(Text)>9999 then
    Sender.AsString:='9999'
  else
    Sender.AsString:=Text;
end;

procedure TDatosStock.CDSStockLARGO_3SetText(Sender: TField;
  const Text: string);
begin
  if StrToFloat(Text)>9999 then
    Sender.AsString:='9999'
  else
    Sender.AsString:=Text;
end;

procedure TDatosStock.CDSStockMARCA_STKSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString := Copy('00000', 1, 4 - Length(Text)) + Text;
      IF NOT (AsignarMarca(Sender.AsString)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo no Válido');
        END;
     end;
end;

procedure TDatosStock.CDSSeriesAfterScroll(DataSet: TDataSet);
begin
  CDSMovSeries.Close;
  CDSMovSeries.Params.ParamByName('id').Value:=DatosStock.CDSSeriesID.Value;
  CDSMovSeries.Open;
end;

procedure TDatosStock.CDSSeriesBeforeEdit(DataSet: TDataSet);
begin
  FormStock_2.pnAdicionalSeries.Enabled:= Not(CDSSeries.isEmpty);
  FormStock_2.pnAdicionalSeries.Enabled:= CDSSeriesID.AsString<>'';

end;

procedure TDatosStock.CDSSeriesBeforeInsert(DataSet: TDataSet);
begin
  CDSSeries.Cancel;
  SysUtils.Abort;
end;

procedure TDatosStock.CDSSeriesCalcFields(DataSet: TDataSet);
begin
  CDSSeriesMUESTRAPROVEEDORFINAL.Value:=CDSSeriesMUESTRAPROVEEDOR.Value;
  if CDSSeriesMUESTRAPROVEEDOR_2.AsString<>'' then
    CDSSeriesMUESTRAPROVEEDORFINAL.Value:=CDSSeriesMUESTRAPROVEEDOR_2.Value;

end;

procedure TDatosStock.CDSCodigoBarraNewRecord(DataSet: TDataSet);
begin
  CDSCodigoBarraID.Value                      := ibgIdCodBarra.IncrementFD(1);
  CDSCodigoBarraCODIGO_STK.Value              := DatosStock.CDSStockCODIGO_STK.Value;
  CDSCodigoBarraPRESENTACION_CANTIDAD.AsFloat := 1;
  CDSCodigoBarraPRESENTACION.AsInteger        := 1;

end;

procedure TDatosStock.CDSCodigoBarraBeforePost(DataSet: TDataSet);
begin
  if CDSCodigoBarraCODIGOBARRA.AsString='' Then
    CDSCodigoBarra.Cancel;
end;

procedure TDatosStock.CDSCodigoBarraCODIGOBARRASetText(Sender: TField;
  const Text: string);
VAR Q:TFDQuery;
Lista:TStringList;
begin
  Sender.AsString:=Text;
  q           := TFDQuery.Create(nil);
  Lista       := TStringList.Create;
  Q.Connection:= DMMain_FD.fdcGestion;
  Q.SQL.Text  := 'select c.codigo_stk,s.detalle_stk from codigobarra c '+
                 ' left join stock s on s.codigo_stk=c.codigo_stk '+
                 ' where c.codigobarra = :codigobarra ';
  Q.ParamByName('codigobarra').Value:=Sender.AsString;
  Q.Open;
  if Q.Fields[0].AsString<>'' then
    begin
      q.First;
      while Not(q.Eof) do
        begin
          Lista.Add(Q.Fields[0].AsString+' - '+Q.Fields[1].AsString);
          Q.Next;
        end;

      ShowMessage('Codigo Utilizado'+#13+#13+ Lista.Text );
    end;
  Q.Close;
  FreeAndNil(Q);
  FreeAndNil(Lista);
end;

procedure TDatosStock.CDSListaArtAfterScroll(DataSet: TDataSet);
begin
  CDSListaArtSubDet.Close;
  CDSListaArtSubDet.Params.ParamByName('id').Value:=CDSListaArtID.Value;
  CDSListaArtSubDet.Open;
end;

procedure TDatosStock.CDSListaArtBeforeInsert(DataSet: TDataSet);
begin
  ShowMessage(' Esta Operación no es permitida, para agregar mas item hacerlo por Creacion de Lista de Precios...');
  SysUtils.Abort;
end;

procedure TDatosStock.CDSListaArtMUESTRACLONDEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if sender.AsInteger<0 Then Text:='--'
  else
  Text:=Sender.AsString;
end;

procedure TDatosStock.CDSListaArtPRECIOSetText(Sender: TField;
  const Text: String);
var Recargo,Precio,CostoFinal,AuxG,AuxF:Extended;
begin
  CDSListaArtCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
  CDSListaArtCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
  CDSListaArtCOSTO_TOTAL.AsFloat  := CDSListaArtCOSTO_GRAVADO.AsFloat +
                                     CDSListaArtCOSTO_EXENTO.AsFloat;

  Sender.AsString := Text;
  AuxF            := Sender.AsFloat;// - CDSListaArtCOSTO_EXENTO.AsFloat;
  // si es exento y gravado es por que tiene imp inte
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
     AuxF        := Sender.AsFloat-CDSListaArtCOSTO_EXENTO.ASFloat;

//  CostoFinal      := RoundTo(CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01) ,-3);

  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CostoFinal := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01)
  else
    // esta era la lina unica original, le agregue por si tiene Imp.Int la de arriba
    CostoFinal := CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01)+CDSListaArtCOSTO_EXENTO.AsFloat;

  if costoFinal>0 then
    Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100)
  else
    Recargo:=100;

  CDSListaArtPRECIO_GRAVADO.AsFloat := CDSListaArtCOSTO_GRAVADO.AsFloat * (1+Recargo * 0.01);
// si es que tiene impuesto internos esto pasan como estan... sin recargo
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat
  else
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat * (1+Recargo * 0.01);
  CDSListaArtIVA_IMPORTE.AsFloat    := CDSListaArtPRECIO_GRAVADO.ASFloat * CDSListaArtIVA_TASA.AsFloat * 0.01;

//  AuxF:= AuxF-CDSListaArtPRECIO_EXENTO.ASFloat;
  AuxG:= CDSListaArtPRECIO_GRAVADO.AsFloat;
  //  Precio := CDSListaArtPRECIO_GRAVADO.AsFloat+CDSListaArtIVA_IMPORTE.AsFloat;
//  Recargo:= ( ( Precio - CDSListaArtCOSTO_TOTAL.AsFloat) / CDSListaArtCOSTO_TOTAL.AsFloat ) * 100;
  if CDSStockMODO_GRAVAMEN.AsString='G' then
    CDSListaArtIVA_IMPORTE.AsFloat    := AuxF-AuxG;
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['E']) then
    CDSListaArtIVA_IMPORTE.AsFloat    := 0;

  CDSListaArtFECHA.AsDateTime  :=Date;
  CDSListaArtRECARGO.AsFloat   :=Recargo;
end;

procedure TDatosStock.CDSListaArtRECARGOSetText(Sender: TField;
  const Text: String);
VAR Precio:Extended;
begin
  Sender.AsString := Text;

  Precio := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * ( 1 + Sender.AsFloat * 0.01),-3);

  CDSListaArtPRECIO_GRAVADO.ASFloat:= RoundTo(Precio / (1 + CDSListaArtIVA_TASA.AsFloat * 0.01),-3);
  // se supone que tiene impuestos internos
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat
  else
    CDSListaArtPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtCOSTO_EXENTO.AsFloat * (1 + CDSListaArtRECARGO.AsFloat * 0.01),-3);

  CDSListaArtIVA_IMPORTE.AsFloat   := Precio - CDSListaArtPRECIO_GRAVADO.ASFloat;
  CDSListaArtPRECIO.AsFloat        := CDSListaArtPRECIO_GRAVADO.AsFloat +
                                      CDSListaArtPRECIO_EXENTO.AsFloat +
                                      CDSListaArtIVA_IMPORTE.AsFloat;
end;


procedure TDatosStock.CDSListaArtSubDetAfterDelete(DataSet: TDataSet);
begin
  CDSListaArtSubDet.ApplyUpdates(0);
end;

procedure TDatosStock.CDSListaArtSubDetAfterPost(DataSet: TDataSet);
begin
  CDSListaArtSubDet.ApplyUpdates(0);
end;

procedure TDatosStock.CDSListaArtSubDetBeforePost(DataSet: TDataSet);
begin
  if CDSListaArtSubDetCANTIDAD.AsFLoat<=0 then
    begin
      CDSListaArtSubDet.Cancel;
    end;
end;

procedure TDatosStock.CDSListaArtSubDetNewRecord(DataSet: TDataSet);
begin
  CDSListaArtSubDetID.Value               := ibgListaArtSubDet.IncrementFD(1);
  CDSListaArtSubDetID_LISTADETALLE.Value  := CDSListaArtID.Value;
  CDSListaArtSubDetCODIGO.AsString        := CDSListaArtCODIGOARTICULO.Value;
  CDSListaArtSubDetCANTIDAD.AsFloat       := 1;

  CDSListaArtSubDetCOSTO_EXENTO.AsFloat   := CDSListaArtCOSTO_EXENTO.AsFloat;
  CDSListaArtSubDetCOSTO_GRAVADO.AsFloat  := CDSListaArtCOSTO_GRAVADO.AsFloat;
  CDSListaArtSubDetCOSTO_TOTAL.AsFloat    := CDSListaArtCOSTO_TOTAL.AsFloat;

  CDSListaArtSubDetRECARGO.AsFloat        := CDSListaArtRECARGO.AsFloat;
  CDSListaArtSubDetDESCUENTO.AsFloat      := 0;

  CDSListaArtSubDetIVA_TASA.AsFloat       := CDSListaArtIVA_TASA.AsFloat;
  CDSListaArtSubDetIVA_IMPORTE.AsFloat    := CDSListaArtIVA_IMPORTE.AsFloat;

  CDSListaArtSubDetPRECIO_EXENTO.AsFloat  := CDSListaArtPRECIO_EXENTO.AsFloat;
  CDSListaArtSubDetPRECIO_GRAVADO.AsFloat := CDSListaArtPRECIO_GRAVADO.AsFloat;
  CDSListaArtSubDetPRECIO.AsFloat         := CDSListaArtPRECIO.AsFloat;

  CDSListaArtSubDetID_LISTA_SECUNDARIA.AsInteger  := -1;

end;

procedure TDatosStock.CDSListaArtSubDetPRECIOSetText(Sender: TField;
  const Text: string);
var Recargo,Precio,CostoFinal,AuxG,AuxF:Extended;
begin
  CDSListaArtSubDetCOSTO_GRAVADO.AsFloat:= CDSStockFIJACION_PRECIO_GRAVADO.AsFloat;
  CDSListaArtSubDetCOSTO_EXENTO.AsFloat := CDSStockFIJACION_PRECIO_EXENTO.AsFloat;
  CDSListaArtSubDetCOSTO_TOTAL.AsFloat  := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat +
                                           CDSListaArtSubDetCOSTO_EXENTO.AsFloat;

  Sender.AsString := Text;
  AuxF            := Sender.AsFloat;// - CDSListaArtCOSTO_EXENTO.AsFloat;
  // si es exento y gravado es por que tiene imp inte
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
     AuxF        := Sender.AsFloat-CDSListaArtSubDetCOSTO_EXENTO.ASFloat;

//  CostoFinal      := RoundTo(CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01) ,-3);

  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CostoFinal := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtSubDetIVA_TASA.AsFloat * 0.01)
  else
    // esta era la lina unica original, le agregue por si tiene Imp.Int la de arriba
    CostoFinal := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtSubDetIVA_TASA.AsFloat * 0.01)+CDSListaArtSubDetCOSTO_EXENTO.AsFloat;

  if costoFinal>0 then
    Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100)
  else
    Recargo:=100;

  CDSListaArtSubDetPRECIO_GRAVADO.AsFloat := CDSListaArtSubDetCOSTO_GRAVADO.AsFloat * (1+Recargo * 0.01);
// si es que tiene impuesto internos esto pasan como estan... sin recargo
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtSubDetPRECIO_EXENTO.AsFloat  := CDSListaArtSubDetCOSTO_EXENTO.AsFloat
  else
    CDSListaArtSubDetPRECIO_EXENTO.AsFloat := CDSListaArtSubDetCOSTO_EXENTO.AsFloat * (1+Recargo * 0.01);
  CDSListaArtSubDetIVA_IMPORTE.AsFloat     := CDSListaArtSubDetPRECIO_GRAVADO.ASFloat * CDSListaArtSubDetIVA_TASA.AsFloat * 0.01;

//  AuxF:= AuxF-CDSListaArtPRECIO_EXENTO.ASFloat;
  AuxG:= CDSListaArtSubDetPRECIO_GRAVADO.AsFloat;
  //  Precio := CDSListaArtPRECIO_GRAVADO.AsFloat+CDSListaArtIVA_IMPORTE.AsFloat;
//  Recargo:= ( ( Precio - CDSListaArtCOSTO_TOTAL.AsFloat) / CDSListaArtCOSTO_TOTAL.AsFloat ) * 100;
  if CDSStockMODO_GRAVAMEN.AsString='G' then
    CDSListaArtSubDetIVA_IMPORTE.AsFloat    := AuxF-AuxG;
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['E']) then
    CDSListaArtSubDetIVA_IMPORTE.AsFloat    := 0;


  CDSListaArtSubDetRECARGO.AsFloat:=Recargo;
end;

procedure TDatosStock.CDSListaArtSubDetRECARGOSetText(Sender: TField;
  const Text: string);
VAR Precio:Extended;
begin
  Sender.AsString := Text;

  Precio := RoundTo(CDSStockFIJACION_PRECIO_FINAL.AsFloat * ( 1 + Sender.AsFloat * 0.01),-3);

  CDSListaArtSubDetPRECIO_GRAVADO.ASFloat:= RoundTo(Precio / (1 + CDSListaArtSubDetIVA_TASA.AsFloat * 0.01),-3);
  // se supone que tiene impuestos internos
  if (CDSStockMODO_GRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtSubDetPRECIO_EXENTO.AsFloat  := CDSListaArtSubDetCOSTO_EXENTO.AsFloat
  else
    CDSListaArtSubDetPRECIO_EXENTO.ASFloat := RoundTo(CDSListaArtSubDetCOSTO_EXENTO.AsFloat * (1 + CDSListaArtSubDetRECARGO.AsFloat * 0.01),-3);

  CDSListaArtSubDetIVA_IMPORTE.AsFloat   := Precio - CDSListaArtSubDetPRECIO_GRAVADO.ASFloat;
  CDSListaArtSubDetPRECIO.AsFloat        := CDSListaArtSubDetPRECIO_GRAVADO.AsFloat +
                                            CDSListaArtSubDetPRECIO_EXENTO.AsFloat +
                                            CDSListaArtSubDetIVA_IMPORTE.AsFloat;
end;

END.
