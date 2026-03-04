unit UListadoRtosDetalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, frxClass,
  frxExportPDF, frxDBSet, Data.DB, Datasnap.DBClient, Datasnap.Provider,
  JvBaseEdits, JvToolEdit, Vcl.Mask, JvExMask, JvExControls, JvDBLookup,
  Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.ComCtrls, JvLabel, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList,
  JvDBControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,DateUtils,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPSStdGrLnk, CompBuscador, dxPScxVGridLnk, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, AdvUtil, AdvObj,
  BaseGrid, VirtualUi_Sdk, FireDAC.Stan.Intf,cxGridExportLink,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils, cxCheckBox,
  AdvOfficeButtons, frxExportBaseDialog, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, AdvGrid, AdvSprd,
  System.ImageList, dxBarBuiltInMenu, cxCustomPivotGrid, cxDBPivotGrid,
  Vcl.DBCtrls,cxExportPivotGridLink, Vcl.Menus, frCoreClasses,
  dxPScxExtComCtrlsLnk;

type
  TFormListadoRtosDetalle = class(TFormABMBase)
    Label1: TLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    UpDown1: TUpDown;
    dbgCab: TDBGrid;
    dbgDet: TDBGrid;
    edNombreCliente: TEdit;
    dbcSucursal: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCliente: TJvComboEdit;
    edTotal: TJvCalcEdit;
    DSRtoCab: TDataSource;
    DSRtoDet: TDataSource;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    CDSClientesDIRECCION_PARTICULAR: TStringField;
    CDSClientesDIRECCION_COMERCIAL: TStringField;
    CDSClientesTELEFONO_PARTICULAR: TStringField;
    CDSClientesTELEFONO_COMERCIAL_1: TStringField;
    CDSClientesTELEFONO_COMERCIAL_2: TStringField;
    CDSClientesTELEFONO_CELULAR: TStringField;
    CDSClientesID_COD_POSTAL: TIntegerField;
    CDSClientesCPOSTAL: TStringField;
    CDSClientesLOCALIDAD: TStringField;
    CDSClientesCONDICION_IVA: TIntegerField;
    CDSClientesEMITE_REMITO: TStringField;
    CDSClientesEMITE_FACTURA: TStringField;
    CDSClientesNRO_DE_CUIT: TStringField;
    CDSClientesACTIVO: TStringField;
    CDSClientesOBSERVACIONES: TMemoField;
    CDSClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    CDSClientesFECHAALTA: TSQLTimeStampField;
    CDSClientesSUCURSAL: TIntegerField;
    CDSClientesZONA: TIntegerField;
    CDSClientesVENDEDOR: TStringField;
    CDSClientesULTIMOPAGO: TSQLTimeStampField;
    CDSClientesLISTAPRECIOS: TIntegerField;
    CDSClientesFECHANACIMIENTO: TSQLTimeStampField;
    CDSClientesTIPODOCUMENTO: TSmallintField;
    CDSClientesNRODOCUMENTO: TStringField;
    CDSClientesCORREOELECTRONICO: TStringField;
    CDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    CDSClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    CDSClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    CDSClientesID_TIKETPORDEFECTO: TIntegerField;
    CDSClientesPERCIBIR_IB: TStringField;
    CDSClientesINSCRIPTO_MULTICONVENIO: TStringField;
    CDSClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    CDSClientesCONTACTO: TStringField;
    CDSClientesTELEFONO_CONTACTO: TStringField;
    CDSClientesCOBRADOR: TStringField;
    CDSClientesCATEGORIA: TIntegerField;
    CDSClientesLONGITUD: TStringField;
    CDSClientesLATITUD: TStringField;
    CDSClientesDIRECCION_CALLE: TStringField;
    CDSClientesDIRECCION_NUMERO: TStringField;
    CDSClientesDIRECCION_PISO: TStringField;
    CDSClientesDIRECCION_DEPTO: TStringField;
    CDSClientesDEUDAMAYOR30: TStringField;
    CDSClientesMUESTRATELEDISCADO: TStringField;
    CDSClientesMUESTRAVENDEDOR: TStringField;
    CDSClientesMUESTRACOBRADOR: TStringField;
    CDSClientesTIPOABONO: TStringField;
    CDSClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    CDSClientesMES_ABONOANUAL: TIntegerField;
    DSSucursales: TDataSource;
    DSTipoCpbte: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    frDBFcDet: TfrxDBDataset;
    frDBFcImpuestos: TfrxDBDataset;
    frDBFcCab: TfrxDBDataset;
    frCpbte: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    Imprimir: TAction;
    BuscarCliente: TAction;
    BitBtn1: TBitBtn;
    Label2: TLabel;
    pcRemitos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    DSLstAgrupada: TDataSource;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    TabSheet1: TTabSheet;
    AdvSGridPagos: TAdvSpreadGrid;
    Button1: TButton;
    SaveDialog: TSaveDialog;
    Label3: TLabel;
    cbComprobantes: TJvDBLookupCombo;
    QTipoCpbte: TFDQuery;
    QTipoCpbteID_COMPROBANTE: TIntegerField;
    QTipoCpbteTIPO_COMPROB: TStringField;
    QTipoCpbteCLASE_COMPROB: TStringField;
    QTipoCpbteDENOMINACION: TStringField;
    QTipoCpbteSUCURSAL: TIntegerField;
    QTipoCpbteLETRA: TStringField;
    QTipoCpbtePREFIJO: TStringField;
    QTipoCpbteNUMERARCION_PROPIA: TStringField;
    QTipoCpbteNUMERO: TStringField;
    QTipoCpbteTOMA_NRO_DE: TIntegerField;
    QTipoCpbteAFECTA_IVA: TStringField;
    QTipoCpbteAFECTA_CC: TStringField;
    QTipoCpbteDESGLOZA_IVA: TStringField;
    QTipoCpbteCOMPRA_VENTA: TStringField;
    QTipoCpbteCOPIAS: TIntegerField;
    QTipoCpbteREPORTE: TStringField;
    QTipoCpbteIMPRIME: TStringField;
    QTipoCpbteFISCAL: TStringField;
    QTipoCpbteNOMBREIMPRESORA: TStringField;
    QTipoCpbtePENDIENTEIMPRESION: TStringField;
    QTipoCpbteLINEAS_DETALLE: TSmallintField;
    QTipoCpbteCALCULA_IVA_ARTICULOS: TStringField;
    QTipoCpbteDEFECTO: TStringField;
    QTipoCpbteCAJA_DEFECTO: TIntegerField;
    QTipoCpbteDIVIDE_IVA: TStringField;
    QTipoCpbteFACTURAELECTRONICA: TStringField;
    QTipoCpbteEN_USO: TStringField;
    QTipoCpbteCODIGO_AFIP: TStringField;
    QTipoCpbteID_AJUSTECC: TIntegerField;
    QTipoCpbteCENTRO_COSTO: TIntegerField;
    QTipoCpbteFILTRO_COMPROBANTES: TStringField;
    QTipoCpbteDEPOSITO: TIntegerField;
    QTipoCpbteULTIMONRO: TIntegerField;
    QTipoCpbteEDITAR_NRO: TStringField;
    QLstAgrupada: TFDQuery;
    QRtoDet: TFDQuery;
    QRtoCab: TFDQuery;
    QRtoCabID_RTO: TIntegerField;
    QRtoCabTIPOCPBTE: TStringField;
    QRtoCabCLASECPBTE: TStringField;
    QRtoCabNROCPBTE: TStringField;
    QRtoCabCODIGO: TStringField;
    QRtoCabLETRARTO: TStringField;
    QRtoCabSUCRTO: TStringField;
    QRtoCabNUMERORTO: TStringField;
    QRtoCabNOMBRE: TStringField;
    QRtoCabRAZONSOCIAL: TStringField;
    QRtoCabDIRECCION: TStringField;
    QRtoCabCPOSTAL: TStringField;
    QRtoCabLOCALIDAD: TStringField;
    QRtoCabTIPOIVA: TIntegerField;
    QRtoCabCUIT: TStringField;
    QRtoCabLISTAPRECIO: TIntegerField;
    QRtoCabCONDICIONVTA: TIntegerField;
    QRtoCabANULADO: TStringField;
    QRtoCabNROFACT: TStringField;
    QRtoCabN_OPERACION2: TFloatField;
    QRtoCabNETOGRAV1: TFloatField;
    QRtoCabNETOGRAV2: TFloatField;
    QRtoCabDSTO: TFloatField;
    QRtoCabDSTOIMPORTE: TFloatField;
    QRtoCabNETOEXEN1: TFloatField;
    QRtoCabNETOEXEN2: TFloatField;
    QRtoCabTOTAL: TFloatField;
    QRtoCabDEBE: TFloatField;
    QRtoCabIMPRESO: TStringField;
    QRtoCabOBSERVACION1: TStringField;
    QRtoCabOBSERVACION2: TStringField;
    QRtoCabCPTE_MANUAL: TStringField;
    QRtoCabSUCURSAL: TIntegerField;
    QRtoCabZONA: TIntegerField;
    QRtoCabLDR: TIntegerField;
    QRtoCabDEPOSITO: TIntegerField;
    QRtoCabCALCULA_SOBRETASA: TStringField;
    QRtoCabDESGLOZAIVA: TStringField;
    QRtoCabNROENTREGA: TIntegerField;
    QRtoCabINGRESA_A_CTACTE: TStringField;
    QRtoCabINGRESA_LIBRO_IVA: TStringField;
    QRtoCabIDFACTURA: TIntegerField;
    QRtoCabCOMISIONVENDEDOR: TFloatField;
    QRtoCabVENDEDOR: TStringField;
    QRtoCabUSUARIO: TStringField;
    QRtoCabRENGLONES: TSmallintField;
    QRtoCabNOTAPEDIDO_ID: TIntegerField;
    QRtoCabNOTAPEDIDO_NROCPBTE: TStringField;
    QRtoCabID_TRANSPORTE: TIntegerField;
    QRtoCabTAREAS: TStringField;
    QRtoCabPRESUPUESTO_ID: TIntegerField;
    QRtoCabPRESUPUESTO_NROCPBTE: TStringField;
    QRtoCabNOTAVTA_ID: TIntegerField;
    QRtoCabNOTAVTA_NROCPBTE: TStringField;
    QRtoCabCON_GTIA_EXTENDIDA: TStringField;
    QRtoCabPOLIZA: TStringField;
    QRtoCabCANT_BULTOS: TIntegerField;
    QRtoCabREMITO_ELECTRONICO: TStringField;
    QRtoCabCAE: TStringField;
    QRtoCabDEVOLUCION: TStringField;
    QRtoCabID_CHOFER: TIntegerField;
    QRtoCabTRASNPORTE_UNIDAD: TIntegerField;
    QRtoCabTRASNPORTE_ADICIONAL: TIntegerField;
    QRtoCabPEDIDO_ID: TIntegerField;
    QRtoCabMUESTRASUCURSAL: TStringField;
    QRtoDetID: TIntegerField;
    QRtoDetID_CABRTO: TIntegerField;
    QRtoDetTIPOCPBTE: TStringField;
    QRtoDetCLASECPBTE: TStringField;
    QRtoDetNROCPBTE: TStringField;
    QRtoDetRENGLON: TFloatField;
    QRtoDetCODIGOARTICULO: TStringField;
    QRtoDetDETALLE: TStringField;
    QRtoDetDETALLE_ADICIONAL: TStringField;
    QRtoDetUNIDAD: TStringField;
    QRtoDetCANTIDAD: TFloatField;
    QRtoDetCOSTO_GRAVADO: TFloatField;
    QRtoDetCOSTO_EXENTO: TFloatField;
    QRtoDetCOSTO_TOTAL: TFloatField;
    QRtoDetUNITARIO_GRAVADO: TFloatField;
    QRtoDetIVA_UNITARIO: TFloatField;
    QRtoDetUNITARIO_EXENTO: TFloatField;
    QRtoDetUNITARIO_TOTAL: TFloatField;
    QRtoDetTOTAL_GRAVADO: TFloatField;
    QRtoDetIVA_TOTAL: TFloatField;
    QRtoDetTOTAL_EXENTO: TFloatField;
    QRtoDetTOTAL: TFloatField;
    QRtoDetDESGLOZAIVA: TStringField;
    QRtoDetMODO_GRAVAMEN: TStringField;
    QRtoDetIVA_TASA: TFloatField;
    QRtoDetIVA_SOBRETASA: TFloatField;
    QRtoDetTIPOIVA_TASA: TIntegerField;
    QRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    QRtoDetDESCUENTO: TFloatField;
    QRtoDetDEPOSITO: TIntegerField;
    QRtoDetMARGEN: TFloatField;
    QRtoDetAFECTA_STOCK: TStringField;
    QRtoDetCALCULA_SOBRETASA: TStringField;
    QRtoDetGRAVADO_IB: TStringField;
    QRtoDetID_MONEDA: TIntegerField;
    QRtoDetCOTIZACION: TFloatField;
    QRtoDetLOTE: TIntegerField;
    QRtoDetOBSERVACION: TStringField;
    QRtoDetNOTAVENTA_ID: TIntegerField;
    QRtoDetNOTAVENTA_ID_DET: TIntegerField;
    QRtoDetCODIGOBARRA: TStringField;
    QRtoDetPRECIO_EDITABLE: TStringField;
    QRtoDetCANT_FACTURA: TFloatField;
    QRtoDetID_MERCA_ACOPIO_DET: TIntegerField;
    QRtoDetPRESENTACION_CANT: TFloatField;
    QRtoDetCANTIDAD_UNIDADES: TFloatField;
    QLstAgrupadaID: TIntegerField;
    QLstAgrupadaID_CABRTO: TIntegerField;
    QLstAgrupadaCLASECPBTE: TStringField;
    QLstAgrupadaNROCPBTE: TStringField;
    QLstAgrupadaCODIGO: TStringField;
    QLstAgrupadaNOMBRE: TStringField;
    QLstAgrupadaRAZONSOCIAL: TStringField;
    QLstAgrupadaTOTALRTO: TFloatField;
    QLstAgrupadaDEVOLUCION: TStringField;
    QLstAgrupadaCODIGOARTICULO: TStringField;
    QLstAgrupadaDETALLE: TStringField;
    QLstAgrupadaCANTIDAD: TFloatField;
    QLstAgrupadaUNITARIO_TOTAL: TFloatField;
    QLstAgrupadaIVA_UNITARIO: TFloatField;
    QLstAgrupadaIVA_TOTAL: TFloatField;
    QLstAgrupadaTOTAL: TFloatField;
    QLstAgrupadaMUESTRARTO: TStringField;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DEVOLUCION: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRARTO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QRtoCabFECHAVTA: TSQLTimeStampField;
    QRtoCabFECHAVTO: TSQLTimeStampField;
    QRtoCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QRtoCabFECHA_HORA: TSQLTimeStampField;
    QRtoDetFECHAVTA: TSQLTimeStampField;
    QLstAgrupadaFECHAVTA: TSQLTimeStampField;
    chTodosLosClientes: TAdvOfficeCheckBox;
    pag3: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    Panel2: TPanel;
    QRtoDetPRESENTACION_UNIDAD: TStringField;
    QRtoDetID_FACTURA: TIntegerField;
    QRtoDetID_DET_OPRODUCCION: TIntegerField;
    QRtoDetCODIGOCLIENTE: TStringField;
    QRtoDetNOMBRE: TStringField;
    QRtoDetRAZONSOCIAL: TStringField;
    QRtoDetFECHACPBTERTO: TSQLTimeStampField;
    QRtoDetCODIGO_RUBRO: TStringField;
    QRtoDetDETALLE_RUBRO: TStringField;
    QRtoDetCODIGO_SUBRUBRO: TStringField;
    QRtoDetDETALLE_SUBRUBRO: TStringField;
    QRtoDetANIO: TSmallintField;
    QRtoDetMES: TSmallintField;
    QRtoDetGeneral: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    StringField8: TStringField;
    StringField9: TStringField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField16: TFloatField;
    IntegerField5: TIntegerField;
    FloatField17: TFloatField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField6: TIntegerField;
    FloatField18: TFloatField;
    IntegerField7: TIntegerField;
    StringField13: TStringField;
    IntegerField8: TIntegerField;
    IntegerField9: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField19: TFloatField;
    IntegerField10: TIntegerField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField16: TStringField;
    IntegerField11: TIntegerField;
    IntegerField12: TIntegerField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    SQLTimeStampField2: TSQLTimeStampField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    StringField23: TStringField;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    DSRtoDetGeneral: TDataSource;
    cxDBPivotGrid1TIPOCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGOARTICULO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid1UNIDAD: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGOCLIENTE: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1RAZONSOCIAL: TcxDBPivotGridField;
    cxDBPivotGrid1FECHACPBTERTO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_RUBRO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
    DBText1: TDBText;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    MostrarCampos1: TMenuItem;
    Columnas1: TMenuItem;
    N1: TMenuItem;
    LimpiarFiltros1: TMenuItem;
    LimpiarFiltros: TAction;
    QRtoCabID_TRANSFERENCIA: TIntegerField;
    QRtoCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    QRtoCabFECHA_ENTREGA: TSQLTimeStampField;
    QRtoCabCOT: TStringField;
    QRtoCabREMITO_IMPRENTA: TStringField;
    QRtoCabREMITO_FECHA_RANGO: TStringField;
    QRtoCabREMITO_DIRECCION: TStringField;
    QRtoCabREMITO_CAI: TStringField;
    QRtoCabREMITO_VENCIMIENTO_CAI: TStringField;
    QRtoCabMUESTRARESPONSABLE: TStringField;
    QRtoCabMUESTRATRANSPORTE: TStringField;
    QRtoCabMUESTRADOMINIO: TStringField;
    QRtoCabMUESTRAKILOMETROS: TFloatField;
    QLstAgrupadaMUESTRARESPONSABLE: TStringField;
    QLstAgrupadaMUESTRATRANSPORTE: TStringField;
    QLstAgrupadaMUESTRADOMINIO: TStringField;
    QLstAgrupadaMUESTRAKILOMETROS: TFloatField;
    cxGrid1DBTableView1MUESTRADOMINIO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAKILOMETROS: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRARESPONSABLE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRATRANSPORTE: TcxGridDBColumn;
    procedure sumar;
    procedure FormShow(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgCabDblClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure chTodosLosClientesClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgCabDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure cbComprobantesClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure MostrarCampos1Click(Sender: TObject);
    procedure Columnas1Click(Sender: TObject);
    procedure LimpiarFiltrosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
 TPivotGridAccess = class(TcxDBPivotGrid);
 TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoRtosDetalle: TFormListadoRtosDetalle;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

{$R *.dfm}

uses URemitos, UBuscadorClientes,UDMain_FD;

procedure TFormListadoRtosDetalle.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCpbte.DesignReport;
end;

procedure TFormListadoRtosDetalle.sumar;
var p:TBookmark;
Aux:Extended;
begin
  edTotal.Value:=0;
  Aux          :=0;
  QRtoCab.First;
  p:=QRtoCab.GetBookmark;
  QRtoCab.DisableControls;
  while not(QRtoCab.Eof) do
    begin
      Aux := Aux + QRtoCabTOTAL.AsFloat;
      QRtoCab.Next;
    end;
  QRtoCab.GotoBookmark(p);
  QRtoCab.FreeBookmark(p);
  QRtoCab.EnableControls;
  edTotal.Value :=Aux;
end;


procedure TFormListadoRtosDetalle.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
 end;


procedure TFormListadoRtosDetalle.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := CDSClientesNOMBRE.Value;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;

end;

procedure TFormListadoRtosDetalle.BuscarExecute(Sender: TObject);
var contador,IDDesde,IDHasta:integer;
    Cel0,CelFin,I:Integer;
begin
  inherited;
  QRtoCab.Close;
  QRtoCab.ParamByName('TipoCpbte').Value  :=cbComprobantes.KeyValue;
  QRtoCab.ParamByName('desde').Value      :=Desde.Date;
  QRtoCab.ParamByName('hasta').Value      :=Hasta.Date;
  QRtoCab.ParamByName('sucursal').Value   :=dbcSucursal.KeyValue;

   if (chTodosLosClientes.Checked=True) then
    QRtoCab.ParamByName('codigo').Value:='******'
  else
    QRtoCab.ParamByName('codigo').Value:=ceCliente.Text;

  QRtoCab.Open;

  IDDesde:=QRtoCabID_RTO.Value;
  QRtoCab.Last;
  IDHasta :=QRtoCabID_RTO.Value;

  Sumar;

  QRtoDet.Close;
  QRtoDet.MasterSource:=nil;
  QRtoDet.MasterFields:='';
  QRtoDet.Params.ParamByName('id_desde').Value:=IDDesde;
  QRtoDet.Params.ParamByName('id_Hasta').Value:=IDHasta;
  QRtoDet.Open;

  QRtoDetGeneral.Close;
  //QRtoDetGeneral.MasterSource:=nil;
  //QRtoDetGeneral.MasterFields:='';
  QRtoDetGeneral.Params.ParamByName('id_desde').Value:=IDDesde;
  QRtoDetGeneral.Params.ParamByName('id_Hasta').Value:=IDHasta;
  QRtoDetGeneral.Open;



  QRtoDet.MasterSource:=DSRtoCab;
  QRtoDet.MasterFields:='ID_RTO';

  QLstAgrupada.Close;
  QLstAgrupada.Params.ParamByName('desde').Value    := Desde.Date;
  QLstAgrupada.Params.ParamByName('hasta').Value    := Hasta.Date;
  QLstAgrupada.Params.ParamByName('id_cpbte').Value := cbComprobantes.KeyValue;
  if (chTodosLosClientes.Checked=True) then
    QLstAgrupada.Params.ParamByName('codigo').Value := '******'
  else
    QLstAgrupada.Params.ParamByName('codigo').Value := ceCliente.Text;
  QLstAgrupada.Open;

  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

  QRtoCab.First;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;

 {
  Contador:=1;
  AdvSGridPagos.ClearNormalCells;
  AdvSGridPagos.RowCount := QRtoCab.RecordCount+11;
  AdvSGridPagos.ColCount := 8;
  while not(QRtoCab.Eof) do
    begin
      AdvSGridPagos.MergeCells(1,Contador,3,1);
      AdvSGridPagos.MergeCells(1,Contador+1,3,1);

      AdvSGridPagos.Cells [1,Contador]     := QRtoCabCODIGO.AsString+' '+QRtoCabNOMBRE.AsString;;
      AdvSGridPagos.Cells [1,Contador+1]   := QRtoCabFECHAVTA.AsString+'--'+QRtoCabNROCPBTE.AsString;

      AdvSGridPagos.FontStyles[1,Contador]   :=[fsBold];
      AdvSGridPagos.FontStyles[1,Contador+1] :=[fsBold];

      AdvSGridPagos.FontStyles[5,Contador+1] := [fsBold];
      AdvSGridPagos.Alignments[5,Contador]   := taRightJustify;

      Contador:=Contador+1;
      if Not(QRtoDet.IsEmpty) then
        begin
          AdvSGridPagos.RowCount := AdvSGridPagos.RowCount+QRtoDet.RecordCount+2;
          Cel0:=Contador;
          while Not(QRtoDet.Eof) do
            begin
              Inc(Contador);
              AdvSGridPagos.Cells [1,Contador]     := QRtoDetRENGLON.AsString;
              AdvSGridPagos.Cells [2,Contador]     := QRtoDetCODIGOARTICULO.AsString;
              AdvSGridPagos.Cells [3,Contador]     := QRtoDetDETALLE.AsString;
              AdvSGridPagos.Cells [4,Contador]     := QRtoDetUNIDAD.AsString;
              AdvSGridPagos.Floats [5,Contador]    := QRtoDetCANTIDAD.AsFloat;
              AdvSGridPagos.Alignments[5,Contador] := taRightJustify;
              AdvSGridPagos.FontStyles[5,Contador] := [fsBold];
              QRtoDet.Next;
            end;
        end;

      CelFin:=Contador;
      Inc(Contador);

      AdvSGridPagos.Floats[6,Contador]   := QRtoCabTOTAL.AsFloat;

      AdvSGridPagos.FontStyles[5,Contador] := [fsBold];
      AdvSGridPagos.FontColors[5,Contador] := clBlue;
      AdvSGridPagos.FontStyles[6,Contador] := [fsBold];
      AdvSGridPagos.FontColors[6,Contador] := clBlue;

      QRtoCab.Next;
      Inc(Contador);
    end;
    }
end;

procedure TFormListadoRtosDetalle.Button1Click(Sender: TObject);
begin
  inherited;

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if pcRemitos.ActivePageIndex=1 then
    begin
      IF NOT (QRtoCab.IsEmpty) THEN
        BEGIN
          SaveDialog.FileName:='RtoDetalles';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' Then
              begin
                if VirtualUI.Active then
                  if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

                cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);
              end;
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        END
      ELSE
        ShowMessage('No hay datos visibles');
    end
  else
    if pcRemitos.ActivePageIndex=3 then
      begin
        IF NOT (DSRtoDetGeneral.DataSet.IsEmpty) THEN
          BEGIN
            cxDBPivotGrid1.OptionsView.DataFields     :=False;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
            cxDBPivotGrid1.OptionsView.RowFields      :=False;
            cxDBPivotGrid1.OptionsView.FilterFields   :=False;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
            SaveDialog.FileName:='MovimientosRto';
            SaveDialog.DefaultExt:='XLS';
            if VirtualUI.Active then
               SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
            if SaveDialog.Execute Then
              begin
                if VirtualUI.Active then
                 if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                   SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

                cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog.FileName);
              end;

            cxDBPivotGrid1.OptionsView.DataFields     :=True;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
            cxDBPivotGrid1.OptionsView.RowFields      :=True;
            cxDBPivotGrid1.OptionsView.FilterFields   :=True;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=True;

          END;
      end;
end;

procedure TFormListadoRtosDetalle.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente.Text := CDSClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormListadoRtosDetalle.chTodosLosClientesClick(Sender: TObject);
begin
  inherited;
 if ( chTodosLosClientes.Checked=True ) then
    begin
      ceCliente.Color  :=clBtnFace;
      ceCliente.Enabled:=False;

    end
  else
    begin
      ceCliente.Color  :=clWindow;
      ceCliente.Enabled:=True;

    end;
end;

procedure TFormListadoRtosDetalle.Columnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.RowFields:=Not(cxDBPivotGrid1.OptionsView.RowFields);

end;

procedure TFormListadoRtosDetalle.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved    := False;
  if (Button = mbLeft) then
  begin
    P := Point(X,Y);
    if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
      FDragDrop := True;
  end;
end;
procedure TFormListadoRtosDetalle.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoRtosDetalle.cxDBPivotGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormListadoRtosDetalle.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  QTipoCpbte.Close;
  QTipoCpbte.ParamByName('Sucursal').Value:=dbcSucursal.KeyValue;
  QTipoCpbte.Open;
end;

procedure TFormListadoRtosDetalle.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  cbComprobantes.KeyValue:=-1;
end;

procedure TFormListadoRtosDetalle.dbgCabDblClick(Sender: TObject);
begin
  inherited;
  if QRtoCab.IsEmpty then
    raise Exception.Create('No hya datos para consultar');
  begin
    if Not(Assigned(FormRemitos)) Then
      FormRemitos:=TFormRemitos.Create(self);
    FormRemitos.DatoNew   :=QRtoCabID_RTO.AsString;
    FormRemitos.TipoCpbte :=QRtoCabTIPOCPBTE.Value;
    FormRemitos.Recuperar.Execute;
    FormRemitos.Show;
  end
end;

procedure TFormListadoRtosDetalle.dbgCabDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if (QRtoCabDEVOLUCION.AsString='S') then
    dbgCab.Canvas.Font.Color:=clBlue;
  if (gdFocused in State) then
    begin
      dbgCab.canvas.brush.color := ClBlack;
      dbgCab.canvas.Font.color  := clWhite;
    end;
    //Esta línea es nueva
    dbgCab.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormListadoRtosDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoRtosDetalle.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcRemitos.ActivePageIndex:=0;
end;

procedure TFormListadoRtosDetalle.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
 // CDSTipoCpbte.OPen;
  CDSSucursal.Open;
end;

procedure TFormListadoRtosDetalle.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if pcRemitos.ActivePageIndex=0 then
    begin
      frCpbte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRemitos.fr3');
      frCpbte.Variables['Desde']:=''''+Desde.Text+'''';
      frCpbte.Variables['Hasta']:=''''+hasta.Text+'''';
      frCpbte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
      frCpbte.ShowReport;
    end
  else
   dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormListadoRtosDetalle.LimpiarFiltrosExecute(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListadoRtosDetalle.MostrarCampos1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);

end;

procedure TFormListadoRtosDetalle.cbComprobantesClick(Sender: TObject);
begin
  inherited;
  QTipoCpbte.Close;
  QTipoCpbte.ParamByName('Sucursal').Value:=dbcSucursal.KeyValue;
  QTipoCpbte.Open;
end;

procedure TFormListadoRtosDetalle.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoRtosDetalle:=nil;
end;

procedure TFormListadoRtosDetalle.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoRtosDetalle<>nil then
    if FormListadoRtosDetalle.Width<>967 then
      FormListadoRtosDetalle.Width:=967;

end;

end.
