unit UListadoOPago;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, VCl.Dialogs,
  UABMBase,System.IOUtils,
  ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,ShellApi,
  ExtCtrls, DBCtrls, Grids, DBGrids, Mask,   frxClass, 
  frxDBSet,Librerias,Variants, ImgList, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvExMask, JvToolEdit, SqlExpr, Provider, DBClient, JvDBLookup, JvBaseEdits,
  JvExStdCtrls, JvCombobox,StrUtils,IniFiles, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, dxPSPrVwStd,
  dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxPSCore, dxPSBaseGridLnk,
  dxPSLVLnk, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, cxClasses, JvAppStorage, JvAppIniStorage,
  System.Actions, dxPScxPivotGridLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  Data.DB, dxPScxExtComCtrlsLnk, CompBuscador,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, AdvGridWorkbook, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  AdvSprd,VirtualUI_SDK, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light,Math, dxSkinBlack, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxPScxVGridLnk, cxCheckBox,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, DBAdvGrid,
  AdvOfficeButtons,  frCoreClasses, tmsAdvGridExcel, dxSkinWXI;

type
  TFormListadoOPago = class(TFormABMBase)
    DSOPago: TDataSource;
    DSCajaMov: TDataSource;
    DSSucursal: TDataSource;
    frDBOPago: TfrxDBDataset;
    frDBValores: TfrxDBDataset;
    frConsulta: TfrxReport;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    DSRetIB: TDataSource;
    DSRetGan: TDataSource;
    frDBGanacias: TfrxDBDataset;
    frDBIngBru: TfrxDBDataset;
    CDSOPago: TClientDataSet;
    DSPOPago: TDataSetProvider;
    CDSOPagoID_OP: TIntegerField;
    CDSOPagoTIPOCPBTE: TStringField;
    CDSOPagoCLASECPBTE: TStringField;
    CDSOPagoNROCPBTE: TStringField;
    VerCpbte: TAction;
    DSComprob: TDataSource;
    DSValores: TDataSource;
    frDBTipoValores: TfrxDBDataset;
    pcOrdenesPago: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    Label1: TLabel;
    JvLabel1: TJvLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    dbcComprobante: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    edTotalPagos: TJvCalcEdit;
    ExportarBcoFrances: TAction;
    CDSOPagoCODIGO: TStringField;
    CDSOPagoCUIT: TStringField;
    CDSOPagoDIRECCION: TStringField;
    CDSOPagoLOCALIDAD: TStringField;
    CDSOPagoCPOSTAL: TStringField;
    DSPMovAplicaCCCompra: TDataSetProvider;
    CDSMovAplicaCCCompra: TClientDataSet;
    CDSMovAplicaCCCompraID_MOV: TIntegerField;
    CDSMovAplicaCCCompraID_MOVCCCOMPRA: TIntegerField;
    CDSMovAplicaCCCompraFECHA: TSQLTimeStampField;
    CDSMovAplicaCCCompraPROVEEDOR: TStringField;
    CDSMovAplicaCCCompraID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraTIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraCLASECPBTE: TStringField;
    CDSMovAplicaCCCompraNUMEROCPBTE: TStringField;
    CDSMovAplicaCCCompraIMPORTE: TFMTBCDField;
    CDSMovAplicaCCCompraAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCCompraAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCCompraAPLICA_NETO: TFMTBCDField;
    CDSMovAplicaCCCompraDETALLE: TStringField;
    CDSMovAplicaCCCompraMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCCompraMUESTRATOTALFACTURA: TFMTBCDField;
    CDSMovAplicaCCCompraCONCILIADO: TStringField;
    DSMovAplicaCCCompra: TDataSource;
    ToolButton2: TToolButton;
    btFrances: TButton;
    Label3: TLabel;
    ceProveedor: TJvComboEdit;
    edNombreProveedor: TEdit;
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
    BuscarProveedor: TAction;
    chProveedores: TCheckBox;
    TabSheet1: TTabSheet;
    lwComprobantes: TListView;
    CDSOPagoENTREGADO: TStringField;
    BitBtn1: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxListViewReportLink;
    frAplicaciones: TfrxDBDataset;
    pag3: TTabSheet;
    btVer: TBitBtn;
    AdvSGridPagos: TAdvSpreadGrid;
    btExcel: TBitBtn;
    cbTipoPago: TComboBox;
    dbcBanco: TJvDBLookupCombo;
    Label4: TLabel;
    Label5: TLabel;
    DSPBanco: TDataSetProvider;
    CDSBanco: TClientDataSet;
    DSBanco: TDataSource;
    CDSBancoID_CUENTA: TIntegerField;
    CDSBancoID_TIPO_CTA: TIntegerField;
    CDSBancoNOMBRE: TStringField;
    CDSBancoNRO_CUENTA: TStringField;
    CDSBancoID_BANCO: TIntegerField;
    CDSBancoCUIT: TStringField;
    CDSBancoRAZONSOCIAL: TStringField;
    SaveDialog: TSaveDialog;
    JvLabel2: TJvLabel;
    QOPago: TFDQuery;
    CDSOPagoTOTAL: TFloatField;
    CDSOPagoCORREO: TStringField;
    CDSOPagoIMPORTEIIBB: TFloatField;
    CDSOPagoIMPORTERETGAN: TFloatField;
    QRetGan: TFDQuery;
    QRetIngBrDet: TFDQuery;
    QRetIB: TFDQuery;
    QCajaMov: TFDQuery;
    QValores: TFDQuery;
    QComprob: TFDQuery;
    QChePropios: TFDQuery;
    QChePropiosTOTALCHE: TFloatField;
    QSumaRetIIBB: TFDQuery;
    QSumaRetIIBBSUMARETIIBB: TFloatField;
    QSumRetGanancia: TFDQuery;
    QSumRetGananciaTOTALRETGANANCIA: TFloatField;
    QValoresID_CAJA_MOV: TIntegerField;
    QValoresNUMERO: TStringField;
    QValoresTIPO_COMPROB: TStringField;
    QValoresCLASE_COMPROB: TStringField;
    QValoresDETALLE: TStringField;
    QValoresIMPORTE: TFloatField;
    QValoresID_TPAGO: TIntegerField;
    QValoresTIPO: TStringField;
    QValoresBANCO: TStringField;
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
    QRetIBID: TIntegerField;
    QRetIBNROCPBTE: TStringField;
    QRetIBTOTAL: TFloatField;
    QRetIngBrDetID_DET: TIntegerField;
    QRetIngBrDetID_CAB: TIntegerField;
    QRetIngBrDetDETALLE: TStringField;
    QRetIngBrDetIMPORTE: TFloatField;
    QRetIngBrDetBASEIMPONIBLE: TFloatField;
    QRetIngBrDetPORCENTAJE: TFloatField;
    QRetIngBrDetRETENCION: TFloatField;
    QRetIngBrDetID_CPBTE_RETENIDO: TIntegerField;
    QRetIngBrDetTIPOCPBTE_RETENIDO: TStringField;
    QRetIngBrDetCLASECPBTE_RETENIDO: TStringField;
    CDSOPagoPROVINCIA: TIntegerField;
    ExportarBcoGalicia: TAction;
    Label15: TLabel;
    edRazonSocial: TMaskEdit;
    QCajaMovID_TPAGO: TIntegerField;
    QCajaMovHABER: TFloatField;
    QCajaMovDETALLE: TStringField;
    QRetGanCONCEPTO: TStringField;
    QRetGanIMPUESTO_RETENIDO: TFloatField;
    QRetGanNUMERO_RETENCION: TStringField;
    CDSOPagoTOTAL_NETO: TFloatField;
    CDSOPagoDESCUENTO: TFloatField;
    DBEdit1: TDBEdit;
    cxGMovValoresDBTableView1: TcxGridDBTableView;
    cxGMovValoresLevel1: TcxGridLevel;
    cxGMovValores: TcxGrid;
    cxGMovValoresDBTableView1NUMERO: TcxGridDBColumn;
    cxGMovValoresDBTableView1DETALLE: TcxGridDBColumn;
    cxGMovValoresDBTableView1IMPORTE: TcxGridDBColumn;
    cxGMovValoresDBTableView1TIPO: TcxGridDBColumn;
    cxGMovValoresDBTableView1BANCO: TcxGridDBColumn;
    cxGMovValoresDBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    JvLabel3: TJvLabel;
    cxGRetIIBBDBTableView1: TcxGridDBTableView;
    cxGRetIIBBLevel1: TcxGridLevel;
    cxGRetIIBB: TcxGrid;
    cxGAplicacionesDBTableView1: TcxGridDBTableView;
    cxGAplicacionesLevel1: TcxGridLevel;
    cxGAplicaciones: TcxGrid;
    cxGAplicacionesDBTableView1FECHA: TcxGridDBColumn;
    cxGAplicacionesDBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGAplicacionesDBTableView1APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGAplicacionesDBTableView1APLICA_NROCPBTE: TcxGridDBColumn;
    cxGAplicacionesDBTableView1IMPORTE: TcxGridDBColumn;
    cxStyle2: TcxStyle;
    cxGRetIIBBDBTableView1FECHA: TcxGridDBColumn;
    cxGRetIIBBDBTableView1DETALLE: TcxGridDBColumn;
    cxGRetIIBBDBTableView1PORCENTAJE: TcxGridDBColumn;
    cxGRetIIBBDBTableView1RETENCION: TcxGridDBColumn;
    cxGOPago: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1FECHA: TcxGridDBColumn;
    cxGridDBTableView1NROCPBTE: TcxGridDBColumn;
    cxGridDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1DESCUENTO: TcxGridDBColumn;
    btGalicia: TButton;
    Label9: TLabel;
    edCorreo: TEdit;
    CDSOPagoAUTORIZADO_NOMBRE: TStringField;
    CDSOPagoAUTORIZADO_TIPODOC: TStringField;
    CDSOPagoAUTORIZADO_NRODOC: TStringField;
    cxGridDBTableView1ENTREGADO: TcxGridDBColumn;
    chbProcesados: TCheckBox;
    QCambiaEstado: TFDQuery;
    QOPagoID_OP: TIntegerField;
    QOPagoTIPOCPBTE: TStringField;
    QOPagoCLASECPBTE: TStringField;
    QOPagoNROCPBTE: TStringField;
    QOPagoNOMBRE: TStringField;
    QOPagoTOTAL_NETO: TFloatField;
    QOPagoDESCUENTO: TFloatField;
    QOPagoTOTAL: TFloatField;
    QOPagoCODIGO: TStringField;
    QOPagoCUIT: TStringField;
    QOPagoDIRECCION: TStringField;
    QOPagoLOCALIDAD: TStringField;
    QOPagoCPOSTAL: TStringField;
    QOPagoENTREGADO: TStringField;
    QOPagoIMPORTEIIBB: TFloatField;
    QOPagoIMPORTERETGAN: TFloatField;
    QOPagoCORREO: TStringField;
    QOPagoPROVINCIA: TIntegerField;
    QOPagoAUTORIZADO_NOMBRE: TStringField;
    QOPagoAUTORIZADO_TIPODOC: TStringField;
    QOPagoAUTORIZADO_NRODOC: TStringField;
    btMarcar: TBitBtn;
    JvLabel4: TJvLabel;
    edFechaProceso: TJvDateEdit;
    chFechaProceso: TCheckBox;
    pagNumeros: TTabSheet;
    QOPagoNumeracion: TFDQuery;
    QOPagoNumeracionID_OP: TIntegerField;
    QOPagoNumeracionTIPOCPBTE: TStringField;
    QOPagoNumeracionCLASECPBTE: TStringField;
    QOPagoNumeracionNROCPBTE: TStringField;
    QOPagoNumeracionNOMBRE: TStringField;
    QOPagoNumeracionSUCOP: TStringField;
    QOPagoNumeracionNUMEROOP: TStringField;
    DSOPagoNumeracion: TDataSource;
    QOPagoNumeracionLETRAOP: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_OP: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1SUCOP: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROOP: TcxGridDBColumn;
    cxGrid1DBTableView1LETRAOP: TcxGridDBColumn;
    gbFrances: TGroupBox;
    Label7: TLabel;
    edNroCtaDebito: TMaskEdit;
    Label6: TLabel;
    edCuitEmpresa: TMaskEdit;
    Label8: TLabel;
    edSucursalEntrega: TMaskEdit;
    Label10: TLabel;
    edSucCtaDebito: TMaskEdit;
    Label11: TLabel;
    edDvCtaDebito: TMaskEdit;
    Label12: TLabel;
    edContratoProv: TMaskEdit;
    gbGalicia: TGroupBox;
    Label13: TLabel;
    edSiglasEmpresa: TMaskEdit;
    Label14: TLabel;
    edCtaPAP: TMaskEdit;
    QOPagoRAZONSOCIAL: TStringField;
    CDSOPagoRAZONSOCIAL: TStringField;
    QSumaRetIVA: TFDQuery;
    QRetIva: TFDQuery;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    DSRetIva: TDataSource;
    QSumaRetIVATOTALRETIVA: TFloatField;
    QRetIvaID: TIntegerField;
    QRetIvaID_OP: TIntegerField;
    QRetIvaNUMERO_RETENCION: TStringField;
    QRetIvaCODIGO_PROVEEDOR: TStringField;
    QRetIvaCODIGO_REGIMEN: TIntegerField;
    QRetIvaCONCEPTO: TStringField;
    QRetIvaTASA: TFloatField;
    QRetIvaBASE_IMPONIBLE: TFloatField;
    QRetIvaMINIMO_NO_IMPONIBLE: TFloatField;
    QRetIvaIMPUESTO_RETENIDO: TFloatField;
    QRetIvaOBSERVACIONES: TMemoField;
    QRetIvaANULADA: TStringField;
    QRetIvaESTADO: TStringField;
    chbPonerNroChe: TCheckBox;
    Label16: TLabel;
    Label17: TLabel;
    edDocAutorizado: TEdit;
    edAutorizado: TEdit;
    QOpMaxID: TFDQuery;
    QOpMinID: TFDQuery;
    QOpMaxIDMAX: TIntegerField;
    QOpMinIDMIN: TIntegerField;
    Panel2: TPanel;
    QOPagoFECHA: TSQLTimeStampField;
    CDSOPagoNOMBRE: TStringField;
    CDSOPagoFECHA: TSQLTimeStampField;
    QRetIBFECHA: TSQLTimeStampField;
    QRetIngBrDetFECHA: TSQLTimeStampField;
    QOPagoNumeracionFECHA: TSQLTimeStampField;
    QValoresFECHA: TSQLTimeStampField;
    QValoresFECHA_COBRO: TSQLTimeStampField;
    QRetIvaFECHA: TSQLTimeStampField;
    QRetGanFECHA: TSQLTimeStampField;
    chbEChek: TCheckBox;
    SaveDialog1: TSaveDialog;
    lbPath: TLabel;
    ModoContinuo: TTabSheet;
    Panel3: TPanel;
    btConsultar: TButton;
    btExcelLst: TButton;
    QListado: TFDQuery;
    CDSListado: TClientDataSet;
    DSPListado: TDataSetProvider;
    DSListado: TDataSource;
    CDSListadoFECHA: TSQLTimeStampField;
    CDSListadoCODIGO: TStringField;
    CDSListadoNOMBRE: TStringField;
    CDSListadoTIPOCPBTE: TStringField;
    CDSListadoCLASECPBTE: TStringField;
    CDSListadoNROCPBTE: TStringField;
    CDSListadoCUIT: TStringField;
    CDSListadoDETALLE: TStringField;
    CDSListadoNROCTA: TStringField;
    CDSListadoBANCO: TStringField;
    CDSListadoHABER: TFloatField;
    CDSListadoTOTAL: TFloatField;
    dbgListado: TDBAdvGrid;
    CDSListadoRETGANANCIA: TFloatField;
    CDSListadoRETIIBB: TFloatField;
    ToolButton3: TToolButton;
    CDSListadoNROCHQUE: TStringField;
    CDSListadoNROCHQUE3: TStringField;
    JvLabel5: TJvLabel;
    DBEdit2: TDBEdit;
    QOPagoCBU: TStringField;
    CDSOPagoCBU: TStringField;
    CDSListadoMUESTRACOMPROBANTE: TStringField;
    chbFiltros: TAdvOfficeCheckBox;
    AdvGridExcelI: TAdvGridExcelIO;
    QOPago_Nueva: TFDQuery;
    JvDBStatusLabel1: TJvDBStatusLabel;
    ExportarBcoMacro: TAction;
    gbBancoMacro: TGroupBox;
    edNroConvenioMacro: TEdit;
    Label18: TLabel;
    btBcoMacro: TButton;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CDSOPagoAfterScroll(DataSet: TDataSet);
    procedure VerCpbteExecute(Sender: TObject);
    procedure dbcComprobanteClick(Sender: TObject);
    procedure ExportarBcoFrancesExecute(Sender: TObject);
    procedure ceProveedorKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure lwComprobantesColumnClick(Sender: TObject; Column: TListColumn);
    procedure lwComprobantesCompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure chProveedoresClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure lwComprobantesCustomDrawItem(Sender: TCustomListView;
      Item: TListItem; State: TCustomDrawState; var DefaultDraw: Boolean);
    procedure btVerClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure CDSOPagoAfterDelete(DataSet: TDataSet);
    procedure cbTipoPagoClick(Sender: TObject);
    procedure dbcBancoClick(Sender: TObject);
    procedure ExportarBcoGaliciaExecute(Sender: TObject);
    procedure QValoresAfterOpen(DataSet: TDataSet);
    procedure QRetIBAfterOpen(DataSet: TDataSet);
    procedure cxGridDBTableView1DblClick(Sender: TObject);
    procedure CDSOPagoENTREGADOSetText(Sender: TField; const Text: string);
    procedure btMarcarClick(Sender: TObject);
    procedure QOPagoNumeracionSUCOPSetText(Sender: TField; const Text: string);
    procedure QOPagoNumeracionNUMEROOPSetText(Sender: TField;
      const Text: string);
    procedure QOPagoNumeracionAfterPost(DataSet: TDataSet);
    procedure btConsultarClick(Sender: TObject);
    procedure btExcelLstClick(Sender: TObject);

    procedure chbFiltrosClick(Sender: TObject);
    procedure dbgListadoGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure lbPathClick(Sender: TObject);
    procedure AdvGridExcelIExportColumnFormat(Sender: TObject; GridCol, GridRow,
      XlsCol, XlsRow: Integer; const Value: WideString;
      var ExportCellAsString: Boolean);
    procedure dbgListadoGetFormat(Sender: TObject; ACol: Integer;
      var AStyle: TSortStyle; var aPrefix, aSuffix: string);
    procedure ExportarBcoMacroExecute(Sender: TObject);
   
  private
    { Private declarations }
  public
    //Cabecera de Lote
    IdentRegistro,       TipoReg,         TipoDocEmpre,       NroCuitEmpresa,
    Secuencia,           Moneda,          Importe,            FormaPago,
    FormaCobro,          DisponPago,      Deposito,           FechaEmision,
    FechaEntrega,        FechaPago,       Entidad,            SuctaDebito,
    DvCtaDebito,         TipoCtaDebito,   MonedaCtaDebito,    NroCtaDebito,
    CantidadInst,        EntregaLote,     SucEntregaLote,     Filler,  FillerNNN,
    LibreImpresion,      NombreFichero,   FechaProceso,       Contratoprov :String;
    // reg de Instrumentos movimientos
    ProNroBeneficiario,  NroMinuta,       NroCertRetGanancia, RegimenGanancia,
    ImpRetGanancia,      NroCertRetIva,   RegimenIva,         ImpRetIVA,
    AcredASup,
    IPErmFin,            CliAje,          NCuitPago,          NomePago,
    TipoDocumento,       NroDocumento,    SucEntrega,         DisponP,
    NroCheque,           CodDevolucion,   DescDevolucion:String;
    // Registro de mas de Un cheque
    Pro_Cbu_Nro,         Fecha_Pago,      Forma_Pago,         Dispon_p,
    Nro_Cheque,          Cod_Devolucion,  Desc_Devolucion,    Filler_00,
    Filler_01,           Filler_02,       Filler_03,          Filler_04,
    Filler_05  :String;

    // Reg de detalle Minutas
    FechaCompMinuta,  DescCompMinuta,    NroCompMinuta, TipoCompMinuta, CompDbCr,
    CodImpuesto,      ImporteCompMinuta, Alicuota1Minuta, Importe1Minuta,Alicuota2Minuta,
    Importe2Minuta: String;
    // Reg Cab de IIBB
    NroCertRetIB,        CodPcia,         NroIngBBen:String;
    // Reg detalle IIBB
    FechaCompIB,  DescCompIB,  TipoCompIB,  NroCompIB,  ImporteCompIB, BaseImpoIB,
    Alicuota1IB,  Importe1IB,  Alicuota2IB, Importe2IB, Alicuota3IB,   Importe3IB,
    CodigoDbCr:String;
    //Otras Retenciones
    CodigoRetencion,  NumeroCertificado,  FechaRetencion,  DescripcionMotivo,  TipoComprobante,
    NroCoprobante,    ImporteComprobante, BaseImponible,
    Alicuota1, Importe1,
    Alicuota2, Importe2,
    Alicuota3, Importe3, NroMatriculaProv:String;
    //datosdemograficos
    ProNroOrd, ProNroBenef,   ProEstBenef,ProDoctoTip,    ProDoctoNro,     ProdDenomina,
    ProCatego, ProPermitFinan,ProCustTip, ProCusSuc,      ProCusNro,       ProCbuNro,
    ProIngBrts,ProCalle,      ProNumero,  ProDpto,        ProPiso,         ProLocaldad,
    ProCPostal,ProCodPais,    ProEMail,   ProCalleEntrega,ProNumeroEntrega,ProDeptoEntrega, ProCodProv,
    ProPisoEntrega,   ProLocalidadEntrega,ProCPostalEntrega,ProCodProvEntrega,
    ProCodPaisEntrega,ProTelefTip,        ProTelefPre,      ProTelefCar,
    ProTelefNro,      ProTelefInt,        ProTeleAlterTip,  ProTelefAlterPref,
    ProTelefAlterCar, ProTelefAlterNro,   ProTelefAlterInt,
    ProAutorizaTip1,  ProAutorizaDoc1,    ProAutorizaNom1,
    ProAutorizaTip2,  ProAutorizaDoc2,    ProAutorizaNom2,
    ProAutorizaTip3,  ProAutorizaDoc3,    ProAutorizaNom3,
    ProDatos,ProMinuta:String;
    // pie de registro
    SumaImporte,CanPagos,TotalReg:String;
    LstOpago:TIniFile;
    ColumnToSort : Integer;
    //**********************************************************************************************


    procedure Sumar;
    function SumaOrdenes:Extended;
    Function SumaCheques:String;
    Function SumaAplicaciones:String;
    Function SumaIngresosBrutos:String;
    Function SumaGanancias:String;
    Function SumaRetencionesIVA:String;

    { Public declarations }
  end;

  // Banco Galicia
  //**********************************************************************************************
  type
    TGaliciaPC = record
      CodigoDeRegistro,      TipoDeLista,         IdentificacionLista, FechaDeProceso,    CuentaEspecifica,
      RazonSocialEmpresa,    CantidadMovimientos, ImporteTotalPagos,   FechaDePagoDispos, FechaDeEmision,
      SucursalDistribuidora, SinUso_1,            MonedaEspecie,       SinUso_2,          EspacioLibre :String;
    end;

  Type
   TGaliciaPD=Record
     CodigoDeRegistro, NumeroRegistro,      ImporteDelCheque,  SucursalDistribuidor,  RazonSocialBenefic,
     DireccionBenific, LocalidadBenific,    CodPostalBenific,  NroRecibo,             CUITBenefic,
     TipoDocumentoReq, TelefonoBenefic,     NombreRetirante,   TipoNroDocumRetirante, CondicionCheque,
     SinUso,
     CodigoAviso,      CodigoRecibo,        EspacioLibre_1,    OrdenDePAgo,           Moneda,
     FechaDispoFondos, CodPciaBeneficiario, InformacionCompra, DestinoComprob,        MarcaAutogestion,
     EspacioLibre_2  :String;
   End;

  type
    TGaliciaO1=record
      CodigoReg,     NroDeOrdenPago,   ImporteTotalFact, ImporteTotalNotaDeb,ImporteTotalNotaCred, ImporteTotalA_Pagar,
      SignoTotalAPagar, CondicionPago,
      Concepto_1, Importe_1, Concepto_2, Importe_2,
      Concepto_3, Importe_3, Concepto_4, Importe_4,
      Concepto_5, Importe_5, Concepto_6, Importe_6,
      Concepto_7, Importe_7, Concepto_8, Importe_8,
      Concepto_9, Importe_9, Concepto_10,Importe_10, EspacioLibre:String;
    end;

    type
      TGaliciaO2=record
        CodigoReg,
        Concepto_11, Importe_11, Concepto_12, Importe_12,
        Concepto_13, Importe_13, Concepto_14, Importe_14,
        Concepto_15, Importe_15, Concepto_16, Importe_16,
        Concepto_17, Importe_17, Concepto_18, Importe_18,
        Concepto_19, Importe_19, Concepto_20, Importe_20,
        Concepto_21, Importe_21, Concepto_22, Importe_22,
        Concepto_23, Importe_23, Concepto_24, Importe_24,
        Concepto_25, Importe_25, Concepto_26, Importe_26,EspacioLibre:String;
      end;

    type
      TGaliciaFC=record
        CodigoDeReistro, NumeroRegistri,
        TipoDoumento_1, NroComprobante_1, Concepto_1, Fecha_1, Importe_11, Importe_12, Importe_13,
        TipoDoumento_2, NroComprobante_2, Concepto_2, Fecha_2, Importe_21, Importe_22, Importe_23,
        Alicuota_1,     Alicuota_2,       EspacioLibre :String;
      end;

    type
      TGaliciaC1=record
        CodigoRegistro, TipoRetencion,   TextoResolucion,    TipoImpuesto,     CodigoProvincia,    TituloRetMunicipal,
        CentroEmisor,   NroCertificado,  NroAgenteRetencion, ConFrentImpuesto, NroIIBBDelRetenido, NroComprobante,
        FechaRetencion, MesAnoDecJurada, EspacioLibre :String;
      end;

    type
      TGaliciaC2=record
        CodigoRegistro,CentroEmisor,NumeroCertificado,ConceptoRetencion,
        TipoImporte_1,SignoImporte_1,Importe_1,
        TipoImporte_2,SignoImporte_2,Importe_2,
        TipoImporte_3,SignoImporte_3,Importe_3,
        TipoImporte_4,SignoImporte_4,Importe_4,
        TipoImporte_5,SignoImporte_5,Importe_5,
        TipoImporte_6,SignoImporte_6,Importe_6,EspacioLibre :String;
      end;
  //**********************************************************************************************
  // Bnf.txt ---- Banco Macro
    type
      TMacroBNF=record
        tdd_bnf_id           : String[2];
        bnf_numdoc           : String[11];
        cib_id               : String[2];
        cng_id               : String[2];
        cni_id               : string[2];
        bnf_razonsocial      : string[40];
        bnf_calle            : String[60];
        bnf_numpuerta        : String[8];
        bnf_unidadfuncion    : string[20];
        ccp_id               : string[4];
        bnf_numib            : string[20];
        Email                : string[50];
        Piso                 : string[3];
        Pais                 : string[20];
        Provincia            : String[30];
        Ciudad               : String[60];
      end;
      // Opg.txt ---- Banco Macro
    type
      TMacroOPG=record
        tdd_bnf_id           : string[2];
        bnf_numdoc           : String[11];
        suc_entrega          : string[3];
        Opg_idopgcli         : string[30];
        Opg_ordenalt         : String[120];
        Opg_imp_pago         : string[15];
        cta_cuentadebito     : String[15];
        opg_cuentapago       : string[22];
        mpg_id               : string[2];
        opg_mar_regchq       : string[1];
        opg_fec_pago         : string[10];
        opg_fec_pagodiferido : String[10];
        usr_firmante1        : string[10];
        usr_firmante2        : string[10];
        usr_firmante3        : String[10];
      end;
    // rtn.txt ---- Retenciones/Liquidaciones ---- Banco Macro
    type
      TMacroRTN=record
        Opg_idopgcli         : string[30];
        Tipo_id              : string[2];
        Zona_id              : String[2];
        Secuencia_id         : string[4] ;
        Texto                : string[120];
        Usr_id               : string[10];
      end;


  // Banco Frances
  //**********************************************************************************************
    type
      TFrances_090=record
        IDENT_REGISTRO,      TIPO_REG,            TIPO_DOC_EMPRE,      NRO_CUIT_EMPRE,      SECUENCIA,
        PRO_NRO_ORD,         PRO_NRO_BENEF,       PRO_EST_BENEF,       PRO_DOCTO_TIP,       PRO_DOCTO_NRO,
        PRO_DENOMINA,        PRO_CATEGO,          PRO_PERMIT_FINAN,    PRO_CUS_TIP,         PRO_CUS_SUC,
        PRO_CUS_NRO,         PRO_CBU_NRO,         PRO_INGBRTS,         PRO_CALLE,           PRO_NUMERO,
        PRO_DEPTO,           PRO_PISO,            PRO_LOCALID,         PRO_CPOSTAL,         PRO_CODPROV,
        PRO_CODPAIS,         PRO_EMAIL,           PRO_CALLE_ENTREGA,   PRO_NUMERO_ENTREGA,  PRO_DEPTO_ENTREGA,
        PRO_PISO_ENTREGA,    PRO_LOCALID_ENTREGA, PRO_CPOSTAL_ENTREGA, PRO_CODPROV_ENTREGA, PRO_CODPAIS_ENTREGA,
        PRO_TELEF_TIP,       PRO_TELEF_PRE,       PRO_TELEF_CAR,       PRO_TELEF_NRO,       PRO_TELEF_INT,
        PRO_TELEF_ALTER_TIP, PRO_TELEF_ALTER_PRE, PRO_TELEF_ALTER_CAR, PRO_TELEF_ALTER_NRO, PRO_TELEF_ALTER_INT,
        PRO_AUTORIZA_NOM1,   PRO_AUTORIZA_TIP1,   PRO_AUTORIZA_DOC1,   PRO_AUTORIZA_NOM2,   PRO_AUTORIZA_TIP2,
        PRO_AUTORIZA_DOC2,   PRO_AUTORIZA_NOM3,   PRO_AUTORIZA_TIP3,   PRO_AUTORIZA_DOC3,   PRO_DATOS,
        PRO_MINUTA,          FILLER : String
      end;
  //**********************************************************************************************

var
  FormListadoOPago: TFormListadoOPago;

  GaliciaPC : TGaliciaPC;
  GaliciaPD : TGaliciaPD;
  GaliciaO1 : TGaliciaO1;
  GaliciaO2 : TGaliciaO2;
  GaliciaFC : TGaliciaFC;
  GaliciaC1 : TGaliciaC1;
  GaliciaC2 : TGaliciaC2;
  Frances090: TFrances_090;

  MacroBNF:TMacroBNF;
  MacroOPG:TMacroOPG;
  MacroRTN:TMacroRTN;

implementation

uses DMBuscadoresForm, UOPago_2, UBuscadorProveedor,UDMain_FD;
{$R *.DFM}


function TFormListadoOPago.SumaAplicaciones: String;
var Importe:Extended;
    Importe_Str:String;
begin
  Importe:=0;
  if CDSMovAplicaCCCompra.RecordCount>1 then
    begin
      while Not(CDSMovAplicaCCCompra.Eof) do
        begin
          Importe_Str  := FormatFloat('00000000000.00',CDSMovAplicaCCCompraIMPORTE.AsFloat);
          Importe      := Importe + StrToFloat(Importe_Str);
          CDSMovAplicaCCCompra.Next;
        end;
    end;
  Importe_Str      := FormatFloat('00000000000.00',Importe);
  Result:=Importe_Str;
end;


function TFormListadoOPago.SumaCheques: String;
var aux:Extended;
begin
  Aux:=0;
  QValores.First;
  if QValores.RecordCount>1 then
    begin
      while Not(QValores.Eof) do
        begin
          Aux       := Aux + QValoresIMPORTE.AsFloat;
          QValores.Next;
        end;
    end
  else
    Aux    := QValoresIMPORTE.AsFloat;
  Result   := FormatFloat('00000000000.00',Aux);
end;


function TFormListadoOPago.SumaGanancias: String;
Var ganc:Extended;
begin
  Ganc:=0;
  if CDSOPagoIMPORTERETGAN.ASString<>'' then
    begin
      GANC:=RoundTo(CDSOPagoIMPORTERETGAN.AsFloat,-3);
      GANC:=RoundTo(Ganc,-2);
    end;
  Result   := FormatFloat('0000000000.00',ganc);

end;

function TFormListadoOPago.SumaIngresosBrutos: String;
var IIBB,IIBB_Total:extended;
begin
 // Acumulo los imprtes parciales de IIBB
  IIBB_Total  :=0;
  QRetIngBrDet.First;
  if QRetIngBrDet.RecordCount>1 then
    begin
      while Not(QRetIngBrDet.Eof) do
        begin
          IIBB       := RoundTo(QRetIngBrDetRETENCION.AsFloat,-3);
          IIBB       := RoundTo(IIBB,-2);
          IIBB_Total := IIBB_Total + IIBB;
          QRetIngBrDet.Next;
        end;
    end
  else
    if QRetIngBrDet.RecordCount=1 then
      begin
        IIBB       := RoundTo(QRetIngBrDetRETENCION.AsFloat,-3);
        IIBB       := RoundTo(IIBB,-2);
        IIBB_Total := IIBB_Total + IIBB;
      end;
  Result   := FormatFloat('0000000000.00',IIBB_Total);
end;

function TFormListadoOPago.SumaOrdenes:Extended;
var
  IIBB,GANC,RETIVA,ImporteIIBB,ImporteR_IVA,
  SumaTodo03620  :Extended;
begin
    //030620****************** Tipo 20 ***************
    SumaTodo03620 := 0;

    CDSOPago.First;
    while Not(CDSOPago.Eof) do
      begin

        QRetIB.Close;
        QRetIB.ParamByName('id').Value  := CDSOPagoID_OP.Value;
        QRetIB.Open;

        QRetGan.Close;
        QRetGan.ParamByName('id').Value := CDSOPagoID_OP.Value;
        QRetGan.Open;

        QRetIVA.Close;
        QRetIVA.ParamByName('id').Value := CDSOPagoID_OP.Value;
        QRetIVA.Open;


        IIBB:=0;GANC:=0;RETIVA:=0;
        // Acumulo los imprtes parciales de IIBB
        while Not(QRetIngBrDet.Eof) do
          begin
            ImporteIIBB   := RoundTo(QRetIngBrDetRETENCION.AsFloat,-3);
            ImporteIIBB   := RoundTo(ImporteIIBB,-2);
            IIBB          := IIBB + ImporteIIBB;
            QRetIngBrDet.Next;
           end;

        while Not(QRetIVA.Eof) do
          begin
            ImporteR_IVA   := RoundTo(QRetIvaIMPUESTO_RETENIDO.AsFloat,-3);
            ImporteR_IVA   := RoundTo(ImporteR_IVA,-2);
            RETIVA         := RETIVA + ImporteR_IVA;
            QRetIva.Next;
           end;

        if CDSOPagoIMPORTERETGAN.ASString<>'' then
          begin
            GANC := RoundTo(CDSOPagoIMPORTERETGAN.AsFloat,-3);
            GANC := RoundTo(Ganc,-2);
          end;

        Importe                := FormatFloat('0000000000.00',CDSOPagoTOTAL.AsFloat-IIBB-GANC-RETIVA);
      // Delete(Importe,pos('.',Importe),1);
        SumaTodo03620          := SumaTodo03620 + StrToFloat(Importe);
        CDSOPago.Next;
      end;
   result:=SumaTodo03620;
end;


procedure TFormListadoOPago.Sumar;
var CDSClone:TClientDataSet;
begin
  edTotalPagos.Value   :=0;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSOPago,True);
  CDSClone.First;
  while Not(CDSClone.Eof) do
    begin
      edTotalPagos.Value    := edTotalPagos.Value + CDSClone.FieldByName('total').AsFloat;
      CDSClone.Next;
    end;
  CDSClone.EnableControls;
  CDSClone.Free;
end;


function TFormListadoOPago.SumaRetencionesIVA: String;
var RETIVA,RETIVA_Total:extended;
begin
 // Acumulo los imprtes parciales de IIBB
  RETIVA_Total  :=0;
  QRetIva.First;
  if QRetIva.RecordCount>1 then
    begin
      while Not(QRetIva.Eof) do
        begin
          RETIVA       := RoundTo(QRetIvaIMPUESTO_RETENIDO.AsFloat,-3);
          RETIVA       := RoundTo(RETIVA,-2);
          RETIVA_Total := RETIVA_Total + RETIVA;
          QRetIva.Next;
        end;
    end;
  Result   := FormatFloat('0000000000.00',RETIVA_Total);
end;

procedure TFormListadoOPago.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoOPago.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  begin
    IF (Assigned(FormOPago_2)) THEN
      FreeAndNil(FormOPago_2);

    IF NOT (Assigned(FormOPago_2)) THEN
      FormOPago_2:= TFormOPago_2.Create(self);
    FormOPago_2.DatoNew    := CDSOPagoID_OP.AsString;
    FormOPago_2.TipoCpbte  := CDSOPagoTIPOCPBTE.AsString;
    FormOPago_2.Recuperar.Execute;
    FormOPago_2.Show;
  end;
end;

procedure TFormListadoOPago.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QSucursal.Close;
  QSucursal.Open;
  pcOrdenesPago.ActivePageIndex:=0;
  QComprob.Close;
  QComprob.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprob.Open;
  if Not(QComprob.IsEmpty) then
    QComprob.First;
  CDSBanco.Close;
  CDSBanco.Open;

  LstOpago := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstOPago.ini');
 //*************************************************************
  edNroCtaDebito.Text     := LstOPago.ReadString('Datos', 'NroDebito', '');
  edCuitEmpresa.Text      := LstOPago.ReadString('Datos', 'NroCuit',   '');
  edSucursalEntrega.Text  := LstOPago.ReadString('Datos', 'SucEntrega', '');
  edSucCtaDebito.Text     := LstOPago.ReadString('Datos', 'SucCtaDebito', '');
  edDvCtaDebito.Text      := LstOPago.ReadString('Datos', 'DVCtaDebito', '');
  edContratoProv.Text     := LstOPago.ReadString('Datos', 'ContratoProv', '');
  edCorreo.Text           := LstOPago.ReadString('Datos', 'correo', 'prueba@mail.com');
  edRazonSocial.Text      := LstOPago.ReadString('Datos', 'RazonSocial', '');
  chbPonerNroChe.Checked  := LstOPago.ReadBool('Datos', 'NroChe', False);
  edAutorizado.Text       := LstOPago.ReadString('Datos', 'Autorizado', '');
  edDocAutorizado.Text    := LstOPago.ReadString('Datos', 'Documento', '');
  edNroConvenioMacro.Text := LstOPago.ReadString('Datos', 'ConvenioMacro', '');

  LstOPago.Free;
 
end;



procedure TFormListadoOPago.AdvGridExcelIExportColumnFormat(Sender: TObject;
  GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var ExportCellAsString: Boolean);
begin
  inherited;
  ExportCellAsString:= (GridCol>1) and (GridCol<13);
  ExportCellAsString:= Not((GridCol>=13) and (GridCol<17));

end;

procedure TFormListadoOPago.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview();
end;

procedure TFormListadoOPago.btMarcarClick(Sender: TObject);
var i:Integer;
lista:TListItem;
begin
  inherited;
  for I := 0 to lwComprobantes.Items.Count - 1 do
    begin
      lista:=lwComprobantes.Items[i];
      QCambiaEstado.Close;
      QCambiaEstado.ParamByName('id').Value:= Lista.SubItems.Strings[4];
      if lista.Checked then
        QCambiaEstado.ParamByName('estado').Value:= 'S'
      else
        QCambiaEstado.ParamByName('estado').Value:= 'N';
      QCambiaEstado.ExecSQL;
      QCambiaEstado.Close;
    end;
end;

procedure TFormListadoOPago.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSOPago.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='OPago';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              AdvSGridPagos.SaveToXLS(SaveDialog.FileName)
            else
              AdvSGridPagos.SaveToXLS(SaveDialog.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    END;
end;

procedure TFormListadoOPago.btExcelLstClick(Sender: TObject);
var extension:String;
begin
  inherited;
//  dbgListado.ExcelClipboardFormat:=True;
//  if SaveDialog.Execute() Then
//    begin
//      extension:=Trim(LowerCase(ExtractFileExt(SaveDialog.FileName)));
//      if extension='' Then
//        dbgListado.SaveToXLS(SaveDialog.FileName+'.xls')
//      else
//        dbgListado.SaveToXLS(SaveDialog.FileName);
//    end;

  AdvGridExcelI.DateFormat  := 'dd/mm/yyyy';
  AdvGridExcelI.XlsStartRow := 0;
  AdvGridExcelI.Options.ExportCellFormats:=True;// SaveHiddenCells:=True;
 // AdvGridExcelI.
  if SaveDialog.Execute() Then
    begin
      extension:=Trim(LowerCase(ExtractFileExt(SaveDialog.FileName)));
      if extension='' Then
        AdvGridExcelI.XLSExport(SaveDialog.FileName+'.xls')
      else
        AdvGridExcelI.XLSExport(SaveDialog.FileName);
    end;

end;

procedure TFormListadoOPago.btVerClick(Sender: TObject);
var Contador:Integer;
    Cel0,CelFin:Integer;
begin
  inherited;
  CDSOPago.First;
  Contador:=1;
  AdvSGridPagos.ClearNormalCells;
  AdvSGridPagos.RowCount := CDSOPago.RecordCount+60;
  AdvSGridPagos.ColCount := 8;
  while not(CDSOPago.Eof) do
    begin
      AdvSGridPagos.Cells [1,Contador]     := CDSOPagoCODIGO.AsString;
      AdvSGridPagos.Cells [2,Contador]     := CDSOPagoRAZONSOCIAL.AsString;
      AdvSGridPagos.Dates [3,Contador]     := CDSOPagoFECHA.AsDateTime;
      AdvSGridPagos.Cells [4,Contador]     := CDSOPagoNROCPBTE.AsString;
      AdvSGridPagos.Floats[7,Contador]     := CDSOPagoTOTAL.AsFloat;
      AdvSGridPagos.Alignments[7,Contador] := taRightJustify;

      AdvSGridPagos.FontStyles[1,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[2,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[3,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[4,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[5,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
      AdvSGridPagos.FontStyles[7,Contador] := [fsBold];

      //AdvSGridPagos.ColumnSize.StretchAll:=True;

      if Not(QValores.IsEmpty) then
        begin
          //Inc(Contador);
          Cel0:=Contador;
          AdvSGridPagos.RowCount:=AdvSGridPagos.RowCount+QValores.RecordCount;;
          while Not(QValores.Eof) do
            begin
              Inc(Contador);
              AdvSGridPagos.Cells [3,Contador]     := QValoresTIPO.AsString;
              AdvSGridPagos.Cells [2,Contador]     := QValoresBANCO.AsString;
              AdvSGridPagos.Cells [4,Contador]     := QValoresDETALLE.AsString;
              AdvSGridPagos.Cells [5,Contador]     := QValoresNUMERO.AsString;
              AdvSGridPagos.Floats[6,Contador]     := QValoresIMPORTE.AsFloat;
              AdvSGridPagos.Alignments[6,Contador] := taRightJustify;
              AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
              QValores.Next;
            end;
        end;
      if Not(QRetIB.IsEmpty) then
        begin
          Inc(Contador);
          AdvSGridPagos.RowCount:=AdvSGridPagos.RowCount+2;
          while Not(QRetIB.Eof) do
            begin
              AdvSGridPagos.Cells [4,Contador]     := 'Ret.II.B';
              AdvSGridPagos.Cells [5,Contador]     := QRetIBNROCPBTE.AsString;
              AdvSGridPagos.Floats[6,Contador]     := QRetIBTOTAL.AsFloat;
              AdvSGridPagos.Alignments[6,Contador] := taRightJustify;
              AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
              QRetIB.Next;
            end;
        end;

      if Not(QRetGan.IsEmpty) then
        begin
          Inc(Contador);
          AdvSGridPagos.RowCount:=AdvSGridPagos.RowCount+2;
          while Not(QRetGan.Eof) do
            begin
              AdvSGridPagos.Cells [4,Contador]     := 'Ret.Ganancias ' +QRetGanCONCEPTO.AsString;
              AdvSGridPagos.Cells [5,Contador]     := QRetGanNUMERO_RETENCION.AsString;
              AdvSGridPagos.Floats[6,Contador]     := QRetGanIMPUESTO_RETENIDO.AsFloat;
              AdvSGridPagos.Alignments[6,Contador] := taRightJustify;
              AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
              QRetGan.Next;
//              Inc(Contador);
            end;
        end;
      CelFin:=Contador;
      Inc(Contador);
      AdvSGridPagos.Cells[5,contador]      := 'Total...';
      AdvSGridPagos.Cells[6,contador]      := '=SUM(F'+IntToStr(Cel0)+':F'+IntToStr(CelFin)+')';
      AdvSGridPagos.Alignments[6,Contador] := taRightJustify;

      AdvSGridPagos.FontStyles[5,Contador] := [fsBold];
      AdvSGridPagos.FontColors[5,Contador] := clBlue;
      AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
      AdvSGridPagos.FontColors[6,Contador] := clBlue;

      CDSOPago.Next;
      Inc(Contador);
    end;
  AdvSGridPagos.Recalc;
  AdvSGridPagos.AutoSizeColumns(True,1);
end;

procedure TFormListadoOPago.BuscarExecute(Sender: TObject);
var Lista:TListItem;
id_op,Id_Desde,Id_Hasta:Integer;
begin
  inherited;
  if (dbcSucursal.KeyValue)<>null Then
    if IntToStr(dbcSucursal.KeyValue)<>'' Then
      begin
        CDSOPago.AfterScroll:=nil;
        CDSOPago.CLose;
        CDSOPago.Params.ParamByName('desde').Value     := Desde.Date;
        CDSOPago.Params.ParamByName('hasta').Value     := Hasta.Date;
        CDSOPago.Params.ParamByName('suc').Value       := dbcSucursal.KeyValue;
        CDSOPago.Params.ParamByName('id_comprob').Value:= dbcComprobante.KeyValue;
        if chProveedores.Checked=False then
          CDSOPago.Params.ParamByName('codigo').Value   := Trim(ceProveedor.Text)
        else
          if chProveedores.Checked=True then
            CDSOPago.Params.ParamByName('codigo').Value := '******';

        if chbProcesados.Checked=False then
          CDSOPago.Params.ParamByName('estado').Value   := '*'
        else
          if chProveedores.Checked=True then
            CDSOPago.Params.ParamByName('estado').Value := 'N';

        CDSOPago.Params.ParamByName('formapag').Value := cbTipoPago.ItemIndex;
        CDSOPago.Params.ParamByName('banco').Value    := dbcBanco.KeyValue;
        CDSOPago.Open;
        if not(CDSOPago.IsEmpty) then
          CDSOPago.First;


        QCajaMov.Close;
        QCajaMov.ParamByName('id').Value   := CDSOPagoID_OP.Value;//CDSOPagoID_OP.Value;
        QCajaMov.ParamByName('tipo').Value := CDSOPagoTIPOCPBTE.Value;
        QCajaMov.OPen;

        CDSMovAplicaCCCompra.Close;
        CDSMovAplicaCCCompra.Params.ParamByName('id').Value   := CDSOPagoID_OP.value;//CDSOPagoID_OP.Value;
        CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Value := CDSOPagoTIPOCPBTE.Value;
        CDSMovAplicaCCCompra.Open;

        ///////////////////////////////////////////////////////
        QOpMaxID.CLose;
        QOpMaxID.ParamByName('desde').Value      := Desde.Date;
        QOpMaxID.ParamByName('hasta').Value      := Hasta.Date;
        QOpMaxID.ParamByName('suc').Value        := dbcSucursal.KeyValue;
        QOpMaxID.ParamByName('id_comprob').Value := dbcComprobante.KeyValue;
        if chProveedores.Checked=False then
          QOpMaxID.ParamByName('codigo').Value   := Trim(ceProveedor.Text)
        else
          if chProveedores.Checked=True then
            QOpMaxID.ParamByName('codigo').Value := '******';

        if chbProcesados.Checked=False then
          QOpMaxID.ParamByName('estado').Value   := '*'
        else
          if chProveedores.Checked=True then
            QOpMaxID.ParamByName('estado').Value := 'N';

        QOpMaxID.ParamByName('formapag').Value := cbTipoPago.ItemIndex;
        QOpMaxID.ParamByName('banco').Value    := dbcBanco.KeyValue;
        QOpMaxID.Open;
        /////////////////////////////////////////////////////////

        ///////////////////////////////////////////////////////
        QOpMinID.CLose;
        QOpMinID.ParamByName('desde').Value:=Desde.Date;
        QOpMinID.ParamByName('hasta').Value:=Hasta.Date;
        QOpMinID.ParamByName('suc').Value:=dbcSucursal.KeyValue;
        QOpMinID.ParamByName('id_comprob').Value:=dbcComprobante.KeyValue;
        if chProveedores.Checked=False then
          QOpMinID.ParamByName('codigo').Value   := Trim(ceProveedor.Text)
        else
          if chProveedores.Checked=True then
            QOpMinID.ParamByName('codigo').Value := '******';

        if chbProcesados.Checked=False then
          QOpMinID.ParamByName('estado').Value   := '*'
        else
          if chProveedores.Checked=True then
            QOpMinID.ParamByName('estado').Value := 'N';

        QOpMinID.ParamByName('formapag').Value := cbTipoPago.ItemIndex;
        QOpMinID.ParamByName('banco').Value    := dbcBanco.KeyValue;
        QOpMinID.Open;
        /////////////////////////////////////////////////////////

        CDSOPago.Last;
        Id_Hasta :=CDSOPagoID_OP.Value;
        CDSOPago.First;
        Id_Desde :=CDSOPagoID_OP.Value;

        Id_Desde := QOpMinIDMIN.Value;
        Id_Hasta := QOpMaxIDMAX.Value;
        QOpMaxID.CLose;
        QOpMinID.Close;

        Sumar;

      //  CDSOPago.AfterScroll:=CDSOPagoAfterScroll;

        QChePropios.Close;
        QChePropios.ParamByName('Id_Desde').Value:=Id_Desde;
        QChePropios.ParamByName('Id_Hasta').Value:=Id_Hasta;
        QChePropios.Open;


        QSumaRetIIBB.Close;
        QSumaRetIIBB.ParamByName('Id_Desde').Value:=Id_Desde;
        QSumaRetIIBB.ParamByName('Id_Hasta').Value:=Id_Hasta;
        QSumaRetIIBB.Open;

        QSumaRetIVA.Close;
        QSumaRetIVA.ParamByName('Id_Desde').Value:=Id_Desde;
        QSumaRetIVA.ParamByName('Id_Hasta').Value:=Id_Hasta;
        QSumaRetIVA.Open;

        QSumRetGanancia.Close;
        QSumRetGanancia.ParamByName('Id_Desde').Value:=Id_Desde;
        QSumRetGanancia.ParamByName('Id_Hasta').Value:=Id_Hasta;
        QSumRetGanancia.Open;

        QOPagoNumeracion.Close;
        QOPagoNumeracion.ParamByName('Desde').Value:=Desde.Date;
        QOPagoNumeracion.ParamByName('Hasta').Value:=Hasta.Date;
        QOPagoNumeracion.Open;


        id_op:=CDSOPagoID_OP.Value;
        if id_op<=0 then id_op:=-1;

        QCajaMov.Close;
        QCajaMov.ParamByName('id').Value  :=id_op;// CDSOPagoID_OP.Value;
        QCajaMov.ParamByName('tipo').Value:=CDSOPagoTIPOCPBTE.Value;
        QCajaMov.OPen;

        QRetIB.Close;
        QRetIB.ParamByName('id').Value:=id_op;//CDSOPagoID_OP.Value;
        QRetIB.Open;

        QRetGan.Close;
        QRetGan.ParamByName('id').Value:=id_op;//CDSOPagoID_OP.Value;
        QRetGan.Open;

        QRetIva.Close;
        QRetIva.ParamByName('id').Value:=id_op;//CDSOPagoID_OP.Value;
        QRetIva.Open;

      end;
   CDSOPago.First;
   CDSOPago.DisableControls;
   lwComprobantes.Clear;
   while Not(CDSOPago.Eof) do
     begin
       Lista         := lwComprobantes.Items.Add;
       Lista.Checked := CDSOPagoENTREGADO.Value='S';
       Lista.SubItems.Add(CDSOPagoRAZONSOCIAL.AsString);
       Lista.SubItems.Add(CDSOPagoNROCPBTE.AsString);
       Lista.SubItems.Add(CDSOPagoFECHA.AsString);
       Lista.SubItems.Add(FormatFloat(',0.00',CDSOPagoTOTAL.AsFloat));
       Lista.SubItems.Add(CDSOPagoID_OP.AsString);

       CDSOPago.Next;
    end;
   CDSOPago.First;
   btVer.Click;

   CDSOPago.EnableControls;
   CDSOPago.AfterScroll:=CDSOPagoAfterScroll;

//   btVer.Click;
end;

procedure TFormListadoOPago.BuscarProveedorExecute(Sender: TObject);
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
         // CorreoDestino          := CDSProveedorCORREO.Value;
          Buscar.Execute;
          ceProveedor.SetFocus;
          ceProveedor.SelectAll;
        END;
    END;
end;

procedure TFormListadoOPago.btConsultarClick(Sender: TObject);
var contador,Cel0,celFIn:Integer;
begin
  inherited;
  CDSListado.CLose;
  CDSListado.Params.ParamByName('desde').Value:=Desde.Date;
  CDSListado.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSListado.Open;

end;

procedure TFormListadoOPago.cbTipoPagoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoOPago.CDSOPagoAfterDelete(DataSet: TDataSet);
Var id_op,Id_Desde,Id_Hasta:Integer;
p:TBookmark;
begin
  inherited;
  P:=CDSOPago.GetBookmark;
  CDSOPago.Last;
  Id_Hasta :=CDSOPagoID_OP.Value;
  CDSOPago.First;
  Id_Desde :=CDSOPagoID_OP.Value;
  Sumar;

  QChePropios.Close;
  QChePropios.ParamByName('Id_Desde').Value:=Id_Desde;
  QChePropios.ParamByName('Id_Hasta').Value:=Id_Hasta;
  QChePropios.Open;


  QSumaRetIIBB.Close;
  QSumaRetIIBB.ParamByName('Id_Desde').Value:=Id_Desde;
  QSumaRetIIBB.ParamByName('Id_Hasta').Value:=Id_Hasta;
  QSumaRetIIBB.Open;

  QSumRetGanancia.Close;
  QSumRetGanancia.ParamByName('Id_Desde').Value:=Id_Desde;
  QSumRetGanancia.ParamByName('Id_Hasta').Value:=Id_Hasta;
  QSumRetGanancia.Open;

  id_op:=CDSOPagoID_OP.Value;
  if id_op<=0 then id_op:=-1;

  QCajaMov.Close;
  QCajaMov.ParamByName('id').Value  :=id_op;// CDSOPagoID_OP.Value;
  QCajaMov.ParamByName('tipo').Value:=CDSOPagoTIPOCPBTE.Value;
  QCajaMov.OPen;

  QRetIB.Close;
  QRetIB.ParamByName('id').Value      := id_op;//CDSOPagoID_OP.Value;
  QRetIB.Open;

  QRetGan.Close;
  QRetGan.ParamByName('id').Value     := id_op;//CDSOPagoID_OP.Value;
  QRetGan.Open;

  CDSOPago.GotoBookmark(P);
  CDSOPago.FreeBookmark(P);
end;

procedure TFormListadoOPago.CDSOPagoAfterScroll(DataSet: TDataSet);
var id_op:Integer;
begin
  inherited;
  id_op:=CDSOPagoID_OP.Value;
  if id_op<=0 then id_op:=-1;

  QCajaMov.Close;
  QCajaMov.ParamByName('id').Value   := id_op;//CDSOPagoID_OP.Value;
  QCajaMov.ParamByName('tipo').Value := CDSOPagoTIPOCPBTE.Value;
  QCajaMov.OPen;

  CDSMovAplicaCCCompra.Close;
  CDSMovAplicaCCCompra.Params.ParamByName('id').Value   := id_op;//CDSOPagoID_OP.Value;
  CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Value := CDSOPagoTIPOCPBTE.Value;
  CDSMovAplicaCCCompra.Open;

  QRetIB.Close;
  QRetIB.ParamByName('id').Value  :=id_op;//CDSOPagoID_OP.Value;
  QRetIB.Open;

  QRetGan.Close;
  QRetGan.ParamByName('id').Value :=id_op;//CDSOPagoID_OP.Value;
  QRetGan.Open;

  QRetIVA.Close;
  QRetIVA.ParamByName('id').Value :=id_op;//CDSOPagoID_OP.Value;
  QRetIVA.Open;

  QValores.Close;
  QValores.ParamByName('id_comprob').Value := id_op;//CDSOPagoID_OP.Value;
  QValores.ParamByName('tipocpbte').Value  := CDSOPagoTIPOCPBTE.Value;
  QValores.ParamByName('clasecpbte').Value := CDSOPagoCLASECPBTE.Value;
  QValores.Open;

  QValores.Filtered := False;
  QValores.Filter   := 'iD_TPAGO='+''+IntToStr(cbTipoPago.ItemIndex)+'';
  QValores.Filtered := cbTipoPago.ItemIndex>0;


end;


procedure TFormListadoOPago.CDSOPagoENTREGADOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
 Sender.AsString:=Text;
 // QCambiaEstado.Close;
 // QCambiaEstado.ParamByName('estado').Value:=Text;
 // QCambiaEstado.ParamByName('id').Value    :=CDSOPagoID_OP.ASInteger;
 // QCambiaEstado.ExecSQL;
 // QCambiaEstado.Close;
end;

procedure TFormListadoOPago.ceProveedorKeyPress(Sender: TObject; var Key: Char);
VAR
  Dato: STRING;
BEGIN
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceProveedor.Text))) +
        ceProveedor.Text;
      ceProveedor.Text := Dato;
      CDSProveedor.Close;
      CDSProveedor.Params.ParamByName('Codigo').Value := Dato;
      CDSProveedor.Open;
      IF NOT (CDSProveedor.IsEmpty) THEN
        begin
          edNombreProveedor.Text := CDSProveedorNOMBRE.Value;

        end;
      Buscar.Execute;
      ceProveedor.SetFocus;
      ceProveedor.SelectAll;
    END
  else
    if key=#10 Then
      begin
        Key:=#0;
        BuscarProveedor.Execute;
      end;
end;



procedure TFormListadoOPago.chbFiltrosClick(Sender: TObject);
begin
  begin
      dbgListado.PageMode:=Not(chbFiltros.Checked);
      dbgListado.FilterDropDownAuto:=chbFiltros.Checked;
  end;
end;

procedure TFormListadoOPago.chProveedoresClick(Sender: TObject);
begin
  inherited;
  ceProveedor.Enabled:=Not(chProveedores.Checked);
end;

procedure TFormListadoOPago.cxGridDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  VerCpbte.Execute;
end;

procedure TFormListadoOPago.dbcBancoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoOPago.dbcComprobanteClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoOPago.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('suc').Value:=dbcSucursal.KeyValue;
  QComprob.Open;
  if Not(QComprob.IsEmpty) then
    QComprob.First;
//  Buscar.Execute;
end;



procedure TFormListadoOPago.dbgListadoGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  inherited;
  if ((ACol>=13) and (ACol<=16)) then
    HAlign:=taRightJustify
  else
    if ACol in [1,2,4,5,6,7,9,10,11] then
      HAlign:=taCenter
    else
      if ACol>=17 then
        HAlign:=taLeftJustify;

end;

procedure TFormListadoOPago.dbgListadoGetFormat(Sender: TObject; ACol: Integer;
  var AStyle: TSortStyle; var aPrefix, aSuffix: string);
begin
  inherited;
  if ACol=1 then
    AStyle:= ssDate;
  if ((ACol>=2) and (ACol<=8)) then
    AStyle:= ssAlphabetic;
 
end;

procedure TFormListadoOPago.ExportarBcoGaliciaExecute(Sender: TObject);
var  ArchiTxt: TextFile;
     ContSecuen:integer;
     Lon1,Lon2:integer;
     NombreArchivo,NombreArchivoCorto:String;
     IIBB,GANC,ImporteIIBB,
     ImporteOP,ImporteAplicado  :Extended;
     SumaTotalPago,SumaTodo03620:Extended;
begin
//  inherited;
  SumaTotalPago  :=  edTotalPagos.Value - QSumaRetIIBBSUMARETIIBB.Value - QSumRetGananciaTOTALRETGANANCIA.Value;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  NombreArchivo         := TPath.GetDocumentsPath+'\BANCOGALICIA_'+FormatDateTime('yyyymmdd',Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);
  if Not(AnsiEndsText('.txt',NombreArchivo)) then
    NombreArchivo:=NombreArchivo+'.txt';
  AssignFile(ArchiTxt, NombreArchivo);
  Rewrite(ArchiTxt);

  //****************** Cabecera***************
  GaliciaPC.CodigoDeRegistro      := 'PC';
  GaliciaPC.TipoDeLista           := 'C';
  GaliciaPC.IdentificacionLista   := '';
  GaliciaPC.FechaDeProceso        := FormatDateTime('ddmmyyyy',Date);
  GaliciaPC.CuentaEspecifica      := '00111111123332';
  GaliciaPC.RazonSocialEmpresa    := edRazonSocial.Text;
  GaliciaPC.CantidadMovimientos   := FormatFloat('000000',CDSOPago.RecordCount); // Cantidad de Orden de Pago
  GaliciaPC.ImporteTotalPagos     := FormatFloat('000000000000000.00',SumaOrdenes);// FormatFloat('00000000000.00',SumaTotalPago);// edTotalPagos.Value);
    Delete(GaliciaPC.ImporteTotalPagos,pos('.',GaliciaPC.ImporteTotalPagos),1);
  GaliciaPC.FechaDePagoDispos     := '00000000';
  GaliciaPC.FechaDeEmision        := FormatDateTime('ddmmyyyy',Date);
  GaliciaPC.SucursalDistribuidora := '000';
  GaliciaPC.SinUso_1              := DupeString('0',54);
  GaliciaPC.MonedaEspecie         :='001';
  GaliciaPC.SinUso_2              := DupeString('0',22);
  GaliciaPC.EspacioLibre          := DupeString(' ',126);
  //***************************************
  WriteLn(ArchiTxt, GaliciaPC.CodigoDeRegistro,
                    GaliciaPC.TipoDeLista,
                    GaliciaPC.IdentificacionLista,
                    GaliciaPC.FechaDeProceso,
                    GaliciaPC.CuentaEspecifica,
                    GaliciaPC.RazonSocialEmpresa,
                    GaliciaPC.CantidadMovimientos,
                    GaliciaPC.ImporteTotalPagos,
                    GaliciaPC.FechaDePagoDispos,
                    GaliciaPC.FechaDeEmision,
                    GaliciaPC.SucursalDistribuidora,
                    GaliciaPC.SinUso_1,
                    GaliciaPC.MonedaEspecie,
                    GaliciaPC.SinUso_2,
                    GaliciaPC.EspacioLibre);

  //***************************************
  SumaTodo03620 :=0;
  //******************Detalle PD ***************
  CDSOPago.First;
  while Not(CDSOPago.Eof) do
    begin
      ContSecuen    :=1;
      QValores.First;
      while not(QValores.Eof) do
        begin
          GaliciaPD.CodigoDeRegistro     := 'PD';
          GaliciaPD.NumeroRegistro       := AnsiRightStr('000000'+IntToStr(ContSecuen),6);
          GaliciaPD.ImporteDelCheque     := FormatFloat('00000000000.00',QValoresIMPORTE.AsFloat);
          GaliciaPD.SucursalDistribuidor :='00';
          GaliciaPD.RazonSocialBenefic   := CDSOPagoRAZONSOCIAL.ASString;
          GaliciaPD.DireccionBenific     := CDSOPagoDIRECCION.AsString;
          GaliciaPD.LocalidadBenific     := CDSOPagoLOCALIDAD.AsString;
          GaliciaPD.CodPostalBenific     := CDSOPagoCPOSTAL.AsString;
          GaliciaPD.NroRecibo            := DupeString('0',15);
          GaliciaPD.CUITBenefic          := AnsiReplaceStr(Trim(CDSOPagoCUIT.AsString),'-','');
          GaliciaPD.TipoDocumentoReq     := '01';
          GaliciaPD.TelefonoBenefic      := DupeString('0',10);
          GaliciaPD.NombreRetirante      := DupeString(' ',30);
          GaliciaPD.TipoNroDocumRetirante:= DupeString(' ',11);
          GaliciaPD.CondicionCheque      := '2';
          GaliciaPD.SinUso               := DupeString(' ',25);
          GaliciaPD.CodigoAviso          := '2';
          GaliciaPD.CodigoRecibo         := '0';
          GaliciaPD.EspacioLibre_1       := DupeString(' ',16);
          GaliciaPD.OrdenDePAgo          := AnsiRightStr(CDSOPagoNROCPBTE.AsString + '0000000000000000000000000000000000',35);
          GaliciaPD.Moneda               := '001';
          GaliciaPD.FechaDispoFondos     := FormatDateTime('ddmmyyyy',QValoresFECHA_COBRO.AsDateTime);
          GaliciaPD.CodPciaBeneficiario  := '02';
          GaliciaPD.InformacionCompra    := '0';
          GaliciaPD.DestinoComprob       := '01';
          GaliciaPD.MarcaAutogestion     := '1';
          GaliciaPD.EspacioLibre_2       := DupeString(' ',11);
          Inc(ContSecuen);

          WriteLn(ArchiTxt, GaliciaPD.CodigoDeRegistro,     GaliciaPD.NumeroRegistro,        GaliciaPD.ImporteDelCheque,
                            GaliciaPD.SucursalDistribuidor, GaliciaPD.RazonSocialBenefic,    GaliciaPD.DireccionBenific,
                            GaliciaPD.LocalidadBenific,     GaliciaPD.CodPostalBenific,      GaliciaPD.NroRecibo,
                            GaliciaPD.CUITBenefic,          GaliciaPD.TipoDocumentoReq,      GaliciaPD.TelefonoBenefic,
                            GaliciaPD.NombreRetirante,      GaliciaPD.TipoNroDocumRetirante, GaliciaPD.CondicionCheque,
                            GaliciaPD.SinUso,               GaliciaPD.CodigoAviso,           GaliciaPD.CodigoRecibo,
                            GaliciaPD.EspacioLibre_1,       GaliciaPD.OrdenDePAgo,           GaliciaPD.Moneda,
                            GaliciaPD.FechaDispoFondos,     GaliciaPD.CodPciaBeneficiario,   GaliciaPD.InformacionCompra,
                            GaliciaPD.DestinoComprob,       GaliciaPD.MarcaAutogestion,      GaliciaPD.EspacioLibre_2);
          QValores.Next;
        end;

      CDSMovAplicaCCCompra.First;
// ****************** Tipo O1 ***************
      GaliciaO1.CodigoReg             := 'O1';
      GaliciaO1.NroDeOrdenPago        := AnsiRightStr(CDSOPagoNROCPBTE.AsString ,10);
      GaliciaO1.ImporteTotalFact      := '0';
      GaliciaO1.ImporteTotalNotaDeb   := '0';
      GaliciaO1.ImporteTotalNotaCred  := '0';
      GaliciaO1.ImporteTotalA_Pagar   := '0';
      GaliciaO1.CondicionPago         := 'Cheque pago Diferido          ';
      while Not(CDSMovAplicaCCCompra.Eof) do
        begin
          if CDSMovAplicaCCCompra.RecNo=0 then
            begin
              GaliciaO1.Concepto_1:='';
              GaliciaO1.Importe_1 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_2:='';
              GaliciaO1.Importe_2 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_3:='';
              GaliciaO1.Importe_3 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_4:='';
              GaliciaO1.Importe_4 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_5:='';
              GaliciaO1.Importe_5 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_6:='';
              GaliciaO1.Importe_6 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_7:='';
              GaliciaO1.Importe_7 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_8:='';
              GaliciaO1.Importe_8 :='';
            end;
          if CDSMovAplicaCCCompra.RecNo=1 then
            begin
              GaliciaO1.Concepto_9:='';
              GaliciaO1.Importe_9 :='';
            end;
          CDSMovAplicaCCCompra.Next;
        end;
      GaliciaO1.EspacioLibre:=DupeString(' ',11);

      //**********************************************************
      WriteLn(ArchiTxt, GaliciaO1.CodigoReg,     GaliciaO1.NroDeOrdenPago,   GaliciaO1.ImporteTotalFact,
                        GaliciaO1.ImporteTotalNotaDeb,GaliciaO1.ImporteTotalNotaCred, GaliciaO1.ImporteTotalA_Pagar,
                        GaliciaO1.SignoTotalAPagar, GaliciaO1.CondicionPago,
                        GaliciaO1.Concepto_1, GaliciaO1.Importe_1, GaliciaO1.Concepto_2, GaliciaO1.Importe_2,
                        GaliciaO1.Concepto_3, GaliciaO1.Importe_3, GaliciaO1.Concepto_4, GaliciaO1.Importe_4,
                        GaliciaO1.Concepto_5, GaliciaO1.Importe_5, GaliciaO1.Concepto_6, GaliciaO1.Importe_6,
                        GaliciaO1.Concepto_7, GaliciaO1.Importe_7, GaliciaO1.Concepto_8, GaliciaO1.Importe_8,
                        GaliciaO1.Concepto_9, GaliciaO1.Importe_9, GaliciaO1.Concepto_10,GaliciaO1.Importe_10,
                        GaliciaO1.EspacioLibre);
      //**********************************************************




      CDSOPago.Next;
    end;
  CloseFile(ArchiTxt);
  if Not(VirtualUI.Active) then
    ShowMessage('Archivo Generado en ..'+NombreArchivo);

   if VirtualUI.Active then
      VirtualUI.DownloadFile( NombreArchivo);

end;

procedure TFormListadoOPago.ExportarBcoMacroExecute(Sender: TObject);
var  ArchiTxt: TextFile;
     ContSecuen,CantReg:integer;
     NombreArchivo:String;
     LineaRet:TStringList;
     NroRenglon:Byte;
     NroSecuencial:Integer;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;


  NombreArchivo         := TPath.GetDocumentsPath+'\bnf.txt';

  if Not(AnsiEndsText('.txt',NombreArchivo)) then
    NombreArchivo:=NombreArchivo+'.txt';
  AssignFile(ArchiTxt, NombreArchivo);
  Rewrite(ArchiTxt);
    {Condiciones de I.V.A.:
      1 Responsable Inscripto
      2 Responsable No Inscripto Reempadronado
      3 No Responsable
      4 Exento
      5 Consumidor Final
      6 No Alcanzado
      7 Responsable Monotributo
      8 Responsable No Inscripto No Reempadronado
      9 Inscripto No Sujeto a Retención
      99 No informado RECOMENDADO USAR 9  }
  CDSOPago.First;
  while Not(CDSOPago.Eof) do
    begin
      MacroBNF.tdd_bnf_id       :='10';
      MacroBNF.bnf_numdoc       :=AnsiReplaceStr(CDSOPagoCUIT.Value,'-','');
      MacroBNF.cib_id           :='1';
      MacroBNF.cng_id           :='1';
      case DMMain_FD.GetCondicionIvaCliente(CDSOPagoCODIGO.AsString) of
        1:  MacroBNF.cni_id           :='1';
        2:  MacroBNF.cni_id           :='7';
        3:  MacroBNF.cni_id           :='5';
        4:  MacroBNF.cni_id           :='4';
      end;
      MacroBNF.bnf_razonsocial  :=CDSOPagoRAZONSOCIAL.Value;
      MacroBNF.bnf_calle        :=CDSOPagoDIRECCION.Value;
      MacroBNF.bnf_numpuerta    :='';
      MacroBNF.bnf_unidadfuncion:='';
      MacroBNF.ccp_id           :=CDSOPagoCPOSTAL.Value;
      MacroBNF.bnf_numib        :='';
      MacroBNF.Email            :=CDSOPagoCORREO.AsString;
      MacroBNF.Piso             :='';
      MacroBNF.Pais             :='';
      MacroBNF.Provincia        :='';
      MacroBNF.Ciudad           :='';
      WriteLn(ArchiTxt,MacroBNF.tdd_bnf_id,#9,
                       MacroBNF.bnf_numdoc,#9,
                       MacroBNF.cib_id,#9,
                       MacroBNF.cng_id,#9,
                       MacroBNF.cni_id,#9,
                       MacroBNF.bnf_razonsocial,#9,
                       MacroBNF.bnf_calle,#9,
                       MacroBNF.bnf_numpuerta,#9,
                       MacroBNF.bnf_unidadfuncion,#9,
                       MacroBNF.ccp_id,#9,
                       MacroBNF.bnf_numib,#9,
                       MacroBNF.Email,#9,
                       MacroBNF.Piso,#9,
                       MacroBNF.Pais,#9,
                       MacroBNF.Provincia,#9,
                       MacroBNF.Ciudad);

      CDSOPago.Next;
    end;

  CloseFile(ArchiTxt);

  if Not(VirtualUI.Active) then
    ShowMessage('Archivo Generado en ..'+NombreArchivo);
  //******************************************************************************

  NombreArchivo         := TPath.GetDocumentsPath+'\opg.txt';
  if Not(AnsiEndsText('.txt',NombreArchivo)) then
    NombreArchivo:=NombreArchivo+'.txt';
  AssignFile(ArchiTxt, NombreArchivo);
  Rewrite(ArchiTxt);

  LineaRet:=TStringList.Create;
  LineaRet.Clear;
  NroRenglon   :=0;
  NroSecuencial:=0;
  CDSOPago.First;
  while Not(CDSOPago.Eof) do
    begin
      QValores.First;
      while not QValores.Eof do
        begin
          NroSecuencial            := NroSecuencial+1;
          MacroOPG.tdd_bnf_id      := '10'; // 10=Cuit  13=CUIL
          MacroOPG.bnf_numdoc      := AnsiReplaceText(CDSOPagoCUIT.AsString,'-','');
          MacroOPG.suc_entrega     := '302';
          MacroOPG.Opg_idopgcli    := IntToStr(NroSecuencial);//+CDSOPagoNROCPBTE.AsString;
          MacroOPG.Opg_ordenalt    := CDSOPagoRAZONSOCIAL.AsString;
          MacroOPG.Opg_imp_pago    := formatFloat('0.00', DSValores.DataSet.FieldByName('Importe').AsFloat);
          MacroOPG.cta_cuentadebito:= edNroConvenioMacro.Text;
          MacroOPG.opg_cuentapago  := CDSOPagoCBU.Value;
          if QValoresID_TPAGO.Value=2 then
            MacroOPG.opg_cuentapago  := QValoresNUMERO.Value
          else
            if QValoresID_TPAGO.Value=1 then
             MacroOPG.opg_cuentapago  := '';
          {Modalidades de Pago:
            2 Acreditación en Cuenta
            4 Acreditación en Cuenta Otros Bancos
            5 Efectivo
            6 ECHEQ Común
            8 ECHEQ de Pago Diferido}
          CASE QValoresID_TPAGO.Value of
            1:MacroOPG.mpg_id          := '5';
            2:MacroOPG.mpg_id          := '8';
            4:MacroOPG.mpg_id          := '2';
            5:MacroOPG.mpg_id          := '2';
          END;
          MacroOPG.opg_mar_regchq       := '2';
          MacroOPG.opg_fec_pago         := FormatDateTime('DD/MM/YYYY',edFechaProceso.Date);
          MacroOPG.opg_fec_pagodiferido := FormatDateTime('DD/MM/YYYY',QValoresFECHA_COBRO.AsDateTime);
          MacroOPG.usr_firmante1        :='';
          MacroOPG.usr_firmante2        :='';
          MacroOPG.usr_firmante3        :='';
          WriteLn(ArchiTxt,MacroOPG.tdd_bnf_id,#9,
                           MacroOPG.bnf_numdoc,#9,
                           MacroOPG.suc_entrega,#9,
                           MacroOPG.Opg_idopgcli,#9,
                           MacroOPG.Opg_ordenalt,#9,
                           MacroOPG.Opg_imp_pago,#9,
                           MacroOPG.cta_cuentadebito,#9,
                           MacroOPG.opg_cuentapago,#9,
                           MacroOPG.mpg_id,#9,
                           MacroOPG.opg_mar_regchq,#9,
                           MacroOPG.opg_fec_pago,#9,
                           MacroOPG.opg_fec_pagodiferido,#9,
                           MacroOPG.usr_firmante1,#9,
                           MacroOPG.usr_firmante2,#9,
                           MacroOPG.usr_firmante3);
           QValores.Next;
        end;

      NroRenglon := 1;
      QRetGan.First;
      while Not QRetGan.Eof do
        begin
          MacroRTN.Opg_idopgcli := CDSOPagoNROCPBTE.Value;
          MacroRTN.Tipo_id      := 'RET.GANANCIA';
          MacroRTN.Zona_id      := '1';
          MacroRTN.Secuencia_id := IntToStr(NroRenglon);
          MacroRTN.Texto        := QRetGanNUMERO_RETENCION.Value;
          MacroRTN.Usr_id       := '';
          LineaRet.Add(MacroRTN.Opg_idopgcli+#9+
                       MacroRTN.Tipo_id+#9+
                       MacroRTN.Zona_id+#9+
                       MacroRTN.Secuencia_id+#9+
                       MacroRTN.Texto+#9+
                       MacroRTN.Usr_id);
           QRetGan.Next;
           NroRenglon:= NroRenglon+1;
        end;

      QRetIB.First;
      while Not QRetIB.Eof do
        begin
          MacroRTN.Opg_idopgcli := CDSOPagoNROCPBTE.Value;
          MacroRTN.Tipo_id      := 'RET IIBB';
          MacroRTN.Zona_id      := '1';
          MacroRTN.Secuencia_id := IntToStr(NroRenglon);
          MacroRTN.Texto        := QRetIBNROCPBTE.Value;
          MacroRTN.Usr_id       := '';
          LineaRet.Add(MacroRTN.Opg_idopgcli+#9+
                       MacroRTN.Tipo_id+#9+
                       MacroRTN.Zona_id+#9+
                       MacroRTN.Secuencia_id+#9+
                       MacroRTN.Texto+#9+
                       MacroRTN.Usr_id);
          NroRenglon:= NroRenglon+1;
          QRetIB.Next;
        end;

      QRetIva.First;
      while Not QRetIva.Eof do
        begin
          MacroRTN.Opg_idopgcli := CDSOPagoNROCPBTE.Value;
          MacroRTN.Tipo_id      := 'RET IVA';
          MacroRTN.Zona_id      := '1';
          MacroRTN.Secuencia_id := IntToStr(NroRenglon);
          MacroRTN.Texto        := QRetIBNROCPBTE.Value;
          MacroRTN.Usr_id       := '';
          LineaRet.Add(MacroRTN.Opg_idopgcli+#9+
                       MacroRTN.Tipo_id+#9+
                       MacroRTN.Zona_id+#9+
                       MacroRTN.Secuencia_id+#9+
                       MacroRTN.Texto+#9+
                       MacroRTN.Usr_id);
          NroRenglon:= NroRenglon+1;
          QRetIva.Next;
        end;


      CDSOPago.Next;
    end;

  CloseFile(ArchiTxt);
  if Not(VirtualUI.Active) then
    ShowMessage('Archivo Generado en ..'+NombreArchivo);

  NombreArchivo         := TPath.GetDocumentsPath+'\rtn.txt';

  lineaRet.SaveToFile(nombreArchivo);
  FreeAndNil(LineaRet);
  if VirtualUI.Active then
    VirtualUI.DownloadFile( NombreArchivo);
end;

procedure TFormListadoOPago.ExportarBcoFrancesExecute(Sender: TObject);
var  ArchiTxt: TextFile;
     ContSecuen,CantReg:integer;
     NombreArchivo,NombreArchivoCorto:String;
     ImporteIIBB,
     ImporteOP,ImporteAplicado,
     SumaChe,SumaAplicado,SumaIIBB,SumaGanc,SumaRetIVA  :Extended;
     SumaTotalPago,SumaTodo03620,DiferenciaAplicado:Extended;
     FechaAux:TDateTime;
begin
  SumaTotalPago  :=  edTotalPagos.Value - QSumaRetIIBBSUMARETIIBB.Value - QSumRetGananciaTOTALRETGANANCIA.Value - QSumaRetIVATOTALRETIVA.Value ;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  begin
    NombreArchivo         := TPath.GetDocumentsPath+'\BANCOFRANCES_'+FormatDateTime('yyyymmdd',Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);
    NombreArchivoCorto    := 'BANCOFRANCES_'+FormatDateTime('yyyymmdd',Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);

    if Not(AnsiEndsText('.txt',NombreArchivo)) then
      NombreArchivo:=NombreArchivo+'.txt';
    AssignFile(ArchiTxt, NombreArchivo);
    Rewrite(ArchiTxt);

    //030610****************** Tipo 10 ***************
    IdentRegistro     := '0306';//edIdentRegistro.Text;// '0360'
    TipoReg           := '010';
    TipoDocEmpre      := 'CUIT';
    NroCuitEmpresa    := '00'+edCuitEmpresa.Text;
    while (Pos('-',NroCuitEmpresa)>0) do
      delete(NroCuitEmpresa,Pos('-',NroCuitEmpresa),1);
    Secuencia         := '000000';
    Moneda            := '0';// 0=peso 2=dolar
    Importe           := FormatFloat('00000000000.00',SumaOrdenes);// FormatFloat('00000000000.00',SumaTotalPago);// edTotalPagos.Value);
    Delete(Importe,pos('.',Importe),1);
    FormaPago         := '99'; // lo recomendado en la doc
    FormaCobro        := '0';
    DisponPago        := '9'; // Cruzado a la orden
    Deposito          := '0';

    if chFechaProceso.Checked then
      FechaEmision      := FormatDateTime('yyyymmdd',edFechaProceso.Date)
    else
      FechaEmision      := FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime-1);

    FechaEntrega      := '99999999';//FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime-1);
    FechaPago         := '99999999';//FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime);
    Entidad           := '0017';
    SuctaDebito       := edSucCtaDebito.Text;//  '0001';
    DvCtaDebito       := edDvCtaDebito.Text;// '01';
    TipoCtaDebito     := '01';
    MonedaCtaDebito   := '0';
    NroCtaDebito      := edNroCtaDebito.Text;
    CantidadInst      := FormatFloat('0000000',CDSOPago.RecordCount); // Cantidad de Orden de Pago
    EntregaLote       := ' ';// le habia puesto S y lo saque, segun el ejemplo de txt
    SucEntregaLote    := DupeString(' ',4);
    Filler            := DupeString(' ',6);
    LibreImpresion    := ' ';
    NombreFichero     := Copy(NombreArchivoCorto,1,12);//  DupeString(' ',12);
    if chFechaProceso.Checked then
      FechaProceso      := FormatDateTime('yyyymmdd',edFechaProceso.Date)
    else
      FechaProceso      := FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime-1);
    Contratoprov      := copy('00000000000000000000',1,20-Length(Trim(edContratoProv.Text)))+ Trim(edContratoProv.Text);//  DupeString(' ',20);
    FillerNNN         := DupeString(' ',698);
    //***************************************
    WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                      Moneda,Importe,FormaPago,FormaCobro, DisponPago,
                      Deposito,FechaEmision, FechaEntrega, FechaPago,Entidad,
                      SuctaDebito, DvCtaDebito,TipoCtaDebito,MonedaCtaDebito,
                      NroCtaDebito, CantidadInst, EntregaLote,SucEntregaLote,
                      Filler,LibreImpresion, NombreFichero,FechaProceso,
                      Contratoprov, FillerNNN);
    //***************************************
    ContSecuen    :=0;
    SumaTodo03620 :=0;
//030620****************** Tipo 20 ***************
    CDSOPago.First;
    while Not(CDSOPago.Eof) do
      begin
        QValores.First;
        SumaIIBB               := 0;
        SumaGANC               := 0;
        SumaRetIVA             := 0;
        // Acumulo los imprtes parciales de IIBB
        SumaIIBB               := StrToFloat(SumaIngresosBrutos);
        SumaGanc               := StrToFloat(SumaGanancias);
        SumaRetIVA             := StrToFloat(SumaRetencionesIVA);

        ContSecuen             := ContSecuen+1;
        IdentRegistro          := '0306';//edIdentRegistro.Text;// '0360'
        TipoReg                := '020';
        Secuencia              := FormatFloat('000000',ContSecuen);
        ProNroBeneficiario     := '000000000'+CDSOPagoCODIGO.AsString;
        NroMinuta              := AnsiRightStr(CDSOPagoNROCPBTE.ASString,8);
        Importe                := SumaCheques;//  FormatFloat('00000000000.00',CDSOPagoTOTAL.AsFloat-IIBB-GANC);

        ImporteOP              := StrToFloat(Importe);
        SumaTodo03620          := SumaTodo03620 + StrToFloat(Importe);

        Delete(Importe,pos('.',Importe),1);
        if Not(QRetGan.IsEmpty) then
          begin
            ImpRetGanancia     := FormatFloat('00000000000.00',QRetGanIMPUESTO_RETENIDO.AsFloat);
            RegimenGanancia    := Copy(QRetGanCONCEPTO.AsString+'                                                                ',1,30);
            NroCertRetGanancia := AnsiRightStr('000000000'+QRetGanNUMERO_RETENCION.AsString,14);
            Delete(ImpRetGanancia,pos('.',ImpRetGanancia),1);
          end
        else
          begin
            ImpRetGanancia     := DupeString('0',13);
            RegimenGanancia    := DupeString(' ',30);
            NroCertRetGanancia := DupeString(' ',14);
          end;

        if Not(QRetIva.IsEmpty) then
          begin
            ImpRetIVA          := FormatFloat('00000000000.00',QRetIvaIMPUESTO_RETENIDO.AsFloat);
            RegimenIva         := Copy(QRetIvaCONCEPTO.AsString+'                                                                ',1,30);
            NroCertRetIva      := AnsiRightStr('000000000'+QRetIvaNUMERO_RETENCION.AsString,14);
            Delete(ImpRetIVA,pos('.',ImpRetIVA),1);
          end
        else
          begin
            ImpRetIVA          := DupeString('0',13);
            RegimenIva         := DupeString(' ',30);
            NroCertRetIVA      := DupeString(' ',14);
          end;

        ProNroOrd              := AnsiLeftStr(NombreArchivo+'            ',15);
        Filler                 := DupeString(' ',8);
        AcredASup              := ' ';
        IpermFin               := ' ';
        CliAje                 := ' ';
        NCuitPago              := DupeString('0',13);
        NomePago               := DupeString(' ',40);
        TipoDocumento          := 'CUI';
        NroDocumento           := CDSOPagoCUIT.AsString;

        while (Pos('-',NroDocumento)>0) do
          delete(NroDocumento,Pos('-',NroDocumento),1);
        SucEntrega             := AnsiRightStr('0000'+edSucursalEntrega.Text,4);

        FechaEntrega           := FechaEmision; // tomo la feha del archivo 010 de fecha de emision FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime);//    ya esta en la cabecera

        FechaPago              := FormatDateTime('yyyymmdd',QValoresFECHA_COBRO.AsDateTime);


        if QValores.RecordCount>1 then
          FechaPago            := '99999999';//FormatDateTime('yyyymmdd',CDSOPagoFECHA.AsDateTime);    ya esta en la cabecera

        FormaPago              := 'CH';// si es un solo cheque

        if chbEChek.Checked then
          FormaPago              := 'EC';// si es Cheque electronico  e-cheq

        if QValores.RecordCount>1 then
          FormaPago            := 'MP';

       // else
       //   FormaPago:='  ';//'CH'; si son varios


        FormaCobro             := '0'; //'0';   ya esta en la cabecera

        DisponP                := '1'; //'1';// Cruzado a la orden   ya esta en la cabecera

        if QValores.RecordCount>1 then
          DisponP              := '9'; //'1';// Cruzado a la orden   ya esta en la cabecera

        Deposito               := '0';


        QValores.First;                // pongo el puntero en el primero y si es un solo cheque

        if QValores.RecordCount>1 then
          NroCheque              := DupeString('0',13)
        else
          NroCheque              := '8'+AnsiRightStr('00000000'+Trim(QValoresNUMERO.AsString),7)+'00000';

        if QValoresID_TPAGO.Value=5 then
          NroCheque              := DupeString('0',13);

        if QValoresID_TPAGO.Value=5 then
          begin
            DisponP  := '2';
            FormaPago:= 'AB';
            FechaPago:= FechaEntrega;
          end;


        CodDevolucion          := DupeString(' ',6);
        DescDevolucion         := DupeString(' ',40);
        FillerNNN              := DupeString(' ',506);
        //**********************************************************
        WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                          ProNroBeneficiario, NroMinuta,Importe, NroCertRetGanancia ,RegimenGanancia,
                          ImpRetGanancia, NroCertRetIva,RegimenIva,ProNroOrd, Filler, AcredASup,IpermFin,
                          CliAje, NCuitPago, NomePago, TipoDocumento, NroDocumento, SucEntrega, FechaEntrega,
                          FechaPago,FormaPago,FormaCobro, DisponP,Deposito,NroCheque,CodDevolucion,
                          DescDevolucion, FillerNNN);
        //**********************************************************

        //030625****************** Tipo 25 ***Cheques emitidos ************
        QValores.First;
        if QValores.RecordCount>1 then // antes tenia 1
          begin
            while Not(QValores.Eof) do
              begin
                ContSecuen             := ContSecuen+1;
                IdentRegistro          := '0306';//edIdentRegistro.Text;// '0360'
                TipoReg                := '025';
                Secuencia              := FormatFloat('000000',ContSecuen);
                Filler_00              := DupeString(' ',15);
                NroMinuta              := AnsiRightStr(CDSOPagoNROCPBTE.ASString,8);
                Importe                := FormatFloat('00000000000.00',QValoresIMPORTE.AsFloat);
                Delete(Importe,pos('.',Importe),1);
                Filler_01              := DupeString(' ',125);
                IPErmFin               := 'N';
                Filler_02              := DupeString(' ',58);

                if QValoresID_TPAGO.Value=2 Then
                  Pro_Cbu_Nro            :=  DupeString('0',22)
                else
                  if QValoresID_TPAGO.Value=5 Then
                    Pro_Cbu_Nro            := CDSOPagoCBU.AsString;// DMMain_FD.CBUEmpresa;// CDSOPagoCBU.AsString;

                Fecha_Pago             := FormatDateTime('yyyymmdd',QValoresFECHA_COBRO.AsDateTime);

                if QValoresID_TPAGO.Value=2 Then
                  begin
                    Forma_Pago             := 'CH';
                    if chbEChek.Checked then
                      Forma_Pago             := 'EC'; // aca se informa e-cheq
                  end;

                if QValoresID_TPAGO.Value=5 Then
                  begin
                    Forma_Pago             := 'AB';
                    if chFechaProceso.Checked then
                      Fecha_Pago             := FormatDateTime('yyyymmdd',edFechaProceso.Date);

                  end;

                Filler_03              := ' ';

                if QValoresID_TPAGO.Value=2 Then
                  Dispon_p               := '1'
                else
                  if QValoresID_TPAGO.Value=5 Then
                    Dispon_p               := '2';

                Filler_04              := ' ';

                if chbPonerNroChe.Checked then
                  Nro_Cheque           := '8'+AnsiRightStr('00000000'+Trim(QValoresNUMERO.AsString),7)+'00000'
                else
                  Nro_Cheque           := '0000000000000';

                if QValoresID_TPAGO.Value=5 then
                  Nro_Cheque           := '0000000000000';


                Cod_Devolucion         := DupeString(' ',6);
                Desc_Devolucion        := DupeString(' ',40);
                Filler_05              := DupeString(' ',506);
                //**********************************************************
                WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                                  Filler_00, NroMinuta,Importe, Filler_01, IPErmFin ,Filler_02,
                                  Pro_Cbu_Nro, Fecha_Pago,Forma_Pago,Filler_03,Dispon_p, Filler_04,
                                  Nro_Cheque, Cod_Devolucion, Desc_Devolucion,Filler_05);
                    //**********************************************************
                QValores.Next;
              end;
          end;

        SumaAplicado                  := StrToFloat(SumaAplicaciones);
        SumaChe                       := StrToFloat(Sumacheques);
        ImporteAplicado               := 0;
        CDSMovAplicaCCCompra.First;
        CantReg   :=1;
        //0306040  //****************** Tipo 40 ***************
        if CDSMovAplicaCCCompra.RecordCount>1 then
          begin
            while Not(CDSMovAplicaCCCompra.Eof) do
              begin

                ContSecuen           := ContSecuen+1;
                IdentRegistro        := '0306';//edIdentRegistro.Text;// '0360'
                TipoReg              := '040';
                Secuencia            := FormatFloat('000000',ContSecuen);
                Filler               := '  ';
                FechaCompMinuta      := FormatDateTime('yyyymmdd',CDSMovAplicaCCCompraFECHA.AsDateTime);
                if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value='FC' then
                  DescCompMinuta := AnsiLeftStr('FACTURA                    ',25)
                else
                  if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value='ND' then
                    DescCompMinuta := AnsiLeftStr('DEBITO                        ',25)
                  else
                    DescCompMinuta := DupeString(' ',25);
                CompDbCr             := 'CR';
                TipoCompMinuta       := ' ';
                NroCompMinuta        :=  AnsiRightStr('00000'+CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString,12); // '000000000000';//  (CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString);

                ImporteCompMinuta    := FormatFloat('00000000000.00',CDSMovAplicaCCCompraIMPORTE.AsFloat);
{Acumulando >>} ImporteAplicado      := ImporteAplicado + StrToFloat(ImporteCompMinuta);

                if (CantReg=CDSMovAplicaCCCompra.RecordCount) then
                  begin
                    DiferenciaAplicado := (SumaChe+SumaIIBB+SumaGanc+SumaRetIVA)-ImporteAplicado;
                    ImporteCompMinuta  := FormatFloat('00000000000.00',CDSMovAplicaCCCompraIMPORTE.AsFloat+DiferenciaAplicado);
                  end;

                Delete(ImporteCompMinuta,pos('.',ImporteCompMinuta),1);

                if (Int(StrToFloat(ImpRetGanancia))>0) and (Int(StrToFloat(ImpRetIVA))<=0)  then
                  CodImpuesto      := 'GA'
                else
                  if (Int(StrToFloat(ImpRetGanancia))>0) and (Int(StrToFloat(ImpRetIVA))>0) then
                    CodImpuesto      := 'IG'
                  else
                    if (Int(StrToFloat(ImpRetGanancia))<=0) and (Int(StrToFloat(ImpRetIVA))>0) then
                      CodImpuesto      := 'IV'
                    else
                      CodImpuesto      := '  ';

                Alicuota1Minuta      := '00000';
                Importe1Minuta       := FormatFloat('00000000000.00',0);
                Delete(Importe1Minuta,pos('.',Importe1Minuta),1);
                Alicuota2Minuta      := '00000';
                Importe2Minuta       := FormatFloat('00000000000.00',0);
                Delete(Importe2Minuta,pos('.',Importe2Minuta),1);
                FillerNNN            := DupeString(' ',719);
                //**********************************************************
                WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                                  Filler,FechaCompMinuta,DescCompMinuta, CompDbCr,TipoCompMinuta,
                                  NroCompMinuta, ImporteCompMinuta, CodImpuesto, Alicuota1Minuta,
                                  Importe1Minuta, Alicuota2Minuta,Importe2Minuta,
                                  FillerNNN);
                //**********************************************************
                CDSMovAplicaCCCompra.Next;
                CantReg:=CantReg+1;
              end;
          end
        else
          if CDSMovAplicaCCCompra.RecordCount=1 then
            begin
              ContSecuen       := ContSecuen+1;
              IdentRegistro    := '0306';//edIdentRegistro.Text;// '0360'
              TipoReg          := '040';
              Secuencia        := FormatFloat('000000',ContSecuen);
              Filler           := '  ';
              FechaCompMinuta  := FormatDateTime('yyyymmdd',CDSMovAplicaCCCompraFECHA.AsDateTime);
              if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value='FC' then
                DescCompMinuta := AnsiLeftStr('FACTURA                    ',25)
              else
                if CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value='ND' then
                  DescCompMinuta := AnsiLeftStr('DEBITO                        ',25)
                else
                  DescCompMinuta := DupeString(' ',25);
              CompDbCr          := 'CR';
              TipoCompMinuta    := ' ';
              NroCompMinuta     :=  AnsiRightStr('00000'+CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString,12); // '000000000000';//  (CDSMovAplicaCCCompraAPLICA_NROCPBTE.AsString);

              ImporteCompMinuta := FormatFloat('00000000000.00',CDSMovAplicaCCCompraIMPORTE.AsFloat);
              ImporteAplicado   := ImporteAplicado + StrToFloat(ImporteCompMinuta);

              Delete(ImporteCompMinuta,pos('.',ImporteCompMinuta),1);
              if (Int(StrToFloat(ImpRetGanancia))>0) and (Int(StrToFloat(ImpRetIVA))<=0)  then
                CodImpuesto      := 'GA'
              else
                if (Int(StrToFloat(ImpRetGanancia))>0) and (Int(StrToFloat(ImpRetIVA))>0) then
                  CodImpuesto      := 'IG'
                else
                  if (Int(StrToFloat(ImpRetGanancia))<=0) and (Int(StrToFloat(ImpRetIVA))>0) then
                    CodImpuesto      := 'IV'
                  else
                    CodImpuesto      := '  ';

              Alicuota1Minuta  := '00000';
              Importe1Minuta   := FormatFloat('00000000000.00',0);
              Delete(Importe1Minuta,pos('.',Importe1Minuta),1);
              Alicuota2Minuta  := '00000';
              Importe2Minuta   := FormatFloat('00000000000.00',0);
              Delete(Importe2Minuta,pos('.',Importe2Minuta),1);
              FillerNNN        := DupeString(' ',719);
              //**********************************************************
              WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                                Filler,FechaCompMinuta,DescCompMinuta, CompDbCr,TipoCompMinuta,
                                NroCompMinuta, ImporteCompMinuta, CodImpuesto, Alicuota1Minuta,
                                Importe1Minuta, Alicuota2Minuta,Importe2Minuta,
                                FillerNNN);
            end;

          // *****************************************************
          //0306060   ****************** Tipo 60 ***************

        if Not(QRetIB.IsEmpty) then
          begin
            QRetIngBrDet.First;
            while Not(QRetIngBrDet.Eof) do
              begin
                IdentRegistro    := '0306';//edIdentRegistro.Text;// '0360'
                TipoReg          := '060';
                ContSecuen       := ContSecuen+1;
                Secuencia        := FormatFloat('000000',ContSecuen);
                NroCertRetIB     := QRetIBNROCPBTE.Value+' ';
                CodPcia          := '0002';
                NroIngBBen       := CDSOPagoCUIT.AsString;
                while (Pos('-',NroIngBBen)>0) do
                  delete(NroIngBBen,Pos('-',NroIngBBen),1);
                FillerNNN        := DupeString(' ',791);
                WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                                  NroCertRetIB, CodPcia ,NroIngBBen, FillerNNN);
                //*****************************************************
    //0306070   ****************** Tipo 70 ***************
                TipoReg           := '070';
                ContSecuen        := ContSecuen+1;
                Secuencia         := FormatFloat('000000',ContSecuen);
                FechaCompIB       := FormatDateTime('yyyymmdd',QRetIBFECHA.AsDateTime);
                DescCompIB        := AnsiLeftStr('Ret.IIBB Bs.As'+'                                              ',25);
                TipoCompIB        := ' ';
                NroIngBBen        := CDSOPagoCUIT.AsString;
                ImporteCompIB     := FormatFloat('00000000000.00',QRetIBTOTAL.AsFloat);
                Delete(ImporteCompIB,pos('.',ImporteCompIB),1);
                BaseImpoIB        := FormatFloat('00000000000.00',QRetIngBrDetBASEIMPONIBLE.AsFloat);
                Delete(BaseImpoIB,pos('.',BaseImpoIB),1);
                Alicuota1IB       := FormatFloat('000.00',QRetIngBrDetPORCENTAJE.AsFloat);
                Delete(Alicuota1IB,pos('.',Alicuota1IB),1);
                ImporteIIBB       := RoundTo(QRetIngBrDetRETENCION.AsFloat,-3);
                ImporteIIBB       := RoundTo(ImporteIIBB,-2);
                Importe1IB        := FormatFloat('00000000000.00',ImporteIIBB);
                Delete(Importe1IB,pos('.',Importe1IB),1);
                Alicuota2IB       := FormatFloat('000.00',0);
                Delete(Alicuota2IB,pos('.',Alicuota2IB),1);
                Importe2IB        := FormatFloat('00000000000.00',0);
                Delete(Importe2IB,pos('.',Importe2IB),1);
                Alicuota3IB       := FormatFloat('000.00',0);
                Delete(Alicuota3IB,pos('.',Alicuota3IB),1);
                Importe3IB        := FormatFloat('00000000000.00',0);
                Delete(Importe3IB,pos('.',Importe3IB),1);
                CodigoDbCr        := 'CR';
                NroCompIB         := DupeString(' ',12);
                FillerNNN         := DupeString(' ',692);

                //**********************************************************
                WriteLn(ArchiTxt, IdentRegistro, TipoReg,   TipoDocEmpre, NroCuitEmpresa,Secuencia,
                                  FechaCompIB,   DescCompIB,TipoCompIB,   NroCompIB,     ImporteCompIB, BaseImpoIB,
                                  Alicuota1IB,   Importe1IB,
                                  Alicuota2IB,   Importe2IB,
                                  Alicuota3IB,   Importe3IB,
                                  CodigoDbCr,    FillerNNN );
                //**********************************************************
                QRetIngBrDet.Next;
              end;
          end;
        //*********************************************
//0306090   ****************** Tipo 90 ***************
       With Frances090 do
         begin
           IDENT_REGISTRO      := '0306';
           TIPO_REG            := '090';
           TIPO_DOC_EMPRE      := 'CUIT';
           NRO_CUIT_EMPRE      := '00'+edCuitEmpresa.Text;
           while (Pos('-',NRO_CUIT_EMPRE)>0) do
             Delete(NRO_CUIT_EMPRE,Pos('-',NRO_CUIT_EMPRE),1);
           ContSecuen          := ContSecuen+1;
           SECUENCIA           := FormatFloat('000000',ContSecuen);
           PRO_NRO_ORD         := AnsiLeftStr (NombreArchivo+'                   ',15);
           PRO_NRO_BENEF       := AnsiRightStr('000000000000000'+CDSOPagoCODIGO.AsString,15);
           PRO_EST_BENEF       := '1';
           PRO_DOCTO_TIP       := 'CUI';
           PRO_DOCTO_NRO       := CDSOPagoCUIT.Value;
           while (Pos('-',PRO_DOCTO_NRO)>0) do
             Delete(PRO_DOCTO_NRO,Pos('-',PRO_DOCTO_NRO),1);
           PRO_DENOMINA        := AnsiLeftStr(QuitarCaracteres(CDSOPagoRAZONSOCIAL.Value)+'                                                                          ',40);
           PRO_CATEGO          := '  ';
           PRO_PERMIT_FINAN    := ' ';
           PRO_CUS_TIP         := '00';
           PRO_CUS_SUC         := '000';
           PRO_CUS_NRO         := DupeString('0',10);
           PRO_CBU_NRO         := CDSOPagoCBU.Value;//  DupeString('0',22);

           if (Trim(CDSOPagoCBU.AsString)='') or (Length(Trim(CDSOPagoCBU.AsString))<22) then
             PRO_CBU_NRO         := DupeString('0',22);

           PRO_INGBRTS         := PRO_DOCTO_NRO;
           if Trim(CDSOPagoDIRECCION.AsString)<>'' then
             PRO_CALLE         := AnsiLeftStr(CDSOPagoDIRECCION.Value+'                                ',24)
           else
             PRO_CALLE         := AnsiLeftStr('NO INFORMADO                                            ',24);
           PRO_NUMERO          := DupeString(' ', 5);
           PRO_DEPTO           := DupeString(' ', 3);
           PRO_PISO            := DupeString(' ', 2);
           PRO_LOCALID         := DupeString(' ',28);
           PRO_CPOSTAL         := DupeString(' ', 5);
           PRO_CODPROV         := '02';
           PRO_CODPAIS         := '080';
           if Trim(CDSOPagoCORREO.AsString)<>'' tHEN
             PRO_EMAIL         := Copy(CDSOPagoCORREO.AsString+'                                                            ',1,40)
           ELSE
             PRO_EMAIL         := Copy(Trim(edCorreo.Text)+'                                                                ',1,40);
           PRO_CALLE_ENTREGA   := DupeString(' ',24);
           PRO_NUMERO_ENTREGA  := DupeString(' ', 5);
           PRO_DEPTO_ENTREGA   := DupeString(' ', 3);
           PRO_PISO_ENTREGA    := DupeString(' ', 2);
           PRO_LOCALID_ENTREGA := DupeString(' ',28);
           PRO_CPOSTAL_ENTREGA := DupeString(' ', 5);
           PRO_CODPROV_ENTREGA := DupeString(' ', 2);
           PRO_CODPAIS_ENTREGA := DupeString(' ', 3);
           PRO_TELEF_TIP       := DupeString(' ', 2);
           PRO_TELEF_PRE       := DupeString(' ', 4);
           PRO_TELEF_CAR       := DupeString(' ', 4);
           PRO_TELEF_NRO       := DupeString(' ', 5);
           PRO_TELEF_INT       := DupeString(' ',18);
           PRO_TELEF_ALTER_TIP := DupeString(' ', 2);
           PRO_TELEF_ALTER_PRE := DupeString(' ', 4);
           PRO_TELEF_ALTER_CAR := DupeString(' ', 4);
           PRO_TELEF_ALTER_NRO := DupeString(' ', 5);
           PRO_TELEF_ALTER_INT := DupeString(' ',18);

           if Trim(CDSOPagoAUTORIZADO_NOMBRE.AsString)<>'' then
             PRO_AUTORIZA_NOM1   := Copy(CDSOPagoAUTORIZADO_NOMBRE.AsString + DupeString(' ',25),1,25)
           else
             PRO_AUTORIZA_NOM1   := DupeString(' ',25);

           if Trim(CDSOPagoAUTORIZADO_TIPODOC.AsString)<>'' then
             PRO_AUTORIZA_TIP1   := Copy(CDSOPagoAUTORIZADO_TIPODOC.AsString + DupeString(' ',3),1,3)
           else
             PRO_AUTORIZA_TIP1   := DupeString(' ', 3);

           if Trim(CDSOPagoAUTORIZADO_NRODOC.AsString)<>'' then
             PRO_AUTORIZA_DOC1   := Copy(CDSOPagoAUTORIZADO_NRODOC.AsString + DupeString(' ',8),1,8)
           else
             PRO_AUTORIZA_DOC1   := DupeString('0', 8);

           if Trim(edAutorizado.Text)<>'' then
             begin
               PRO_AUTORIZA_NOM1   := Copy(edAutorizado.Text + DupeString(' ',25),1,25);
               PRO_AUTORIZA_TIP1   := Copy('DNI'+ DupeString(' ',3),1,3);
               PRO_AUTORIZA_DOC1   := Copy(edDocAutorizado.Text + DupeString(' ',8),1,8);
             end;

           PRO_AUTORIZA_NOM2   := AnsiRightStr(Trim(edAutorizado.Text)+DupeString(' ',25),25);
           if Trim(PRO_AUTORIZA_NOM2)='' then
             PRO_AUTORIZA_TIP2   := DupeString(' ', 3)
           else
             PRO_AUTORIZA_TIP2   := 'DNI';
           PRO_AUTORIZA_DOC2   := AnsiRightStr(Trim(edDocAutorizado.Text)+DupeString('0', 8),8);
           PRO_AUTORIZA_NOM3   := DupeString(' ',25);
           PRO_AUTORIZA_TIP3   := DupeString(' ', 3);
           PRO_AUTORIZA_DOC3   := DupeString('0', 8);
           PRO_DATOS           := DupeString(' ',100);
           PRO_MINUTA          := AnsiRightStr(CDSOPagoNROCPBTE.AsString,8);
           FILLER              := DupeString(' ',218);

        //**********************************************************
        WriteLn(ArchiTxt, IDENT_REGISTRO,      TIPO_REG,            TIPO_DOC_EMPRE,      NRO_CUIT_EMPRE,      SECUENCIA,
                          PRO_NRO_ORD,         PRO_NRO_BENEF,       PRO_EST_BENEF,       PRO_DOCTO_TIP,       PRO_DOCTO_NRO,
                          PRO_DENOMINA,        PRO_CATEGO,          PRO_PERMIT_FINAN,    PRO_CUS_TIP,         PRO_CUS_SUC,
                          PRO_CUS_NRO,         PRO_CBU_NRO,         PRO_INGBRTS,         PRO_CALLE,           PRO_NUMERO,
                          PRO_DEPTO,           PRO_PISO,            PRO_LOCALID,         PRO_CPOSTAL,         PRO_CODPROV,
                          PRO_CODPAIS,         PRO_EMAIL,           PRO_CALLE_ENTREGA,   PRO_NUMERO_ENTREGA,  PRO_DEPTO_ENTREGA,
                          PRO_PISO_ENTREGA,    PRO_LOCALID_ENTREGA, PRO_CPOSTAL_ENTREGA, PRO_CODPROV_ENTREGA, PRO_CODPAIS_ENTREGA,
                          PRO_TELEF_TIP,       PRO_TELEF_PRE,       PRO_TELEF_CAR,       PRO_TELEF_NRO,       PRO_TELEF_INT,
                          PRO_TELEF_ALTER_TIP, PRO_TELEF_ALTER_PRE, PRO_TELEF_ALTER_CAR, PRO_TELEF_ALTER_NRO, PRO_TELEF_ALTER_INT,
                          PRO_AUTORIZA_NOM1,   PRO_AUTORIZA_TIP1,   PRO_AUTORIZA_DOC1,   PRO_AUTORIZA_NOM2,   PRO_AUTORIZA_TIP2,
                          PRO_AUTORIZA_DOC2,   PRO_AUTORIZA_NOM3,   PRO_AUTORIZA_TIP3,   PRO_AUTORIZA_DOC3,   PRO_DATOS,
                          PRO_MINUTA,          FILLER);

         end;

        //**********************************************************

        CDSOPago.Next;
      end;
    //***********************************************************
//0306095****************** Tipo 95 ***************
    TipoReg        := '095';
    ContSecuen     := ContSecuen+1;
    Secuencia      := FormatFloat('000000',ContSecuen);
    SumaImporte    := FormatFloat('00000000000.00',SumaTodo03620);
    Delete(SumaImporte,pos('.',SumaImporte),1);
    CanPagos       := FormatFloat('0000000', CDSOPago.RecordCount);
    TotalReg       := FormatFloat('0000000000', ContSecuen+1);
    FillerNNN      := DupeString(' ',790);
    WriteLn(ArchiTxt, IdentRegistro, TipoReg, TipoDocEmpre, NroCuitEmpresa,Secuencia,
                      SumaImporte, CanPagos,TotalReg,FillerNNN);


  end;
CloseFile(ArchiTxt);
if Not(VirtualUI.Active) then
  ShowMessage('Archivo Generado en ..'+NombreArchivo);

   if VirtualUI.Active then
      VirtualUI.DownloadFile( NombreArchivo);

end;

procedure TFormListadoOPago.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSOPago.IsEmpty) Then
    begin

      frConsulta.PrintOptions.Printer:=PrNomListados;
      frConsulta.SelectPrinter;
      frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoOPagoEmitidas.fr3');
      frConsulta.Variables['desde']   :=''''+Desde.Text+'''';
      frConsulta.Variables['hasta']   :=''''+Hasta.Text+'''';
      frConsulta.Variables['sucursal']:=''''+dbcSucursal.Text+'''';

      frConsulta.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormListadoOPago.lbPathClick(Sender: TObject);
var S:String;
begin
  inherited;
  s:= lbPath.Caption;
 // ShellExecute(0, 'open', nil, nil, lbPath.Caption, SW_SHOW);
 //  WinExec(PChar('explorer.exe '+ lbPath.Caption), SW_SHOW);
  //ShellExecute(Handle, 'open', 'notepad.exe', 'c:\a\a.txt', '', SW_SHOW);
 // ShellExecute(Handle, 'open', 'notepad.exe',PChar(lbPath.Caption), '', SW_SHOW);
  ShellExecute(0, 'explore', nil, nil, PChar(lbPath.Caption), SW_SHOW);
end;

procedure TFormListadoOPago.lwComprobantesColumnClick(Sender: TObject;
  Column: TListColumn);
begin
  inherited;
  ColumnToSort := Column.Index;
  (Sender as TCustomListView).AlphaSort;
end;

procedure TFormListadoOPago.lwComprobantesCompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
var
  i: Integer;
begin
  if ColumnToSort = 0 then
    Compare := CompareText(Item1.Caption,Item2.Caption)
  else begin
   i := ColumnToSort - 1;
   Compare := CompareText(Item1.SubItems[i],Item2.SubItems[i]);
  end;
end;

procedure TFormListadoOPago.lwComprobantesCustomDrawItem(
  Sender: TCustomListView; Item: TListItem; State: TCustomDrawState;
  var DefaultDraw: Boolean);
begin
  inherited;
  if Item.Checked then
    lwComprobantes.Canvas.Brush.Color := clAqua;
end;

procedure TFormListadoOPago.QOPagoNumeracionAfterPost(DataSet: TDataSet);
begin
  inherited;
  begin
    if QOPagoNumeracion.ApplyUpdates(-1)=0 Then
      begin
        DMMain_FD.LogFileFD(0,2,'Cambio Nro Cpbte.Orden Pago x Listados: Original:'+
                            (QOPagoNumeracionLETRAOP.OldValue)+'-'+
                            (QOPagoNumeracionSUCOP.OldValue)+'-'+
                            (QOPagoNumeracionNUMEROOP.OldValue)+' '+
                            'Nuevo   :'+(QOPagoNumeracionLETRAOP.Value)+'-'+
                            (QOPagoNumeracionSUCOP.Value)+'-'+
                            (QOPagoNumeracionNUMEROOP.Value),
                            'CAMBIOOP');

      end;

  end;
end;

procedure TFormListadoOPago.QOPagoNumeracionNUMEROOPSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size - Length(Trim(Text)))+Trim(Text);
end;

procedure TFormListadoOPago.QOPagoNumeracionSUCOPSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size- Length(Trim(Text)))+Trim(Text);
end;

procedure TFormListadoOPago.QRetIBAfterOpen(DataSet: TDataSet);
begin
  inherited;
  QRetIngBrDet.Close;
  QRetIngBrDet.ParamByName('id').Value:=QRetIBID.Value;
  QRetIngBrDet.Open;
end;

procedure TFormListadoOPago.QValoresAfterOpen(DataSet: TDataSet);
begin
  inherited;
  cxGMovValoresDBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
end;


procedure TFormListadoOPago.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:Integer;
lista:TListItem;
begin

  LstOpago := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LstOPago.ini');
 //*************************************************************
  LstOPago.WriteString('Datos', 'NroDebito', edNroCtaDebito.Text);
  LstOPago.WriteString('Datos', 'NroCuit',   edCuitEmpresa.Text);
  LstOPago.WriteString('Datos', 'SucEntrega', edSucursalEntrega.Text);
  LstOPago.WriteString('Datos', 'SucCtaDebito', edSucCtaDebito.Text);
  LstOPago.WriteString('Datos', 'DVCtaDebito', edDvCtaDebito.Text);
  LstOPago.WriteString('Datos', 'ContratoProv', edContratoProv.Text);
  LstOPago.WriteString('Datos', 'correo', edCorreo.Text);
  LstOPago.WriteString('Datos', 'RazonSocial', edRazonSocial.Text);
  LstOPago.WriteBool('Datos', 'NroChe', chbPonerNroChe.Checked);
  LstOPago.WriteString('Datos', 'Autorizado', edAutorizado.Text);
  LstOPago.WriteString('Datos', 'Documento', edDocAutorizado.Text);
  LstOPago.WriteString('Datos', 'ConvenioMacro', edNroConvenioMacro.Text);

  LstOPago.Free;

 for I := 0 to lwComprobantes.Items.Count - 1 do
    begin
      lista:=lwComprobantes.Items[i];
      QCambiaEstado.Close;
      QCambiaEstado.ParamByName('id').Value:= Lista.SubItems.Strings[4];
      if lista.Checked then
        QCambiaEstado.ParamByName('estado').Value:= 'S'
      else
        QCambiaEstado.ParamByName('estado').Value:= 'N';
      QCambiaEstado.ExecSQL;
      QCambiaEstado.Close;
    end;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoOPago.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoOPago:=nil;
end;

procedure TFormListadoOPago.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
    frConsulta.DesignReport;
end;

procedure TFormListadoOPago.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  if TPath.GetDocumentsPath<>'' then
    lbPath.Caption:=TPath.GetDocumentsPath+'\'
  else
    lbPath.Caption:='Sin Destino..';
end;



end.