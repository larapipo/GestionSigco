unit UDetalleArticulosVendidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, ComCtrls, StdCtrls, Mask,
  ActnList, Buttons, ToolWin, ExtCtrls, DBClient, Provider,System.Variants,
  DBGrids,  frxDBSet, frxClass, JvComponentBase,
  ImgList, JvExControls, JvGradient, DataExport, DataToXLS, JvFormPlacement,
  JvLabel, FMTBcd, SqlExpr, JvDBLookup, JvExMask, JvToolEdit,
  JvExDBGrids, JvDBGrid, JvBaseEdits,DateUtils, JvDBControls, DBCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, dxSkinsCore, cxCustomPivotGrid, cxDBPivotGrid,
  dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxPSCore, dxPScxCommon,cxExportPivotGridLink,
  Menus, cxFilter, cxData, cxDataStorage, cxDBData, cxGridLevel,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, cxPivotGridChartConnection, cxGridChartView, cxGridDBChartView,
  frxExportPDF, Spin, CheckLst, JvExExtCtrls, JvExtComponent, JvPanel, dxPSGlbl,
  cxCalc, dxPScxGridLnk, dxPScxGridLayoutViewLnk, JvDBLookupComboEdit,
  dxSkinsDefaultPainters, dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage,
  System.Actions, dxPScxExtComCtrlsLnk, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator,cxGridExportLink,IniFiles, dxPScxVGridLnk,VirtualUI_SDK,
  JvExStdCtrls, JvCombobox, Data.DB, CompBuscador,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,StrUtils, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, dxDateRanges, dxScrollbarAnnotations, System.ImageList, Math,
  cxCurrencyEdit, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCChartEditor, frCoreClasses, dxSkinWXI, VclTee.TeeGDIPlus,
  AdvMetroPanel, VCL.TMSFNCChartDatabaseAdapter, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, AdvGroupBox, AdvOfficeButtons;

type
  TFormDetalleArticulosVendidos = class(TFormABMBase)
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos: TClientDataSet;
    DSMovimientos: TDataSource;
    BitBtn4: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frMov: TfrxReport;
    frDBDMov: TfrxDBDataset;
    DSSucursal: TDataSource;
    DSRubros: TDataSource;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    DSVendedores: TDataSource;
    chAgrupado: TCheckBox;
    BuscarArticulo: TAction;
    CDSMovimientosTIPO_CPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosFECHACPBTE: TSQLTimeStampField;
    CDSMovimientosCODIGOARTICULO: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosVENDEDOR: TStringField;
    CDSMovimientosCODIGOCLIENTE: TStringField;
    CDSMovimientosRAZONSOCIAL: TStringField;
    CDSRubro: TClientDataSet;
    DSPRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    DSPSubRubro: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSMarca: TClientDataSet;
    DSPMarca: TDataSetProvider;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSVendedor: TClientDataSet;
    DSPVendedor: TDataSetProvider;
    CDSVendedorCODIGO: TStringField;
    CDSVendedorNOMBRE: TStringField;
    CDSVendedorCOMISION: TFloatField;
    CDSMovimientosPRES_UNIDAD: TStringField;
    CDSMovimientosUNIDAD: TStringField;
    PageControl1: TPageControl;
    tsGeneral: TTabSheet;
    dbgMovimientos: TJvDBGrid;
    tsAgrupado: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DSPMovimientos_2: TDataSetProvider;
    CDSMovimientos_2: TClientDataSet;
    DSMovimientos_2: TDataSource;
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
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    Label9: TLabel;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    PopupMenu1: TPopupMenu;
    MostrarCampos1: TMenuItem;
    Columnas1: TMenuItem;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    pnPieGral: TPanel;
    Label7: TLabel;
    cxDBTextEdit1: TDBText;
    Label8: TLabel;
    cxDBTextEdit2: TDBText;
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
    CDSClientesLIMITE_CREDITO: TFloatField;
    CDSClientesSALDOINICIAL: TFloatField;
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
    Label11: TLabel;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    frxPDFExport1: TfrxPDFExport;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    DSZonas: TDataSource;
    CDSZonas: TClientDataSet;
    DSPZonas: TDataSetProvider;
    CDSZonasID_ZONA: TIntegerField;
    CDSZonasDETALLE: TStringField;
    cxDBPivotGrid1Field24: TcxDBPivotGridField;
    cxDBPivotGrid1Field25: TcxDBPivotGridField;
    cxDBPivotGrid1Field26: TcxDBPivotGridField;
    cxDBPivotGrid1Field27: TcxDBPivotGridField;
    cxDBPivotGrid1Field28: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label15: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    cxDBPivotGrid1Field29: TcxDBPivotGridField;
    cxDBPivotGrid1Field30: TcxDBPivotGridField;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    ToolButton2: TToolButton;
    rgindex: TRadioGroup;
    cxDBPivotGrid1Field31: TcxDBPivotGridField;
    cxDBPivotGrid1Field32: TcxDBPivotGridField;
    cxDBPivotGrid1Field33: TcxDBPivotGridField;
    cxDBPivotGrid1Field34: TcxDBPivotGridField;
    cxDBPivotGrid1Field35: TcxDBPivotGridField;
    CDSMovimientos_2CODIGOARTICULO: TStringField;
    CDSMovimientos_2DETALLE_STK: TStringField;
    CDSMovimientos_2ANIO: TSmallintField;
    CDSMovimientos_2MES: TSmallintField;
    CDSMovimientos_2RUBRO: TStringField;
    CDSMovimientos_2SUBRUBRO: TStringField;
    CDSMovimientos_2RUBRODETALLE: TStringField;
    CDSMovimientos_2SUBRUBRODETALL: TStringField;
    CDSMovimientos_2VENDEDOR: TStringField;
    CDSMovimientos_2SUCURSAL: TStringField;
    CDSMovimientos_2ZONA: TIntegerField;
    CDSMovimientos_2VENDEDOR_CLI: TStringField;
    CDSMovimientos_2CODIGO_CLI: TStringField;
    CDSMovimientos_2NOMBRE_CLI: TStringField;
    CDSMovimientos_2TIPO_VTA: TStringField;
    CDSMovimientos_2LETRA: TStringField;
    CDSMovimientos_2MARCADETALLE: TStringField;
    CDSMovimientos_2DIRECCION: TStringField;
    CDSMovimientos_2ZONADETALLE: TStringField;
    CDSMovimientos_2TIPO: TStringField;
    CDSMovimientos_2CLASE: TStringField;
    CDSMovimientos_2NROCPBTE: TStringField;
    CDSMovimientos_2UNID_VTA: TStringField;
    CDSMovimientos_2FECHA: TSQLTimeStampField;
    CDSMovimientos_2PRESEN_UNIDAD: TStringField;
    CDSMovimientos_2COBRADOR: TStringField;
    CDSMovimientos_2COBRADOR_NOMBRE: TStringField;
    CDSMovimientos_2MUESTRAMES: TStringField;
    CDSMovimientos_2MUESTRASEMANA: TWordField;
    cxDBPivotGrid1Field36: TcxDBPivotGridField;
    cxDBPivotGrid1Field37: TcxDBPivotGridField;
    cxDBPivotGrid1Field38: TcxDBPivotGridField;
    CDSMovimientos_2OBSERVACIONES: TStringField;
    cxDBPivotGrid1Field39: TcxDBPivotGridField;
    QVista: TFDQuery;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    Pag3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSPABC: TDataSetProvider;
    CDSABC: TClientDataSet;
    DSABC: TDataSource;
    CDSABCCODIGOARTICULO: TStringField;
    CDSABCDETALLE_STK: TStringField;
    CDSABCTOTAL_GRAVADO: TFloatField;
    CDSABCTOTAL_EXENTO: TFloatField;
    CDSABCTOTAL: TFloatField;
    CDSABCRUBRO: TStringField;
    CDSABCSUBRUBRO: TStringField;
    CDSABCRUBRODETALLE: TStringField;
    CDSABCSUBRUBRODETALL: TStringField;
    cxGrid1DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    CDSABCPORCENTAJE: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    dxComponentPrinter1Link2: TdxGridReportLink;
    CDSABCMARCA: TStringField;
    CDSABCMARCADETALLE: TStringField;
    CDSABCCODIGO_ALTERNATIVO: TStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    CDSMovimientos_2INSCRIPCION_IVA: TStringField;
    cxDBPivotGrid1Field40: TcxDBPivotGridField;
    CDSMovimientos_2MUESTRA_FECHACORTA: TStringField;
    cxDBPivotGrid1Field41: TcxDBPivotGridField;
    CDSMovimientos_2CATEGORIA: TStringField;
    Label21: TLabel;
    cxDBPivotGrid1Field42: TcxDBPivotGridField;
    CDSMovimientos_2TASA_MANUFACTURA: TStringField;
    cxDBPivotGrid1Field43: TcxDBPivotGridField;
    CDSMovimientos_2CODIGO_ALTERNATIVO: TStringField;
    Label22: TLabel;
    CDSMovimientosCODIGO_ALTERNATIVO: TStringField;
    PopupMenu2: TPopupMenu;
    VerCodigoAlternativo1: TMenuItem;
    cxDBPivotGrid1Field44: TcxDBPivotGridField;
    CDSMovimientos_2COSTO_MONEDA: TIntegerField;
    CDSMovimientos_2SIGNO_MONEDA: TStringField;
    CDSMovimientos_2COSTO_MONEDA_CURSO: TFloatField;
    cxDBPivotGrid1Field45: TcxDBPivotGridField;
    cxDBPivotGrid1Field46: TcxDBPivotGridField;
    cxDBPivotGrid1Field47: TcxDBPivotGridField;
    cxDBPivotGrid1Field48: TcxDBPivotGridField;
    cxDBPivotGrid1Field49: TcxDBPivotGridField;
    cxDBPivotGrid1Field50: TcxDBPivotGridField;
    QMovimientos_2: TFDQuery;
    QMovimientos: TFDQuery;
    QABC: TFDQuery;
    CDSMovimientosCANTIDAD: TFloatField;
    CDSMovimientosTOTAL: TFloatField;
    CDSMovimientosDESCUENTO: TFloatField;
    CDSMovimientosTOTAL_RECALCULADO: TFloatField;
    CDSMovimientosUNITARIO_EXENTO: TFloatField;
    CDSMovimientosUNITARIO_GRAVADO: TFloatField;
    CDSMovimientosUNITARIO_TOTAL: TFloatField;
    CDSMovimientosTOTAL_FINAL: TFloatField;
    CDSMovimientosTOTAL_REC_FINAL: TFloatField;
    CDSMovimientosUNITARIO_FINAL: TFloatField;
    CDSMovimientosPRES_CANTIDAD: TFloatField;
    CDSMovimientos_2UNITARIO_GRAVADO: TFloatField;
    CDSMovimientos_2PRESEN_CANTIDAD: TFloatField;
    CDSMovimientos_2UNITARIO_EXENTO: TFloatField;
    CDSMovimientos_2UNITARIO_TOTAL: TFloatField;
    CDSMovimientos_2IVA_UNITARIO: TFloatField;
    CDSMovimientos_2UNITARIO_FINAL: TFloatField;
    CDSMovimientos_2TOTAL_GRAVADO: TFloatField;
    CDSMovimientos_2TOTAL_EXENTO: TFloatField;
    CDSMovimientos_2TOTAL: TFloatField;
    CDSMovimientos_2IVA_TOTAL: TFloatField;
    CDSMovimientos_2TOTAL_FINAL: TFloatField;
    CDSMovimientos_2IVATASA: TFloatField;
    CDSMovimientos_2COSTO_STOCK: TFloatField;
    CDSMovimientos_2COTIZACION: TFloatField;
    CDSMovimientos_2EXISTENCIA: TFloatField;
    CDSMovimientos_2PRESENT_UNI_TOTALES: TFloatField;
    CDSMovimientos_2CANTIDAD: TFloatField;
    LimpiarFiltros: TAction;
    N1: TMenuItem;
    LimpiarFiltros1: TMenuItem;
    cxDBPivotGrid1Field51: TcxDBPivotGridField;
    CDSMovimientos_2MUESTRA_FECHADIA: TStringField;
    cxDBPivotGrid1Field52: TcxDBPivotGridField;
    pnCabeceraGral: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lb1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label13: TLabel;
    Label18: TLabel;
    UpDown1: TUpDown;
    rgItems: TRadioGroup;
    edDetalle: TEdit;
    chbTodosLosArticulos: TCheckBox;
    cbbTipo: TComboBox;
    cbSucursal: TJvDBLookupCombo;
    cbRubro: TJvDBLookupCombo;
    cbMarca: TJvDBLookupCombo;
    cbSubRubro: TJvDBLookupCombo;
    cbVendedores: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ceCodigo: TJvComboEdit;
    chbporDia: TCheckBox;
    Button1: TButton;
    dbcZonas: TJvDBLookupCombo;
    ceCliente_1: TJvComboEdit;
    edNombreCliente_1: TEdit;
    chbTodoLosClientes: TCheckBox;
    chBuscarCambiar: TCheckBox;
    pnPieAgrupado: TPanel;
    Label10: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    spVistas: TSpeedButton;
    Label19: TLabel;
    btBuscarAnual: TBitBtn;
    btDatosCruzados: TBitBtn;
    btExportarXLS: TBitBtn;
    ceCliente_2: TJvComboEdit;
    edNombreCliente_2: TEdit;
    chTodosLosClientes_2: TCheckBox;
    dbcSucursal: TJvDBLookupCombo;
    spAnio: TSpinEdit;
    spMeses: TSpinEdit;
    dbcVistas: TJvDBLookupCombo;
    rbTipoFecha: TRadioGroup;
    pnPieRanking: TPanel;
    Label20: TLabel;
    btImpABC: TBitBtn;
    btBuscarABC: TBitBtn;
    spAnioABC: TSpinEdit;
    btExportarABCXls: TBitBtn;
    cbMeses: TJvComboBox;
    CDSMovimientosFISICO: TFloatField;
    tsVtasVendedor: TTabSheet;
    cxDBPivotGridVtaVendor: TcxDBPivotGrid;
    cxDBPivotGrid2CODIGOARTICULO: TcxDBPivotGridField;
    cxDBPivotGrid2DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid2ANIO: TcxDBPivotGridField;
    cxDBPivotGrid2MES: TcxDBPivotGridField;
    cxDBPivotGrid2RUBRO: TcxDBPivotGridField;
    cxDBPivotGrid2SUBRUBRO: TcxDBPivotGridField;
    cxDBPivotGrid2RUBRODETALLE: TcxDBPivotGridField;
    cxDBPivotGrid2SUBRUBRODETALL: TcxDBPivotGridField;
    cxDBPivotGrid2VENDEDOR: TcxDBPivotGridField;
    cxDBPivotGrid2SUCURSAL: TcxDBPivotGridField;
    cxDBPivotGrid2ZONA: TcxDBPivotGridField;
    cxDBPivotGrid2VENDEDOR_CLI: TcxDBPivotGridField;
    cxDBPivotGrid2CODIGO_CLI: TcxDBPivotGridField;
    cxDBPivotGrid2NOMBRE_CLI: TcxDBPivotGridField;
    cxDBPivotGrid2TIPO_VTA: TcxDBPivotGridField;
    cxDBPivotGrid2LETRA: TcxDBPivotGridField;
    cxDBPivotGrid2MARCADETALLE: TcxDBPivotGridField;
    cxDBPivotGrid2DIRECCION: TcxDBPivotGridField;
    cxDBPivotGrid2ZONADETALLE: TcxDBPivotGridField;
    cxDBPivotGrid2TIPO: TcxDBPivotGridField;
    cxDBPivotGrid2CLASE: TcxDBPivotGridField;
    cxDBPivotGrid2NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid2UNID_VTA: TcxDBPivotGridField;
    cxDBPivotGrid2FECHA: TcxDBPivotGridField;
    cxDBPivotGrid2PRESEN_UNIDAD: TcxDBPivotGridField;
    cxDBPivotGrid2COBRADOR: TcxDBPivotGridField;
    cxDBPivotGrid2COBRADOR_NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRAMES: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRASEMANA: TcxDBPivotGridField;
    cxDBPivotGrid2OBSERVACIONES: TcxDBPivotGridField;
    cxDBPivotGrid2INSCRIPCION_IVA: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRA_FECHACORTA: TcxDBPivotGridField;
    cxDBPivotGrid2CATEGORIA: TcxDBPivotGridField;
    cxDBPivotGrid2CODIGO_ALTERNATIVO: TcxDBPivotGridField;
    cxDBPivotGrid2UNITARIO_GRAVADO: TcxDBPivotGridField;
    cxDBPivotGrid2PRESEN_CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid2UNITARIO_EXENTO: TcxDBPivotGridField;
    cxDBPivotGrid2UNITARIO_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid2IVA_UNITARIO: TcxDBPivotGridField;
    cxDBPivotGrid2UNITARIO_FINAL: TcxDBPivotGridField;
    cxDBPivotGrid2TOTAL_GRAVADO: TcxDBPivotGridField;
    cxDBPivotGrid2TOTAL_EXENTO: TcxDBPivotGridField;
    cxDBPivotGrid2TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid2IVA_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid2TOTAL_FINAL: TcxDBPivotGridField;
    cxDBPivotGrid2IVATASA: TcxDBPivotGridField;
    cxDBPivotGrid2COSTO_STOCK: TcxDBPivotGridField;
    cxDBPivotGrid2PRESENT_UNI_TOTALES: TcxDBPivotGridField;
    cxDBPivotGrid2CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRA_FECHADIA: TcxDBPivotGridField;
    dxComponentPrinter1Link3: TcxPivotGridReportLink;
    DataToXLS1: TDataToXLS;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    BitBtn3: TBitBtn;
    CDSMovimientos_2COSTO_STOCK_FC: TFloatField;
    cxDBPivotGrid1Field53: TcxDBPivotGridField;
    CDSMovimientos_2MARGEN_VTA: TFloatField;
    CDSMovimientos_2MARGEN_COSTO: TFloatField;
    cxDBPivotGrid1Field54: TcxDBPivotGridField;
    cxDBPivotGrid1Field55: TcxDBPivotGridField;
    CDSMovimientosIVA_TASA: TFloatField;
    CDSMovimientosIVA_IMPORTE: TFloatField;
    CDSMovimientosULT_PRECIO_COMPRA: TFloatField;
    CDSMovimientosGananciaTotalCosto: TAggregateField;
    eGananciaTotal: TDBEdit;
    CDSMovimientosCOSTO: TFloatField;
    rgCostoGanancia: TRadioGroup;
    CDSMovimientosImpTotalGravado: TAggregateField;
    CDSMovimientosImpTotalExento: TAggregateField;
    CDSMovimientosImpTotal: TAggregateField;
    CDSMovimientosImpUnitarioTotal: TAggregateField;
    CDSMovimientosImpTotalNeto: TAggregateField;
    CDSMovimientosCantidadTotal: TAggregateField;
    CDSMovimientosContenidoTotal: TAggregateField;
    eTotalGravado: TDBEdit;
    eTotalCantidad: TDBEdit;
    eTotalUnitario: TDBEdit;
    eTotalGeneral: TDBEdit;
    eTotalNeto: TDBEdit;
    eTotalContenido: TDBEdit;
    CDSMovimientosImpUnitarioFinal: TAggregateField;
    CDSMovimientosImpTotalFInal: TAggregateField;
    CDSMovimientosImpNetoFinal: TAggregateField;
    eTotalExento: TDBEdit;
    eTotalUnitarioFinal: TDBEdit;
    eTotalFinal: TDBEdit;
    eTotalNetoFinal: TDBEdit;
    CDSMovimientosGananciaTotalPrCompra: TAggregateField;
    RxLabel4: TLabel;
    RxLabel5: TLabel;
    RxLabel6: TLabel;
    RxLabel7: TLabel;
    RxLabel8: TLabel;
    JvLabel1: TLabel;
    JvLabel2: TLabel;
    JvLabel3: TLabel;
    JvLabel5: TLabel;
    RxLabel1: TLabel;
    RxLabel2: TLabel;
    JvLabel4: TLabel;
    CDSABCCANTIDAD: TFloatField;
    CDSMovimientosPRESEN_UNITARIA: TFloatField;
    Label23: TLabel;
    cbSucursalABC: TJvDBLookupCombo;
    BuscarABC: TAction;
    CDSMovimientos_2SIGLAS: TStringField;
    CDSMovimientos_2DESCUENTO: TFloatField;
    cxDBPivotGrid1Field56: TcxDBPivotGridField;
    CDSMovimientos_2LINEA_NETO: TFloatField;
    CDSMovimientos_2LINEA_DESCTO_IMPORTE: TFloatField;
    CDSMovimientos_2UNITARIO_SINDESCTO: TFloatField;
    cxDBPivotGrid1Field57: TcxDBPivotGridField;
    cxDBPivotGrid1Field58: TcxDBPivotGridField;
    cxDBPivotGrid1Field59: TcxDBPivotGridField;
    CDSMovimientosDET_RUBRO: TStringField;
    CDSMovimientosDET_SUBRUBRO: TStringField;
    pagComparativa: TTabSheet;
    QVentasArt: TFDQuery;
    QComprasArt: TFDQuery;
    QVentasArtMES: TSmallintField;
    QVentasArtANIO: TSmallintField;
    QVentasArtCODIGOARTICULO: TStringField;
    QVentasArtCANTIDAD: TFloatField;
    QComprasArtMES: TSmallintField;
    QComprasArtANIO: TSmallintField;
    QComprasArtCODIGOARTICULO: TStringField;
    QComprasArtCANTIDAD: TFloatField;
    ArmarGrafico: TAction;
    DSVentasArt: TDataSource;
    QVentasArtANIOMES: TStringField;
    ScrollBox1: TScrollBox;
    pnIzq: TPanel;
    pnVentas: TPanel;
    chartVentas: TTMSFNCChart;
    Splitter1: TSplitter;
    pnCompras: TPanel;
    chartCompras: TTMSFNCChart;
    pnDer: TPanel;
    Panel3: TPanel;
    TMSFNCChart1: TTMSFNCChart;
    Splitter2: TSplitter;
    pnCuatro: TPanel;
    TMSFNCChart4: TTMSFNCChart;
    Splitter3: TSplitter;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    CDSMovimientos_2LISTAPRECIO: TIntegerField;
    cxDBPivotGrid1Field60: TcxDBPivotGridField;
    CDSMovimientos_2IVA_STK: TFloatField;
    cxDBPivotGrid1Field61: TcxDBPivotGridField;
    CDSMovimientos_2CATEGORIA_CLIENTE: TStringField;
    cxDBPivotGrid1Field62: TcxDBPivotGridField;
    N2: TMenuItem;
    RehacerCamposIni: TMenuItem;
    CDSMovimientos_2DETALLE_STK_FACT: TStringField;
    cxDBPivotGrid1Field63: TcxDBPivotGridField;
    CDSMovimientosCATEGORIA_CLIENTE: TStringField;
    rbPorCodigo: TRadioButton;
    rbPorDetalle: TRadioButton;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure cbSubRubroEnter(Sender: TObject);
    procedure chbTodosLosArticulosClick(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure btBuscarAnualClick(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure CDSMovimientos_2CalcFields(DataSet: TDataSet);
    procedure MostrarCampos1Click(Sender: TObject);
    procedure Columnas1Click(Sender: TObject);
    procedure chTodosLosClientes_2Click(Sender: TObject);
    procedure ceCliente_2ButtonClick(Sender: TObject);
    procedure ceCliente_2KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure Button1Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure chAgrupadoClick(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure chbTodoLosClientesClick(Sender: TObject);
    procedure ceCliente_1KeyPress(Sender: TObject; var Key: Char);
    procedure ceCliente_1ButtonClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure btImpABCClick(Sender: TObject);
    procedure btDatosCruzadosClick(Sender: TObject);
    procedure btExportarABCXlsClick(Sender: TObject);
    procedure spAnioABCChange(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure CDSMovimientosCODIGOARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure LimpiarFiltrosExecute(Sender: TObject);
    procedure CDSMovimientosCalcFields(DataSet: TDataSet);
    procedure rgCostoGananciaClick(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure BuscarABCExecute(Sender: TObject);
    procedure cbMesesClick(Sender: TObject);
    procedure cbSucursalABCClick(Sender: TObject);
    procedure spAnioABCClick(Sender: TObject);
    procedure ArmarGraficoExecute(Sender: TObject);
    procedure QVentasArtCalcFields(DataSet: TDataSet);
    procedure RehacerCamposIniClick(Sender: TObject);
  private
    { Private declarations }

    procedure CostoOPrecioCompra;
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    procedure PonerPorcentaje;
    procedure ChatGPT;
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormDetalleArticulosVendidos: TFormDetalleArticulosVendidos;
  FDragDrop : Boolean;
  AMoved    : Boolean;
implementation

uses UBuscadorArticulos, DMBuscadoresForm, UBuscadorClientes,
  UFiltroComprobantesVenta, UVistasGrillas,UDMain_FD, UStock_2;

{$R *.DFM}

procedure TFormDetalleArticulosVendidos.PonerPorcentaje;
       var
  AIndex, ARowIndex: Integer;
  AValue : Variant;
begin
  inherited;
  CDSABC.First;
  CDSABC.DisableControls;
  while Not(CDSABC.Eof) do
    begin
      if CDSABC.State=dsBrowse then
        CDSABC.Edit;

      with cxGrid1DBTableView1.DataController.Summary do
        begin
          AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid1DBTableView1TOTAL);
          AValue :=  FooterSummaryValues[AIndex]
        end;
      if (Not(AValue=null) and (AValue>0)) then
        CDSABCPORCENTAJE.Value:=(CDSABCTOTAL.AsFloat/ AValue)*100;
      CDSABC.Next;
    end;
  CDSABC.First;
  CDSABC.EnableControls;
 // CDSABC.IndexName:='';
//  CDSABC.IndexDefs.Clear;
//  CDSABC.AddIndex('PORCENTAJE', 'PORCENTAJE', [], 'PORCENTAJE'); // Descendente
//  CDSABC.IndexName:='PORCENTAJE';
end;

procedure TFormDetalleArticulosVendidos.QVentasArtCalcFields(DataSet: TDataSet);
begin
  inherited;
  QVentasArtANIOMES.Value:=QVentasArtANIO.AsString+'-'+AnsiRightStr('00'+QVentasArtANIOMES.AsString,2);
end;

procedure TFormDetalleArticulosVendidos.RehacerCamposIniClick(Sender: TObject);
begin
  inherited;
  RehacerCamposIni.Checked:=True;
end;

procedure TFormDetalleArticulosVendidos.rgCostoGananciaClick(Sender: TObject);
begin
  inherited;
  CostoOPrecioCompra;
end;

procedure TFormDetalleArticulosVendidos.CostoOPrecioCompra;
begin
  if rgCostoGanancia.ItemIndex = 0 then
    eGananciaTotal.DataField  :=  'GananciaTotalCosto'
  else
    eGananciaTotal.DataField  :=  'GananciaTotalPrCompra';

end;

procedure TFormDetalleArticulosVendidos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbporDia.Checked=False then
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
      Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
      if chBuscarCambiar.Checked then
        Buscar.Execute;
   end
 else
   if chbporDia.Checked=True then
     begin
       if Button=btnext Then
         Desde.Date := IncDay(Desde.Date,(1))
       else
         if Button=btPrev Then
           Desde.Date := IncDay(Desde.Date,(-1));
       Hasta.Date:=desde.Date;
       if chBuscarCambiar.Checked then
         Buscar.Execute;
   end;
end;

procedure TFormDetalleArticulosVendidos.VerCodigoAlternativo1Click(
  Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=not(VerCodigoAlternativo1.Checked);
  dbgMovimientos.Refresh;
end;

procedure TFormDetalleArticulosVendidos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,System.DateUtils.DaysInMonth(System.SysUtils.Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,System.DateUtils.DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //*************************************************************
  cxDBPivotGridVtaVendor.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArt_Vend');
  //*************************************************************

  spAnio.Value    :=y;
  spAnioABC.Value :=y;

  spMeses.Value   :=m;
end;

procedure TFormDetalleArticulosVendidos.ChatGPT;
var
  CodigoProducto      :String;
  Serie,SerieComp   :TTMSFNCChartSerie;
  Point   :TTMSFNCChartPoint;
begin
    // Configura el gráfico
  chartVentas.BeginUpdate;
  chartVentas.Series.Clear;
  chartVentas.Legend.Visible := False;
  chartVentas.Series.Clear;
  chartVentas.XAxis.Height   := 30;
  chartVentas.Title.Text     :='Ventas..';
  QVentasArt.IndexFieldNames    :='MES';
  QVentasArt.First;
  while not QVentasArt.Eof do


  Serie                      := chartVentas.Series.Add;
  Serie.ChartType            := ctBar;
  Serie.Pie.AutoSize         := True;
  Serie.Points.Clear;
  Serie.Stroke.Color         := gcBlue;
  Serie.Labels.Visible       := True;
  Serie.MinX:=1;
  Serie.MaxX:=100;

      // Itera sobre los resultados de la consulta y agrega series al gráfico
      while not QVentasArt.Eof do
      begin
        CodigoProducto := QVentasArtCODIGOARTICULO.AsString;

        // Busca si ya existe una serie para este producto
      //  ExistingSeries:=nil;


        // Agrega puntos al gráfico (mes, cantidad)
    end;



end;

procedure TFormDetalleArticulosVendidos.ArmarGraficoExecute(Sender: TObject);
var
  Serie,SerieComp   :TTMSFNCChartSerie;
  Point   :TTMSFNCChartPoint;
  FirstDay:Int64;
  LastDay :Int64;

begin
  inherited;

  QVentasArt.Close;
  QVentasArt.ParamByName('desde').AsDateTime   := Desde.Date;
  QVentasArt.ParamByName('hasta').AsDateTime   := Hasta.Date;

  if chbTodosLosArticulos.Checked then
    QVentasArt.ParamByName('codigoArticulo').AsString  :='********'
  else
    QVentasArt.ParamByName('codigoArticulo').AsString  :=ceCodigo.Text;

  if chbTodoLosClientes.Checked then
    QVentasArt.ParamByName('codigo').AsString  :='******'
  else
    QVentasArt.ParamByName('codigo').AsString  :=ceCliente_1.Text;


  QVentasArt.Open;

  chartVentas.BeginUpdate;


  chartVentas.Legend.Visible := False;
  chartVentas.Series.Clear;
  chartVentas.XAxis.Height   := 30;
  chartVentas.Title.Text     :='Ventas..';

  Serie                      := chartVentas.Series.Add;
  Serie.ChartType            := ctBar;
  Serie.Pie.AutoSize         := True;
  Serie.Points.Clear;
  Serie.Stroke.Color         := gcBlue;
  Serie.Labels.Visible       := True;
  Serie.MinX:=1;
  Serie.MaxX:=50;
  QVentasArt.IndexFieldNames    :='MES';
  QVentasArt.First;

  if Not(QVentasArt.IsEmpty) Then
    begin
      FirstDay:= QVentasArtMES.Value;
      while Not(QVentasArt.Eof) do
        begin
          point             := Serie.Points.Add;
          point.Color       := clBlue;// Random(150000);
          point.YValue      := QVentasArtCANTIDAD.AsFloat;
          Point.XValueText  := QVentasArtANIO.Asstring+'-'+QVentasArtMES.AsString;
          Point.LegendText  := FormatSettings.LongMonthNames[QVentasArtMES.AsInteger];

          QVentasArt.Next;
        end;
    end;



  chartVentas.EndUpdate;

//////////////////////////////////////////////////////
  QComprasArt.Filtered:=False;

  QComprasArt.Close;
  QComprasArt.ParamByName('desde').AsDateTime   := Desde.Date;
  QComprasArt.ParamByName('hasta').AsDateTime   := Hasta.Date;
  QComprasArt.Open;

  chartCompras.BeginUpdate;

  chartCompras.Legend.Visible    := False;
  chartCompras.Series.Clear;
  chartCompras.XAxis.Height      := 30;
  chartCompras.Title.Text        :='Compras..';
  SerieComp                      := chartCompras.Series.Add;
  SerieComp.ChartType            := ctBar;
  SerieComp.Pie.AutoSize         := True;
  SerieComp.Points.Clear;
  SerieComp.Stroke.Color         := gcBlue;
  SerieComp.Labels.Visible       := True;
  SerieComp.MinX:=1;
  SerieComp.MaxX:=20;
  QComprasArt.IndexFieldNames    :='MES';
  QComprasArt.First;

  if Not(QComprasArt.IsEmpty) Then
    begin
      FirstDay:= QComprasArtMES.Value;
      while Not(QComprasArt.Eof) do
        begin
          point             := SerieComp.Points.Add;
          point.Color       := clGreen;// Random(150000);
          point.YValue      := QComprasArtCANTIDAD.AsFloat;
          Point.XValueText  := QComprasArtMES.AsString;
          QComprasArt.Next;
        end;
    end;
  chartCompras.EndUpdate;

/////////////////////////////////////////////////////////////////////
  QComprasArt.Filtered:=False;

end;

procedure TFormDetalleArticulosVendidos.btBuscarAnualClick(Sender: TObject);
var AGroupItem: TcxPivotGridGroupItem;
i:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  //cxDBPivotGrid1.BeginUpdate;
  CDSMovimientos_2.Close;
  CDSMovimientos_2.Params.ParamByName('Anio').Value:= spAnio.Value;// StrToInt( FormatDateTime('YYYY',Desde.Date));
  CDSMovimientos_2.Params.ParamByName('Mes').Value := spMeses.Value;// StrToInt( FormatDateTime('YYYY',Desde.Date));

  if chbTodosLosArticulos.Checked then
    CDSMovimientos_2.Params.ParamByName('codigo').AsString  :='********'
  else
    if ceCodigo.Text<>'' then
       CDSMovimientos_2.Params.ParamByName('codigo').AsString  :=ceCodigo.Text
    else
      CDSMovimientos_2.Params.ParamByName('codigo').AsString  :='********';

  if chTodosLosClientes_2.Checked then
    CDSMovimientos_2.Params.ParamByName('cliente').AsString  :='******'
  else
    if ceCliente_2.Text<>'' then
      CDSMovimientos_2.Params.ParamByName('cliente').AsString  :=ceCliente_2.Text
    else
      CDSMovimientos_2.Params.ParamByName('cliente').AsString  :='******';

  CDSMovimientos_2.Params.ParamByName('suc').AsInteger  :=dbcSucursal.KeyValue;
  if rbTipoFecha.ItemIndex=0 then
    CDSMovimientos_2.Params.ParamByName('Tipo_Fecha').AsString :='F'
  else
    CDSMovimientos_2.Params.ParamByName('Tipo_Fecha').AsString :='V';
  CDSMovimientos_2.Open;

 // cxDBPivotGrid1.BeginUpdate;
  with cxDBPivotGrid1.ViewData do
  begin
    for I := 0 to RowCount - 1 do
    begin
      AGroupItem:=cxDBPivotGrid1.ViewData.Rows[i].GroupItem;
      AGroupItem.Expanded:=True;
    end;
  end;
//  cxDBPivotGrid1.EndUpdate;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;
 // cxDBPivotGrid1.EndUpdate;

end;

procedure TFormDetalleArticulosVendidos.btImpABCClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link2.Caption:='ABC de Articulo Año '+spAnio.Text;
  dxComponentPrinter1Link2.Preview(True);
end;

procedure TFormDetalleArticulosVendidos.btDatosCruzadosClick(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=1 then
    dxComponentPrinter1Link1.Preview(True)
  else
    if PageControl1.ActivePageIndex=3 then
      dxComponentPrinter1Link3.Preview(True)

end;

procedure TFormDetalleArticulosVendidos.btExportarABCXlsClick(Sender: TObject);
begin
  inherited;
  // cxGrid a Excel
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog.FileName:='AbcProductos';
  SaveDialog.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  if SaveDialog.Execute Then
   if SaveDialog.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
           SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog.FileName);
     end;
end;

procedure TFormDetalleArticulosVendidos.btExportarXLSClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSMovimientos_2.IsEmpty) THEN
    BEGIN
      if PageControl1.ActivePageIndex=1 then
        begin
          cxDBPivotGrid1.OptionsView.DataFields     :=False;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
          cxDBPivotGrid1.OptionsView.RowFields      :=False;
          cxDBPivotGrid1.OptionsView.FilterFields   :=False;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
          SaveDialog.FileName:='MovimientosArt';
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
          cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
        end
      else
        if PageControl1.ActivePageIndex=3 then
          begin
            //cxDBPivotGridVtaVendor.OptionsView.DataFields     :=False;
//            cxDBPivotGridVtaVendor.OptionsView.ColumnFields   :=False;
//            cxDBPivotGridVtaVendor.OptionsView.RowFields      :=False;
//            cxDBPivotGridVtaVendor.OptionsView.FilterFields   :=False;
//            cxDBPivotGridVtaVendor.OptionsView.FilterSeparator:=False;
            SaveDialog.FileName:='MovimientosArtVdor';
            SaveDialog.DefaultExt:='XLS';
            if VirtualUI.Active then
               SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
            if SaveDialog.Execute Then
              begin
                if VirtualUI.Active then
                 if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                   SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

                cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGridVtaVendor,False);
                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog.FileName);
              end;

           // cxDBPivotGridVtaVendor.OptionsView.DataFields     :=True;
           // cxDBPivotGridVtaVendor.OptionsView.ColumnFields   :=True;
           // cxDBPivotGridVtaVendor.OptionsView.RowFields      :=True;
           // cxDBPivotGridVtaVendor.OptionsView.FilterSeparator:=True;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormDetalleArticulosVendidos.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
     VirtualUI.StdDialogs:=False;
  IF NOT (CDSMovimientos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='MovimientosArt';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
     END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormDetalleArticulosVendidos.BuscarABCExecute(Sender: TObject);
begin
  inherited;
  CDSABC.Close;
  CDSABC.Params.ParamByName('anio').Value     := spAnioABC.Value;
  CDSABC.Params.ParamByName('mes').Value      := cbMeses.ItemIndex;
  CDSABC.Params.ParamByName('sucursal').Value := cbSucursalABC.KeyValue;

  CDSABC.Open;

  CDSABC.IndexName:='';
  CDSABC.IndexDefs.Clear;

  PonerPorcentaje;
end;

procedure TFormDetalleArticulosVendidos.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       CDSStock.Close;
       CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       CDSStock.Open;
       if not(CDSStock.IsEmpty) then
         begin
           edDetalle.Text:=CDSStockDETALLE_STK.Value;
           ceCodigo.Text :=CDSStockCODIGO_STK.Value;
           Buscar.Execute;
         end
       else
         begin
           edDetalle.Text:='';
           ceCodigo.Text :='';
         end;
       CDSStock.Close;

    end;

end;

procedure TFormDetalleArticulosVendidos.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor            := crHourGlass;

  CDSMovimientos.Close;
  CDSMovimientos.IndexDefs.Clear;
  CDSMovimientos.IndexName:='';
  CDSMovimientos.Params.ParamByName('desde').AsDate      := Desde.Date;
  CDSMovimientos.Params.ParamByName('hasta').AsDate      := Hasta.Date;
  CDSMovimientos.Params.ParamByName('rubro').AsString    := cbRubro.Value;
  CDSMovimientos.Params.ParamByName('Subrubro').AsString := cbSubRubro.Value;
  CDSMovimientos.Params.ParamByName('Marca').AsString    := cbMarca.Value;
  CDSMovimientos.Params.ParamByName('Vend').AsString     := cbVendedores.Value;
  CDSMovimientos.Params.ParamByName('tipo').AsString     := cbbTipo.Text;
  CDSMovimientos.Params.ParamByName('cliente').AsString  := '******';

  if chbTodosLosArticulos.Checked then
    CDSMovimientos.Params.ParamByName('codigo').AsString  :='********'
  else
    begin
      if ceCodigo.Text<>'' then
        CDSMovimientos.Params.ParamByName('codigo').AsString  :=ceCodigo.Text
      else
        CDSMovimientos.Params.ParamByName('codigo').AsString  :='********';
    end;

 if chbTodoLosClientes.Checked then
    CDSMovimientos.Params.ParamByName('cliente').AsString  :='******'
  else
    begin
      if ceCliente_1.Text<>'' then
        CDSMovimientos.Params.ParamByName('cliente').AsString  :=ceCliente_1.Text
      else
        CDSMovimientos.Params.ParamByName('cliente').AsString  :='******';
    end;

   if rgItems.ItemIndex=0 Then
    CDSMovimientos.Params.ParamByName('declarado_iva').AsString:='*'
  else
    if rgItems.ItemIndex=1 Then
      CDSMovimientos.Params.ParamByName('declarado_iva').AsString:='S'
    else
      if rgItems.ItemIndex=2 Then
        CDSMovimientos.Params.ParamByName('declarado_iva').AsString:='N';
  if varisnull(cbSucursal.KeyValue) then
    CDSMovimientos.Params.ParamByName('sucursal').AsInteger:=-1
  else
    CDSMovimientos.Params.ParamByName('sucursal').AsInteger:=cbSucursal.KeyValue;
  CDSMovimientos.Params.ParamByName('zona').AsInteger:=dbcZonas.KeyValue;

  CDSMovimientos.Open;

 // ArmarGrafico.Execute;
  Screen.Cursor          := crDefault;
end;

procedure TFormDetalleArticulosVendidos.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
end;

procedure TFormDetalleArticulosVendidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //*************************************************************
  //*************************************************************
  cxDBPivotGridVtaVendor.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArt_Vend');
  //*************************************************************


  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaVtaArticulos.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.WriteBool('codigo', 'codigoalternativo', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteInteger('ganancia','UltPrecioCompra',rgCostoGanancia.ItemIndex);

  ArchivoIni.Free;
  inherited;
  CDSSucursal.Close;
  CDSRubro.Close;
  CDSSubRubro.Close;
  CDSMarca.Close;
  CDSVendedor.Close;
  CDSZonas.Close;
  CDSVista.Close;

  Action:=caFree;
  if RehacerCamposIni.Checked Then
    begin
      DeleteFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
      DeleteFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArt_Vend');
    end;

end;

procedure TFormDetalleArticulosVendidos.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  CDSMarca.Open;
  CDSVendedor.Open;
  CDSZonas.Open;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='VTAARTICULOS';
  CDSVista.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaVtaArticulos.ini');

  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  VerCodigoAlternativo1.Checked                := ArchivoIni.ReadBool('codigo', 'codigoalternativo', False);
  rgCostoGanancia.ItemIndex                    := ArchivoIni.ReadInteger('ganancia','UltPrecioCompra',0);

  CostoOPrecioCompra;

  ArchivoIni.Free;

  PageControl1.ActivePageIndex                    := 0;
  cxDBPivotGrid1.OptionsView.FilterFields         := False;
  cxDBPivotGridVtaVendor.OptionsView.FilterFields := False;

  cbSucursal.KeyValue                     := SucursalPorDefecto;
  dbcSucursal.KeyValue                    := SucursalPorDefecto;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;

  RehacerCamposIni.Checked:=False;

  //  for i := 0 to chOpSumas.Count - 1 do
//    chOpSumas.Checked[i]:=True;
end;

procedure TFormDetalleArticulosVendidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormDetalleArticulosVendidos:=Nil;
end;

procedure TFormDetalleArticulosVendidos.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 IF (Key = #13) AND
    (NOT (ActiveControl IS TJvComboEdit)) Then
  inherited;

end;

procedure TFormDetalleArticulosVendidos.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=dbgMovimientos.DataSource.DataSet.FieldByName('CODIGOARTICULO').AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormDetalleArticulosVendidos.dbgMovimientosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
  inherited;
 // para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgMovimientos.DataSource.DataSet as TClientDataSet do
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

procedure TFormDetalleArticulosVendidos.ImprimirExecute(Sender: TObject);
begin
  inherited;

  if chAgrupado.Checked=False then
    begin
      if chbTodosLosArticulos.Checked=false then
        FrMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoArticulosVendidos_Agrupado_clientes.fr3')
      else
        FrMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoArticulosVendidos.fr3');
    end
  else
    if chAgrupado.Checked=True then
      begin
        case rgindex.ItemIndex of
         0: CDSMovimientos.IndexFieldNames:='CodigoArticulo';
         1: CDSMovimientos.IndexFieldNames:='detalle';
        end;
     //   CDSMovimientos.IndexFieldNames:='CodigoArticulo';
        FrMov.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoArticulosVendidos_Agrupado.fr3');
      end;
  frMov.Variables['Desde']   :=''''+Desde.Text+'''';
  frMov.Variables['Hasta']   :=''''+Hasta.Text+'''';
  frMov.Variables['Rubro']   :=''''+cbRubro.Text+'''';
  frMov.Variables['SubRubro']:=''''+cbSubRubro.Text+'''';
  frMov.Variables['Marca']   :=''''+cbMarca.Text+'''';
  frMov.Variables['Vendedor']:=''''+cbVendedores.Text+'''';
  frMov.Variables['Sucursal']:=''''+cbSucursal.Text+'''';
  frMov.Variables['cliente'] :=''''+edNombreCliente_1.Text+'''';

 // frCtaCte.PrepareReport;
  frMov.ShowReport;

end;

procedure TFormDetalleArticulosVendidos.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  i:Integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;



procedure TFormDetalleArticulosVendidos.ceCliente_1ButtonClick(
  Sender: TObject);
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente_1.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente_1.Text := CDSClientesNOMBRE.Value;
          ceCliente_1.SetFocus;
          ceCliente_1.SelectAll;
         // Buscar.Execute;
        END;
    end;


end;

procedure TFormDetalleArticulosVendidos.ceCliente_1KeyPress(Sender: TObject;
  var Key: Char);
VAR
  Dato: STRING;
  Aux:Real;
BEGIN
  IF Key = #13 THEN
    BEGIN
     key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente_1.Text))) + ceCliente_1.Text;
      ceCliente_1.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente_1.Text := CDSClientesNOMBRE.Value;
      ceCliente_1.SetFocus;
      ceCliente_1.SelectAll;
    END;
end;

procedure TFormDetalleArticulosVendidos.Label12Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormDetalleArticulosVendidos.Label16Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);

end;

procedure TFormDetalleArticulosVendidos.LimpiarFiltrosExecute(Sender: TObject);
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

procedure TFormDetalleArticulosVendidos.MostrarCampos1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGridVtaVendor.OptionsView.FilterFields:=Not(cxDBPivotGridVtaVendor.OptionsView.FilterFields);
  end;

procedure TFormDetalleArticulosVendidos.cbMesesClick(Sender: TObject);
begin
  inherited;
  BuscarABC.Execute;
end;

procedure TFormDetalleArticulosVendidos.cbSubRubroEnter(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=cbRubro.KeyValue;
  CDSSubRubro.Open;
end;

procedure TFormDetalleArticulosVendidos.cbSucursalABCClick(Sender: TObject);
begin
  inherited;
  BuscarABC.Execute;
end;

procedure TFormDetalleArticulosVendidos.CDSMovimientosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSMovimientosFISICO.AsFloat          := CDSMovimientosCANTIDAD.Value*-1;
end;

procedure TFormDetalleArticulosVendidos.CDSMovimientosCODIGOARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  text:=CDSMovimientosCODIGOARTICULO.Value;
  if VerCodigoAlternativo1.Checked then
    Text:=CDSMovimientosCODIGO_ALTERNATIVO.Value;
end;

procedure TFormDetalleArticulosVendidos.CDSMovimientos_2CalcFields(
  DataSet: TDataSet);
begin
  inherited;
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
  CDSMovimientos_2MUESTRASEMANA.Value       := (WeekOfTheMonth(CDSMovimientos_2FECHA.AsDateTime));
  CDSMovimientos_2MUESTRA_FECHACORTA.Value  := FormatDateTime('dd/mm',CDSMovimientos_2FECHA.AsDateTime);
  CDSMovimientos_2COSTO_MONEDA_CURSO.AsFloat:= CDSMovimientos_2COSTO_STOCK.AsFloat*CDSMovimientos_2COTIZACION.AsFloat;
  CDSMovimientos_2MUESTRA_FECHADIA.Value    := FormatDateTime('dd',CDSMovimientos_2FECHA.AsDateTime);

  //  with cxGrid1DBTableView1.DataController.Summary do
//    begin
//      AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid1DBTableView1TOTAL);
//      AValue :=  FooterSummaryValues[AIndex]
//    end;
//
//  // AIndex := cxGrid1DBTableView1.DataController.Summary.DefaultGroupSummaryItems.IndexOfItemLink(cxGrid1DBTableView1TOTAL);
//  // ARowIndex := cxGrid1DBTableView1.DataController.FocusedRowIndex;
//  // AValue := cxGrid1DBTableView1.DataController.Summary.GroupSummaryDisplayValues[ARowIndex, 0, AIndex];
//
//
//  if (Not(AValue=null) and (AValue>0)) then
//    CDSMovimientos_2PORCENTAJECANTIDAD.Value:=StrToFloat(FORMATFLOAT('0.00',(CDSMovimientos_2TOTAL.AsFloat/ AValue)*100));
end;

procedure TFormDetalleArticulosVendidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frMov.DesignReport;
end;

procedure TFormDetalleArticulosVendidos.spAnioABCChange(Sender: TObject);
begin
  inherited;
  BuscarABC.Execute;
 // btBuscarABC.Click;
end;

procedure TFormDetalleArticulosVendidos.spAnioABCClick(Sender: TObject);
begin
  inherited;
  BuscarABC.Execute;
end;

procedure TFormDetalleArticulosVendidos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormDetalleArticulosVendidos.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='VTAARTICULOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='VTAARTICULOS';
  CDSVista.Open;


end;


procedure TFormDetalleArticulosVendidos.ceCliente_2ButtonClick(Sender: TObject);
begin
 inherited;
 IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
    BEGIN
      ceCliente_2.Text := FormBuscadorClientes.Codigo;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value :=FormBuscadorClientes.Codigo;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        BEGIN
          edNombreCliente_2.Text := CDSClientesNOMBRE.Value;
          ceCliente_2.SetFocus;
          ceCliente_2.SelectAll;
         // Buscar.Execute;
        END;
    end;

end;



procedure TFormDetalleArticulosVendidos.ceCliente_2KeyPress(Sender: TObject; var Key: Char);
var  Dato: STRING;
begin
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceCliente_2.Text))) + ceCliente_2.Text;
      ceCliente_2.Text := Dato;
      CDSClientes.Close;
      CDSClientes.Params.ParamByName('Codigo').Value := Dato;
      CDSClientes.Open;
      IF NOT (CDSClientes.eof) THEN
        edNombreCliente_2.Text := CDSClientesNOMBRE.Value;
      ceCliente_2.SetFocus;
      ceCliente_2.SelectAll;
   //   Buscar.Execute;
    END;
end;

procedure TFormDetalleArticulosVendidos.chAgrupadoClick(Sender: TObject);
begin
  inherited;
  rgindex.Enabled:=chAgrupado.Checked;
end;


procedure TFormDetalleArticulosVendidos.chbTodosLosArticulosClick(
  Sender: TObject);
begin
  inherited;
  if ( chbTodosLosArticulos.Checked=True ) then
    begin
      ceCodigo.Color   := clBtnFace;
      ceCodigo.Enabled := False;
      ceCodigo.Text    := '';
      edDetalle.Text   := '';
    end
  else
    begin
      ceCodigo.Color  :=clWindow;
      ceCodigo.Enabled:=True;
    end;
 // Buscar.Execute;
end;

procedure TFormDetalleArticulosVendidos.chbTodoLosClientesClick(Sender: TObject);
begin
  inherited;
if ( chbTodoLosClientes.Checked=True ) then
    begin
      ceCliente_1.Color     := clBtnFace;
      ceCliente_1.Enabled   := False;
      ceCliente_1.Text      := '';
      edNombreCliente_1.Text:=' ';
    end
  else
    begin
      ceCliente_1.Color   := clWindow;
      ceCliente_1.Enabled := True;
    end;
end;

procedure TFormDetalleArticulosVendidos.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
 end;

procedure TFormDetalleArticulosVendidos.chTodosLosClientes_2Click( Sender: TObject);
begin
  inherited;
  if ( chTodosLosClientes_2.Checked=True ) then
    begin
      ceCliente_2.Color   := clBtnFace;
      ceCliente_2.Enabled := False;
    end
  else
    begin
      ceCliente_2.Color   := clWindow;
      ceCliente_2.Enabled := True;
    end;
end;

procedure TFormDetalleArticulosVendidos.Columnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGridVtaVendor.OptionsView.RowFields:=Not(cxDBPivotGridVtaVendor.OptionsView.RowFields);
end;

procedure TFormDetalleArticulosVendidos.cxDBPivotGrid1MouseDown(Sender: TObject;
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


procedure TFormDetalleArticulosVendidos.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormDetalleArticulosVendidos.cxDBPivotGrid1MouseUp(Sender: TObject;
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

end.
