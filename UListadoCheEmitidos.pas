unit UListadoCheEmitidos;

interface

uses
  Windows,UABMBase,Messages,Menus,VCL.Forms, SysUtils,System.Variants,
  Data.FMTBcd, cxGraphics, cxControls,VCL.Graphics,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlueprint, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinHighContrast, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinOffice2007Black, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  Data.SqlExpr, frxCross, Vcl.Dialogs, DataExport, DataToXLS, frxClass,
  frxExportPDF, Datasnap.Provider, Data.DB, Datasnap.DBClient, frxDBSet,
  Vcl.ComCtrls, cxCustomPivotGrid, JvExDBGrids, JvDBGrid,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit,
  Vcl.DBCtrls, JvDBCheckBox, JvExControls, JvDBLookup, Vcl.ExtCtrls,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, Vcl.Controls, System.Classes,
  System.Actions, Vcl.ActnList, JvLabel, JvDBControls, JvGradient, Vcl.Buttons,
  Vcl.ToolWin,DateUtils,cxExportPivotGridLink,Data.DBXCommon,
  dxSkinsDefaultPainters, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven,
  dxSkinSharp, dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinValentine, dxSkinXmas2008Blue,VirtualUI_SDK, CompBuscador,IniFiles,
  Vcl.CheckLst, JvExExtCtrls, JvExtComponent, JvPanel, AdvSearchList,
  AdvSearchEdit, DBAdvSearchEdit, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinscxPCPainter, cxFilter, cxData,
  cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, cxCheckBox,
  dxSkinBlack, cxDBPivotGrid, FireDAC.Stan.Intf, FireDAC.Stan.Option,StrUtils,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxTextEdit, AdvGroupBox, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList, cxCurrencyEdit,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, VCLTee.TeeFunci, VCLTee.TeeDBCrossTab,
  JvBaseEdits, frCoreClasses;

type
  TFormListadoCheEmitidos = class(TFormABMBase)
    DSCheEmitidos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    frChe: TfrxReport;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDBDCheEmitidos: TfrxDBDataset;
    CDSCheEmitidos: TClientDataSet;
    DSPCheEmitidos: TDataSetProvider;
    CDSCheEmitidosORDEN_DE: TStringField;
    CDSCheEmitidosNUMERO: TIntegerField;
    CDSCheEmitidosID_CHEQUERA: TIntegerField;
    CDSCheEmitidosID_CAJA: TIntegerField;
    CDSCheEmitidosID_CUENTA_CAJA: TIntegerField;
    CDSCheEmitidosID_CUENTA_BANCO: TIntegerField;
    CDSCheEmitidosID_BANCO: TIntegerField;
    CDSCheEmitidosID_MOV_CAJA: TIntegerField;
    CDSCheEmitidosMUESTRABANCO: TStringField;
    UpDown1: TUpDown;
    CDSCheEmitidosANULADO: TStringField;
    DSQMov: TDataSource;
    dbcCuentas: TJvDBLookupCombo;
    frxPDFExport1: TfrxPDFExport;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    ExportarXLS: TAction;
    ToolButton1: TToolButton;
    BitBtn4: TBitBtn;
    frxCrossObject1: TfrxCrossObject;
    CDSCheEmitidosID_CHEQUE_PRO: TIntegerField;
    CDSCheEmitidosDEBITADO: TStringField;
    btImpCuadro: TBitBtn;
    ImpCuadro: TAction;
    SacarCheBanco: TAction;
    pm1: TPopupMenu;
    SacarCheBanco1: TMenuItem;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    DSBancos: TDataSource;
    spSacarCheBanco_: TSQLStoredProc;
    CDSCheEmitidosMUESTRANOMBRECTACAJA: TStringField;
    Label4: TLabel;
    dbcCtaCaja: TJvDBLookupCombo;
    DSCtaCaja: TDataSource;
    DesconciliarTodos: TAction;
    DesconciliarTodos1: TMenuItem;
    pcDatos: TPageControl;
    pag1: TTabSheet;
    dbgMov: TDBGrid;
    pag2: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    DSControlMovBco: TDataSource;
    poMenuMov: TPopupMenu;
    BorrarMov: TAction;
    VerCpbte: TAction;
    ModificarChe: TAction;
    N1: TMenuItem;
    ModificarChe1: TMenuItem;
    TabSheet1: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    CamposxColumnas1: TMenuItem;
    CamposdeDatos1: TMenuItem;
    Filtros1: TMenuItem;
    CamposxRenglones1: TMenuItem;
    BitBtn1: TBitBtn;
    Label5: TLabel;
    CDSCheEmitidosCUIT: TStringField;
    CDSCheEmitidosNOMBRECTABANCO: TStringField;
    Label6: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    pnTotales: TJvPanel;
    Label7: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label8: TLabel;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    spDebitar_: TSQLStoredProc;
    DebitarCheque: TAction;
    N2: TMenuItem;
    DebitarCheque1: TMenuItem;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    CDSCheEmitidosCONCILIADO: TStringField;
    cxgChequesDBTableView1: TcxGridDBTableView;
    cxgChequesLevel1: TcxGridLevel;
    cxgCheques: TcxGrid;
    cxgChequesDBTableView1ID_CUENTA_BANCO: TcxGridDBColumn;
    cxgChequesDBTableView1NOMBRECTABANCO: TcxGridDBColumn;
    cxgChequesDBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxgChequesDBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxgChequesDBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxgChequesDBTableView1FECHA_DEBITO: TcxGridDBColumn;
    cxgChequesDBTableView1ORDEN_DE: TcxGridDBColumn;
    cxgChequesDBTableView1NUMERO: TcxGridDBColumn;
    cxgChequesDBTableView1IMPORTE: TcxGridDBColumn;
    cxgChequesDBTableView1ID_CHEQUERA: TcxGridDBColumn;
    cxgChequesDBTableView1ID_CAJA: TcxGridDBColumn;
    cxgChequesDBTableView1ID_CUENTA_CAJA: TcxGridDBColumn;
    cxgChequesDBTableView1ID_BANCO: TcxGridDBColumn;
    cxgChequesDBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxgChequesDBTableView1ANULADO: TcxGridDBColumn;
    cxgChequesDBTableView1ID_CHEQUE_PRO: TcxGridDBColumn;
    cxgChequesDBTableView1DEBITADO: TcxGridDBColumn;
    cxgChequesDBTableView1MUESTRANOMBRECTACAJA: TcxGridDBColumn;
    cxgChequesDBTableView1CUIT: TcxGridDBColumn;
    cxgChequesDBTableView1CONCILIADO: TcxGridDBColumn;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    QBancos_: TFDQuery;
    QMov_: TFDQuery;
    QCheEmitidos: TFDQuery;
    QCheEmitidosID_CHEQUERA: TIntegerField;
    QCheEmitidosID_CAJA: TIntegerField;
    QCheEmitidosID_CUENTA_CAJA: TIntegerField;
    QCheEmitidosID_CUENTA_BANCO: TIntegerField;
    QCheEmitidosANULADO: TStringField;
    QCheEmitidosID_BANCO: TIntegerField;
    QCheEmitidosID_MOV_CAJA: TIntegerField;
    QCheEmitidosIMPORTE: TFloatField;
    QCheEmitidosNUMERO: TIntegerField;
    QCheEmitidosID_CHEQUE_PRO: TIntegerField;
    QCheEmitidosORDEN_DE: TStringField;
    QCheEmitidosMUESTRABANCO: TStringField;
    QCheEmitidosDEBITADO: TStringField;
    QCheEmitidosMUESTRANOMBRECTACAJA: TStringField;
    QCheEmitidosCUIT: TStringField;
    QCheEmitidosNOMBRECTABANCO: TStringField;
    QCheEmitidosNUMERO_CHEQUE: TIntegerField;
    QCheEmitidosCONCILIADO: TStringField;
    CDSCheEmitidosIMPORTE: TFloatField;
    QCtaCaja_: TFDQuery;
    QControlMovBco_: TFDQuery;
    QVista: TFDQuery;
    pnCabecera: TPanel;
    rgFechaDe: TAdvOfficeRadioGroup;
    rgConciliados: TAdvOfficeRadioGroup;
    rgFiltro: TAdvOfficeRadioGroup;
    QMov_ID_MOV_CAJA: TIntegerField;
    QMov_ID_CAJA: TIntegerField;
    QMov_TIPO_OPERACION: TStringField;
    QMov_TIPO_COMPROB: TStringField;
    QMov_CLASE_COMPROB: TStringField;
    QMov_ID_COMPROBANTE: TIntegerField;
    QMov_NRO_COMPROBANTE: TStringField;
    QMov_HABER: TFloatField;
    QMov_DEBE: TFloatField;
    QMov_ID_TPAGO: TIntegerField;
    QMov_ID_FPAGO: TIntegerField;
    QMov_UNIDADES: TFloatField;
    QMov_COTIZACION: TFloatField;
    QMov_ID_CUENTA_CAJA: TIntegerField;
    QMov_MONEDA: TIntegerField;
    QMov_MUESTRACTACAJA: TStringField;
    pnPieMov: TPanel;
    pnPieCross: TPanel;
    QBuscaChe: TFDQuery;
    QBuscaCheID_CHEQUE_PRO: TIntegerField;
    pag4: TTabSheet;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGrid2ID_CUENTA_BANCO: TcxDBPivotGridField;
    cxDBPivotGrid2NOMBRECTABANCO: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRABANCO: TcxDBPivotGridField;
    cxDBPivotGrid2FECHA_EMISION: TcxDBPivotGridField;
    cxDBPivotGrid2FECHA_COBRO: TcxDBPivotGridField;
    cxDBPivotGrid2FECHA_DEBITO: TcxDBPivotGridField;
    cxDBPivotGrid2ORDEN_DE: TcxDBPivotGridField;
    cxDBPivotGrid2NUMERO: TcxDBPivotGridField;
    cxDBPivotGrid2ID_CHEQUERA: TcxDBPivotGridField;
    cxDBPivotGrid2ID_CAJA: TcxDBPivotGridField;
    cxDBPivotGrid2ID_CUENTA_CAJA: TcxDBPivotGridField;
    cxDBPivotGrid2ID_BANCO: TcxDBPivotGridField;
    cxDBPivotGrid2ID_MOV_CAJA: TcxDBPivotGridField;
    cxDBPivotGrid2ANULADO: TcxDBPivotGridField;
    cxDBPivotGrid2ID_CHEQUE_PRO: TcxDBPivotGridField;
    cxDBPivotGrid2DEBITADO: TcxDBPivotGridField;
    cxDBPivotGrid2MUESTRANOMBRECTACAJA: TcxDBPivotGridField;
    cxDBPivotGrid2CUIT: TcxDBPivotGridField;
    cxDBPivotGrid2CONCILIADO: TcxDBPivotGridField;
    cxDBPivotGrid2IMPORTE: TcxDBPivotGridField;
    CDSCheEmitidosIMP_A_DEBITAR: TFloatField;
    CDSCheEmitidosIMP_DEBITADO: TFloatField;
    cxDBPivotGrid2IMP_A_DEBITAR: TcxDBPivotGridField;
    cxDBPivotGrid2IMP_DEBITADO: TcxDBPivotGridField;
    CDSCheEmitidosMES: TStringField;
    CDSCheEmitidosDIA: TIntegerField;
    CDSCheEmitidosSEMANA: TIntegerField;
    CDSCheEmitidosANIO: TIntegerField;
    cxDBPivotGrid2MES: TcxDBPivotGridField;
    cxDBPivotGrid2SEMANA: TcxDBPivotGridField;
    cxDBPivotGrid2ANIO: TcxDBPivotGridField;
    cxDBPivotGrid2DIA: TcxDBPivotGridField;
    PopupMenu2: TPopupMenu;
    VerCampos1: TMenuItem;
    CamposColumnas1: TMenuItem;
    pag5: TTabSheet;
    QCheReemplazados: TFDQuery;
    DSPCheRemplazados: TDataSetProvider;
    CDSCheRemplazados: TClientDataSet;
    DSCheRemplazados: TDataSource;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    CDSCheRemplazadosID: TIntegerField;
    CDSCheRemplazadosTIPOCPBTE: TStringField;
    CDSCheRemplazadosCLASECPBTE: TStringField;
    CDSCheRemplazadosMUESTRACOMPROBANTE: TStringField;
    CDSCheRemplazadosMUESTRASUCURSAL: TStringField;
    CDSCheRemplazadosNROCPBTE: TStringField;
    CDSCheRemplazadosDETALLE: TStringField;
    CDSCheRemplazadosIMPORTE: TFloatField;
    CDSCheRemplazadosID_CHE_REMPLAZADO: TIntegerField;
    CDSCheRemplazadosMUESTRACHENUMERO: TIntegerField;
    CDSCheRemplazadosMUESTRACTABANCO: TStringField;
    CDSCheRemplazadosMUESTRACHEORDENDE: TStringField;
    CDSCheRemplazadosMUESTRACHEIMPORTE: TFloatField;
    CDSCheRemplazadosMUESTRACHEIDBANCO: TIntegerField;
    CDSCheRemplazadosMUESTRAFUEDEBITADO: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACOMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHE_REMPLAZADO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHENUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACTABANCO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEORDENDE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEFECHAEMISION: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEFECHACOBRO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAFECHADEBITO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEIMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEIDBANCO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAFUEDEBITADO: TcxGridDBColumn;
    frDBDCheRemp: TfrxDBDataset;
    DataToXLSRempl: TDataToXLS;
    QCheEmitidosFECHA_EMISION: TSQLTimeStampField;
    QCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    QCheEmitidosFECHA_DEBITO: TSQLTimeStampField;
    CDSCheEmitidosNUMERO_CHEQUE: TIntegerField;
    CDSCheEmitidosFECHA_EMISION: TSQLTimeStampField;
    CDSCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    CDSCheEmitidosFECHA_DEBITO: TSQLTimeStampField;
    CDSCheRemplazadosFECHA: TSQLTimeStampField;
    CDSCheRemplazadosMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    CDSCheRemplazadosMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    CDSCheRemplazadosMUESTRAFECHADEBITO: TSQLTimeStampField;
    QMov_FECHA_CAJA: TSQLTimeStampField;
    QMov_FECHA_OPERACION: TSQLTimeStampField;
    CDSCtaCaja: TClientDataSet;
    CDSBancos: TClientDataSet;
    DSPCtaCaja: TDataSetProvider;
    DSPBancos: TDataSetProvider;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    CDSBancosID_CUENTA: TIntegerField;
    CDSBancosID_TIPO_CTA: TIntegerField;
    CDSBancosNOMBRE: TStringField;
    CDSBancosNRO_CUENTA: TStringField;
    CDSBancosID_BANCO: TIntegerField;
    CDSBancosCUIT: TStringField;
    CDSBancosRAZONSOCIAL: TStringField;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovID_MOV_CAJA: TIntegerField;
    CDSMovID_CAJA: TIntegerField;
    CDSMovTIPO_OPERACION: TStringField;
    CDSMovTIPO_COMPROB: TStringField;
    CDSMovCLASE_COMPROB: TStringField;
    CDSMovID_COMPROBANTE: TIntegerField;
    CDSMovNRO_COMPROBANTE: TStringField;
    CDSMovHABER: TFloatField;
    CDSMovDEBE: TFloatField;
    CDSMovID_TPAGO: TIntegerField;
    CDSMovID_FPAGO: TIntegerField;
    CDSMovUNIDADES: TFloatField;
    CDSMovCOTIZACION: TFloatField;
    CDSMovID_CUENTA_CAJA: TIntegerField;
    CDSMovMONEDA: TIntegerField;
    CDSMovMUESTRACTACAJA: TStringField;
    CDSMovFECHA_CAJA: TSQLTimeStampField;
    CDSMovFECHA_OPERACION: TSQLTimeStampField;
    QBorrarMovFD: TFDQuery;
    spDebitarFD: TFDStoredProc;
    spSacarCheBancoFD: TFDStoredProc;
    N3: TMenuItem;
    LimpiarFiltros: TMenuItem;
    CDSControlMovBco: TClientDataSet;
    DSPControlMovBco: TDataSetProvider;
    CDSControlMovBcoID: TIntegerField;
    CDSControlMovBcoID_CTA_BCO: TIntegerField;
    CDSControlMovBcoID_ORIGEN: TIntegerField;
    CDSControlMovBcoDETALLE: TStringField;
    CDSControlMovBcoNUMERO: TIntegerField;
    CDSControlMovBcoDEBE: TFloatField;
    CDSControlMovBcoHABER: TFloatField;
    CDSControlMovBcoIMPORTE: TFloatField;
    CDSControlMovBcoFECHA_COBRO: TSQLTimeStampField;
    CDSControlMovBcoFECHA_DEBITO: TSQLTimeStampField;
    pagGrafico: TTabSheet;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CDSCheEmitidosTOTAL_IMPORTE: TAggregateField;
    CDSCheEmitidosTOTAL_DEBITADO: TAggregateField;
    ChartCheques: TChart;
    Series1: TPieSeries;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure dbgCheTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSCheEmitidosAfterScroll(DataSet: TDataSet);
    procedure rgConciliadosClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ImpCuadroExecute(Sender: TObject);
    procedure SacarCheBancoExecute(Sender: TObject);
    procedure dbgChequesMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnPrincipalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DesconciliarTodosExecute(Sender: TObject);
    procedure BorrarMovExecute(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure dbgMovMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure ModificarCheExecute(Sender: TObject);
    procedure CamposxColumnas1Click(Sender: TObject);
    procedure CamposdeDatos1Click(Sender: TObject);
    procedure Filtros1Click(Sender: TObject);
    procedure CamposxRenglones1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DebitarChequeExecute(Sender: TObject);
    procedure cxgChequesDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure CDSCheEmitidosAfterPost(DataSet: TDataSet);
    procedure rgFiltroClick(Sender: TObject);
    procedure rgFechaDeClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxgChequesDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure CDSCheEmitidosNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSCheEmitidosCalcFields(DataSet: TDataSet);
    procedure VerCampos1Click(Sender: TObject);
    procedure CamposColumnas1Click(Sender: TObject);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure cxDBPivotGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoCheEmitidos: TFormListadoCheEmitidos;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UDMain_FD, UOPago_2, UEgresoCaja, UChequesACaja, UAdelantosSueldos,
     UCambiaFechaNroChe, UVistasGrillas, UChequesAnulados;

{$R *.DFM}

procedure TFormListadoCheEmitidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSCheEmitidos.Filtered:=False;
  rgConciliados.ItemIndex:=0;
  CDSBancos.Open;
  CDSCtaCaja.Open;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaCheEmitidos');
 //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCheEmitidos.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  ArchivoIni.Free;


  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='CHEEMITIDOS';
  CDSVista.Open;

  cxDBPivotGrid2.OptionsView.FilterFields:=False;

  pcDatos.ActivePageIndex:=0;
end;

procedure TFormListadoCheEmitidos.Filtros1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields   :=Not(cxDBPivotGrid1.OptionsView.FilterFields);
  cxDBPivotGrid1.OptionsView.FilterSeparator:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
  Filtros1.Checked                       :=cxDBPivotGrid1.OptionsView.FilterFields;

end;

procedure TFormListadoCheEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaCheEmitidos');
  //*************************************************************

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCheEmitidos.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;

  CDSBancos.Close;
  CDSCtaCaja.Close;
  inherited;
  Action:=caFree;
end;

procedure TFormListadoCheEmitidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCheEmitidos:=nil;
end;

procedure TFormListadoCheEmitidos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (ActiveControl is TJvDateEdit) or (ActiveControl is TJvDBLookupCombo) then
  inherited;
end;

procedure TFormListadoCheEmitidos.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,dateutils.DaysInMonth(Desde.Date));

  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  cxDBPivotGrid1.OptionsView.FilterFields   :=False;

  cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
  cxDBPivotGrid1.OptionsView.DataFields     :=True;
  cxDBPivotGrid1.OptionsView.RowFields      :=True;
end;

procedure TFormListadoCheEmitidos.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCheEmitidos.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSCheEmitidos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;

      SaveDialog.FileName:='MovimientosArt';
      SaveDialog.DefaultExt:='XLS';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        begin
          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1,True,True,SaveDialog.DefaultExt);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        end;

      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoCheEmitidos.BorrarMovExecute(Sender: TObject);
begin
  inherited;
  if (VarIsNull(CDSControlMovBcoIMPORTE.AsFloat))then
    begin
      QBorrarMovFD.Close;
      QBorrarMovFD.ParamByName('id').Value:=CDSControlMovBcoID.Value;
      QBorrarMovFD.ExecSQL;
      QBorrarMovFD.Close;
    end;
end;

procedure TFormListadoCheEmitidos.BuscarExecute(Sender: TObject);
var i:integer;
begin
   inherited;
   Screen.Cursor:=crHourGlass;
   CDSCheEmitidos.close;
   CDSControlMovBco.Close;

   CDSCheEmitidos.CommandText    :='';
   CDSControlMovBco.CommandText  :='';

   if rgFechaDe.ItemIndex=0 then
     CDSCheEmitidos.CommandText:='select ch.id_chequera,ch.id_caja,ch.id_cuenta_caja,ch.id_cuenta_banco, '+
                                 'ch.anulado,ch.id_banco,ch.id_mov_caja,ch.importe,ch.numero,ch.id_cheque_pro, '+
                                 'ch.orden_de,b.nombre as MuestraBanco,ch.fecha_emision,ch.fecha_cobro,ch.fecha_debito,ch.debitado, '+
                                 'cta.nombre as MuestraNombreCtaCaja,op.cuit,ctaBco.nombre as NombreCtaBanco,rb.numero_cheque,rb.conciliado from cheque_propio ch '+
                                 'left join bancos b on b.id_banco=ch.id_banco '+
                                 'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja ' +
                                 'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja '+
                                 'left join cuenta_caja ctaBco on ctaBco.id_cuenta=ch.id_cuenta_banco '+
                                 'left join ordenpago op on op.id_op=cm.id_comprobante and cm.tipo_comprob=''OP'' '+
                                 'left join resumen_bco_det rb  on rb.id_origen=ch.id_cheque_pro and rb.tipo_origen=''CHP'' '+
                                 'where ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                 '( ch.fecha_emision between :desde and :hasta ) and '+
                                 '( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) and '+
                                 '((rb.conciliado= :concilado) or (:concilado = ''*'')) '+
                                 ''// 'order by ch.id_banco, ch.numero'
   else
   if rgFechaDe.ItemIndex=1 then
     CDSCheEmitidos.CommandText:='select ch.id_chequera,ch.id_caja,ch.id_cuenta_caja,ch.id_cuenta_banco, '+
                                 'ch.anulado,ch.id_banco,ch.id_mov_caja,ch.importe,ch.numero,ch.id_cheque_pro, '+
                                 'ch.orden_de,b.nombre as MuestraBanco,ch.fecha_emision,ch.fecha_cobro,ch.fecha_debito,ch.debitado, '+
                                 'cta.nombre as MuestraNombreCtaCaja,op.cuit,ctaBco.nombre as NombreCtaBanco,rb.numero_cheque,rb.conciliado from cheque_propio ch '+
                                 'left join bancos b on b.id_banco=ch.id_banco '+
                                 'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja ' +
                                 'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja '+
                                 'left join cuenta_caja ctaBco on ctaBco.id_cuenta=ch.id_cuenta_banco '+
                                 'left join ordenpago op on op.id_op=cm.id_comprobante and cm.tipo_comprob=''OP'' '+
                                 'left join resumen_bco_det rb  on rb.id_origen=ch.id_cheque_pro and rb.tipo_origen=''CHP'' '+
                                 'where ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                 '( ch.fecha_cobro between :desde and :hasta ) and '+
                                 '( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) and '+
                                 '((rb.conciliado= :concilado) or (:concilado = ''*'')) '+
                                 ''//'order by ch.id_banco, ch.numero'
   else
   if rgFechaDe.ItemIndex=2 then
     CDSCheEmitidos.CommandText:='select ch.id_chequera,ch.id_caja,ch.id_cuenta_caja,ch.id_cuenta_banco, '+
                                 'ch.anulado,ch.id_banco,ch.id_mov_caja,ch.importe,ch.numero,ch.id_cheque_pro, '+
                                 'ch.orden_de,b.nombre as MuestraBanco,ch.fecha_emision,ch.fecha_cobro,ch.fecha_debito,ch.debitado, '+
                                 'cta.nombre as MuestraNombreCtaCaja,op.cuit,ctaBco.nombre as NombreCtaBanco,rb.numero_cheque,rb.conciliado from cheque_propio ch '+
                                 'left join bancos b on b.id_banco=ch.id_banco '+
                                 'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja ' +
                                 'left join caja_mov cm on cm.id_mov_caja=ch.id_mov_caja '+
                                 'left join cuenta_caja ctaBco on ctaBco.id_cuenta=ch.id_cuenta_banco '+
                                 'left join ordenpago op on op.id_op=cm.id_comprobante and cm.tipo_comprob=''OP'' '+
                                 'left join resumen_bco_det rb  on rb.id_origen=ch.id_cheque_pro and rb.tipo_origen=''CHP'' '+
                                 'where ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                 '( ch.fecha_debito between :desde and :hasta ) and '+
                                 '( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) and '+
                                 '((rb.conciliado= :concilado) or (:concilado = ''*'')) '+
                                 '';//'order by ch.id_banco, ch.numero';
   //////////////////////////////////////////////////////////////////////////////////////////////////////////////////

   if rgFechaDe.ItemIndex=0 then
     CDSControlMovBco.CommandText := 'select d.id,d.id_cta_bco,d.id_origen,d.detalle,d.debe,d.haber,'+
                                     'ch.fecha_cobro,ch.fecha_debito,ch.numero,ch.importe from  cheque_propio ch '+
                                     'left join resumen_bco_det d  on d.id_origen = ch.id_cheque_pro '+
                                     'left join bancos b on b.id_banco=ch.id_banco '+
                                     'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja '+
                                     'where ( d.tipo_origen=''CHP'' ) and '+
                                     '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                     '      ( ch.fecha_emision between :desde and :hasta ) and '+
                                     '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) '+
                                     ''//'order by ch.id_banco, ch.numero'
   else
   if rgFechaDe.ItemIndex=1 then
     CDSControlMovBco.CommandText := 'select d.id,d.id_cta_bco,d.id_origen,d.detalle,d.debe,d.haber,'+
                                     'ch.fecha_cobro,ch.fecha_debito,ch.numero,ch.importe from cheque_propio ch '+
                                     'left join resumen_bco_det d  on d.id_origen=ch.id_cheque_pro  '+
                                     'left join bancos b on b.id_banco=ch.id_banco '+
                                     'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja '+
                                     'where ( d.tipo_origen=''CHP'' ) and '+
                                     '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                     '      ( ch.fecha_cobro between :desde and :hasta ) and '+
                                     '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) '+
                                     ''//'order by ch.id_banco, ch.numero'
   else
   if rgFechaDe.ItemIndex=2 then
     CDSControlMovBco.CommandText := 'select d.id,d.id_cta_bco,d.id_origen,d.detalle,d.debe,d.haber,'+
                                     'ch.fecha_cobro,ch.fecha_debito,ch.numero,ch.importe from cheque_propio ch '+
                                     'left join resumen_bco_det d on d.id_origen= ch.id_cheque_pro '+
                                     'left join bancos b on b.id_banco=ch.id_banco '+
                                     'left join cuenta_caja cta on cta.id_cuenta=ch.id_cuenta_caja '+
                                     'where ( d.tipo_origen=''CHP'' ) and '+
                                     '      ( ch.id_cuenta_banco = :idcta or :idcta = -1 ) and '+
                                     '      ( ch.fecha_debito between :desde and :hasta ) and '+
                                     '      ( ch.id_cuenta_caja = :idcta_caja or :idcta_caja = -1 ) '+
                                     '';//'order by ch.id_banco, ch.numero';



    begin
      CDSCheEmitidos.Close;
      CDSCheEmitidos.AfterScroll:=nil;
      CDSCheEmitidos.IndexFieldNames:='';
      CDSCheEmitidos.IndexDefs.Clear;
      CDSCheEmitidos.Params.ParamByName('idCta').AsInteger      := dbcCuentas.KeyValue;
      CDSCheEmitidos.Params.ParamByName('idCta_caja').AsInteger := dbcCtaCaja.KeyValue;
      CDSCheEmitidos.Params.ParamByName('desde').AsDate:= Desde.Date;
      CDSCheEmitidos.Params.ParamByName('hasta').AsDate:= Hasta.Date;
      case rgFiltro.ItemIndex of
        0:CDSCheEmitidos.Params.ParamByName('concilado').AsString:= 'S';
        1:CDSCheEmitidos.Params.ParamByName('concilado').AsString:= 'N';
        2:CDSCheEmitidos.Params.ParamByName('concilado').AsString:= '*';
      end;

      CDSCheEmitidos.AggregatesActive     := False;
      CDSCheEmitidos.AutoCalcFields       := False;

    //  CDSCheEmitidosTOTAL_IMPORTE.Active  := False;
    //  CDSCheEmitidosTOTAL_DEBITADO.Active := False;

      CDSCheEmitidos.Open;
      CDSCheEmitidos.First;

      CDSCheEmitidos.AutoCalcFields       := True;
      CDSCheEmitidos.AggregatesActive     := True;
    //  CDSCheEmitidosTOTAL_IMPORTE.Active  := True;
    //  CDSCheEmitidosTOTAL_DEBITADO.Active := True;

    //  case rgFechaDe.ItemIndex of
    //    0: CDSCheEmitidos.IndexFieldNames:='FECHA_EMISION';
    //    1: CDSCheEmitidos.IndexFieldNames:='FECHA_COBRO';
    //    2: CDSCheEmitidos.IndexFieldNames:='FECHA_DEBITO';
    //  end;

      CDSControlMovBco.Close;
      CDSControlMovBco.Params.ParamByName('idCta').AsInteger      := dbcCuentas.KeyValue;
      CDSControlMovBco.Params.ParamByName('idCta_caja').AsInteger := dbcCtaCaja.KeyValue;
      CDSControlMovBco.Params.ParamByName('desde').AsDate         := Desde.Date;
      CDSControlMovBco.Params.ParamByName('hasta').AsDate         := Hasta.Date;
      CDSControlMovBco.open;

    end;
  CDSMov.close;
  CDSMov.Params.ParamByName('id').Value:=CDSCheEmitidosID_MOV_CAJA.Value;
  CDSMov.Open;

  CDSCheEmitidos.Filtered:=False;
  CDSCheEmitidos.Filter:='';

  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      CDSCheEmitidos.Filtered:=False;
      case rgConciliados.ItemIndex of
        0:CDSCheEmitidos.Filter:='';
        1:CDSCheEmitidos.Filter:='debitado=''S''';
        2:CDSCheEmitidos.Filter:='debitado=''N''';
      end;
      CDSCheEmitidos.Filtered:=True;
    end;

  CDSCheEmitidos.AfterScroll:=CDSCheEmitidosAfterScroll;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

  for i:=0 to cxDBPivotGrid2.FieldCount-1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;

  Screen.Cursor:=crDefault;
  CDSCheRemplazados.Close;
  CDSCheRemplazados.Open;

//  ChartCheques.Series[0].Clear;
//  Series1
//  if Not(CDSCheEmitidosTOTAL_IMPORTE.Value=null) then
//    ChartCheques.Series[0].AddXY(CDSCheEmitidosTOTAL_IMPORTE.Value,'Emitidos',clBlue);
//  if Not(CDSCheEmitidosTOTAL_DEBITADO.Value=null) then
//    ChartCheques.Series[0].AddXY(CDSCheEmitidosTOTAL_DEBITADO.Value,'Debitados',clGreen);

  Series1.Clear;
  if Not(CDSCheEmitidosTOTAL_IMPORTE.Value=null) then
    Series1.AddXY(CDSCheEmitidosTOTAL_IMPORTE.Value, CDSCheEmitidosTOTAL_IMPORTE.Value,'Emitidos',clBlue);
  if Not(CDSCheEmitidosTOTAL_DEBITADO.Value=null) then
    Series1.AddXY(CDSCheEmitidosTOTAL_DEBITADO.Value,CDSCheEmitidosTOTAL_DEBITADO.Value,'Debitados',clGreen);

end;

procedure TFormListadoCheEmitidos.ImpCuadroExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      frChe.PrintOptions.Printer:=PrNomListados;
      frChe.SelectPrinter;
      frChe.LoadFromFile(DMMain_FD.PathReportesLst+'\ChequesEmitidos_Cuador.fr3');
      frChe.ShowReport;
      dbcCuentas.SetFocus;
    end;
end;

procedure TFormListadoCheEmitidos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      frChe.PrintOptions.Printer:=PrNomListados;
      frChe.SelectPrinter;
      frChe.LoadFromFile(DMMain_FD.PathReportesLst+'\ChequesEmitidos.fr3');
      frChe.ShowReport;
      dbcCuentas.SetFocus;
    end;
//  CDSCheEmitidos.EnableControls;
end;

procedure TFormListadoCheEmitidos.Label5Click(Sender: TObject);
begin
  inherited;
 cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoCheEmitidos.Label8Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListadoCheEmitidos.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
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

procedure TFormListadoCheEmitidos.ModificarCheExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormModificarDatosChPropio)) then
    FormModificarDatosChPropio:=TFormModificarDatosChPropio.Create(Self);
  FormModificarDatosChPropio.id           := CDSCheEmitidosID_CHEQUE_PRO.Value;
  FormModificarDatosChPropio.Id_Cta_Bco   := CDSCheEmitidosID_CUENTA_BANCO.Value;
  FormModificarDatosChPropio.FechaEmision := CDSCheEmitidosFECHA_EMISION.AsDateTime;
  FormModificarDatosChPropio.FechaCobro   := CDSCheEmitidosFECHA_COBRO.AsDateTime;
  FormModificarDatosChPropio.Numero       := CDSCheEmitidosNUMERO.Value;
  FormModificarDatosChPropio.Id_Chequera  := CDSCheEmitidosID_CHEQUERA.Value;
  FormModificarDatosChPropio.ShowModal;
  Buscar.Execute;

end;

procedure TFormListadoCheEmitidos.dbcVistasChange(Sender: TObject);
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


procedure TFormListadoCheEmitidos.dbgChequesMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.Panels[0].Text:='Btn.Der.Mouse - Quitar de Conciliado';
end;


procedure TFormListadoCheEmitidos.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frChe.DesignReport;
end;

procedure TFormListadoCheEmitidos.pnPrincipalMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormListadoCheEmitidos.VerCampos1Click(Sender: TObject);
begin
  inherited;
  VerCampos1.Checked:=not(VerCampos1.Checked);
  if pcDatos.ActivePageIndex=2 then
    cxDBPivotGrid1.OptionsView.FilterFields:=VerCampos1.Checked
  else
    if pcDatos.ActivePageIndex=3 then
      cxDBPivotGrid2.OptionsView.FilterFields:=VerCampos1.Checked
end;

procedure TFormListadoCheEmitidos.dbgCheTitleButtonClick(
  Sender: TObject; AFieldName: String);
begin
  inherited;
   CDSCheEmitidos.IndexFieldNames:=AFieldName;
end;

procedure TFormListadoCheEmitidos.dbgMovMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
   sbEstado.Panels[0].Text:='Doble Click:Ver Comprobante';
end;

procedure TFormListadoCheEmitidos.DebitarChequeExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSCheEmitidos.GetBookmark;
  CDSCheEmitidos.DisableControls;
  if CDSCheEmitidosDEBITADO.Value<>'S' then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spDebitarFD.Close;
        spDebitarFD.ParamByName('id_cuenta_banco').Value:=CDSCheEmitidosID_CUENTA_BANCO.Value;
        spDebitarFD.ParamByName('id_cheque_pro').Value  :=CDSCheEmitidosID_CHEQUE_PRO.Value;

        if (CDSCheEmitidosFECHA_DEBITO.AsString='') or (CDSCheEmitidosFECHA_DEBITO.AsString=' ') then
          spDebitarFD.ParamByName('Fecha_Debito').Value   :=CDSCheEmitidosFECHA_COBRO.AsDateTime
        else
          spDebitarFD.ParamByName('Fecha_Debito').Value   :=CDSCheEmitidosFECHA_DEBITO.AsDateTime;

        spDebitarFD.ParamByName('Fecha_Cobro').Value    :=CDSCheEmitidosFECHA_COBRO.AsDateTime;
        spDebitarFD.ParamByName('Importe').Value        :=CDSCheEmitidosIMPORTE.AsFloat;
        spDebitarFD.ParamByName('Numero').Value         :=CDSCheEmitidosNUMERO.Value;
        spDebitarFD.ParamByName('Orden_de').Value       :=CDSCheEmitidosORDEN_DE.Value;
        spDebitarFD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spDebitarFD.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no realizada.....');
      end;
    end;
  Buscar.Execute;
  CDSCheEmitidos.GotoBookmark(P);
  CDSCheEmitidos.FreeBookmark(P);
  CDSCheEmitidos.EnableControls;

end;

procedure TFormListadoCheEmitidos.DesconciliarTodosExecute(Sender: TObject);
begin
  inherited;
  CDSCheEmitidos.First;
  while not(CDSCheEmitidos.Eof) do
    begin
      if (CDSCheEmitidosDEBITADO.Value='S') and (CDSCheEmitidosANULADO.Value='N') then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spSacarCheBancoFD.Close;
            spSacarCheBancoFD.ParamByName('id_cheque').Value:=CDSCheEmitidosID_CHEQUE_PRO.Value;
            spSacarCheBancoFD.ExecProc;
            spSacarCheBancoFD.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo hacer la Operación....');
          end;
        end;
      CDSCheEmitidos.Next;
    end;
end;

procedure TFormListadoCheEmitidos.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoCheEmitidos.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;


  IF NOT (CDSCheEmitidos.IsEmpty) THEN
    BEGIN
      if pcDatos.ActivePageIndex<>3 then
        begin
          SaveDialog.FileName:='ChequesEmitidos';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' then
              begin
                if VirtualUI.Active then
                  if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

                if VirtualUI.Active then
                  DataToXLS.SaveToFile(SaveDialog.FileName)
                else
                  DataToXLS.SaveToFile(SaveDialog.FileName);
                Sleep(200);
                if VirtualUI.Active then
                    VirtualUI.DownloadFile(SaveDialog.FileName);
              end;
        END;
      if pcDatos.ActivePageIndex=3 then
        begin
          SaveDialog.FileName  :='ProyectadoChequesEmitidos';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' then
              begin
                if VirtualUI.Active then
                  begin
                    if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                      cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt,cxDBPivotGrid2,False,True)
                    else
                      cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid2,False,True);
                  end
                else
                  cxExportPivotGridToExcel(SaveDialog.FileName,cxDBPivotGrid2,False,True);

                if VirtualUI.Active then
                  begin
                    VirtualUI.StdDialogs:=False;
                    if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                      VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
                    else
                      VirtualUI.DownloadFile(SaveDialog.FileName)
                  end;
              end;
        end;
      if pcDatos.ActivePageIndex=4 then
        begin
          SaveDialog.FileName:='ChequesRemplazados';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            if SaveDialog.FileName<>'' then
              begin
                if VirtualUI.Active then
                  if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

                if VirtualUI.Active then
                  DataToXLSRempl.SaveToFile(SaveDialog.FileName)
                else
                  DataToXLSRempl.SaveToFile(SaveDialog.FileName);
                Sleep(200);
                if VirtualUI.Active then
                    VirtualUI.DownloadFile(SaveDialog.FileName);
              end;
        end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;



procedure TFormListadoCheEmitidos.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
  //if dbcCtas.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormListadoCheEmitidos.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if CDSMovTIPO_COMPROB.Value='OP' then
    begin
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Self);
      FormOPago_2.DatoNew   := CDSMovID_COMPROBANTE.AsString;
      FormOPago_2.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    end
  else
    if CDSMovTIPO_COMPROB.Value='EC' then
      begin
        if Not(Assigned(FormegresoCaja)) then
          FormegresoCaja:=TFormegresoCaja.Create(Self);
        FormEgresoCaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
        FormEgresoCaja.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
        FormegresoCaja.Recuperar.Execute;
        FormegresoCaja.Show;
      end
    else
      if CDSMovTIPO_COMPROB.Value='CC' then
        begin
          if Not(Assigned(FormCheACaja)) then
            FormCheACaja:=TFormCheACaja.Create(Self);
          FormCheACaja.DatoNew   := CDSMovID_COMPROBANTE.AsString;
          FormCheACaja.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
          FormCheACaja.Recuperar.Execute;
          FormCheACaja.Show;
        end
      else
        if CDSMovTIPO_COMPROB.Value='VA' then
          begin
            if Not(Assigned(FormAdelantosSueldo)) then
              FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
            FormAdelantosSueldo.DatoNew   := CDSMovID_COMPROBANTE.AsString;
            FormAdelantosSueldo.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
            FormAdelantosSueldo.Recuperar.Execute;
            FormAdelantosSueldo.Show;
          end
        else
          if CDSMovTIPO_COMPROB.Value='HA' then
            begin
              if Not(Assigned(FormChequesAnulados)) then
                FormChequesAnulados:=TFormChequesAnulados.Create(Self);
              FormChequesAnulados.DatoNew   := CDSMovID_COMPROBANTE.AsString;
              FormChequesAnulados.TipoCpbte := CDSMovTIPO_COMPROB.AsString;
              FormChequesAnulados.Recuperar.Execute;
              FormChequesAnulados.Show;
          end;


end;

procedure TFormListadoCheEmitidos.CamposColumnas1Click(Sender: TObject);
begin
  inherited;
  CamposxColumnas1.Checked               := not(CamposxColumnas1.Checked);
  if pcDatos.ActivePageIndex=2 then
    cxDBPivotGrid1.OptionsView.ColumnFields:= Not(cxDBPivotGrid2.OptionsView.ColumnFields)
  else
    if pcDatos.ActivePageIndex=3 then
      cxDBPivotGrid2.OptionsView.ColumnFields:= Not(cxDBPivotGrid2.OptionsView.ColumnFields);
end;

procedure TFormListadoCheEmitidos.CamposdeDatos1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.DataFields:=Not(cxDBPivotGrid1.OptionsView.DataFields);
  CamposdeDatos1.Checked               :=cxDBPivotGrid1.OptionsView.DataFields;
 end;

procedure TFormListadoCheEmitidos.CamposxColumnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnFields:=Not(cxDBPivotGrid1.OptionsView.ColumnFields);
  CamposxColumnas1.Checked               :=cxDBPivotGrid1.OptionsView.ColumnFields;
end;

procedure TFormListadoCheEmitidos.CamposxRenglones1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.RowFields:=Not(cxDBPivotGrid1.OptionsView.RowFields);
  CamposxRenglones1.Checked               :=cxDBPivotGrid1.OptionsView.RowFields;
end;

procedure TFormListadoCheEmitidos.CDSCheEmitidosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSCheEmitidos.ApplyUpdates(0)
end;

procedure TFormListadoCheEmitidos.CDSCheEmitidosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      CDSMov.close;
      CDSMov.Params.ParamByName('id').Value:=CDSCheEmitidosID_MOV_CAJA.Value;
      CDSMov.Open;
    end;
  if CDSCheEmitidosANULADO.AsString<>'' then
    begin
      case CDSCheEmitidosANULADO.Value[1] of
        'A':  sbEstado.Panels[1].Text:='Anulado..';
        'R':  sbEstado.Panels[1].Text:='Reemplazado..';
        'S':  sbEstado.Panels[1].Text:='S/n..';
        'N':  sbEstado.Panels[1].Text:='..';
      end;
    end;

end;

procedure TFormListadoCheEmitidos.CDSCheEmitidosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSCheEmitidosIMP_DEBITADO.AsFloat  := 0;
  CDSCheEmitidosIMP_A_DEBITAR.AsFloat := 0;

  if (CDSCheEmitidosDEBITADO.AsString='N') or (CDSCheEmitidosDEBITADO.AsString<>'S') then
    CDSCheEmitidosIMP_A_DEBITAR.AsFloat:=CDSCheEmitidosIMPORTE.Value;
  if (CDSCheEmitidosDEBITADO.AsString='S')  then
    CDSCheEmitidosIMP_DEBITADO.AsFloat:=CDSCheEmitidosIMPORTE.Value;
  CDSCheEmitidosDIA.Value    := StrToInt(FormatDateTime('DD',CDSCheEmitidosFECHA_COBRO.AsDateTime));
  CDSCheEmitidosMES.Value    := FormatDateTime('MMMM',CDSCheEmitidosFECHA_COBRO.AsDateTime);
  CDSCheEmitidosSEMANA.Value := DateUtils.WeekOf(CDSCheEmitidosFECHA_COBRO.AsDateTime);
  if CDSCheEmitidosANULADO.Value='S' then
    begin
      CDSCheEmitidosIMP_DEBITADO.AsFloat  := 0;
      CDSCheEmitidosIMP_A_DEBITAR.AsFloat := 0;
    end;


end;

procedure TFormListadoCheEmitidos.CDSCheEmitidosNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QBuscaChe.CLose;
  QBuscaChe.ParamByName('NUmero').AsString      := CDSCheEmitidosNUMERO.AsString;
  QBuscaChe.ParamByName('IdChequera').AsInteger := CDSCheEmitidosID_CHEQUERA.Value;
  QBuscaChe.Open;
  if (QBuscaChe.Fields[0].AsString<>'') Then
     begin
      Sender.AsString:=Sender.OldValue;
      raise Exception.Create('Numero ya Ingresado....');
    end;
 QBuscaChe.CLose;
end;

procedure TFormListadoCheEmitidos.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormListadoCheEmitidos.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormListadoCheEmitidos.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoCheEmitidos.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormListadoCheEmitidos.cxDBPivotGrid2MouseDown(Sender: TObject;
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

procedure TFormListadoCheEmitidos.cxDBPivotGrid2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoCheEmitidos.cxDBPivotGrid2MouseUp(Sender: TObject;
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


procedure TFormListadoCheEmitidos.cxgChequesDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var campo:string;
begin
  // Obtener nombre de campo en cxGrid
  campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
  try
    campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
    with TcxGridDBTableView(sender).DataController.DataSource.DataSet  as TClientDataSet do
      begin
        DisableControls;
        if IndexFieldNames <> Campo then
          IndexFieldNames := Campo // Ascendente
        else
          begin
            AddIndex(Campo, Campo, [], Campo); // Descendente
            IndexName := Campo;
          end;
        EnableControls;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormListadoCheEmitidos.cxgChequesDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
 A : String;
begin
  inherited;
  IF (AViewInfo.GridRecord.Values[14] = 'S') or
     (AViewInfo.GridRecord.Values[14] = 'A') or
     (AViewInfo.GridRecord.Values[14] = 'R')
   THEN
     ACanvas.Font.Style := [fsStrikeout]
   else
     ACanvas.Font.Style := [];


end;

procedure TFormListadoCheEmitidos.rgConciliadosClick(Sender: TObject);
begin
  inherited;
  if Not(CDSCheEmitidos.IsEmpty) then
    begin
      CDSCheEmitidos.Filtered:=False;
      case rgConciliados.ItemIndex of
        0:CDSCheEmitidos.Filter:='';
        1:CDSCheEmitidos.Filter:='debitado=''S''';
        2:CDSCheEmitidos.Filter:='debitado=''N''';
      end;
      CDSCheEmitidos.Filtered:=True;
    end;
end;

procedure TFormListadoCheEmitidos.rgFechaDeClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoCheEmitidos.rgFiltroClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoCheEmitidos.SacarCheBancoExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  p:=CDSCheEmitidos.GetBookmark;
  CDSCheEmitidos.DisableControls;
  if (CDSCheEmitidosDEBITADO.Value='S')  then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spSacarCheBancoFD.Close;
        spSacarCheBancoFD.ParamByName('id_cheque').Value:=CDSCheEmitidosID_CHEQUE_PRO.Value;
        spSacarCheBancoFD.ExecProc;
        spSacarCheBancoFD.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer la Operación....');
      end;
    end;
  Buscar.Execute;
  CDSCheEmitidos.GotoBookmark(P);
  CDSCheEmitidos.FreeBookmark(P);
  CDSCheEmitidos.EnableControls;
end;

procedure TFormListadoCheEmitidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frChe.DesignReport;
end;

procedure TFormListadoCheEmitidos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListadoCheEmitidos.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='CHEEMITIDOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='CHEEMITIDOS';
  CDSVista.Open;

end;

end.