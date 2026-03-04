unit UResumenVentas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Spin, DB, Provider, DBClient, SqlExpr, ExtCtrls,
  Buttons,DateUtils, ToolWin, ComCtrls,StrUtils,
  Mask, JvExMask, JvToolEdit, frxClass, frxCross, frxExportRTF, frxExportImage,
  frxExportPDF, JvExStdCtrls, JvCombobox, frxExportXLS,ComObj, JvExControls,
  JvDBLookup, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid,
  JvGradient,cxExportPivotGridLink, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxPSCore, dxPScxCommon,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, cxVGrid, cxDBVGrid, cxInplaceContainer,
  cxGridTableView, dxPScxVGridLnk,cxExportVGLink, dxSkinsDefaultPainters,
  dxSkinsdxRibbonPainter, dxPSStdGrLnk, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint, cxCalc,
  dxmdaset, cxPivotGridCustomDataSet, cxPivotGridSummaryDataSet,VirtualUI_SDK,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,IniFiles, JvAppStorage,
  JvAppIniStorage, JvComponentBase, JvFormPlacement, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxScrollbarAnnotations, dxBarBuiltInMenu, Vcl.Menus, dxPScxExtComCtrlsLnk,
  cxFilter, frCoreClasses;

type
  TFormResumenVentas = class(TForm)
    CDSVentas: TClientDataSet;
    DSPVentas: TDataSetProvider;
    DSVentas: TDataSource;
    pcVentas: TPageControl;
    pag1: TTabSheet;
    pnCabecera: TPanel;
    Label1: TLabel;
    SpinEdit1: TSpinEdit;
    pnPie: TPanel;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    btSalirVentas: TBitBtn;
    btBuscarVtas: TBitBtn;
    DSPSucursales: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    pag2: TTabSheet;
    Panel1: TPanel;
    Label2: TLabel;
    btGraficarDiario: TButton;
    pnPieDiaria: TPanel;
    ToolBar2: TToolBar;
    ToolButton2: TToolButton;
    btSalir: TBitBtn;
    btBuscarDiaria: TBitBtn;
    Desde: TJvDateEdit;
    Label3: TLabel;
    Hasta: TJvDateEdit;
    DSPVentasDiaria: TDataSetProvider;
    CDSVentaDiaria: TClientDataSet;
    UpDown1: TUpDown;
    frxReport1: TfrxReport;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    frxPDFExport1: TfrxPDFExport;
    frxBMPExport1: TfrxBMPExport;
    pag3: TTabSheet;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    cbGrupo: TJvComboBox;
    DSPVentasFiltrada: TDataSetProvider;
    CDSVentasFiltrada: TClientDataSet;
    pnPieFiltrada: TPanel;
    ToolBar3: TToolBar;
    ToolButton3: TToolButton;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    CDSVentasSUCURSAL: TIntegerField;
    CDSVentasNOMBRESUCURSAL: TStringField;
    CDSVentasMES: TIntegerField;
    CDSVentasTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO_IVA: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CC_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CC_IVA: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CC: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NCREDITO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField;
    CDSVentasTOTAL_ANULACIONES: TFMTBCDField;
    CDSVentasTOTAL_COBRANZAS: TFMTBCDField;
    CDSVentasTOTAL_EGRESOS: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_IVA: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS: TFMTBCDField;
    CDSVentasTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_NC_COMPRAS_IVA: TFMTBCDField;
    CDSVentasTOTAL_NC_COMPRAS: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_CTDO: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField;
    CDSVentasTOTAL_PERSONAL: TFMTBCDField;
    CDSVentasTOTAL_PAGOS: TFMTBCDField;
    CDSVentasSALDO_CC_VTA: TFMTBCDField;
    CDSVentasSALDO_CC_COMPRA: TFMTBCDField;
    CDSVentaDiariaSUCURSAL: TIntegerField;
    CDSVentaDiariaNOMBRESUCURSAL: TStringField;
    CDSVentaDiariaDIA: TIntegerField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CC_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CC_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CC: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NCREDITO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField;
    CDSVentaDiariaTOTAL_ANULACIONES: TFMTBCDField;
    CDSVentaDiariaTOTAL_COBRANZAS: TFMTBCDField;
    CDSVentaDiariaTOTAL_EGRESOS: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS: TFMTBCDField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_NC_COMPRAS_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_NC_COMPRAS: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_PERSONAL: TFMTBCDField;
    CDSVentaDiariaTOTAL_PAGOS: TFMTBCDField;
    CDSVentaDiariaSALDO_CC_VTA: TFMTBCDField;
    CDSVentaDiariaSALDO_CC_COMPRA: TFMTBCDField;
    btExcelAnual: TBitBtn;
    btExcelFiltrada: TBitBtn;
    CDSVentasTOTAL_VTAS: TFMTBCDField;
    CDSVentasTOTAL_INGRESOS: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField;
    CDSVentasTOTAL_VTAS_NDEBITO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS: TFMTBCDField;
    CDSVentaDiariaTOTAL_INGRESOS: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_NDEBITO: TFMTBCDField;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    Label5: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    CDSVentasTOTAL_GRAL_COMPRAS: TFMTBCDField;
    CDSVentaDiariaTOTAL_GRAL_COMPRAS: TFMTBCDField;
    CDSVentasFiltradaSUCURSAL: TIntegerField;
    CDSVentasFiltradaNOMBRESUCURSAL: TStringField;
    CDSVentasFiltradaMES: TIntegerField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CC_GRAVDADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CC_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CC_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CC: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NCREDITO_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NCREDITO_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NCREDITO_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NCREDITO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_ANULACIONES: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COBRANZAS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_EGRESOS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_NC_COMPRAS_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_NC_COMPRAS_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_NC_COMPRAS_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_NC_COMPRAS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_CTDO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_CTDO_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_CTDO_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_COMPRAS_CTDO_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_PERSONAL: TFMTBCDField;
    CDSVentasFiltradaTOTAL_PAGOS: TFMTBCDField;
    CDSVentasFiltradaSALDO_CC_VTA: TFMTBCDField;
    CDSVentasFiltradaSALDO_CC_COMPRA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_INGRESOS: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NDEBITO_GRAVADO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NDEBITO_EXENTO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NDEBITO_IVA: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_NDEBITO: TFMTBCDField;
    CDSVentasFiltradaTOTAL_GRAL_COMPRAS: TFMTBCDField;
    Button1: TButton;
    pag4: TTabSheet;
    Panel3: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Desde_Piv: TJvDateEdit;
    Hasta_Piv: TJvDateEdit;
    UpDown2: TUpDown;
    BitBtn7: TBitBtn;
    JvGradient2: TJvGradient;
    JvGradient3: TJvGradient;
    JvGradient4: TJvGradient;
    DSPInfCruzao: TDataSetProvider;
    CDSInfCruzado: TClientDataSet;
    DSInfCruzado: TDataSource;
    CDSInfCruzadoID_FC: TIntegerField;
    CDSInfCruzadoTIPOCPBTE: TStringField;
    CDSInfCruzadoCLASECPBTE: TStringField;
    CDSInfCruzadoNROCPBTE: TStringField;
    CDSInfCruzadoCODIGO: TStringField;
    CDSInfCruzadoNOMBRE: TStringField;
    CDSInfCruzadoSUCURSAL: TIntegerField;
    CDSInfCruzadoMUESTRASUCURSAL: TStringField;
    CDSInfCruzadoANIO: TSmallintField;
    CDSInfCruzadoMES: TSmallintField;
    CDSInfCruzadoMUESTRACOMPROB: TStringField;
    CDSInfCruzadoTOTALNETO: TFloatField;
    Label8: TLabel;
    cxDBPivotGrid1: TcxDBPivotGrid;
    Label9: TLabel;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    CDSInfCruzadoNOMBREMES: TStringField;
    btBuscarCruzado: TBitBtn;
    BitBtn9: TBitBtn;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    CDSInfCruzadoTOTALNETOREC: TFloatField;
    CDSInfCruzadoTOTALREC: TFloatField;
    Label10: TLabel;
    cxDBVerticalGrid1: TcxDBVerticalGrid;
    cxDBVerticalGrid1DBMultiEditorRow1: TcxDBMultiEditorRow;
    cxDBVerticalGrid1DBMultiEditorRow2: TcxDBMultiEditorRow;
    cxDBVerticalGrid1CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow3: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow4: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow5: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow6: TcxDBEditorRow;
    cxStyleRepository6: TcxStyleRepository;
    GridTableViewStyleSheetDevExpress: TcxGridTableViewStyleSheet;
    cxStyle14: TcxStyle;
    cxStyle15: TcxStyle;
    cxStyle16: TcxStyle;
    cxStyle17: TcxStyle;
    cxStyle18: TcxStyle;
    cxStyle19: TcxStyle;
    cxStyle20: TcxStyle;
    cxStyle21: TcxStyle;
    cxStyle22: TcxStyle;
    cxStyle23: TcxStyle;
    cxStyle24: TcxStyle;
    cxStyle25: TcxStyle;
    cxStyle26: TcxStyle;
    cxStyle27: TcxStyle;
    cxDBVerticalGrid1CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow7: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow8: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow9: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow10: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow3: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow11: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow4: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow12: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow5: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow13: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow6: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow14: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow15: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow7: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow16: TcxDBEditorRow;
    dxComponentPrinter1Link2: TcxDBVerticalGridReportLink;
    cxDBVerticalGrid2: TcxDBVerticalGrid;
    cxDBMultiEditorRow1: TcxDBMultiEditorRow;
    cxDBMultiEditorRow2: TcxDBMultiEditorRow;
    cxCategoryRow1: TcxCategoryRow;
    cxDBEditorRow1: TcxDBEditorRow;
    cxDBEditorRow2: TcxDBEditorRow;
    cxDBEditorRow3: TcxDBEditorRow;
    cxDBEditorRow4: TcxDBEditorRow;
    cxDBEditorRow5: TcxDBEditorRow;
    cxDBEditorRow6: TcxDBEditorRow;
    cxCategoryRow2: TcxCategoryRow;
    cxDBEditorRow7: TcxDBEditorRow;
    cxDBEditorRow8: TcxDBEditorRow;
    cxDBEditorRow9: TcxDBEditorRow;
    cxDBEditorRow10: TcxDBEditorRow;
    cxCategoryRow3: TcxCategoryRow;
    cxDBEditorRow11: TcxDBEditorRow;
    cxCategoryRow4: TcxCategoryRow;
    cxDBEditorRow12: TcxDBEditorRow;
    cxCategoryRow5: TcxCategoryRow;
    cxDBEditorRow13: TcxDBEditorRow;
    cxCategoryRow6: TcxCategoryRow;
    cxDBEditorRow14: TcxDBEditorRow;
    cxDBEditorRow15: TcxDBEditorRow;
    cxCategoryRow7: TcxCategoryRow;
    cxDBEditorRow16: TcxDBEditorRow;
    DSVentaDiaria: TDataSource;
    dxComponentPrinter1Link3: TcxDBVerticalGridReportLink;
    cxDBVerticalGrid3: TcxDBVerticalGrid;
    cxDBMultiEditorRow3: TcxDBMultiEditorRow;
    cxDBMultiEditorRow4: TcxDBMultiEditorRow;
    cxCategoryRow8: TcxCategoryRow;
    cxDBEditorRow17: TcxDBEditorRow;
    cxDBEditorRow18: TcxDBEditorRow;
    cxDBEditorRow19: TcxDBEditorRow;
    cxDBEditorRow20: TcxDBEditorRow;
    cxDBEditorRow21: TcxDBEditorRow;
    cxDBEditorRow22: TcxDBEditorRow;
    cxCategoryRow9: TcxCategoryRow;
    cxDBEditorRow23: TcxDBEditorRow;
    cxDBEditorRow24: TcxDBEditorRow;
    cxDBEditorRow25: TcxDBEditorRow;
    cxDBEditorRow26: TcxDBEditorRow;
    cxCategoryRow10: TcxCategoryRow;
    cxDBEditorRow27: TcxDBEditorRow;
    cxCategoryRow11: TcxCategoryRow;
    cxDBEditorRow28: TcxDBEditorRow;
    cxCategoryRow12: TcxCategoryRow;
    cxDBEditorRow29: TcxDBEditorRow;
    cxCategoryRow13: TcxCategoryRow;
    cxDBEditorRow30: TcxDBEditorRow;
    cxDBEditorRow31: TcxDBEditorRow;
    cxCategoryRow14: TcxCategoryRow;
    cxDBEditorRow32: TcxDBEditorRow;
    DSFiltrada: TDataSource;
    dxComponentPrinter1Link4: TcxDBVerticalGridReportLink;
    CDSVentasTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField;
    CDSVentasTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField;
    CDSVentaDiariaTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField;
    cxDBVerticalGrid1CategoryRow8: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow17: TcxDBEditorRow;
    cxDBVerticalGrid1CategoryRow9: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow18: TcxDBEditorRow;
    cxDBVerticalGrid1DBEditorRow19: TcxDBEditorRow;
    CDSVentasTOTAL_EFECTIVO: TFMTBCDField;
    CDSVentasTOTAL_CHEQUES3: TFMTBCDField;
    cxDBVerticalGrid1CategoryRow10: TcxCategoryRow;
    cxDBVerticalGrid1DBEditorRow20: TcxDBEditorRow;
    CDSVentasTOTAL_RTOS: TFMTBCDField;
    CDSVentaDiariaTOTAL_EFECTIVO: TFMTBCDField;
    CDSVentaDiariaTOTAL_CHEQUES3: TFMTBCDField;
    CDSVentaDiariaTOTAL_RTOS: TFMTBCDField;
    cxDBVerticalGrid2CategoryRow1: TcxCategoryRow;
    cxDBVerticalGrid2DBEditorRow1: TcxDBEditorRow;
    cxDBVerticalGrid2DBEditorRow2: TcxDBEditorRow;
    cxDBVerticalGrid2CategoryRow2: TcxCategoryRow;
    cxDBVerticalGrid2DBEditorRow3: TcxDBEditorRow;
    pag5: TTabSheet;
    DSPSaldoGastos: TDataSetProvider;
    CDSSaldoGastos: TClientDataSet;
    CDSSaldoGastosNROCPBTE: TStringField;
    CDSSaldoGastosID_EGRESO: TIntegerField;
    CDSSaldoGastosTIPOCPBTE: TStringField;
    CDSSaldoGastosCLASECPBTE: TStringField;
    CDSSaldoGastosRUBROGASTO: TStringField;
    CDSSaldoGastosCODIGOGASTO: TStringField;
    CDSSaldoGastosDETALLE: TStringField;
    CDSSaldoGastosMUESTRARUBRO: TStringField;
    CDSSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSSaldoGastosMUESTRACTA: TStringField;
    CDSSaldoGastosIMPORTE: TFMTBCDField;
    CDSSaldoGastosFECHAGASTO: TSQLTimeStampField;
    CDSSaldoGastosID_CUENTA_CAJA: TIntegerField;
    CDSSaldoGastosNOMBRE: TStringField;
    CDSSaldoGastosMES: TStringField;
    DSPGasto_Compra: TDataSetProvider;
    CDSGasto_Compra: TClientDataSet;
    CDSGasto_CompraNROCPBTE: TStringField;
    CDSGasto_CompraID_EGRESO: TIntegerField;
    CDSGasto_CompraTIPOCPBTE: TStringField;
    CDSGasto_CompraCLASECPBTE: TStringField;
    CDSGasto_CompraRUBROGASTO: TStringField;
    CDSGasto_CompraCODIGOGASTO: TStringField;
    CDSGasto_CompraDETALLE: TStringField;
    CDSGasto_CompraMUESTRARUBRO: TStringField;
    CDSGasto_CompraMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSGasto_CompraMUESTRACTA: TStringField;
    CDSGasto_CompraIMPORTE: TFMTBCDField;
    CDSGasto_CompraID_CUENTA_CAJA: TIntegerField;
    CDSGasto_CompraNOMBRE: TStringField;
    CDSGasto_CompraFECHAGASTO: TSQLTimeStampField;
    CDSGasto_CompraMES: TStringField;
    CDSGasto_CompraANIO: TIntegerField;
    CDSGasto_CompraCTRO_COSTO_NOM: TStringField;
    CDSGasto_CompraCTRO_COSTO_IMPUT: TFMTBCDField;
    CDSGasto_CompraCTRO_COSTO_PORCEN: TFMTBCDField;
    cxDBPivotGrid2: TcxDBPivotGrid;
    DSSaldosGastos: TDataSource;
    cxDBPivotGrid2NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid2ID_EGRESO: TcxDBPivotGridField;
    cxDBPivotGrid2TIPOCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid2CLASECPBTE: TcxDBPivotGridField;
    cxDBPivotGrid2RUBROGASTO: TcxDBPivotGridField;
    cxDBPivotGrid2CODIGOGASTO: TcxDBPivotGridField;
    cxDBPivotGrid2DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRARUBRO: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRAIDCOMPROBANTE: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRACTA: TcxDBPivotGridField;
    cxDBPivotGrid2IMPORTE: TcxDBPivotGridField;
    cxDBPivotGrid2FECHAGASTO: TcxDBPivotGridField;
    cxDBPivotGrid2ID_CUENTA_CAJA: TcxDBPivotGridField;
    cxDBPivotGrid2NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid2MES: TcxDBPivotGridField;
    lbCampos: TLabel;
    pnPieGastos: TPanel;
    BitBtn8: TBitBtn;
    BitBtn10: TBitBtn;
    dxComponentPrinter1Link5: TcxPivotGridReportLink;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFMTBCDField;
    CDSVentasFiltradaTOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFMTBCDField;
    DSPMovimientos_2: TDataSetProvider;
    CDSMovimientos_2: TClientDataSet;
    CDSMovimientos_2CODIGOARTICULO: TStringField;
    CDSMovimientos_2DETALLE_STK: TStringField;
    CDSMovimientos_2CANTIDAD: TFMTBCDField;
    CDSMovimientos_2UNITARIO_GRAVADO: TFMTBCDField;
    CDSMovimientos_2UNITARIO_EXENTO: TFMTBCDField;
    CDSMovimientos_2UNITARIO_TOTAL: TFMTBCDField;
    CDSMovimientos_2IVA_UNITARIO: TFMTBCDField;
    CDSMovimientos_2UNITARIO_FINAL: TFMTBCDField;
    CDSMovimientos_2TOTAL_GRAVADO: TFMTBCDField;
    CDSMovimientos_2TOTAL_EXENTO: TFMTBCDField;
    CDSMovimientos_2TOTAL: TFMTBCDField;
    CDSMovimientos_2IVA_TOTAL: TFMTBCDField;
    CDSMovimientos_2TOTAL_FINAL: TFMTBCDField;
    CDSMovimientos_2ANIO: TSmallintField;
    CDSMovimientos_2MES: TSmallintField;
    CDSMovimientos_2RUBRO: TStringField;
    CDSMovimientos_2SUBRUBRO: TStringField;
    CDSMovimientos_2RUBRODETALLE: TStringField;
    CDSMovimientos_2SUBRUBRODETALL: TStringField;
    CDSMovimientos_2SUCURSAL: TStringField;
    CDSMovimientos_2ZONA: TIntegerField;
    CDSMovimientos_2TIPO_VTA: TStringField;
    CDSMovimientos_2LETRA: TStringField;
    CDSMovimientos_2IVATASA: TFMTBCDField;
    CDSMovimientos_2MARCADETALLE: TStringField;
    CDSMovimientos_2DIRECCION: TStringField;
    CDSMovimientos_2ZONADETALLE: TStringField;
    CDSMovimientos_2TIPO: TStringField;
    CDSMovimientos_2CLASE: TStringField;
    CDSMovimientos_2NROCPBTE: TStringField;
    CDSMovimientos_2UNID_VTA: TStringField;
    CDSMovimientos_2FECHA: TSQLTimeStampField;
    CDSMovimientos_2COBRADOR: TStringField;
    CDSMovimientos_2COBRADOR_NOMBRE: TStringField;
    CDSMovimientos_2MUESTRAMES: TStringField;
    CDSMovimientos_2MUESTRASEMANA: TWordField;
    CDSMovimientos_2OBSERVACIONES: TStringField;
    DSMovimientos_2: TDataSource;
    DetalleVta: TTabSheet;
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
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    cxDBPivotGrid1Field24: TcxDBPivotGridField;
    cxDBPivotGrid1Field25: TcxDBPivotGridField;
    cxDBPivotGrid1Field26: TcxDBPivotGridField;
    cxDBPivotGrid1Field27: TcxDBPivotGridField;
    cxDBPivotGrid1Field28: TcxDBPivotGridField;
    cxDBPivotGrid1Field29: TcxDBPivotGridField;
    cxDBPivotGrid1Field30: TcxDBPivotGridField;
    cxDBPivotGrid1Field31: TcxDBPivotGridField;
    cxDBPivotGrid1Field32: TcxDBPivotGridField;
    cxDBPivotGrid1Field33: TcxDBPivotGridField;
    cxDBPivotGrid1Field34: TcxDBPivotGridField;
    cxDBPivotGrid1Field35: TcxDBPivotGridField;
    cxDBPivotGrid1Field36: TcxDBPivotGridField;
    cxDBPivotGrid1Field37: TcxDBPivotGridField;
    cxDBPivotGrid1Field38: TcxDBPivotGridField;
    cxDBPivotGrid1Field39: TcxDBPivotGridField;
    Panel4: TPanel;
    Label11: TLabel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    dxComponentPrinter1Link6: TcxPivotGridReportLink;
    pag6: TTabSheet;
    DSPFinanciero: TDataSetProvider;
    DSFinanciero: TDataSource;
    cxDBPivotGrid4: TcxDBPivotGrid;
    cxDBPivotGrid4TIPO_OPERACION: TcxDBPivotGridField;
    cxDBPivotGrid4FECHA_OPERACION: TcxDBPivotGridField;
    cxDBPivotGrid4TIPO_COMPROB: TcxDBPivotGridField;
    cxDBPivotGrid4CLASE_COMPROB: TcxDBPivotGridField;
    cxDBPivotGrid4MUESTRACOMPROBANTE: TcxDBPivotGridField;
    cxDBPivotGrid4MUESTRATIPOPAGO: TcxDBPivotGridField;
    cxDBPivotGrid4MUESTRAFORMAPAGO: TcxDBPivotGridField;
    cxDBPivotGrid4MES: TcxDBPivotGridField;
    cxDBPivotGrid4ANNO: TcxDBPivotGridField;
    cxDBPivotGrid4DEBE: TcxDBPivotGridField;
    cxDBPivotGrid4HABER: TcxDBPivotGridField;
    cxPivotGridSummaryDataSet1: TcxPivotGridSummaryDataSet;
    cxDBPivotGrid4Field1: TcxDBPivotGridField;
    CDSFinanciero: TClientDataSet;
    CDSFinancieroTIPO_OPERACION: TStringField;
    CDSFinancieroTIPO_COMPROB: TStringField;
    CDSFinancieroCLASE_COMPROB: TStringField;
    CDSFinancieroMUESTRACOMPROBANTE: TStringField;
    CDSFinancieroMUESTRATIPOPAGO: TStringField;
    CDSFinancieroMUESTRAFORMAPAGO: TStringField;
    CDSFinancieroMES: TSmallintField;
    CDSFinancieroANNO: TSmallintField;
    CDSFinancieroIMPORTE: TFloatField;
    CDSFinancieroMUESTRAMES: TStringField;
    CDSFinancieroMUESTRAOPERACION: TStringField;
    Panel5: TPanel;
    Label12: TLabel;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    dxComponentPrinter1Link7: TcxPivotGridReportLink;
    TabSheet1: TTabSheet;
    DSPEntregas: TDataSetProvider;
    CDSEntregas: TClientDataSet;
    CDSEntregasFECHAVTA: TSQLTimeStampField;
    CDSEntregasANIO: TSmallintField;
    CDSEntregasMES: TSmallintField;
    CDSEntregasCODIGOARTICULO: TStringField;
    CDSEntregasDETALLE_STK: TStringField;
    CDSEntregasCANTIDAD: TFMTBCDField;
    DSEntregas: TDataSource;
    cxDBPivotGrid5: TcxDBPivotGrid;
    cxDBPivotGrid5Field1: TcxDBPivotGridField;
    cxDBPivotGrid5Field2: TcxDBPivotGridField;
    cxDBPivotGrid5Field3: TcxDBPivotGridField;
    cxDBPivotGrid5Field4: TcxDBPivotGridField;
    cxDBPivotGrid5Field5: TcxDBPivotGridField;
    cxDBPivotGrid5Field6: TcxDBPivotGridField;
    dxComponentPrinter1Link8: TcxPivotGridReportLink;
    CDSEntregasMUESTRAMES: TStringField;
    CDSEntregasMUESTRASEMANA: TIntegerField;
    cxDBPivotGrid5Field7: TcxDBPivotGridField;
    Panel6: TPanel;
    BitBtn17: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn15: TBitBtn;
    JvGradient5: TJvGradient;
    CDSEntregasMUESTRADIA: TStringField;
    cxDBPivotGrid5Field8: TcxDBPivotGridField;
    CDSVentasSALDO_BANCO: TFMTBCDField;
    cxDBVerticalGrid1DBEditorRow21: TcxDBEditorRow;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    QFinanciero: TFDQuery;
    CDSFinancieroDEBE: TFloatField;
    CDSFinancieroHABER: TFloatField;
    CDSFinancieroSALDO_CC_VTA: TFloatField;
    CDSFinancieroSALDO_CC_COMPRA: TFloatField;
    CDSFinancieroTOTAL_EFECTIVO: TFloatField;
    CDSFinancieroTOTAL_CHEQUES: TFloatField;
    QMovimientos_2: TFDQuery;
    QVentasFiltrada: TFDQuery;
    QSucursales: TFDQuery;
    QVentas: TFDQuery;
    QVentasDiaria: TFDQuery;
    QEntregas: TFDQuery;
    QSaldoGastos: TFDQuery;
    QGasto_Compra: TFDQuery;
    QInfCruzado: TFDQuery;
    CDSInfCruzadoTOTAL: TFloatField;
    pnEstado: TPanel;
    JvGradient1: TJvGradient;
    QLimpiaCCTemCompra: TFDQuery;
    spArmarTemporalCCCompra: TFDStoredProc;
    QlimpiaCCTemVta: TFDQuery;
    spArmarTemporalCCVta: TFDStoredProc;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    CDSFinancieroFECHA_OPERACION: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros1: TMenuItem;
    BitBtn18: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSalirVentasClick(Sender: TObject);
    procedure btBuscarVtasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btBuscarDiariaClick(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure SpinEdit1Change(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure pnCabeceraDblClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btExcelAnualClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CDSInfCruzadoCalcFields(DataSet: TDataSet);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure btBuscarCruzadoClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure CDSVentasMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSVentasFiltradaMESGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure btExcelFiltradaClick(Sender: TObject);
    procedure CDSSaldoGastosCalcFields(DataSet: TDataSet);
    procedure lbCamposClick(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure CDSMovimientos_2CalcFields(DataSet: TDataSet);
    procedure CDSFinancieroCalcFields(DataSet: TDataSet);
    procedure Label12Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure CDSEntregasCalcFields(DataSet: TDataSet);
    procedure cxDBPivotGrid5FilterChanged(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure LimpiarFiltros1Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Lista:TStringList;
    ArchivoIni        :TIniFile;
   SucursalPorDefecto :Integer;

  end;

var
  FormResumenVentas: TFormResumenVentas;
const Titulos: array [1..10] of integer = (1,3,4,5,7,9,10,12,15,20);
const referencias: array [1..43] of String = ('Vtas.Ctdo.Gravado',
                                              'Vtas.Ctdo.Exento',
                                              'Vtas.Ctdo IVA',
                                              'Vtas Total Contado',
                                              'Vtas.Cta.Cte.Gravado',
                                              'Vtas.Cta.Cte.Exento',
                                              'Vtas.Cta.Cte IVA',
                                              'Vtas Total Cta.Cte.',
                                              'Vtas.NC-Cta.Cte.Gravado',
                                              'Vtas.NC-Cta.Cte.Exento',
                                              'Vtas.NC-Cta.Cte IVA',
                                              'Vtas Total NC.Cta.Cte.',
                                              'Vtas.NC-Ctdo.Gravado',
                                              'Vtas.NC-Ctdo.Exento',
                                              'Vtas.NC-Ctdo.IVA',
                                              'Vtas Total NC.Ctdo.',
                                              'N.Debito Grva.',
                                              'N.Debito Ext.',
                                              'N.Debito IVA',
                                              'Total N.de Debito',
                                              'Total General de Vtas',
                                              'Anulaciones',
                                              'Cobranzas por Recibo',
                                              'Compras Cta.Cte.Grav.',
                                              'Compras Cta.Cte.Exento',
                                              'Compras Cta.Cte.IVA.',
                                              'Total Compras Cta.Cte',
                                              'Compras Ctdo.Neto.Grav.',
                                              'Compras Ctdo.Neto.Exento',
                                              'Compras Ctdo.IVA.',
                                              'Total Compras Ctdo.',
                                              'Compras NC.Neto.Grav.',
                                              'Compras NC.Neto.Exento',
                                              'Compras NC.IVA.',
                                              'Total NC.Total',
                                              'Total General de Compras',
                                              'Pagos a Proveedores',
                                              'Saldo CC.Vta',
                                              'Saldo CC.Comp',
                                              'Total de Ingresos(Cobranza-Vtas)',
                                              'Total de Egresos (Gastos)',
                                              'Retiros - Pagos al Personal',
                                              '********************************');

const Meses: array [1..12] of string = ('Enero','Febrero','Marzo',
                                         'Abril','Mayo','Junio',
                                         'Julio','Agosto','Septiembre',
                                         'Octubre','Noviembre','Diciembre');


implementation

{$R *.dfm}

uses UDMain_FD, UGrafico, UFiltroComprobantesVenta, DMResumenVtas;



procedure TFormResumenVentas.btBuscarDiariaClick(Sender: TObject);
begin
 // kgVentas.ClearGrid;
//  Celda.Create(kgVentas);
  Screen.Cursor:=crHourGlass;
  CDSVentaDiaria.Close;
  CDSVentaDiaria.Params.ParamByName('Desde').Value:=desde.date;
  CDSVentaDiaria.Params.ParamByName('Hasta').Value:=Hasta.date;
  CDSVentaDiaria.Params.ParamByName('suc').Value  :=dbcSucursal.KeyValue;
  CDSVentaDiaria.Open;
  CDSVentaDiaria.First;
  Screen.Cursor:=crDefault;

end;

procedure TFormResumenVentas.btBuscarVtasClick(Sender: TObject);
var h,Paso,I,Puntero:Integer;
begin
 // kgVentas.ClearGrid;
//  Celda.Create(kgVentas);
  Screen.Cursor:=crHourGlass;
  pnEstado.Caption:='Limpiando CtaCte Compra...';
  Application.ProcessMessages;

  QLimpiaCCTemCompra.Close;
  QLimpiaCCTemCompra.ExecSQL;
  QLimpiaCCTemCompra.Close;

  pnEstado.Caption:='Armando CtaCte Compra...';
  Application.ProcessMessages;

  spArmarTemporalCCCompra.Close;
  spArmarTemporalCCCompra.ExecProc;
  spArmarTemporalCCCompra.Close;

  pnEstado.Caption:='Limpiando CtaCte Vta..';
  Application.ProcessMessages;

  QlimpiaCCTemVta.Close;
  QlimpiaCCTemVta.ExecSQL;
  QlimpiaCCTemVta.Close;

  Sleep(100);

  pnEstado.Caption:='Armando CtaCte Vta...';
  Application.ProcessMessages;

  spArmarTemporalCCVta.Close;
  spArmarTemporalCCVta.ExecProc;
  spArmarTemporalCCVta.Close;

  pnEstado.Caption:='Consultando Ventas ...';
  Application.ProcessMessages;

  CDSVentas.Close;
  CDSVentas.Params.ParamByName('Anio').Value:=SpinEdit1.Value;
  CDSVentas.Params.ParamByName('Suc').Value :=dbcSucursal.KeyValue;
  CDSVentas.Open;

  CDSVentas.First;

  pnEstado.Caption:='Consultando Saldos ...';
  Application.ProcessMessages;

  CDSSaldoGastos.Close;
  CDSSaldoGastos.Params.ParamByName('Desde').AsDate :=encodedate(SpinEdit1.Value,1,1);
  CDSSaldoGastos.Params.ParamByName('Hasta').AsDate :=encodedate(SpinEdit1.Value,12,31);
  if VarIsNull(dbcSucursal.KeyValue) Then
    CDSSaldoGastos.Params.ParamByName('suc').AsInteger:=dbcSucursal.KeyValue
  else
    CDSSaldoGastos.Params.ParamByName('suc').AsInteger:= -1;
  CDSSaldoGastos.Params.ParamByName('caja').AsInteger := -1;
  CDSSaldoGastos.Params.ParamByName('rubro').AsString := '***';
  CDSSaldoGastos.Params.ParamByName('codigo').AsString:= '******';
  CDSSaldoGastos.Open;

  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;

  pnEstado.Caption:='Consultando Movimientos ...';
  Application.ProcessMessages;

  CDSMovimientos_2.Close;
  CDSMovimientos_2.Params.ParamByName('Anio').Value := SpinEdit1.Value;// StrToInt( FormatDateTime('YYYY',Desde.Date));
  CDSMovimientos_2.Params.ParamByName('Mes').Value  := 0;// StrToInt( FormatDateTime('YYYY',Desde.Date));
  CDSMovimientos_2.Params.ParamByName('codigo').AsString  := '********';
  CDSMovimientos_2.Params.ParamByName('cliente').AsString := '******';
  CDSMovimientos_2.Params.ParamByName('suc').AsInteger    := dbcSucursal.KeyValue;
  CDSMovimientos_2.Open;

  for i := 0 to cxDBPivotGrid3.FieldCount - 1 do
    cxDBPivotGrid3.Fields[i].ExpandAll;

  pnEstado.Caption:='Consultando Estado Financiero ...';
  Application.ProcessMessages;

  CDSFinanciero.Close;
  CDSFinanciero.Params.ParamByName('anio').Value :=SpinEdit1.Value;
  CDSFinanciero.Open;

//  h:=CDSVentasSUCURSAL.Value;
//  Paso:=1;Puntero:=0;
//  while Not(CDSVentas.Eof) do
//    begin
//      for I := 3 to CDSVentas.FieldCount-1 do
//        begin
//          Paso:=Paso+1;
//        end;
//      CDSVentas.Next;
//      if h<>CDSVentasSUCURSAL.Value then
//        begin
//          Puntero:=Puntero+43;
//          h:=CDSVentasSUCURSAL.Value;
//        end;
//      Paso:=Puntero+1;
//    end;
  for i:=0 to cxDBPivotGrid4.FieldCount-1 do
    cxDBPivotGrid4.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;

  pnEstado.Caption:='...';
  Application.ProcessMessages;

end;

procedure TFormResumenVentas.btSalirVentasClick(Sender: TObject);
begin
  Close;
end;

procedure TFormResumenVentas.Button1Click(Sender: TObject);
begin
 if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormResumenVentas.CDSEntregasCalcFields(DataSet: TDataSet);
begin
 case CDSEntregasMES.Value of
     1:CDSEntregasMUESTRAMES.Value:=' 1-Ene';
     2:CDSEntregasMUESTRAMES.Value:=' 2-Feb';
     3:CDSEntregasMUESTRAMES.Value:=' 3-Mar';
     4:CDSEntregasMUESTRAMES.Value:=' 4-Abr';
     5:CDSEntregasMUESTRAMES.Value:=' 5-May';
     6:CDSEntregasMUESTRAMES.Value:=' 6-Jun';
     7:CDSEntregasMUESTRAMES.Value:=' 7-Jul';
     8:CDSEntregasMUESTRAMES.Value:=' 8-Ago';
     9:CDSEntregasMUESTRAMES.Value:=' 9-Sep';
    10:CDSEntregasMUESTRAMES.Value:='10-Oct';
    11:CDSEntregasMUESTRAMES.Value:='11-Nov';
    12:CDSEntregasMUESTRAMES.Value:='12-Dic';
  end;

  CDSEntregasMUESTRASEMANA.Value:=WeekOfTheMonth(CDSEntregasFECHAVTA.AsDateTime);
  CDSEntregasMUESTRADIA.Value   := FormatDateTime('dd dddd',CDSEntregasFECHAVTA.AsDateTime);
end;

procedure TFormResumenVentas.CDSFinancieroCalcFields(DataSet: TDataSet);
begin
  if CDSFinanciero.State=dsBrowse then CDSFinanciero.Edit;

  CDSFinancieroIMPORTE.AsFloat:=CDSFinancieroDEBE.AsFloat-CDSFinancieroHABER.AsFloat;

  if (CDSFinancieroTIPO_COMPROB.Value='CT') and (CDSFinancieroCLASE_COMPROB.Value='VE') then
    CDSFinancieroIMPORTE.AsFloat:=CDSFinancieroSALDO_CC_VTA.AsFloat;
  if (CDSFinancieroTIPO_COMPROB.Value='CT') and (CDSFinancieroCLASE_COMPROB.Value='CO') then
    CDSFinancieroIMPORTE.AsFloat:=CDSFinancieroSALDO_CC_COMPRA.AsFloat;
  if (CDSFinancieroTIPO_COMPROB.Value='SK') and (CDSFinancieroCLASE_COMPROB.Value='SK') then
    CDSFinancieroIMPORTE.AsFloat:=CDSFinancieroTOTAL_EFECTIVO.AsFloat;
  if (CDSFinancieroTIPO_COMPROB.Value='SC') and (CDSFinancieroCLASE_COMPROB.Value='SC') then
    CDSFinancieroIMPORTE.AsFloat:=CDSFinancieroTOTAL_CHEQUES.AsFloat;



  if CDSFinancieroTIPO_OPERACION.Value='E' Then CDSFinancieroMUESTRAOPERACION.Value:='02-Egresos' else
  if CDSFinancieroTIPO_OPERACION.Value='I' Then CDSFinancieroMUESTRAOPERACION.Value:='01-Ingresos' else
  if CDSFinancieroTIPO_OPERACION.Value='S' Then CDSFinancieroMUESTRAOPERACION.Value:='04-Saldos' else
  if CDSFinancieroTIPO_OPERACION.Value='Z' Then CDSFinancieroMUESTRAOPERACION.Value:='03-Disponibilidad';

 case CDSFinancieroMES.Value of
     1:CDSFinancieroMUESTRAMES.Value:=' 1-Ene';
     2:CDSFinancieroMUESTRAMES.Value:=' 2-Feb';
     3:CDSFinancieroMUESTRAMES.Value:=' 3-Mar';
     4:CDSFinancieroMUESTRAMES.Value:=' 4-Abr';
     5:CDSFinancieroMUESTRAMES.Value:=' 5-May';
     6:CDSFinancieroMUESTRAMES.Value:=' 6-Jun';
     7:CDSFinancieroMUESTRAMES.Value:=' 7-Jul';
     8:CDSFinancieroMUESTRAMES.Value:=' 8-Ago';
     9:CDSFinancieroMUESTRAMES.Value:=' 9-Sep';
    10:CDSFinancieroMUESTRAMES.Value:='10-Oct';
    11:CDSFinancieroMUESTRAMES.Value:='11-Nov';
    12:CDSFinancieroMUESTRAMES.Value:='12-Dic';
  end;

end;

procedure TFormResumenVentas.CDSInfCruzadoCalcFields(DataSet: TDataSet);
begin
  case CDSInfCruzadoMES.Value of
     1:CDSInfCruzadoNOMBREMES.Value:=' 1-Ene';
     2:CDSInfCruzadoNOMBREMES.Value:=' 2-Feb';
     3:CDSInfCruzadoNOMBREMES.Value:=' 3-Mar';
     4:CDSInfCruzadoNOMBREMES.Value:=' 4-Abr';
     5:CDSInfCruzadoNOMBREMES.Value:=' 5-May';
     6:CDSInfCruzadoNOMBREMES.Value:=' 6-Jun';
     7:CDSInfCruzadoNOMBREMES.Value:=' 7-Jul';
     8:CDSInfCruzadoNOMBREMES.Value:=' 8-Ago';
     9:CDSInfCruzadoNOMBREMES.Value:=' 9-Sep';
    10:CDSInfCruzadoNOMBREMES.Value:='10-Oct';
    11:CDSInfCruzadoNOMBREMES.Value:='11-Nov';
    12:CDSInfCruzadoNOMBREMES.Value:='12-Dic';
  end;
  CDSInfCruzadoTOTALREC.Value    :=CDSInfCruzadoTOTAL.ASFloat;
  CDSInfCruzadoTOTALNETOREC.Value:=CDSInfCruzadoTOTALNETO.AsFloat;


  if CDSInfCruzadoTIPOCPBTE.Value='NC' then
    begin
      CDSInfCruzadoTOTALREC.Value    :=CDSInfCruzadoTOTAL.AsFloat*-1;
      CDSInfCruzadoTOTALNETOREC.Value:=CDSInfCruzadoTOTALNETO.AsFloat*-1;
    end;

end;

procedure TFormResumenVentas.CDSMovimientos_2CalcFields(DataSet: TDataSet);
begin
  case CDSMovimientos_2MES.Value of
    1:CDSMovimientos_2MUESTRAMES.Value:=' 1-Enero';
    2:CDSMovimientos_2MUESTRAMES.Value:=' 2-Febrero';
    3:CDSMovimientos_2MUESTRAMES.Value:=' 3-Marzo';
    4:CDSMovimientos_2MUESTRAMES.Value:=' 4-Abril';
    5:CDSMovimientos_2MUESTRAMES.Value:=' 5-Mayo';
    6:CDSMovimientos_2MUESTRAMES.Value:=' 6-Junio';
    7:CDSMovimientos_2MUESTRAMES.Value:=' 7-Julio';
    8:CDSMovimientos_2MUESTRAMES.Value:=' 8-Agosto';
    9:CDSMovimientos_2MUESTRAMES.Value:=' 9-Septiembre';
   10:CDSMovimientos_2MUESTRAMES.Value:='10-Octubre';
   11:CDSMovimientos_2MUESTRAMES.Value:='11-Noviembre';
   12:CDSMovimientos_2MUESTRAMES.Value:='12-Diciembre';
  end;
  CDSMovimientos_2MUESTRASEMANA.Value:=(WeekOfTheMonth(CDSMovimientos_2FECHA.AsDateTime));

end;

procedure TFormResumenVentas.CDSSaldoGastosCalcFields(DataSet: TDataSet);
begin
  CDSSaldoGastosMES.Value:=FormatDateTime('mm-MMMMMM',CDSSaldoGastosFECHAGASTO.AsDateTime);
end;

procedure TFormResumenVentas.CDSVentasFiltradaMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.Value of
    1:Text:='Enero';
    2:Text:='Febrero';
    3:Text:='Marzo';
    4:Text:='Abril';
    5:Text:='Mayo';
    6:Text:='Junio';
    7:Text:='Julio';
    8:Text:='Agosto';
    9:Text:='Septiembre';
    10:Text:='Octubre';
    11:Text:='Noviembre';
    12:Text:='Diciembre';
  end;
end;

procedure TFormResumenVentas.CDSVentasMESGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  case Sender.Value of
    1:Text:='Enero';
    2:Text:='Febrero';
    3:Text:='Marzo';
    4:Text:='Abril';
    5:Text:='Mayo';
    6:Text:='Junio';
    7:Text:='Julio';
    8:Text:='Agosto';
    9:Text:='Septiembre';
    10:Text:='Octubre';
    11:Text:='Noviembre';
    12:Text:='Diciembre';
    end;
end;

procedure TFormResumenVentas.cxDBPivotGrid5FilterChanged(Sender: TObject);
var i:integer;
begin
for i:=0 to cxDBPivotGrid5.FieldCount-1 do
    cxDBPivotGrid5.Fields[i].ExpandAll;
end;

procedure TFormResumenVentas.BitBtn10Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSInfCruzado.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='GastosDetalle';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
               cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid2)
            else
               cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid2);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.BitBtn11Click(Sender: TObject);
begin
  dxComponentPrinter1Link6.Preview(True);
end;

procedure TFormResumenVentas.BitBtn12Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSInfCruzado.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='DetalleArticulosVendidos';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.FileName<>'' then
        begin
          if VirtualUI.Active then
            cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid3)
          else
            cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid3);

          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
            end;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.BitBtn13Click(Sender: TObject);
begin
  dxComponentPrinter1Link7.Preview(True);
end;

procedure TFormResumenVentas.BitBtn14Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSFinanciero.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Finaciero';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid4)
            else
              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid4);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.BitBtn16Click(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSEntregas.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='DetalleEntregas';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.FileName<>'' then
        begin
          if VirtualUI.Active then
            cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid5)
          else
            cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid5);

          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
            end;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.BitBtn17Click(Sender: TObject);
var i:integer;
begin
  CDSEntregas.Close;
  CDSEntregas.Params.ParamByName('Anio').Value:=SpinEdit1.Value;
  CDSEntregas.Open;
  for i:=0 to cxDBPivotGrid5.FieldCount-1 do
    cxDBPivotGrid5.Fields[i].ExpandAll;

end;

procedure TFormResumenVentas.BitBtn18Click(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 IF NOT (CDSVentaDiaria.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='VentasDiarias';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                 SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              cxExportVGToExcel(SaveDialog1.FileName,cxDBVerticalGrid2,True)
            else
              cxExportVGToExcel(SaveDialog1.FileName,cxDBVerticalGrid2,True);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.BitBtn1Click(Sender: TObject);
begin
  case pcVentas.ActivePageIndex of
    0:dxComponentPrinter1Link2.Preview(True);
    1:dxComponentPrinter1Link3.Preview(True);
    2:dxComponentPrinter1Link4.Preview(True);
    3:dxComponentPrinter1Link5.Preview(True);
    7:dxComponentPrinter1Link8.Preview(True);
   end;
end;


procedure TFormResumenVentas.BitBtn6Click(Sender: TObject);
var h,Paso,I,Puntero:Integer;
begin
 // kgVentas.ClearGrid;
//  Celda.Create(kgVentas);
  Screen.Cursor:=crHourGlass;
  CDSVentasFiltrada.Close;
  CDSVentasFiltrada.Params.ParamByName('Anio').Value :=SpinEdit1.Value;
  CDSVentasFiltrada.Params.ParamByName('grupo').Value:=cbGrupo.ItemIndex+1;
  CDSVentasFiltrada.Params.ParamByName('suc').Value  :=dbcSucursal.KeyValue;
  CDSVentasFiltrada.Open;

  CDSVentasFiltrada.First;
 
  Screen.Cursor:=crDefault;

end;

procedure TFormResumenVentas.BitBtn7Click(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormResumenVentas.BitBtn8Click(Sender: TObject);
begin
  dxComponentPrinter1Link5.Preview(True);
end;

procedure TFormResumenVentas.btBuscarCruzadoClick(Sender: TObject);
begin
  CDSInfCruzado.CLose;
  CDSInfCruzado.Params.ParamByName('Desde').AsDate:=Desde_Piv.Date;
  CDSInfCruzado.Params.ParamByName('Hasta').AsDate:=Hasta_Piv.Date;
  CDSInfCruzado.Open;
  cxDBPivotGrid1Field4.ExpandAll;
  cxDBPivotGrid1Field3.ExpandAll;
end;

procedure TFormResumenVentas.BitBtn9Click(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSInfCruzado.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='VtasCruzadas';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog1.FileName,cxDBPivotGrid1,True);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;

            cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.btExcelAnualClick(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 IF NOT (CDSVentas.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Ventas';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                 SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              cxExportVGToExcel(SaveDialog1.FileName,cxDBVerticalGrid1,True)
            else
              cxExportVGToExcel(SaveDialog1.FileName,cxDBVerticalGrid1,True);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;


procedure TFormResumenVentas.btExcelFiltradaClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 IF NOT (CDSVentasFiltrada.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='VentasFiltradas';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportVGToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt,cxDBVerticalGrid3,True)
            else
              cxExportVGToExcel(SaveDialog1.FileName,cxDBVerticalGrid3,True);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenVentas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FreeAndNil(DatosResumenVtas);
  Action:=caFree;
end;

procedure TFormResumenVentas.FormCreate(Sender: TObject);
begin
 // FormResumenVentas.WindowState:=wsMaximized;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosResumenVtas)) THEN
    DatosResumenVtas := TDatosResumenVtas.Create(Self);
  pcVentas.Align           := alClient;
  pcVentas.ActivePageIndex := 0;

  pnPie.Align         :=alBottom;
  pnPieDiaria.Align   :=alBottom;
  pnPieFiltrada.Align :=alBottom;

  //pag2.TabVisible:=False;
  //  AutoSize:=True;
  pcVentas.ActivePageIndex:=0;
  cxDBPivotGrid4.OptionsView.FilterFields:=False;
end;

procedure TFormResumenVentas.FormDestroy(Sender: TObject);
begin
  FormResumenVentas:=nil;
end;

procedure TFormResumenVentas.FormShow(Sender: TObject);
var y,d,m:Word;
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  SucursalPorDefecto   := ArchivoIni.ReadInteger('Sucursal', 'Sucursal',1);
  ArchivoIni.Free;

  SpinEdit1.Value:=YearOf(Date);
  Lista:=TStringList.Create;
  CDSSucursal.Close;
  CDSSucursal.Open;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));

  Desde_Piv.Date       := EncodeDate(y,m,1);
  Hasta_Piv.Date       := IncMonth(Desde_Piv.Date,11);
  dbcSucursal.KeyValue := SucursalPorDefecto;
  dbcSucursal.Enabled  := DMMain_FD.ModificaSucursal;
end;




procedure TFormResumenVentas.Label11Click(Sender: TObject);
begin
  cxDBPivotGrid3.OptionsView.FilterFields:=Not(cxDBPivotGrid3.OptionsView.FilterFields);
end;

procedure TFormResumenVentas.Label12Click(Sender: TObject);
begin
  cxDBPivotGrid4.OptionsView.FilterFields:=Not(cxDBPivotGrid4.OptionsView.FilterFields);
end;

procedure TFormResumenVentas.lbCamposClick(Sender: TObject);
begin
  cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormResumenVentas.LimpiarFiltros1Click(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot

   if pcVentas.ActivePageIndex=3 then
     APivot:=cxDBPivotGrid1
   else
   if pcVentas.ActivePageIndex=4 then
     APivot:=cxDBPivotGrid2
   else
   if pcVentas.ActivePageIndex=5 then
     APivot:=cxDBPivotGrid3
   else
   if pcVentas.ActivePageIndex=6 then
     APivot:=cxDBPivotGrid4
   else
   if pcVentas.ActivePageIndex=7 then
     APivot:=cxDBPivotGrid5;


   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to APivot.FieldCount-1 do
     APivot.Fields[i].ExpandAll;

end;

procedure TFormResumenVentas.pnCabeceraDblClick(Sender: TObject);
begin
  frxReport1.DesignReport();
end;

procedure TFormResumenVentas.SpinEdit1Change(Sender: TObject);
begin
  Desde.Date:=EncodeDate(SpinEdit1.Value,1,1);
  Hasta.Date:=EncodeDate(SpinEdit1.Value,1,DaysInMonth(Desde.Date));
end;

procedure TFormResumenVentas.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
 // btBuscarDiariaClick(Sender);
end;

procedure TFormResumenVentas.UpDown2Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde_Piv.Date,y,m,d);
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

  Desde_Piv.Date:=EncodeDate(y,m,1);
  Hasta_Piv.Date:=IncMonth(Desde_Piv.Date,11);
  btBuscarCruzadoClick(Sender);
end;



end.
