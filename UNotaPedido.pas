unit UNotaPedido;

interface

uses
  Windows, Messages, SysUtils, UABMBase, JvDBControls, JvLabel,
  JvExMask, JvToolEdit, Menus, frxClass, frxDBSet, IBGenerator, DB,
  DBClient,  Provider, ComCtrls, JvExComCtrls, JvProgressBar,
  JvArrowButton, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, DBCtrls,Graphics,
  JvComponentBase, JvFormPlacement, ImgList, Controls,
  Classes, ActnList, JvExControls, JvGradient, Buttons, ToolWin,Dialogs,Forms,
  DBXCommon,GridClickPatch, JvDBLookup, JvAppStorage,IniFiles,
  JvAppIniStorage, System.Actions, Data.FMTBcd, Data.SqlExpr, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses,System.Variants;

type
  TFormNotaPedido = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText1: TDBText;
    dbtMuestraComprobante: TDBText;
    dbePrefijo: TDBEdit;
    dbeNum: TDBEdit;
    dbeSucursal: TDBEdit;
    DSPStock: TDataSetProvider;
    DSPNPCab: TDataSetProvider;
    DSNPDet: TDataSource;
    DSPNPDet: TDataSetProvider;
    ibgNPCab: TIBGenerator;
    ibgNPDet: TIBGenerator;
    DSPSucursal: TDataSetProvider;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    BuscarArticulo: TAction;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frDSNPCab: TfrxDBDataset;
    frDSNPDet: TfrxDBDataset;
    frPedido: TfrxReport;
    dbeMuestraVendedor: TDBEdit;
    BuscarSolicitante: TAction;
    GeneraPedido: TAction;
    pcDetalles: TPageControl;
    Pag1: TTabSheet;
    DBGrillaDetalle: TDBGrid;
    chbPedidoPorDeposito: TCheckBox;
    pnGeneraPedido: TPanel;
    btGenerar: TBitBtn;
    Pag2: TTabSheet;
    dbgPedidoDetallado: TDBGrid;
    DSNPDetMem: TDataSource;
    CDSNPDetMem: TClientDataSet;
    DSPNPDetMem: TDataSetProvider;
    GenerarPedidoDetallado: TAction;
    BitBtn3: TBitBtn;
    frDBDetMem: TfrxDBDataset;
    rgNIvel: TRadioGroup;
    DSNPDetMem2: TDataSource;
    CDSNPDetMem2: TClientDataSet;
    DSPNPDetMem2: TDataSetProvider;
    frDSNPDetMem2: TfrxDBDataset;
    lbEstado: TLabel;
    MarcarNP: TAction;
    dbeDeposito: TDBEdit;
    BuscarDeposito: TAction;
    pbProceso: TJvProgressBar;
    GenerarNotaTransferencia: TAction;
    abOpciones: TJvArrowButton;
    btn1: TToolButton;
    pm2: TPopupMenu;
    GenerarNotaTransferencia1: TMenuItem;
    lbModo: TLabel;
    btnBtAnular: TSpeedButton;
    Anular: TAction;
    dbeFecha: TJvDBDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel4: TJvLabel;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    CDSBuscaDeposito: TClientDataSet;
    DSPBuscaDeposito: TDataSetProvider;
    CDSBuscaDepositoID: TIntegerField;
    CDSBuscaDepositoNOMBRE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSStock: TClientDataSet;
    CDSNPCab: TClientDataSet;
    CDSNPDet: TClientDataSet;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSBuscaSolicitante: TClientDataSet;
    DSPBuscaSolicitante: TDataSetProvider;
    CDSBuscaSolicitanteNOMBRE: TStringField;
    CDSBuscaSolicitanteCODIGO: TStringField;
    CDSBuscaComprob: TClientDataSet;
    DSBuscaComprob: TDataSetProvider;
    CDSSucursalRECARGO: TFMTBCDField;
    CDSFaltante: TClientDataSet;
    DSPFaltante: TDataSetProvider;
    DSRubro: TDataSource;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    DSPMarca: TDataSetProvider;
    CDSMarca: TClientDataSet;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    Label1: TLabel;
    rxcbRubro: TJvDBLookupCombo;
    Label2: TLabel;
    rxcbSubRubro: TJvDBLookupCombo;
    DSPDetalleProduccion: TDataSetProvider;
    CDSDetalleProduccion: TClientDataSet;
    dbcMarcas: TJvDBLookupCombo;
    Label3: TLabel;
    PopupMenu1: TPopupMenu;
    VerCodigoAlternativo1: TMenuItem;
    JvLabel1: TJvLabel;
    cbSucursal: TJvDBLookupCombo;
    QSucursales: TFDQuery;
    DSSucursales: TDataSource;
    QSucursalesCODIGO: TIntegerField;
    QSucursalesDETALLE: TStringField;
    ComBuscadorSolicitante: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    QNPDet: TFDQuery;
    CDSNPDetID: TIntegerField;
    CDSNPDetID_CAB: TIntegerField;
    CDSNPDetCODIGO: TStringField;
    CDSNPDetDETALLE: TStringField;
    CDSNPDetUNIDADES: TStringField;
    CDSNPDetCANTIDAD_PEDIDA: TFloatField;
    CDSNPDetCANTIDAD: TFloatField;
    CDSNPDetFECHA_PEDIDO: TSQLTimeStampField;
    CDSNPDetNROCPBTE: TStringField;
    CDSNPDetSOLICITANTE: TStringField;
    CDSNPDetPEDIDO: TStringField;
    CDSNPDetPROVEEDOR: TStringField;
    CDSNPDetID_ORDENCOMPRA: TIntegerField;
    CDSNPDetMINIMO: TFloatField;
    CDSNPDetACTUAL: TFloatField;
    CDSNPDetMEDIO: TFloatField;
    CDSNPDetPRECIO: TFloatField;
    CDSNPDetESTADO: TStringField;
    CDSNPDetID_MONEDA: TIntegerField;
    CDSNPDetCOTIZACION: TFloatField;
    CDSNPDetCODIGO_ALTERNATIVO: TStringField;
    QNPCab: TFDQuery;
    CDSNPCabID: TIntegerField;
    CDSNPCabFECHA: TSQLTimeStampField;
    CDSNPCabTIPOCPBTE: TStringField;
    CDSNPCabCLASECPBTE: TStringField;
    CDSNPCabNROCPBTE: TStringField;
    CDSNPCabLETRA: TStringField;
    CDSNPCabSUC: TStringField;
    CDSNPCabNUMERO: TStringField;
    CDSNPCabSUCURSAL: TIntegerField;
    CDSNPCabSOLICITANTE: TStringField;
    CDSNPCabPEDIDO: TStringField;
    CDSNPCabDEPOSITO: TIntegerField;
    CDSNPCabNOTATRANS_ID: TIntegerField;
    CDSNPCabNOTATRANS_NRO: TStringField;
    CDSNPCabFECHA_HORA: TSQLTimeStampField;
    CDSNPCabUSUARIO: TStringField;
    CDSNPCabA_SUCURSAL: TIntegerField;
    CDSNPCabMUESTRACOMPROBANTE: TStringField;
    CDSNPCabMUESTRADEPOSITO: TStringField;
    CDSNPCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSNPCabMUESTRASOLICITANTE: TStringField;
    CDSNPCabMUESTRASUCURSAL: TStringField;
    QBuscaComprob: TFDQuery;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
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
    CDSBuscaComprobCAJA_DEFECTO: TIntegerField;
    CDSBuscaComprobDIVIDE_IVA: TStringField;
    CDSBuscaComprobFACTURAELECTRONICA: TStringField;
    CDSBuscaComprobEN_USO: TStringField;
    CDSBuscaComprobCODIGO_AFIP: TStringField;
    CDSBuscaComprobID_AJUSTECC: TIntegerField;
    CDSBuscaComprobCENTRO_COSTO: TIntegerField;
    CDSBuscaComprobFILTRO_COMPROBANTES: TStringField;
    CDSBuscaComprobDEPOSITO: TIntegerField;
    CDSBuscaComprobULTIMONRO: TIntegerField;
    CDSBuscaComprobEDITAR_NRO: TStringField;
    CDSBuscaComprobCONTROLADOR_NROREG: TStringField;
    CDSBuscaComprobUSAR_CAEA: TStringField;
    CDSBuscaComprobCAEA: TStringField;
    CDSBuscaComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    CDSBuscaComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    QDetalleProducc: TFDQuery;
    CDSDetalleProduccionID: TIntegerField;
    CDSDetalleProduccionCANTIDADBASE: TFloatField;
    CDSDetalleProduccionID_1: TIntegerField;
    CDSDetalleProduccionID_CAB: TIntegerField;
    CDSDetalleProduccionCODIGO_STK: TStringField;
    CDSDetalleProduccionDETALLE: TStringField;
    CDSDetalleProduccionCOSTO_STK: TFloatField;
    CDSDetalleProduccionCANTIDAD_REAL: TFloatField;
    CDSDetalleProduccionCANTIDAD_FISICA: TFloatField;
    CDSDetalleProduccionUNIDAD: TStringField;
    CDSDetalleProduccionULTIMO_COSTO: TSQLTimeStampField;
    CDSDetalleProduccionCOSTO: TFloatField;
    CDSDetalleProduccionAFECTA_STOCK: TStringField;
    QStockExistencia: TFDQuery;
    QFalt: TFDQuery;
    CDSFaltanteCODIGO_STK: TStringField;
    CDSFaltanteDETALLE_STK: TStringField;
    CDSFaltanteFALTANTE: TFloatField;
    CDSFaltanteSUM: TFloatField;
    QDeposito: TFDQuery;
    QComprob: TFDQuery;
    QNPDetMem: TFDQuery;
    CDSNPDetMemID: TIntegerField;
    CDSNPDetMemID_CAB: TIntegerField;
    CDSNPDetMemCODIGO: TStringField;
    CDSNPDetMemDETALLE: TStringField;
    CDSNPDetMemCANTIDAD: TFloatField;
    CDSNPDetMemUNIDADES: TStringField;
    CDSNPDetMemACTUAL: TFloatField;
    CDSNPDetMemMINIMO: TFloatField;
    CDSNPDetMemMEDIO: TFloatField;
    CDSNPDetMemPEDIDO: TStringField;
    CDSNPDetMemESTADO: TStringField;
    QNPDetMem2: TFDQuery;
    CDSNPDetMem2ID: TIntegerField;
    CDSNPDetMem2ID_CAB: TIntegerField;
    CDSNPDetMem2CODIGO: TStringField;
    CDSNPDetMem2DETALLE: TStringField;
    CDSNPDetMem2CANTIDAD: TFloatField;
    CDSNPDetMem2UNIDADES: TStringField;
    QSubRubro: TFDQuery;
    QMarca: TFDQuery;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    spMarcarNotaPedido: TFDStoredProc;
    QRubro: TFDQuery;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QStockExistenciaFISICO: TFloatField;
    QStockExistenciaMINIMO: TFloatField;
    QStockExistenciaMEDIO: TFloatField;
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
    QComprobCONTROLADOR_NROREG: TStringField;
    QComprobUSAR_CAEA: TStringField;
    QComprobCAEA: TStringField;
    QComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    CDSPersonalCOMISION: TFloatField;
    HacerOCompra: TAction;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    QNPDetID: TIntegerField;
    QNPDetID_CAB: TIntegerField;
    QNPDetCODIGO: TStringField;
    QNPDetDETALLE: TStringField;
    QNPDetUNIDADES: TStringField;
    QNPDetCANTIDAD_PEDIDA: TFloatField;
    QNPDetCANTIDAD: TFloatField;
    QNPDetFECHA_PEDIDO: TSQLTimeStampField;
    QNPDetNROCPBTE: TStringField;
    QNPDetSOLICITANTE: TStringField;
    QNPDetPEDIDO: TStringField;
    QNPDetPROVEEDOR: TStringField;
    QNPDetID_ORDENCOMPRA: TIntegerField;
    QNPDetMINIMO: TFloatField;
    QNPDetACTUAL: TFloatField;
    QNPDetMEDIO: TFloatField;
    QNPDetPRECIO: TFloatField;
    QNPDetESTADO: TStringField;
    QNPDetID_MONEDA: TIntegerField;
    QNPDetCOTIZACION: TFloatField;
    QNPDetCODIGO_ALTERNATIVO: TStringField;
    QNPCabID: TIntegerField;
    QNPCabFECHA: TSQLTimeStampField;
    QNPCabTIPOCPBTE: TStringField;
    QNPCabCLASECPBTE: TStringField;
    QNPCabNROCPBTE: TStringField;
    QNPCabLETRA: TStringField;
    QNPCabSUC: TStringField;
    QNPCabNUMERO: TStringField;
    QNPCabSUCURSAL: TIntegerField;
    QNPCabSOLICITANTE: TStringField;
    QNPCabPEDIDO: TStringField;
    QNPCabDEPOSITO: TIntegerField;
    QNPCabNOTATRANS_ID: TIntegerField;
    QNPCabNOTATRANS_NRO: TStringField;
    QNPCabFECHA_HORA: TSQLTimeStampField;
    QNPCabUSUARIO: TStringField;
    QNPCabA_SUCURSAL: TIntegerField;
    QNPCabMUESTRACOMPROBANTE: TStringField;
    QNPCabMUESTRADEPOSITO: TStringField;
    QNPCabID_TIPOCOMPROBANTE: TIntegerField;
    QNPCabMUESTRASOLICITANTE: TStringField;
    QNPCabMUESTRASUCURSAL: TStringField;
    QDetalleProduccID: TIntegerField;
    QDetalleProduccCANTIDADBASE: TFloatField;
    QDetalleProduccID_1: TIntegerField;
    QDetalleProduccID_CAB: TIntegerField;
    QDetalleProduccCODIGO_STK: TStringField;
    QDetalleProduccDETALLE: TStringField;
    QDetalleProduccCOSTO_STK: TFloatField;
    QDetalleProduccCANTIDAD_REAL: TFloatField;
    QDetalleProduccCANTIDAD_FISICA: TFloatField;
    QDetalleProduccUNIDAD: TStringField;
    QDetalleProduccULTIMO_COSTO: TSQLTimeStampField;
    QDetalleProduccCOSTO: TFloatField;
    QDetalleProduccAFECTA_STOCK: TStringField;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockMUESTRACTAGASTO: TStringField;
    CDSStockMUESTRARUBROGASTO: TStringField;
    DSPProveedor: TDataSetProvider;
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
    CDSProveedorFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSProveedorFECHAALTA: TSQLTimeStampField;
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
    pnProveedor: TPanel;
    Label4: TLabel;
    ceProveedor: TJvComboEdit;
    edNombreProveedor: TEdit;
    CDSProveedorSALDO_INICIAL: TFloatField;
    CDSProveedorMUESTRADETALLERETIIBB: TStringField;
    CDSProveedorMUESTRATASARETIIBB: TFloatField;
    CDSProveedorMUESTRAMINIMPONIRETIIBB: TFloatField;
    DBText2: TDBText;
    RestaurarNP: TAction;
    N1: TMenuItem;
    RestaurarNotadePedidosinNotaAsociada1: TMenuItem;
    procedure CDSNPCabNewRecord(DataSet: TDataSet);
    procedure CDSNPCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSNPCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSNPCabSUCSetText(Sender: TField; const Text: String);
    procedure CDSNPCabNUMEROSetText(Sender: TField; const Text: String);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSNPDetCODIGOSetText(Sender: TField; const Text: String);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSNPDetNewRecord(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSNPCabSOLICITANTESetText(Sender: TField;
      const Text: String);
    procedure BuscarSolicitanteExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GeneraPedidoExecute(Sender: TObject);
    procedure chbPedidoPorDepositoClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSNPDetAfterInsert(DataSet: TDataSet);
    procedure GenerarPedidoDetalladoExecute(Sender: TObject);
    procedure CDSNPDetAfterPost(DataSet: TDataSet);
    procedure CDSNPDetAfterDelete(DataSet: TDataSet);
    procedure rgNIvelClick(Sender: TObject);
    procedure CDSNPDetBeforePost(DataSet: TDataSet);
    procedure BorrarExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure MarcarNPExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure CDSNPCabDEPOSITOSetText(Sender: TField; const Text: string);
    procedure GenerarNotaTransferenciaExecute(Sender: TObject);
    procedure pcDetallesEnter(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure sbEstadoClick(Sender: TObject);
    procedure CDSNPDetCANTIDAD_PEDIDASetText(Sender: TField;
      const Text: string);
    procedure AnularExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ModificarExecute(Sender: TObject);
    procedure rxcbRubroClick(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure CDSNPDetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure ceProveedorButtonClick(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure RestaurarNPExecute(Sender: TObject);
  private
    { Private declarations }
     FModo:String;
  public
    { Public declarations }
    Anulado:Tpanel;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION AsignarSolicitante(Dato: String): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    procedure Agregar_detalle(codigo:string;cantidad:real);
    procedure ReAsignaSolicitante(dato:string);
    procedure GridRefresh;
  published
    PROPERTY Modo: STRING read FModo write FModo;
  end;

var
  FormNotaPedido: TFormNotaPedido;
  copias:integer;
  ConDetalle:Boolean;
  Abortar:Boolean;
  PROCEDURE UltimoComprobante;

implementation

uses UDMain_FD, DMBuscadoresForm, UBuscadorCpbte, UBuscadorArticulos,
     UNotaTransfStock, DMNotasTransf,
     DMStoreProcedureForm, DMNPedidoCliente, UBuscadorComprobantes,
  UBuscadorProveedor, UStock_2, UBuscadorDepositos;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormNotaPedido DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSNPCabLETRA.AsString <> '') AND (CDSNPCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSNPCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').Value    := CDSNPCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSNPCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').Value    := CDSNPCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSNPCabSUCSetText(CDSNPCabSUC,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSNPCabNUMEROSetText(CDSNPCabNUMERO,IntToStr(Numero));
             END;
           CDSNPCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSNPCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSNPCabNROCPBTE.AsString := CDSNPCabLETRA.AsString +
                                    CDSNPCabSUC.AsString +
                                    CDSNPCabNUMERO.AsString;
    end;
END;

FUNCTION TFormNotaPedido.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  QDeposito.Close;
  QDeposito.Params.ParamByName('Id').Value:=Dato;
  QDeposito.Open;
  IF NOT (QDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSNPCabMUESTRADEPOSITO.Value:=QDepositoNOMBRE.Value;
      ReAsignaSolicitante(CDSNPCabSOLICITANTE.Value);
    END
  ELSE
    Result:=False;
  QDeposito.Close;
END;


FUNCTION TFormNotaPedido.AsignarSolicitante(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('Codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSNPCabMUESTRASOLICITANTE.Value := CDSPersonalNOMBRE.Value;
      ReAsignaSolicitante(dato);
    END
  ELSE
    begin
      Result:=False;
      CDSNPCabMUESTRASOLICITANTE.Clear;
    end;
  CDSPersonal.Close;
END;


procedure TFormNotaPedido.AnularExecute(Sender: TObject);
begin
  if MessageDlg('Esta por anular el comprobante, esta seguro??',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    begin
      DatoNew:=CDSNPCabID.AsString;
     DMMain_FD.fdcGestion.StartTransaction;
      try
        CDSNPCab.Edit;
        CDSNPCabPEDIDO.Value:='A';
        CDSNPCab.Post;
        CDSNPCab.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo realizar la operación');
      end;
      Recuperar.Execute;
    end;
end;

FUNCTION TFormNotaPedido.ASignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSNPDet.State = dsBrowse THEN
    CDSNPDet.Edit;
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value   := Dato;
      CDSStock.Open;
       IF (NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0) THEN
        BEGIN
          CDSNPDetCODIGO.AsString               :=  Dato;
          CDSNPDetDETALLE.AsString              :=  CDSStockDetalle_Stk.AsString;
          CDSNPDetUNIDADES.Value                :=  CDSStockUNIDAD_COMPRA.Value;
          CDSNPDetPRECIO.AsFloat                :=  CDSStockFIJACION_PRECIO_TOTAL.AsFloat;
          CDSNPDetCODIGO_ALTERNATIVO.AsString   :=  CDSStockREEMPLAZO_STK.AsString;
          QStockExistencia.Close;
          QStockExistencia.ParamByName('codigo').Value         := Dato;
          QStockExistencia.ParamByName('codigodeposito').Value := CDSNPCabDEPOSITO.Value;
          QStockExistencia.open;
          // Llevo las exsitencia a Unidades de compra
          CDSNPDetActual.AsFloat := QStockExistenciaFISICO.AsFloat/CDSStockCONTENIDO_COMPRA.Asfloat;
          CDSNPDetMinimo.AsFloat := QStockExistenciaMINIMO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSNPDetMEDIO.AsFloat  := QStockExistenciaMEDIO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
          QStockExistencia.Close;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;


FUNCTION TFormNotaPedido.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSNPCabID_TIPOCOMPROBANTE.Clear;
      CDSNPCabMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSNPCabID_TIPOCOMPROBANTESetText(CDSNPCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          rxcVendedor.SetFocus;
        end;
      CDSBuscaComprob.Close;
      Result := True;
      CDSNPCabMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    Result := False;
  CDSSucursal.Close;
END;

FUNCTION TFormNotaPedido.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value     := dato;
  QComprob.ParamByName('suc').Value    := CDSNPCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSNPCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSNPCabLETRA.Value              := QComprobLETRA.Value;
      CDSNPCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSNPCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSNPCabMUESTRACOMPROBANTE.Value := '';
      CDSNPCabLETRA.Value              := '';
      CDSNPCabTIPOCPBTE.Value          := '';
      CDSNPCabCLASECPBTE.Value         := '';
    END;
END;

procedure TFormNotaPedido.agregar_detalle(codigo:string;cantidad:real);
VAR Puntero:TBookmark;
begin
  Application.ProcessMessages;
  CDSDetalleProduccion.close;
  CDSDetalleProduccion.Params.ParamByName('codigo').AsString:=codigo;
  CDSDetalleProduccion.Open;
  CDSDetalleProduccion.First;
  while not(CDSDetalleProduccion.Eof) do
    begin
      CDSStock.Close;
      CDSStock.Params.ParamByName('codigo').Value:=CDSDetalleProduccionCODIGO_STK.Value;
      CDSStock.OPen;
      if CDSStockDEPRODUCCION.Value='S' Then
        begin
          Puntero:=CDSDetalleProduccion.GetBookmark;
          agregar_detalle(CDSDetalleProduccionCODIGO_STK.Value,cantidad);
          CDSDetalleProduccion.close;
          CDSDetalleProduccion.Params.ParamByName('codigo').AsString:=codigo;
          CDSDetalleProduccion.Open;
          CDSDetalleProduccion.GotoBookmark(Puntero);
          CDSDetalleProduccion.FreeBookmark(Puntero);
        end
      else
        begin
          CDSNPDetMem2.Insert;
          CDSNPDetMem2ID_CAB.AsInteger    := CDSNPDetID.AsInteger;
          CDSNPDetMem2ID.AsInteger        := CDSNPDetMem2.RecordCount+1;
          CDSNPDetMem2CODIGO.AsString     := CDSDetalleProduccionCODIGO_STK.AsString;
          CDSNPDetMem2DETALLE.AsString    := CDSDetalleProduccionDETALLE.AsString;
          CDSNPDetMem2CANTIDAD.ASFloat    := (CDSDetalleProduccionCANTIDAD_REAL.AsFloat/CDSDetalleProduccionCANTIDADBASE.AsFloat * Cantidad )/CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSNPDetMem2UNIDADES.AsString   := CDSStockUNIDAD_COMPRA.AsString;
          CDSNPDetMem2.Post;

          if CDSNPDetMem.Locate('Codigo',CDSDetalleProduccionCODIGO_STK.Value,[]) Then
            begin
              CDSNPDetMem.Edit;
              CDSNPDetMemCANTIDAD.AsFloat:=CDSNPDetMemCANTIDAD.AsFloat+(CDSDetalleProduccionCANTIDAD_REAL.AsFloat/CDSDetalleProduccionCANTIDADBASE.AsFloat * Cantidad)/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSNPDetMem.Post;
            end
          else
            begin
              CDSNPDetMem.Insert;
              CDSNPDetMemID_CAB.AsInteger    := CDSNPCabID.AsInteger;
              CDSNPDetMemID.AsInteger        := CDSNPDetMem.RecordCount+1;
              CDSNPDetMemCODIGO.Value        := CDSDetalleProduccionCODIGO_STK.Value;
              CDSNPDetMemDETALLE.Value       := CDSDetalleProduccionDETALLE.Value;
              CDSNPDetMemCANTIDAD.AsFloat    :=(CDSDetalleProduccionCANTIDAD_REAL.AsFloat/CDSDetalleProduccionCANTIDADBASE.AsFloat * Cantidad)/CDSStockCONTENIDO_COMPRA.AsFloat;
             // CDSNPDetMemUNIDADES.Value      :=QDetalleProduccionUNIDAD.Value;
              CDSNPDetMemUNIDADES.Value      := CDSStockUNIDAD_COMPRA.Value;

              //CDSNPDetMemPRECIO.Value   :=QProveeArticuloPRECIO.Value;
              QStockExistencia.Close;
              QStockExistencia.ParamByName('codigo').Value:=CDSDetalleProduccionCODIGO_STK.Value;
              QStockExistencia.Open;
              //LLEVO LAS EXISTENCIA A UNIDADES DE COMPRA
              CDSNPDetMemACTUAL.AsFloat   := QStockExistenciaFISICO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSNPDetMemMINIMO.AsFloat   := QStockExistenciaMINIMO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSNPDetMemMEDIO.AsFloat    := QStockExistenciaMEDIO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSNPDetMemESTADO.AsString  := 'N';
              //CDSNPDetMem PEDIDO.Value   :=0;
//              CDSNPDetMemRUBRO.Value    :=QStockRUBRO_STK.Value;
  //            CDSNPDetMemSUBRUBRO.Value :=QStockSUBRUBRO_STK.Value;
              CDSNPDetMem.Post;
              QStockExistencia.Close;
              CDSStock.Close;
            end;
        end;
      CDSDetalleProduccion.Next;
    end;
end;

procedure TFormNotaPedido.ReAsignaSolicitante(dato:String);
var p:TBookmark;
begin
  if Not(CDSNPDet.IsEmpty) Then
    begin
      p:=CDSNPDet.GetBookmark;
      CDSNPDet.DisableControls;
      CDSNPDet.First;
      while Not(CDSNPDet.Eof) do
        begin
          CDSNPDet.edit;
          CDSNPDetSOLICITANTE.Value       := Dato;
          CDSNPDetFECHA_PEDIDO.AsDateTime := CDSNPCabFECHA.AsDateTime;
          CDSNPDet.Next;
        end;
      CDSNPDet.GotoBookmark(p);
      CDSNPDet.FreeBookmark(p);
      CDSNPDet.EnableControls;
    end;
end;



procedure TFormNotaPedido.CDSNPCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSNPCabID.Value         := ibgNPCab.IncrementFD(1);
  CDSNPCabFECHA.AsDateTime := Date;
  CDSNPCabSUCURSALSetText(CDSNPCabSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSNPCabPEDIDO.Value     := 'N';
  if DMMain_FD.EmpleadoPorDefecto<>'' Then
    CDSNPCabSOLICITANTESetText(CDSNPCabSOLICITANTE,DMMain_FD.EmpleadoPorDefecto);
  CDSNPCabDEPOSITOSetText(CDSNPCabDEPOSITO,IntToStr(FormNotaPedido.DepositoPorDefecto));
  CDSNPCabFECHA_HORA.AsDateTime := Now;
  CDSNPCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
  CDSNPCabSUCURSAL.Value        := DMMain_FD.SucursalPorDef;
  lbEstado.Caption              := 'Nueva';
end;

procedure TFormNotaPedido.CDSNPCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormNotaPedido.CDSNPCabDEPOSITOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
          FormNotaPedido.RxCDeposito.SetFocus;
        END;
    END;
end;

procedure TFormNotaPedido.CDSNPCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
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
      IF CDSNPCab.State=dsInsert Then
        UltimoComprobante;
     end;

end;


procedure TFormNotaPedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NPedidoStock.ini');
  ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormNotaPedido.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  SinBDE  :=2;
  AddClientDataSet(CDSNPCab,DSPNPCab);
  AddClientDataSet(CDSNPDet,DSPNPDet);
  CDSNPCab.Open;
  CDSNPDet.Open;
  pcDetalles.ActivePage:=Pag1;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='NPDETALLE';
  DMMain_FD.QOpciones.Open;
  ConDetalle:=UpperCase(Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1))='S';
  DMMain_FD.QOpciones.Close;

  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_NPedidoStock.ini');
  VerCodigoAlternativo1.Checked:= ArchivoIni.ReadBool('codigo', 'codigo', False);
  ArchivoIni.Free;


  CDSRubro.Close;
  CDSRubro.Open;
  CDSSubRubro.Close;
  CDSSubRubro.Open;
  CDSMarca.Close;
  CDSMarca.Open;
  QSucursales.Open;

  Pag2.TabVisible:=ConDetalle;

  Tabla:='NotaPedidoCab';
  Campo:='id';


end;

procedure TFormNotaPedido.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNotaPedido:=Nil;
end;

procedure TFormNotaPedido.FormResize(Sender: TObject);
begin
  inherited;
  if FormNotaPedido<>nil then
    if FormNotaPedido.Width<>937 then
      FormNotaPedido.Width:=937;

end;

procedure TFormNotaPedido.CDSNPCabSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSNPCabNroCpbte.AsString := CDSNPCabLETRA.AsString +
                               CDSNPCabSUC.AsString +
                               CDSNPCabNUMERO.AsString;

end;

procedure TFormNotaPedido.CDSNPCabNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSNPCabNroCpbte.AsString := CDSNPCabLETRA.AsString +
                               CDSNPCabSUC.AsString +
                               CDSNPCabNUMERO.AsString;

end;

procedure TFormNotaPedido.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSNPCabSUCURSALSetText(CDSNPCabSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormNotaPedido.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                            ' compra_venta = ''V'' and (tipo_comprob= ''NP'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := CDSNPCabSUCURSAL.Value;
  DMBuscadores.CDSBuscaComprob.Open;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      CDSNPCabID_TIPOCOMPROBANTESetText(CDSNPCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DMBuscadores.CDSBuscaComprob.Close;
end;

procedure TFormNotaPedido.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.Param1      := 1;
  FormBuscadorArticulos.Param2      := 2;
  FormBuscadorArticulos.Param3      := 3;
  FormBuscadorArticulos.Esquema     :=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto();
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    CDSNPDetCODIGOSetText(CDSNPDetCODIGO,FormBuscadorArticulos.Codigo);
end;

procedure TFormNotaPedido.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    CDSNPCabDEPOSITOSetText(CDSNPCabDEPOSITO, IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;
end;

procedure TFormNotaPedido.CDSNPDetCANTIDAD_PEDIDASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSNPDetCANTIDAD.AsFloat:=Sender.AsFloat;
end;

procedure TFormNotaPedido.CDSNPDetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSNPDetCODIGO_ALTERNATIVO.Value
  else
    Text:=CDSNPDetCODIGO.Value;

end;

procedure TFormNotaPedido.CDSNPDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR
  Enter:Char;
BEGIN
  Enter:=#13;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      IF not AsignarArticulo(DMMain_FD.SearchCodigo(Text,DSNPDet,VerCodigoAlternativo1.Checked)) THEN
        BEGIN
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.Esquema     := -1;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Dato        := Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSNPDet.State = dsBrowse THEN
                CDSNPDet.Edit;
              CDSNPDetCODIGOSetText(CDSNPDetCODIGO,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        DBGrillaDetalle.OnKeyPress(DBGrillaDetalle,Enter);
    end;

  //if (text<>'') and (text[1]<>#13) Then
//    begin
//      IF CDSNPDet.State = dsBrowse THEN
//        CDSNPDet.Edit;
//      Sender.AsString:=copy('00000000',1,8-Length(Text))+Text;
//      if Not(ASignarArticulo(Sender.AsString)) Then
//        begin
//          Sender.AsString:='';
//          ShowMessage('Dato no Válido');
//        end;
//    end;

end;

procedure TFormNotaPedido.DBGrillaDetalleColEnter(Sender: TObject);
begin
  if (FModo='N') then  // Nueva
    begin
      IF DBGrillaDetalle.SelectedIndex = 2 THEN
        DBGrillaDetalle.SelectedIndex := 3;
      IF DBGrillaDetalle.SelectedIndex >= 4 THEN
        DBGrillaDetalle.SelectedIndex := 3;

    end
  else
    if (FModo='R') then  // Revision
      begin
        IF DBGrillaDetalle.SelectedIndex = 2 THEN
          DBGrillaDetalle.SelectedIndex := 4;
        IF DBGrillaDetalle.SelectedIndex = 3 THEN
         DBGrillaDetalle.SelectedIndex := 4;
        IF DBGrillaDetalle.SelectedIndex >= 4 THEN
         DBGrillaDetalle.SelectedIndex := 4;

      end


end;

procedure TFormNotaPedido.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormNotaPedido.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormNotaPedido.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if (DSBase.State<>dsBrowse) and ((dbeFecha.Text='') or (dbeSucursal.Text='') or (CDSNPCabMUESTRACOMPROBANTE.AsString='') or (dbePrefijo.Text='') or
     (dbeNum.Text='')) then
  begin
    ShowMessage('Faltan datos en la cabecera.....!!!');
    dbeFecha.SetFocus;
  end;

end;

procedure TFormNotaPedido.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
var Tope:Byte;
begin
  inherited;
  if FModo = 'N' then
    Tope:=3
  else
    Tope:=4;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < Tope) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
         begin
           IF DBGrillaDetalle.SelectedField = CDSNPDetCODIGO THEN
             BuscarArticulo.Execute;
         end;
    END;

end;

procedure TFormNotaPedido.FormShow(Sender: TObject);
begin
  inherited;
  GridRefresh;
  chbPedidoPorDeposito.Enabled:=False;
  lbModo.Caption:='';
  if Modo='R' then
    begin
      lbModo.Caption:='Revision';
      chbPedidoPorDeposito.Enabled:=True;
    end
  else
    if Modo='N' then
      lbModo.Caption:='Ingreso Nueva';
  lbEstado.Caption:='';
  btNuevo.SetFocus;
end;

procedure TFormNotaPedido.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSNPDetMem.Close;
  CDSNPDetMem.Params.ParamByName('id').Clear;
  CDSNPDetMem.Open;
  CDSNPDetMem2.Close;
  CDSNPDetMem2.Params.ParamByName('id').Clear;
  CDSNPDetMem2.Open;

  CDSNPCab.Close;
  CDSNPCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSNPCab.Open;
  CDSNPDet.Close;
  CDSNPDet.Params.ParamByName('id_cab').Value:=StrToInt(DatoNew);
  CDSNPDet.Open;

  Modificar.Enabled := CDSNPCabPEDIDO.Value='N';
  Borrar.Enabled    := CDSNPCabPEDIDO.Value='N';

  if CDSNPCabPEDIDO.Value='P' Then
    begin
      lbEstado.Caption        := 'Confirmada';
      sbEstado.Panels[0].Text := 'Procesada/Confirmada,no se puede borrar ni modificar';
    end
  else
    if CDSNPCabPEDIDO.Value='N' Then
      begin
        lbEstado.Caption        := 'Sin Confirmar';
        sbEstado.Panels[0].Text := 'Sin Corfirmar';
      end
    else
      if CDSNPCabPEDIDO.Value='A' Then
        begin
          lbEstado.Caption        := 'Anulada';
          sbEstado.Panels[0].Text := 'Anulada';
        end;

  if CDSNPCabPEDIDO.Value='A' Then
    begin
      if Anulado=nil Then
         Anulado:=TPanel.Create(Self);
      Anulado.Parent     := Self;
      Anulado.Caption    := 'ANULADA';
      Anulado.Top        := Trunc(FormNotaPedido.Height*0.5)-20;
      Anulado.Left       := Trunc(FormNotaPedido.Width*0.5)-100;
      Anulado.Height     := 40;
      Anulado.Width      := 200;
      Anulado.Font.Size  := 30;
      Anulado.Font.Color := clRed;
      Anulado.Font.Name  := 'Arial';
      Anulado.Font.Style := [fsBold];
      Anulado.Visible    := True;
      ANulado.BringToFront;
    end
  else
    if Anulado<>nil Then
      begin
        FreeAndNil(Anulado);
      end;

  chbPedidoPorDeposito.Checked     := False;
  pnGeneraPedido.Visible           := chbPedidoPorDeposito.Checked;
  FormNotaPedido.Caption           := 'Notas de Pedido -- '+ CDSNPCabFECHA_HORA.AsString+'//'+
                                       Copy(CDSNPCabUSUARIO.Value,1,15);
  sbEstado.Panels[1].Text          := 'Nt:' + CDSNPCabNOTATRANS_NRO.Value;
  Borrar.Enabled                   := CDSNPCabPEDIDO.Value ='N';
  Modificar.Enabled                := CDSNPCabPEDIDO.Value ='N';
  Anular.Enabled                   := CDSNPCabPEDIDO.Value ='N';
  GenerarNotaTransferencia.Enabled := CDSNPCabPEDIDO.Value ='N';

end;

procedure TFormNotaPedido.RestaurarNPExecute(Sender: TObject);
begin
  inherited;
  if (VarIsNull(CDSNPCabNOTATRANS_ID.Value)) then
    begin
      DatoNew:=CDSNPCabID.AsString;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        CDSNPCab.Edit;
        CDSNPCabPEDIDO.Value:='N';
        CDSNPCab.Post;
        CDSNPCab.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo realizar la operación');
      end;
      Recuperar.Execute;
    end;
end;

procedure TFormNotaPedido.ConfirmaExecute(Sender: TObject);
begin
    if (dbeFecha.Text<>'') and (RxCSucursal.Text<>'') and
     (dbePrefijo.Text<>'') and (cbSucursal.Text<>'')  and
     (dbeNum.Text<>'') then
        begin
          if CDSNPDet.State in [dsInsert,dsEdit] Then
            CDSNPDet.post;
          CDSNPCab.Post;
          DatoNew  := IntToStr(CDSNPCabID.Value);
          TipoCpbte:= CDSNPCabTIPOCPBTE.Value;
          inherited;
          Recuperar.Execute;
      //    GenerarPedidoDetallado.Execute;
          IF (Imprime='S') then
            if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
              Imprimir.Execute;// ShowMessage('hacer impresion');//   Imprimir.Execute;
        end
   else
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END;
end;

procedure TFormNotaPedido.CDSNPDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSNPDetID.Value                := ibgNPDet.IncrementFD(1);
  CDSNPDetID_CAB.Value            := CDSNPCabID.Value;
  CDSNPDetPEDIDO.Value            := CDSNPCabPEDIDO.Value;
  CDSNPDetFECHA_PEDIDO.value      := CDSNPCabFECHA.Value;
  CDSNPDetNROCPBTE.Value          := CDSNPCabNROCPBTE.Value;
  CDSNPDetSOLICITANTE.Value       := CDSNPCabSOLICITANTE.Value;
  CDSNPDetCANTIDAD.AsFloat        := 0;
  CDSNPDetESTADO.Value            := 'N';
  CDSNPDetCANTIDAD_PEDIDA.AsFloat := 0;

end;

procedure TFormNotaPedido.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
  DMMain_FD.QOpciones.Open;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSNPCabID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSNPCabSUCURSAL.Value;
  QComprob.Open;
  frPedido.PrintOptions.Printer:=PrNomCpbte;
  frPedido.SelectPrinter;
  if MessageDlg('Imprime con detalles o no ..........',mtConfirmation,[mbYes,mbNo],0)=mrNo Then
    frPedido.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\'+QComprobREPORTE.AsString)
  else
    frPedido.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\NotaPedidoDetallada.fr3');
  frPedido.PrintOptions.Copies := QComprobCOPIAS.Value;


  DMMain_FD.QOpciones.Close;
  QComprob.Close;

  //  frFactura.PrepareReport;
  frPedido.ShowReport;

end;

procedure TFormNotaPedido.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frPedido.DesignReport;
end;

procedure TFormNotaPedido.pcDetallesEnter(Sender: TObject);
begin
  inherited;
  if (DSBase.State<>dsBrowse) and  ((CDSNPCabFECHA.AsString='') or
     (CDSNPCabSUCURSAL.AsString='') or
     (CDSNPCabID_TIPOCOMPROBANTE.AsString='') or
     (CDSNPCabNUMERO.AsString='') or
     (CDSNPCabSUC.AsString='') or
     (CDSNPCabDEPOSITO.AsString='') or
     (CDSNPCabSOLICITANTE.AsString=''))  then
  begin
    ShowMessage('Faltan datos en la cabecera');
    dbeFecha.SetFocus;
  end;

end;

procedure TFormNotaPedido.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag        := 19;
  FormBuscaCpbte.TipoCpbte1 := 'NP';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion := ' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte := FormBuscaCpbte.TipoCpbte;
      DatoNew   := IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
      if ConDetalle then
        GenerarPedidoDetallado.Execute;
    end;
  pcDetalles.ActivePageIndex := 0;
  DBGrillaDetalle.Width      := DBGrillaDetalle.Width+1;
  DBGrillaDetalle.Width      := DBGrillaDetalle.Width-1;
end;

procedure TFormNotaPedido.AgregarExecute(Sender: TObject);
begin
 if Anulado<>nil Then
   begin
     FreeAndNil(Anulado);
  end;
  CDSNPDetMem.Close;
  CDSNPDetMem.Params.ParamByName('id').Clear;
  CDSNPDetMem.Open;

  CDSNPDetMem2.Close;
  CDSNPDetMem2.Params.ParamByName('id').Clear;
  CDSNPDetMem2.Open;

  CDSNPCab.Close;
  CDSNPCab.Params.ParamByName('id').Clear;
  CDSNPCab.Open;

  CDSNPDet.Close;
  CDSNPDet.Params.ParamByName('id_cab').Clear;
  CDSNPDet.Open;
  inherited;
  pcDetalles.ActivePageIndex:=0;
  dbeFecha.SetFocus;
end;

procedure TFormNotaPedido.CancelarExecute(Sender: TObject);
begin
if Anulado<>nil Then
   begin
     FreeAndNil(Anulado);
  end;
  Abortar:=True;
  btGenerar.Enabled:=True;
  CDSNPDetMem.Close;
  CDSNPDetMem.Params.ParamByName('id').Clear;
  CDSNPDetMem.Open;

  CDSNPDetMem2.Close;
  CDSNPDetMem2.Params.ParamByName('id').Clear;
  CDSNPDetMem2.Open;

  CDSNPCab.Close;
  CDSNPCab.Params.ParamByName('id').clear;
  CDSNPCab.Open;

  CDSNPDet.Close;
  CDSNPDet.Params.ParamByName('id_cab').Clear;
  CDSNPDet.Open;

  inherited;
  chbPedidoPorDeposito.Checked:=False;
  pnGeneraPedido.Visible      :=chbPedidoPorDeposito.Checked;
end;

procedure TFormNotaPedido.CDSNPCabSOLICITANTESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarSolicitante(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;

end;

procedure TFormNotaPedido.BuscarSolicitanteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSolicitante.Close;
  CDSBuscaSolicitante.Open;
  comBuscadorSolicitante.Execute;
  if comBuscadorSolicitante.rOk Then
    CDSNPCabSOLICITANTESetText(CDSNPCabSOLICITANTE,comBuscadorSolicitante.Id);
  CDSBuscaSolicitante.Close;
end;

procedure TFormNotaPedido.rxcbRubroClick(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=CDSRubroCODIGO_RUBRO.Value;
  CDSSubRubro.Open;
  rxcbSubRubro.KeyValue:='';
end;

procedure TFormNotaPedido.rxcVendedorKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSNPCabSOLICITANTE.Clear;
      CDSNPCabMUESTRASOLICITANTE.Clear;
    end;

end;

procedure TFormNotaPedido.sbEstadoClick(Sender: TObject);
begin
  inherited;
  if ((CDSNPCabNOTATRANS_ID.AsString<>'') and (CDSNPCabNOTATRANS_ID.AsString<>'0') and (sbEstado.Cursor<>crDefault) ) then
    begin
      if not(Assigned(FormNota_TransfStock)) then
        FormNota_TransfStock:=TFormNota_TransfStock.Create(Application);
      FormNota_TransfStock.DatoNew  := CDSNPCabNOTATRANS_ID.AsString;
      FormNota_TransfStock.Recuperar.Execute;
    end;
end;

procedure TFormNotaPedido.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frPedido.DesignReport;
end;

procedure TFormNotaPedido.sbEstadoMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  if (( CDSNPCabNOTATRANS_ID.AsString<>'') and ( CDSNPCabNOTATRANS_ID.AsString<>'0')) then
    begin
      if (x>(sbEstado.Panels[0].Width+10)) and (x< (sbEstado.Panels[0].Width+sbEstado.Panels[1].Width) ) then
        sbEstado.Cursor:= crHandPoint
       else
         sbEstado.Cursor:=crDefault;
    end;
end;


procedure TFormNotaPedido.GridRefresh;
begin
  if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[0].Field      := CDSNPDetCODIGO_ALTERNATIVO
  else
    DBGrillaDetalle.Columns[0].Field      := CDSNPDetCODIGO;
  DBGrillaDetalle.Refresh;
end;

procedure TFormNotaPedido.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  GridRefresh;
end;

procedure TFormNotaPedido.GeneraPedidoExecute(Sender: TObject);
var evento:TNotifyEvent;
begin
  btGenerar.Enabled:=False;
  inherited;
  Abortar:=False;
  if Not(CDSNPDet.IsEmpty) then
    begin
      CDSNPDet.EmptyDataSet;
      CDSNPDetMem.Close;
      CDSNPDetMem.Params.ParamByName('id').Clear;
      CDSNPDetMem.Open;
      CDSNPDetMem2.Close;
      CDSNPDetMem2.Params.ParamByName('id').Clear;
      CDSNPDetMem2.Open;

      CDSNPDet.Close;
      CDSNPDet.Params.ParamByName('id_cab').Clear;//Value:=StrToInt(DatoNew);
      CDSNPDet.Open;

    end;

  if CDSNPCabDEPOSITO.AsString='' then
    raise Exception.Create('No hay deposito asignado....');

  CDSFaltante.close;
  CDSFaltante.CommandText:='';
  if rgNIvel.ItemIndex=0 Then
    CDSFaltante.CommandText:='select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_compra)-sum(dep.minimo/s.contenido_compra)) as Faltante,sum(dep.fisico/s.contenido_compra) from stock s '+
                      'left join depositostk dep on dep.codigo_stk=s.codigo_stk '+
                      'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
                      'and dep.codigo_deposito =' + ''+CDSNPCabDEPOSITO.AsString+'' + ' and dep.minimo>=0 '+
                      'and ( s.rubro_stk = :rubro or :rubro = ''***'' ) '+
                      'and (s.subrubro_stk = :SubRubro or :subRubro = ''*****'' ) '+
                      'and ( s.marca_stk = :marca or :marca = ''****'' ) '+
                      'group by s.codigo_stk,s.detalle_stk '+
                      'having '+
                      '(sum(dep.fisico)<sum(dep.minimo))'
  else
    if rgNIvel.ItemIndex=1 Then
      CDSFaltante.CommandText:='select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_compra)-sum(dep.medio/s.contenido_compra)) as Faltante,sum(dep.fisico/s.contenido_compra) from stock s '+
                        'left join depositostk dep on dep.codigo_stk=s.codigo_stk '+
                        'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
                        'and dep.codigo_deposito = ' + ''+CDSNPCabDEPOSITO.AsString+'' + ' and dep.medio>=0 '+
                        'and ( s.rubro_stk = :rubro or :rubro = ''***'' ) '+
                        'and (s.subrubro_stk = :SubRubro or :subRubro = ''*****'' ) '+
                        'and ( s.marca_stk = :marca or :marca = ''****'' ) '+
                        'group by s.codigo_stk,s.detalle_stk '+
                        'having '+
                        '(sum(dep.fisico)<sum(dep.medio))'
    else
      if rgNIvel.ItemIndex=2 Then
        CDSFaltante.CommandText:='select s.codigo_stk,s.detalle_stk,(sum(dep.fisico*0)) as Faltante,sum(dep.fisico/s.contenido_compra) from stock s '+
                          'left join depositostk dep on dep.codigo_stk=s.codigo_stk '+
                          'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
                          'and dep.codigo_deposito = ' + ''+CDSNPCabDEPOSITO.AsString+'' +
                          'and ( s.rubro_stk = :rubro or :rubro = ''***'' ) '+
                          'and (s.subrubro_stk = :SubRubro or :subRubro = ''*****'' ) '+
                          'and ( s.marca_stk = :marca or :marca = ''****'' ) '+
                          'group by s.codigo_stk,s.detalle_stk '
      else
        if (rgNIvel.ItemIndex=3) and (trim(ceProveedor.Text)<>'') Then
          CDSFaltante.CommandText:= 'select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_compra) - sum(dep.minimo/s.contenido_compra)) as Faltante, '+
                                    ' sum(dep.fisico/s.contenido_compra),p.codigo_proveedor from stock s '+
                                    'left join depositostk dep on dep.codigo_stk=s.codigo_stk'+
                                    ' join proveestock p on p.codigo_stk=s.codigo_stk and p.codigo_proveedor=' +''+ Trim(ceProveedor.Text)+'' +
                                    'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
                                    '      and dep.codigo_deposito ='+ ''+CDSNPCabDEPOSITO.AsString+'' + 'and dep.minimo>=0 ' +
                                    '      and ( s.rubro_stk = :rubro or :rubro = ''***'' ) ' +
                                    '      and (s.subrubro_stk = :SubRubro or :subRubro = ''*****'' ) ' +
                                    '      and ( s.marca_stk = :marca or :marca = ''****'' )'+
                                    ' group by s.codigo_stk,s.detalle_stk,p.codigo_proveedor ' +
                                    '   having  (sum(dep.fisico)<sum(dep.minimo))';


//  QFaltante.SQL.Add('select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_compra)-sum(dep.minimo/s.contenido_compra)) as Faltante,sum(dep.fisico) from stock s '+
//                    'left join depositostk dep on dep.codigo_stk=s.codigo_stk '+
//                    'left join depositos d on d.id=dep.codigo_deposito '+
//                    'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
//                    'and d.centraliza_stock='+'''S'''+' and dep.minimo>0 '+
//                    'group by s.codigo_stk,s.detalle_stk '+
//                    'having '+
//                    '(sum(dep.fisico)<sum(dep.minimo))')
//  else
//  QFaltante.SQL.Add('select s.codigo_stk,s.detalle_stk,(sum(dep.fisico/s.contenido_compra)-sum(dep.medio/s.contenido_compra)) as Faltante,sum(dep.fisico) from stock s '+
//                    'left join depositostk dep on dep.codigo_stk=s.codigo_stk '+
//                    'left join depositos d on d.id=dep.codigo_deposito '+
//                    'where s.clase_articulo in (2,3) and dep.codigo_Stk=s.codigo_stk '+
//                    'and d.centraliza_stock='+'''S'''+' and dep.medio>0 '+
//                    'group by s.codigo_stk,s.detalle_stk '+
//                    'having '+
//                    '(sum(dep.fisico)<sum(dep.medio))');


  CDSFaltante.Params.ParamByName('rubro').AsString   :=rxcbRubro.KeyValue;
  CDSFaltante.Params.ParamByName('subrubro').AsString:=rxcbSubRubro.KeyValue;
  CDSFaltante.Params.ParamByName('marca').AsString   :=dbcMarcas.KeyValue;

  CDSFaltante.Open;
  CDSFaltante.First;
 // evento:=wwCDSNPDet.AfterPost;


  if CDSFaltante.RecordCount-1>0 then
    pbProceso.Max:=CDSFaltante.RecordCount-1
  else
    pbProceso.Max:=0;

  pbProceso.Min           := 0;
  pbProceso.Position      := 0;
  sbEstado.Panels[0].Text := 'Generando detalle...';
  Application.ProcessMessages;
  CDSFaltante.First;
  CDSNPDet.AfterPost := nil;
  while not(CDSFaltante.Eof) and (Abortar=False)  do
    begin
      if (pbProceso.Position+1)<pbProceso.Max then
        pbProceso.Position:=pbProceso.Position+1;
      sbEstado.Panels[0].Text:='Generando detalle Reg:'+IntToStr(pbProceso.Position)+'/'+IntToStr(pbProceso.Max);
      Application.ProcessMessages;
     // Sleep(1);
      if (CDSFaltanteFALTANTE.Value<>0) and (rgNivel.ItemIndex <= 1) Then
        begin
          CDSNPDet.Append;
          CDSNPDetCODIGOSetText(CDSNPDetCODIGO,CDSFaltanteCODIGO_STK.Value);
          CDSNPDetCANTIDAD_PEDIDA.AsFloat := CDSFaltanteFALTANTE.AsFloat * -1;
          CDSNPDetCANTIDAD.AsFloat        := CDSFaltanteFALTANTE.AsFloat * -1;
          CDSNPDet.Post;
        end
      else
        if (rgNivel.ItemIndex > 1) Then
          begin
            CDSNPDet.Append;
            CDSNPDetCODIGOSetText(CDSNPDetCODIGO,CDSFaltanteCODIGO_STK.Value);
            CDSNPDetCANTIDAD_PEDIDA.AsFloat := 1;
            CDSNPDetCANTIDAD.AsFloat        := 1;
            CDSNPDet.Post;
          end;

      CDSFaltante.Next;
    end;
  if pbProceso.Position>0 then
    pbProceso.Position:=0;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
 // Sleep(1);
  CDSNPDet.AfterPost:= CDSNPDetAfterPost;
  if ConDetalle then
    GenerarPedidoDetallado.Execute;
  CDSFaltante.Close;
  if Abortar then
    begin
      CDSNPDetMem.Close;
      CDSNPDet.Close;
      CDSNPDet.Open;
    end;
  btGenerar.Enabled     := True;
  DBGrillaDetalle.Width := DBGrillaDetalle.Width+1;
  DBGrillaDetalle.Width := DBGrillaDetalle.Width-1;

end;


procedure TFormNotaPedido.ceProveedorButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
//  QProveedores.Close;
//  QProveedores.Open;
//  IF wwBuscadorProveedores.Execute THEN
    BEGIN
      ceProveedor.Text := FormBuscadorProveedor.Codigo;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := FormBuscadorProveedor.Codigo;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        BEGIN
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;
//          CorreoDestino          := CDSProveedorCORREO.Value;
         // TraerCtaCte.Execute;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
//  QProveedores.Close;
end;

procedure TFormNotaPedido.chbPedidoPorDepositoClick(Sender: TObject);
begin
  inherited;
  pnGeneraPedido.Enabled:=chbPedidoPorDeposito.Checked;
  pnGeneraPedido.Visible:=chbPedidoPorDeposito.Checked;
end;

procedure TFormNotaPedido.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled                 := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  pnPrincipal.Enabled              := True;
  pnCabecera.Enabled               := (DSBase.State<>dsBrowse) and (Not(DSBase.Dataset.IsEmpty));//DSBase.DataSet.State=dsInsert;
  pcDetalles.Enabled               := True;
  DBGrillaDetalle.ReadOnly         := DSBase.State=dsBrowse ;
  chbPedidoPorDeposito.Enabled     := DSBase.State<>dsBrowse;
  GenerarNotaTransferencia.Enabled := (CDSNPCabPEDIDO.Value='N') and  (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Borrar.Enabled                   := (CDSNPCabPEDIDO.Value='N') and  (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Modificar.Enabled                := (CDSNPCabPEDIDO.Value='N') and  (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Anular.Enabled                   := (CDSNPCabPEDIDO.Value='N') and  (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  abOpciones.Enabled               := (CDSNPCabPEDIDO.Value='N') and  (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  //dbgPedidoDetallado.ReadOnly:=DSBase.State=dsBrowse;
  RestaurarNP.Enabled              := ((CDSNPCabNOTATRANS_ID.AsString='') or (CDSNPCabNOTATRANS_ID.AsInteger=0));
end;

procedure TFormNotaPedido.CDSNPDetAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DBGrillaDetalle.SelectedIndex:=0;
end;

procedure TFormNotaPedido.GenerarNotaTransferenciaExecute(Sender: TObject);
var Nota_id:Integer;
    Nota_nro:String;
begin
  inherited;
  if CDSNPCabPEDIDO.Value='P' then
    Exception.Create(' Ya se hizo la Nota de transferecnia...');


  if (Not(CDSNPDet.IsEmpty)) and (DSBase.State in [dsBrowse])  then
    begin
      if Not(Assigned(FormBuscadorDepositos)) then
        FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
      FormBuscadorDepositos.Caption := 'Deposito Que Entrega';
      FormBuscadorDepositos.Deposito:= DepositoPorDefecto;
      FormBuscadorDepositos.ShowModal;
      if (FormBuscadorDepositos.ModalResult=mrok) Then
        begin
          if not(Assigned(FormNota_TransfStock)) then
            FormNota_TransfStock:=TFormNota_TransfStock.Create(Self);
          FormNota_TransfStock.DepositoPorDefecto:=FormBuscadorDepositos.Deposito;
          FormNota_TransfStock.Agregar.Execute;
          with DatosNotaTransferencia do
            begin

               CDSNCabFECHA.AsDateTime         := CDSNPCabFECHA.AsDateTime;
               CDSNCabDEP_DESTINO.Value        := CDSNPCabDEPOSITO.Value;
               CDSNCabMUESTRADESTINO.Value     := CDSNPCabMUESTRADEPOSITO.Value;
               CDSNCabSOLICITANTE.Value        := CDSNPCabSOLICITANTE.Value;
               CDSNCabMUESTRASOLICITANTE.Value := CDSNPCabMUESTRASOLICITANTE.Value;
               CDSNCabNPEDIDO_ID.Value         := CDSNPCabID.Value;
               CDSNCabNPEDIDO_TIPO.Value       := CDSNPCabTIPOCPBTE.Value;
               CDSNCabNPEDIDO_CLASE.Value      := CDSNPCabCLASECPBTE.Value;
               CDSNCabNPEDIDO_NROCPBTE.Value   := CDSNPCabNROCPBTE.Value;

               CDSNCabOBS1.Value :='';
               CDSNCabOBS2.Value :='';
               CDSNPDet.First;
               while not(CDSNPDet.Eof) do
                 begin
                   if Trunc(CDSNPDetCANTIDAD.AsFloat*100)>0 then
                     begin
                       CDSNDet.Append;
                       CDSNDetCODIGOSetText(CDSNDetCODIGO,CDSNPDetCODIGO.Value);
                       CDSNDetCANTIDAD_PEDIDA.AsFloat    := CDSNPDetCANTIDAD.AsFloat;
                       CDSNDetCANTIDAD_ENTREGADA.AsFloat := CDSNPDetCANTIDAD.AsFloat;
                       CDSNDetCANTIDAD_FALTANTE.AsFloat  := 0;
                    // CDSNDetCOSTO.Value:=wwCDSNPDetPRECIO.Value;
                       CDSNDet.Post;
                     end;
                   CDSNPDet.Next;
                 end;
               CDSNDet.First;
               if CDSNCabDEP_DESTINO.Value<>CDSNCabDEP_ORIGEN.Value then
                 begin
                   FormNota_TransfStock.Confirma.Execute;
                   MarcarNP.Execute;
                 end
               else
                 begin
                   ShowMessage('Los Deposito de Origen y destino no pueden ser iguales.....');
                  // FormNota_TransfStock.Cancelar.Execute;
                   FormNota_TransfStock.Close;
                 end;
               DatoNew := CDSNPCabID.AsString;
               Recuperar.Execute;
            end;
        end;
    end
  else
     ShowMessage('No hay cantidades Generar la Nota de Venta.....!!!');
end;



procedure TFormNotaPedido.GenerarPedidoDetalladoExecute(Sender: TObject);
VAR P:TBookmark;
MsgEstado :String;
begin
  inherited;
  MsgEstado:=  sbEstado.Panels[0].Text;

  CDSNPDetMem.Close;
  CDSNPDetMem.Params.ParamByName('id').Clear;
  CDSNPDetMem.Open;
  CDSNPDetMem2.Close;
  CDSNPDetMem2.Params.ParamByName('id').Clear;
  CDSNPDetMem2.Open;

  CDSNPDet.DisableControls;
  dbgPedidoDetallado.ReadOnly:=False;
  P := CDSNPDet.GetBookmark;
  CDSNPDet.First;
  if CDSNPDet.RecordCount-1>0 then
    pbProceso.Max     := CDSNPDet.RecordCount-1;
  pbProceso.Min     := 0;

  pbProceso.Position      := 0;
  sbEstado.Panels[0].Text := 'Generando detalle de Nota de Pedido...';
  Application.ProcessMessages;
  Sleep(1);
  while Not(CDSNPDet.Eof) Do
    begin
     // If CDSNPDet.RecordCount-1
      pbProceso.Position     := pbProceso.Position+1;
      sbEstado.Panels[0].Text:= 'Generando detalle de Nota de Pedido Reg:'+IntToStr(pbProceso.Position)+'/'+IntToStr(pbProceso.Max);
      Application.ProcessMessages;
      Sleep(1);
      CDSStock.Close;
      CDSStock.Params.ParamByName('codigo').Value := CDSNPDetCODIGO.Value;
      CDSStock.OPen;
      if CDSStockDEPRODUCCION.Value='S' Then
        agregar_detalle(CDSNPDetCODIGO.Value,CDSNPDetCANTIDAD.AsFloat)
      else
        begin
          CDSNPDetMem.Append;
          CDSNPDetMemID_CAB.Value   := CDSNPDetID.Value;
          CDSNPDetMemID.Value       := CDSNPDetMem.RecordCount+1;
          CDSNPDetMemCODIGO.value   := CDSNPDetCODIGO.Value;
          CDSNPDetMemDETALLE.value  := CDSNPDetDETALLE.Value;
          CDSNPDetMemUNIDADES.value := CDSStockUNIDAD_COMPRA.Value;
          CDSNPDetMemCANTIDAD.value := CDSNPDetCANTIDAD.Value;
          CDSNPDetMemMINIMO.value   := CDSNPDetMINIMO.Value;
          CDSNPDetMemACTUAL.value   := CDSNPDetACTUAL.Value;
          CDSNPDetMemMEDIO.Value    := CDSNPDetMEDIO.Value;
          CDSNPDetMemESTADO.Value   := CDSNPDetESTADO.Value;
          CDSNPDetMem.Post;
        end;
      CDSNPDet.Next;
    end;
  CDSNPDet.GotoBookmark(p);
  CDSNPDet.FreeBookmark(p);
  CDSNPDet.EnableControls;
  pbProceso.Position          := 0;
  sbEstado.Panels[0].Text     := MsgEstado;
  dbgPedidoDetallado.ReadOnly := True;
end;


procedure TFormNotaPedido.CDSNPDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  if ConDetalle then
   GenerarPedidoDetallado.Execute;
end;

procedure TFormNotaPedido.CDSNPDetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  if ConDetalle then
    GenerarPedidoDetallado.Execute;
end;

procedure TFormNotaPedido.rgNIvelClick(Sender: TObject);
begin
  inherited;
  CDSNPDet.Close;
  CDSNPDetMem.Close;
  CDSNPDet.Params.ParamByName('id_cab').Clear;
  CDSNPDet.Open;
  CDSNPDetMem.Params.ParamByName('id').Clear;
  CDSNPDetMem.Open;
  pnProveedor.Visible:=rgNIvel.ItemIndex=3;
end;

procedure TFormNotaPedido.CDSNPDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if CDSNPDetCODIGO.ASString='' Then
    begin
      ShowMessage('Código de artículo vacío....');
      sysutils.Abort;
    end;
end;

procedure TFormNotaPedido.BorrarExecute(Sender: TObject);
begin
  if CDSNPCabPEDIDO.Value='N' then
    begin
      inherited;
      CDSNPCab.Close;
      CDSNPCab.Params.ParamByName('id').Clear;
      CDSNPCab.Open;
      CDSNPDet.Close;
      CDSNPDet.Params.ParamByName('id_cab').Clear;
      CDSNPDet.Open;
      CDSNPDetMem.Close;
      CDSNPDetMem.Params.ParamByName('id').Clear;
      CDSNPDetMem.Open;
    end;
end;

procedure TFormNotaPedido.PrevExecute(Sender: TObject);
begin
  inherited;
  if ConDetalle then
   GenerarPedidoDetallado.Execute;
 end;

procedure TFormNotaPedido.NextExecute(Sender: TObject);
begin
  inherited;
  if ConDetalle then
    GenerarPedidoDetallado.Execute;
end;

procedure TFormNotaPedido.MarcarNPExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSNPCab.IsEmpty) and (DSBase.State=dsBrowse) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spMarcarNotaPedido.Close;
        spMarcarNotaPedido.Params.ParamByName('id').Value:=CDSNPCabID.Value;
        spMarcarNotaPedido.ExecProc;
        DMMain_fd.fdcGestion.Commit;
      except
        DMMain_fd.fdcGestion.Rollback;
        ShowMessage('No  se pudo marcar la Nota de Pedido como Procesada...');
      end;
      DatoNew:=IntToStr(CDSNPCabID.Value);
      Recuperar.Execute;
    end;
end;

procedure TFormNotaPedido.ModificarExecute(Sender: TObject);
begin
  inherited;
//  if CDSNPCabPEDIDO.Value='N' then
//    begin
//      CDSNPDet.First;
//      while NOt(CDSNPDet.Eof) do
//        begin
//          CDSNPDet.Edit;
//          CDSNPDetCANTIDAD.Value:=CDSNPDetCANTIDAD_PEDIDA.Value;
//          CDSNPDet.Next;
//        end;
//      CDSNPDet.First;
//    end;
  
end;

end.
