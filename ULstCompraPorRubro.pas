unit ULstCompraPorRubro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Buttons, ToolWin, ExtCtrls, Grids, DBGrids, DBCtrls,Librerias,
  frxDBSet, frxClass,   frxExportXLS, frxExportRTF,cxGridExportLink,
  ImgList, JvComponentBase, JvExControls, JvGradient, Provider,
  DBClient, DataExport, DataToXLS, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, JvExMask, JvToolEdit, JvDBLookup, SqlExpr, frxExportPDF, JvBaseEdits,
  JvExDBGrids, JvDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxPSCore, dxPScxCommon,cxExportPivotGridLink, Menus, CheckLst, JvExExtCtrls,
  JvExtComponent, JvPanel, cxCalc, cxCurrencyEdit, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,Variants, dxSkinsDefaultPainters,
  dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage, System.Actions,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint,IniFiles,VirtualUI_SDK, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ActnList, CompBuscador, cxFilter,
  cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxBarBuiltInMenu, dxDateRanges,
  dxScrollbarAnnotations, System.ImageList, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCDataBinding,
  VCL.TMSFNCChartDatabaseAdapter, frCoreClasses, dxPScxExtComCtrlsLnk;

type
  TFormListadoCompraPorRubro = class(TFormABMBase)
    UpDown1: TUpDown;
    DSCompras: TDataSource;
    DSRubros: TDataSource;
    frCompras: TfrxReport;
    frDBCompras: TfrxDBDataset;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    CDSCompras: TClientDataSet;
    DSPCompras: TDataSetProvider;
    CDSComprasTIPOCPBTE: TStringField;
    CDSComprasCLASECPBTE: TStringField;
    CDSComprasNROCPBTE: TStringField;
    CDSComprasCODIGOARTICULO: TStringField;
    CDSComprasDETALLE_RUBRO: TStringField;
    CDSComprasDETALLE_SUBRUBRO: TStringField;
    CDSComprasRUBRO_STK: TStringField;
    CDSComprasDETALLE_STK: TStringField;
    CDSComprasTotalCalculado: TFloatField;
    DataToXLS: TDataToXLS;
    ExortarXKS: TAction;
    SaveDialog: TSaveDialog;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    dblRubros: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    frxPDFExport1: TfrxPDFExport;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    CDSComprasID_CABFAC: TIntegerField;
    CDSComprasSUBRUBRO_STK: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgDetalle: TJvDBGrid;
    TabSheet2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    DSPComprasAgrup: TDataSetProvider;
    CDSComprasAgrup: TClientDataSet;
    DSAgrupada: TDataSource;
    frDBComprasAgrup: TfrxDBDataset;
    TabSheet3: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    CDSComprasAgrupMUESTRAMES: TStringField;
    TabSheet4: TTabSheet;
    cxDBPivotGrid2: TcxDBPivotGrid;
    DSPOCompra: TDataSetProvider;
    CDSOCompra: TClientDataSet;
    DSOCompra: TDataSource;
    CDSOCompraSUCURSAL: TIntegerField;
    CDSOCompraNOMBRESUCURSAL: TStringField;
    CDSOCompraTIPOCPBTE: TStringField;
    CDSOCompraRUBRO_STK: TStringField;
    CDSOCompraDETALLE_RUBRO: TStringField;
    CDSOCompraSUBRUBRO_STK: TStringField;
    CDSOCompraDETALLE_SUBRUBRO: TStringField;
    CDSOCompraMESCOMPRA: TSmallintField;
    CDSOCompraANIOCOMPRA: TSmallintField;
    CDSOCompraMESCUMPLIDA: TSmallintField;
    CDSOCompraANIOCUMPLIDA: TSmallintField;
    CDSOCompraCODIGO_STK: TStringField;
    CDSOCompraDETALLE_STK: TStringField;
    CDSOCompraCODIGO: TStringField;
    CDSOCompraNOMBRE: TStringField;
    cxDBPivotGrid2Field1: TcxDBPivotGridField;
    cxDBPivotGrid2Field2: TcxDBPivotGridField;
    cxDBPivotGrid2Field3: TcxDBPivotGridField;
    cxDBPivotGrid2Field4: TcxDBPivotGridField;
    cxDBPivotGrid2Field5: TcxDBPivotGridField;
    cxDBPivotGrid2Field6: TcxDBPivotGridField;
    cxDBPivotGrid2Field7: TcxDBPivotGridField;
    cxDBPivotGrid2Field8: TcxDBPivotGridField;
    cxDBPivotGrid2Field9: TcxDBPivotGridField;
    cxDBPivotGrid2Field10: TcxDBPivotGridField;
    cxDBPivotGrid2Field11: TcxDBPivotGridField;
    cxDBPivotGrid2Field12: TcxDBPivotGridField;
    cxDBPivotGrid2Field13: TcxDBPivotGridField;
    cxDBPivotGrid2Field14: TcxDBPivotGridField;
    cxDBPivotGrid2Field15: TcxDBPivotGridField;
    cxDBPivotGrid2Field16: TcxDBPivotGridField;
    CDSOCompraESTADO: TStringField;
    CDSOCompraMUESTRAESTADO: TStringField;
    cxDBPivotGrid2Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    CDSComprasTOTAL: TFloatField;
    CDSComprasDETALLE: TStringField;
    CDSComprasAgrupCODIGOARTICULO: TStringField;
    CDSComprasAgrupSUCURSALCOMPRA: TIntegerField;
    CDSComprasAgrupNOMBRESUCURSAL: TStringField;
    CDSComprasAgrupTIPOCPBTE: TStringField;
    CDSComprasAgrupCLASECPBTE: TStringField;
    CDSComprasAgrupNROCPBTE: TStringField;
    CDSComprasAgrupRUBRO_STK: TStringField;
    CDSComprasAgrupDETALLE_RUBRO: TStringField;
    CDSComprasAgrupSUBRUBRO_STK: TStringField;
    CDSComprasAgrupDETALLE_SUBRUBRO: TStringField;
    CDSComprasAgrupMESCOMPRA: TSmallintField;
    CDSComprasAgrupANIOCOMPRA: TSmallintField;
    CDSComprasAgrupMESFISCAL: TSmallintField;
    CDSComprasAgrupANIOFISCAL: TSmallintField;
    CDSComprasAgrupDETALLE_STK: TStringField;
    CDSComprasAgrupMUESTRAANIO: TStringField;
    pnTotales: TJvPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    CDSComprasOBSERVACION1: TStringField;
    CDSComprasOBSERVACION2: TStringField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    CDSComprasAgrupOBSERVACION1: TStringField;
    CDSComprasAgrupOBSERVACION2: TStringField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    cxDBPivotGrid1Field25: TcxDBPivotGridField;
    CDSComprasAgrupID_FC: TIntegerField;
    CDSComprasAgrupPROVEE_CODIGO: TStringField;
    CDSComprasAgrupPROVEE_NOMBRE: TStringField;
    CDSComprasAgrupUNITARIO_GRAVADO: TFloatField;
    CDSComprasAgrupUNITARIO_EXENTO: TFloatField;
    CDSComprasAgrupUNITARIO_IMPINTE: TFloatField;
    CDSComprasAgrupUNITARIO_IVA: TFloatField;
    CDSComprasAgrupUNITARIO_TOTAL: TFloatField;
    CDSComprasAgrupCPBTE_TOTAL: TFloatField;
    CDSComprasAgrupCTRO_COSTO: TIntegerField;
    CDSComprasAgrupCTRO_COSTO_DESCRIPCION: TStringField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cxDBPivotGrid1Field24: TcxDBPivotGridField;
    cxDBPivotGrid1Field26: TcxDBPivotGridField;
    CDSComprasAgrupUNITARIO_FINAL: TFloatField;
    CDSComprasAgrupTOTAL_LINEA_FINAL: TFloatField;
    cxDBPivotGrid1Field27: TcxDBPivotGridField;
    cxDBPivotGrid1Field28: TcxDBPivotGridField;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    cxDBPivotGrid1Field29: TcxDBPivotGridField;
    cxDBPivotGrid1Field30: TcxDBPivotGridField;
    cxDBPivotGrid1Field31: TcxDBPivotGridField;
    CDSComprasAgrupTOTAL_LINEA_GRAV: TFloatField;
    CDSComprasAgrupTOTAL_LINEA_EXEN: TFloatField;
    CDSComprasAgrupTOTAL_LINEA_IMPIN: TFloatField;
    cxDBPivotGrid1Field32: TcxDBPivotGridField;
    cxDBPivotGrid1Field33: TcxDBPivotGridField;
    cxDBPivotGrid1Field34: TcxDBPivotGridField;
    CDSComprasAgrupTOTAL_LINEA_IVA: TFloatField;
    cxDBPivotGrid1Field35: TcxDBPivotGridField;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    CDSComprasAgrupMUESTRADIA: TStringField;
    cxDBPivotGrid1Field36: TcxDBPivotGridField;
    TabSheet5: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEE_NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_LINEA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAMES: TcxGridDBColumn;
    dxComponentPrinter1Link3: TdxGridReportLink;
    TabSheet6: TTabSheet;
    cxGrid2: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn4: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn6: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    dxComponentPrinter1Link4: TdxGridReportLink;
    QOCompra: TFDQuery;
    QComprasAgrup: TFDQuery;
    QCompras: TFDQuery;
    CDSComprasIVA_TASA: TFloatField;
    CDSComprasAgrupCANTIDAD: TFloatField;
    CDSComprasAgrupCPBTE_NETO: TFloatField;
    CDSComprasAgrupCTRO_COSTO_IMPUTADO: TFloatField;
    CDSComprasAgrupCTRO_COSTO_PORCEN: TFloatField;
    CDSComprasAgrupTOTAL_LINEA: TFloatField;
    CDSOCompraSUM: TFloatField;
    CDSComprasAgrupDIRECCION: TStringField;
    CDSComprasAgrupTELEFONO: TStringField;
    cxDBPivotGrid1Field37: TcxDBPivotGridField;
    cxDBPivotGrid1Field38: TcxDBPivotGridField;
    pnCabecera: TPanel;
    rgFecha: TAdvOfficeRadioGroup;
    rgIVA: TAdvOfficeRadioGroup;
    chRefresh: TAdvOfficeCheckBox;
    pnPieDetalle: TPanel;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    cxDBTextEdit1: TDBEdit;
    DBEdit1: TDBEdit;
    edTotal: TJvCalcEdit;
    pnPieCuadro: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    pnPieOCompra: TPanel;
    Label3: TLabel;
    rgOrdenCompraFecha: TAdvOfficeRadioGroup;
    TabSheet7: TTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    QUltimaCompra: TFDQuery;
    DSPUltimaCompra: TDataSetProvider;
    CDSUltimaCompra: TClientDataSet;
    DSUltimaCompra: TDataSource;
    CDSUltimaCompraCODIGOARTICULO: TStringField;
    CDSUltimaCompraDETALLE_STK: TStringField;
    CDSUltimaCompraIVA_TASA: TFloatField;
    CDSUltimaCompraUNITARIO_GRAVADO: TFloatField;
    CDSUltimaCompraUNITARIO_EXENTO: TFloatField;
    CDSUltimaCompraUNITARIO_TOTAL: TFloatField;
    CDSUltimaCompraDETALLE_RUBRO: TStringField;
    CDSUltimaCompraDETALLE_SUBRUBRO: TStringField;
    cxGrid3DBTableView1ULTIMACOMPRA: TcxGridDBColumn;
    cxGrid3DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid3DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid3DBTableView1IVA_TASA: TcxGridDBColumn;
    cxGrid3DBTableView1UNITARIO_GRAVADO: TcxGridDBColumn;
    cxGrid3DBTableView1UNITARIO_EXENTO: TcxGridDBColumn;
    cxGrid3DBTableView1UNITARIO_TOTAL: TcxGridDBColumn;
    cxGrid3DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid3DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    CDSUltimaCompraNOMBRE: TStringField;
    cxGrid3DBTableView1NOMBRE: TcxGridDBColumn;
    CDSComprasFECHACOMPRA: TSQLTimeStampField;
    CDSComprasFECHAFISCAL: TSQLTimeStampField;
    CDSComprasAgrupFECHAFISCAL: TSQLTimeStampField;
    CDSComprasAgrupFECHACOMPRA: TSQLTimeStampField;
    CDSOCompraFECHA: TSQLTimeStampField;
    CDSOCompraFECHACUMPLIDA: TSQLTimeStampField;
    CDSUltimaCompraULTIMACOMPRA: TSQLTimeStampField;
    TabSheet8: TTabSheet;
    cxDBPivotGrid3: TcxDBPivotGrid;
    cxDBPivotGridField1: TcxDBPivotGridField;
    cxDBPivotGridField2: TcxDBPivotGridField;
    cxDBPivotGridField3: TcxDBPivotGridField;
    cxDBPivotGridField4: TcxDBPivotGridField;
    cxDBPivotGridField5: TcxDBPivotGridField;
    cxDBPivotGridField6: TcxDBPivotGridField;
    cxDBPivotGridField7: TcxDBPivotGridField;
    cxDBPivotGridField8: TcxDBPivotGridField;
    cxDBPivotGridField9: TcxDBPivotGridField;
    cxDBPivotGridField10: TcxDBPivotGridField;
    cxDBPivotGridField11: TcxDBPivotGridField;
    cxDBPivotGridField12: TcxDBPivotGridField;
    cxDBPivotGridField13: TcxDBPivotGridField;
    cxDBPivotGridField14: TcxDBPivotGridField;
    cxDBPivotGridField15: TcxDBPivotGridField;
    cxDBPivotGridField16: TcxDBPivotGridField;
    cxDBPivotGridField17: TcxDBPivotGridField;
    cxDBPivotGridField18: TcxDBPivotGridField;
    cxDBPivotGridField19: TcxDBPivotGridField;
    cxDBPivotGridField20: TcxDBPivotGridField;
    cxDBPivotGridField21: TcxDBPivotGridField;
    cxDBPivotGridField22: TcxDBPivotGridField;
    cxDBPivotGridField23: TcxDBPivotGridField;
    cxDBPivotGridField24: TcxDBPivotGridField;
    cxDBPivotGridField25: TcxDBPivotGridField;
    cxDBPivotGridField26: TcxDBPivotGridField;
    cxDBPivotGridField27: TcxDBPivotGridField;
    cxDBPivotGridField28: TcxDBPivotGridField;
    cxDBPivotGridField29: TcxDBPivotGridField;
    cxDBPivotGridField30: TcxDBPivotGridField;
    cxDBPivotGridField31: TcxDBPivotGridField;
    cxDBPivotGridField32: TcxDBPivotGridField;
    cxDBPivotGridField33: TcxDBPivotGridField;
    cxDBPivotGridField34: TcxDBPivotGridField;
    cxDBPivotGridField35: TcxDBPivotGridField;
    cxDBPivotGridField36: TcxDBPivotGridField;
    cxDBPivotGridField37: TcxDBPivotGridField;
    cxDBPivotGridField38: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    QRubro: TFDQuery;
    TabSheet9: TTabSheet;
    tmChartCompras: TTMSFNCChart;
    QComprasRub: TFDQuery;
    QComprasRubRUBRO_STK: TStringField;
    QComprasRubDETALLE_RUBRO: TStringField;
    QComprasRubTOTAL: TFloatField;
    dxComponentPrinter1Link5: TcxPivotGridReportLink;
    cxGridDBTableView1Column2: TcxGridDBColumn;
    QVista: TFDQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    TabSheet10: TTabSheet;
    pnTotalCC: TJvPanel;
    Label7: TLabel;
    SpeedButton2: TSpeedButton;
    chSumasCC: TCheckListBox;
    QAgrupadaCC: TFDQuery;
    DSPAgrupadaCC: TDataSetProvider;
    CDSAgrupadaCC: TClientDataSet;
    DSAgrupadaCC: TDataSource;
    CDSAgrupadaCCID_FC: TIntegerField;
    CDSAgrupadaCCTIPOCPBTE: TStringField;
    CDSAgrupadaCCCLASECPBTE: TStringField;
    CDSAgrupadaCCNROCPBTE: TStringField;
    CDSAgrupadaCCFECHAFISCAL: TSQLTimeStampField;
    CDSAgrupadaCCFECHACOMPRA: TSQLTimeStampField;
    CDSAgrupadaCCNOMBRESUCURSAL: TStringField;
    CDSAgrupadaCCPROVEE_NOMBRE: TStringField;
    CDSAgrupadaCCCODIGOARTICULO: TStringField;
    CDSAgrupadaCCDETALLE_STK: TStringField;
    CDSAgrupadaCCCANTIDAD: TFloatField;
    CDSAgrupadaCCUNITARIO_IVA: TFloatField;
    CDSAgrupadaCCUNITARIO_TOTAL: TFloatField;
    CDSAgrupadaCCUNITARIO_FINAL: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA: TFloatField;
    CDSAgrupadaCCCPBTE_NETO: TFloatField;
    CDSAgrupadaCCCPBTE_TOTAL: TFloatField;
    CDSAgrupadaCCDETALLE_RUBRO: TStringField;
    CDSAgrupadaCCDETALLE_SUBRUBRO: TStringField;
    CDSAgrupadaCCMESCOMPRA: TSmallintField;
    CDSAgrupadaCCANIOCOMPRA: TSmallintField;
    CDSAgrupadaCCMESFISCAL: TSmallintField;
    CDSAgrupadaCCANIOFISCAL: TSmallintField;
    CDSAgrupadaCCCTRO_COSTO_DESCRIPCION: TStringField;
    CDSAgrupadaCCCTRO_COSTO_IMPUTADO: TFloatField;
    CDSAgrupadaCCCTRO_COSTO_PORCEN: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA_FINAL: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA_GRAV: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA_EXEN: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA_IVA: TFloatField;
    cxDBPivotGrid4: TcxDBPivotGrid;
    cxDBPivotGrid4ID_FC: TcxDBPivotGridField;
    cxDBPivotGrid4TIPOCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid4CLASECPBTE: TcxDBPivotGridField;
    cxDBPivotGrid4NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid4FECHAFISCAL: TcxDBPivotGridField;
    cxDBPivotGrid4FECHACOMPRA: TcxDBPivotGridField;
    cxDBPivotGrid4NOMBRESUCURSAL: TcxDBPivotGridField;
    cxDBPivotGrid4PROVEE_NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid4CODIGOARTICULO: TcxDBPivotGridField;
    cxDBPivotGrid4DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid4CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_GRAVADO: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_EXENTO: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_IMPINTE: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_IVA: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid4UNITARIO_FINAL: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA: TcxDBPivotGridField;
    cxDBPivotGrid4CPBTE_NETO: TcxDBPivotGridField;
    cxDBPivotGrid4CPBTE_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid4DETALLE_RUBRO: TcxDBPivotGridField;
    cxDBPivotGrid4DETALLE_SUBRUBRO: TcxDBPivotGridField;
    cxDBPivotGrid4MESCOMPRA: TcxDBPivotGridField;
    cxDBPivotGrid4ANIOCOMPRA: TcxDBPivotGridField;
    cxDBPivotGrid4MESFISCAL: TcxDBPivotGridField;
    cxDBPivotGrid4ANIOFISCAL: TcxDBPivotGridField;
    cxDBPivotGrid4CTRO_COSTO: TcxDBPivotGridField;
    cxDBPivotGrid4CTRO_COSTO_DESCRIPCION: TcxDBPivotGridField;
    cxDBPivotGrid4CTRO_COSTO_IMPUTADO: TcxDBPivotGridField;
    cxDBPivotGrid4CTRO_COSTO_PORCEN: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA_FINAL: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA_GRAV: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA_EXEN: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA_IMPIN: TcxDBPivotGridField;
    cxDBPivotGrid4TOTAL_LINEA_IVA: TcxDBPivotGridField;
    CDSAgrupadaCCSUCURSALCOMPRA: TIntegerField;
    CDSAgrupadaCCUNITARIO_GRAVADO: TFloatField;
    CDSAgrupadaCCUNITARIO_EXENTO: TFloatField;
    CDSAgrupadaCCUNITARIO_IMPINTE: TFloatField;
    CDSAgrupadaCCTOTAL_LINEA_IMPIN: TFloatField;
    pnPieCuadroCC: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    JvDBLookupCombo1: TJvDBLookupCombo;
    CDSAgrupadaCCRUBRO_STK: TStringField;
    CDSAgrupadaCCSUBRUBRO_STK: TStringField;
    CDSAgrupadaCCCTRO_COSTO: TIntegerField;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field40: TcxDBPivotGridField;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frComprasBeginDoc(Sender: TObject);
    procedure CDSComprasCalcFields(DataSet: TDataSet);
    procedure ExortarXKSExecute(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure CDSComprasAgrupCalcFields(DataSet: TDataSet);
    procedure CDSOCompraCalcFields(DataSet: TDataSet);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure tmChartComprasGetNumberOfPoints(Sender: TObject;
      ASerie: TTMSFNCChartSerie; var ANumberOfPoints: Integer);
    procedure tmChartComprasGetPoint(Sender: TObject; ASerie: TTMSFNCChartSerie;
      AIndex: Integer; var APoint: TTMSFNCChartPointVirtual);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure chSumasCCClick(Sender: TObject);
    procedure cxDBPivotGrid4MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid4MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid4MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);

  private
    { Private declarations }
  public
    procedure Sumar;
    { Public declarations }
  end;
  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoCompraPorRubro: TFormListadoCompraPorRubro;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses DMBuscadoresForm, UCompra_2, UCompraCtdo_2, UVistasGrillas,UDMAin_FD;

{$R *.DFM}

procedure TFormListadoCompraPorRubro.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListadoCompraPorRubro.SpeedButton3Click(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='COMPRARUB_CC';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='COMPRARUB_CC';
  CDSVista.Open;
end;

procedure TFormListadoCompraPorRubro.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='COMPRARUB';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='COMPRARUB';
  CDSVista.Open;
end;


procedure TFormListadoCompraPorRubro.Sumar;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSCompras,True);
  edTotal.Value:=0;
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      edTotal.Value:=edTotal.Value+CDSClone.FieldByName('TotalCalculado').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;




procedure TFormListadoCompraPorRubro.tmChartComprasGetNumberOfPoints(
  Sender: TObject; ASerie: TTMSFNCChartSerie; var ANumberOfPoints: Integer);
begin
  inherited;
  if (QComprasRub.Active) and (Not(QComprasRub.IsEmpty)) then
    ANumberOfPoints := QComprasRub.RecordCount-1
end;

procedure TFormListadoCompraPorRubro.tmChartComprasGetPoint(Sender: TObject;
  ASerie: TTMSFNCChartSerie; AIndex: Integer;
  var APoint: TTMSFNCChartPointVirtual);
begin
  inherited;
   if (QComprasRub.Active) and (Not(QComprasRub.IsEmpty)) then
   begin
     QComprasRub.First;
      while not(QComprasRub.Eof) do
        begin
          APoint.YValue     := QComprasRubTOTAL.Value;//[AIndex];
          APoint.XValueText := QComprasRubDETALLE_RUBRO.Value;
          QComprasRub.Next;
        end;
   end;
end;

procedure TFormListadoCompraPorRubro.FormShow(Sender: TObject);
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

end;

procedure TFormListadoCompraPorRubro.frComprasBeginDoc(Sender: TObject);
begin
  inherited;
  frCompras.Variables['desde']:=''''+Desde.Text+'''';
  frCompras.Variables['Hasta']:=''''+Hasta.Text+'''';
end;

procedure TFormListadoCompraPorRubro.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date :=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCompraPorRubro.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  if chRefresh.Checked then
    Buscar.Execute;
  PageControl1.SetFocus;
end;

procedure TFormListadoCompraPorRubro.BuscarExecute(Sender: TObject);
var c:Integer;
begin
//  inherited;
  Screen.Cursor:=crHourGlass;
  CDSCompras.Close;
  CDSCompras.IndexName:='';
  CDSCompras.IndexDefs.Clear;
  CDSComprasAgrup.Close;
  CDSOCompra.Close;
  sbEstado.SimpleText:='Iniciando Consulta...';
  Application.ProcessMessages;
  if rgFecha.ItemIndex=0 then
    begin
      CDSCompras.CommandText:='select fc.fechafiscal,fd.FechaCompra,fd.tipocpbte,fd.clasecpbte,fd.nrocpbte,fd.codigoarticulo,s.detalle_stk,fd.detalle,'+
                              'fd.iva_tasa, fd.total*(1-fc.dsto*0.01) as total,s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,fd.id_cabfac,'+
                              'fc.observacion1,fc.observacion2 from fccompcab fc '+
                              ' left join fccompdet fd on fd.id_cabfac=fc.id_fc '+
                              ' left join stock s on s.codigo_stk=fd.codigoarticulo '+
                              ' left join rubros r on r.codigo_rubro=s.rubro_stk '+
                              ' left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                              'where (fc.fechaCompra between :Desde and :Hasta) and '+
                              '      ((s.rubro_stk = :rubro) or ( :rubro = ''***'')) and '+
                              '      (fc.sucursalcompra = :sucursal or :sucursal = -1 ) and '+
                              '      (fc.ingresa_libro_iva = :iva or :iva =''*'')' +
                              '  order by s.rubro_stk,s.subrubro_stk,fd.codigoarticulo';
    end
  else
    begin
      CDSCompras.CommandText:='select fc.fechafiscal,fd.FechaCompra,fd.tipocpbte,fd.clasecpbte,fd.nrocpbte,fd.codigoarticulo,s.detalle_stk,fd.detalle,'+
                              'fd.iva_tasa, fd.total*(1-fc.dsto*0.01) as total,s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,fd.id_cabfac,'+
                              'fc.observacion1,fc.observacion2 from  fccompcab fc '+
                              ' left join fccompdet fd on fd.id_cabfac = fc.id_fc '+
                              ' left join stock s on s.codigo_stk      = fd.codigoarticulo '+
                              ' left join rubros r on r.codigo_rubro   = s.rubro_stk '+
                              ' left join subrubros sr on sr.codigo_subrubro = s.subrubro_stk '+
                              'where (fc.fechafiscal between :Desde and :Hasta) and '+
                              '      ((s.rubro_stk = :rubro) or ( :rubro = ''***'')) and '+
                              '      (fc.sucursalcompra = :sucursal or :sucursal = -1 ) and '+
                              '      (fc.ingresa_libro_iva = :iva or :iva =''*'')' +
                              '  order by s.rubro_stk,s.subrubro_stk,fd.codigoarticulo';

     // CDSComprasAgrup.CommandText:= 'select fd.codigoarticulo,fc.sucursalcompra,suc.detalle as NombreSucursal, fc.tipocpbte,fc.clasecpbte,fc.nrocpbte, '+
//                                    'fc.fechafiscal,fc.FechaCompra, ((fd.total*(1-fc.dsto*0.01))*(1+fd.iva_tasa*0.01)) as TotalFc,s.rubro_stk, '+
//                                    'r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro, fd.total * (1-fc.dsto*0.01) as Total,fd.cantidad as Cantidad, '+
//                                    'extract ( month from fc.fechacompra ) as MesCompra, extract ( year from fc.fechacompra ) as AnioCompra, '+
//                                    'extract ( month from fc.fechafiscal ) as MesFiscal, extract ( year from fc.fechafiscal ) as AnioFiscal, '+
//                                    's.detalle_stk,fc.codigo,fc.nombre,fd.detalle,'+
//                                    'acc.ctro_costo,ctr.descripcion,acc.imputado,acc.porcentaje,'+
//                                    'fc.observacion1,fc.observacion2,(fd.unitario_gravado+fd.unitario_exento+fd.unitario_imp_interno) as Unitario_neto,fc.id_fc '+
//                                    'from fccompdet fd '+
//                                    'left join stock s on s.codigo_stk=fd.codigoarticulo '+
//                                    'left join rubros r on r.codigo_rubro=s.rubro_stk '+
//                                    'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
//                                    'left join fccompcab fc on fc.id_fc=fd.id_cabfac '+
//                                    'left join sucursal suc on suc.codigo=fc.sucursalcompra '+
//                                    'left join aplica_ctro_costo acc on  acc.tipocpbte=fc.tipocpbte and acc.id_cpbte=fc.id_fc and acc.concepto=fd.codigoarticulo '+
//                                    'left join centro_costo ctr on ctr.id=acc.ctro_costo '+
//                                    'where (fc.fechaFISCAL between :Desde and :Hasta) and '+
//                                    '((s.rubro_stk = :rubro) or ( :rubro = ''***'')) and '+
//                                    '(fc.sucursalcompra = :sucursal or :sucursal = -1 ) and '+
//                                    '(fc.ingresa_libro_iva = :iva or :iva =''*'')' +
//                                    'order by fc.sucursalcompra,s.rubro_stk,s.subrubro_stk';

    end;
 // Orden de Comprass
 if rgOrdenCompraFecha.ItemIndex=0 then
    begin
      CDSOCompra.CommandText:='select fc.sucursal,suc.detalle as NombreSucursal,fc.tipocpbte,fc.fecha,fc.fechacumplida, '+
                              's.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,sum( fd.total), '+
                              '       extract (month from fc.fecha) as MesCompra, extract (year from fc.fecha) as AnioCompra, '+
                              '       extract (month from fc.fechacumplida) as MesCumplida, extract (year from fc.fechacumplida) as AnioCumplida, '+
                              '       s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estado from ordencompracab fc '+
                              'left join ordencompradet fd on fd.id_caboc=fc.id_oc '+
                              'left join stock s on s.codigo_stk=fd.codigoarticulo '+
                              'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                              'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                              'left join sucursal suc on suc.codigo=fc.sucursal '+
                              'where (fc.fecha between :Desde and :Hasta) and '+
                              '((s.rubro_stk = :rubro) or ( :rubro = ''***'')) and '+
                              '(fc.sucursal = :sucursal or :sucursal = -1 ) and '+
                              '(fc.Anulado<>''S'') and (fc.estado<>''C'') and (fc.estado<>''V'') '+

                              'group by fc.sucursal, suc.detalle, fc.tipocpbte, fc.fecha,fc.fechacumplida, '+
                              '         s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,fc.fecha,fc.fechacumplida, '+
                              '         s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estado '+
                              'order by s.rubro_stk,s.subrubro_stk';
    end
  else
    begin
      CDSOCompra.CommandText:='select fc.sucursal,suc.detalle as NombreSucursal,fc.tipocpbte,fc.fecha,fc.fechacumplida, '+
                              's.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,sum( fd.total), '+
                              '       extract (month from fc.fecha) as MesCompra, extract (year from fc.fecha) as AnioCompra, '+
                              '       extract (month from fc.fechacumplida) as MesCumplida, extract (year from fc.fechacumplida) as AnioCumplida, '+
                              '       s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estado from ordencompracab fc '+
                              'left join ordencompradet fd on fd.id_caboc=fc.id_oc '+
                              'left join stock s on s.codigo_stk=fd.codigoarticulo '+
                              'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                              'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                              'left join sucursal suc on suc.codigo=fc.sucursal '+
                              'where (fc.fechacumplida between :Desde and :Hasta) and '+
                              '((s.rubro_stk = :rubro) or ( :rubro = ''***'')) and '+
                              '(fc.sucursal = :sucursal or :sucursal = -1 ) and '+
                              '(fc.Anulado<>''S'') and (fc.estado<>''C'') and (fc.estado<>''V'') '+

                              'group by fc.sucursal, suc.detalle, fc.tipocpbte, fc.fecha,fc.fechacumplida, '+
                              '         s.rubro_stk,r.detalle_rubro,s.subrubro_stk,sr.detalle_subrubro,fc.fecha,fc.fechacumplida, '+
                              '         s.codigo_stk,s.detalle_stk,fc.codigo,fc.nombre,fc.estado '+
                              'order by s.rubro_stk,s.subrubro_stk';
    end;


  sbEstado.SimpleText:='Levantado Compras..';
  Application.ProcessMessages;

  CDSCompras.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSCompras.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSCompras.Params.ParamByName('rubro').Value    := dblRubros.Value;
  CDSCompras.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  case rgIVA.ItemIndex of
    0:CDSCompras.Params.ParamByName('iva').Value  := '*';
    1:CDSCompras.Params.ParamByName('iva').Value  := 'S';
    2:CDSCompras.Params.ParamByName('iva').Value  := 'N';
  end;

  CDSCompras.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;

  sbEstado.SimpleText:='Armando Cuadro de Compras...';
  Application.ProcessMessages;

  CDSComprasAgrup.Close;
  CDSComprasAgrup.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSComprasAgrup.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSComprasAgrup.Params.ParamByName('rubro').Value    := dblRubros.Value;
  CDSComprasAgrup.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  case rgIVA.ItemIndex of
    0:CDSComprasAgrup.Params.ParamByName('iva').Value  := '*';
    1:CDSComprasAgrup.Params.ParamByName('iva').Value  := 'S';
    2:CDSComprasAgrup.Params.ParamByName('iva').Value  := 'N';
  end;

  case rgFecha.ItemIndex of
    0:CDSComprasAgrup.Params.ParamByName('fecha').Value:='C';
    1:CDSComprasAgrup.Params.ParamByName('Fecha').Value:='F';
  end;

  sbEstado.SimpleText:='Armando Cuadro x CC...';
  Application.ProcessMessages;


  CDSAgrupadaCC.Close;
  CDSAgrupadaCC.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSAgrupadaCC.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSAgrupadaCC.Params.ParamByName('rubro').Value    := dblRubros.Value;
  CDSAgrupadaCC.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  case rgIVA.ItemIndex of
    0:CDSAgrupadaCC.Params.ParamByName('iva').Value  := '*';
    1:CDSAgrupadaCC.Params.ParamByName('iva').Value  := 'S';
    2:CDSAgrupadaCC.Params.ParamByName('iva').Value  := 'N';
  end;

  case rgFecha.ItemIndex of
    0:CDSAgrupadaCC.Params.ParamByName('fecha').Value:='C';
    1:CDSAgrupadaCC.Params.ParamByName('Fecha').Value:='F';
  end;

  sbEstado.SimpleText:='Armando Cuadro de Orden de Compra...';
  Application.ProcessMessages;




  CDSOCompra.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSOCompra.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSOCompra.Params.ParamByName('rubro').Value    := dblRubros.Value;
  CDSOCompra.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  CDSCompras.Open;

  CDSUltimaCompra.Close;
  CDSUltimaCompra.Params.ParamByName('Desde').Value    := Desde.Date;
  CDSUltimaCompra.Params.ParamByName('Hasta').Value    := Hasta.Date;
  CDSUltimaCompra.Params.ParamByName('rubro').Value    := dblRubros.Value;
  CDSUltimaCompra.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  case rgIVA.ItemIndex of
    0:CDSUltimaCompra.Params.ParamByName('iva').Value  := '*';
    1:CDSUltimaCompra.Params.ParamByName('iva').Value  := 'S';
    2:CDSUltimaCompra.Params.ParamByName('iva').Value  := 'N';
  end;
  CDSUltimaCompra.Params.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  CDSUltimaCompra.Open;

  CDSComprasAgrup.Open;
  CDSAgrupadaCC.Open;

  CDSOCompra.Open;

  CDSComprasAgrup.IndexFieldNames:='SUCURSALCOMPRA;RUBRO_STK;SUBRUBRO_STK';
  CDSAgrupadaCC.IndexFieldNames  :='SUCURSALCOMPRA;RUBRO_STK;SUBRUBRO_STK';

  QComprasRub.Close;
  QComprasRub.ParamByName('Desde').Value    := Desde.Date;
  QComprasRub.ParamByName('Hasta').Value    := Hasta.Date;
  QComprasRub.ParamByName('sucursal').Value := dbcSucursal.KeyValue;
  QComprasRub.Open;


  sbEstado.SimpleText:='Sumando...';
  Application.ProcessMessages;


  Sumar;
  Screen.Cursor:=crDefault;


  sbEstado.SimpleText:='';
  Application.ProcessMessages;

  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;
  for c:=0 to cxDBPivotGrid2.FieldCount-1 do
    cxDBPivotGrid2.Fields[c].ExpandAll;
  for c:=0 to cxDBPivotGrid4.FieldCount-1 do
    cxDBPivotGrid4.Fields[c].ExpandAll;
  //  TFloatField(dbgDetalle.Fields[5]).DisplayFormat:='0.00';
  cxGridDBTableView1.ViewData.Expand(True);
  cxGridDBTableView1.ViewData.Expand(True);

//  procedure TForm1.FormCreate(Sender: TObject);
//begin
 tmChartCompras.BeginUpdate;
 tmChartCompras.Series.Clear;
 tmChartCompras.Series.Add.ChartType:= ctPie;
 tmChartCompras.EndUpdate;
//end;
//procedure TForm1.TMSFNCChart1GetNumberOfPoints(Sender: TObject;
// ASerie: TTMSFNCChartSerie; var ANumberOfPoints: Integer);
//begin
// ANumberOfPoints := Length(PointArray);
//end;
//procedure TForm1.TMSFNCChart1GetPoint(Sender: TObject;
// ASerie: TTMSFNCChartSerie; AIndex: Integer;
// var APoint: TTMSFNCChartPointVirtual);
//begin
// APoint.YValue := PointArray[AIndex];
// APoint.XValue := AIndex;
//end;
end;

procedure TFormListadoCompraPorRubro.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;

  CDSRubro.OPen;
  CDSSucursal.Open;
  PageControl1.ActivePageIndex:=0;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaCompraRub');
  cxDBPivotGrid2.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaOCompraRub');
  //*************************************************************
 // for i := 0 to chOpSumas.Count - 1 do
 //   chOpSumas.Checked[i]:=True;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCompraRub.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  cxDBPivotGrid1.OptionsView.FilterFields      := ArchivoIni.ReadBool('Campos', 'Campos', True);
  ArchivoIni.Free;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='COMPRARUB';
  CDSVista.Open;

//  cxDBPivotGrid2.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
//  cxDBPivotGrid2.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
//  cxDBPivotGrid2.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
//  cxDBPivotGrid2.OptionsView.RowTotals         := chOpSumas.Checked[3];

end;


procedure TFormListadoCompraPorRubro.CDSComprasAgrupCalcFields(DataSet: TDataSet);
var a,m,d:Word;
begin
  inherited;

  if rgFecha.ItemIndex=0 then
    DecodeDate(CDSComprasAgrupFECHACOMPRA.AsDateTime,a,m,d)
  else
    if rgFecha.ItemIndex=1 then
      DecodeDate(CDSComprasAgrupFECHAFISCAL.AsDateTime,a,m,d);

  CDSComprasAgrupMUESTRAANIO.Value:=IntToStr(a);

  case m of
    1:CDSComprasAgrupMUESTRAMES.Value:=' 1-Enero';
    2:CDSComprasAgrupMUESTRAMES.Value:=' 2-Febrero';
    3:CDSComprasAgrupMUESTRAMES.Value:=' 3-Marzo';
    4:CDSComprasAgrupMUESTRAMES.Value:=' 4-Abril';
    5:CDSComprasAgrupMUESTRAMES.Value:=' 5-Mayo';
    6:CDSComprasAgrupMUESTRAMES.Value:=' 6-Junio';
    7:CDSComprasAgrupMUESTRAMES.Value:=' 7-Julio';
    8:CDSComprasAgrupMUESTRAMES.Value:=' 8-Agosto';
    9:CDSComprasAgrupMUESTRAMES.Value:=' 9-Septiembre';
   10:CDSComprasAgrupMUESTRAMES.Value:='10-Octubre';
   11:CDSComprasAgrupMUESTRAMES.Value:='11-Noviembre';
   12:CDSComprasAgrupMUESTRAMES.Value:='12-Diciembre';
  end;
  CDSComprasAgrupMUESTRADIA.Value:=FormatFloat('00',d);
end;

procedure TFormListadoCompraPorRubro.CDSComprasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSComprasTotalCalculado.Value:=CDSComprasTOTAL.AsFloat;
  if CDSComprasTIPOCPBTE.AsString='NC' Then
    CDSComprasTotalCalculado.Value:=CDSComprasTOTAL.AsFloat * -1;

end;

procedure TFormListadoCompraPorRubro.CDSOCompraCalcFields(DataSet: TDataSet);
begin
  inherited;
//N=nueva OC
//A=autorizada
//R=cumplida. se cierra
//C=Cancelada/Anulada

  if CDSOCompraESTADO.Value='N' then
    CDSOCompraMUESTRAESTADO.Value:='Nuevas'
  else
    if CDSOCompraESTADO.Value='A' then
      CDSOCompraMUESTRAESTADO.Value:='Autorizadas'
    else
      if CDSOCompraESTADO.Value='R' then
        CDSOCompraMUESTRAESTADO.Value:='Recibidas';

end;

procedure TFormListadoCompraPorRubro.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];

  cxDBPivotGrid2.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid2.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid2.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid2.OptionsView.RowTotals         := chOpSumas.Checked[3];

end;


procedure TFormListadoCompraPorRubro.chSumasCCClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid4.OptionsView.ColumnGrandTotals := chSumasCC.Checked[0];
  cxDBPivotGrid4.OptionsView.ColumnTotals      := chSumasCC.Checked[1];
  cxDBPivotGrid4.OptionsView.RowGrandTotals    := chSumasCC.Checked[2];
  cxDBPivotGrid4.OptionsView.RowTotals         := chSumasCC.Checked[3];
end;

procedure TFormListadoCompraPorRubro.cxDBPivotGrid1DblClick(Sender: TObject);
var
  AColumn: TcxPivotGridViewDataItem;
  AValue: string;
  Id:String;
begin
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
    begin
      AColumn := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Column;
      AValue  := VarToStr(TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Value);
      Caption := AValue;
    end;
  if cxDBPivotGrid1.HitTest.HitAtGroupHeader then
    begin
      AValue  := TcxPivotGridHeaderCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).DisplayText;
      Caption := AValue;
  //    id:= TcxPivotGridHeaderCellViewInfo(cxDBPivotGrid1Field24.HitTest.HitObject).Field..;
      //(cxDBPivotGrid1.DataController.DataSet.FieldByName('id_fc').Value);
   //   cxDBPivotGrid1Field24.DataBinding.DBField.Value);
    end;
// if (CDSComprasAgrupTIPOCPBTE.Value='FC') or (CDSComprasAgrupTIPOCPBTE.Value='NC') or (CDSComprasAgrupTIPOCPBTE.Value='ND') then
//        begin
//          if Not(Assigned(FormCompra_2)) then
//            FormCompra_2:=TFormCompra_2.Create(Self);
//          FormCompra_2.TipoCpbte:=CDSComprasAgrupTIPOCPBTE.Value;
//          FormCompra_2.DatoNew  :=CDSComprasAgrupID_FC.AsString;
//          FormCompra_2.Recuperar.Execute;
//          FormCompra_2.Show;
//        end
//      else
//        if CDSComprasAgrupTIPOCPBTE.Value='FO' then
//          begin
//            if Not(Assigned(FormCompraCtdo_2)) then
//              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
//            FormCompraCtdo_2.TipoCpbte:=CDSComprasAgrupTIPOCPBTE.Value;
//            FormCompraCtdo_2.DatoNew  :=CDSComprasAgrupID_FC.AsString;
//            FormCompraCtdo_2.Recuperar.Execute;
//            FormCompraCtdo_2.Show;
//          end;
end;

procedure TFormListadoCompraPorRubro.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormListadoCompraPorRubro.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoCompraPorRubro.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormListadoCompraPorRubro.cxDBPivotGrid4MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
 P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid4).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormListadoCompraPorRubro.cxDBPivotGrid4MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoCompraPorRubro.cxDBPivotGrid4MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid4.FieldCount-1 do
        cxDBPivotGrid4.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;



procedure TFormListadoCompraPorRubro.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  C:Integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;
  for c:=0 to cxDBPivotGrid2.FieldCount-1 do
    cxDBPivotGrid2.Fields[c].ExpandAll;
end;

procedure TFormListadoCompraPorRubro.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
    if (CDSComprasTIPOCPBTE.Value='FC') or (CDSComprasTIPOCPBTE.Value='NC') or (CDSComprasTIPOCPBTE.Value='ND') then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.TipoCpbte:=CDSComprasTIPOCPBTE.Value;
          FormCompra_2.DatoNew  :=CDSComprasID_CABFAC.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if CDSComprasTIPOCPBTE.Value='FO' then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.TipoCpbte:=CDSComprasTIPOCPBTE.Value;
            FormCompraCtdo_2.DatoNew  :=CDSComprasID_CABFAC.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end;

end;

procedure TFormListadoCompraPorRubro.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoCompraPorRubro.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;

end;

procedure TFormListadoCompraPorRubro.ExortarXKSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSCompras.IsEmpty) THEN
    BEGIN
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName:='COmprasPorRubo';

      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if PageControl1.ActivePageIndex=0 then
        begin
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' Then
              begin
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                DataToXLS.SaveToFile(SaveDialog.FileName);
                 if VirtualUI.Active then
                    VirtualUI.DownloadFile(SaveDialog.FileName);
              end;
        end
      else
        if PageControl1.ActivePageIndex=2 then
          begin
            cxDBPivotGrid1.OptionsView.DataFields     :=False;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
            cxDBPivotGrid1.OptionsView.RowFields      :=False;
            cxDBPivotGrid1.OptionsView.FilterFields   :=False;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=False;

            if SaveDialog.Execute Then
              if SaveDialog.FileName<>'' Then
                begin
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
          end
        else
          if PageControl1.ActivePageIndex=3 then
            begin
              cxDBPivotGrid2.OptionsView.DataFields     :=False;
              cxDBPivotGrid2.OptionsView.ColumnFields   :=False;
              cxDBPivotGrid2.OptionsView.RowFields      :=False;
              cxDBPivotGrid2.OptionsView.FilterFields   :=False;
              cxDBPivotGrid2.OptionsView.FilterSeparator:=False;

              if SaveDialog.Execute Then
                if SaveDialog.FileName<>'' Then
                  begin
                    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                    cxExportPivotGridToExcel(SaveDialog.FileName,cxDBPivotGrid2);
                    if VirtualUI.Active then
                      VirtualUI.DownloadFile(SaveDialog.FileName);
                  end;
              cxDBPivotGrid2.OptionsView.DataFields     :=True;
              cxDBPivotGrid2.OptionsView.ColumnFields   :=True;
              cxDBPivotGrid2.OptionsView.RowFields      :=True;
              cxDBPivotGrid2.OptionsView.FilterFields   :=True;
              cxDBPivotGrid2.OptionsView.FilterSeparator:=True;
          end
        else
          if PageControl1.ActivePageIndex=4 then
            BEGIN

              if SaveDialog.Execute Then
                if SaveDialog.FileName<>'' Then
                  begin
                    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                    cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);
                    if VirtualUI.Active then
                      VirtualUI.DownloadFile(SaveDialog.FileName);
                  end;
            END
          else
            if PageControl1.ActivePageIndex=5 then
              BEGIN

                if SaveDialog.Execute Then
                  if SaveDialog.FileName<>'' Then
                    begin
                      SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                      cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid2);
                      if VirtualUI.Active then
                        VirtualUI.DownloadFile(SaveDialog.FileName);
                    end;
              END
            else
              if PageControl1.ActivePageIndex=6 then
                begin
                  cxDBPivotGrid3.OptionsView.DataFields     :=False;
                  cxDBPivotGrid3.OptionsView.ColumnFields   :=False;
                  cxDBPivotGrid3.OptionsView.RowFields      :=False;
                  cxDBPivotGrid3.OptionsView.FilterFields   :=False;
                  cxDBPivotGrid3.OptionsView.FilterSeparator:=False;

                  if SaveDialog.Execute Then
                    if SaveDialog.FileName<>'' Then
                      begin
                        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                        cxExportPivotGridToExcel(SaveDialog.FileName,cxDBPivotGrid3);
                        if VirtualUI.Active then
                          VirtualUI.DownloadFile(SaveDialog.FileName);
                      end;
                  cxDBPivotGrid3.OptionsView.DataFields     :=False;
                  cxDBPivotGrid3.OptionsView.ColumnFields   :=False;
                  cxDBPivotGrid3.OptionsView.RowFields      :=False;
                  cxDBPivotGrid3.OptionsView.FilterFields   :=False;
                  cxDBPivotGrid3.OptionsView.FilterSeparator:=False;
                end
              else
              if PageControl1.ActivePageIndex=8 then
                begin
                  cxDBPivotGrid4.OptionsView.DataFields     :=False;
                  cxDBPivotGrid4.OptionsView.ColumnFields   :=False;
                  cxDBPivotGrid4.OptionsView.RowFields      :=False;
                  cxDBPivotGrid4.OptionsView.FilterFields   :=False;
                  cxDBPivotGrid4.OptionsView.FilterSeparator:=False;

                  if SaveDialog.Execute Then
                    if SaveDialog.FileName<>'' Then
                      begin
                        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
                        cxExportPivotGridToExcel(SaveDialog.FileName,cxDBPivotGrid4);
                        if VirtualUI.Active then
                          VirtualUI.DownloadFile(SaveDialog.FileName);
                      end;
                  cxDBPivotGrid4.OptionsView.DataFields     :=False;
                  cxDBPivotGrid4.OptionsView.ColumnFields   :=False;
                  cxDBPivotGrid4.OptionsView.RowFields      :=False;
                  cxDBPivotGrid4.OptionsView.FilterFields   :=False;
                  cxDBPivotGrid4.OptionsView.FilterSeparator:=False;
                end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoCompraPorRubro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaCompraRub');
  cxDBPivotGrid2.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaOCompraRub');
  //*************************************************************

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCompraRub.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.WriteBool('Campos', 'Campos', cxDBPivotGrid1.OptionsView.FilterFields);

  ArchivoIni.WriteBool('SumaCC', 'CGranTotal', cxDBPivotGrid4.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('SumaCC', 'CTotal', cxDBPivotGrid4.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('SumaCC', 'RGranTotal', cxDBPivotGrid4.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('SumaCC', 'RTotal', cxDBPivotGrid4.OptionsView.RowTotals);
  ArchivoIni.WriteBool('CamposCC', 'Campos', cxDBPivotGrid4.OptionsView.FilterFields);

  ArchivoIni.Free;

end;

procedure TFormListadoCompraPorRubro.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCompraPorRubro:=nil;
end;


procedure TFormListadoCompraPorRubro.ImprimirExecute(Sender: TObject);
begin
  if Not(CDSCompras.IsEmpty) and (PageControl1.ActivePageIndex<=1) Then
    begin

      if PrListados<0 Then PrListados:=0;

      frCompras.PrintOptions.Printer:=PrNomListados;
      frCompras.SelectPrinter;
      if PageControl1.ActivePageIndex=0 then
        frCompras.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCompraPorRubro.fr3')
      else
        if PageControl1.ActivePageIndex=1 then
          frCompras.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCompraPorRubroAg.fr3');

      frCompras.Variables['Desde']   :=''''+DateToStr(Desde.Date)+'''';
      frCompras.Variables['Hasta']   :=''''+DateToStr(Hasta.Date)+'''';
      case rgFecha.ItemIndex of
        0: frCompras.Variables['TipoFecha']   :='''Por Fecha De Compra''';
        1: frCompras.Variables['TipoFecha']   :='''Por Fecha Fiscal''';
      end;
      frCompras.Variables['Sucursal']   :=''''+dbcSucursal.Text+'''';
      case rgIVA.ItemIndex of
        0: frCompras.Variables['Iva']   :='''Todas las Operaciones''';
        1: frCompras.Variables['Iva']   :='''Las que van al Libro de iva''';
        2: frCompras.Variables['Iva']   :='''Las que NO van al Libro de iva''';
      end;

      frCompras.ShowReport;
    end
  else
   if PageControl1.ActivePageIndex=2 then
      dxComponentPrinter1Link1.Preview(True)
    else
      if PageControl1.ActivePageIndex=3 then
        dxComponentPrinter1Link2.Preview(True)
      else
        if PageControl1.ActivePageIndex=4 then
          dxComponentPrinter1Link3.Preview(True)
        else
          if PageControl1.ActivePageIndex=5 then
            dxComponentPrinter1Link4.Preview(True)
          else
            if PageControl1.ActivePageIndex=6 then
              dxComponentPrinter1Link5.Preview(True)
            else
            ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoCompraPorRubro.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if (CDSComprasAgrupTIPOCPBTE.Value='FC') or (CDSComprasAgrupTIPOCPBTE.Value='NC') or (CDSComprasAgrupTIPOCPBTE.Value='ND') then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Self);
          FormCompra_2.TipoCpbte:=CDSComprasAgrupTIPOCPBTE.Value;
          FormCompra_2.DatoNew  :=CDSComprasAgrupID_FC.AsString;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
      else
        if CDSComprasTIPOCPBTE.Value='FO' then
          begin
            if Not(Assigned(FormCompraCtdo_2)) then
              FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.TipoCpbte:=CDSComprasAgrupTIPOCPBTE.Value;
            FormCompraCtdo_2.DatoNew  :=CDSComprasAgrupID_FC.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end;
end;

procedure TFormListadoCompraPorRubro.Label2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoCompraPorRubro.Label3Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormListadoCompraPorRubro.Label5Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListadoCompraPorRubro.Label8Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid4.OptionsView.FilterFields:=Not(cxDBPivotGrid4.OptionsView.FilterFields);

end;

procedure TFormListadoCompraPorRubro.Label9Click(Sender: TObject);
begin
  inherited;
  pnTotalCC.Visible:=Not(pnTotalCC.Visible);
end;

procedure TFormListadoCompraPorRubro.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if PageControl1.ActivePageIndex=2 then
     APivot:=cxDBPivotGrid1
   else
     if PageControl1.ActivePageIndex=3 then
       APivot:=cxDBPivotGrid2;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
     APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListadoCompraPorRubro.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frCompras.DesignReport;
end;

end.