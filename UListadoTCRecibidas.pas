unit UListadoTCRecibidas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList,System.Variants,
  Buttons, ToolWin, ExtCtrls, Grids, DBGrids, Provider, DBClient, frxClass,
   frxDBSet,Librerias,    DBCtrls, IBGenerator, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvDBLookup, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvExDBGrids, JvDBGrid, Menus, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, DBXCommon, dxSkinsCore,
  dxSkinOffice2007Blue, dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, cxCheckBox,StrUtils,VirtualUI_Sdk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk,cxGridExportLink, AdvGroupBox, AdvOfficeButtons,
  dxPSStdGrLnk,DateUtils, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu,
  System.ImageList, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, REST.Types,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope,System.JSON,System.IniFiles, cxTextEdit, tmsAdvGridExcel,
  AdvDBLookupComboBox, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, dxSkinWXI,
  frCoreClasses, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, System.Rtti, VCL.TMSFNCDataGridCell,
  VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase, VCL.TMSFNCDataGridCore,
  VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, VCL.TMSFNCCustomControl, VCL.TMSFNCDataGrid,
  VCL.TMSFNCDataGridExcelIO;

type
  TFormListadoMovTarjetasCreditoRecibidas = class(TFormABMBase)
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    DSMovTc: TDataSource;
    CDSMovTc: TClientDataSet;
    DSPMovTc: TDataSetProvider;
    Imprimir: TAction;
    frDBMov: TfrxDBDataset;
    frListaMov: TfrxReport;
    DSPEmpresa: TDataSetProvider;
    DSTCredito: TDataSource;
    UpDown1: TUpDown;
    dbcTarjetas: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    DSLote: TDataSource;
    DSTerminales: TDataSource;
    dbcTerminal: TJvDBLookupCombo;
    Label22: TLabel;
    dbcLote: TJvDBLookupCombo;
    Label21: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSEmpresa: TClientDataSet;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFMTBCDField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFMTBCDField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSMovTcID_MOV_TC: TIntegerField;
    CDSMovTcACREDITADA: TStringField;
    CDSMovTcCAN_CUOTAS: TIntegerField;
    CDSMovTcID_CAJA: TIntegerField;
    CDSMovTcID_MOV_CAJA: TIntegerField;
    CDSMovTcID_CUENTA_BANCO: TIntegerField;
    CDSMovTcID_CUENTA_CAJA: TIntegerField;
    CDSMovTcN_DOCU: TStringField;
    CDSMovTcNRO_CUPON: TIntegerField;
    CDSMovTcTITULAR: TStringField;
    CDSMovTcTIPOP_COMPROB: TStringField;
    CDSMovTcCLASE_COMPROB: TStringField;
    CDSMovTcID_COMPROBANTE: TIntegerField;
    CDSMovTcNRO_COMPROBANTE: TStringField;
    CDSMovTcSUCURSAL: TIntegerField;
    CDSMovTcTARJETACREDITO: TStringField;
    CDSMovTcNRO_TERMINAL: TStringField;
    CDSMovTcNRO_LOTE: TStringField;
    PopupMenu1: TPopupMenu;
    AjustarTC: TAction;
    MarcaNoAcreditada: TAction;
    MarcaNoAcreditada1: TMenuItem;
    AnularTC1: TMenuItem;
    VerComprobante: TAction;
    ReemplazarTC: TAction;
    N1: TMenuItem;
    ReemplazarTC1: TMenuItem;
    BorrarMov: TAction;
    N2: TMenuItem;
    BorrarMovimiento1: TMenuItem;
    pcMovimientos: TPageControl;
    TabSheet1: TTabSheet;
    pnPieGeneral: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
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
    PopupMenu2: TPopupMenu;
    CamposxColumnas1: TMenuItem;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    N3: TMenuItem;
    ExportarExcel1: TMenuItem;
    SaveDialog1: TSaveDialog;
    CDSMovTcMESACREDITADO: TStringField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    CDSMovTcMESPOSIBLEACREDI: TStringField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    CDSMovTcMESPRESENTACION: TStringField;
    CDSMovTcDIAS_PARA_ACR: TIntegerField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    CDSMovTcMESACREDITA_FECHA: TDateTimeField;
    CDSMovTcMESPRESENTACION_FECHA: TDateTimeField;
    CDSMovTcMESPOSIBLEACR_FECHA: TDateTimeField;
    CDSMovTcNOMBRESUC: TStringField;
    CDSMovTcTIPOOPERACION: TStringField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QCambiaFecha: TFDQuery;
    QTerminal: TFDQuery;
    QTerminalTERMINAL: TStringField;
    QLote: TFDQuery;
    QLoteLOTE: TStringField;
    QTCredito: TFDQuery;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoMONEDA: TIntegerField;
    QTCreditoCODIGOARTICULO: TStringField;
    QTCreditoID_CUENTA_BANCO: TIntegerField;
    QTCreditoDIAS_ACREDITACION: TSmallintField;
    QTCreditoCUIT: TStringField;
    QTCreditoRAZONSOCIAL: TStringField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QMovTc: TFDQuery;
    QBorrarMov: TFDQuery;
    spReemplazaTC_efec: TFDStoredProc;
    spMarcarTC: TFDStoredProc;
    CDSMovTcCOEFICIENTE: TFloatField;
    CDSMovTcID_TC: TIntegerField;
    CDSMovTcCOTIZACION: TFloatField;
    CDSMovTcIMPORTE: TFloatField;
    CDSMovTcIMPORTE_NETO: TFloatField;
    CDSMovTcIMPORTE_RECARGO: TFloatField;
    CDSMovTcVALORCUOTA: TFloatField;
    QBuscaIdCpbte: TFDQuery;
    QBuscaIdCpbteID_MOV_CAJA: TIntegerField;
    QBuscaIdCpbteID_MOV_TC: TIntegerField;
    QBuscaIdCpbteID_COMPROBANTE: TIntegerField;
    QBuscaIdCpbteTIPO_COMPROB: TStringField;
    CDSMovTcMUESTRAACREDITACION: TStringField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    btExcel: TBitBtn;
    RxLabel2: TLabel;
    RxLabel8: TLabel;
    RxLabel9: TLabel;
    RxLabel1: TLabel;
    rgEstados: TAdvOfficeRadioGroup;
    rgFechas: TAdvOfficeRadioGroup;
    pnPieGrupo: TPanel;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    btExcelGastos: TBitBtn;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    CDSMovTcMUESTRASEMANAACREDI: TIntegerField;
    CDSMovTcMUESTRASEMANAPOSIBLE: TIntegerField;
    CDSMovTcMUESTRASEMANAPRESEN: TIntegerField;
    Label2: TLabel;
    Label3: TLabel;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    TabSheet3: TTabSheet;
    dbgTerjetas: TDBAdvGrid;
    edUser: TLabeledEdit;
    RESTClient1: TRESTClient;
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    mtDatos: TFDMemTable;
    DSDatos: TDataSource;
    btLeerTarjetas: TBitBtn;
    edPass: TLabeledEdit;
    cheBox_Portal: TAdvOfficeCheckBox;
    PopupMenu3: TPopupMenu;
    LimpiarFiltros1: TMenuItem;
    CDSMovTcSALDO_ACREDITADO: TFloatField;
    cxDBPivotGrid1Field24: TcxDBPivotGridField;
    LimpiarFiltros: TAction;
    N4: TMenuItem;
    LimpiarFiltros2: TMenuItem;
    TarjetasNubceo: TTabSheet;
    AdvGridExcelIO: TAdvGridExcelIO;
    LeerNubceo: TAction;
    OpenDialog1: TOpenDialog;
    GenerarGuardarLiquidacion: TAction;
    QComp: TFDQuery;
    DSComprob: TDataSource;
    QCajas: TFDQuery;
    DSCajas: TDataSource;
    QModosDeCobro: TFDQuery;
    DSModosDeCobro: TDataSource;
    QModosDeCobroID_TPAGO: TIntegerField;
    QModosDeCobroID_FPAGO: TIntegerField;
    QModosDeCobroFORMAPAGO: TStringField;
    QModosDeCobroCODIGO: TIntegerField;
    QModosDeCobroDESCRIPCION: TStringField;
    QModosDeCobroNRO_CUENTA: TStringField;
    QCajasID_CAJA: TIntegerField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QCompDETALLE: TStringField;
    QCompID_COMPROBANTE: TIntegerField;
    QCompDENOMINACION: TStringField;
    QCompLETRA: TStringField;
    QCompPREFIJO: TStringField;
    QCompNUMERO: TStringField;
    QBuscaCodigoCliente: TFDQuery;
    spGenerarRecibo: TFDStoredProc;
    QUltimoNro: TFDQuery;
    QUltimoNroMAX: TStringField;
    QCompCLASE_COMPROB: TStringField;
    QCompSUCURSAL: TIntegerField;
    QCargarLote: TFDQuery;
    spIngresaLiquidacioNubceo: TFDStoredProc;
    sgNubceo: TAdvStringGrid;
    pcNubceo: TPageControl;
    pagCarga: TTabSheet;
    pnCabecera: TPanel;
    pnPie: TPanel;
    chbFiltroProcesamiento: TAdvOfficeCheckBox;
    btLeerArchivo: TBitBtn;
    pagConsulta: TTabSheet;
    dbgLiquidaciones: TDBAdvGrid;
    QLiquidaciones: TFDQuery;
    Panel2: TPanel;
    Panel3: TPanel;
    DSLiquidaciones: TDataSource;
    QLiquidacionesID: TStringField;
    QLiquidacionesCODIGO: TStringField;
    QLiquidacionesTARJETA: TStringField;
    QLiquidacionesREFERENCIA: TStringField;
    QLiquidacionesFECHA: TSQLTimeStampField;
    QLiquidacionesSUCURSAL_COMERCIO: TStringField;
    QLiquidacionesTOTAL_BRUTO: TFloatField;
    QLiquidacionesTOTAL_IMPUESTOS: TFloatField;
    QLiquidacionesTOTAL_DEDUCCIONES: TFloatField;
    QLiquidacionesTOTAL_NETO: TFloatField;
    QLiquidacionesBANCO_PAGADOR: TStringField;
    QLiquidacionesPERIODO: TStringField;
    QLiquidacionesESTADO: TStringField;
    QLiquidacionesIDENTIFICADOR_EMPRESA: TStringField;
    QLiquidacionesID_RECIBO: TIntegerField;
    QLiquidacionesLOTE: TStringField;
    Label6: TLabel;
    Desde2: TJvDateEdit;
    Hasta2: TJvDateEdit;
    Label7: TLabel;
    UpDown2: TUpDown;
    BuscarLiquidaciones: TAction;
    Label5: TLabel;
    JvLabel1: TLabel;
    dbcCtas: TJvDBLookupCombo;
    dbcComprobante: TJvDBLookupCombo;
    Label4: TLabel;
    edLote: TMaskEdit;
    btNovedades: TButton;
    btGuardarLiquidaciones: TBitBtn;
    chbFiltraConsulta: TAdvOfficeCheckBox;
    BitBtn2: TBitBtn;
    GenerarRecibos: TAction;
    BitBtn3: TBitBtn;
    cxDBPivotGrid1Field25: TcxDBPivotGridField;
    cxDBPivotGrid1Field26: TcxDBPivotGridField;
    ReHacerIni: TAction;
    N5: TMenuItem;
    ReHacerIniGrid1: TMenuItem;
    CDSMovTcFECHA: TDateField;
    CDSMovTcFECHA_ACREDITACION: TDateField;
    CDSMovTcFECHAACREDITACION_PROBABLE: TDateField;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    chbAgrupacion: TCheckBox;
    TMSFNCDataGridExcelIO1: TTMSFNCDataGridExcelIO;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSMovTcStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure dbcTarjetasChange(Sender: TObject);
    procedure AjustarTCExecute(Sender: TObject);
    procedure MarcaNoAcreditadaExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure ReemplazarTCExecute(Sender: TObject);
    procedure BorrarMovExecute(Sender: TObject);
    procedure CamposxColumnas1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure CDSMovTcCalcFields(DataSet: TDataSet);
    procedure btExcelGastosClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure cxGMovTCDBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure dbgMovKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure btExcelClick(Sender: TObject);
    procedure cxGMovTCDBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGMovTCDBTableView1DblClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxGMovTCDBTableView1Editing(Sender: TcxCustomGridTableView;
      AItem: TcxCustomGridTableItem; var AAllow: Boolean);
    procedure cxGMovTCDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btLeerTarjetasClick(Sender: TObject);
    procedure cheBox_PortalClick(Sender: TObject);
    procedure LimpiarFiltros1Click(Sender: TObject);
    procedure dbgTerjetasGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure dbgTerjetasGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure LimpiarFiltrosExecute(Sender: TObject);
    procedure LeerNubceoExecute(Sender: TObject);
    procedure chbFiltroProcesamientoClick(Sender: TObject);
    procedure sgNubceoGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure AdvGridExcelIODateTimeFormat(Sender: TAdvStringGrid;
      const GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var DateFormat, TimeFormat: WideString);
    procedure GenerarGuardarLiquidacionExecute(Sender: TObject);
    procedure btNovedadesClick(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarLiquidacionesExecute(Sender: TObject);
    procedure chbFiltraConsultaClick(Sender: TObject);
    procedure GenerarRecibosExecute(Sender: TObject);
    procedure dbgLiquidacionesGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TVAlignment);
    procedure ReHacerIniExecute(Sender: TObject);
    procedure chbAgrupacionClick(Sender: TObject);
  private

    { Private declarations }
  public
    lista      :TStringList;
    procedure GenerarCampos;
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoMovTarjetasCreditoRecibidas: TFormListadoMovTarjetasCreditoRecibidas;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

{$R *.DFM}

uses DMbuscadoresForm, URecibo_2, UFacturaCtdo_2, UTiketVta,
     UAnulacionOPago, UIngresoCaja, URemplazoValoresIngresados, UFecha,UDMain_FD,
     UFactura_2, UListCpbteNoImportados;



procedure TFormListadoMovTarjetasCreditoRecibidas.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormListadoMovTarjetasCreditoRecibidas.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde2.Date,y,m,d);
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
  Desde2.Date:=EncodeDate(y,m,1);
  Hasta2.Date:=EncodeDate(y,m,DaysInMonth(Desde2.Date));
  BuscarLiquidaciones.Execute;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  QBuscaIdCpbte.Close;
  QBuscaIdCpbte.ParamByName('id_mov_tc').Value:=CDSMovTcID_MOV_TC.Value;
  QBuscaIdCpbte.Open;
  if Not(qBuscaIdCpbte.IsEmpty) then
    begin
      if QBuscaIdCpbteTIPO_COMPROB.Value='RC' then
        begin
          IF NOT (Assigned(FormRecibo_2)) THEN
            FormRecibo_2:= TFormRecibo_2.Create(self);
          FormRecibo_2.DatoNew    := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormRecibo_2.TipoCpbte  := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormRecibo_2.Recuperar.Execute;
          FormRecibo_2.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='FO' then
        begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormCpbteCtdo_2.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormCpbte_2.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='TK' then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta   := TFormTicketVta.Create(self);
          FormTicketVta.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormTicketVta.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='XP' then
        begin
          IF NOT (Assigned(FormAnulacionOPago)) THEN
            FormAnulacionOPago   := TFormAnulacionOPago.Create(self);
          FormAnulacionOPago.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormAnulacionOPago.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormAnulacionOPago.Recuperar.Execute;
          FormAnulacionOPago.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='IC' then
        begin
          IF NOT (Assigned(FormIngresoCaja)) THEN
            FormIngresoCaja   := TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormIngresoCaja.Recuperar.Execute;
          FormIngresoCaja.Show;
        end else
      if QBuscaIdCpbteTIPO_COMPROB.Value='ZI' then
        begin
          IF NOT (Assigned(FormReemplazoValoresIng)) THEN
            FormReemplazoValoresIng   := TFormReemplazoValoresIng.Create(self);
          FormReemplazoValoresIng.DatoNew   := QBuscaIdCpbteID_COMPROBANTE.AsString;
          FormReemplazoValoresIng.TipoCpbte := QBuscaIdCpbteTIPO_COMPROB.AsString;
          FormReemplazoValoresIng.Recuperar.Execute;
          FormReemplazoValoresIng.Show;
        end;

    end;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.ImprimirExecute(Sender: TObject);
begin
  inherited;
  CDSEmpresa.Open;
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;
  frListaMov.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListaMovTC.fr3');
  frListaMov.Variables['Desde']  := ''''+Desde.Text+'''';
  frListaMov.Variables['Hasta']  := ''''+Hasta.Text+'''';
  if rgFechas.ItemIndex=0 Then
    frListaMov.Variables['ListaPor']:='''Por fecha de Vta'''
  else
    frListaMov.Variables['ListaPor']:='''Por fecha de Acreditación''';
  if rgFechas.ItemIndex=0 Then
    frListaMov.Variables['Modo']:='''V'''
  else
    frListaMov.Variables['Modo']:='''A''';

  frListaMov.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.LeerNubceoExecute(Sender: TObject);
var extension:String;
begin
  inherited;
  sgNubceo.Clear;

  if OpenDialog1.Execute then
    begin
      extension:=LowerCase(ExtractFileExt(OpenDialog1.FileName));
      if OpenDialog1.FileName<>'' then
        if (extension='.xls') then
          begin
            sgNubceo.FixedRows :=0;
            AdvGridExcelIO.XLSImport(OpenDialog1.FileName);
            var i:Integer;
            for I := 0 to sgNubceo.ColCount-1 do
              sgNubceo.AutoSizeCol(I,5);
            sgNubceo.FixedRows :=1;
            sgNubceo.Options   := sgNubceo.Options+[goColSizing];

          end
        else
          ShowMessage('El Archivo debe ser formato Excel 97/2003');
    end;

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.LimpiarFiltros1Click(Sender: TObject);
begin
  inherited;
  dbgTerjetas.RemoveAllFilters;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.LimpiarFiltrosExecute(Sender: TObject);
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

procedure TFormListadoMovTarjetasCreditoRecibidas.MarcaNoAcreditadaExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spMarcarTC.Close;
    spMarcarTC.Params.ParamByName('id').Value    :=CDSMovTcID_MOV_TC.Value;
    spMarcarTC.Params.ParamByName('estado').Value:='N';
    spMarcarTC.ExecProc;
    spMarcarTC.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se marco la TC...');
  end;
  Buscar.Execute;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.ReemplazarTCExecute(Sender: TObject);
begin
  inherited;
  if CDSMovTcACREDITADA.Value='N' then
    begin
      if  Application.MessageBox ('Va hacer un reemplazo de la tarjeta por efectivo.. ¿Desea continuar?', 'Confirmar', mb_YesNo Or mb_IconWarning Or mb_DefButton2) = mrYes Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spReemplazaTC_efec.Close;
            spReemplazaTC_efec.Params.ParamByName('id_mov_tarjeta').AsInteger    :=CDSMovTcID_MOV_TC.Value;
            spReemplazaTC_efec.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spReemplazaTC_efec.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se marco la TC...');
          end;
          Buscar.Execute;
        end;
    end;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.ReHacerIniExecute(
  Sender: TObject);
begin
  inherited;
  DeleteFile(ExtractFilePath(ParamStr(0))+'_grillaTCredito');
  Close;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date:=EncodeDate(y,m,1);
//  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  Desde.SetFocus;
  Desde2.Date := Desde.Date;
  Hasta2.date := Hasta.Date;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaTCredito');
 //*************************************************************

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.GenerarCampos;
begin
  mtDatos.Close;
  mtDatos.FieldDefs.Clear;
  mtDatos.FieldDefs.Add('FECHAVTA',TFieldType.ftString,10,false);
  mtDatos.FieldDefs.Add('FECHAPAGO',TFieldType.ftString,10,false);
  mtDatos.FieldDefs.Add('FECHAANTICIPO',TFieldType.ftString,10,false);
  mtDatos.FieldDefs.Add('NROLIQUIDACION',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('NROEQUIPO',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('NOMBREEQUIPO',TFieldType.ftString,25,false);
  mtDatos.FieldDefs.Add('NROLOTE',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('NROCUPON',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('TARJETA',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('ULTIMOSDIGITOS',TFieldType.ftString,25,false);
  mtDatos.FieldDefs.Add('AUTORIZACION',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('CUOTAS',TFieldType.ftString,5,false);
  mtDatos.FieldDefs.Add('IMPVTA',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('CASH',TFieldType.ftString,1,false);
  mtDatos.FieldDefs.Add('NROCOMERCIO',TFieldType.ftString,15,false);
  mtDatos.FieldDefs.Add('RECHAZO',TFieldType.ftString,1,false);
  mtDatos.FieldDefs.Add('ARANCEL',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('IVA_ARANCEL',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('CFO',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('IVA_CFO',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('ALICUOTA_IVA_CFO',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('TIPO_OP',TFieldType.ftString,20,false);
  mtDatos.FieldDefs.Add('ID_UNICO',TFieldType.ftString,20,false);

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.GenerarGuardarLiquidacionExecute(
  Sender: TObject);
var i:Integer;
FechaStr:String;
Codigo,Numero  :String;
Id_Cta_caja_Banco,Num:Integer;
begin
  inherited;
  if Not(Assigned(Lista)) then
    lista:=TStringList.Create;
  lista.Clear;
  For I:=0 to sgNubceo.RowCount-1 do
    begin
      if (Trim(sgNubceo.Cells[7,I+1])<>'') then
        begin
          QBuscaCodigoCliente.close;
          QBuscaCodigoCliente.ParamByName('NRO_REFERENCIA').Value:=StrToInt64(sgNubceo.Cells[7,I+1]);
          QBuscaCodigoCliente.Open;
          Codigo           := QBuscaCodigoCliente.Fields[0].AsString;
          Id_Cta_caja_Banco:= QBuscaCodigoCliente.Fields[1].AsInteger;
          QBuscaCodigoCliente.close;
        end;

      if (Codigo<>'') then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spIngresaLiquidacioNubceo.Close;
            spIngresaLiquidacioNubceo.Prepare;
            spIngresaLiquidacioNubceo.ParamByName('id').AsString              := sgNubceo.Cells[0,I];
            spIngresaLiquidacioNubceo.ParamByName('codigo').AsString          := Codigo;
            spIngresaLiquidacioNubceo.ParamByName('tarjeta').AsString         := sgNubceo.Cells[4,I];
            spIngresaLiquidacioNubceo.ParamByName('referencia').AsString      := sgNubceo.Cells[2,I];

            FechaStr := Copy(sgNubceo.Cells[9,I+1],9,2)+'/'+Copy(sgNubceo.Cells[9,I+1],6,2)+'/'+Copy(sgNubceo.Cells[9,I+1],1,4);

            spIngresaLiquidacioNubceo.ParamByName('fecha').AsDate                   := StrToDate(FechaStr);
            spIngresaLiquidacioNubceo.ParamByName('total_bruto').AsFloat            := StrTofloat(sgNubceo.Cells[11,I+1]);
            spIngresaLiquidacioNubceo.ParamByName('total_impuestos').AsFloat        := StrTofloat(sgNubceo.Cells[12,I+1]);
            spIngresaLiquidacioNubceo.ParamByName('total_deducciones').AsFloat      := StrTofloat(sgNubceo.Cells[13,I+1]);
            spIngresaLiquidacioNubceo.ParamByName('total_neto').AsFloat             := StrTofloat(sgNubceo.Cells[14,I+1]);
            spIngresaLiquidacioNubceo.ParamByName('banco_pagador').AsString         := sgNubceo.Cells[16,I+1];
            spIngresaLiquidacioNubceo.ParamByName('periodo').AsString               := sgNubceo.Cells[15,I+1];
            spIngresaLiquidacioNubceo.ParamByName('estado').AsString                := 'N';
            spIngresaLiquidacioNubceo.ParamByName('identificador_empresa').AsString := sgNubceo.Cells[6,I+1];
            spIngresaLiquidacioNubceo.ParamByName('sucursal_comercio').AsString     := sgNubceo.Cells[7,I+1];
            spIngresaLiquidacioNubceo.ParamByName('Lote').AsString                  := edLote.Text;
            spIngresaLiquidacioNubceo.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            spIngresaLiquidacioNubceo.Close;
          except
            lista.Add(sgNubceo.Cells[2 ,I+1]+' - '+
                      sgNubceo.Cells[4 ,I+1]+' - '+
                      sgNubceo.Cells[14,I+1]);

            DMMain_FD.fdcGestion.Rollback;
          end;
        end;

    end;
  ShowMessage('Operacion Finzalizada.....');
  if Lista.Count>0 then
    ShowMessage('Hay Novedades de Importacion.....');

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.GenerarRecibosExecute(
  Sender: TObject);
var i:Integer;
FechaStr:String;
Codigo,Numero  :String;
Id_Cta_caja_Banco,Num:Integer;
begin
  inherited;
  if Not(Assigned(Lista)) then
    lista:=TStringList.Create;
  lista.Clear;
  if dbcCtas.KeyValue <= 0 then
    raise Exception.Create('No Hay Caja Seleccionada....');

  if dbcComprobante.KeyValue <= 0 then
    raise Exception.Create('No Hay Comprobante de Recibo Seleccionado....');

  For I:= 0 to dbgLiquidaciones.RowCount-1 do
    begin
      if (Trim(dbgLiquidaciones.Cells[6,I+1])<>'') then
        begin
          QBuscaCodigoCliente.close;
          QBuscaCodigoCliente.ParamByName('NRO_REFERENCIA').Value:=StrToInt64(dbgLiquidaciones.Cells[6,I+1]);
          QBuscaCodigoCliente.Open;
          Codigo           := QBuscaCodigoCliente.Fields[0].AsString;
          Id_Cta_caja_Banco:= QBuscaCodigoCliente.Fields[1].AsInteger;
          QBuscaCodigoCliente.close;
        end;

      if (Codigo<>'') and (Id_Cta_caja_Banco>0) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QUltimoNro.Close;
            QUltimoNro.ParamByName('clase').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('clase_comprob').Value;
            QUltimoNro.ParamByName('suc').Value      := dbcComprobante.LookupSource.DataSet.FieldByName('prefijo').Value;
            QUltimoNro.ParamByName('sucursal').Value := dbcComprobante.LookupSource.DataSet.FieldByName('sucursal').Value;

            QUltimoNro.Open;

            spGenerarRecibo.Close;
            spGenerarRecibo.Prepare;
            spGenerarRecibo.ParamByName('codigo').AsString      := Codigo;

            FechaStr := dbgLiquidaciones.Cells[5,I+1];

            spGenerarRecibo.ParamByName('fecha').AsDate             := StrToDate(FechaStr);
            spGenerarRecibo.ParamByName('id_comprobante').AsInteger := dbcComprobante.KeyValue;
            spGenerarRecibo.ParamByName('importe').AsFloat          := StrTofloat(dbgLiquidaciones.Cells[10,I+1]);
            spGenerarRecibo.ParamByName('usuario').AsString         := DMMain_FD.UsuarioActivo;
            spGenerarRecibo.ParamByName('numero_rc').Value          := QUltimoNroMAX.Value;
            spGenerarRecibo.ParamByName('id_caja').AsInteger        := dbcCtas.KeyValue;
            spGenerarRecibo.ParamByName('idtc').AsInteger           := Id_Cta_caja_Banco;
            spGenerarRecibo.ParamByName('Tipo_Pago').AsInteger      := 5;
            spGenerarRecibo.ParamByName('Form_Pago').AsInteger      := DMMain_FD.GetPrimerClasePago(5);
            spGenerarRecibo.ParamByName('detalle').AsString         := 'Cobranza '+dbgLiquidaciones.Cells[3,I+1];
            spGenerarRecibo.ExecProc;
            if spGenerarRecibo.ParamByName('id_recibo').Value>0 then
              begin
                QCargarLote.Close;
                QCargarLote.ParamByName('id_recibo').Value:=spGenerarRecibo.ParamByName('id_recibo').Value;
                QCargarLote.ParamByName('Lote').value:=edLote.Text;
                QCargarLote.ExecSQL;
              end;

            DMMain_FD.fdcGestion.Commit;
            spGenerarRecibo.Close;

          except
            lista.Add(dbgLiquidaciones.Cells[1 ,I+1]+' - '+
                      dbgLiquidaciones.Cells[2 ,I+1]+' - '+
                      dbgLiquidaciones.Cells[3, I+1]+' - $ '+
                      dbgLiquidaciones.Cells[5, I+1]);

            DMMain_FD.fdcGestion.Rollback;
          end;
        end;

    end;
  ShowMessage('Operacion Finzalizada.....');
  if Lista.Count>0 then
    ShowMessage('Hay Novedades de Importacion.....');

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoMovTarjetasCreditoRecibidas:=nil;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.FormCreate(Sender: TObject);
begin
  //inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  QCajas.Open;
  QComp.Open;
  QModosDeCobro.Open;

  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'TarjetasAPI.ini');
  edUser.Text             := ArchivoIni.ReadString('Dato', 'user','');
  edPass.Text             := ArchivoIni.ReadString('Dato', 'pass','');
  dbcComprobante.KeyValue := ArchivoIni.ReadInteger('Dato', 'Comprobante',-1);
  dbcCtas.KeyValue        := ArchivoIni.ReadInteger('Dato', 'CtaCaja',-1);

  ArchivoIni.Free;

  QTCredito.Open;
  QSucursal.Open;
  CDSMovTc.Open;

  pcMovimientos.ActivePageIndex:=0;
  pcNubceo.ActivePageIndex     :=0;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSMovTc.Close;
  QTCredito.Close;

  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaTCredito');
  //*************************************************************
  ArchivoIni     := TIniFile.Create(ExtractFilePath(ParamStr(0))+'TarjetasAPI.ini');
  ArchivoIni.WriteString('Dato', 'user',edUser.Text);
  ArchivoIni.WriteString('Dato', 'pass',edPass.Text);
  if Not(VarIsNull(dbcComprobante.KeyValue)) then
    ArchivoIni.WriteInteger('Dato', 'Comprobante',dbcComprobante.KeyValue)
  else
    ArchivoIni.WriteInteger('Dato', 'Comprobante',-1);

  ArchivoIni.WriteInteger('Dato', 'CtaCaja',dbcCtas.KeyValue);
  QCajas.Close;
  QComp.Close;
  QModosDeCobro.Close;

  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListaMov.DesignReport;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.sgNubceoGetAlignment(
  Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment;
  var VAlign: TVAlignment);
begin
  inherited;
  if (Acol>=11) and (Acol<=14) then
    HAlign:= taRightJustify;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.DSMovTcStateChange(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';

end;


procedure TFormListadoMovTarjetasCreditoRecibidas.ExportarExcel1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  cxDBPivotGrid1.OptionsView.FilterFields   :=False;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
  cxDBPivotGrid1.OptionsView.DataFields     :=False;
  cxDBPivotGrid1.OptionsView.RowFields      :=False;

  SaveDialog1.FileName:='Existencias';
  SaveDialog1.DefaultExt:='XLS';
  if SaveDialog1.Execute Then
    begin
      if Not(AnsiEndsText('xls',SaveDialog1.FileName)) then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName)
    end;

  cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
  cxDBPivotGrid1.OptionsView.FilterFields   :=True;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
  cxDBPivotGrid1.OptionsView.DataFields     :=True;
  cxDBPivotGrid1.OptionsView.RowFields      :=True;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.dbcTarjetasChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

//procedure TFormListadoTCRecibidas.dbgMovDrawColumnCell(Sender: TObject;
//  const Rect: TRect; DataCol: Integer; Column: TColumn;
//  State: TGridDrawState);
//begin
//  inherited;
////  dbgMov.Canvas.Font.Style :=[];
////  if rgEstados.ItemIndex=0 Then
////    begin
//      if CDSMovTcACREDITADA.Value='S' Then
//        dbgMov.Canvas.Font.Style :=[fsBold]
//      else
//        if CDSMovTcACREDITADA.Value='X' Then
//           dbgMov.Canvas.Font.Style :=[fsStrikeOut]
//        else
//          if CDSMovTcACREDITADA.Value='N' Then
//             dbgMov.Canvas.Font.Style :=[];
////    end;
//    if ((CDSMovTcID_COMPROBANTE.Value<=0) or (VarIsNull(CDSMovTcID_COMPROBANTE.Value))) then
//      dbgMov.Canvas.Font.Color :=clRed;
//
//
//  dbgMov.DefaultDrawColumnCell(Rect,DataCol,Column,State);
//end;

procedure TFormListadoMovTarjetasCreditoRecibidas.dbgLiquidacionesGetAlignment(
  Sender: TObject; ARow, ACol: Integer; var HAlign: TAlignment;
  var VAlign: TVAlignment);
begin
  inherited;
   if Acol>=12 then
    HAlign:= taRightJustify;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.dbgMovKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    begin
      QCambiaFecha.Close;
      QCambiaFecha.ParamByName('Fecha').Clear;
      QCambiaFecha.ParamByName('id').Value    :=CDSMovTcID_MOV_TC.Value;
      QCambiaFecha.ExecSQL;
      QCambiaFecha.Close;
      Buscar.Execute;
    end;

end;


procedure TFormListadoMovTarjetasCreditoRecibidas.dbgTerjetasGetAlignment(Sender: TObject; ARow,
  ACol: Integer; var HAlign: TAlignment; var VAlign: TVAlignment);
begin
  inherited;
 if Acol>=12 then
    HAlign:= taRightJustify;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.dbgTerjetasGetFloatFormat(Sender: TObject;
  ACol, ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
  inherited;
  if ACol=12 then
    FloatFormat:='%.2n';
  if ACol=17 then
    FloatFormat:='%.2n';
  if ACol=18 then
    FloatFormat:='%.2n';
  if ACol=19 then
    FloatFormat:='%.2n';
  if ACol=20 then
    FloatFormat:='%.2n';
  if ACol=21 then
    FloatFormat:='%.2n';

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.AdvGridExcelIODateTimeFormat(
  Sender: TAdvStringGrid; const GridCol, GridRow, XlsCol, XlsRow: Integer;
  const Value: WideString; var DateFormat, TimeFormat: WideString);
begin
  inherited;
  DateFormat:='dd/mm/yyyy';
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.chbFiltroProcesamientoClick(Sender: TObject);
begin
  inherited;
  sgNubceo.FilterDropDownAuto:=chbFiltroProcesamiento.Checked;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.chbFiltraConsultaClick(
  Sender: TObject);
begin
  inherited;
  dbgLiquidaciones.PageMode          := chbFiltraConsulta.Checked;
  dbgLiquidaciones.FilterDropDownAuto:= chbFiltraConsulta.Checked;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.AjustarTCExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) Then
  begin
    DMMain_FD.fdcGestion.StartTransaction;
    try
      spMarcarTC.Close;
      spMarcarTC.Params.ParamByName('id').AsInteger    :=CDSMovTcID_MOV_TC.Value;
      spMarcarTC.Params.ParamByName('estado').AsString :='X';
      spMarcarTC.ExecProc;
      DMMain_FD.fdcGestion.Commit;
      spMarcarTC.Close;
    except
      spMarcarTC.Close;
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se marco la TC...');
    end;
    Buscar.Execute;
  end;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.btLeerTarjetasClick(Sender: TObject);
VAR
  i:Integer;
  json: TJSONObject;
  data: TJSONArray;
  row: TJSONArray;
begin
  inherited;
    //FDMemTable.DataSource := nil;
  if (Trim(edUser.Text)<>'') and (Trim(edPass.Text)<>'') then
    begin
      dbgTerjetas.AutoSize:=False;
      RESTClient1.BaseURL:= 'https://fideliusmp.com.ar/SERVER/API/v2.1/?user='+ edUser.Text+// corvinas+
                            '&pass='+edPass.Text+// LOlo05570+
                            '$&action=cupones&desde='+FormatDateTime('YYYY-MM-DD',Desde.Date)+//  2023-03-02+
                            '&hasta='+FormatDateTime('YYYY-MM-DD',Hasta.Date)+// 2023-03-02+
                            '&estado=true';
       GenerarCampos;
       dbgTerjetas.PageMode:=True;
       dbgTerjetas.DataSource:=nil;
       mtDatos.Open;
       RESTRequest1.Execute;

      // Analiza la respuesta JSON
      json := TJSONObject.ParseJSONValue(RESTResponse1.Content) as TJSONObject;
      try
        // Accede al array de datos en el objeto JSON
        data := json.GetValue('data') as TJSONArray;
        // Recorre todas las filas de datos y agrega cada fila a la tabla
        for i := 0 to data.Count - 1 do
          begin
            row := data.Items[i] as TJSONArray;

            mtDatos.Append;
            mtDatos.Fields[0].AsString  := row.Items[0].Value;
            mtDatos.Fields[1].AsString  := row.Items[1].Value;
            mtDatos.Fields[2].AsString  := row.Items[2].Value;
            mtDatos.Fields[3].Value     := row.Items[3].Value;
            mtDatos.Fields[4].Value     := row.Items[4].Value;
            mtDatos.Fields[5].Value     := row.Items[5].Value;
            mtDatos.Fields[6].Value     := row.Items[6].Value;
            mtDatos.Fields[7].Value     := row.Items[7].Value;
            mtDatos.Fields[8].Value     := row.Items[8].Value;
            mtDatos.Fields[9].Value     := row.Items[9].Value;
            mtDatos.Fields[10].Value    := row.Items[10].Value;
            mtDatos.Fields[11].Value    := row.Items[11].Value;
            mtDatos.Fields[12].Value    := row.Items[12].Value;
            mtDatos.Fields[13].Value    := row.Items[13].Value;
            mtDatos.Fields[14].Value    := row.Items[14].Value;
            mtDatos.Fields[15].Value    := row.Items[15].Value;
            mtDatos.Fields[16].Value    := row.Items[16].Value;
            mtDatos.Fields[17].Value    := row.Items[17].Value;
            mtDatos.Fields[18].Value    := row.Items[18].Value;
            mtDatos.Fields[19].Value    := row.Items[19].Value;
            mtDatos.Fields[20].Value    := row.Items[20].Value;
            mtDatos.Fields[21].Value    := row.Items[21].Value;
            mtDatos.Fields[22].Value    := row.Items[22].Value;
            mtDatos.Post;
          end;
      finally
        json.Free;
      end;
      dbgTerjetas.DataSource:=DSDatos;

      dbgTerjetas.PageMode:=False;
      dbgTerjetas.AutoSize:=True;

      dbgTerjetas.FloatingFooter.ColumnCalc[12] := acSUM;
      dbgTerjetas.FloatingFooter.ColumnCalc[17] := acSUM;
      dbgTerjetas.FloatingFooter.ColumnCalc[18] := acSUM;
      dbgTerjetas.FloatingFooter.ColumnCalc[19] := acSUM;
      dbgTerjetas.FloatingFooter.ColumnCalc[20] := acSUM;
      dbgTerjetas.FloatingFooter.ColumnCalc[21] := acSUM;
    end;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.btNovedadesClick(
  Sender: TObject);
begin
  inherited;
 if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Application);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.BorrarMovExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) and ((CDSMovTcID_COMPROBANTE.Value<=0) or (VarisNull(CDSMovTcID_COMPROBANTE.Value))) then
    begin
      QBorrarMov.Close;
      QBorrarMov.ParamByName('id').Value:=CDSMovTcID_MOV_TC.Value;
      QBorrarMov.ExecSQL;
      QBorrarMov.Close;
      Buscar.Execute;
    end
  else
    ShowMessage('Operación no Permitida...');  


end;

procedure TFormListadoMovTarjetasCreditoRecibidas.btExcelClick(Sender: TObject);
begin
  inherited;
  //  Exportar en cxGrid  usar :cxGridExportLink
//  cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGMovTC);

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if pcMovimientos.ActivePageIndex=1 then
    begin
      IF NOT (CDSMovTC.IsEmpty) THEN
        BEGIN
          SaveDialog1.FileName   := 'MovTCredito';
          SaveDialog1.DefaultExt := 'XLS';
          SaveDialog1.FileName   := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
          if SaveDialog1.Execute then
            if SaveDialog1.FileName<>'' then
              begin
                if VirtualUI.Active then
                  if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

                cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

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
  if pcMovimientos.ActivePageIndex=0 then
    begin
      IF NOT (CDSMovTC.IsEmpty) THEN
        BEGIN
          SaveDialog1.FileName   := 'MovTCreditoDetalle';
          SaveDialog1.DefaultExt := 'xls';
          SaveDialog1.FileName   := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
          if SaveDialog1.Execute then
            if SaveDialog1.FileName<>'' then
              begin
                if VirtualUI.Active then
                  if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

                TMSFNCDataGridExcelIO1.XLSExport(SaveDialog1.FileName);

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

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.btExcelGastosClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSMovTc.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName   := 'Tarjeas';
      SaveDialog1.DefaultExt := 'XLS';
      SaveDialog1.FileName   := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' then
          begin
            cxDBPivotGrid1.OptionsView.DataFields     :=False;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
            cxDBPivotGrid1.OptionsView.RowFields      :=False;
            cxDBPivotGrid1.OptionsView.FilterFields   :=False;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
            begin
              if VirtualUI.Active then
                if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
              if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog1.FileName);
            end;
            cxDBPivotGrid1.OptionsView.DataFields     :=True;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
            cxDBPivotGrid1.OptionsView.RowFields      :=True;
            cxDBPivotGrid1.OptionsView.FilterFields   :=True;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;



procedure TFormListadoMovTarjetasCreditoRecibidas.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if VarIsNull(dbcTarjetas.KeyValue) or (dbcTarjetas.KeyValue<=0) then
    dbcTarjetas.KeyValue:=-1;
  sbEstado.SimpleText:='Generando Consulta....';
  Application.ProcessMessages;
  CDSMovTc.IndexDefs.Clear;
  QLote.Close;
  QLote.Params.ParamByName('id').Value:= dbcTarjetas.KeyValue;
  case rgEstados.ItemIndex of
    0:QLote.ParamByName('Acreditada').Value:='*';
    1:QLote.ParamByName('Acreditada').Value:='N';
    2:QLote.ParamByName('Acreditada').Value:='S';
  end;
  QLote.open;

  QTerminal.Close;
  QTerminal.Params.ParamByName('id').Value:=dbcTarjetas.KeyValue;
  case rgEstados.ItemIndex of
    0:QTerminal.ParamByName('Acreditada').Value:='*';
    1:QTerminal.ParamByName('Acreditada').Value:='N';
    2:QTerminal.ParamByName('Acreditada').Value:='S';
  end;
  QTerminal.open;

  TMSFNCDataGrid1.Options.Sorting.Enabled:=False;
  CDSMovTc.Close;
  CDSMOvTc.IndexDefs.Clear;
  CDSMovTc.IndexName:='';
  CDSMovTc.Params.ParamByName('id_tarjeta').Value:=dbcTarjetas.KeyValue;
  case rgEstados.ItemIndex of
    0:CDSMovTc.Params.ParamByName('Acred').Value:='*';
    1:CDSMovTc.Params.ParamByName('Acred').Value:='N';
    2:CDSMovTc.Params.ParamByName('Acred').Value:='S';
  end;
  CDSMovTc.Params.ParamByName('desde').AsDate:=desde.Date;
  CDSMovTc.Params.ParamByName('hasta').AsDate:=hasta.date;
  case rgFechas.ItemIndex of
    0: CDSMovTc.Params.ParamByName('vta_acred').Value:='V';
    1: CDSMovTc.Params.ParamByName('vta_acred').Value:='A';
    2: CDSMovTc.Params.ParamByName('vta_acred').Value:='P';
  end;

  TMSFNCDataGrid1.Options.Sorting.Direction:=gsdNone;
  TMSFNCDataGrid1.Options.Sorting.Enabled:=True;

  CDSMovTc.Params.ParamByName('Lote').Value     := dbcLote.KeyValue;
  CDSMovTc.Params.ParamByName('Terminal').Value := dbcTerminal.KeyValue;
  CDSMovTc.Params.ParamByName('sucursal').Value := StrToInt(dbcSucursal.KeyValue);
  CDSMovTc.Open;

  sbEstado.SimpleText:='';
  Screen.Cursor      :=crDefault;
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  pnPrincipal.SetFocus;
  TMSFNCDataGrid1.ClearFilter;
  TMSFNCDataGrid1.AutoSizeGrid(gamAllCells,10);
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.BuscarLiquidacionesExecute(
  Sender: TObject);
begin
  inherited;
  QLiquidaciones.Close;
  QLiquidaciones.ParamByName('Desde').AsDate:=Desde2.Date;
  QLiquidaciones.ParamByName('hasta').AsDate:=Hasta2.Date;
  QLiquidaciones.Open;
  var i:Integer;
  for I := 0 to dbgLiquidaciones.ColCount-1 do
    dbgLiquidaciones.AutoSizeCol(I,5);
  dbgLiquidaciones.FixedRows :=1;
  dbgLiquidaciones.Options   := dbgLiquidaciones.Options+[goColSizing];


end;

procedure TFormListadoMovTarjetasCreditoRecibidas.CamposxColumnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=Not(cxDBPivotGrid1.OptionsView.FilterSeparator);
  cxDBPivotGrid1.OptionsView.FilterFields   :=Not(cxDBPivotGrid1.OptionsView.FilterFields);
  cxDBPivotGrid1.OptionsView.FilterSeparator:=Not(cxDBPivotGrid1.OptionsView.FilterSeparator);
  cxDBPivotGrid1.OptionsView.ColumnFields   :=Not(cxDBPivotGrid1.OptionsView.ColumnFields);
  cxDBPivotGrid1.OptionsView.DataFields     :=Not(cxDBPivotGrid1.OptionsView.DataFields);
  cxDBPivotGrid1.OptionsView.RowFields      :=Not(cxDBPivotGrid1.OptionsView.RowFields);
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.CDSMovTcCalcFields(DataSet: TDataSet);
var
a,m,d:Word;
begin
  inherited;

  if ((CDSMovTcFECHA.AsDateTime>0) and (Not(VarIsNull(CDSMovTcFECHA.AsDateTime)))) then
    begin
      CDSMovTcMESPRESENTACION.Value           :=(FormatDateTime('yyyy-mm',CDSMovTcFECHA.AsDateTime));
      CDSMovTcMESPRESENTACION_FECHA.AsDateTime:=CDSMovTcFECHA.AsDateTime;
    end;

  if ( (CDSMovTcFECHA_ACREDITACION.AsString<>'') and (CDSMovTcFECHA_ACREDITACION.AsDateTime>0) and (Not(VarIsNull(CDSMovTcFECHA_ACREDITACION.AsDateTime)))) then
    begin
      CDSMovTcMESACREDITADO.Value          := (FormatDateTime('yyyy-mm',CDSMovTcFECHA_ACREDITACION.AsDateTime));
      CDSMovTcMESACREDITA_FECHA.AsDateTime := CDSMovTcFECHA_ACREDITACION.AsDateTime;
    end;

  if ((CDSMovTcFECHAACREDITACION_PROBABLE.AsDateTime>0) and (Not(VarIsNull(CDSMovTcFECHAACREDITACION_PROBABLE.AsDateTime)))) then
    begin
      CDSMovTcMESPOSIBLEACREDI.Value         :=FormatDateTime('yyyy-mm',CDSMovTcFECHAACREDITACION_PROBABLE.AsDateTime);
      CDSMovTcMESPOSIBLEACR_FECHA.AsDateTime :=CDSMovTcFECHAACREDITACION_PROBABLE.AsDateTime;
    end;

  case CDSMovTcACREDITADA.Value[1] of
    'S':CDSMovTcMUESTRAACREDITACION.Value := 'Acreditada';
    'N':CDSMovTcMUESTRAACREDITACION.Value := 'Pendiente';
    'X':CDSMovTcMUESTRAACREDITACION.Value := 'Ajustada';
  end;

  CDSMovTcMUESTRASEMANAACREDI.Value :=WeekOfTheMonth(CDSMovTcFECHA_ACREDITACION.AsDateTime);
  CDSMovTcMUESTRASEMANAPOSIBLE.Value:=WeekOfTheMonth(CDSMovTcFECHAACREDITACION_PROBABLE.AsDateTime);
  CDSMovTcMUESTRASEMANAPRESEN.Value :=WeekOfTheMonth(CDSMovTcFECHA.AsDateTime);


 end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cheBox_PortalClick(Sender: TObject);
begin
  inherited;
  dbgTerjetas.FilterDropDownAuto:=cheBox_Portal.Checked;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.chbAgrupacionClick(
  Sender: TObject);
begin
  inherited;
  TMSFNCDataGrid1.Header.Visible :=chbAgrupacion.Checked;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cxDBPivotGrid1MouseDown(Sender: TObject;
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


procedure TFormListadoMovTarjetasCreditoRecibidas.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormListadoMovTarjetasCreditoRecibidas.cxGMovTCDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  //TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName
  if (TcxGridDBColumn(ACellViewInfo.Item).DataBinding.FieldName='FECHA_ACREDITACION') and (DateToStr(CDSMovTcFECHA_ACREDITACION.AsDateTime)[1]<>' ') then
    begin
      if Not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      FormFecha.dbcCtaBco.Visible   := False;
      FormFecha.dbcSucursal.Visible := False;
      FormFecha.lbCta.Visible       := False;
      FormFecha.Label1.Visible      := False;
      FormFecha.fecha               := Date;
      FormFecha.ShowModal;
      if FOrmFecha.ModalResult=mrOk then
        begin
          QCambiaFecha.Close;
          QCambiaFecha.ParamByName('Fecha').AsDate:=FormFecha.fecha;
          QCambiaFecha.ParamByName('id').Value    :=CDSMovTcID_MOV_TC.Value;
          QCambiaFecha.ExecSQL;
          QCambiaFecha.Close;
          Buscar.Execute;
        end;
    end;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cxGMovTCDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
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

procedure TFormListadoMovTarjetasCreditoRecibidas.cxGMovTCDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  inherited;
 // IF (AViewInfo.GridRecord.Values[14] = 'S') or
//     (AViewInfo.GridRecord.Values[14] = 'A') or
//     (AViewInfo.GridRecord.Values[14] = 'R')
//   THEN
//     ACanvas.Font.Style := [fsStrikeout]
//   else
//     ACanvas.Font.Style := [];


     IF (AViewInfo.GridRecord.Values[31] = 'S') Then
        ACanvas.Font.Style :=[fsBold]
      else
        if (AViewInfo.GridRecord.Values[31] ='X') Then
           ACanvas.Font.Style :=[fsStrikeOut]
        else
          if (AViewInfo.GridRecord.Values[31] ='N') Then
             ACanvas.Font.Style :=[];

end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cxGMovTCDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  VerComprobante.Execute;
end;

procedure TFormListadoMovTarjetasCreditoRecibidas.cxGMovTCDBTableView1Editing(
  Sender: TcxCustomGridTableView; AItem: TcxCustomGridTableItem;
  var AAllow: Boolean);
begin
  inherited;
  if (TcxGridDBColumn(AItem.FocusedCellViewInfo.Item).DataBinding.FieldName='FECHA_ACREDITACION') and (CDSMovTcACREDITADA.AsString[1]='S') then
    begin
      if Not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      FormFecha.dbcCtaBco.Visible   := False;
      FormFecha.dbcSucursal.Visible := False;
      FormFecha.lbCta.Visible       := False;
      FormFecha.Label1.Visible      := False;
      FormFecha.fecha               := Date;
      FormFecha.ShowModal;
      if FOrmFecha.ModalResult=mrOk then
        begin
          QCambiaFecha.Close;
          QCambiaFecha.ParamByName('Fecha').AsDate:=FormFecha.fecha;
          QCambiaFecha.ParamByName('id').Value    :=CDSMovTcID_MOV_TC.Value;
          QCambiaFecha.ExecSQL;
          QCambiaFecha.Close;
          Buscar.Execute;
        end;
    end;

end;


procedure TFormListadoMovTarjetasCreditoRecibidas.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

end.