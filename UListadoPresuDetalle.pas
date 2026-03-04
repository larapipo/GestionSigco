unit UListadoPresuDetalle;

interface
{$D+}
uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, cxGraphics,cxVariants,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, Data.DB, cxDBData, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxVGridLnk,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, frxClass, frxExportPDF, frxDBSet, Datasnap.DBClient,
  Datasnap.Provider, JvToolEdit, JvExControls, JvDBLookup, Vcl.StdCtrls,
  Vcl.ComCtrls, cxGridLevel, cxGridBandedTableView, cxGridDBBandedTableView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, Vcl.Grids, Vcl.DBGrids, Vcl.Mask, JvExMask,
  JvBaseEdits, JvLabel, CompBuscador, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,System.DateUtils,cxGridExportLink,VirtualUI_SDK,
  cxTextEdit, dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,StrUtils, Vcl.Menus, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  Vcl.CheckLst, JvExExtCtrls, JvExtComponent, JvPanel,IniFiles, AdvOfficeButtons,
  dxLayoutContainer, cxGridViewLayoutContainer, cxGridLayoutView,
  cxGridDBLayoutView, cxGridCustomLayoutView, dxPSStdGrLnk, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.ImageList,
  JvMaskEdit, JvDBFindEdit, dxSkinWXI, frCoreClasses, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCPanel, AdvPanel, dxPScxExtComCtrlsLnk;

const
  CM_UPDATE_SUMMARY = WM_USER + 1;

type
  TFormLstPresupuestoDetalle = class(TFormABMBase)
    pcPresupuestos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    DSPFacCab: TDataSetProvider;
    DSPFacDet: TDataSetProvider;
    CDSFacCab: TClientDataSet;
    CDSFacDet: TClientDataSet;
    DSFacDet: TDataSource;
    DSFacCab: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursales: TDataSource;
    DSLstAgrupada: TDataSource;
    frDBFcDet: TfrxDBDataset;
    frDBFcCab: TfrxDBDataset;
    frCpbte: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    CDSFacCabID_PR: TIntegerField;
    CDSFacCabTIPOCPBTE: TStringField;
    CDSFacCabCLASECPBTE: TStringField;
    CDSFacCabNROCPBTE: TStringField;
    CDSFacCabCODIGO: TStringField;
    CDSFacCabLETRAFAC: TStringField;
    CDSFacCabSUCFAC: TStringField;
    CDSFacCabNUMEROFAC: TStringField;
    CDSFacCabNOMBRE: TStringField;
    CDSFacCabRAZONSOCIAL: TStringField;
    CDSFacCabANULADO: TStringField;
    CDSFacCabMUESTRASUCURSAL: TStringField;
    CDSFacDetID: TIntegerField;
    CDSFacDetID_CABPRES: TIntegerField;
    CDSFacDetTIPOCPBTE: TStringField;
    CDSFacDetCLASECPBTE: TStringField;
    CDSFacDetNROCPBTE: TStringField;
    CDSFacDetCODIGOARTICULO: TStringField;
    CDSFacDetDETALLE: TStringField;
    CDSFacDetDETALLE_ADICIONAL: TStringField;
    CDSFacDetUNIDAD: TStringField;
    CDSFacDetDESGLOZAIVA: TStringField;
    CDSFacDetTIPOIVA_TASA: TIntegerField;
    CDSFacDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFacDetSUCURSAL: TIntegerField;
    CDSFacDetDEPOSITO: TIntegerField;
    CDSFacDetCALCULA_SOBRETASA: TStringField;
    CDSFacDetMODO_GRAVAMEN: TStringField;
    CDSFacDetAFECTA_STOCK: TStringField;
    CDSFacDetID_MONEDA: TIntegerField;
    CDSFacDetACEPTADO: TStringField;
    CDSFacDetNOTAS: TStringField;
    CDSFacDetCPBTESALIDA_ID: TIntegerField;
    CDSFacDetCPBTESALIDA_TIPO: TStringField;
    CDSFacDetCPBTESALIDA_CLASE: TStringField;
    CDSFacDetCPBTESALIDA_NROCPBTE: TStringField;
    CDSFacDetTIPOIB_TASA: TIntegerField;
    CDSFacDetGRAVADO_IB: TStringField;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    btExportarExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2CODIGOARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE_ADICIONAL: TcxGridDBColumn;
    cxGrid2DBTableView2UNIDAD: TcxGridDBColumn;
    cxGrid2DBTableView2DESCUENTO: TcxGridDBColumn;
    cxGrid2DBTableView2CANTIDAD: TcxGridDBColumn;
    cxGrid2DBTableView2IVA_UNITARIO: TcxGridDBColumn;
    cxGrid2DBTableView2UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView2TOTAL: TcxGridDBColumn;
    QFacC: TFDQuery;
    QFacD: TFDQuery;
    QLstAgrupada_: TFDQuery;
    CDSFacCabTOTAL: TFloatField;
    CDSFacDetRENGLON: TFloatField;
    CDSFacDetDESCUENTO: TFloatField;
    CDSFacDetCANTIDAD: TFloatField;
    CDSFacDetCOSTO_EXENTO: TFloatField;
    CDSFacDetCOSTO_GRAVADO: TFloatField;
    CDSFacDetCOSTO_TOTAL: TFloatField;
    CDSFacDetUNITARIO_GRAVADO: TFloatField;
    CDSFacDetIVA_UNITARIO: TFloatField;
    CDSFacDetUNITARIO_EXENTO: TFloatField;
    CDSFacDetUNITARIO_TOTAL: TFloatField;
    CDSFacDetTOTAL_EXENTO: TFloatField;
    CDSFacDetTOTAL_GRAVADO: TFloatField;
    CDSFacDetIVA_TOTAL: TFloatField;
    CDSFacDetTOTAL: TFloatField;
    CDSFacDetIVA_TASA: TFloatField;
    CDSFacDetIVA_SOBRETASA: TFloatField;
    CDSFacDetMARGEN: TFloatField;
    CDSFacDetCOTIZACION: TFloatField;
    CDSFacDetIB_TASA: TFloatField;
    BuscarCliente: TAction;
    cxGrid2DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1UNITARIO_CIVA: TcxGridDBColumn;
    cxGrid2DBTableView1IVA_UNITARIO: TcxGridDBColumn;
    cxGrid2DBTableView1IVA_TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_CIVA: TcxGridDBColumn;
    cxGrid2DBTableView1MUESTRAPRESPUESTO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu1: TPopupMenu;
    VerlosPreciosconIVA1: TMenuItem;
    CDSFacDetUNITARIO_CIVA: TFloatField;
    CDSFacDetTOTAL_CIVA: TFloatField;
    pagAgrupado: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAVTA: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1RAZONSOCIAL: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGOARTICULO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid1UNITARIO_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid1IVA_UNITARIO: TcxDBPivotGridField;
    cxDBPivotGrid1IVA_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid1TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid1MUESTRAPRESPUESTO: TcxDBPivotGridField;
    cxDBPivotGrid1UNITARIO_CIVA: TcxDBPivotGridField;
    cxDBPivotGrid1TOTAL_CIVA: TcxDBPivotGridField;
    cxDBPivotGrid1DIA: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label3: TLabel;
    Label4: TLabel;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn;
    pagLst_Itmes: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QLstAgrupadaItems_: TFDQuery;
    QLstAgrupadaItems_ID: TIntegerField;
    QLstAgrupadaItems_ID_CABPRES: TIntegerField;
    QLstAgrupadaItems_CLASECPBTE: TStringField;
    QLstAgrupadaItems_CODIGO: TStringField;
    QLstAgrupadaItems_NOMBRE: TStringField;
    QLstAgrupadaItems_RAZONSOCIAL: TStringField;
    QLstAgrupadaItems_NROCPBTE: TStringField;
    QLstAgrupadaItems_TOTAL_PRESU: TFloatField;
    QLstAgrupadaItems_TIPOIVA: TIntegerField;
    QLstAgrupadaItems_DISCRIMINAIVA: TStringField;
    QLstAgrupadaItems_CODIGOARTICULO: TStringField;
    QLstAgrupadaItems_DETALLE: TStringField;
    QLstAgrupadaItems_CANTIDAD: TFloatField;
    QLstAgrupadaItems_UNITARIO_TOTAL: TFloatField;
    QLstAgrupadaItems_IVA_UNITARIO: TFloatField;
    QLstAgrupadaItems_IVA_TOTAL: TFloatField;
    QLstAgrupadaItems_TOTAL: TFloatField;
    QLstAgrupadaItems_ITEM_NRO: TIntegerField;
    QLstAgrupadaItems_ITEMCANTIDAD: TFloatField;
    QLstAgrupadaItems_ITEMDETALLE: TStringField;
    QLstAgrupadaItems_ITEM_GRAVADO: TFloatField;
    QLstAgrupadaItems_ITEM_TOTAL: TFloatField;
    DSLstAgrupadaItems: TDataSource;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_NRO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMDETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1ITEMCANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_TOTAL: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGrid1DBTableView1NRO_ITEM: TcxGridDBColumn;
    QLstAgrupadaItems_CODIGO_ATERNATIVO: TStringField;
    QLstAgrupadaItems_NRO_ITEM_DET: TIntegerField;
    VerCodigoAlternativo1: TMenuItem;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesMUESTRATELEDISCADO: TStringField;
    QClientesMUESTRAVENDEDOR: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    QLstAgrupadaItems_NRO_FECHA: TStringField;
    cxGrid1DBTableView1NRO_FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    PopupMenu2: TPopupMenu;
    MenuItem4: TMenuItem;
    cxGrid1DBTableView1ID_CABPRES: TcxGridDBColumn;
    ExpandirListado1: TMenuItem;
    pnCabecera: TPanel;
    Label1: TLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    UpDown1: TUpDown;
    edNombreCliente: TEdit;
    dbcSucursal: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCliente: TJvComboEdit;
    chTodosLosClientes: TAdvOfficeCheckBox;
    CDSFacCabREFERENCIA: TStringField;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid3DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid3DBTableView1SUCFAC: TcxGridDBColumn;
    cxGrid3DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid3DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid3DBTableView1MUESTRAESTADO: TcxGridDBColumn;
    CDSFacCabTOTALITEMGRAVADO: TFloatField;
    cxGrid3DBTableView1TOTALITEMGRAVADO: TcxGridDBColumn;
    CDSFacDetITEM_NRO: TIntegerField;
    pnDetalle: TPanel;
    pnDetTotal: TPanel;
    PopupMenu3: TPopupMenu;
    MostrarTip1: TMenuItem;
    MostrarClase1: TMenuItem;
    pnCab: TPanel;
    CDSFacCabMUESTRAESTADO: TStringField;
    CDSFacCabSUB_NRO: TStringField;
    MostraTotal: TMenuItem;
    MostrarSuc: TMenuItem;
    CDSFacCabNROCPTE_SUF: TStringField;
    QFacC_New: TFDQuery;
    CDSFacCabINC_DETALLE: TStringField;
    CDSFacCabINC_USUARIO: TStringField;
    cxGrid3DBTableView1INC_DETALLE: TcxGridDBColumn;
    cxGrid3DBTableView1INC_FECHA_HORA: TcxGridDBColumn;
    cxGrid3DBTableView1INC_USUARIO: TcxGridDBColumn;
    CDSFacCabINC_CONTACTO: TStringField;
    CDSFacCabINC_ASUNTO: TStringField;
    cxGrid3DBTableView1INC_ASUNTO: TcxGridDBColumn;
    cxGrid3DBTableView1INC_CONTACTO: TcxGridDBColumn;
    MostrarIncidencia: TMenuItem;
    Splitter1: TSplitter;
    CDSFacCabOBRA: TStringField;
    MostrarObra1: TMenuItem;
    cxGrid3DBTableView1OBRA: TcxGridDBColumn;
    CDSFacCabCODIGOOBRA: TIntegerField;
    CDSFacDetFECHAVTA: TSQLTimeStampField;
    CDSFacDetESPECIFICACION: TStringField;
    CDSFacCabFECHAVTA: TSQLTimeStampField;
    CDSFacCabFECHA_TECNICA: TSQLTimeStampField;
    CDSFacCabFECHA_FINANCIERA: TSQLTimeStampField;
    CDSFacCabFECHA_ENTREGA: TSQLTimeStampField;
    CDSFacCabFECHA_REVISION: TSQLTimeStampField;
    CDSFacCabINC_FECHA_HORA: TSQLTimeStampField;
    QLstAgrupadaItems_FECHAVTA: TSQLTimeStampField;
    CDSFacDetCODALTERNATIVO: TStringField;
    N1: TMenuItem;
    cxStyle3: TcxStyle;
    CDSFacCabTOTALACEPTADOS: TFloatField;
    CDSFacCabTOTALRECHAZADOS: TFloatField;
    CDSFacCabTOTALESPERA: TFloatField;
    N2: TMenuItem;
    MostrarAgrupamiento: TMenuItem;
    DSPPresuSubDet: TDataSetProvider;
    CDSPresuSubDet: TClientDataSet;
    CDSPresuSubDetITEM_NRO: TIntegerField;
    CDSPresuSubDetID_CAB: TIntegerField;
    CDSPresuSubDetDETALLE: TStringField;
    CDSPresuSubDetCANTIDAD: TFloatField;
    CDSPresuSubDetTOTAL_GRAVADO: TFloatField;
    CDSPresuSubDetTOTAL_UNIT_FINAL: TFloatField;
    CDSPresuSubDetTOTAL_NETO: TFloatField;
    CDSPresuSubDetTOTAL_EXENTO: TFloatField;
    CDSPresuSubDetTOTAL_IVA: TFloatField;
    CDSPresuSubDetTOTAL: TFloatField;
    CDSPresuSubDetTOTAL_FINAL: TFloatField;
    DSPresuSubDet: TDataSource;
    cxGrid4: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Splitter2: TSplitter;
    QPresuSubDet: TFDQuery;
    QPresuSubDetITEM_NRO: TIntegerField;
    QPresuSubDetID_CAB: TIntegerField;
    QPresuSubDetDETALLE: TStringField;
    QPresuSubDetCANTIDAD: TFloatField;
    QPresuSubDetTOTAL_GRAVADO: TFloatField;
    QPresuSubDetTOTAL_EXENTO: TFloatField;
    QPresuSubDetTOTAL_IVA: TFloatField;
    QPresuSubDetTOTAL: TFloatField;
    cxGridDBTableView1ITEM_NRO: TcxGridDBColumn;
    cxGridDBTableView1DETALLE: TcxGridDBColumn;
    cxGridDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_GRAVADO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_UNIT_FINAL: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_NETO: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_IVA: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1TOTAL_FINAL: TcxGridDBColumn;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid5DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid5DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid5DBTableView1DESCUENTO: TcxGridDBColumn;
    cxGrid5DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid5DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid5DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid5DBTableView1ITEM_NRO: TcxGridDBColumn;
    QMinMaxId: TFDQuery;
    QMinMaxIdMIN: TIntegerField;
    QMinMaxIdMAX: TIntegerField;
    CDSFacCabTIPOOBRA: TStringField;
    cxGrid3DBTableView1TIPOOBRA: TcxGridDBColumn;
    CDSLstAgrupada: TClientDataSet;
    DSPLstAgrupada: TDataSetProvider;
    CDSLstAgrupadaID: TIntegerField;
    CDSLstAgrupadaID_CABPRES: TIntegerField;
    CDSLstAgrupadaCLASECPBTE: TStringField;
    CDSLstAgrupadaNROCPBTE: TStringField;
    CDSLstAgrupadaCODIGO: TStringField;
    CDSLstAgrupadaNOMBRE: TStringField;
    CDSLstAgrupadaRAZONSOCIAL: TStringField;
    CDSLstAgrupadaCODIGOARTICULO: TStringField;
    CDSLstAgrupadaDETALLE: TStringField;
    CDSLstAgrupadaCANTIDAD: TFloatField;
    CDSLstAgrupadaUNITARIO_TOTAL: TFloatField;
    CDSLstAgrupadaIVA_UNITARIO: TFloatField;
    CDSLstAgrupadaIVA_TOTAL: TFloatField;
    CDSLstAgrupadaTOTAL: TFloatField;
    CDSLstAgrupadaUNITARIO_CIVA: TFloatField;
    CDSLstAgrupadaTOTAL_CIVA: TFloatField;
    CDSLstAgrupadaTIPOIVA: TIntegerField;
    CDSLstAgrupadaDISCRIMINAIVA: TStringField;
    CDSLstAgrupadaTOTALRTO: TFloatField;
    CDSLstAgrupadaMES: TStringField;
    CDSLstAgrupadaDIA: TStringField;
    CDSLstAgrupadaANIO: TStringField;
    CDSLstAgrupadaFECHAVTA: TSQLTimeStampField;
    CDSLstAgrupadaREEMPLAZO_STK: TStringField;
    PopupMenu4: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    CDSLstAgrupadaNROCPBTESUB: TStringField;
    CDSLstAgrupadaItems: TClientDataSet;
    DSPLstAgrupadaItems: TDataSetProvider;
    CDSLstAgrupadaItemsID: TIntegerField;
    CDSLstAgrupadaItemsID_CABPRES: TIntegerField;
    CDSLstAgrupadaItemsCLASECPBTE: TStringField;
    CDSLstAgrupadaItemsCODIGO: TStringField;
    CDSLstAgrupadaItemsNOMBRE: TStringField;
    CDSLstAgrupadaItemsRAZONSOCIAL: TStringField;
    CDSLstAgrupadaItemsNROCPBTE: TStringField;
    CDSLstAgrupadaItemsTOTAL_PRESU: TFloatField;
    CDSLstAgrupadaItemsTIPOIVA: TIntegerField;
    CDSLstAgrupadaItemsDISCRIMINAIVA: TStringField;
    CDSLstAgrupadaItemsCODIGOARTICULO: TStringField;
    CDSLstAgrupadaItemsDETALLE: TStringField;
    CDSLstAgrupadaItemsCANTIDAD: TFloatField;
    CDSLstAgrupadaItemsUNITARIO_TOTAL: TFloatField;
    CDSLstAgrupadaItemsIVA_UNITARIO: TFloatField;
    CDSLstAgrupadaItemsIVA_TOTAL: TFloatField;
    CDSLstAgrupadaItemsTOTAL: TFloatField;
    CDSLstAgrupadaItemsITEM_NRO: TIntegerField;
    CDSLstAgrupadaItemsITEMDETALLE: TStringField;
    CDSLstAgrupadaItemsITEMCANTIDAD: TFloatField;
    CDSLstAgrupadaItemsITEM_GRAVADO: TFloatField;
    CDSLstAgrupadaItemsITEM_TOTAL: TFloatField;
    CDSLstAgrupadaItemsCODIGO_ATERNATIVO: TStringField;
    CDSLstAgrupadaItemsNRO_ITEM_DET: TIntegerField;
    CDSLstAgrupadaItemsNRO_FECHA: TStringField;
    CDSLstAgrupadaItemsFECHAVTA: TSQLTimeStampField;
    Panel2: TPanel;
    JvDBFindEdit1: TJvDBFindEdit;
    JvDBFindEdit2: TJvDBFindEdit;
    JvDBFindEdit3: TJvDBFindEdit;
    CDSLstAgrupadaANULADO: TStringField;
    cxDBPivotGrid1ANULADO: TcxDBPivotGridField;
    Panel3: TPanel;
    cbEstados: TComboBox;
    CDSLstAgrupadaMUESTRAPRESUPUESTO: TStringField;
    pagPresFac: TTabSheet;
    dbgPresupuestos: TDBGrid;
    pnPieDetalles: TPanel;
    PorcentajeAceptados: TLabel;
    PorcentajeModificados: TLabel;
    PorcentajeNoAceptados: TLabel;
    pnAcept: TPanel;
    pnModif: TPanel;
    pnAceptados: TPanel;
    QPresuFactura: TFDQuery;
    DSPPresuFactura: TDataSetProvider;
    CDSPresuFactura: TClientDataSet;
    CDSPresuFacturaID_PR: TIntegerField;
    CDSPresuFacturaNROCPBTE: TStringField;
    CDSPresuFacturaFECHAVTA: TSQLTimeStampField;
    CDSPresuFacturaCODIGO: TStringField;
    CDSPresuFacturaNOMBRE: TStringField;
    CDSPresuFacturaID_FC: TIntegerField;
    CDSPresuFacturaNROCPBTE_1: TStringField;
    CDSPresuFacturaFECHAVTA_1: TSQLTimeStampField;
    CDSPresuFacturaTOTALPRESUPUESTO: TFloatField;
    CDSPresuFacturaTOTALFACTURA: TFloatField;
    CDSPresuFacturaMODIFICADO: TIntegerField;
    CDSPresuFacturaCANTIDADP: TFloatField;
    CDSPresuFacturaCANTIDADF: TFloatField;
    CDSPresuFacturaFECHA_REVISION: TSQLTimeStampField;
    CDSPresuFacturaHASHPRESU: TLargeintField;
    CDSPresuFacturaHASHFAC: TLargeintField;
    DSPresuFactura: TDataSource;
    BuscarPresuFac: TAction;
    btBuscarPresuFc: TBitBtn;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CDSFacCabSIGNO: TStringField;
    CDSFacDetSIGNOMONEDA: TStringField;
    cxGrid5DBTableView1SIGNO: TcxGridDBColumn;
    cxGrid3DBTableView1SIGNO: TcxGridDBColumn;
    procedure BuscarExecute(Sender: TObject);
    procedure ceClienteKeyPress(Sender: TObject; var Key: Char);
    procedure chTodosLosClientesClick(Sender: TObject);
    procedure dbgCabDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btExportarExcelClick(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure VerlosPreciosconIVA1Click(Sender: TObject);
    procedure CDSFacDetCalcFields(DataSet: TDataSet);
    procedure cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
      Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
      var AText: string);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGrid1DBTableView1CODIGOCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1RAZONSOCIALCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1ITEM_NROCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1ITEMDETALLECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1ITEMCANTIDADCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1ITEM_GRAVADOCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1ITEM_TOTALCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1TOTAL_PRESUCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure ExpandirListado1Click(Sender: TObject);
    procedure cxGrid3DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure CDSFacCabANULADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cxGrid3DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure MostrarTip1Click(Sender: TObject);
    procedure MostrarClase1Click(Sender: TObject);
    procedure CDSFacCabCalcFields(DataSet: TDataSet);
    procedure CDSFacCabNROCPBTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure MostraTotalClick(Sender: TObject);
    procedure MostrarSucClick(Sender: TObject);
    procedure MostrarIncidenciaClick(Sender: TObject);
    procedure MostrarObra1Click(Sender: TObject);
    procedure CDSFacDetCODIGOARTICULOGetText(Sender: TField; var Text: string; DisplayText: Boolean);
    procedure MostrarAgrupamientoClick(Sender: TObject);
    procedure CDSLstAgrupadaCalcFields(DataSet: TDataSet);
    procedure CDSLstAgrupadaTOTALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSLstAgrupadaUNITARIO_TOTALGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure CDSLstAgrupadaCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure CDSLstAgrupadaCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSLstAgrupadaItemsCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure JvDBFindEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBFindEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure JvDBFindEdit3Change(Sender: TObject);
    procedure JvDBFindEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure CDSLstAgrupadaANULADOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure cbEstadosClick(Sender: TObject);
    procedure BuscarPresuFacExecute(Sender: TObject);
    procedure dbgPresupuestosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure dbgPresupuestosDblClick(Sender: TObject);
    procedure dbgPresupuestosTitleClick(Column: TColumn);
  private
    { Private declarations }
    procedure CmUpdateSummary(var Msg: TMessage); message CM_UPDATE_SUMMARY;
  public
    { Public declarations }
     Id_desde,Id_Hasta:Integer;
     procedure sumar;

  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormLstPresupuestoDetalle: TFormLstPresupuestoDetalle;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UPresupuesto_2,UDMain_FD, UBuscadorClientes, UDetalleFacturaPresupuesto;

{$R *.dfm}

procedure TFormLstPresupuestoDetalle.sumar;
var p:TBookmark;
begin
 // edTotal.Value:=0;
  p:=CDSFacCab.GetBookmark;
  CDSFacCab.First;
  CDSFacCab.DisableControls;
  while not(CDSFacCab.Eof) do
    begin
 //     edTotal.Value:=edTotal.Value+CDSFacCabTOTAL.AsFloat;
      CDSFacCab.Next;
    end;
  CDSFacCab.GotoBookmark(p);
  CDSFacCab.FreeBookmark(p);
  CDSFacCab.EnableControls;
end;

procedure TFormLstPresupuestoDetalle.btImprimirClick(Sender: TObject);
begin
  inherited;
  if pcPresupuestos.ActivePageIndex=0 then
    begin
      frCpbte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoPresupuestos.fr3');
      frCpbte.Variables['Desde']:=''''+Desde.Text+'''';
      frCpbte.Variables['Hasta']:=''''+hasta.Text+'''';
      frCpbte.Variables['Cliente']:=''''+edNombreCliente.Text+'''';
      frCpbte.ShowReport;
    end
  else
    if pcPresupuestos.ActivePageIndex=1 then
     dxComponentPrinter1Link1.Preview(True)
    else
     if pcPresupuestos.ActivePageIndex=3 then
       dxComponentPrinter1Link2.Preview(True)

end;


procedure TFormLstPresupuestoDetalle.btExportarExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSFacCab.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Presupuesto';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if (pcPresupuestos.ActivePageIndex=0)  then
              begin
                cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid3,true,true,false,'xls');
              end
            else
            if (pcPresupuestos.ActivePageIndex=1) then
              begin
                cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid2,true,true,false,'xls');
              end
            else
              if pcPresupuestos.ActivePageIndex=2 then
                begin
                  cxDBPivotGrid1.OptionsView.DataFields     :=False;
                  cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
                  cxDBPivotGrid1.OptionsView.RowFields      :=False;
                  cxDBPivotGrid1.OptionsView.FilterFields   :=False;
                  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;

                  cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1,True,true,'XLS');

                  cxDBPivotGrid1.OptionsView.DataFields     :=True;
                  cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
                  cxDBPivotGrid1.OptionsView.RowFields      :=True;
                  cxDBPivotGrid1.OptionsView.FilterFields   :=True;
                  cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
                end
              else
                if (pcPresupuestos.ActivePageIndex=3) then
                  begin
                    // Exporta Grilla con formato de Visualizacion...
                    cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1,true,True,False,'xls');
                  end;

            Sleep(1000);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormLstPresupuestoDetalle.BuscarClienteExecute(Sender: TObject);
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
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      QClientes.Open;
      IF NOT (QClientes.eof) THEN
        BEGIN
          edNombreCliente.Text := QClientesNOMBRE.AsString;
          ceCliente.SetFocus;
          ceCliente.SelectAll;
          Buscar.Execute;
        END;
    end;
end;

procedure TFormLstPresupuestoDetalle.BuscarExecute(Sender: TObject);
var c:integer;
begin
  inherited;
  CDSFacCab.Close;
  CDSFacCab.Params.ParamByName('tipo').Value     := 'PR';
  CDSFacCab.Params.ParamByName('desde').Value    := Desde.Date;
  CDSFacCab.Params.ParamByName('hasta').Value    := Hasta.Date;
  CDSFacCab.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
   if (chTodosLosClientes.Checked=True) then
    CDSFacCab.Params.ParamByName('codigo').Value := '******'
  else
    CDSFacCab.Params.ParamByName('codigo').Value := ceCliente.Text;

  CDSFacCab.Open;
  CDSFacCab.First;

  QMinMaxId.Close;
  QMinMaxId.ParamByName('desde').Value    := Desde.Date;
  QMinMaxId.ParamByName('hasta').Value    := Hasta.Date;
  QMinMaxId.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
   if (chTodosLosClientes.Checked=True) then
    QMinMaxId.ParamByName('codigo').Value := '******'
  else
    QMinMaxId.ParamByName('codigo').Value := ceCliente.Text;
   QMinMaxId.Open;

  Id_desde:=QMinMaxIdMIN.Value;
  Id_Hasta:=QMinMaxIdMAX.Value;

  QMinMaxId.Close;

  Sumar;

  CDSFacDet.Close;
  CDSFacDet.MasterFields   := '';
  CDSFacDet.IndexFieldNames:= '';
  CDSFacDet.Params.ParamByName('id_desde').Value:= Id_desde;// -1;// CDSFacCabID_PR.Value;
  CDSFacDet.Params.ParamByName('id_hasta').Value:= Id_Hasta;// -1;// CDSFacCabID_PR.Value;

  CDSFacDet.MasterSource   := DSFacCab;
  CDSFacDet.MasterFields   := 'ID_PR';
  CDSFacDet.IndexFieldNames:= 'ID_CABPRES';

  CDSFacDet.Open;

  CDSPresuSubDet.Close;
  CDSPresuSubDet.MasterFields   := '';
  CDSPresuSubDet.IndexFieldNames:= '';
  CDSPresuSubDet.Params.ParamByName('desde').Value:= Id_desde;// -1;// CDSFacCabID_PR.Value;
  CDSPresuSubDet.Params.ParamByName('hasta').Value:= Id_Hasta;// -1;// CDSFacCabID_PR.Value;

  CDSPresuSubDet.MasterSource   := DSFacCab;
  CDSPresuSubDet.MasterFields   := 'ID_PR';
  CDSPresuSubDet.IndexFieldNames:= 'ID_CAB';

  CDSPresuSubDet.Open;

  CDSLstAgrupada.Close;
  CDSLstAgrupada.Params.ParamByName('desde').Value  :=Desde.Date;
  CDSLstAgrupada.Params.ParamByName('hasta').Value  :=Hasta.Date;
  if (chTodosLosClientes.Checked=True) then
    CDSLstAgrupada.Params.ParamByName('codigo').Value:='******'
  else
    CDSLstAgrupada.Params.ParamByName('codigo').Value:=ceCliente.Text;
  CDSLstAgrupada.Open;

  CDSLstAgrupadaItems.Close;
  CDSLstAgrupadaItems.ParamByName('desde').Value  :=Desde.Date;
  CDSLstAgrupadaItems.ParamByName('hasta').Value  :=Hasta.Date;
  if (chTodosLosClientes.Checked=True) then
    CDSLstAgrupadaItems.ParamByName('codigo').Value:='******'
  else
    CDSLstAgrupadaItems.ParamByName('codigo').Value:=ceCliente.Text;
  CDSLstAgrupadaItems.Open;

  cxGrid2DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;

end;

procedure TFormLstPresupuestoDetalle.BuscarPresuFacExecute(Sender: TObject);
var porAceptados, pormodificado, porNoAceptados, cantregistros :integer;
begin
  porAceptados   :=0;
  pormodificado  :=0;
  porNoAceptados :=0;
  cantregistros  :=0;
  inherited;
  CDSPresuFactura.close;
  CDSPresuFactura.IndexDefs.Clear;
  CDSPresuFactura.Params.ParamByName('sucu').AsInteger:=CDSSucursalCODIGO.AsInteger;
  CDSPresuFactura.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSPresuFactura.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  if ((ceCliente.text = '') or (chTodosLosClientes.Checked)) then
    CDSPresuFactura.Params.ParamByName('cliente').AsString:='******'
  else
    CDSPresuFactura.Params.ParamByName('cliente').AsString:=ceCliente.Text;

  CDSPresuFactura.open;

  CDSPresuFactura.First;
  CDSPresuFactura.DisableControls;
  while not CDSPresuFactura.Eof do
    begin
      if ((CDSPresuFacturaMODIFICADO.AsInteger=1) or ((CDSPresuFacturaCANTIDADP.AsInteger<>CDSPresuFacturaCANTIDADF.asinteger) and (CDSPresuFacturaNROCPBTE_1.AsString<>'')) or (CDSPresuFacturaHASHPRESU.AsInteger<>CDSPresuFacturaHASHFAC.asinteger) and (CDSPresuFacturaNROCPBTE_1.AsString<>'') ) then
        begin
          pormodificado:=pormodificado+1;
          cantregistros:=cantregistros+1;
        end
      else
        if CDSPresuFacturaNROCPBTE_1.AsString <>'' then
          begin
            porAceptados:=porAceptados+1;
            cantregistros:=cantregistros+1;
          end
        else
          begin
            porNoAceptados:=porNoAceptados+1;
            cantregistros:=cantregistros+1;
          end;
      CDSPresuFactura.next;
    end;
  CDSPresuFactura.First;
  CDSPresuFactura.EnableControls;

  if cantregistros=0 then cantregistros:=1;

  PorcentajeAceptados.caption   := FloatToStr(trunc((porAceptados*100)/cantregistros))   +' %' ;
  PorcentajeModificados.caption := FloatToStr(trunc((porModificado*100)/cantregistros))  +' %';
  PorcentajeNoAceptados.caption := FloatToStr(trunc((pornoAceptados*100)/cantregistros)) +' %';

end;

procedure TFormLstPresupuestoDetalle.cbEstadosClick(Sender: TObject);
begin
  inherited;
  {
   N = No esta Anulado, es nuevo
   S = Anulado
   A = Aceptado
   V = Vencido (cuando pasa cierto tiempo o el de vigencia)
   R = Revision ... (lo agregue 04/12/2019
  }

  CDSLstAgrupada.Filtered:=False;
  case cbEstados.ItemIndex of
    0:CDSLstAgrupada.Filter:='';
    1:CDSLstAgrupada.Filter:='ANULADO = ''N'' ';
    2:CDSLstAgrupada.Filter:='ANULADO = ''S'' ';
    3:CDSLstAgrupada.Filter:='ANULADO = ''A'' ';
    4:CDSLstAgrupada.Filter:='ANULADO = ''V'' ';
    5:CDSLstAgrupada.Filter:='ANULADO = ''R'' ';

  end;
end;

procedure TFormLstPresupuestoDetalle.CDSFacCabANULADOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.ASString='S' then
    Text:='Anulado'
  else
    if Sender.ASString='A' then
      Text:='Aceptado'
    else
      if Sender.ASString='V' then
        Text:='Vencido';

end;

procedure TFormLstPresupuestoDetalle.CDSFacCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSFacCabANULADO.ASString='S' then
    CDSFacCabMUESTRAESTADO.AsString:='Anulado'
  else
    if CDSFacCabANULADO.ASString='A' then
      CDSFacCabMUESTRAESTADO.AsString:='Aceptado'
    else
      if CDSFacCabANULADO.ASString='V' then
        CDSFacCabMUESTRAESTADO.AsString:='Vencido'
      else
        if CDSFacCabANULADO.ASString='R' then
          CDSFacCabMUESTRAESTADO.AsString:='Revision';

  CDSFacCabNROCPTE_SUF.Value:=Copy(CDSFacCabNROCPBTE.ASString,1,1)+'-'+
                              Copy(CDSFacCabNROCPBTE.ASString,2,4)+'-'+
                              Copy(CDSFacCabNROCPBTE.ASString,6,8)+'/'+
                              CDSFacCabSUB_NRO.AsString;

   if CDSFacCabANULADO.ASString='A' then
     CDSFacCabTOTALACEPTADOS.Value  := CDSFacCabTOTAL.Value
   else
     CDSFacCabTOTALACEPTADOS.Value  := 0;

   if CDSFacCabANULADO.ASString='S' then
     CDSFacCabTOTALRECHAZADOS.Value := CDSFacCabTOTAL.Value
   else
     CDSFacCabTOTALRECHAZADOS.Value := 0;

   if CDSFacCabANULADO.ASString='' then
     CDSFacCabTOTALESPERA.Value     := CDSFacCabTOTAL.Value
   else
     CDSFacCabTOTALESPERA.Value     := 0;
end;

procedure TFormLstPresupuestoDetalle.CDSFacCabNROCPBTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=Copy(Sender.ASString,1,1)+'-'+
        Copy(Sender.ASString,2,4)+'-'+
        Copy(Sender.ASString,6,8)+'/'+
        CDSFacCabSUB_NRO.AsString;
end;

procedure TFormLstPresupuestoDetalle.CDSFacDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSFacDetUNITARIO_CIVA.AsFloat:=CDSFacDetUNITARIO_TOTAL.AsFloat+CDSFacDetIVA_UNITARIO.AsFloat;
  CDSFacDetTOTAL_CIVA.AsFloat   :=CDSFacDetTOTAL.AsFloat+CDSFacDetIVA_TOTAL.AsFloat;
end;

procedure TFormLstPresupuestoDetalle.CDSFacDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text:=CDSFacDetCODIGOARTICULO.AsString;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSFacDetCODALTERNATIVO.AsString;

end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaANULADOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  {
  N = No esta Anulado, es nuevo
  S = Anulado
  A = Aceptado
  V = Vencido (cuando pasa cierto tiempo o el de vigencia)
  R = Revision ... (lo agr
  }
  if CDSLstAgrupadaANULADO.Value='N' then
    Text:='Nuevo'
  else
  if CDSLstAgrupadaANULADO.Value='S' then
    Text:='Anulado'
  else
  if CDSLstAgrupadaANULADO.Value='A' then
    Text:='Aceptado'
  else
  if CDSLstAgrupadaANULADO.Value='V' then
    Text:='Vencido'
  else
  if CDSLstAgrupadaANULADO.Value='R' then
    Text:='Revision';


end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaCalcFields(
  DataSet: TDataSet);
begin
  inherited;
   begin
      CDSLstAgrupadaUNITARIO_CIVA.AsFloat := CDSLstAgrupadaUNITARIO_TOTAL.AsFloat+CDSLstAgrupadaIVA_UNITARIO.AsFloat;
      CDSLstAgrupadaTOTAL_CIVA.AsFloat    := CDSLstAgrupadaTOTAL.AsFloat+CDSLstAgrupadaIVA_TOTAL.AsFloat;
    end;
 // else
//    begin
//      QLstAgrupadaUNITARIO_CIVA.AsFloat :=QLstAgrupadaUNITARIO_TOTAL.AsFloat;
//      QLstAgrupadaTOTAL_CIVA.AsFloat    :=QLstAgrupadaTOTAL.AsFloat;
//    end;
  CDSLstAgrupadaDIA.Value  := FormatDateTime( 'dd', CDSLstAgrupadaFECHAVTA.AsDateTime);
  CDSLstAgrupadaMES.Value  := FormatDateTime( 'MMMM', CDSLstAgrupadaFECHAVTA.AsDateTime);
  CDSLstAgrupadaANIO.Value := FormatDateTime( 'yyyy', CDSLstAgrupadaFECHAVTA.AsDateTime);

end;


procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=CDSLstAgrupadaCODIGOARTICULO.AsString;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSLstAgrupadaREEMPLAZO_STK.AsString;
end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSLstAgrupadaREEMPLAZO_STK.Value
  else
    Text:=CDSLstAgrupadaCODIGOARTICULO.Value;

end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaItemsCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSLstAgrupadaItemsCODIGO_ATERNATIVO.Value
  else
    Text:=CDSLstAgrupadaItemsCODIGOARTICULO.Value;


end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaTOTALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=FormatFloat(',0.00',CDSLstAgrupadaTOTAL.AsFloat);
  if VerlosPreciosconIVA1.Checked then
    Text:=FormatFloat(',0.00',CDSLstAgrupadaTOTAL.AsFloat+CDSLstAgrupadaIVA_TOTAL.ASFLoat);
end;

procedure TFormLstPresupuestoDetalle.CDSLstAgrupadaUNITARIO_TOTALGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  Text:=FormatFloat(',0.00',CDSLstAgrupadaUNITARIO_TOTAL.AsFloat);
  if VerlosPreciosconIVA1.Checked then
    Text:=FormatFloat(',0.00',CDSLstAgrupadaUNITARIO_TOTAL.AsFloat+CDSLstAgrupadaIVA_UNITARIO.ASFLoat);
end;

procedure TFormLstPresupuestoDetalle.ceClienteKeyPress(Sender: TObject;
  var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente.Text))) + ceCliente.Text;
      ceCliente.Text := Dato;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT (QClientes.eof) THEN
        edNombreCliente.Text := QClientesNOMBRE.Value;
      ceCliente.SetFocus;
      ceCliente.SelectAll;
      Buscar.Execute;
    END;
end;

procedure TFormLstPresupuestoDetalle.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];

end;

procedure TFormLstPresupuestoDetalle.chTodosLosClientesClick(Sender: TObject);
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

procedure TFormLstPresupuestoDetalle.CmUpdateSummary(var Msg: TMessage);
var
  ADataSet: TDataSet;
begin
  ADataSet := TDataSet(Msg.WParam);
  if ADataSet.State in [dsEdit, dsInsert] then
    ADataSet.Post;
end;

procedure TFormLstPresupuestoDetalle.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormLstPresupuestoDetalle.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormLstPresupuestoDetalle.cxDBPivotGrid1MouseUp(Sender: TObject;
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


procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1CODIGOCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;


procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if CDSFacCab.IsEmpty then
    raise Exception.Create('No haa datos para consultar');
  begin
    if Not(Assigned(FormPresupuesto_2)) Then
      FormPresupuesto_2:=TFormPresupuesto_2.Create(self);
    FormPresupuesto_2.DatoNew   :=CDSFacCabID_PR.AsString;
    FormPresupuesto_2.TipoCpbte :=CDSFacCabTIPOCPBTE.AsString;
    FormPresupuesto_2.Recuperar.Execute;
    FormPresupuesto_2.Show;
  end


end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1ITEMCANTIDADCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1ITEMDETALLECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1ITEM_GRAVADOCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1ITEM_NROCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1ITEM_TOTALCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1RAZONSOCIALCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormLstPresupuestoDetalle.cxGrid1DBTableView1TOTAL_PRESUCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('ID_CABPRES').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;


procedure TFormLstPresupuestoDetalle.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if Not(Assigned(FormPresupuesto_2)) Then
    FormPresupuesto_2:=TFormPresupuesto_2.Create(self);
  FormPresupuesto_2.DatoNew   :=CDSLstAgrupadaID_CABPRES.AsString;
  FormPresupuesto_2.TipoCpbte :='PR';
  FormPresupuesto_2.Recuperar.Execute;
  FormPresupuesto_2.Show;
 end;

procedure TFormLstPresupuestoDetalle.cxGrid2DBTableView1TcxGridDBDataControllerTcxDataSummaryFooterSummaryItems0GetText(
  Sender: TcxDataSummaryItem; const AValue: Variant; AIsFooter: Boolean;
  var AText: string);
begin
  inherited;
   Atext:=FormatFloat(',0.00',CDSFacDetUNITARIO_TOTAL.AsFloat);
  if VerlosPreciosconIVA1.Checked then
    AText:=FormatFloat(',0.00',CDSFacDetUNITARIO_TOTAL.AsFloat+CDSFacDetIVA_UNITARIO.ASFLoat);
end;

procedure TFormLstPresupuestoDetalle.cxGrid3DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if CDSFacCab.IsEmpty then
    raise Exception.Create('No hay datos para consultar');
  begin
    if Not(Assigned(FormPresupuesto_2)) Then
      FormPresupuesto_2:=TFormPresupuesto_2.Create(self);
    FormPresupuesto_2.DatoNew   :=CDSFacCabID_PR.AsString;
    FormPresupuesto_2.TipoCpbte :=CDSFacCabTIPOCPBTE.AsString;
    FormPresupuesto_2.Recuperar.Execute;
    FormPresupuesto_2.Show;
  end
end;

procedure TFormLstPresupuestoDetalle.cxGrid3DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  inherited;
//  A := AViewInfo.GridRecord.Values[6];
//  if Not(VarIsNull(AViewInfo.GridRecord.Values[7])) then
//    B := AViewInfo.GridRecord.Values[7]
//  else B:=0;
//
//  if AViewInfo.Selected then
//    begin
//      ACanvas.Font.Color  := clWhite;
//      ACanvas.Brush.Color := clBlue;
//    end
//  else
//    begin
//      if CompareValue(A,B,0.1)= EqualsValue then
//        begin
//          ACanvas.Brush.Color:= clGreen;
//          ACanvas.Font.Color := clWhite;
//        end
//     else
//       if CompareValue(A,B,0)= LessThanValue then
//         begin
//           ACanvas.Brush.Color:= clRed;
//           ACanvas.Font.Color := clBlue;
//         end;
//    end;
end;

procedure TFormLstPresupuestoDetalle.dbgCabDblClick(Sender: TObject);
begin
  inherited;
  if CDSFacCab.IsEmpty then
    raise Exception.Create('No hay datos para consultar');
  begin
    if Not(Assigned(FormPresupuesto_2)) Then
      FormPresupuesto_2:=TFormPresupuesto_2.Create(self);
    FormPresupuesto_2.DatoNew   :=CDSFacCabID_PR.AsString;
    FormPresupuesto_2.TipoCpbte :=CDSFacCabTIPOCPBTE.AsString;
    FormPresupuesto_2.Recuperar.Execute;
    FormPresupuesto_2.Show;
  end
end;


procedure TFormLstPresupuestoDetalle.dbgPresupuestosDblClick(Sender: TObject);
begin
  inherited;
  if not(dbgPresupuestos.DataSource.DataSet.IsEmpty) then
    begin
      if not(Assigned(FormDetallePresuFac)) then
        FormDetallePresuFac:=TFormDetallePresuFac.Create(Self);


      FormDetallePresuFac.IdPr:=dbgPresupuestos.DataSource.DataSet.FieldByName('ID_PR').Value;
      if dbgPresupuestos.DataSource.DataSet.FieldByName('ID_FC').AsString<>'' then
        FormDetallePresuFac.IdFc:=dbgPresupuestos.DataSource.DataSet.FieldByName('ID_FC').Value
      else
        FormDetallePresuFac.IdFc:=-1;

      FormDetallePresuFac.ShowModal;
      FreeAndNil(FormDetallePresuFac);
    end;

end;

procedure TFormLstPresupuestoDetalle.dbgPresupuestosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if (CDSPresuFacturaMODIFICADO.AsInteger=1) or
     ((CDSPresuFacturaCANTIDADP.AsInteger<>CDSPresuFacturaCANTIDADF.asinteger) and (CDSPresuFacturaNROCPBTE_1.AsString<>'')) or
     ((CDSPresuFacturaHASHPRESU.AsInteger<>CDSPresuFacturaHASHFAC.asinteger) and (CDSPresuFacturaNROCPBTE_1.AsString<>''))  then
    dbgPresupuestos.Canvas.Brush.Color := clWebCrimson
  else
    if CDSPresuFacturaNROCPBTE_1.AsString <>'' then
      dbgPresupuestos.Canvas.Brush.Color := clMoneyGreen;

 if gdSelected in state Then
    begin
      dbgPresupuestos.Canvas.brush.Color := clHighlight;
      dbgPresupuestos.Canvas.Font.Color  := clWhite;
    end;

  DBGPresupuestos.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormLstPresupuestoDetalle.dbgPresupuestosTitleClick(Column: TColumn);
begin
  inherited;
// para el uso en DBGrid, ordenar por columna
 try
   Campo := column.FieldName;
   with dbgPresupuestos.DataSource.DataSet as TClientDataSet do
   if IndexFieldNames <> Campo then
     IndexFieldNames := Campo // Ascendente
   else
     begin
       AddIndex(Campo, Campo, [], Campo); // Descendente
       IndexName := Campo;
     end;
 except // Para que no salte una excepción si la columna es un campo calculado.
 end;
end;

procedure TFormLstPresupuestoDetalle.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  if pcPresupuestos.ActivePageIndex=4 then
    BuscarPresuFac.Execute
  else
    Buscar.Execute;

end;

procedure TFormLstPresupuestoDetalle.ExpandirListado1Click(Sender: TObject);
var c:integer;
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(true);
end;

procedure TFormLstPresupuestoDetalle.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   if (Assigned(FormPresupuesto_2)) Then
      FreeAndNil(FormPresupuesto_2);
   inherited;

  // Guarda posicion de columnas cxGrid
  cxGrid3DBTableView1.StoreToIniFile(ExtractFilePath(Application.ExeName) + '_grillaPresuIncidencias', true, [gsoUseFilter, gsoUseSummary]);

  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaPresupuesto');

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaPresupuesto.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.WriteBool('Campos', 'Campo', cxDBPivotGrid1.OptionsView.FilterFields);
  ArchivoIni.WriteBool('Codigo', 'Alternativo', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteBool('Mostrar', 'Tipo', MostrarTip1.Checked);
  ArchivoIni.WriteBool('Mostrar', 'Clase', MostrarClase1.Checked);
  ArchivoIni.WriteBool('Mostrar', 'Total', MostraTotal.Checked);
  ArchivoIni.WriteBool('Mostrar', 'Sucursal', MostrarSuc.Checked);
  ArchivoIni.WriteBool('Mostrar', 'Incidencia', MostrarIncidencia.Checked);

  ArchivoIni.Free;
  Action:=caFree;

end;

procedure TFormLstPresupuestoDetalle.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  // Restaura cxGrid
  cxGrid3DBTableView1.RestoreFromIniFile(ExtractFilePath(Application.ExeName) + '_grillaPresuIncidencias', true, false, [gsoUseFilter, gsoUseSummary]);

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaPresupuesto.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  cxDBPivotGrid1.OptionsView.FilterFields      := ArchivoIni.ReadBool('Campos', 'Campo', True);
  VerCodigoAlternativo1.Checked                := ArchivoIni.ReadBool('Codigo', 'Alternativo', False);

  MostrarTip1.Checked                          := ArchivoIni.ReadBool('Mostrar', 'Tipo', True);
  MostrarClase1.Checked                        := ArchivoIni.ReadBool('Mostrar', 'Clase', True);
  MostraTotal.Checked                          := ArchivoIni.ReadBool('Mostrar', 'Total', True);
  MostrarSuc.Checked                           := ArchivoIni.ReadBool('Mostrar', 'Sucursal', True);
  MostrarIncidencia.Checked                    := ArchivoIni.ReadBool('Mostrar', 'Incidencia', True);

  ArchivoIni.Free;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;
  AutoSize:=False;

  cxGrid3DBTableView1CLASECPBTE.Visible := MostrarClase1.Checked;
  cxGrid3DBTableView1SUCFAC.Visible     := MostrarSuc.Checked;
  cxGrid3DBTableView1TIPOCPBTE.Visible  := MostrarTip1.Checked;
  cxGrid3DBTableView1TOTAL.Visible      := MostraTotal.Checked;

  pcPresupuestos.ActivePageIndex:=0;
end;

procedure TFormLstPresupuestoDetalle.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstPresupuestoDetalle:=nil;
end;

procedure TFormLstPresupuestoDetalle.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
 // inherited;
  cxGrid3DBTableView1CLASECPBTE.Visible := MostrarTip1.Checked;
  cxGrid3DBTableView1TIPOCPBTE.Visible  := MostrarClase1.Checked;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //*************************************************************
//  cxGrid2DBTableView1.DataController.RefreshExternalData;
//  cxGrid1DBTableView1.DataController.RefreshExternalData;
//  dbgDet.Refresh;

  CDSSucursal.Open;
end;

procedure TFormLstPresupuestoDetalle.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  if pcPresupuestos.ActivePageIndex=4 then
    BuscarPresuFac.Execute
  else
    Buscar.Execute;
end;

procedure TFormLstPresupuestoDetalle.JvDBFindEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
end;

procedure TFormLstPresupuestoDetalle.JvDBFindEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
end;

procedure TFormLstPresupuestoDetalle.JvDBFindEdit3Change(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
end;

procedure TFormLstPresupuestoDetalle.JvDBFindEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

end;

procedure TFormLstPresupuestoDetalle.Label3Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormLstPresupuestoDetalle.Label4Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormLstPresupuestoDetalle.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if pcPresupuestos.ActivePageIndex=2 then
     APivot:=cxDBPivotGrid1;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
     APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormLstPresupuestoDetalle.MenuItem4Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;

procedure TFormLstPresupuestoDetalle.MostrarObra1Click(Sender: TObject);
begin
  inherited;
  MostrarObra1.Checked             := Not MostrarObra1.Checked;
  cxGrid3DBTableView1OBRA.Visible  := MostrarObra1.Checked;

end;

procedure TFormLstPresupuestoDetalle.MostrarAgrupamientoClick(Sender: TObject);
begin
  inherited;
  MostrarAgrupamiento.Checked:=not(MostrarAgrupamiento.Checked);
  cxGrid3DBTableView1.OptionsView.GroupByBox:=MostrarAgrupamiento.Checked;
end;

procedure TFormLstPresupuestoDetalle.MostrarClase1Click(Sender: TObject);
begin
  inherited;
  MostrarClase1.Checked                := Not MostrarClase1.Checked;
  cxGrid3DBTableView1CLASECPBTE.Visible:= MostrarClase1.Checked;
end;

procedure TFormLstPresupuestoDetalle.MostrarIncidenciaClick(Sender: TObject);
begin
  inherited;
  MostrarIncidencia.Checked                 := Not MostrarIncidencia.Checked;
  cxGrid3DBTableView1INC_DETALLE.Visible    := MostrarIncidencia.Checked;
  cxGrid3DBTableView1INC_FECHA_HORA.Visible := MostrarIncidencia.Checked;
  cxGrid3DBTableView1INC_USUARIO.Visible    := MostrarIncidencia.Checked;
  cxGrid3DBTableView1INC_ASUNTO.Visible     := MostrarIncidencia.Checked;
  cxGrid3DBTableView1INC_CONTACTO.Visible   := MostrarIncidencia.Checked;
end;

procedure TFormLstPresupuestoDetalle.MostrarSucClick(Sender: TObject);
begin
  inherited;
  MostrarSuc.Checked                 := Not MostrarSuc.Checked;
  cxGrid3DBTableView1SUCFAC.Visible  := MostrarSuc.Checked;
end;

procedure TFormLstPresupuestoDetalle.MostrarTip1Click(Sender: TObject);
begin
  inherited;
  MostrarTip1.Checked                 := Not MostrarTip1.Checked;
  cxGrid3DBTableView1TIPOCPBTE.Visible:= MostrarTip1.Checked;
end;

procedure TFormLstPresupuestoDetalle.MostraTotalClick(Sender: TObject);
begin
  inherited;
  MostraTotal.Checked                := Not MostraTotal.Checked;
  cxGrid3DBTableView1TOTAL.Visible   := MostraTotal.Checked;
end;

//procedure TFormLstPresupuestoDetalle.QLstAgrupadaItemsCODIGOARTICULOGetText(
//  Sender: TField; var Text: string; DisplayText: Boolean);
//begin
//  inherited;
//  Text:=QLstAgrupadaItemsCODIGOARTICULO.AsString;
//  if VerCodigoAlternativo1.Checked then
//    Text:=QLstAgrupadaItemsCODIGO_ATERNATIVO.AsString;
//  cxGrid1DBTableView1.DataController.Refresh;
//end;

procedure TFormLstPresupuestoDetalle.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCpbte.DesignReport;
end;

procedure TFormLstPresupuestoDetalle.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormLstPresupuestoDetalle.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  inherited;
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

procedure TFormLstPresupuestoDetalle.VerCodigoAlternativo1Click(
  Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked :=Not(VerCodigoAlternativo1.Checked);
  CDSFacDet.Refresh;
  CDSLstAgrupada.Refresh;

  //cxGrid2DBTableView1.DataController.RefreshExternalData;
  cxGrid1DBTableView1.DataController.RefreshExternalData;
 // cxGrid5DBTableView1.DataController.RefreshExternalData;
end;

procedure TFormLstPresupuestoDetalle.VerlosPreciosconIVA1Click(Sender: TObject);
begin
  inherited;
  VerlosPreciosconIVA1.Checked:=Not(VerlosPreciosconIVA1.Checked);
  cxGrid1DBTableView1.DataController.RefreshExternalData;
  cxGrid2DBTableView1.DataController.RefreshExternalData;

  //dbgDet.Refresh;
end;

end.
