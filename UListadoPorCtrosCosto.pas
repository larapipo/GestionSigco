unit UListadoPorCtrosCosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Mask, JvExMask, JvToolEdit, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, JvDBLookup,DateUtils, frxClass, frxExportPDF, frxDBSet, JvBaseEdits,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, cxExportPivotGridLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxCalc, CheckLst,
  JvExExtCtrls, JvExtComponent, JvPanel, cxMaskEdit, cxFilter, cxData,
  cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxLabel,IniFiles,cxGridExportLink,
  Menus, dxPScxGridLnk, dxPScxGridLayoutViewLnk,Math,Types, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  cxGridBandedTableView, dxSkinOffice2007Black, cxTL, cxTextEdit,
  cxTLdxBarBuiltInMenu, cxInplaceContainer, TreeList, cxDropDownEdit,
  cxCheckComboBox, dxSkinsDefaultPainters, cxNavigator, dxSkinsdxRibbonPainter,
  JvAppStorage, JvAppIniStorage, System.Actions, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  DataExport, DataToXLS, cxCalendar, dxTaskbarProgress,VirtualUI_SDK,
  CompBuscador, dxPScxVGridLnk, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvOfficeButtons, dxPSStdGrLnk, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.ImageList,
  Vcl.DBCtrls,cxDataUtils, frCoreClasses, AdvSmoothButton, dxPScxExtComCtrlsLnk;

type
  TFormLstPorCtroCosto = class(TFormABMBase)
    CDSGastos: TClientDataSet;
    DSGastos: TDataSource;
    DSPGastos: TDataSetProvider;
    btImprimir: TBitBtn;
    frListado: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    Imprimir: TAction;
    pcDatos: TPageControl;
    pagListado: TTabSheet;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    pagAgrupado: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    btExcelGastos: TBitBtn;
    BitBtn2: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    Label5: TLabel;
    Label6: TLabel;
    pnTotales: TJvPanel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    Panel2: TPanel;
    dbcCtro: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Label1: TLabel;
    UpDown1: TUpDown;
    pagRelacion: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1TableView1: TcxGridTableView;
    cxGrid1TableView1Column1: TcxGridColumn;
    CDSGastosTIPO: TStringField;
    CDSGastosCTROCOSTO: TIntegerField;
    CDSGastosDETALLE: TStringField;
    CDSGastosTIPOCPBTE: TStringField;
    CDSGastosCLASECPBTE: TStringField;
    CDSGastosNROCPBTE: TStringField;
    CDSGastosCODIGO: TStringField;
    CDSGastosNOMBRE: TStringField;
    CDSGastosRUBRO: TStringField;
    CDSGastosSUBRUBRO: TStringField;
    CDSGastosRUBRO_DET: TStringField;
    CDSGastosSUBRUB_DET: TStringField;
    CDSGastosIDCPBTE: TIntegerField;
    CDSGastosTIPODETALLE: TStringField;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1PORCENTAJE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1RUBRO_DET: TcxGridDBColumn;
    cxGrid1DBTableView1SUBRUB_DET: TcxGridDBColumn;
    cxGrid1DBTableView1TIPODETALLE: TcxGridDBColumn;
    pagControlCompras: TTabSheet;
    DSPFcCompra: TDataSetProvider;
    CDSFcCompra: TClientDataSet;
    CDSFcCompraID_FC: TIntegerField;
    CDSFcCompraCODIGO: TStringField;
    CDSFcCompraRAZONSOCIAL: TStringField;
    DSFcCompra: TDataSource;
    CDSFcCompraNUMERO: TStringField;
    CDSFcCompraTIPOCPBTE: TStringField;
    DSPControlEgresos: TDataSetProvider;
    CDSControlEgresos: TClientDataSet;
    CDSControlEgresosID_EGRESO: TIntegerField;
    CDSControlEgresosTIPOCPBTE: TStringField;
    CDSControlEgresosNUMERO: TStringField;
    CDSControlEgresosDETALLE: TStringField;
    DSControlEgresos: TDataSource;
    DSPControlIngresos: TDataSetProvider;
    CDSControlIngresos: TClientDataSet;
    DSControlIngresos: TDataSource;
    CDSControlIngresosID_INGRESO: TIntegerField;
    CDSControlIngresosTIPOCPBTE: TStringField;
    CDSControlIngresosNUMERO: TStringField;
    CDSControlIngresosDETALLE: TStringField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    DSPControlVales: TDataSetProvider;
    CDSControlVales: TClientDataSet;
    DSControlVales: TDataSource;
    CDSControlValesID: TIntegerField;
    CDSControlValesTIPOCPBTE: TStringField;
    CDSControlValesNUMERO: TStringField;
    CDSControlValesDETALLE: TStringField;
    DSCtroCosto: TDataSource;
    excelrelacion: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    OcultarCabeceraGrilla1: TMenuItem;
    Excel1: TMenuItem;
    dxComponentPrinter1Link3: TdxGridReportLink;
    cxGrid1DBTableView1SALDOCALCULADO: TcxGridDBColumn;
    ExpandirTodolosItmes1: TMenuItem;
    ContraerTodolosItems1: TMenuItem;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pagAgrupado_2: TTabSheet;
    DSPGastos_2: TDataSetProvider;
    CDSGastos_2: TClientDataSet;
    DSGastos_2: TDataSource;
    CDSGastos_2TIPO: TStringField;
    CDSGastos_2ID_CPBTE: TIntegerField;
    CDSGastos_2TIPOCPBTE: TStringField;
    CDSGastos_2CLASECPBTE: TStringField;
    CDSGastos_2NROCPBTE: TStringField;
    CDSGastos_2CODIGO: TStringField;
    CDSGastos_2NOMBRE: TStringField;
    CDSGastos_2CODIGO_DET: TStringField;
    CDSGastos_2DETALLE: TStringField;
    CDSGastos_2CTROCOSTO: TIntegerField;
    CDSGastos_2DESCRIPCION_CTRCOSTO: TStringField;
    CDSGastos_2RUBRO: TStringField;
    CDSGastos_2SUBRUBRO: TStringField;
    CDSGastos_2RUBRO_DET: TStringField;
    CDSGastos_2SUBRUB_DET: TStringField;
    CDSGastos_2TIPODETALLE: TStringField;
    CDSGastos_2SALDOCALCULADO: TFloatField;
    cxDBPivotGrid2: TcxDBPivotGrid;
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
    pnTotales_2: TJvPanel;
    Label8: TLabel;
    SpeedButton2: TSpeedButton;
    chOpSumas_2: TCheckListBox;
    Label9: TLabel;
    Label10: TLabel;
    CDSDetFcCompra: TClientDataSet;
    DSPDetFcCompra: TDataSetProvider;
    DSDetFcCompra: TDataSource;
    cxStyle2: TcxStyle;
    cxGridTableViewStyleSheet1: TcxGridTableViewStyleSheet;
    GridBandedTableViewStyleSheetWindowsClassic: TcxGridBandedTableViewStyleSheet;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    cxStyle5: TcxStyle;
    cxStyle6: TcxStyle;
    cxStyle7: TcxStyle;
    cxStyle8: TcxStyle;
    cxStyle9: TcxStyle;
    cxStyle10: TcxStyle;
    cxStyle11: TcxStyle;
    cxStyle12: TcxStyle;
    cxStyle13: TcxStyle;
    cxStyle14: TcxStyle;
    pagControlEgresos: TTabSheet;
    pagControlIngresos: TTabSheet;
    pagControlPersonal: TTabSheet;
    cxGridComprasDBTableView1: TcxGridDBTableView;
    cxGridComprasLevel1: TcxGridLevel;
    cxGridCompras: TcxGrid;
    cxGridComprasLevel2: TcxGridLevel;
    cxGridComprasDBTableView2: TcxGridDBTableView;
    cxGridComprasDBTableView1ID_FC: TcxGridDBColumn;
    cxGridComprasDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridComprasDBTableView1NUMERO: TcxGridDBColumn;
    cxGridComprasDBTableView1CODIGO: TcxGridDBColumn;
    cxGridComprasDBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGridComprasDBTableView1TOTALNETO: TcxGridDBColumn;
    cxGridComprasDBTableView1TOTALAPLICADO: TcxGridDBColumn;
    CDSDetFcCompraID_FC: TIntegerField;
    CDSDetFcCompraTIPOCPBTE: TStringField;
    CDSDetFcCompraCLASECPBTE: TStringField;
    CDSDetFcCompraNROCPBTE: TStringField;
    CDSDetFcCompraCODIGOARTICULO: TStringField;
    CDSDetFcCompraDETALLE_STK: TStringField;
    CDSDetFcCompraDETIMPORTE: TFloatField;
    CDSDetFcCompraCTRO_COSTO: TIntegerField;
    CDSDetFcCompraDESCRIPCION: TStringField;
    cxGridComprasDBTableView2ID_FC: TcxGridDBColumn;
    cxGridComprasDBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGridComprasDBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGridComprasDBTableView2NROCPBTE: TcxGridDBColumn;
    cxGridComprasDBTableView2CODIGOARTICULO: TcxGridDBColumn;
    cxGridComprasDBTableView2DETALLE_STK: TcxGridDBColumn;
    cxGridComprasDBTableView2DETIMPORTE: TcxGridDBColumn;
    cxGridComprasDBTableView2CTRO_COSTO: TcxGridDBColumn;
    cxGridComprasDBTableView2DESCRIPCION: TcxGridDBColumn;
    cxGridComprasDBTableView2IMPUTADO: TcxGridDBColumn;
    cxGridComprasDBTableView2PORCENTAJE: TcxGridDBColumn;
    pnCentrosDeCostos: TPanel;
    CDSDetFcCompraID: TIntegerField;
    btExpand: TBitBtn;
    btContraer: TBitBtn;
    CDSDetFcCompraID_APPCOSTO: TIntegerField;
    cxGridEgresosView: TcxGridDBTableView;
    cxGridEgresosLevel1: TcxGridLevel;
    cxGridEgresos: TcxGrid;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    cxGridEgresosViewID_EGRESO: TcxGridDBColumn;
    cxGridEgresosViewTIPOCPBTE: TcxGridDBColumn;
    cxGridEgresosViewNUMERO: TcxGridDBColumn;
    cxGridEgresosViewDETALLE: TcxGridDBColumn;
    cxGridEgresosViewIMPORTE: TcxGridDBColumn;
    cxGridEgresosViewTOTALAPLICADO: TcxGridDBColumn;
    DSPDetEgresos: TDataSetProvider;
    CDSDetEgresos: TClientDataSet;
    DSDetEgresos: TDataSource;
    CDSDetEgresosID_EGRESO: TIntegerField;
    CDSDetEgresosID: TIntegerField;
    CDSDetEgresosTIPOCPBTE: TStringField;
    CDSDetEgresosCLASECPBTE: TStringField;
    CDSDetEgresosNROCPBTE: TStringField;
    CDSDetEgresosCODIGOGASTO: TStringField;
    CDSDetEgresosDETALLE: TStringField;
    CDSDetEgresosCTRO_COSTO: TIntegerField;
    CDSDetEgresosDESCRIPCION: TStringField;
    CDSDetEgresosID_APPCOSTO: TIntegerField;
    cxGridEgresosLevel2: TcxGridLevel;
    cxGridDetEgresosView: TcxGridDBTableView;
    cxGridDetEgresosViewID_EGRESO: TcxGridDBColumn;
    cxGridDetEgresosViewID: TcxGridDBColumn;
    cxGridDetEgresosViewFECHA: TcxGridDBColumn;
    cxGridDetEgresosViewTIPOCPBTE: TcxGridDBColumn;
    cxGridDetEgresosViewCLASECPBTE: TcxGridDBColumn;
    cxGridDetEgresosViewNROCPBTE: TcxGridDBColumn;
    cxGridDetEgresosViewCODIGOGASTO: TcxGridDBColumn;
    cxGridDetEgresosViewDETALLE: TcxGridDBColumn;
    cxGridDetEgresosViewDETIMPORTE: TcxGridDBColumn;
    cxGridDetEgresosViewCTRO_COSTO: TcxGridDBColumn;
    cxGridDetEgresosViewDESCRIPCION: TcxGridDBColumn;
    cxGridDetEgresosViewIMPUTADO: TcxGridDBColumn;
    cxGridDetEgresosViewPORCENTAJE: TcxGridDBColumn;
    cxGridDetEgresosViewID_APPCOSTO: TcxGridDBColumn;
    cxGridIngresosView: TcxGridDBTableView;
    cxGridDetIngresosView: TcxGridDBTableView;
    cxGridIngresosLevel1: TcxGridLevel;
    cxGridIngresosLevel2: TcxGridLevel;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    DSPDetIngresos: TDataSetProvider;
    CDSDetIngresos: TClientDataSet;
    DSDetIngresos: TDataSource;
    CDSDetIngresosID_INGRESO: TIntegerField;
    CDSDetIngresosID: TIntegerField;
    CDSDetIngresosTIPOCPBTE: TStringField;
    CDSDetIngresosCLASECPBTE: TStringField;
    CDSDetIngresosNROCPBTE: TStringField;
    CDSDetIngresosCODIGOINGRESO: TStringField;
    CDSDetIngresosDETALLE: TStringField;
    CDSDetIngresosCTRO_COSTO: TIntegerField;
    CDSDetIngresosDESCRIPCION: TStringField;
    CDSDetIngresosID_APPCOSTO: TIntegerField;
    cxGridIngresosViewID_INGRESO: TcxGridDBColumn;
    cxGridIngresosViewTIPOCPBTE: TcxGridDBColumn;
    cxGridIngresosViewNUMERO: TcxGridDBColumn;
    cxGridIngresosViewDETALLE: TcxGridDBColumn;
    cxGridIngresosViewIMPORTE: TcxGridDBColumn;
    cxGridIngresosViewTOTALAPLICADO: TcxGridDBColumn;
    cxGridIngresos: TcxGrid;
    cxGridDetIngresosViewID_INGRESO: TcxGridDBColumn;
    cxGridDetIngresosViewID: TcxGridDBColumn;
    cxGridDetIngresosViewFECHA: TcxGridDBColumn;
    cxGridDetIngresosViewTIPOCPBTE: TcxGridDBColumn;
    cxGridDetIngresosViewCLASECPBTE: TcxGridDBColumn;
    cxGridDetIngresosViewNROCPBTE: TcxGridDBColumn;
    cxGridDetIngresosViewCODIGOINGRESO: TcxGridDBColumn;
    cxGridDetIngresosViewDETALLE: TcxGridDBColumn;
    cxGridDetIngresosViewDETIMPORTE: TcxGridDBColumn;
    cxGridDetIngresosViewCTRO_COSTO: TcxGridDBColumn;
    cxGridDetIngresosViewDESCRIPCION: TcxGridDBColumn;
    cxGridDetIngresosViewIMPUTADO: TcxGridDBColumn;
    cxGridDetIngresosViewPORCENTAJE: TcxGridDBColumn;
    cxGridDetIngresosViewID_APPCOSTO: TcxGridDBColumn;
    cxGridVales: TcxGrid;
    cxGridValesDBTableView1: TcxGridDBTableView;
    cxGridValesDBTableView2: TcxGridDBTableView;
    cxGridValesLevel1: TcxGridLevel;
    cxGridValesLevel2: TcxGridLevel;
    Panel6: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    cxGridValesDBTableView1ID: TcxGridDBColumn;
    cxGridValesDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridValesDBTableView1NUMERO: TcxGridDBColumn;
    cxGridValesDBTableView1DETALLE: TcxGridDBColumn;
    cxGridValesDBTableView1IMPORTE: TcxGridDBColumn;
    cxGridValesDBTableView1TOTALAPLICADO: TcxGridDBColumn;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    BitBtn9: TBitBtn;
    CDSDetPersonal: TClientDataSet;
    DSPDetPersonal: TDataSetProvider;
    DSDetPersonal: TDataSource;
    CDSDetPersonalID: TIntegerField;
    CDSDetPersonalTIPOCPBTE: TStringField;
    CDSDetPersonalCLASECPBTE: TStringField;
    CDSDetPersonalNROCPBTE: TStringField;
    CDSDetPersonalCODIGO: TStringField;
    CDSDetPersonalDETALLE: TStringField;
    CDSDetPersonalCTRO_COSTO: TIntegerField;
    CDSDetPersonalDESCRIPCION: TStringField;
    CDSDetPersonalID_APPCOSTO: TIntegerField;
    cxGridValesDBTableView2ID: TcxGridDBColumn;
    cxGridValesDBTableView2FECHA: TcxGridDBColumn;
    cxGridValesDBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGridValesDBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGridValesDBTableView2NROCPBTE: TcxGridDBColumn;
    cxGridValesDBTableView2CODIGO: TcxGridDBColumn;
    cxGridValesDBTableView2DETALLE: TcxGridDBColumn;
    cxGridValesDBTableView2IMPORTE: TcxGridDBColumn;
    cxGridValesDBTableView2CTRO_COSTO: TcxGridDBColumn;
    cxGridValesDBTableView2DESCRIPCION: TcxGridDBColumn;
    cxGridValesDBTableView2IMPUTADO: TcxGridDBColumn;
    cxGridValesDBTableView2PORCENTAJE: TcxGridDBColumn;
    cxGridValesDBTableView2ID_APPCOSTO: TcxGridDBColumn;
    cxGridComprasDBTableView1Column1: TcxGridDBColumn;
    cxGridEgresosViewColumn1: TcxGridDBColumn;
    cxGridIngresosViewColumn1: TcxGridDBColumn;
    DataToXLS: TDataToXLS;
    BitBtn1: TBitBtn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2DBTableView1PORCENTAJE: TcxGridDBColumn;
    cxGrid2DBTableView1IMPORTE_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1NETO_CPBTE: TcxGridDBColumn;
    cxGrid2DBTableView1DEBE: TcxGridDBColumn;
    cxGrid2DBTableView1HABER: TcxGridDBColumn;
    cxGrid2DBTableView1RUBRO_DET: TcxGridDBColumn;
    cxGrid2DBTableView1SUBRUB_DET: TcxGridDBColumn;
    cxGrid2DBTableView1TIPODETALLE: TcxGridDBColumn;
    BitBtn12: TBitBtn;
    pagGstoBanco: TTabSheet;
    cxGridGstoBancos: TcxGrid;
    cxGridGastosBcoView: TcxGridDBTableView;
    cxGridDetGastosBcoView: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridLevel2: TcxGridLevel;
    DSPControlGstoBco: TDataSetProvider;
    CDSControlGstoBco: TClientDataSet;
    DSControlGstoBco: TDataSource;
    CDSControlGstoBcoID: TIntegerField;
    CDSControlGstoBcoTIPOCPBTE: TStringField;
    CDSControlGstoBcoNUMERO: TStringField;
    CDSControlGstoBcoBANCO: TStringField;
    cxGridGastosBcoViewID_EGRESO: TcxGridDBColumn;
    cxGridGastosBcoViewFECHA: TcxGridDBColumn;
    cxGridGastosBcoViewTIPOCPBTE: TcxGridDBColumn;
    cxGridGastosBcoViewNUMERO: TcxGridDBColumn;
    cxGridGastosBcoViewDETALLE: TcxGridDBColumn;
    cxGridGastosBcoViewIMPORTE: TcxGridDBColumn;
    cxGridGastosBcoViewTOTALAPLICADO: TcxGridDBColumn;
    DSPDetGstoBco: TDataSetProvider;
    CDSDetGstoBco: TClientDataSet;
    DSDetGstoBco: TDataSource;
    CDSDetGstoBcoID: TIntegerField;
    CDSDetGstoBcoID_DET: TIntegerField;
    CDSDetGstoBcoTIPOCPBTE: TStringField;
    CDSDetGstoBcoCLASECPBTE: TStringField;
    CDSDetGstoBcoNROCPBTE: TStringField;
    CDSDetGstoBcoCODIGO_CONCEPTO: TStringField;
    CDSDetGstoBcoDETALLE: TStringField;
    CDSDetGstoBcoCTRO_COSTO: TIntegerField;
    CDSDetGstoBcoDESCRIPCION: TStringField;
    CDSDetGstoBcoID_APPCOSTO: TIntegerField;
    cxGridDetGastosBcoViewID: TcxGridDBColumn;
    cxGridDetGastosBcoViewID_DET: TcxGridDBColumn;
    cxGridDetGastosBcoViewFECHA: TcxGridDBColumn;
    cxGridDetGastosBcoViewTIPOCPBTE: TcxGridDBColumn;
    cxGridDetGastosBcoViewCLASECPBTE: TcxGridDBColumn;
    cxGridDetGastosBcoViewNROCPBTE: TcxGridDBColumn;
    cxGridDetGastosBcoViewCODIGO_CONCEPTO: TcxGridDBColumn;
    cxGridDetGastosBcoViewDETALLE: TcxGridDBColumn;
    cxGridDetGastosBcoViewDETIMPORTE: TcxGridDBColumn;
    cxGridDetGastosBcoViewCTRO_COSTO: TcxGridDBColumn;
    cxGridDetGastosBcoViewDESCRIPCION: TcxGridDBColumn;
    cxGridDetGastosBcoViewIMPUTADO: TcxGridDBColumn;
    cxGridDetGastosBcoViewPORCENTAJE: TcxGridDBColumn;
    cxGridDetGastosBcoViewID_APPCOSTO: TcxGridDBColumn;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    QControlVales: TFDQuery;
    CDSControlValesIMPORTE: TFloatField;
    CDSControlValesTOTALAPLICADO: TFloatField;
    QFcCompra: TFDQuery;
    CDSFcCompraTOTALAPLICADO: TFloatField;
    CDSFcCompraTOTALNETO: TFloatField;
    QGastos: TFDQuery;
    QControlEgresos: TFDQuery;
    CDSControlEgresosIMPORTE: TFloatField;
    CDSControlEgresosTOTALAPLICADO: TFloatField;
    QControlIngresos: TFDQuery;
    CDSControlIngresosIMPORTE: TFloatField;
    CDSControlIngresosTOTALAPLICADO: TFloatField;
    QControlGastoBco: TFDQuery;
    CDSControlGstoBcoIMPORTE: TFloatField;
    CDSControlGstoBcoTOTALAPLICADO: TFloatField;
    QCtroCosto: TFDQuery;
    QCtroCostoID: TIntegerField;
    QCtroCostoDESCRIPCION: TStringField;
    QCtroCostoPOR_DEFECTO: TStringField;
    QCtroCostoACTIVO: TStringField;
    QDetFcCompras: TFDQuery;
    CDSDetFcCompraIMPUTADO: TFloatField;
    CDSDetFcCompraPORCENTAJE: TFloatField;
    QDetEgresos: TFDQuery;
    CDSDetEgresosDETIMPORTE: TFloatField;
    CDSDetEgresosPORCENTAJE: TFloatField;
    CDSDetEgresosIMPUTADO: TFloatField;
    QDetIngresos: TFDQuery;
    CDSDetIngresosDETIMPORTE: TFloatField;
    CDSDetIngresosIMPUTADO: TFloatField;
    CDSDetIngresosPORCENTAJE: TFloatField;
    QDetPersonal: TFDQuery;
    CDSDetPersonalIMPORTE: TFloatField;
    CDSDetPersonalPORCENTAJE: TFloatField;
    CDSDetPersonalIMPUTADO: TFloatField;
    QGastos_2: TFDQuery;
    CDSGastos_2PORCENTAJE: TFloatField;
    QDetGstoBco: TFDQuery;
    CDSDetGstoBcoDETIMPORTE: TFloatField;
    CDSDetGstoBcoIMPUTADO: TFloatField;
    CDSDetGstoBcoPORCENTAJE: TFloatField;
    QDetFcComprasID_FC: TIntegerField;
    QDetFcComprasID: TIntegerField;
    QDetFcComprasTIPOCPBTE: TStringField;
    QDetFcComprasCLASECPBTE: TStringField;
    QDetFcComprasNROCPBTE: TStringField;
    QDetFcComprasCODIGOARTICULO: TStringField;
    QDetFcComprasDETALLE_STK: TStringField;
    QDetFcComprasDETIMPORTE: TFloatField;
    QDetFcComprasCTRO_COSTO: TIntegerField;
    QDetFcComprasDESCRIPCION: TStringField;
    QDetFcComprasIMPUTADO: TFloatField;
    QDetFcComprasPORCENTAJE: TFloatField;
    QDetFcComprasID_APPCOSTO: TIntegerField;
    QInsertarMovCtrCosto: TFDQuery;
    QModificaMovCtrCosto: TFDQuery;
    QBorrarMovCtrCosto: TFDQuery;
    pnPie_listado: TPanel;
    pnPie_Relacion: TPanel;
    chbGrupo: TAdvOfficeCheckBox;
    pnPie_Agrupado: TPanel;
    pnPie_Nuevo: TPanel;
    CDSGastosDETALLEART: TStringField;
    CDSGastosCODIGOART: TStringField;
    CDSGastosMES: TStringField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    CDSFcCompraFECHACOMPRA: TSQLTimeStampField;
    CDSControlEgresosFECHA: TSQLTimeStampField;
    CDSControlIngresosFECHA: TSQLTimeStampField;
    CDSControlGstoBcoFECHA: TSQLTimeStampField;
    QDetFcComprasFECHACOMPRA: TSQLTimeStampField;
    CDSDetFcCompraFECHACOMPRA: TSQLTimeStampField;
    CDSDetEgresosFECHA: TSQLTimeStampField;
    CDSDetIngresosFECHA: TSQLTimeStampField;
    CDSDetPersonalFECHA: TSQLTimeStampField;
    CDSGastos_2FECHA: TSQLTimeStampField;
    CDSDetGstoBcoFECHA: TSQLTimeStampField;
    chAutoContraer: TAdvOfficeCheckBox;
    chbPorDia: TAdvOfficeCheckBox;
    chVtas: TAdvOfficeCheckBox;
    chPersonal: TAdvOfficeCheckBox;
    chIngresos: TAdvOfficeCheckBox;
    Label11: TLabel;
    PopupMenu2: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    CDSFcCompraidmax: TAggregateField;
    CDSFcCompraidmin: TAggregateField;
    CDSControlEgresosIDMIN: TAggregateField;
    CDSControlEgresosIDMAX: TAggregateField;
    CDSDetEgresosID_CPBTE: TIntegerField;
    CDSControlIngresosIDMAX: TAggregateField;
    CDSControlIngresosIDMIN: TAggregateField;
    ExportarExcel: TAction;
    BitBtn11: TBitBtn;
    ToolButton1: TToolButton;
    DBText1: TDBText;
    QControlEgresosFECHA: TSQLTimeStampField;
    QControlEgresosID_EGRESO: TIntegerField;
    QControlEgresosTIPOCPBTE: TStringField;
    QControlEgresosNUMERO: TStringField;
    QControlEgresosDETALLE: TStringField;
    QControlEgresosIMPORTE: TFloatField;
    QControlEgresosTOTALAPLICADO: TFloatField;
    QFcCompraFECHACOMPRA: TSQLTimeStampField;
    QFcCompraID_FC: TIntegerField;
    QFcCompraTIPOCPBTE: TStringField;
    QFcCompraNUMERO: TStringField;
    QFcCompraCODIGO: TStringField;
    QFcCompraRAZONSOCIAL: TStringField;
    QFcCompraTOTALNETO: TFloatField;
    QFcCompraTOTALAPLICADO: TFloatField;
    JvDBGrid2: TDBGrid;
    JvDBGrid1: TDBGrid;
    JvDBGrid3: TDBGrid;
    dbgCentroCosto: TDBGrid;
    DBText2: TDBText;
    chAgrupaTipo: TAdvOfficeCheckBox;
    chAgrupaCtro: TAdvOfficeCheckBox;
    Panel3: TPanel;
    BitBtn10: TBitBtn;
    BitBtn13: TBitBtn;
    DBGrid1: TDBGrid;
    BitBtn14: TBitBtn;
    CDSGastosFECHA: TDateField;
    CDSGastosSALDOCALCULADO: TFloatField;
    QControlValesID: TIntegerField;
    QControlValesTIPOCPBTE: TStringField;
    QControlValesNUMERO: TStringField;
    QControlValesDETALLE: TStringField;
    QControlValesIMPORTE: TFloatField;
    QControlValesTOTALAPLICADO: TFloatField;
    QControlGastoBcoFECHA: TSQLTimeStampField;
    QControlGastoBcoID: TIntegerField;
    QControlGastoBcoTIPOCPBTE: TStringField;
    QControlGastoBcoNUMERO: TStringField;
    QControlGastoBcoBANCO: TStringField;
    QControlGastoBcoIMPORTE: TFloatField;
    QControlGastoBcoTOTALAPLICADO: TFloatField;
    QControlIngresosFECHA: TSQLTimeStampField;
    QControlIngresosID_INGRESO: TIntegerField;
    QControlIngresosTIPOCPBTE: TStringField;
    QControlIngresosNUMERO: TStringField;
    QControlIngresosDETALLE: TStringField;
    QControlIngresosIMPORTE: TFloatField;
    QControlIngresosTOTALAPLICADO: TFloatField;
    QDetIngresosID_INGRESO: TIntegerField;
    QDetIngresosID: TIntegerField;
    QDetIngresosID_CPBTE: TIntegerField;
    QDetIngresosFECHA: TSQLTimeStampField;
    QDetIngresosTIPOCPBTE: TStringField;
    QDetIngresosCLASECPBTE: TStringField;
    QDetIngresosNROCPBTE: TStringField;
    QDetIngresosCODIGOINGRESO: TStringField;
    QDetIngresosDETALLE: TStringField;
    QDetIngresosDETIMPORTE: TFloatField;
    QDetIngresosCTRO_COSTO: TIntegerField;
    QDetIngresosDESCRIPCION: TStringField;
    QDetIngresosIMPUTADO: TFloatField;
    QDetIngresosPORCENTAJE: TFloatField;
    QDetIngresosID_APPCOSTO: TIntegerField;
    QDetEgresosID_EGRESO: TIntegerField;
    QDetEgresosID: TIntegerField;
    QDetEgresosID_CPBTE: TIntegerField;
    QDetEgresosFECHA: TSQLTimeStampField;
    QDetEgresosTIPOCPBTE: TStringField;
    QDetEgresosCLASECPBTE: TStringField;
    QDetEgresosNROCPBTE: TStringField;
    QDetEgresosCODIGOGASTO: TStringField;
    QDetEgresosDETALLE: TStringField;
    QDetEgresosDETIMPORTE: TFloatField;
    QDetEgresosCTRO_COSTO: TIntegerField;
    QDetEgresosDESCRIPCION: TStringField;
    QDetEgresosIMPUTADO: TFloatField;
    QDetEgresosPORCENTAJE: TFloatField;
    QDetEgresosID_APPCOSTO: TIntegerField;
    CDSGastosTOTAL: TFloatField;
    CDSGastosDEBE: TFloatField;
    CDSGastosHABER: TFloatField;
    CDSGastosNETO_CPBTE: TFloatField;
    CDSGastosIMPORTE_CPBTE: TFloatField;
    CDSGastosPORCENTAJE: TFloatField;
    CDSGastos_2NETO_CPBTE: TFloatField;
    CDSGastos_2IMPORTE_CPBTE: TFloatField;
    CDSGastos_2IMP_DEBE: TFloatField;
    CDSGastos_2IMP_HABER: TFloatField;
    CDSGastosSaldoDH: TFloatField;
    CDSGastos_2SALDODEBEHABER: TFloatField;
    cxDBPivotGrid2Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    QDetPersonalID: TIntegerField;
    QDetPersonalFECHA: TSQLTimeStampField;
    QDetPersonalTIPOCPBTE: TStringField;
    QDetPersonalCLASECPBTE: TStringField;
    QDetPersonalNROCPBTE: TStringField;
    QDetPersonalCODIGO: TStringField;
    QDetPersonalDETALLE: TStringField;
    QDetPersonalIMPORTE: TFloatField;
    QDetPersonalCTRO_COSTO: TIntegerField;
    QDetPersonalDESCRIPCION: TStringField;
    QDetPersonalIMPUTADO: TFloatField;
    QDetPersonalPORCENTAJE: TFloatField;
    QDetPersonalID_APPCOSTO: TIntegerField;
    QDetGstoBcoID: TIntegerField;
    QDetGstoBcoID_DET: TIntegerField;
    QDetGstoBcoFECHA: TSQLTimeStampField;
    QDetGstoBcoTIPOCPBTE: TStringField;
    QDetGstoBcoCLASECPBTE: TStringField;
    QDetGstoBcoNROCPBTE: TStringField;
    QDetGstoBcoCODIGO_CONCEPTO: TStringField;
    QDetGstoBcoDETALLE: TStringField;
    QDetGstoBcoDETIMPORTE: TFloatField;
    QDetGstoBcoCTRO_COSTO: TIntegerField;
    QDetGstoBcoDESCRIPCION: TStringField;
    QDetGstoBcoIMPUTADO: TFloatField;
    QDetGstoBcoPORCENTAJE: TFloatField;
    QDetGstoBcoID_APPCOSTO: TIntegerField;
    CDSGastos_2TOTAL_DETALLE: TFloatField;
    N1: TMenuItem;
    LimpiarFiltros2: TAction;
    LimpiarFiltros1: TMenuItem;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgSaldosDblClick(Sender: TObject);
    procedure btExcelGastosClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure CDSGastosCalcFields(DataSet: TDataSet);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure cxGridDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbgGastosDblClick(Sender: TObject);
    procedure dbgIngresoDblClick(Sender: TObject);
    procedure dbgValesDblClick(Sender: TObject);
    procedure excelrelacionExecute(Sender: TObject);
    procedure OcultarCabeceraGrilla1Click(Sender: TObject);
    procedure ExpandirTodolosItmes1Click(Sender: TObject);
    procedure ContraerTodolosItems1Click(Sender: TObject);
    procedure chbGrupoClick(Sender: TObject);
    procedure CDSGastos_2CalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chOpSumas_2Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure CDSFcCompraAfterScroll(DataSet: TDataSet);
    procedure cxGrid2DBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGridComprasDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridComprasDBTableView2DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridComprasDBTableView2DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure CDSDetFcCompraIMPUTADOSetText(Sender: TField; const Text: string);
    procedure CDSDetFcCompraAfterPost(DataSet: TDataSet);
    procedure CDSDetFcCompraPORCENTAJESetText(Sender: TField;
      const Text: string);
    procedure btExpandClick(Sender: TObject);
    procedure btContraerClick(Sender: TObject);
    procedure cxGridComprasDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSDetFcCompraCTRO_COSTOSetText(Sender: TField;
      const Text: string);
    procedure cxGridEgresosViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure cxGridDetEgresosViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridDetEgresosViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDetEgresosViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSDetEgresosAfterPost(DataSet: TDataSet);
    procedure CDSDetEgresosIMPUTADOSetText(Sender: TField; const Text: string);
    procedure CDSDetEgresosPORCENTAJESetText(Sender: TField;
      const Text: string);
    procedure CDSDetEgresosCTRO_COSTOSetText(Sender: TField;
      const Text: string);
    procedure cxGridEgresosDBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure cxGridIngresosViewCustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGridIngresoscxGridDBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGridDetIngresosViewDragOver(Sender, Source: TObject;
      X, Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDetIngresosViewDragDrop(Sender, Source: TObject;
      X, Y: Integer);
    procedure CDSDetIngresosAfterPost(DataSet: TDataSet);
    procedure cxGridDetIngresosViewKeyDown(Sender: TObject;
      var Key: Word; Shift: TShiftState);
    procedure cxGridValesDBTableView1DataControllerDetailExpanding(
      ADataController: TcxCustomDataController; ARecordIndex: Integer;
      var AAllow: Boolean);
    procedure cxGridValesDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure cxGridValesDBTableView2DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridValesDBTableView2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cxGridValesDBTableView2DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure pcDatosChanging(Sender: TObject; var AllowChange: Boolean);
    procedure pcDatosChange(Sender: TObject);
    procedure CDSCtroCostoAfterOpen(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridComprasDBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridComprasDBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure cxGridComprasDBTableView1DblClick(Sender: TObject);
    procedure cxDBPivotGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGridEgresosViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridEgresosViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridEgresosViewDblClick(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure chAgrupaTipoClick(Sender: TObject);
    procedure chAgrupaCtroClick(Sender: TObject);
    procedure cxGridGastosBcoViewDblClick(Sender: TObject);
    procedure cxGridGastosBcoViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridIngresosViewDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridIngresosViewDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure cxGridGastosBcoViewDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridIngresosViewDblClick(Sender: TObject);
    procedure cxGridValesDBTableView1DblClick(Sender: TObject);
    procedure cxGridGastosBcoViewCustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure BitBtn14Click(Sender: TObject);
    procedure cxGridValesDBTableView1DragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure cxGridValesDBTableView1DragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure cxGridDetGastosBcoViewKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure LimpiarFiltros2Execute(Sender: TObject);
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
 {$R-}
  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

 var
  FormLstPorCtroCosto: TFormLstPorCtroCosto;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UCompraCtdo_2, UOPago_2, UAdelantosSueldos, UEgresoCaja,
     UCompra_2, UIngresoCaja,UDMain_fd, UGastosBancarios;
{$R *.dfm}


procedure ExpandViewGroups(AView: TcxGridTableView; ALevel: Integer);
var
  I: Integer;
begin
  AView.BeginUpdate;
  try
    AView.DataController.Groups.FullExpand;
    for I := AView.DataController.RowCount - 1 downto 0 do
      if AView.DataController.GetRowInfo(I).Level > ALevel then
        AView.DataController.Groups.ChangeExpanding(I, False, True);
  finally
    AView.EndUpdate;
  end;
end;


procedure TFormLstPorCtroCosto.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormLstPorCtroCosto.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  pnTotales_2.Visible:=False;
end;

procedure TFormLstPorCtroCosto.sumar;
begin
  inherited;
  edDebe.Value := 0;
  edHaber.Value:= 0;
  edSaldo.Value:= 0;

  CDSGastos.First;
  CDSGastos.DisableControls;
  while not(CDSGastos.Eof) do
    begin
      edDebe.Value  := edDebe.Value+CDSGastosDEBE.AsFloat;
      edHaber.Value := edHaber.Value+CDSGastosHABER.AsFloat;
      edSaldo.Value := edSaldo.Value+CDSGastosDEBE.AsFloat-CDSGastosHABER.AsFloat;
      CDSGastos.Next;
    end;
  CDSGastos.First;
  CDSGastos.EnableControls;
end;


procedure TFormLstPorCtroCosto.BitBtn14Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSGastos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid2.OptionsView.DataFields     :=False;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid2.OptionsView.RowFields      :=False;
      cxDBPivotGrid2.OptionsView.FilterFields   :=False;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=False;
      SaveDialog1.FileName:='GastosCtroCosto_2';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        if VirtualUI.Active then
          cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid2)
        else
          cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid2);

      cxDBPivotGrid2.OptionsView.DataFields     :=True;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid2.OptionsView.RowFields      :=True;
      //cxDBPivotGrid1.OptionsView.FilterFields   :=True;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormLstPorCtroCosto.BitBtn1Click(Sender: TObject);
begin
  inherited;

  if Not(CDSGastos.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='GastosCtrCosto';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt)
            else
              DataToXLS.SaveToFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
    end
  else
    ShowMessage('No hay datos para exportar');

end;

procedure TFormLstPorCtroCosto.BitBtn2Click(Sender: TObject);
begin
  inherited;
  //dxComponentPrinter1.Preview(True);
   dxComponentPrinter1Link1.Preview();
end;

procedure TFormLstPorCtroCosto.BitBtn3Click(Sender: TObject);
begin
  inherited;
 cxGridEgresosView.ViewData.Expand(True);

end;

procedure TFormLstPorCtroCosto.BitBtn4Click(Sender: TObject);
begin
  inherited;
  cxGridEgresosView.ViewData.Collapse(True);

end;

procedure TFormLstPorCtroCosto.BitBtn5Click(Sender: TObject);
begin
  inherited;
  cxGridIngresosView.ViewData.Expand(True);
end;

procedure TFormLstPorCtroCosto.BitBtn6Click(Sender: TObject);
begin
  inherited;
  cxGridIngresosView.ViewData.Collapse(True);
end;

procedure TFormLstPorCtroCosto.BitBtn9Click(Sender: TObject);
begin
  inherited;
   dxComponentPrinter1Link2.Preview();
end;

procedure TFormLstPorCtroCosto.btContraerClick(Sender: TObject);
begin
  inherited;
  cxGridComprasDBTableView1.ViewData.Collapse(True);

end;

procedure TFormLstPorCtroCosto.btExcelGastosClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSGastos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog1.FileName:='GastosCtroCosto';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        if VirtualUI.Active then
          cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid1)
        else
          cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      //cxDBPivotGrid1.OptionsView.FilterFields   :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormLstPorCtroCosto.BuscarExecute(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;

  CDSGastos.Close;
  CDSGastos.Params.ParamByName('desde').Value    := Desde.Date;
  CDSGastos.Params.ParamByName('hasta').Value    := Hasta.Date;
  CDSGastos.Params.ParamByName('ct').Value       := dbcCtro.KeyValue;
  CDSGastos.Params.ParamByName('Ingresos').Value := 0;
  CDSGastos.Params.ParamByName('Vtas').Value     := 0;
  CDSGastos.Params.ParamByName('Personal').Value := 0;
  if chIngresos.Checked then
    CDSGastos.Params.ParamByName('Ingresos').Value:=1;
  if chVtas.Checked then
    CDSGastos.Params.ParamByName('Vtas').Value    :=1;
  if chPersonal.Checked then
    CDSGastos.Params.ParamByName('Personal').Value:=1;
  CDSGastos.Open;

  // Egresos ..****************************
  CDSControlEgresos.Close;
  CDSControlEgresos.Params.ParamByName('desde').Value := Desde.Date;
  CDSControlEgresos.Params.ParamByName('hasta').Value := Hasta.Date;
  CDSControlEgresos.Open;

  CDSDetEgresos.Close;
  CDSDetEgresos.Params.ParamByName('iddesde').Value := CDSControlEgresosIDMIN.Value;// Desde.Date;
  CDSDetEgresos.Params.ParamByName('idhasta').Value := CDSControlEgresosIDMAX.Value;//.Date;
  CDSDetEgresos.Open;

  if Not(CDSControlEgresos.IsEmpty) then
    pagControlEgresos.ImageIndex:=10
  else
    pagControlEgresos.ImageIndex:=-1;

  // Ingresos ..****************************
  CDSControlIngresos.Close;
  CDSControlIngresos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlIngresos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlIngresos.Open;

  CDSDetIngresos.Close;
  CDSDetIngresos.Params.ParamByName('iddesde').Value := CDSControlIngresosIDMIN.Value;
  CDSDetIngresos.Params.ParamByName('idhasta').Value := CDSControlIngresosIDMAX.Value;
  CDSDetIngresos.Open;

  if Not(CDSControlIngresos.IsEmpty) then
    pagControlIngresos.ImageIndex:=10
  else
    pagControlIngresos.ImageIndex:=-1;
  // ***************************************

  // Compras ..****************************
  CDSFcCompra.Close;
  CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
  CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSFcCompra.Open;

  CDSDetFcCompra.Close;
  CDSDetFcCompra.Params.ParamByName('iddesde').Value:=CDSFcCompraidmin.Value;// Desde.Date;
  CDSDetFcCompra.Params.ParamByName('idhasta').Value:=CDSFcCompraidmax.Value;// Hasta.Date;
  CDSDetFcCompra.Open;

  if Not(CDSFcCompra.IsEmpty) then
    pagControlCompras.ImageIndex:=10
  else
    pagControlCompras.ImageIndex:=-1;
  // ***************************************

  // Vales/Adelantados ****************************
  CDSControlVales.Close;
  CDSControlVales.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlVales.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlVales.Open;

  if Not(CDSControlVales.IsEmpty) then
    pagControlPersonal.ImageIndex:=10
  else
    pagControlPersonal.ImageIndex:=-1;

  CDSDetPersonal.Close;
  CDSDetPersonal.Params.ParamByName('desde').Value:=Desde.Date;
  CDSDetPersonal.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSDetPersonal.Open;

// Banco ****************************
  CDSControlGstoBco.Close;
  CDSControlGstoBco.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlGstoBco.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlGstoBco.Open;

  if Not(CDSControlGstoBco.IsEmpty) then
    pagGstoBanco.ImageIndex:=10
  else
    pagGstoBanco.ImageIndex:=-1;

  CDSDetGstoBco.Close;
  CDSDetGstoBco.Params.ParamByName('desde').Value:=Desde.Date;
  CDSDetGstoBco.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSDetGstoBco.Open;

  // ***************************************

  CDSGastos_2.Close;
  CDSGastos_2.Params.ParamByName('desde').Value:=Desde.Date;
  CDSGastos_2.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSGastos_2.Params.ParamByName('ct').Value   :=dbcCtro.KeyValue;
  CDSGastos_2.Params.ParamByName('Ingresos').Value:=0;
  CDSGastos_2.Params.ParamByName('Vtas').Value    :=0;
  CDSGastos.Params.ParamByName('Personal').Value:=0;
  if chIngresos.Checked then
    CDSGastos_2.Params.ParamByName('Ingresos').Value:=1;
  if chVtas.Checked then
    CDSGastos_2.Params.ParamByName('Vtas').Value    :=1;
  if chPersonal.Checked then
    CDSGastos_2.Params.ParamByName('Personal').Value:=1;
  CDSGastos_2.Open;

  CDSGastos.IndexFieldNames:='';
  CDSGastos.IndexFieldNames:='TIPO;CTROCOSTO;RUBRO;SUBRUBRO;FECHA';

  CDSGastos_2.IndexFieldNames:='';
  CDSGastos_2.IndexFieldNames:='TIPO;CTROCOSTO;RUBRO;SUBRUBRO;FECHA';

  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    begin
      cxDBPivotGrid1.Fields[i].ExpandAll;
    end;

  for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
    begin
      cxDBPivotGrid2.Fields[i].ExpandAll;
    end;

  Sumar;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;

  TcxComboBoxProperties(cxGridComprasDBTableView2CTRO_COSTO.Properties).Items.Clear;
  TcxComboBoxProperties(cxGridDetEgresosViewCTRO_COSTO.Properties).Items.Clear;
  TcxComboBoxProperties(cxGridDetIngresosViewCTRO_COSTO.Properties).Items.Clear;
  TcxComboBoxProperties(cxGridValesDBTableView2CTRO_COSTO.Properties).Items.Clear;

  with QCtroCosto do
   begin
     DisableControls;
     First;
     while not Eof do
     begin
       TcxComboBoxProperties(cxGridComprasDBTableView2CTRO_COSTO.Properties).Items.Add(FieldByName('ID').AsString);
       TcxComboBoxProperties(cxGridDetEgresosViewCTRO_COSTO.Properties).Items.Add(FieldByName('ID').AsString);
       TcxComboBoxProperties(cxGridDetIngresosViewCTRO_COSTO.Properties).Items.Add(FieldByName('ID').AsString);
       TcxComboBoxProperties(cxGridValesDBTableView2CTRO_COSTO.Properties).Items.Add(FieldByName('ID').AsString);
       Next;
     end;
     First;
     EnableControls;
   end;

  Screen.Cursor:=crDefault;

{

********************************************************************************
procedure TForm1.cxGrid1DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  ADataController.CollapseDetails;
end;

procedure TForm1.cxGrid1DBTableView1DataControllerDetailExpanded(
  ADataController: TcxCustomDataController; ARecordIndex: Integer);
var
  ASite: TcxGridSite;
  AChart: TChart;
  ASeries: TBarSeries;
begin
  ASite := TcxGridDataController(ADataController.GetDetailDataController(ARecordIndex, 0)).GridView.Site;
  AChart := TChart.Create(ASite);
  ASeries := TBarSeries.Create(AChart);
  ASeries.FillSampleValues(20);
  AChart.AddSeries(ASeries);
  AChart.Parent := ASite;
  AChart.Align := alClient;
end;
*******************************************************************************


procedure TUnboundModeDemoMainForm.CustomizeColumns;
const
  cDistance = 3;
  cPeriod = 4;
  cRadius = 7;
  cImageIndex = 8;
var
  I: Integer;
begin
  with tlPlanets do
  for I := 0 to ColumnCount - 1 do
    if I in [cDistance, cRadius, cImageIndex] then
      Columns[I].DataBinding.ValueTypeClass := TcxIntegerValueType
    else
      if I in [cPeriod] then
      Columns[I].DataBinding.ValueTypeClass := TcxFloatValueType
      else
       Columns[I].DataBinding.ValueTypeClass := TcxStringValueType;
end;

procedure TUnboundModeDemoMainForm.LoadData;
const
  AFileName = 'nineplanets.txt';
  AHeaderLineCount = 2;
  AParentKeyField = 2;
  AKeyField = 0;
  AImageField = 8;

var
  ARecords, AValues: TStringList;
  I: Integer;

  function AddNode(AParentNode: TcxTreeListNode;
    const ARecord: string): TcxTreeListNode;
  var
    S1: string;
    J: Integer;
    V: Variant;
  begin
    Result := AParentNode.AddChild;
    AValues.CommaText := ARecord;
    for J := 0 to AValues.Count - 1 do
      if AValues.Strings[J] <> '-' then
      begin
        S1 := AValues.Strings[J];
        if Pos('.', S1) <> 0 then
          S1[Pos('.', S1)] := DecimalSeparator;
        V := S1;
        if not VarIsNull(V) then
          Result.Values[J] := V;
      end;
    Result.ImageIndex :=  Result.Values[AImageField];
    Result.SelectedIndex := Result.Values[AImageField];
  end;

  procedure AddNodes(AParentNode: TcxTreeListNode;
     const AParentKeyValue: string);
     function GetFieldValue(ARecord: string; AFieldIndex: Integer): string;
     begin
       AValues.CommaText := ARecord;
       Result := AValues.Strings[AFieldIndex];
     end;
  var
    J: Integer;
    ANode: TcxTreeListNode;
  begin
    for J := 0 to ARecords.Count - 1 do
      if GetFieldValue(ARecords.Strings[J], AParentKeyField) = AParentKeyValue then
      begin
        ANode := AddNode(AParentNode, ARecords.Strings[J]);
        AddNodes(ANode, GetFieldValue(ARecords.Strings[J], AKeyField));
      end;
  end;

begin
  if not FileExists(AFileName) then
    raise Exception.Create('Data file not found');

  ARecords := TStringList.Create;
  AValues := TStringList.Create;

  tlPlanets.BeginUpdate;
  with ARecords do
    try
      LoadFromFile(AFileName);
      for I := 0 to AHeaderLineCount - 1 do
        Delete(0);
      AddNodes(tlPlanets.Root, '-');
    finally
      tlPlanets.EndUpdate;
      ARecords.Free;
      AValues.Free;
    end;
end;

procedure TUnboundModeDemoMainForm.FormCreate(Sender: TObject);
begin
  inherited;
  CustomizeColumns;
  LoadData;
  tlPlanets.FullCollapse;
  tlPlanets.Root[0].Expanded := True;

end;


procedure TUnboundModeDemoMainForm.tlPlanetsDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  //
end;

procedure TUnboundModeDemoMainForm.miDropNodeIndicatorClick(
  Sender: TObject);
begin
  tlPlanets.OptionsView.DropNodeIndicator := TMenuItem(Sender).Checked;
end;

end.
}
end;


procedure TFormLstPorCtroCosto.btExpandClick(Sender: TObject);
begin
 // ExpandViewGroups( cxGrid2DBTableView1,0);
//  ExpandViewGroups( cxGrid2DBTableView1,1);
//
//  ExpandViewGroups( cxGrid2DBTableView2,0);
//  ExpandViewGroups( cxGrid2DBTableView2,1);

  case pcDatos.ActivePageIndex of
    4:cxGridComprasDBTableView1.ViewData.Expand(True);
    5:cxGridDetEgresosView.ViewData.Expand(True);
    6:cxGridDetIngresosView.ViewData.Expand(True);
    7:cxGridValesDBTableView1.ViewData.Expand(True);

  end;

end;

procedure TFormLstPorCtroCosto.CDSCtroCostoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgCentroCosto.Width:=dbgCentroCosto.Width-1;
  dbgCentroCosto.Width:=dbgCentroCosto.Width+1;
end;

procedure TFormLstPorCtroCosto.CDSDetEgresosAfterPost(DataSet: TDataSet);
begin
  inherited;
  if CDSDetEgresosID_APPCOSTO.Value>0 then
    begin
      QModificaMovCtrCosto.Close;
      QModificaMovCtrCosto.ParamByName('imputado').Value   := CDSDetEgresosIMPUTADO.AsFloat;
      QModificaMovCtrCosto.ParamByName('porcentaje').Value := CDSDetEgresosPORCENTAJE.AsFloat;
      QModificaMovCtrCosto.ParamByName('ctrocosto').Value  := CDSDetEgresosCTRO_COSTO.AsInteger;
      QModificaMovCtrCosto.ParamByName('id').Value         := CDSDetEgresosID_APPCOSTO.Value;
      QModificaMovCtrCosto.ExecSQL;
      QModificaMovCtrCosto.Close;
    end;
end;

procedure TFormLstPorCtroCosto.CDSDetEgresosCTRO_COSTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSDetEgresos.State<>dsBrowse then CDSDetEgresos.Post;

end;

procedure TFormLstPorCtroCosto.CDSDetEgresosIMPUTADOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text='' Then Sender.AsString:='0'
  else
  Sender.AsString:=Text;
  if CDSDetEgresosIMPUTADO.ASFLoat>CDSDetEgresosDETIMPORTE.ASFloat then
    CDSDetEgresosIMPUTADO.ASFLoat:=CDSDetEgresosDETIMPORTE.ASFloat;
  if CDSDetEgresosIMPUTADO.ASFLoat<0 then
    CDSDetEgresosIMPUTADO.ASFLoat:=0;

  CDSDetEgresosPORCENTAJE.ASFloat:=(CDSDetEgresosIMPUTADO.AsFloat/CDSDetEgresosDETIMPORTE.ASFloat)*100;
  if CDSDetEgresos.State<>dsBrowse then CDSDetEgresos.Post;

end;

procedure TFormLstPorCtroCosto.CDSDetEgresosPORCENTAJESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.Asfloat>100 then Sender.ASFloat:=100;
  if Sender.Asfloat<0 then Sender.ASFloat:=0;
  CDSDetEgresosIMPUTADO.AsFloat:=CDSDetEgresosDETIMPORTE.AsFloat*(Sender.ASFloat*0.01);
  if CDSDetEgresos.State<>dsBrowse then CDSDetEgresos.Post;

end;

procedure TFormLstPorCtroCosto.CDSDetFcCompraAfterPost(DataSet: TDataSet);
begin
  if CDSDetFcCompraID_APPCOSTO.Value>0 then
    begin
      QModificaMovCtrCosto.Close;
      QModificaMovCtrCosto.ParamByName('imputado').Value   := CDSDetFcCompraIMPUTADO.AsFloat;
      QModificaMovCtrCosto.ParamByName('porcentaje').Value := CDSDetFcCompraPORCENTAJE.AsFloat;
      QModificaMovCtrCosto.ParamByName('ctrocosto').Value  := CDSDetFcCompraCTRO_COSTO.AsInteger;
      QModificaMovCtrCosto.ParamByName('id').Value         := CDSDetFcCompraID_APPCOSTO.Value;
      QModificaMovCtrCosto.ExecSQL;
      QModificaMovCtrCosto.Close;
    end;
end;

procedure TFormLstPorCtroCosto.CDSDetFcCompraCTRO_COSTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSDetFcCompra.State<>dsBrowse then
    CDSDetFcCompra.Post;
end;

procedure TFormLstPorCtroCosto.CDSDetFcCompraIMPUTADOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text='' Then Sender.AsString:='0'
  else
  Sender.AsString:=Text;
  if CDSDetFcCompraIMPUTADO.ASFLoat>CDSDetFcCompraDETIMPORTE.ASFloat then
    CDSDetFcCompraIMPUTADO.ASFLoat:=CDSDetFcCompraDETIMPORTE.ASFloat;
  if CDSDetFcCompraIMPUTADO.ASFLoat<0 then
    CDSDetFcCompraIMPUTADO.ASFLoat:=0;

  CDSDetFcCompraPORCENTAJE.ASFloat:=(CDSDetFcCompraIMPUTADO.AsFloat/CDSDetFcCompraDETIMPORTE.ASFloat)*100;
  if CDSDetFcCompra.State<>dsBrowse then CDSDetFcCompra.Post;

end;

procedure TFormLstPorCtroCosto.CDSDetFcCompraPORCENTAJESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Sender.Asfloat>100 then Sender.ASFloat:=100;
  if Sender.Asfloat<0 then Sender.ASFloat:=0;
  CDSDetFcCompraIMPUTADO.AsFloat:=CDSDetFcCompraDETIMPORTE.AsFloat*(Sender.ASFloat*0.01);
  if CDSDetFcCompra.State<>dsBrowse then CDSDetFcCompra.Post;

end;

procedure TFormLstPorCtroCosto.CDSDetIngresosAfterPost(DataSet: TDataSet);
begin
  inherited;
  QModificaMovCtrCosto.Close;
  QModificaMovCtrCosto.ParamByName('imputado').Value   := CDSDetIngresosIMPUTADO.AsFloat;
  QModificaMovCtrCosto.ParamByName('porcentaje').Value := CDSDetIngresosPORCENTAJE.AsFloat;
  QModificaMovCtrCosto.ParamByName('ctrocosto').Value  := CDSDetIngresosCTRO_COSTO.AsInteger;
  QModificaMovCtrCosto.ParamByName('id').Value         := CDSDetIngresosID_APPCOSTO.Value;
  QModificaMovCtrCosto.ExecSQL;
  QModificaMovCtrCosto.Close;
end;

procedure TFormLstPorCtroCosto.CDSFcCompraAfterScroll(DataSet: TDataSet);
begin
  inherited;
//  CDSDetFcCompra.Close;
//  CDSDetFcCompra.Params.ParamByName('id').Value:= CDSFcCompraID_FC.Value;
//  CDSDetFcCompra.Open;

end;

procedure TFormLstPorCtroCosto.CDSGastosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSGastosTIPO.Value='I' then
    CDSGastosTIPODETALLE.Value:='0-INGRESOS'
  else
    if CDSGastosTIPO.Value='E' then
      CDSGastosTIPODETALLE.Value:='1-EGRESOS';

//  if CDSGastosTIPO.Value='I' then
//    CDSGastosSALDOCALCULADO.AsFloat:=CDSGastosHABER.AsFloat
//  else
//    if CDSGastosTIPO.Value='E' then
//      CDSGastosSALDOCALCULADO.AsFloat:=CDSGastosDEBE.AsFloat*-1;
//
//  if (CDSGastosTIPOCPBTE.Value='NC') and (CDSGastosTIPO.Value='I')  then
//      CDSGastosSALDOCALCULADO.AsFloat:=CDSGastosHABER.AsFloat*-1
//  else
//    if (CDSGastosTIPOCPBTE.Value='NC') and (CDSGastosTIPO.Value='E')  then
//        CDSGastosSALDOCALCULADO.AsFloat:=CDSGastosDEBE.AsFloat*-1;

  CDSGastosSALDOCALCULADO.AsFloat:=CDSGastosDEBE.Value-CDSGastosHABER.Value;



  CDSGastosMES.Value:= FormatDateTime('mmm', CDSGastosFECHA.AsDateTime);
  CDSGastosSaldoDH.Value:=CDSGastosDEBE.Value-CDSGastosHABER.Value;
end;

procedure TFormLstPorCtroCosto.CDSGastos_2CalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSGastos_2TIPO.Value='I' then
    CDSGastos_2TIPODETALLE.Value:='0-INGRESOS'
  else
    if CDSGastos_2TIPO.Value='E' then
      CDSGastos_2TIPODETALLE.Value:='1-EGRESOS';

  if CDSGastos_2TIPO.Value='I' then
    CDSGastos_2SALDOCALCULADO.AsFloat:=CDSGastos_2IMP_HABER.AsFloat
  else
    if CDSGastos_2TIPO.Value='E' then
      CDSGastos_2SALDOCALCULADO.AsFloat:=CDSGastos_2IMP_DEBE.AsFloat*-1;

  if (CDSGastos_2TIPOCPBTE.Value='NC') and (CDSGastos_2TIPO.Value='I')  then
      CDSGastos_2SALDOCALCULADO.AsFloat:=CDSGastos_2IMP_DEBE.AsFloat*-1;

  if (CDSGastos_2TIPOCPBTE.Value='NC') and (CDSGastos_2TIPO.Value='E')  then
      CDSGastos_2SALDOCALCULADO.AsFloat:=CDSGastos_2IMP_DEBE.AsFloat*-1;

  CDSGastos_2SALDODEBEHABER.Value:=CDSGastos_2IMP_DEBE.Value-CDSGastos_2IMP_HABER.Value;

end;

procedure TFormLstPorCtroCosto.chAgrupaCtroClick(Sender: TObject);
begin
  inherited;
  cxGrid2DBTableView1DETALLE.Options.CellMerging :=chAgrupaCtro.Checked;

end;

procedure TFormLstPorCtroCosto.chAgrupaTipoClick(Sender: TObject);
begin
  inherited;
  cxGrid2DBTableView1TIPODETALLE.Options.CellMerging :=chAgrupaTipo.Checked;
end;

procedure TFormLstPorCtroCosto.chbGrupoClick(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=chbGrupo.Checked;
end;

procedure TFormLstPorCtroCosto.chOpSumas_2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.ColumnGrandTotals := chOpSumas_2.Checked[0];
  cxDBPivotGrid2.OptionsView.ColumnTotals      := chOpSumas_2.Checked[1];
  cxDBPivotGrid2.OptionsView.RowGrandTotals    := chOpSumas_2.Checked[2];
  cxDBPivotGrid2.OptionsView.RowTotals         := chOpSumas_2.Checked[3];
end;

procedure TFormLstPorCtroCosto.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormLstPorCtroCosto.ContraerTodolosItems1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.DataController.Groups.FullCollapse;
end;

//procedure TFormLstPorCtroCosto.cxGridDBTableView1CustomDrawCell(
//  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
//  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
//begin
//  inherited;
//   begin
//      if (CDSControlFcCompraTOTALAPLICADO.AsFloat<CDSControlFcCompraTOTALNETO.AsFloat) then
//        ACanvas.Canvas.Font.Color := clRed;
//      else
//      if val = 'SALOON' then
//        ACanvas.Canvas.Font.Color := clBlue
//      else
//      if val = 'TRUCK' then
//        ACanvas.Canvas.Font.Color := clGreen;
//      ACanvas.Canvas.FillRect(ARec);
//    end;
//end;

//procedure TFormLstPorCtroCosto.cxGridDBTableView1CustomDrawCell(
//  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
//  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
//var
//  ARec: TRect;
//  ATextToDraw: String;
//begin
//  inherited;
//  ATextToDraw := AViewInfo.Text;
//  ARec        := AViewInfo.Bounds;
//
//  if (CDSControlFcCompraTOTALAPLICADO.AsFloat<CDSControlFcCompraTOTALNETO.AsFloat) then
//    ACanvas.Canvas.Font.Color := clRed
//  else
//    ACanvas.Canvas.Font.Color := clBlue;
//  ACanvas.Canvas.FillRect(ARec);
//
//end;

//procedure TFormLstPorCtroCosto.cxGridDBTableView1CustomDrawGroupCell(
//  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
//  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
//var
//  ARec: TRect;
//  ATextToDraw: String;
//begin
//  inherited;
//  ATextToDraw := AViewInfo.Text;
//  ARec        := AViewInfo.Bounds;
//
//  if (CDSControlFcCompraTOTALAPLICADO.AsFloat<CDSControlFcCompraTOTALNETO.AsFloat) then
//    ACanvas.Canvas.Font.Color := clRed
//  else
//    ACanvas.Canvas.Font.Color := clBlue;
//  ACanvas.Canvas.FillRect(ARec);
//end;

{
procedure TCustomDrawTableViewDemoMainForm.tvCarsCustomDrawGroupCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableCellViewInfo; var ADone: Boolean);
var
  ARec: TRect;
  ATextToDraw: String;
  AIsVertical: Boolean;
begin
  ATextToDraw := AViewInfo.Text;
  ARec := AViewInfo.Bounds;
  ACanvas.Canvas.Font.Assign(FFonts[Integer(vtMaster), Integer(cdaGroupCell)]);
  case FCustomDrawingStyle[Integer(vtMaster), Integer(cdaGroupCell)] of
    cdsBkImage:
    begin
      ACanvas.Brush.Bitmap := nil;
      ACanvas.Brush.Assign(FGridBrushMasterGroupCell);
      ACanvas.FillRect(ARec);
      ACanvas.Brush.Bitmap := nil;
    end;
    cdsGradient:
    begin
      AIsVertical := (FColorScheme[Integer(vtMaster), Integer(cdaGroupCell)] = csGrey) or (FColorScheme[Integer(vtMaster), Integer(cdaGroupCell)] = csGold);
      DrawGradient(ACanvas.Canvas, ARec, ColorScheme[Integer(FColorScheme[Integer(vtMaster), Integer(cdaGroupCell)]), 1], ColorScheme[Integer(FColorScheme[Integer(vtMaster), Integer(cdaGroupCell)]), 0], 40, AIsVertical)
    end;
  end;

  ADone := not (FCustomDrawingStyle[Integer(vtMaster), Integer(cdaGroupCell)] in [cdsDefaultDrawing]);
  if ADone then
  begin
    SetBkMode(ACanvas.Canvas.Handle, TRANSPARENT);
    ARec.Left := ARec.Left + (AViewInfo.RecordViewInfo.ExpandButtonBounds.Right - AViewInfo.RecordViewInfo.ExpandButtonBounds.Left) + 10;
    ARec.Top := ARec.Top + cxGridCellTextOffset;
    ACanvas.DrawText(ATextToDraw, ARec, 0);
  end;
end;

}

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  A := AViewInfo.GridRecord.Values[6];
  if Not(VarIsNull(AViewInfo.GridRecord.Values[7])) then
    B := AViewInfo.GridRecord.Values[7]
  else B:=0;

  A:= Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 6);

  if VarIsNull(Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 7)) Then
    b:=0
  else
    b:= Sender.DataController.GetValue(AViewInfo.GridRecord.RecordIndex, 7);


  if AViewInfo.Selected then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clBlue;
    end
  else
    begin
      if CompareValue(A,B,0.1)= EqualsValue then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
     else
       if CompareValue(A,B,0)= LessThanValue then
         begin
           ACanvas.Brush.Color:= clRed;
           ACanvas.Font.Color := clBlue;
         end;
    end;
end;

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  IF (CDSFcCompraTIPOCPBTE.AsString='FC') or
     (CDSFcCompraTIPOCPBTE.AsString='NC') or
     (CDSFcCompraTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2        := TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  := CDSFcCompraID_FC.AsString;
      FormCompra_2.TipoCpbte:= CDSFcCompraTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
      FormCompra_2.BringToFront;
    END;
end;

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  DetailDataController: TCxDataController;
begin
  inherited;
  CDSDetFcCompra.Filtered := False;
  CDSDetFcCompra.Filter   := 'ID_FC='+CDSFcCompraID_FC.AsString;
  CDSDetFcCompra.Filtered := True;
  if cxGridComprasDBTableView2.DataController.DataSource.DataSet.RecordCount>1 then
    cxGridComprasDBTableView2.DataController.DataSource.DataSet.First;
  while (CDSDetFcCompraCTRO_COSTO.AsString='') and (Not(CDSDetFcCompra.Eof)) do
    BEGIN
      CDSDetFcCompra.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetFcCompraCTRO_COSTO.AsInteger := FieldByName('id').AsInteger;
          CDSDetFcCompraDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetFcCompraIMPUTADO.AsFloat     := CDSDetFcCompraDETIMPORTE.AsFloat;
          CDSDetFcCompraPORCENTAJE.AsFloat   := 100;
          CDSDetFcCompra.Post;

          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := CDSDetFcCompraID_FC.AsInteger;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := CDSDetFcCompraTIPOCPBTE.AsString;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetFcCompraCTRO_COSTO.Value;
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := CDSDetFcCompraDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value           := CDSDetFcCompraDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetFcCompraCODIGOARTICULO.Value;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetFcCompraDETALLE_STK.Value;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetFcCompraDETIMPORTE.Value;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
      CDSDetFcCompra.Next;
    END;
  CDSFcCompra.Edit;
  CDSFcCompraTOTALAPLICADO.Value:=CDSFcCompraTOTALNETO.Value;
  CDSFcCompra.Post;
  //cxGridComprasDBTableView1.DataController.Refresh;
  CDSDetFcCompra.Filtered := False;
end;

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
 var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridComprasDBTableView1.Controller.FocusedRowIndex := ARowIndex ;
        if Abs(CDSFcCompraTOTALNETO.Value-CDSFcCompraTOTALAPLICADO.Value)<=0 Then Accept:=False;
      end;
  end;
end;

procedure TFormLstPorCtroCosto.cxGridEgresosViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  A := AViewInfo.GridRecord.Values[4];
  if Not(VarIsNull(AViewInfo.GridRecord.Values[5])) then
    B := AViewInfo.GridRecord.Values[5]
  else B:=0;

  if AViewInfo.Selected then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clBlue;
    end
  else
    begin
      if CompareValue(A,B,0.1)= EqualsValue then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
     else
       if CompareValue(A,B,0)= LessThanValue then
         begin
           ACanvas.Brush.Color:= clRed;
           ACanvas.Font.Color := clBlue;
         end;
    end;
end;

procedure TFormLstPorCtroCosto.cxGridEgresosDBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
 if chAutoContraer.Checked then
    ADataController.CollapseDetails;
end;

procedure TFormLstPorCtroCosto.cxGridEgresosViewDblClick(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEgresoCaja)) then
    FormEgresoCaja :=TFormEgresoCaja.Create(self);
  FormEgresoCaja.DatoNew   := CDSControlEgresosID_EGRESO.AsString;
  FormEgresoCaja.TipoCpbte := CDSControlEgresosTIPOCPBTE.Value;
  FormEgresoCaja.Recuperar.Execute;
  FormEgresoCaja.Show;
  FormEgresoCaja.BringToFront;

end;

procedure TFormLstPorCtroCosto.cxGridEgresosViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  CantReg:Integer;
  i,ColNdx: Integer;
  ColValue:String;
  Aux:Variant;
 // DataItem:Tdb

  DetailDataController: TCxDataController;

begin
  inherited;

   DetailDataController :=
      TcxDataController(cxGridEgresosView.DataController.GetDetailDataController(
         cxGridEgresosView.Controller.SelectedRows[i].Index, 0));

  for i:=0 to DetailDataController.RecordCount-1  do
    BEGIN
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          ColNdx:=cxGridDetEgresosViewCTRO_COSTO.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('id').AsInteger);

          ColNdx:=cxGridDetEgresosViewDESCRIPCION.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('Descripcion').AsString);

          ColNdx:=cxGridDetEgresosViewIMPUTADO.Index;
          DetailDataController.SetValue(i,ColNdx,DetailDataController.GetValue(i,8));

          ColNdx:=cxGridDetEgresosViewPORCENTAJE.Index;
          DetailDataController.SetValue(i,ColNdx,'100');

          QInsertarMovCtrCosto.Close;

          ColNdx:=cxGridDetEgresosViewID_EGRESO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetEgresosViewTIPOCPBTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetEgresosViewCTRO_COSTO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := FieldByName('id').AsInteger;

          ColNdx:=cxGridDetEgresosViewDETIMPORTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := DetailDataController.Values[i,ColNdx];
          QInsertarMovCtrCosto.ParamByName('total').Value           := DetailDataController.Values[i,ColNdx];

          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';

          ColNdx:=cxGridDetEgresosViewCODIGOGASTO.Index;
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetEgresosViewDETALLE.Index;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetEgresosViewDETIMPORTE.Index;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := DetailDataController.Values[i,ColNdx];;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;

    END;
  CDSControlEgresos.Edit;
  CDSControlEgresosTOTALAPLICADO.Value := CDSControlEgresosIMPORTE.Value;
  CDSControlEgresos.Post;

    // Egresos ..****************************
  CDSControlEgresos.Close;
  CDSControlEgresos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlEgresos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlEgresos.Open;

  CDSDetEgresos.Close;
  CDSDetEgresos.Params.ParamByName('iddesde').Value:=CDSControlEgresosIDMIN.Value;// Desde.Date;
  CDSDetEgresos.Params.ParamByName('idhasta').Value:=CDSControlEgresosIDMAX.Value;//.Date;
  CDSDetEgresos.Open;

end;
{
//  CDSDetEgresos.Filtered := False;
//  CDSDetEgresos.Filter   := 'ID_CPBTE = '+ CDSControlEgresosID_EGRESO.AsString;
//  CDSDetEgresos.Filtered := True;
//  CDSDetEgresos.First;

  for i:=0 to DetailDataController.RecordCount-1 do

  while (CDSDetEgresosCTRO_COSTO.AsString='') and (Not(CDSDetEgresos.Eof)) do
    BEGIN
      CDSDetEgresos.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetEgresosCTRO_COSTO.AsInteger := FieldByName('id').AsInteger;
          CDSDetEgresosDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetEgresosIMPUTADO.AsFloat     := CDSDetEgresosDETIMPORTE.AsFloat;
          CDSDetEgresosPORCENTAJE.AsFloat   := 100;
          CDSDetEgresos.Post;

          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := CDSDetEgresosID_EGRESO.AsInteger;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := CDSDetEgresosTIPOCPBTE.AsString;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetEgresosCTRO_COSTO.Value;
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := CDSDetEgresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value           := CDSDetEgresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetEgresosCODIGOGASTO.Value;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetEgresosDETALLE.Value;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetEgresosDETIMPORTE.Value;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
      CDSDetEgresos.Next;
    END;
  CDSControlEgresos.Edit;
  CDSControlEgresosTOTALAPLICADO.Value := CDSControlEgresosIMPORTE.Value;
  CDSControlEgresos.Post;
  //cxGridComprasDBTableView1.DataController.Refresh;
//  if CDSDetEgresos.Active then
  CDSDetEgresos.Filter := '';
}
procedure TFormLstPorCtroCosto.cxGridEgresosViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridEgresosView.Controller.FocusedRowIndex := ARowIndex ;
        if Abs(CDSControlEgresosIMPORTE.Value-CDSControlEgresosTOTALAPLICADO.Value)<=0 Then Accept:=False;
      end;
  end;
end;

procedure TFormLstPorCtroCosto.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormLstPorCtroCosto.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormLstPorCtroCosto.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormLstPorCtroCosto.cxDBPivotGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid2).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormLstPorCtroCosto.cxDBPivotGrid2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormLstPorCtroCosto.cxDBPivotGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid2.FieldCount-1 do
        cxDBPivotGrid2.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormLstPorCtroCosto.cxGrid2DBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  if chAutoContraer.Checked then
    ADataController.CollapseDetails;
end;


procedure TFormLstPorCtroCosto.cxGridDetEgresosViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if CDSDetEgresosCTRO_COSTO.AsString='' then
    BEGIN
      CDSDetEgresos.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetEgresosCTRO_COSTO.AsInteger := FieldByName('id').AsInteger;
          CDSDetEgresosDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetEgresosIMPUTADO.AsFloat     := CDSDetEgresosDETIMPORTE.AsFloat;
          CDSDetEgresosPORCENTAJE.AsFloat   := 100;
          CDSDetEgresos.Post;
          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger      := CDSDetEgresosID_EGRESO.AsInteger;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString      := CDSDetEgresosTIPOCPBTE.AsString;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').AsInteger    := CDSDetEgresosCTRO_COSTO.AsInteger;
          QInsertarMovCtrCosto.ParamByName('imputado').Value          := CDSDetEgresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value             := CDSDetEgresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value        := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').AsString           := 'E';
          QInsertarMovCtrCosto.ParamByName('concepto').AsString       := CDSDetEgresosCODIGOGASTO.AsString;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').AsString := CDSDetEgresosDESCRIPCION.AsString;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').AsFloat   := CDSDetEgresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value  := 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
    END;
end;

procedure TFormLstPorCtroCosto.cxGridDetEgresosViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  inherited;
  if (Source is TDBGrid ) then
    Accept:=True
  else
    Accept:=False;

 Accept:=False;

  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridDetEgresosView.Controller.FocusedRowIndex := ARowIndex ;
      end;
  end;

end;

procedure TFormLstPorCtroCosto.cxGridDetEgresosViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if Key=vk_Delete then
    begin
      QBorrarMovCtrCosto.Close;
      QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetEgresosID_APPCOSTO.Value;
      QBorrarMovCtrCosto.ExecSQL;
      QBorrarMovCtrCosto.Close;

      CDSDetEgresos.Edit;
      CDSDetEgresosCTRO_COSTO.Clear;
      CDSDetEgresosDESCRIPCION.Clear;
      CDSDetEgresosIMPUTADO.Clear;
      CDSDetEgresosPORCENTAJE.Clear;
      CDSDetEgresos.Post;
    end
  else
    if Key=vk_Insert then
      begin
        Key:=0;
        QInsertarMovCtrCosto.Close;
        QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetEgresosID_EGRESO.Value;
        QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetEgresosTIPOCPBTE.Value;
        if CDSDetFcCompraCTRO_COSTO.Value>0 then
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetEgresosCTRO_COSTO.Value
        else
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := 1;

        QInsertarMovCtrCosto.ParamByName('imputado').Value        := 0;
        QInsertarMovCtrCosto.ParamByName('total').Value           := 0;
        QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 0;
        QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
        QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetEgresosCODIGOGASTO.Value;
        QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetEgresosDETALLE.Value;
        QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetEgresosDETIMPORTE.AsFloat;
        QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 0;
        QInsertarMovCtrCosto.ExecSQL;
        QInsertarMovCtrCosto.Close;

      end
    else
      if (Key=VK_BACK) then
        begin
 //         QBorrarMovCtrCosto.Close;
//          QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetFcCompraID_APPCOSTO.Value;
//          QBorrarMovCtrCosto.ExecSQL;
//          QBorrarMovCtrCosto.Close;
//
//          CDSFcCompra.Close;
//          CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSFcCompra.Open;
//
//          CDSDetFcCompra.Close;
//          CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSDetFcCompra.Open;
        end;
      Key:=0;

end;

procedure TFormLstPorCtroCosto.cxGridDetGastosBcoViewKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if Key=vk_Delete then
    begin
      QBorrarMovCtrCosto.Close;
      QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetGstoBcoID_APPCOSTO.Value;
      QBorrarMovCtrCosto.ExecSQL;
      QBorrarMovCtrCosto.Close;

      CDSDetGstoBco.Edit;
      CDSDetGstoBcoCTRO_COSTO.Clear;
      CDSDetGstoBcoDESCRIPCION.Clear;
      CDSDetGstoBcoIMPUTADO.Clear;
      CDSDetGstoBcoPORCENTAJE.Clear;
      CDSDetGstoBco.Post;
    end
  else
    if Key=vk_Insert then
      begin
        Key:=0;
        QInsertarMovCtrCosto.Close;
        QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetGstoBcoID.Value;
        QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetGstoBcoTIPOCPBTE.Value;
        if CDSDetPersonalCTRO_COSTO.Value>0 then
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetGstoBcoCTRO_COSTO.Value
        else
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := 1;

        QInsertarMovCtrCosto.ParamByName('imputado').Value        := 0;
        QInsertarMovCtrCosto.ParamByName('total').Value           := 0;
        QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 0;
        QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
        QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetGstoBcoCODIGO_CONCEPTO.Value;
        QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetGstoBcoDETALLE.Value;
        QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetGstoBcoDETIMPORTE.AsFloat;
        QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 0;
        QInsertarMovCtrCosto.ExecSQL;
        QInsertarMovCtrCosto.Close;

      end
    else
      if (Key=VK_BACK) then
        begin
 //         QBorrarMovCtrCosto.Close;
//          QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetFcCompraID_APPCOSTO.Value;
//          QBorrarMovCtrCosto.ExecSQL;
//          QBorrarMovCtrCosto.Close;
//
//          CDSFcCompra.Close;
//          CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSFcCompra.Open;
//
//          CDSDetFcCompra.Close;
//          CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSDetFcCompra.Open;
        end;
      Key:=0;

end;

procedure TFormLstPorCtroCosto.cxGridIngresosViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  A := AViewInfo.GridRecord.Values[4];
  if Not(VarIsNull(AViewInfo.GridRecord.Values[5])) then
    B := AViewInfo.GridRecord.Values[5]
  else B:=0;

  if AViewInfo.Selected then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clBlue;
    end
  else
    begin
      if CompareValue(A,B,0.1)= EqualsValue then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
     else
       if CompareValue(A,B,0)= LessThanValue then
         begin
           ACanvas.Brush.Color:= clRed;
           ACanvas.Font.Color := clBlue;
         end;
    end;
end;

procedure TFormLstPorCtroCosto.cxGridIngresosViewDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormIngresoCaja)) then
    FormIngresoCaja :=TFormIngresoCaja.Create(self);
  FormIngresoCaja.DatoNew   := CDSControlIngresosID_INGRESO.AsString;
  FormIngresoCaja.TipoCpbte := CDSControlIngresosTIPOCPBTE.Value;
  FormIngresoCaja.Recuperar.Execute;
  FormIngresoCaja.Show;
  FormIngresoCaja.BringToFront;
end;

procedure TFormLstPorCtroCosto.cxGridIngresosViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  CantReg:Integer;
  i,ColNdx: Integer;
  ColValue:String;
  Aux:Variant;
 // DataItem:Tdb

  DetailDataController: TCxDataController;

begin
  inherited;

   DetailDataController :=
      TcxDataController(cxGridIngresosView.DataController.GetDetailDataController(
         cxGridIngresosView.Controller.SelectedRows[i].Index, 0));

  for i:=0 to DetailDataController.RecordCount-1  do
    BEGIN
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          ColNdx:=cxGridDetIngresosViewCTRO_COSTO.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('id').AsInteger);

          ColNdx:=cxGridDetIngresosViewDESCRIPCION.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('Descripcion').AsString);

          ColNdx:=cxGridDetIngresosViewIMPUTADO.Index;
          DetailDataController.SetValue(i,ColNdx,DetailDataController.GetValue(i,8));

          ColNdx:=cxGridDetIngresosViewPORCENTAJE.Index;
          DetailDataController.SetValue(i,ColNdx,'100');

          QInsertarMovCtrCosto.Close;

          ColNdx:=cxGridDetIngresosViewID_INGRESO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetIngresosViewTIPOCPBTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetIngresosViewCTRO_COSTO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := FieldByName('id').AsInteger;

          ColNdx:=cxGridDetIngresosViewDETIMPORTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := DetailDataController.Values[i,ColNdx];
          QInsertarMovCtrCosto.ParamByName('total').Value           := DetailDataController.Values[i,ColNdx];

          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'I';

          ColNdx:=cxGridDetIngresosViewCODIGOINGRESO.Index;
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetIngresosViewDETALLE.Index;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetIngresosViewDETIMPORTE.Index;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := DetailDataController.Values[i,ColNdx];;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;

    END;
  CDSControlIngresos.Edit;
  CDSControlIngresosTOTALAPLICADO.Value := CDSControlIngresosIMPORTE.Value;
  CDSControlIngresos.Post;

    // Ingresos ..****************************
  CDSControlIngresos.Close;
  CDSControlIngresos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlIngresos.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlIngresos.Open;

  CDSDetIngresos.Close;
  CDSDetIngresos.Params.ParamByName('iddesde').Value:=CDSControlIngresosIDMIN.Value;// Desde.Date;
  CDSDetIngresos.Params.ParamByName('idhasta').Value:=CDSControlIngresosIDMAX.Value;//.Date;
  CDSDetIngresos.Open;

end;

procedure TFormLstPorCtroCosto.cxGridIngresosViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridIngresosView.Controller.FocusedRowIndex := ARowIndex ;
        if Abs(CDSControlIngresosIMPORTE.Value-CDSControlIngresosTOTALAPLICADO.Value)<=0 Then Accept:=False;
      end;
  end;
end;


procedure TFormLstPorCtroCosto.cxGridIngresoscxGridDBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  if chAutoContraer.Checked then
    ADataController.CollapseDetails;
end;

procedure TFormLstPorCtroCosto.cxGridDetIngresosViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if CDSDetIngresosCTRO_COSTO.AsString='' then
    BEGIN
      CDSDetIngresos.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetIngresosCTRO_COSTO.Value     := FieldByName('id').AsInteger;
          CDSDetIngresosDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetIngresosIMPUTADO.AsFloat     := CDSDetIngresosDETIMPORTE.AsFloat;
          CDSDetIngresosPORCENTAJE.AsFloat   := 100;
          CDSDetIngresos.Post;
          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetIngresosID_INGRESO.Value;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetIngresosTIPOCPBTE.Value;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetIngresosCTRO_COSTO.Value;
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := CDSDetIngresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value           := CDSDetIngresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'I';
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetIngresosCODIGOINGRESO.Value;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetIngresosDESCRIPCION.Value;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetIngresosDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
    END;
end;

procedure TFormLstPorCtroCosto.cxGridDetIngresosViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
 if (Source is TDBGrid ) then
   Accept:=True
  else
    Accept:=False;
end;

procedure TFormLstPorCtroCosto.cxGridDetIngresosViewKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
 if Key=vk_Delete then
    begin
      QBorrarMovCtrCosto.Close;
      QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetIngresosID_APPCOSTO.Value;
      QBorrarMovCtrCosto.ExecSQL;
      QBorrarMovCtrCosto.Close;

      CDSDetIngresos.Edit;
      CDSDetIngresosCTRO_COSTO.Clear;
      CDSDetIngresosDESCRIPCION.Clear;
      CDSDetIngresosIMPUTADO.Clear;
      CDSDetIngresosPORCENTAJE.Clear;
      CDSDetIngresos.Post;
    end
  else
    if Key=vk_Insert then
      begin
        Key:=0;
        QInsertarMovCtrCosto.Close;
        QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetIngresosID_INGRESO.Value;
        QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetIngresosTIPOCPBTE.Value;
        if CDSDetFcCompraCTRO_COSTO.Value>0 then
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetIngresosCTRO_COSTO.Value
        else
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := 1;

        QInsertarMovCtrCosto.ParamByName('imputado').Value        := 0;
        QInsertarMovCtrCosto.ParamByName('total').Value           := 0;
        QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 0;
        QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
        QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetIngresosCODIGOINGRESO.Value;
        QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetIngresosDETALLE.Value;
        QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetIngresosDETIMPORTE.AsFloat;
        QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 0;
        QInsertarMovCtrCosto.ExecSQL;
        QInsertarMovCtrCosto.Close;

      end;
  Key:=0;

end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  A := AViewInfo.GridRecord.Values[3];
  if Not(VarIsNull(AViewInfo.GridRecord.Values[3])) then
    B := AViewInfo.GridRecord.Values[3]
  else B:=0;

  if AViewInfo.Selected then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clBlue;
    end
  else
    begin
      if CompareValue(A,B,0.1)= EqualsValue then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
     else
       if CompareValue(A,B,0)= LessThanValue then
         begin
           ACanvas.Brush.Color:= clRed;
           ACanvas.Font.Color := clBlue;
         end;
    end;
end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView1DataControllerDetailExpanding(
  ADataController: TcxCustomDataController; ARecordIndex: Integer;
  var AAllow: Boolean);
begin
  inherited;
  if chAutoContraer.Checked then
    ADataController.CollapseDetails;
end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAdelantosSueldo)) then
    FormAdelantosSueldo :=TFormAdelantosSueldo.Create(self);
  FormAdelantosSueldo.DatoNew   := CDSControlValesID.AsString;
  FormAdelantosSueldo.TipoCpbte := CDSControlValesTIPOCPBTE.Value;
  FormAdelantosSueldo.Recuperar.Execute;
  FormAdelantosSueldo.Show;
  FormAdelantosSueldo.BringToFront;
end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView1DragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  CantReg:Integer;
  i,ColNdx: Integer;
  ColValue:String;
  Aux:Variant;
 // DataItem:Tdb

  DetailDataController: TCxDataController;

begin
  inherited;

   DetailDataController :=
      TcxDataController(cxGridValesDBTableView1.DataController.GetDetailDataController(
         cxGridValesDBTableView1.Controller.SelectedRows[i].Index, 0));

  for i:=0 to DetailDataController.RecordCount-1  do
    BEGIN
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          ColNdx:=cxGridValesDBTableView2CTRO_COSTO.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('id').AsInteger);

          ColNdx:=cxGridValesDBTableView2DESCRIPCION.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('Descripcion').AsString);

          ColNdx:=cxGridValesDBTableView2IMPUTADO.Index;
          DetailDataController.SetValue(i,ColNdx,DetailDataController.GetValue(i,8));

          ColNdx:=cxGridValesDBTableView2PORCENTAJE.Index;
          DetailDataController.SetValue(i,ColNdx,'100');

          QInsertarMovCtrCosto.Close;

          ColNdx:=cxGridValesDBTableView2ID.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridValesDBTableView2TIPOCPBTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridValesDBTableView2CTRO_COSTO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := FieldByName('id').AsInteger;

          ColNdx:=cxGridValesDBTableView2IMPORTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := DetailDataController.Values[i,ColNdx];
          QInsertarMovCtrCosto.ParamByName('total').Value           := DetailDataController.Values[i,ColNdx];

          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';

          ColNdx:=cxGridValesDBTableView2CODIGO.Index;
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridValesDBTableView2DETALLE.Index;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridValesDBTableView2IMPORTE.Index;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := DetailDataController.Values[i,ColNdx];;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;

    END;
  CDSControlVales.Edit;
  CDSControlValesTOTALAPLICADO.Value := CDSControlValesIMPORTE.Value;
  CDSControlVales.Post;

    // Egresos ..****************************
  CDSControlVales.Close;
  CDSControlVales.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlVales.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlVales.Open;

  CDSDetPersonal.Close;
  CDSDetPersonal.Params.ParamByName('desde').Value:=Desde.Date;// CDSControlEgresosIDMIN.Value;// Desde.Date;
  CDSDetPersonal.Params.ParamByName('hasta').Value:=Hasta.Date;//.Value;//.Date;
  CDSDetPersonal.Open;


end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView1DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridValesDBTableView1.Controller.FocusedRowIndex := ARowIndex ;
        if Abs(CDSControlValesIMPORTE.Value-CDSControlValesTOTALAPLICADO.Value)<=0 Then Accept:=False;
      end;
  end;
end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView2DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;
  if CDSDetPersonalCTRO_COSTO.AsString='' then
    BEGIN
      CDSDetPersonal.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetPersonalCTRO_COSTO.Value     := FieldByName('id').AsInteger;
          CDSDetPersonalDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetPersonalIMPUTADO.AsFloat     := CDSDetPersonalIMPORTE.AsFloat;
          CDSDetPersonalPORCENTAJE.AsFloat   := 100;
          CDSDetPersonal.Post;
          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetPersonalID.Value;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetPersonalTIPOCPBTE.Value;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetPersonalCTRO_COSTO.Value;
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := CDSDetPersonalIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value           := CDSDetPersonalIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetPersonalCODIGO.Value;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetPersonalDESCRIPCION.Value;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetPersonalIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
    END;
end;


procedure TFormLstPorCtroCosto.cxGridValesDBTableView2DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
if (Source is TDBGrid ) then
   Accept:=True
  else
    Accept:=False;
end;

procedure TFormLstPorCtroCosto.cxGridValesDBTableView2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=vk_Delete then
    begin
      QBorrarMovCtrCosto.Close;
      QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetPersonalID_APPCOSTO.Value;
      QBorrarMovCtrCosto.ExecSQL;
      QBorrarMovCtrCosto.Close;

      CDSDetPersonal.Edit;
      CDSDetPersonalCTRO_COSTO.Clear;
      CDSDetPersonalDESCRIPCION.Clear;
      CDSDetPersonalIMPUTADO.Clear;
      CDSDetPersonalPORCENTAJE.Clear;
      CDSDetPersonal.Post;
    end
  else
    if Key=vk_Insert then
      begin
        Key:=0;
        QInsertarMovCtrCosto.Close;
        QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetPersonalID.Value;
        QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetPersonalTIPOCPBTE.Value;
        if CDSDetPersonalCTRO_COSTO.Value>0 then
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetPersonalCTRO_COSTO.Value
        else
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := 1;

        QInsertarMovCtrCosto.ParamByName('imputado').Value        := 0;
        QInsertarMovCtrCosto.ParamByName('total').Value           := 0;
        QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 0;
        QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
        QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetPersonalCODIGO.Value;
        QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetPersonalDETALLE.Value;
        QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetPersonalIMPORTE.AsFloat;
        QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 0;
        QInsertarMovCtrCosto.ExecSQL;
        QInsertarMovCtrCosto.Close;

      end
    else
      if (Key=VK_BACK) then
        begin
 //         QBorrarMovCtrCosto.Close;
//          QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetFcCompraID_APPCOSTO.Value;
//          QBorrarMovCtrCosto.ExecSQL;
//          QBorrarMovCtrCosto.Close;
//
//          CDSFcCompra.Close;
//          CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSFcCompra.Open;
//
//          CDSDetFcCompra.Close;
//          CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSDetFcCompra.Open;
        end;
      Key:=0;

end;

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView2DragDrop(Sender,
  Source: TObject; X, Y: Integer);
begin
  inherited;

  if CDSDetFcCompraCTRO_COSTO.AsString='' then
    BEGIN
      CDSDetFcCompra.Edit;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSDetFcCompraCTRO_COSTO.AsInteger := FieldByName('id').AsInteger;
          CDSDetFcCompraDESCRIPCION.AsString := FieldByName('Descripcion').AsString;
          CDSDetFcCompraIMPUTADO.AsFloat     := CDSDetFcCompraDETIMPORTE.AsFloat;
          CDSDetFcCompraPORCENTAJE.AsFloat   := 100;
          CDSDetFcCompra.Post;
          QInsertarMovCtrCosto.Close;
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := CDSDetFcCompraID_FC.AsInteger;
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := CDSDetFcCompraTIPOCPBTE.AsString;
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetFcCompraCTRO_COSTO.Value;
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := CDSDetFcCompraDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('total').Value           := CDSDetFcCompraDETIMPORTE.AsFloat;
          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetFcCompraCODIGOARTICULO.Value;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetFcCompraDETALLE_STK.Value;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetFcCompraDETIMPORTE.Value;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;
    END;

end;

procedure TFormLstPorCtroCosto.cxGridComprasDBTableView2DragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin

  if (Source is TDBGrid ) then
    Accept:=True
  else
    Accept:=False;

  Accept:=False;

  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridComprasDBTableView2.Controller.FocusedRowIndex := ARowIndex ;
      end;
  end;




end;


procedure TFormLstPorCtroCosto.cxGridComprasDBTableView2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=vk_Delete then
    begin
      QBorrarMovCtrCosto.Close;
      QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetFcCompraID_APPCOSTO.Value;
      QBorrarMovCtrCosto.ExecSQL;
      QBorrarMovCtrCosto.Close;

      CDSDetFcCompra.Edit;
      CDSDetFcCompraCTRO_COSTO.Clear;
      CDSDetFcCompraDESCRIPCION.Clear;
      CDSDetFcCompraIMPUTADO.Clear;
      CDSDetFcCompraPORCENTAJE.Clear;
      CDSDetFcCompra.Post;

  //    CDSDetFcCompra.Delete;

//      CDSFcCompra.Close;
//      CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//      CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//      CDSFcCompra.Open;
//
//      CDSDetFcCompra.Close;
//      CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//      CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//      CDSDetFcCompra.Open;
     // cxGrid1DBTableView1.DataController.Refresh;
     //  Buscar.Execute;
    //  cxGridComprasDBTableView1.DataController.UpdateItems(False);
    end
  else
    if Key=vk_Insert then
      begin
        Key:=0;
        QInsertarMovCtrCosto.Close;
        QInsertarMovCtrCosto.ParamByName('id_cpbte').Value        := CDSDetFcCompraID_FC.Value;
        QInsertarMovCtrCosto.ParamByName('tipocpbte').Value       := CDSDetFcCompraTIPOCPBTE.Value;
        if CDSDetFcCompraCTRO_COSTO.Value>0 then
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := CDSDetFcCompraCTRO_COSTO.Value
        else
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := 1;

        QInsertarMovCtrCosto.ParamByName('imputado').Value        := 0;
        QInsertarMovCtrCosto.ParamByName('total').Value           := 0;
        QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 0;
        QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';
        QInsertarMovCtrCosto.ParamByName('concepto').Value        := CDSDetFcCompraCODIGOARTICULO.Value;
        QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := CDSDetFcCompraDETALLE_STK.Value;
        QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := CDSDetFcCompraDETIMPORTE.Value;
        QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 0;
        QInsertarMovCtrCosto.ExecSQL;
        QInsertarMovCtrCosto.Close;

//        CDSFcCompra.Close;
//        CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//        CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//        CDSFcCompra.Open;
//
//        CDSDetFcCompra.Close;
//        CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//        CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//        CDSDetFcCompra.Open;
      end
    else
      if (Key=VK_BACK) then
        begin
 //         QBorrarMovCtrCosto.Close;
//          QBorrarMovCtrCosto.ParamByName('id').Value        := CDSDetFcCompraID_APPCOSTO.Value;
//          QBorrarMovCtrCosto.ExecSQL;
//          QBorrarMovCtrCosto.Close;
//
//          CDSFcCompra.Close;
//          CDSFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSFcCompra.Open;
//
//          CDSDetFcCompra.Close;
//          CDSDetFcCompra.Params.ParamByName('desde').Value:=Desde.Date;
//          CDSDetFcCompra.Params.ParamByName('hasta').Value:=Hasta.Date;
//          CDSDetFcCompra.Open;
        end;
      Key:=0;

end;

procedure TFormLstPorCtroCosto.cxGridDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 s : Boolean;
 tr: TRect;
begin
  tr:=AViewInfo.Bounds;
  if s then
    begin
       ACanvas.Brush.Color:= clRed;
       ACanvas.Font.Color := clBlack;
     end
   else
     begin
       ACanvas.Brush.Color := clWhite;
       ACanvas.Font.Color  := clBlack;
     end;
//  ACanvas.FillRect(tr);

end;

procedure TFormLstPorCtroCosto.cxGridGastosBcoViewCustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A,B : Extended;
begin
  A := AViewInfo.GridRecord.Values[5];
  if Not(VarIsNull(AViewInfo.GridRecord.Values[6])) then
    B := AViewInfo.GridRecord.Values[6]
  else B:=0;

  if AViewInfo.Selected then
    begin
      ACanvas.Font.Color  := clWhite;
      ACanvas.Brush.Color := clBlue;
    end
  else
    begin
      if CompareValue(A,B,0.1)= EqualsValue then
        begin
          ACanvas.Brush.Color:= clGreen;
          ACanvas.Font.Color := clWhite;
        end
     else
       if CompareValue(A,B,0)= LessThanValue then
         begin
           ACanvas.Brush.Color:= clRed;
           ACanvas.Font.Color := clBlue;
         end;
    end;
end;

procedure TFormLstPorCtroCosto.cxGridGastosBcoViewDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMovEgr_IngBancos)) then
    FormMovEgr_IngBancos :=TFormMovEgr_IngBancos.Create(self);
  FormMovEgr_IngBancos.DatoNew   := CDSControlGstoBcoID.AsString;
  FormMovEgr_IngBancos.TipoCpbte := CDSControlGstoBcoTIPOCPBTE.Value;
  FormMovEgr_IngBancos.Recuperar.Execute;
  FormMovEgr_IngBancos.Show;
  FormMovEgr_IngBancos.BringToFront;
end;

procedure TFormLstPorCtroCosto.cxGridGastosBcoViewDragDrop(Sender,
  Source: TObject; X, Y: Integer);
var
  CantReg:Integer;
  i,ColNdx: Integer;
  ColValue:String;
  Aux:Variant;
 // DataItem:Tdb

  DetailDataController: TCxDataController;

begin
  inherited;

   DetailDataController :=
      TcxDataController(cxGridGastosBcoView.DataController.GetDetailDataController(
         cxGridGastosBcoView.Controller.SelectedRows[i].Index, 0));

  for i:=0 to DetailDataController.RecordCount-1  do
    BEGIN
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          ColNdx:=cxGridDetGastosBcoViewCTRO_COSTO.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('id').AsInteger);

          ColNdx:=cxGridDetGastosBcoViewDESCRIPCION.Index;
          DetailDataController.SetValue(i,ColNdx,FieldByName('Descripcion').AsString);

          ColNdx:=cxGridDetGastosBcoViewIMPUTADO.Index;
          DetailDataController.SetValue(i,ColNdx,DetailDataController.GetValue(i,8));

          ColNdx:=cxGridDetGastosBcoViewPORCENTAJE.Index;
          DetailDataController.SetValue(i,ColNdx,'100');

          QInsertarMovCtrCosto.Close;

          ColNdx:=cxGridDetGastosBcoViewID.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('id_cpbte').AsInteger    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetGastosBcoViewTIPOCPBTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('tipocpbte').AsString    := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetGastosBcoViewCTRO_COSTO.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('ctro_costo').Value      := FieldByName('id').AsInteger;

          ColNdx:=cxGridDetGastosBcoViewDETIMPORTE.Index;
          Aux:=DetailDataController.GetValue(i,ColNdx);
          QInsertarMovCtrCosto.ParamByName('imputado').Value        := DetailDataController.Values[i,ColNdx];
          QInsertarMovCtrCosto.ParamByName('total').Value           := DetailDataController.Values[i,ColNdx];

          QInsertarMovCtrCosto.ParamByName('porcentaje').Value      := 100;
          QInsertarMovCtrCosto.ParamByName('tipo').Value            := 'E';

          ColNdx:=cxGridDetGastosBcoViewCODIGO_CONCEPTO.Index;
          QInsertarMovCtrCosto.ParamByName('concepto').Value        := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetGastosBcoViewDETALLE.Index;
          QInsertarMovCtrCosto.ParamByName('detalle_concep').Value  := DetailDataController.Values[i,ColNdx];

          ColNdx:=cxGridDetGastosBcoViewDETIMPORTE.Index;
          QInsertarMovCtrCosto.ParamByName('Importe_linea').Value   := DetailDataController.Values[i,ColNdx];;
          QInsertarMovCtrCosto.ParamByName('porcentaje_total').Value:= 100;
          QInsertarMovCtrCosto.ExecSQL;
          QInsertarMovCtrCosto.Close;
        END;

    END;
  CDSControlGstoBco.Edit;
  CDSControlGstoBcoTOTALAPLICADO.Value := CDSControlGstoBcoIMPORTE.Value;
  CDSControlGstoBco.Post;

    // Banco ..****************************
  CDSControlGstoBco.Close;
  CDSControlGstoBco.Params.ParamByName('desde').Value:=Desde.Date;
  CDSControlGstoBco.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSControlGstoBco.Open;

  CDSDetGstoBco.Close;
  CDSDetGstoBco.Params.ParamByName('desde').Value:=desde.date;//CDSControlEgresosIDMIN.Value;// Desde.Date;
  CDSDetGstoBco.Params.ParamByName('hasta').Value:=Hasta.date;//CDSControlEgresosIDMAX.Value;//.Date;
  CDSDetGstoBco.Open;

end;

procedure TFormLstPorCtroCosto.cxGridGastosBcoViewDragOver(Sender,
  Source: TObject; X, Y: Integer; State: TDragState; var Accept: Boolean);
var
  HT: TcxCustomGridHitTest;
  ARecordIndex, ARowIndex:  Integer;
begin
  with TcxGridSite(Sender) do
  begin
    HT           := ViewInfo.GetHitTest(X, Y);
    Accept       := (HT is TcxGridRecordCellHitTest);// and
    if accept Then
      begin
        ARowIndex    := (TcxGridRecordCellHitTest(HT).GridRecord.RecordIndex);
        cxGridGastosBcoView.Controller.FocusedRowIndex := ARowIndex ;
        if Abs(CDSControlGstoBcoIMPORTE.Value-CDSControlGstoBcoTOTALAPLICADO.Value)<=0 Then Accept:=False;
      end;
  end;
end;


procedure TFormLstPorCtroCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
  inherited;
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastosCC');
  cxDBPivotGrid2.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastosCC2');

  ArchivoIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'_LstGastosCC.ini');
  ArchivoIni.WriteBool('Estado','Vtas',chVtas.Checked);
  ArchivoIni.WriteBool('Estado','Personal',chPersonal.Checked);
  ArchivoIni.WriteBool('Estado','Ingresos',chIngresos.Checked);
  ArchivoIni.WriteBool('Agrupar','Tipo',chAgrupaTipo.Checked);
  ArchivoIni.WriteBool('Agrupar','Ctro',chAgrupaCtro.Checked);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormLstPorCtroCosto.FormCreate(Sender: TObject);
var i:integer;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QCtroCosto.Close;
  QCtroCosto.Open;
  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;

  for i := 0 to chOpSumas_2.Count - 1 do
    chOpSumas_2.Checked[i]:=True;
 

  pcDatos.ActivePageIndex:=0;
end;

procedure TFormLstPorCtroCosto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstPorCtroCosto:=nil;
end;

procedure TFormLstPorCtroCosto.FormShow(Sender: TObject);
VAR y,m,d:word;
ArchivoIni:TIniFile;
begin
  inherited;
  DecodeDate(date,y,m,d);
//  if m=1 Then
//    begin
//      m:=12;y:=y-1;
//    end
//  else
//    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastosCC');
  cxDBPivotGrid2.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastosCC2');

  ArchivoIni:=TIniFile.Create(ExtractFilePath(ParamStr(0))+'_LstGastosCC.ini');
  chVtas.Checked       :=ArchivoIni.ReadBool('Estado','Vtas',False);
  chPersonal.Checked   :=ArchivoIni.ReadBool('Estado','Personal',False);
  chIngresos.Checked   :=ArchivoIni.ReadBool('Estado','Ingresos',False);
  chAgrupaTipo.Checked :=ArchivoIni.ReadBool('Agrupar','Tipo',True);
  chAgrupaCtro.Checked :=ArchivoIni.ReadBool('Agrupar','Ctro',True);

  ArchivoIni.Free;


  cxGrid2DBTableView1TIPODETALLE.Options.CellMerging :=chAgrupaTipo.Checked;
  cxGrid2DBTableView1DETALLE.Options.CellMerging     :=chAgrupaCtro.Checked;

  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormLstPorCtroCosto.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormLstPorCtroCosto.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if pcDatos.ActivePageIndex=0 then
    begin
      if Not(CDSGastos.IsEmpty) Then
        begin
         
          frListado.PrintOptions.Printer:=PrNomListados;
          frListado.SelectPrinter;
          frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\LstGastoCtroCosto.fr3');
          frListado.Variables['desde']   :=''''+Desde.Text+'''';
          frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
          frListado.Variables['CtaCtro']:=''''+dbcCtro.Text+'''';
          frListado.ShowReport;
        end
      else ShowMessage('No Hay datos para Listar......');
    end
  else
    if pcDatos.ActivePageIndex=1 then
      dxComponentPrinter1Link3.Preview();
end;

procedure TFormLstPorCtroCosto.dbgValesDblClick(Sender: TObject);
begin
  inherited;
  if CDSControlValesID.AsString<>'' then
    begin
      if Not(Assigned(FormAdelantosSueldo)) then
        FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
      FormAdelantosSueldo.DatoNew:=CDSControlValesID.AsString;
      FormAdelantosSueldo.TipoCpbte:='VA';
      FormAdelantosSueldo.Recuperar.Execute;
      FormAdelantosSueldo.Show;
    end;

end;

procedure TFormLstPorCtroCosto.dbgGastosDblClick(Sender: TObject);
begin
  inherited;
  if CDSControlEgresosID_EGRESO.AsString<>'' then
    begin
      if Not(Assigned(FormEgresoCaja)) then
        FormEgresoCaja:=TFormEgresoCaja.Create(Self);
      FormEgresoCaja.DatoNew:=CDSControlEgresosID_EGRESO.AsString;
      FormEgresoCaja.TipoCpbte:='EC';
      FormEgresoCaja.Recuperar.Execute;
      FormEgresoCaja.Show;
    end;
end;

procedure TFormLstPorCtroCosto.dbgIngresoDblClick(Sender: TObject);
begin
  inherited;
  if CDSControlIngresosID_INGRESO.AsString<>'' then
    begin
      if Not(Assigned(FormIngresoCaja)) then
        FormIngresoCaja:=TFormIngresoCaja.Create(Self);
      FormIngresoCaja.DatoNew:=CDSControlIngresosID_INGRESO.AsString;
      FormIngresoCaja.TipoCpbte:='IC';
      FormIngresoCaja.Recuperar.Execute;
      FormIngresoCaja.Show;
    end;
end;




procedure TFormLstPorCtroCosto.Label10Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormLstPorCtroCosto.Label5Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormLstPorCtroCosto.Label6Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormLstPorCtroCosto.Label9Click(Sender: TObject);
begin
  inherited;
  pnTotales_2.Visible:=Not(pnTotales_2.Visible);
end;

procedure TFormLstPorCtroCosto.LimpiarFiltros2Execute(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if (pcDatos.ActivePageIndex=2) or (pcDatos.ActivePageIndex=3) then
     begin
       if pcDatos.ActivePageIndex=2 then
         APivot:=cxDBPivotGrid1
       else
         if pcDatos.ActivePageIndex=3 then
           APivot:=cxDBPivotGrid2;

       APivot.DataController.BeginUpdate;

       for I := 0 to APivot.FieldCount - 1 do
         APivot.Fields[I].Filter.Clear;
       APivot.DataController.EndUpdate;

       for i:=0 to cxDBPivotGrid1.FieldCount-1 do
         cxDBPivotGrid1.Fields[i].ExpandAll;
     end;
end;

procedure TFormLstPorCtroCosto.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if (pcDatos.ActivePageIndex=2) or (pcDatos.ActivePageIndex=3) then
     begin
       if pcDatos.ActivePageIndex=2 then
         APivot:=cxDBPivotGrid1
       else
         if pcDatos.ActivePageIndex=3 then
           APivot:=cxDBPivotGrid2;

       APivot.DataController.BeginUpdate;

       for I := 0 to APivot.FieldCount - 1 do
         APivot.Fields[I].Filter.Clear;
       APivot.DataController.EndUpdate;

       for i:=0 to cxDBPivotGrid1.FieldCount-1 do
         cxDBPivotGrid1.Fields[i].ExpandAll;
     end;
end;


procedure TFormLstPorCtroCosto.OcultarCabeceraGrilla1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;


procedure TFormLstPorCtroCosto.pcDatosChange(Sender: TObject);
begin
  inherited;
  btImprimir.Enabled:= (pcDatos.ActivePageIndex=0) or (pcDatos.ActivePageIndex=1);
end;

procedure TFormLstPorCtroCosto.pcDatosChanging(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
  btImprimir.Enabled:= (pcDatos.ActivePageIndex=0) or (pcDatos.ActivePageIndex=1);
end;

procedure TFormLstPorCtroCosto.dbgSaldosDblClick(Sender: TObject);
begin
  inherited;
  if CDSGastosTIPOCPBTE.Value='FO' then
    begin
      IF NOT (Assigned(FormCompraCtdo_2)) THEN
        FormCompraCtdo_2   := TFormCompraCtdo_2.Create(self);
      FormCompraCtdo_2.DatoNew   := CDSGastosIDCPBTE.AsString;
      FormCompraCtdo_2.TipoCpbte := CDSGastosTIPOCPBTE.AsString;
      FormCompraCtdo_2.Recuperar.Execute;
      FormCompraCtdo_2.Show;
    end
  else
    if CDSGastosTIPOCPBTE.Value='OP' then
      begin
        iF NOT (Assigned(FormOPago_2)) THEN
          FormOPago_2:= TFormOPago_2.Create(self);
        FormOPago_2.DatoNew    := CDSGastosIDCPBTE.AsString;
        FormOPago_2.TipoCpbte  := CDSGastosTIPOCPBTE.AsString;
        FormOPago_2.Recuperar.Execute;
        FormOPago_2.Show;
      end
    else
      if CDSGastosTIPOCPBTE.Value='VA' then
        begin
          IF NOT (Assigned(FormAdelantosSueldo)) THEN
            FormAdelantosSueldo   := TFormAdelantosSueldo.Create(self);
          FormAdelantosSueldo.DatoNew   := CDSGastosIDCPBTE.AsString;
          FormAdelantosSueldo.TipoCpbte := CDSGastosTIPOCPBTE.AsString;
          FormAdelantosSueldo.Recuperar.Execute;
          FormAdelantosSueldo.Show;
        end
      else
        if CDSGastosTIPOCPBTE.Value='EC' then
          begin
            IF NOT (Assigned(FormEgresoCaja)) THEN
              FormEgresoCaja   := TFormEgresoCaja.Create(self);
            FormEgresoCaja.DatoNew   := CDSGastosIDCPBTE.AsString;
            FormEgresoCaja.TipoCpbte := CDSGastosTIPOCPBTE.AsString;
            FormEgresoCaja.Recuperar.Execute;
            FormEgresoCaja.Show;
          end
        else
          if CDSGastosTIPOCPBTE.Value='FC' then
            begin
              IF NOT (Assigned(FormCompra_2)) THEN
                FormCompra_2   := TFormCompra_2.Create(self);
              FormCompra_2.DatoNew   := CDSGastosIDCPBTE.AsString;
              FormCompra_2.TipoCpbte := CDSGastosTIPOCPBTE.AsString;
              FormCompra_2.Recuperar.Execute;
              FormCompra_2.Show;
            end



end;

procedure TFormLstPorCtroCosto.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormLstPorCtroCosto.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormLstPorCtroCosto.excelrelacionExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSGastos.IsEmpty) Then
    if SaveDialog1.Execute then
      cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1)
end;

procedure TFormLstPorCtroCosto.ExpandirTodolosItmes1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.DataController.Groups.FullExpand;

end;

procedure TFormLstPorCtroCosto.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  case pcDatos.ActivePageIndex of
    3:begin
//        if Not(CDSFcCompra.IsEmpty) then
//          begin
//            SaveDialog1.DefaultExt:='xls';
//            if SaveDialog1.Execute Then
//             if SaveDialog1.FileName<>'' Then
//               if VirtualUI.Active then
//                 ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxGridCompras,True,True,False)
//               else
//                 ExportGridToExcel(SaveDialog1.FileName,cxGridCompras,True,True,False)
//          end;
      end;
    4:begin
        if Not(CDSFcCompra.IsEmpty) then
          begin
            SaveDialog1.DefaultExt:='xls';
            if SaveDialog1.Execute Then
              if SaveDialog1.FileName<>'' Then
                if VirtualUI.Active then
                  ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxGridCompras,True,True,False)
                else
                  ExportGridToExcel(SaveDialog1.FileName,cxGridCompras,True,True,False)

          end;
      end;
    5:begin
        if Not(CDSControlEgresos.IsEmpty) then
          begin
            SaveDialog1.DefaultExt:='xls';
            if SaveDialog1.Execute Then
              if SaveDialog1.FileName<>'' Then
                if VirtualUI.Active then
                  ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxGridEgresos,True,True,False)
                else
                  ExportGridToExcel(SaveDialog1.FileName,cxGridEgresos,True,True,False)
          end;
      end;
    6:begin
        if Not(CDSControlEgresos.IsEmpty) then
          begin
            SaveDialog1.DefaultExt:='xls';
            if SaveDialog1.Execute Then
              if SaveDialog1.FileName<>'' Then
                if VirtualUI.Active then
                  ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxGridIngresos,True,True,False)
                else
                  ExportGridToExcel(SaveDialog1.FileName,cxGridIngresos,True,True,False)

          end;
      end;
    7:begin
        if Not(CDSControlVales.IsEmpty) then
          begin
            //cxGridVales.us
            SaveDialog1.DefaultExt:='xls';
            if SaveDialog1.Execute Then
              if SaveDialog1.FileName<>'' Then
                if VirtualUI.Active then
                  ExportGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxGridVales,True,True,False)
                else
                  ExportGridToExcel(SaveDialog1.FileName,cxGridVales,True,True,False);

          end;
      end;
    end;
end;

procedure TFormLstPorCtroCosto.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

procedure TFormLstPorCtroCosto.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
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
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;
  Buscar.Execute;
  //  Desde.SetFocus;

end;
{
select c.id_fc,c.tipocpbte, (c.tipocpbte || '-' || c.clasecpbte || '-' || c.nrocpbte) as Numero ,c.codigo,c.razonsocial,
       (c.netograv2+c.netoexen2+c.importeexcluido2+c.netomonotributo2) as TotalNeto,
       cc.ctro_costo,cc.concepto,cc.detalle_concep,cc.imputado,
       (select sum(cc2.imputado) from aplica_ctro_costo cc2 where
         cc2.id_cpbte=c.id_fc and cc2.tipocpbte=c.tipocpbte and cc2.tipo='E') as TotalAplicado
        from fccompcab c
left join aplica_ctro_costo cc on cc.id_cpbte=c.id_fc and cc.tipocpbte=c.tipocpbte and cc.tipo='E'
where c.fechacompra between :desde and :hasta
}
end.
