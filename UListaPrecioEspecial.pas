unit UListaPrecioEspecial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Math, StrUtils, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, Grids,
  IBGenerator, DBGrids,    JvComponentBase,
  ImgList, JvExControls, JvGradient, DataExport, DataToAscii,
  Menus, ActnPopup, JvArrowButton,recerror, JvDBLookup, JvExComCtrls,
  JvProgressBar, cxStyles, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxCustomData, cxGraphics, cxFilter, cxData, cxDataStorage,
  cxEdit, cxDBData, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, DataToXLS,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit,
  JvBaseEdits, cxLookAndFeels, cxLookAndFeelPainters, dxSkinBlack, dxSkinBlue,
  CheckLst, DBXCommon, dxSkinOffice2007Black, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxNavigator, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, Datasnap.DBClient,
  Datasnap.Provider, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvOfficeButtons, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  AdvOfficePager, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCProgressBar;

type
  TFormListaPrecioEspecial = class(TFormABMBase)
    pnCabecera: TPanel;
    DSListaRub: TDataSource;
    DSListaSub: TDataSource;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    Label3: TLabel;
    dbeRecargo: TDBEdit;
    Label4: TLabel;
    ibgRub: TIBGenerator;
    ibgSub: TIBGenerator;
    DSListaArt: TDataSource;
    ibgArt: TIBGenerator;
    Panel2: TPanel;
    dbcPorDefecto: TDBCheckBox;
    DSF_Pago: TDataSource;
    Label6: TLabel;
    dbcUsoAdmin: TDBCheckBox;
    ToolButton1: TToolButton;
    Recalculo: TAction;
    sbRecalcular: TSpeedButton;
    ToolButton2: TToolButton;
    Clonar: TAction;
    pnClonada: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    Label8: TLabel;
    ToolButton3: TToolButton;
    spClonar: TSpeedButton;
    AClones: TAction;
    spCalculaClonadas: TSpeedButton;
    DataToAscii: TDataToAscii;
    ToolButton4: TToolButton;
    ExpTxt: TAction;
    SaveDialog1: TSaveDialog;
    DataToAsciiRubro: TDataToAscii;
    ExpTxtDis: TAction;
    DataToAsciiDISC: TDataToAscii;
    DataToAsciiRubrosDisc: TDataToAscii;
    Splitter1: TSplitter;
    Splitter2: TSplitter;
    DataToAsciiRubrosDiscFuturo: TDataToAscii;
    DataToAsciiDISCFuturo: TDataToAscii;
    ExpTxDisFuturo: TAction;
    PopupMenu1: TPopupMenu;
    ExportarTxtPreciosActuales1: TMenuItem;
    ExpTxDisFuturo1: TMenuItem;
    btEportarTXT: TJvArrowButton;
    ExportaraTx1: TMenuItem;
    DataToAsciiClientes: TDataToAscii;
    DataToAsc_codigoprecio: TDataToAscii;
    ExpTxtCodigoPrecio: TAction;
    ExpTxtCodigoPrecio1: TMenuItem;
    ExportarXML: TAction;
    ImportarXML: TAction;
    dbcMarca: TJvDBLookupCombo;
    DSMarcas: TDataSource;
    Label7: TLabel;
    pgRubro: TJvProgressBar;
    dbgArticulosDBTableView1: TcxGridDBTableView;
    dbgArticulosLevel1: TcxGridLevel;
    dbgArticulos: TcxGrid;
    dbgSubRubroDBTableView1: TcxGridDBTableView;
    dbgSubRubroLevel1: TcxGridLevel;
    dbgSubRubro: TcxGrid;
    dbgSubRubroDBTableView1RUBRO: TcxGridDBColumn;
    dbgSubRubroDBTableView1SUBRUBRO: TcxGridDBColumn;
    dbgSubRubroDBTableView1RECARGO: TcxGridDBColumn;
    dbgSubRubroDBTableView1ID: TcxGridDBColumn;
    dbgSubRubroDBTableView1ID_CAB: TcxGridDBColumn;
    dbgSubRubroDBTableView1MUESTRASUBRUBRO: TcxGridDBColumn;
    dbgRubro: TcxGrid;
    dbgRubroDBTableView1: TcxGridDBTableView;
    dbgRubroLevel1: TcxGridLevel;
    dbgRubroDBTableView1ID_CAB: TcxGridDBColumn;
    dbgRubroDBTableView1ID: TcxGridDBColumn;
    dbgRubroDBTableView1RUBRO: TcxGridDBColumn;
    dbgRubroDBTableView1RECARGO: TcxGridDBColumn;
    dbgRubroDBTableView1MUESTRARUBRO: TcxGridDBColumn;
    ExportarXLSCodigoCostoVta: TAction;
    DataToXLsCodigo_Venta_costo: TDataToXLS;
    ExportaCodigoVtaCostoXLS1: TMenuItem;
    N1: TMenuItem;
    ActualizarCosto: TAction;
    N2: TMenuItem;
    ActualizarCosto1: TMenuItem;
    ControlRubSub: TAction;
    ControlRubroSubdelaLista1: TMenuItem;
    DataToXLSCodigoDetallePrecio: TDataToXLS;
    DataToTxtConStock: TDataToAscii;
    ExportaConStock: TAction;
    ExportaListaConStockenTXT1: TMenuItem;
    dbeFecha: TJvDBDateEdit;
    dbcFormaPago: TJvDBLookupCombo;
    pgSubRubro: TJvProgressBar;
    pgArticulo: TJvProgressBar;
    Redondeo_05: TAction;
    dbgArticulosDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    dbgArticulosDBTableView1MUESTRAARTICULO: TcxGridDBColumn;
    dbgArticulosDBTableView1PRECIOSOMBRA: TcxGridDBColumn;
    dbgArticulosDBTableView1PRECIOSOMBRAMASIVA: TcxGridDBColumn;
    dbgArticulosDBTableView1RECARGO: TcxGridDBColumn;
    dbgArticulosDBTableView1IVA_TASA: TcxGridDBColumn;
    dbgArticulosDBTableView1PRECIO: TcxGridDBColumn;
    dbgArticulosDBTableView1MUESTRADESCMARCA: TcxGridDBColumn;
    dbgArticulosDBTableView1PRECIO_GRAVADO: TcxGridDBColumn;
    dbgArticulosDBTableView1PRECIO_EXENTO: TcxGridDBColumn;
    pnFoot: TPanel;
    Label10: TLabel;
    dbeImporteIva: TJvDBCalcEdit;
    dbeExento: TJvDBCalcEdit;
    dbeGravado: TJvDBCalcEdit;
    Label11: TLabel;
    Label12: TLabel;
    Redondeo_005: TAction;
    ConvertirListaOriginal: TAction;
    N3: TMenuItem;
    ConvertirListaOriginal1: TMenuItem;
    ImportarPorcentaje: TAction;
    spImportarPorcentajes: TSpeedButton;
    DataToCodigoRec: TDataToXLS;
    ExportarXLSCodigoRec: TAction;
    spExportarCodigoRec: TSpeedButton;
    ReasignarLista: TAction;
    N4: TMenuItem;
    ReasignarLista1: TMenuItem;
    Redondeo_5: TAction;
    btRedondeos: TJvArrowButton;
    pmRedondeo: TPopupMenu;
    Redondeo51: TMenuItem;
    N0051: TMenuItem;
    Redondeo52: TMenuItem;
    N5: TMenuItem;
    Redondeo_Menos5: TAction;
    N051: TMenuItem;
    dbgRubroDBTableView1DESCUENTO: TcxGridDBColumn;
    dbgSubRubroDBTableView1DESCUENTO: TcxGridDBColumn;
    dbgArticulosDBTableView1DESCUENTO: TcxGridDBColumn;
    dbgRubroDBTableView1REC_APLICAR: TcxGridDBColumn;
    dbgSubRubroDBTableView1REC_APLICAR: TcxGridDBColumn;
    dbgArticulosDBTableView1REC_APLICAR: TcxGridDBColumn;
    AplicarRec: TAction;
    spAplicaRec: TSpeedButton;
    pnListasClonada: TPanel;
    chklstListas: TCheckListBox;
    btnSalirColumna: TButton;
    spActualizaClonesRec: TSpeedButton;
    lbClones: TLabel;
    TrasladarRecClones: TAction;
    Button1: TButton;
    Label13: TLabel;
    lbMensaje: TLabel;
    dbcEfectivo: TDBCheckBox;
    N6: TMenuItem;
    ExportarPoliticaaXML1: TMenuItem;
    ImportarPoliticadesdeXML1: TMenuItem;
    dbgArticulosDBTableView1Column1: TcxGridDBColumn;
    DBText1: TDBText;
    DBText2: TDBText;
    Label14: TLabel;
    Label15: TLabel;
    dbgArticulosDBTableView1FECHA: TcxGridDBColumn;
    QBuscaList: TFDQuery;
    QF_Pago: TFDQuery;
    QF_PagoCODIGO: TIntegerField;
    QF_PagoDETALLE: TStringField;
    QF_PagoDIAS: TIntegerField;
    QF_PagoDESCUENTO: TFloatField;
    QMarcas_: TFDQuery;
    chRedondeoAll: TAdvOfficeCheckBox;
    N0001: TMenuItem;
    Redondeo_0: TAction;
    DSPBuscaLista: TDataSetProvider;
    CDSBuscaLista: TClientDataSet;
    CDSBuscaListaNOMBRE: TStringField;
    CDSBuscaListaID: TIntegerField;
    CDSBuscaListaRECARGOBASE: TFloatField;
    dbeTotal: TJvDBCalcEdit;
    Label5: TLabel;
    CDSBuscaListaPORDEFECTO: TStringField;
    CDSBuscaListaCLONADA: TStringField;
    AdvOfficePager1: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePage2: TAdvOfficePage;
    Panel3: TPanel;
    Splitter3: TSplitter;
    Splitter4: TSplitter;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn5: TcxGridDBColumn;
    cxGridDBColumn11: TcxGridDBColumn;
    cxGridDBColumn14: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBColumn15: TcxGridDBColumn;
    cxGridDBColumn16: TcxGridDBColumn;
    cxGridDBColumn17: TcxGridDBColumn;
    cxGridDBColumn18: TcxGridDBColumn;
    cxGridDBColumn19: TcxGridDBColumn;
    cxGridDBColumn21: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridDBColumn23: TcxGridDBColumn;
    cxGridDBColumn24: TcxGridDBColumn;
    cxGridDBColumn25: TcxGridDBColumn;
    cxGridDBColumn26: TcxGridDBColumn;
    cxGridDBColumn28: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    Panel4: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    JvDBCalcEdit1: TJvDBCalcEdit;
    JvDBCalcEdit2: TJvDBCalcEdit;
    JvDBCalcEdit3: TJvDBCalcEdit;
    AdvOfficeCheckBox1: TAdvOfficeCheckBox;
    JvDBCalcEdit4: TJvDBCalcEdit;
    CDSListaCab: TClientDataSet;
    DSPListaCab: TDataSetProvider;
    CDSListaRub: TClientDataSet;
    DSPListaRub: TDataSetProvider;
    CDSListaRubRUBRO: TStringField;
    CDSListaRubID: TIntegerField;
    CDSListaRubID_CAB: TIntegerField;
    CDSListaRubRECARGO: TFloatField;
    CDSListaRubMUESTRARUBRO: TStringField;
    CDSListaRubDESCUENTO: TFloatField;
    CDSListaRubREC_APLICAR: TFloatField;
    CDSListaCabID: TIntegerField;
    CDSListaCabNOMBRE: TStringField;
    CDSListaCabRECARGOBASE: TFloatField;
    CDSListaCabPORDEFECTO: TStringField;
    CDSListaCabF_PAGO: TIntegerField;
    CDSListaCabUSO_ADMINISTRADOR: TStringField;
    CDSListaCabCLONADA: TStringField;
    CDSListaCabID_LISTA_CLONADA: TIntegerField;
    CDSListaCabCOEFICIENTE: TFloatField;
    CDSListaCabEXCLUSIVO_EFECTIVO: TStringField;
    CDSListaCabMUESTRAFORMAPAGO: TStringField;
    CDSListaCabFECHA: TSQLTimeStampField;
    DSPListaSub: TDataSetProvider;
    CDSListaSub: TClientDataSet;
    CDSListaSubRUBRO: TStringField;
    CDSListaSubSUBRUBRO: TStringField;
    CDSListaSubID: TIntegerField;
    CDSListaSubID_CAB: TIntegerField;
    CDSListaSubMUESTRASUBRUBRO: TStringField;
    CDSListaSubDESCUENTO: TFloatField;
    CDSListaSubREC_APLICAR: TFloatField;
    CDSListaSubRECARGO: TFloatField;
    CDSListaArt: TClientDataSet;
    DSPListaArt: TDataSetProvider;
    CDSListaArtSUBRUBRO: TStringField;
    CDSListaArtID: TIntegerField;
    CDSListaArtID_CAB: TIntegerField;
    CDSListaArtRUBRO: TStringField;
    CDSListaArtCODIGOARTICULO: TStringField;
    CDSListaArtCOSTO_GRAVADO: TFloatField;
    CDSListaArtCOSTO_EXENTO: TFloatField;
    CDSListaArtCOSTO_TOTAL: TFloatField;
    CDSListaArtIVA_TASA: TFloatField;
    CDSListaArtRECARGO: TFloatField;
    CDSListaArtPRECIO_GRAVADO: TFloatField;
    CDSListaArtIVA_IMPORTE: TFloatField;
    CDSListaArtPRECIO_EXENTO: TFloatField;
    CDSListaArtPRECIO: TFloatField;
    CDSListaArtDESCUENTO: TFloatField;
    CDSListaArtREC_APLICAR: TFloatField;
    CDSListaArtMUESTRAARTICULO: TStringField;
    CDSListaArtMUESTAGRAVADOSOMBRA: TFloatField;
    CDSListaArtMUESTRAEXENTOSOMBRA: TFloatField;
    CDSListaArtMUESTRASOBRETASA: TFloatField;
    CDSListaArtMUESTRAMARCA: TStringField;
    CDSListaArtMUESTRADESCMARCA: TStringField;
    CDSListaArtMUESTRACONTENIDO: TFloatField;
    CDSListaArtMUESTRAMODOGRAVAMEN: TStringField;
    CDSListaArtMUESTRASIGNOM: TStringField;
    CDSListaArtMUESTRAFALTA: TSQLTimeStampField;
    CDSListaArtMUESTRAFACTUALIZACION: TSQLTimeStampField;
    CDSListaArtMUESTRACLASEART: TIntegerField;
    CDSListaArtPRECIOSOMBRA: TFloatField;
    CDSListaArtPRECIOSOMBRAMASIVA: TFloatField;
    CDSListaArtMODO_IVA: TStringField;
    CDSListaArtCOSTO_FINAL: TFloatField;
    CDSListaArtFECHA: TSQLTimeStampField;
    CDSListaArtPRECIO_CONDSCTO: TFloatField;
    cxGridDBTableView1PRECIO_CONDSCTO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyle2: TcxStyle;
    AdvOfficePage3: TAdvOfficePage;
    DBAdvGrid1: TDBAdvGrid;
    CDSListadoGral: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
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
    StringField4: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField15: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField3: TIntegerField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    StringField9: TStringField;
    FloatField18: TFloatField;
    SQLTimeStampField3: TSQLTimeStampField;
    FloatField19: TFloatField;
    DSListadoGral: TDataSource;
    Panel5: TPanel;
    QListaCab_: TFDQuery;
    QListaCab_ID: TIntegerField;
    QListaCab_NOMBRE: TStringField;
    QListaCab_RECARGOBASE: TFloatField;
    QListaCab_FECHA: TSQLTimeStampField;
    QListaCab_PORDEFECTO: TStringField;
    QListaCab_F_PAGO: TIntegerField;
    QListaCab_USO_ADMINISTRADOR: TStringField;
    QListaCab_CLONADA: TStringField;
    QListaCab_ID_LISTA_CLONADA: TIntegerField;
    QListaCab_COEFICIENTE: TFloatField;
    QListaCab_EXCLUSIVO_EFECTIVO: TStringField;
    QListaCab_MUESTRAFORMAPAGO: TStringField;
    QListaRub_: TFDQuery;
    QListaRub_RUBRO: TStringField;
    QListaRub_RECARGO: TFloatField;
    QListaRub_ID: TIntegerField;
    QListaRub_ID_CAB: TIntegerField;
    QListaRub_MUESTRARUBRO: TStringField;
    QListaRub_DESCUENTO: TFloatField;
    QListaRub_REC_APLICAR: TFloatField;
    QListaSub_: TFDQuery;
    QListaSub_RUBRO: TStringField;
    QListaSub_SUBRUBRO: TStringField;
    QListaSub_RECARGO: TFloatField;
    QListaSub_ID: TIntegerField;
    QListaSub_ID_CAB: TIntegerField;
    QListaSub_MUESTRASUBRUBRO: TStringField;
    QListaSub_DESCUENTO: TFloatField;
    QListaSub_REC_APLICAR: TFloatField;
    QListaArt_: TFDQuery;
    QListaArt_ID: TIntegerField;
    QListaArt_ID_CAB: TIntegerField;
    QListaArt_RUBRO: TStringField;
    QListaArt_SUBRUBRO: TStringField;
    QListaArt_CODIGOARTICULO: TStringField;
    QListaArt_COSTO_GRAVADO: TFloatField;
    QListaArt_COSTO_EXENTO: TFloatField;
    QListaArt_COSTO_TOTAL: TFloatField;
    QListaArt_IVA_TASA: TFloatField;
    QListaArt_RECARGO: TFloatField;
    QListaArt_PRECIO_GRAVADO: TFloatField;
    QListaArt_IVA_IMPORTE: TFloatField;
    QListaArt_PRECIO_EXENTO: TFloatField;
    QListaArt_PRECIO: TFloatField;
    QListaArt_DESCUENTO: TFloatField;
    QListaArt_REC_APLICAR: TFloatField;
    QListaArt_FECHA: TSQLTimeStampField;
    QListaArt_MUESTRAARTICULO: TStringField;
    QListaArt_MUESTAGRAVADOSOMBRA: TFloatField;
    QListaArt_MUESTRAEXENTOSOMBRA: TFloatField;
    QListaArt_MUESTRASOBRETASA: TFloatField;
    QListaArt_MUESTRAMARCA: TStringField;
    QListaArt_MUESTRADESCMARCA: TStringField;
    QListaArt_MUESTRACONTENIDO: TFloatField;
    QListaArt_MUESTRAMODOGRAVAMEN: TStringField;
    QListaArt_MUESTRASIGNOM: TStringField;
    QListaArt_MUESTRAFACTUALIZACION: TSQLTimeStampField;
    QListaArt_MUESTRAFALTA: TSQLTimeStampField;
    QListaArt_MUESTRACLASEART: TIntegerField;
    QListaArt_MODO_IVA: TStringField;
    CDSMarcas: TClientDataSet;
    DSPMarcas: TDataSetProvider;
    CDSMarcasMARCA_STK: TStringField;
    CDSMarcasDESCRIPCION_MARCA: TStringField;
    spIncrementoMargen: TSpeedButton;
    InrementoMargen: TAction;
    pbRedondeo: TTMSFNCProgressBar;
    chbAplicaPromocion: TDBCheckBox;
    QListaCab_ACTUALIZA_EXCEPCION: TStringField;
    QListaCab_APLICA_PROMOCION: TStringField;
    CDSListaCabACTUALIZA_EXCEPCION: TStringField;
    CDSListaCabAPLICA_PROMOCION: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecalculoExecute(Sender: TObject);
    procedure ClonarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure AClonesExecute(Sender: TObject);
    procedure ExpTxtExecute(Sender: TObject);
    procedure ExpTxtDisExecute(Sender: TObject);
    procedure ExpTxDisFuturoExecute(Sender: TObject);
    procedure ExpTxtCodigoPrecioExecute(Sender: TObject);
    procedure ExportarXMLExecute(Sender: TObject);
    procedure ImportarXMLExecute(Sender: TObject);
    procedure dbcMarcaClick(Sender: TObject);
    procedure ExportarXLSCodigoCostoVtaExecute(Sender: TObject);
    procedure ActualizarCostoExecute(Sender: TObject);
    procedure ControlRubSubExecute(Sender: TObject);
    procedure ExportaConStockExecute(Sender: TObject);
    procedure ConvertirListaOriginalExecute(Sender: TObject);
    procedure ImportarPorcentajeExecute(Sender: TObject);
    procedure ExportarXLSCodigoRecExecute(Sender: TObject);
    procedure ReasignarListaExecute(Sender: TObject);
    procedure Redondeo_0Execute(Sender: TObject);
    procedure Redondeo_5Execute(Sender: TObject);
    procedure Redondeo_05Execute(Sender: TObject);
    procedure Redondeo_005Execute(Sender: TObject);
    procedure Redondeo_Menos5Execute(Sender: TObject);
    procedure dbgArticulosDBTableView1DblClick(Sender: TObject);
    procedure AplicarRecExecute(Sender: TObject);
    procedure spActualizaClonesRecClick(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure TrasladarRecClonesExecute(Sender: TObject);
    procedure dbgArticulosDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure CancelarExecute(Sender: TObject);
    procedure CDSListaArtNewRecord(DataSet: TDataSet);
    procedure CDSListaArtCalcFields(DataSet: TDataSet);
    procedure CDSListaSubNewRecord(DataSet: TDataSet);
    procedure CDSListaArtRECARGOSetText(Sender: TField; const Text: string);
    procedure CDSListaArtPRECIOSetText(Sender: TField; const Text: string);
    procedure CDSListaCabNewRecord(DataSet: TDataSet);
    procedure CDSListaCabRECARGOBASESetText(Sender: TField; const Text: string);
    procedure CDSListaRubRECARGOSetText(Sender: TField; const Text: string);
    procedure CDSListaRubDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSListaSubDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSListaSubREC_APLICARSetText(Sender: TField; const Text: string);
    procedure CDSListaSubRECARGOSetText(Sender: TField; const Text: string);
    procedure CDSListaSubBeforeInsert(DataSet: TDataSet);
    procedure CDSListaArtPRECIO_CONDSCTOSetText(Sender: TField;
      const Text: string);
    procedure CDSListaRubNewRecord(DataSet: TDataSet);
    procedure ModificarExecute(Sender: TObject);
    procedure InrementoMargenExecute(Sender: TObject);
    procedure CDSListaRubReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
  private
    procedure AplicaIncremento(Variable: Extended);
    procedure Redondear(Presicion: Integer);
    procedure FinRedondeo(Sender: TObject);
    procedure FinRecargos(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    // Lleno la uso como flag para habilitar o o el insert en Rubro y SubRubros
    Lleno:Boolean;
    Mascara:String;
    Indx: Integer;
    Cancelado:Boolean;
    procedure AgregarRubros;
    procedure AgregarSubRubros;
    procedure AgregarArticulos;
    procedure AsignarMascara;
    procedure AsignarRecargoRubro;
    procedure AsignarRecargoSubRubro;
    procedure AsignarRecargoArticulo;
    procedure AsignarDescuentoSubRubro;
    procedure AsignarDescuentoArticulo;

    procedure AsignarRecAplicarSubRubro;
    procedure AsignarRecAplicarArticulo;

end;

var
  FormListaPrecioEspecial: TFormListaPrecioEspecial;

implementation

uses UDMain_FD, UClonadoListaPrecio, UCargaPreciosTxt, DMBuscadoresForm,
     UBuscadorDepositos, UImportarPorcentajes, UCambioListaClientes, UStock_2,
     USeleccionLista, USeparadorTXT, DMListaPrecioEspecial, UIncrementoMargen;

{$R *.DFM}

procedure TFormListaPrecioEspecial.FinRedondeo(Sender:TObject);
begin
   pbRedondeo.Value   := 0;
  dbgRubroDBTableView1.EndUpdate;
  dbgSubRubroDBTableView1.EndUpdate;
  dbgArticulosDBTableView1.EndUpdate;
     
  dbgRubroDBTableView1.DataController.EndFullUpdate;
  dbgSubRubroDBTableView1.DataController.EndFullUpdate;
  dbgArticulosDBTableView1.DataController.EndFullUpdate;

  CDSListaArt.OnCalcFields:=CDSListaArtCalcFields;

  dbgRubroDBTableView1.DataController.Refresh;
  dbgSubRubroDBTableView1.DataController.Refresh;
  dbgArticulosDBTableView1.DataController.Refresh;
  
end;

procedure TFormListaPrecioEspecial.Redondear(Presicion:Integer);
var Valor  : String;
    Precio : Real;
    T:TThread;
begin
  dbgRubroDBTableView1.BeginUpdate;
  dbgSubRubroDBTableView1.BeginUpdate;
  dbgArticulosDBTableView1.BeginUpdate;


  dbgRubroDBTableView1.DataController.BeginFullUpdate;
  dbgSubRubroDBTableView1.DataController.BeginFullUpdate;
  dbgArticulosDBTableView1.DataController.BeginFullUpdate;
  if chRedondeoAll.Checked then
    begin
      pbRedondeo.Minimum := 0;
      pbRedondeo.Maximum := CDSListaRub.RecordCount-1;
      pbRedondeo.Value   := 0;
      CDSListaArt.OnCalcFields:=nil;
      t:=TThread.CreateAnonymousThread( 
        procedure 
          var Valor  : String;
              Precio : Real;
        begin
          CDSListaRub.First;
          while not (CDSListaRub.Eof) and (cancelado<>True) do
            begin

              T.Synchronize(nil, 
              procedure
              begin 
                pbRedondeo.Value:=pbRedondeo.Value+1;
                Application.ProcessMessages;
              end);

              CDSListaSub.First;
              while Not(CDSListaSub.Eof) and (cancelado<>True) do
                begin
                  CDSListaArt.First;
                  CDSListaArt.DisableControls;
                  while not(CDSListaArt.Eof) and (cancelado<>True) do
                    begin
                      CDSListaArt.Edit;
                      Precio :=CDSListaArtPRECIO.AsFloat;
                      Valor  :=FloatToStr(DMMain_FD.Redondeo(Precio,Presicion));
                      CDSListaArtPRECIOSetText(CDSListaArtPRECIO,Valor);
                      CDSListaArt.Next;
                    end;
                  CDSListaArt.First;
                  CDSListaArt.EnableControls;
                  CDSListaSub.Next;
                end;
              CDSListaSub.First;
              CDSListaRub.Next;
            end;
          CDSListaRub.First;
        end);
      t.OnTerminate:=FinRedondeo;
      t.Start;  
    end
  else
    begin
      pbRedondeo.Minimum := 0;
      pbRedondeo.Maximum := CDSListaRub.RecordCount-1;
      pbRedondeo.Value   := 0;
      CDSListaArt.First;
      while not(CDSListaArt.Eof) and (cancelado<>True) do
        begin
          CDSListaArt.Edit;
          Precio  := CDSListaArtPRECIO.AsFloat;
          Valor   := FloatToStr(DMMain_FD.Redondeo(Precio,Presicion));
          CDSListaArtPRECIOSetText(CDSListaArtPRECIO,Valor);
          pbRedondeo.Value:=pbRedondeo.Value+1;
          CDSListaArt.Next;
        end;
      Application.ProcessMessages;
      CDSListaArt.First;
      pbRedondeo.Value   := 0;
      dbgRubroDBTableView1.EndUpdate;
      dbgSubRubroDBTableView1.EndUpdate;
      dbgArticulosDBTableView1.EndUpdate;


      dbgRubroDBTableView1.DataController.EndFullUpdate;
      dbgSubRubroDBTableView1.DataController.EndFullUpdate;
      dbgArticulosDBTableView1.DataController.EndFullUpdate;
    end;


end;


procedure TFormListaPrecioEspecial.spActualizaClonesRecClick(Sender: TObject);
var
  I   : Integer;
  Aux : String;
begin
  inherited;
  if pnListasClonada.Visible=False then
    pnListasClonada.Visible:=True
  else
    pnListasClonada.Visible:=False;
end;

procedure TFormListaPrecioEspecial.TrasladarRecClonesExecute(Sender: TObject);
var Aux:String;
I:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    sbEstado.Panels[0].Text:='Trasladando margenes de Recargo ...';
    lbMensaje.Caption      :='Pasando margenes ...';
    Application.ProcessMessages;
    Sleep(1);
    for I := 0 to chklstListas.Count - 1 do
      begin
        if chklstListas.Checked[I] then
          begin
            Aux:= chklstListas.Items.Strings[i];
            Aux:= Copy(Aux,1,Pos('-',Aux)-1);
            Indx:=StrToInt(Trim(Aux));
            DatosListaPrecioEspecial.spActualizarRecClones.Close;
            DatosListaPrecioEspecial.spActualizarRecClones.ParamByName('LISTA').Value:=Indx;// CDSListaCabID.Value;
            DatosListaPrecioEspecial.spActualizarRecClones.ExecProc;
            DatosListaPrecioEspecial.spActualizarRecClones.Close;
          end;
      end;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la operación');
  end;
  sbEstado.Panels[0].Text:='';
  lbMensaje.Caption:='...';

  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
  sleep(100);
  pnListasClonada.Visible:=False;
end;

procedure TFormListaPrecioEspecial.Redondeo_0Execute(Sender: TObject);
begin
  Cancelado := False;
  Redondear(0);
end;

procedure TFormListaPrecioEspecial.Redondeo_5Execute(Sender: TObject);
begin
  Cancelado:=False;
  Redondear(1);
end;

procedure TFormListaPrecioEspecial.Redondeo_05Execute(Sender: TObject);
begin
  Cancelado:=False;
  Redondear(2);
end;

procedure TFormListaPrecioEspecial.Redondeo_005Execute(Sender: TObject);
begin
  Cancelado:=False;
  Redondear(3);
end;

procedure TFormListaPrecioEspecial.Redondeo_Menos5Execute(Sender: TObject);
var Valor:String;
Precio:Real;
Presicion:Integer;
begin
  Presicion:=1;
  if chRedondeoAll.Checked then
    begin
      CDSListaRub.First;
      while not (CDSListaRub.Eof) do
        begin
          CDSListaSub.First;
          while Not(CDSListaSub.Eof) do
            begin
              CDSListaArt.First;
              while not(CDSListaArt.Eof) do
                begin
                  CDSListaArt.Edit;
                  Precio    := CDSListaArtPRECIO.AsFloat;
                  Valor     := FloatToStr(DMMain_FD.Redondeo_Menos(Precio,Presicion));
                  CDSListaArtPRECIOSetText(CDSListaArtPRECIO,Valor);
                  CDSListaArt.Next;
                  Application.ProcessMessages;
                end;
              CDSListaSub.Next;
            end;
          CDSListaRub.Next;
        end;
    end
  else
    begin
      CDSListaArt.First;
      while not(CDSListaArt.Eof) do
        begin
          CDSListaArt.Edit;
          Precio  := CDSListaArtPRECIO.AsFloat;
          Valor   := FloatToStr(DMMain_FD.Redondeo_Menos(Precio,Presicion));
          CDSListaArtPRECIOSetText(CDSListaArtPRECIO,Valor);
          CDSListaArt.Next;
          Application.ProcessMessages;
        end;
    end;
end;


procedure TFormListaPrecioEspecial.AsignarRecargoRubro;
BEGIN
  sbEstado.Panels[0].Text:='Aplicando recargo Rubro ....';
  Application.ProcessMessages;
  Sleep(1);
  pgRubro.Min      := 0;
  pgRubro.Max      := CDSListaRub.RecordCount-1;
  pgRubro.Position := 0;
  CDSListaRub.First;
  while Not(CDSListaRub.Eof) and (Cancelado=False) DO
    begin
      if (pgRubro.Position<pgRubro.Max) and (pgRubro.Max>0) then
        pgRubro.Position:=pgRubro.Position+1;
      CDSListaRub.edit;
      CDSListaRubRECARGO.Value:=CDSListaCabRECARGOBASE.Value;
      AsignarRecargoSubRubro;
      CDSListaRub.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  pgRubro.Position:=0;
  Application.ProcessMessages;
  Sleep(1);
End;

procedure TFormListaPrecioEspecial.AsignarRecargoSubRubro;
BEGIN
  CDSListaSub.First;
  sbEstado.Panels[0].Text:='Aplicando recargo Sub Rubro....';
  Application.ProcessMessages;
  Sleep(1);
  pgSubRubro.Min      := 0;
  pgSubRubro.Max      := 0;
  if CDSListaSub.RecordCount>0 then
    pgSubRubro.Max      := CDSListaSub.RecordCount-1;
  pgSubRubro.Position := 0;
  while Not(CDSListaSub.Eof) and (CDSListaSub.RecordCount>0) and (Cancelado=False) DO
    begin
      if (pgSubRubro.Position<pgSubRubro.Max) and ( pgSubRubro.Max>0) then
        pgSubRubro.Position:=pgSubRubro.Position+1;
      CDSListaSub.edit;
      CDSListaSubRECARGO.Value:=CDSListaRubRECARGO.Value;
      AsignarRecargoArticulo;
      CDSListaSub.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  pgSubRubro.Position:=0;
  Application.ProcessMessages;
  Sleep(1);
End;

procedure TFormListaPrecioEspecial.AsignarRecargoArticulo;
BEGIN
  CDSListaArt.First;
  CDSListaArt.DisableControls;
  sbEstado.Panels[0].Text:='Aplicando recargo Articulo....';
  Application.ProcessMessages;
  Sleep(1);
  pgArticulo.Position := 0;
  pgArticulo.Min      := 0;
  pgArticulo.Max      := 0;
  if CDSListaArt.RecordCount>0 then
    pgArticulo.Max      := CDSListaArt.RecordCount-1;
  while Not(CDSListaArt.Eof) and (CDSListaArt.RecordCount>0) and (Cancelado=False) DO
    begin
      sbEstado.Panels[0].Text:='Aplicando recargo Articulo....'+IntToStr(pgArticulo.Position)+'/'+IntToStr(pgArticulo.Max);
      if (pgArticulo.Position<pgArticulo.Max) and ( pgArticulo.Max>0) then
        try
          pgArticulo.Position:=pgArticulo.Position+1;
        except
        end;
      Application.ProcessMessages;

      CDSListaArt.edit;
      CDSListaArtRECARGOSetText(CDSListaArtRECARGO,FloatToStr(CDSListaSubRECARGO.AsFloat));
      CDSListaArt.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  Application.ProcessMessages;
  Sleep(1);
  CDSListaArt.EnableControls;
  pgArticulo.Position:=0;
end;

procedure TFormListaPrecioEspecial.AsignarMascara;
BEGIN
  Mascara :=',0.000';
  DMMain_FD.QOpciones.Close;

  CDSListaCabRECARGOBASE.EditFormat      :=Mascara;
  CDSListaCabRECARGOBASE.DisplayFormat   :=Mascara;
  CDSListaRubRECARGO.EditFormat          :=Mascara;
  CDSListaRubRECARGO.DisplayFormat       :=Mascara;
  CDSListaSubRECARGO.EditFormat          :=Mascara;
  CDSListaSubRECARGO.DisplayFormat       :=Mascara;
  CDSListaArtRECARGO.EditFormat          :=Mascara;
  CDSListaArtRECARGO.DisplayFormat       :=Mascara;
  CDSListaArtPrecio.EditFormat           :=Mascara;
  CDSListaArtPrecio.DisplayFormat        :=Mascara;
 End;

procedure TFormListaPrecioEspecial.AgregarRubros;
begin
  CDSListaRub.DisableControls;
  DatosListaPrecioEspecial.QRubros.Close;
  DatosListaPrecioEspecial.QRubros.Open;
  DatosListaPrecioEspecial.QRubros.First;
  pgRubro.Max     :=DatosListaPrecioEspecial.QRubros.RecordCount-1;
  pgRubro.Min     :=0;
  pgRubro.Position:=0;
  sbEstado.Panels[1].Text:='Rubros';
  Sleep(1);
  while Not(DatosListaPrecioEspecial.QRubros.Eof) DO
    begin
      CDSListaRub.Append;
      CDSListaRubRUBRO.Value        := DatosListaPrecioEspecial.QRubrosCODIGO_RUBRO.Value;
      CDSListaRubMUESTRARUBRO.Value := DatosListaPrecioEspecial.QRubrosDETALLE_RUBRO.Value;
      CDSListaRubRECARGO.AsFloat    := 0;
      CDSListaRub.Post;
      pgRubro.Position:=pgRubro.Position+1;
      DatosListaPrecioEspecial.QRubros.Next;
    end;
  pgRubro.Position:=0;
  sbEstado.Panels[1].Text:='';
  DatosListaPrecioEspecial.QRubros.Close;
  CDSListaRub.First;
  CDSListaRub.EnableControls;
end;

procedure TFormListaPrecioEspecial.AgregarSubRubros;
begin
  CDSListaSub.DisableControls;
  DatosListaPrecioEspecial.QSubRubros.Close;
  DatosListaPrecioEspecial.QSubRubros.Open;
  DatosListaPrecioEspecial.QSubRubros.First;
  pgSubRubro.Max      := DatosListaPrecioEspecial.QSubRubros.RecordCount-1;
  pgSubRubro.Min      := 0;
  pgSubRubro.Position := 0;
  sbEstado.Panels[1].Text:='SubRubros';
  Sleep(1);

  while Not(DatosListaPrecioEspecial.QSubRubros.Eof) DO
    begin
      CDSListaSub.Append;
      CDSListaSubRUBRO.Value           := DatosListaPrecioEspecial.QSubRubrosCODIGO_RUBRO.Value;
      CDSListaSubSUBRUBRO.Value        := DatosListaPrecioEspecial.QSubRubrosCODIGO_SUBRUBRO.Value;
      CDSListaSubMUESTRASUBRUBRO.Value := DatosListaPrecioEspecial.QSubRubrosDETALLE_SUBRUBRO.Value;
      CDSListaSubRECARGO.AsFloat       := 0;
      CDSListaSub.Post;
      pgSubRubro.Position              := pgSubRubro.Position+1;
      DatosListaPrecioEspecial.QSubRubros.Next;
    end;
  sbEstado.Panels[1].Text:='';
  DatosListaPrecioEspecial.QSubRubros.Close;
  CDSListaSub.First;
  CDSListaSub.EnableControls;
  pgSubRubro.Position:=0;
end;


procedure TFormListaPrecioEspecial.FinRecargos(Sender:TObject);
begin
  pbRedondeo.Value   := 0;
  dbgRubroDBTableView1.EndUpdate;
  dbgSubRubroDBTableView1.EndUpdate;
  dbgArticulosDBTableView1.EndUpdate;
     
  dbgRubroDBTableView1.DataController.EndFullUpdate;
  dbgSubRubroDBTableView1.DataController.EndFullUpdate;
  dbgArticulosDBTableView1.DataController.EndFullUpdate;

  CDSListaArt.OnCalcFields:=CDSListaArtCalcFields;

  dbgRubroDBTableView1.DataController.Refresh;
  dbgSubRubroDBTableView1.DataController.Refresh;
  dbgArticulosDBTableView1.DataController.Refresh;
end;


procedure TFormListaPrecioEspecial.AplicaIncremento(Variable:Extended);
var Valor:Extended;
    T:TThread;
begin
  inherited;
  dbgRubroDBTableView1.BeginUpdate;
  dbgSubRubroDBTableView1.BeginUpdate;
  dbgArticulosDBTableView1.BeginUpdate;


  dbgRubroDBTableView1.DataController.BeginFullUpdate;
  dbgSubRubroDBTableView1.DataController.BeginFullUpdate;
  dbgArticulosDBTableView1.DataController.BeginFullUpdate;

  pbRedondeo.Minimum := 0;
  pbRedondeo.Maximum := CDSListaRub.RecordCount-1;
  pbRedondeo.Value   := 0;
  CDSListaArt.OnCalcFields:=nil;

  t:=TThread.CreateAnonymousThread( 
    procedure 
      var Valor  : Extended;
    begin
      CDSListaRub.First;
      while not (CDSListaRub.Eof) and (cancelado<>True) do
        begin
           T.Synchronize(nil, 
           procedure
             begin 
               pbRedondeo.Value:=pbRedondeo.Value+1;
               Application.ProcessMessages;
             end);

           CDSListaSub.First;
            while Not(CDSListaSub.Eof) and (cancelado<>True) do
              begin
                CDSListaArt.First;
                CDSListaArt.DisableControls;
                while not(CDSListaArt.Eof) and (cancelado<>True) do
                  begin
                    Valor:=CDSListaArtRECARGO.AsFloat + Variable;
                    CDSListaArt.Edit;
                    CDSListaArtRECARGOSetText(CDSListaArtRECARGO,FormatFloat('0.00',Valor));
                    CDSListaArt.Next;
                   end;
                CDSListaArt.First;
                CDSListaArt.EnableControls;
                CDSListaSub.Next;
              end;
            CDSListaSub.First;
            CDSListaRub.Next;
        end;
        CDSListaRub.First;
    end);
  t.OnTerminate:=FinRecargos;
  t.Start;  

end;

procedure TFormListaPrecioEspecial.AplicarRecExecute(Sender: TObject);
var Aux:String;
I:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    sbEstado.Panels[0].Text:='Trasladando margenes de Recargo ...';
    Application.ProcessMessages;
    DatosListaPrecioEspecial.spAplicarRec.Close;
    DatosListaPrecioEspecial.spAplicarRec.ParamByName('LISTA').Value:=cdsListaCabID.Value;// CDSListaCabID.Value;
    DatosListaPrecioEspecial.spAplicarRec.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DatosListaPrecioEspecial.spAplicarRec.Close;
    DatoNew:=CDSListaCabID.AsString;
    Recuperar.Execute;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la operación');
  end;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;
  DatosListaPrecioEspecial.spAplicarRec.Close;
  Sleep(1);
  Recalculo.Execute;
end;

procedure TFormListaPrecioEspecial.AClonesExecute(Sender: TObject);
var lista:Integer;
begin
  inherited;
  if CDSListaCabID.AsString<>'' then
    begin
      if Not(Assigned(FormSeleccionLista)) then
        FormSeleccionLista:=TFormSeleccionLista.Create(Self);
      FormSeleccionLista.ShowModal;
      if (FormSeleccionLista.ModalResult=mrOk) then
        begin
          Lista:=FormSeleccionLista.id;
          Screen.Cursor:=crHourGlass;
          sbEstado.Panels[0].Text:='Actualizando Listas Clonadas...';
          Application.ProcessMessages;
          Sleep(1);
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosListaPrecioEspecial.spActualizaClones.Close;
            DatosListaPrecioEspecial.spActualizaClones.ParamByName('LISTA').Value:= Lista;
            DatosListaPrecioEspecial.spActualizaClones.ExecProc;
            DMMain_FD.fdcGestion.Commit;
            DatosListaPrecioEspecial.spActualizaClones.Close;
           except
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('No se pudo realizar la operacion...');
           end;
        end;
    end;
  Screen.Cursor:=crDefault;
  DatosListaPrecioEspecial.spActualizaClones.Close;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
  Sleep(1);
end;

procedure TFormListaPrecioEspecial.ActualizarCostoExecute(Sender: TObject);
begin
  inherited;
  if CDSListaCabID.AsString<>'' then
    begin
      sbEstado.Panels[0].Text:='Actaulizando Costos de la Lista...';
      Application.ProcessMessages;
      Sleep(1);
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosListaPrecioEspecial.spActualizarCosto.Close;
        DatosListaPrecioEspecial.spActualizarCosto.ParamByName('LISTA').Value:=CDSListaCabID.Value;
        DatosListaPrecioEspecial.spActualizarCosto.ExecProc;
        DatosListaPrecioEspecial.spActualizarCosto.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo realizar la operacion...');
      end;
   end;
 sbEstado.Panels[0].Text:='';
 Application.ProcessMessages;
 Sleep(1);

end;

procedure TFormListaPrecioEspecial.AgregarArticulos;
begin
  CDSListaArt.DisableControls;
  DatosListaPrecioEspecial.QArticulos.Close;
  DatosListaPrecioEspecial.QArticulos.Open;
  pgArticulo.Max         := DatosListaPrecioEspecial.QArticulos.RecordCount-1;
  pgArticulo.Min         := 0;
  pgArticulo.Position    := 0;
  sbEstado.Panels[1].Text:= 'Articulos';
  Sleep(1);
  DatosListaPrecioEspecial.QArticulos.First;
  while Not(DatosListaPrecioEspecial.QArticulos.Eof) DO
    begin
      CDSListaArt.Append;
      CDSListaArtCODIGOARTICULO.Value      := DatosListaPrecioEspecial.QArticulosCODIGO_STK.Value;
      CDSListaArtRUBRO.Value               := DatosListaPrecioEspecial.QArticulosRUBRO_STK.Value;
      CDSListaArtSUBRUBRO.Value            := DatosListaPrecioEspecial.QArticulosSUBRUBRO_STK.Value;
      CDSListaArtMUESTRAARTICULO.Value     := DatosListaPrecioEspecial.QArticulosDETALLE_STK.Value;
      CDSListaArtCOSTO_TOTAL.AsFloat       := DatosListaPrecioEspecial.QArticulosFIJACION_PRECIO_TOTAL.AsFloat;
      CDSListaArtCOSTO_GRAVADO.AsFloat     := DatosListaPrecioEspecial.QArticulosFIJACION_PRECIO_GRAVADO.AsFloat;
      CDSListaArtCOSTO_EXENTO.AsFloat      := DatosListaPrecioEspecial.QArticulosFIJACION_PRECIO_EXENTO.AsFloat;

      CDSListaArtPRECIO_EXENTO.AsFloat     := CDSListaArtCOSTO_EXENTO.AsFloat;
      CDSListaArtPRECIO_GRAVADO.AsFloat    := CDSListaArtCOSTO_GRAVADO.AsFloat;
      CDSListaArtRECARGO.AsFloat           := 0;
      CDSListaArtPRECIO.Value              := CDSListaArtCOSTO_TOTAL.Value;
      CDSListaArtMUESTRASOBRETASA.Value    := DatosListaPrecioEspecial.QArticulosMUESTRASOBRETASAIVA.Value;
      CDSListaArtIVA_TASA.AsFloat          := DatosListaPrecioEspecial.QArticulosMUSTRATASAIVA.AsFloat;
      CDSListaArtIVA_IMPORTE.AsFloat       := CDSListaArtIVA_TASA.AsFloat * 0.01 * CDSListaArtPRECIO_GRAVADO.AsFloat;
      CDSListaArtPRECIO.AsFloat            := CDSListaArtPRECIO_GRAVADO.AsFloat + CDSListaArtPRECIO_EXENTO.AsFloat + CDSListaArtIVA_IMPORTE.AsFloat;

      CDSListaArtMUESTRAMODOGRAVAMEN.Value := DatosListaPrecioEspecial.QArticulosMODO_GRAVAMEN.Value;
      CDSListaArt.Post;
      pgArticulo.Position                  := pgArticulo.Position+1;
      DatosListaPrecioEspecial.QArticulos.Next;
    end;
  pgArticulo.Position:=0;
  sbEstado.Panels[1].Text:='';

  DatosListaPrecioEspecial.QArticulos.Close;
  CDSListaArt.First;
  CDSListaArt.EnableControls;
end;

procedure TFormListaPrecioEspecial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSListaCab.Close;
  CDSListaRub.Close;
  CDSListaSub.Close;
  CDSListaArt.Close;
  QF_Pago.Close;
  CDSMarcas.Close;
  Action:=caFree;
end;

procedure TFormListaPrecioEspecial.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  sinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  if Not(Assigned(DatosListaPrecioEspecial)) then
    DatosListaPrecioEspecial:=TDatosListaPrecioEspecial.Create(Self);

  AddClientDataSet(CDSListaCab,DSPListaCab);
  AddClientDataSet(CDSListaRub,DSPListaRub);
  AddClientDataSet(CDSListaSub,DSPListaSub);
  AddClientDataSet(CDSListaArt,DSPListaArt);

  CDSListaCab.Open;
  CDSListaRub.OPen;
  CDSListaSub.Open;
  CDSListaArt.Open;
  QF_Pago.Open;
  Tabla:='listaprecioespecialcab';
  Campo:='id';
  AsignarMascara;
  Lleno:=False;
  AdvOfficePager1.ActivePageIndex:=0;
  Cancelado:=False;
end;

procedure TFormListaPrecioEspecial.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaPrecioEspecial:=Nil;
end;

procedure TFormListaPrecioEspecial.AgregarExecute(Sender: TObject);
begin
  CDSListaCab.Close;
  CDSListaCab.Params.ParamByName('id').Clear;
  CDSListaCab.OPen;

  CDSListaRub.Close;
  CDSListaRub.Params.ParamByName('id').Clear;
  CDSListaRub.OPen;


  CDSListaSub.Close;
  CDSListaSub.Params.ParamByName('id').Clear;
  CDSListaSub.OPen;


  CDSListaArt.Close;
  CDSListaArt.Params.ParamByName('id').Clear;
  CDSListaArt.OPen;


  CDSListaSub.IndexFieldNames    := 'RUBRO';
  CDSListaSub.MasterFields       := '';
  CDSListaSub.MasterSource       := DSListaRub;
  CDSListaArt.IndexFieldNames    := 'SUBRUBRO';
  CDSListaArt.MasterFields       := '';
  CDSListaArt.MasterSource       := DSListaSub;


  inherited;
  Lleno                   :=False;
  sbEstado.Panels[0].Text :='Procesando datos...Agregando Rubro..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarRubros;
  sbEstado.Panels[0].Text :='Procesando datos...Agregando Sub Rubro..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarSubRubros;
  sbEstado.Panels[0].Text :='Procesando datos...Agregando Articulos..';
  Sleep(1);
  Application.ProcessMessages;
  AgregarArticulos;
  Sleep(1);
  Application.ProcessMessages;
  sbEstado.Panels[0].Text :='';
  Lleno                   :=True;

  CDSListaSub.IndexFieldNames    := 'RUBRO';
  CDSListaSub.MasterFields       := 'RUBRO';
  CDSListaSub.MasterSource       := DSListaRub;
  CDSListaArt.IndexFieldNames    := 'SUBRUBRO';
  CDSListaArt.MasterFields       := 'SUBRUBRO';
  CDSListaArt.MasterSource       := DSListaSub;

end;

procedure TFormListaPrecioEspecial.BorrarExecute(Sender: TObject);
var id :Integer;
begin
  id      := CDSListaCabID.Value;
  DatoNew := CDSListaCabID.AsString;
  if MessageDlg('Está por hacer una operación de borrado... Esta Seguro?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
    begin
      inherited;
      if MessageDlg('Está por hacer una operación de borrado... borrara las listas que fueron clonadas de ésta.?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosListaPrecioEspecial.spBorrarClones.Close;
            DatosListaPrecioEspecial.spBorrarClones.ParamByName('id_lista').Value:=id;
            DatosListaPrecioEspecial.spBorrarClones.ExecProc;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo hacer la operación');
          end;
        end;
    end;

end;

procedure TFormListaPrecioEspecial.btnSalirColumnaClick(Sender: TObject);
begin
  inherited;
  pnListasClonada.Visible:=False;
end;

procedure TFormListaPrecioEspecial.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaLista.Close;
  CDSBuscaLista.OPen;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaLista.Close;
end;

procedure TFormListaPrecioEspecial.RecuperarExecute(Sender: TObject);
begin
  CDSListaCab.Close;
  CDSListaRub.Close;
  CDSListaSub.Close;
  CDSListaArt.Close;
  

  CDSListaCab.Params.ParamByName('id').Clear;
  CDSListaRub.Params.ParamByName('id').Clear;
  CDSListaSub.Params.ParamByName('id').Clear;
  CDSListaArt.Params.ParamByName('id').Clear;
  CDSListaCab.Open;
  CDSListaRub.Open;
  CDSListaSub.Open;
  CDSListaArt.Open;

  inherited;

  CDSListaSub.MasterFields:='';
  CDSListaSub.MasterSource:=Nil;

  CDSListaArt.MasterFields:='';
  CDSListaArt.MasterSource:=Nil;


  CDSListaCab.Close;
  CDSListaCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSListaCab.OPen;


  CDSListaRub.Close;
  CDSListaRub.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSListaRub.OPen;

  CDSListaSub.Close;
  CDSListaSub.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  CDSListaSub.OPen;


  CDSListaArt.Close;
  CDSListaArt.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSListaArt.OPen;



  CDSListadoGral.Close;
  CDSListadoGral.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSListadoGral.OPen;

  CDSListadoGral.IndexFieldNames := 'RUBRO;SUBRUBRO';

  CDSListaSub.IndexFieldNames    := 'RUBRO';
  CDSListaSub.MasterFields       := 'RUBRO';
  CDSListaSub.MasterSource       := DSListaRub;
//
  CDSListaArt.IndexFieldNames    := 'SUBRUBRO;CODIGOARTICULO';
  CDSListaArt.MasterFields       := 'SUBRUBRO';
  CDSListaArt.MasterSource       := DSListaSub;
  pnClonada.Visible              := CDSListaCabCLONADA.Value='S';
  ConvertirListaOriginal.Enabled := CDSListaCabCLONADA.Value='S';

  CDSListaRub.First;
  CDSListaSub.First;
  CDSListaArt.First;
  
  DatosListaPrecioEspecial.QClones.Close;
  DatosListaPrecioEspecial.QClones.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosListaPrecioEspecial.QClones.Open;
  chklstListas.Clear;
  DatosListaPrecioEspecial.QClones.First;
  lbClones.Visible             := Not(DatosListaPrecioEspecial.QClones.IsEmpty);
  spActualizaClonesRec.Enabled := Not(DatosListaPrecioEspecial.QClones.IsEmpty);
  while not(DatosListaPrecioEspecial.QClones.Eof) do
    begin
      chklstListas.Items.Add(DatosListaPrecioEspecial.QClonesID.AsString+' - '+  DatosListaPrecioEspecial.QClonesNOMBRE.Value);
      DatosListaPrecioEspecial.QClones.Next;
    end;
  DatosListaPrecioEspecial.QClones.Close;



  Lleno:=True;
end;

procedure TFormListaPrecioEspecial.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if NoT(ActiveControl is TDBGrid) Then
  inherited;
end;

procedure TFormListaPrecioEspecial.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled     := True;
  pnCabecera.Enabled      := True;
  dbeNombre.Enabled       := DSBase.State<>dsBrowse;
  dbcFormaPago.Enabled    := DSBase.State<>dsBrowse;
  dbeRecargo.Enabled      := DSBase.State<>dsBrowse;
  dbeFecha.Enabled        := DSBase.State<>dsBrowse;
  dbcPorDefecto.Enabled   := DSBase.State<>dsBrowse;
  dbcUsoAdmin.Enabled     := DSBase.State<>dsBrowse;
  dbcEfectivo.Enabled     := DSBase.State<>dsBrowse;

  Redondeo_Menos5.Enabled := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));
  Redondeo_0.Enabled      := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));
  Redondeo_5.Enabled      := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));
  Redondeo_05.Enabled     := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));
  Redondeo_005.Enabled    := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));
  btRedondeos.Enabled     := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty));

  dbgRubroDBTableView1.OptionsData.Inserting     := Not(DSBase.State=dsBrowse);
  dbgRubroDBTableView1.OptionsData.Editing       := Not(DSBase.State=dsBrowse);

  dbgSubRubroDBTableView1.OptionsData.Inserting  := Not(DSBase.State=dsBrowse);
  dbgSubRubroDBTableView1.OptionsData.Editing    := Not(DSBase.State=dsBrowse);

  dbgArticulosDBTableView1.OptionsData.Inserting := Not(DSBase.State=dsBrowse);
  dbgArticulosDBTableView1.OptionsData.Editing   := Not(DSBase.State=dsBrowse);

  cxGridDBTableView1.OptionsData.Inserting       := Not(DSBase.State=dsBrowse);
  cxGridDBTableView1.OptionsData.Editing         := Not(DSBase.State=dsBrowse);

  cxGridDBTableView2.OptionsData.Inserting       := Not(DSBase.State=dsBrowse);
  cxGridDBTableView2.OptionsData.Editing         := Not(DSBase.State=dsBrowse);

  cxGridDBTableView3.OptionsData.Inserting       := Not(DSBase.State=dsBrowse);
  cxGridDBTableView3.OptionsData.Editing         := Not(DSBase.State=dsBrowse);

  Recalculo.Enabled            := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  Clonar.Enabled               := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  AClones.Enabled              := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  ImportarPorcentaje.Enabled   := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  ExportarXLSCodigoRec.Enabled := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  AplicarRec.Enabled           := (DSBase.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty));
  InrementoMargen.Enabled      := (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty)) and lbClones.Visible ;

end;

procedure TFormListaPrecioEspecial.ExportarXMLExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  if Not(CDSListaCab.IsEmpty)  Then
    begin
      CDSListaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaCab.XML');
      CDSListaRub.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaRub.XML');
      CDSListaSub.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaSub.XML');
      CDSListaArt.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaArt.XML');
      sleep(800);
      if VirtualUI.Active then
        begin
          VirtualUI.StdDialogs:=False;
          VirtualUI.DownloadFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaCab.XML');
          VirtualUI.DownloadFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaRub.XML');
          VirtualUI.DownloadFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaSub.XML');
          VirtualUI.DownloadFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaArt.XML');
        end;
    end
  else
    ShowMessage('No Hay datos para exportar....');
  ShowMessage('Datos exportados....');

end;

procedure TFormListaPrecioEspecial.ExpTxDisFuturoExecute(Sender: TObject);
var n:string;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value:=CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  DatosListaPrecioEspecial.CDSExportaRubro.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='ListaPrecios';
      SaveDialog1.DefaultExt:='TXT';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          DataToAsciiDISCFuturo.SaveToFile(SaveDialog1.FileName) ;

          n :=copy(SaveDialog1.FileName,1,length(SaveDialog1.FileName)-4);

          DataToAsciiRubrosDisc.SaveToFile(N+'_rubros.txt');

          DatosListaPrecioEspecial.CDSClientes.Close;
          DatosListaPrecioEspecial.CDSClientes.Open;
          DataToAsciiClientes.SaveToFile(n+'_Clientes.txt');
          DatosListaPrecioEspecial.CDSClientes.Close;

          if Not(VirtualUI.Active) then
            ShowMessage('Lista/Rubros/Clientes Exportados ... Ubicación: '+n);
          Sleep(300);
          if VirtualUI.Active then
            begin
              VirtualUI.DownloadFile(SaveDialog1.FileName);
              VirtualUI.DownloadFile(N+'_rubros.txt');
              VirtualUI.DownloadFile(n+'_Clientes.txt');
            end;
        end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaRubro.Close;
end;

procedure TFormListaPrecioEspecial.ExpTxtCodigoPrecioExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value:=CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='ListaPrecios_CodigoPrecio';
      SaveDialog1.DefaultExt:='TXT';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          DataToAsc_codigoprecio.SaveToFile(SaveDialog1.FileName) ;

          if Not(VirtualUI.Active) then
            ShowMessage('Lista Exportados ... Ubicación: '+SaveDialog1.FileName);
          sleep(300);
          if VirtualUI.Active then
             VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

  DatosListaPrecioEspecial.CDSExportaTxt.Close;

end;

procedure TFormListaPrecioEspecial.ExpTxtDisExecute(Sender: TObject);
var N,n_rubro,n_cliente:string;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value:=CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  DatosListaPrecioEspecial.CDSExportaRubro.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName   := 'ListaPrecios';
      SaveDialog1.DefaultExt := 'TXT';
      if VirtualUI.Active then
        SaveDialog1.FileName := SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            DataToAsciiDISC.SaveToFile(SaveDialog1.FileName) ;

            n :=copy(SaveDialog1.FileName,1,length(SaveDialog1.FileName)-4);

            DataToAsciiRubrosDisc.SaveToFile(N+'_rubros.txt');

            DatosListaPrecioEspecial.CDSClientes.Close;
            DatosListaPrecioEspecial.CDSClientes.Open;
            DataToAsciiClientes.SaveToFile(n+'_Clientes.txt');
            DatosListaPrecioEspecial.CDSClientes.Close;

            if Not(VirtualUI.Active) then
              ShowMessage('Lista/Rubros/Clientes Exportados ... Ubicación: '+n);
            if VirtualUI.Active then
              begin
                VirtualUI.DownloadFile(SaveDialog1.FileName);
                VirtualUI.DownloadFile(N+'_rubros.txt');
                VirtualUI.DownloadFile(n+'_Clientes.txt');
              end;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaRubro.Close;

end;

procedure TFormListaPrecioEspecial.ExpTxtExecute(Sender: TObject);
var n:string;
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value:=CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  DatosListaPrecioEspecial.CDSExportaRubro.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='ListaPrecios';
      SaveDialog1.DefaultExt:='TXT';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
               SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          DataToAscii.SaveToFile(SaveDialog1.FileName);

          n:=copy(SaveDialog1.FileName,1,length(SaveDialog1.FileName)-4);

          DataToAsciiRubro.SaveToFile(n+'_rubros.txt');
          DatosListaPrecioEspecial.CDSClientes.Close;
          DatosListaPrecioEspecial.CDSClientes.Open;
          DataToAsciiClientes.SaveToFile(n+'_Clientes.txt');
          DatosListaPrecioEspecial.CDSClientes.Close;
          n:=copy(SaveDialog1.FileName,1,length(SaveDialog1.FileName)-16);

          if Not(VirtualUI.Active) then
            ShowMessage('Lista/Rubros/Clientes Exportados ... Ubicación: '+n);
          Sleep(500);
          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName);
              VirtualUI.DownloadFile(n+'_rubros.txt');
              VirtualUI.DownloadFile(n+'Clientes.txt');
            end;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaRubro.Close;
end;

procedure TFormListaPrecioEspecial.ConfirmaExecute(Sender: TObject);
begin
  DatoNew := CDSListaCabID.AsString;
  sbEstado.Panels[0].Text:='Procesando los Cambios...';
  Application.ProcessMessages;
  inherited;

//  DMMain_FD.fdcGestion.StartTransaction;
//    try
//      IF CDSListaCab.ApplyUpdates(0)<=0 Then//    := DSListaSub;
//        if CDSListaRub.ApplyUpdates(0)<=0 Then//MasterSource    := DSBase;
//          if CDSListaSub.ApplyUpdates(0)<=0 Then//MasterSource    := DSListaRub;
//            if CDSListaArt.ApplyUpdates(0)<=0 then //    := DSListaSub;
//              begin
//                DMMain_FD.fdcGestion.Commit;
//                //ShowMessage('Cambios Guardados.....');
//              end;
//    except
//      DMMain_FD.fdcGestion.Rollback;
//      ShowMessage('No se pudo hacer la operación');
//    end;

  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormListaPrecioEspecial.ControlRubSubExecute(Sender: TObject);
begin
  inherited;
  if CDSListaCabID.AsString<>'' then
    begin
      sbEstado.Panels[0].Text:='Revision de Rubros y Subrubros...';
      Application.ProcessMessages;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosListaPrecioEspecial.spControlRub_Sub.Close;
        DatosListaPrecioEspecial.spControlRub_Sub.ExecProc;
        DatosListaPrecioEspecial.spControlRub_Sub.Close;
        DMMain_FD.fdcGestion.Commit;
        ShowMessage('Finalizada la revisión...');
        Recuperar.Execute;
      except
        DMMain_FD.fdcGestion.Rollback;;
        ShowMessage('Operación abortada...');
      end;
    end;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
end;

procedure TFormListaPrecioEspecial.ConvertirListaOriginalExecute(
  Sender: TObject);
begin
  inherited;
  if CDSListaCabCLONADA.Value='S' then
  begin
    DMMain_FD.fdcGestion.StartTransaction;
    try
      sbEstado.Panels[0].Text:='Pasando Lista a Original....';
      Application.ProcessMessages;
      DatosListaPrecioEspecial.QPasarOriginal.Close;
      DatosListaPrecioEspecial.QPasarOriginal.ParamByName('id_lista').Value:=CDSListaCabID.Value;
      DatosListaPrecioEspecial.QPasarOriginal.ExecSQL;
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo hacer la operación');
    end;
  end;
  Recuperar.Execute;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
end;

procedure TFormListaPrecioEspecial.ClonarExecute(Sender: TObject);
begin
  inherited;
  if CDSListaCabID.AsString<>'' then
  begin
  if Not(Assigned(FormClonadorListaPrecio)) then
    FormClonadorListaPrecio:=TFormClonadorListaPrecio.Create(Application);
  FormClonadorListaPrecio.Lista:=CDSListaCabID.AsInteger;
  FormClonadorListaPrecio.showModal;
  end;
end;

procedure TFormListaPrecioEspecial.FormShow(Sender: TObject);
begin
  inherited;
//  CDSF_Pago.Open;
  CDSMarcas.Open;
  btNuevo.SetFocus;
  btBorrar.Visible:=DMMain_FD.UsuarioAdministrador;
end;

procedure TFormListaPrecioEspecial.ExportaConStockExecute(Sender: TObject);
var Rs:Char;
I:Integer;
begin
  inherited;
  if Not(Assigned(FormSepardorTXT))  then
    FormSepardorTXT :=TFormSepardorTXT.Create(Self);
  FormSepardorTXT.ShowModal;
  if FormSepardorTXT.ModalResult=mrOk  then
   begin
     for I := 0 to Length(FormSepardorTXT.Caracter) do
       Rs:=FormSepardorTXT.Caracter[i];
     DataToTxtConStock.separator:= Rs;
   end;


  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(Assigned(FormBuscadorDepositos)) then
    FormBuscadorDepositos:=TFormBuscadorDepositos.Create(self);
  FormBuscadorDepositos.Deposito:=FormListaPrecioEspecial.DepositoPorDefecto;
  FormBuscadorDepositos.ShowModal;

  DatosListaPrecioEspecial.CDSExportaConStock.Close;

  if Not(FormBuscadorDepositos.ModalResult=mrOk) then
    DatosListaPrecioEspecial.CDSExportaConStock.Params.ParamByName('deposito').Value:= -1
  else
    DatosListaPrecioEspecial.CDSExportaConStock.Params.ParamByName('deposito').Value:= FormBuscadorDepositos.Deposito;
  DatosListaPrecioEspecial.CDSExportaConStock.Params.ParamByName('id').Value        := CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaConStock.Open;

  IF NOT (DatosListaPrecioEspecial.CDSExportaConStock.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Lista_Con_Stock';
      SaveDialog1.DefaultExt:='TXT';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            begin
              if Not(AnsiEndsText( '.txt', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
            end;

          DataToTxtConStock.SaveToFile(SaveDialog1.FileName);

          Sleep(500);
          if Not(VirtualUI.Active) then
            ShowMessage('Lista con Stock Exportada ... Ubicación: '+SaveDialog1.FileName);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
  DatosListaPrecioEspecial.CDSExportaConStock.Close;
end;

procedure TFormListaPrecioEspecial.ExportarXLSCodigoCostoVtaExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value := CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Lista_Codigo_costo_Vta';
      SaveDialog1.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            begin
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
            end;

          DataToXLsCodigo_Venta_costo.SaveToFile(SaveDialog1.FileName);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
  DatosListaPrecioEspecial.CDSExportaTxt.Close;

end;

procedure TFormListaPrecioEspecial.ExportarXLSCodigoRecExecute(Sender: TObject);
begin
  inherited;
  DatosListaPrecioEspecial.CDSExportaTxt.Close;
  DatosListaPrecioEspecial.CDSExportaTxt.Params.ParamByName('id').Value := CDSListaCabID.Value;
  DatosListaPrecioEspecial.CDSExportaTxt.Open;
  IF NOT (DatosListaPrecioEspecial.CDSExportaTxt.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName  :='Codigo_recargo';
      SaveDialog1.DefaultExt:='XLS';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            begin
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
            end;

          DataToCodigoRec.SaveToFile(SaveDialog1.FileName) ;

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName)
          else
            ShowMessage('Lista Codigo con Recargos Exportada ... Ubicación: '+SaveDialog1.FileName);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
  DatosListaPrecioEspecial.CDSExportaTxt.Close;
end;

procedure TFormListaPrecioEspecial.ImportarPorcentajeExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormImportarPorcentajes)) then
    FormImportarPorcentajes:=TFormImportarPorcentajes.Create(Self);
  FormImportarPorcentajes.Show;
end;

procedure TFormListaPrecioEspecial.ImportarXMLExecute(Sender: TObject);
begin
  inherited;
  CDSListaCab.Close;
  CDSListaRub.Close;
  CDSListaSub.Close;
  CDSListaArt.Close;

  CDSListaCab.Open;
  CDSListaRub.Open;
  CDSListaSub.Open;
  CDSListaArt.Open;

  CDSListaCab.EmptyDataSet;
  CDSListaRub.EmptyDataSet;
  CDSListaSub.EmptyDataSet;
  CDSListaArt.EmptyDataSet;

  CDSListaCab.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaCab.XML');
  CDSListaRub.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaRub.XML');
  CDSListaSub.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaSub.XML');
  CDSListaArt.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\ListaArt.XML');

  CDSListaCab.ApplyUpdates(0);
  CDSListaRub.ApplyUpdates(0);
  CDSListaSub.ApplyUpdates(0);
  CDSListaArt.ApplyUpdates(0);

  CDSListaCab.Close;
  CDSListaRub.Close;
  CDSListaSub.Close;
  CDSListaArt.Close;
end;

procedure TFormListaPrecioEspecial.InrementoMargenExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormIncrementoMargen)) then
    FormIncrementoMargen:=TFormIncrementoMargen.Create(self);
  FormIncrementoMargen.showModal;
  if FormIncrementoMargen.ModalResult=mrOk then
    begin
       AplicaIncremento(FormIncrementoMargen.Incremenal);
    end;
  FreeAndNil(FormIncrementoMargen);
end;

procedure TFormListaPrecioEspecial.ModificarExecute(Sender: TObject);
begin
  inherited;
  Cancelado:=False;
end;

procedure TFormListaPrecioEspecial.dbcMarcaClick(Sender: TObject);
begin
  inherited;
  CDSListaArt.Filtered:=False;
  CDSListaArt.Filter  :='MuestraMarca='+dbcMarca.KeyValue;
  if dbcMarca.KeyValue<>'****' then
    CDSListaArt.Filtered:=True;
end;

procedure TFormListaPrecioEspecial.dbgArticulosDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var
    colIndex: integer;
    enDegas: boolean;
begin
//  Si no està en degas poner en amarillo
//  ACanvas.Font.Color := clBlack;
//  if dbgArticulosDBTableView1FECHA.AsString<>'' then
///    if (Date- dbgArticulosDBTableView1FECHA.AsDateTime)<=7 Then
//      ACanvas.Font.Color := clBlue
//    else
//      ACanvas.Font.Color := clBlack;
//   colIndex := dbgArticulosDBTableView1FECHA.Index;
//    enDegas := AviewInfo.GridRecord.Values[colIndex];
//    if not enDegas then ACanvas.Font.Color := clBlue;

end;

procedure TFormListaPrecioEspecial.dbgArticulosDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if CDSListaArtCODIGOARTICULO.AsString<>'' then
    begin
      if Not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(self);
      FormStock_2.DatoNew:= CDSListaArtCODIGOARTICULO.AsString;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;
    end;

end;

procedure TFormListaPrecioEspecial.CancelarExecute(Sender: TObject);
begin
  Cancelado:=True;
  inherited;
  CDSListaCab.Close;
  CDSListaCab.Params.ParamByName('id').Clear;
  CDSListaCab.OPen;

  CDSListaRub.Close;
  CDSListaRub.Params.ParamByName('id').Clear;
  CDSListaRub.OPen;

  CDSListaSub.Close;
  CDSListaSub.Params.ParamByName('id').Clear;
  CDSListaSub.OPen;

  CDSListaArt.Close;
  CDSListaArt.Params.ParamByName('id').Clear;
  CDSListaArt.OPen;
end;


procedure TFormListaPrecioEspecial.CDSListaArtCalcFields(DataSet: TDataSet);
begin
  inherited;
  if (CDSListaArtMUESTAGRAVADOSOMBRA.AsFloat+CDSListaArtMUESTRAEXENTOSOMBRA.AsFloat)>0 then
    begin
      CDSListaArtPRECIOSOMBRA.Value       := (CDSListaArtMUESTAGRAVADOSOMBRA.AsFloat+CDSListaArtMUESTRAEXENTOSOMBRA.AsFloat)*(1+(CDSListaArtRECARGO.AsFloat*0.01));
      CDSListaArtPRECIOSOMBRAMASIVA.Value :=((CDSListaArtMUESTAGRAVADOSOMBRA.AsFLoat*(1+(CDSListaArtIVA_TASA.AsFloat*0.01))+CDSListaArtMUESTRAEXENTOSOMBRA.AsFloat)*(1+(CDSListaArtRECARGO.AsFloat*0.01)));
    end
  else
    begin
      CDSListaArtPRECIOSOMBRA.Value       := (CDSListaArtCOSTO_GRAVADO.AsFloat+CDSListaArtCOSTO_EXENTO.AsFloat)*(1+(CDSListaArtRECARGO.AsFloat*0.01));
      CDSListaArtPRECIOSOMBRAMASIVA.Value :=((CDSListaArtCOSTO_GRAVADO.AsFloat*(1+(CDSListaArtIVA_TASA.AsFloat*0.01))+CDSListaArtCOSTO_EXENTO.AsFloat)*(1+(CDSListaArtRECARGO.AsFloat*0.01)));
    end;
  CDSListaArtCOSTO_FINAL.AsFloat:=CDSListaArtCOSTO_TOTAL.Value + CDSListaArtCOSTO_GRAVADO.Value * (CDSListaArtIVA_TASA.Value*0.01);
  CDSListaArtPRECIO_CONDSCTO.Value:=CDSListaArtPRECIO.Value*((100-CDSListaArtDESCUENTO.Value)*0.01);
end;

procedure TFormListaPrecioEspecial.CDSListaArtNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSListaArtID.Value           := ibgArt.IncrementFD(1);
  CDSListaArtID_CAB.Value       := CDSListaCabID.Value;
  CDSListaArtRECARGO.AsFloat    := 0;
  CDSListaArtDESCUENTO.AsFloat  := 0;
  CDSListaArtREC_APLICAR.AsFloat:= 0;
  CDSListaArtIVA_IMPORTE.AsFloat:= 0;
end;

procedure TFormListaPrecioEspecial.CDSListaArtPRECIOSetText(Sender: TField;
  const Text: string);
var Recargo,Precio,CostoFinal,AuxG,AuxF:Extended;
begin
  Sender.AsString := Text;
  AuxF            := Sender.AsFloat - CDSListaArtCOSTO_EXENTO.AsFloat;
  CostoFinal      := RoundTo(CDSListaArtCOSTO_GRAVADO.AsFloat * (1 + CDSListaArtIVA_TASA.AsFloat * 0.01) ,-3);
//  Recargo:=   RoundTo(((Sender.AsFloat - CostoFinal) / CostoFinal) * 100,-2);
  if costoFinal>0 then
    Recargo:=   (((AuxF - CostoFinal) / CostoFinal) * 100)
  else
    Recargo:=100;

  CDSListaArtPRECIO_GRAVADO.AsFloat := CDSListaArtCOSTO_GRAVADO.AsFloat * (1+Recargo * 0.01);
// si es que tiene impuesto internos esto pasan como estan... sin recargo
  if (CDSListaArtMUESTRAMODOGRAVAMEN.AsString[1] in ['M','Y','I']) then
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat
  else
    CDSListaArtPRECIO_EXENTO.AsFloat  := CDSListaArtCOSTO_EXENTO.AsFloat * (1+Recargo * 0.01);
  CDSListaArtIVA_IMPORTE.AsFloat     := CDSListaArtPRECIO_GRAVADO.ASFloat * CDSListaArtIVA_TASA.AsFloat * 0.01;

//  AuxF:= AuxF-CDSListaArtPRECIO_EXENTO.ASFloat;
  AuxG:= CDSListaArtPRECIO_GRAVADO.AsFloat;
  //  Precio := CDSListaArtPRECIO_GRAVADO.AsFloat+CDSListaArtIVA_IMPORTE.AsFloat;
//  Recargo:= ( ( Precio - CDSListaArtCOSTO_TOTAL.AsFloat) / CDSListaArtCOSTO_TOTAL.AsFloat ) * 100;
  CDSListaArtIVA_IMPORTE.AsFloat    := AuxF-AuxG;

  CDSListaArtRECARGO.AsFloat:=Recargo;
end;

procedure TFormListaPrecioEspecial.CDSListaArtPRECIO_CONDSCTOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSListaArtDESCUENTO.Value:=(1-(Sender.AsFloat/CDSListaArtPRECIO.Value))*100;
end;

procedure TFormListaPrecioEspecial.CDSListaArtRECARGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSListaArtPRECIO_GRAVADO.AsFloat :=CDSListaArtCOSTO_GRAVADO.AsFloat * ((Sender.AsFloat*0.01)+1);
  if CDSListaArtMUESTRAMODOGRAVAMEN.AsString[1] in ['M','I','Y'] then
    CDSListaArtPRECIO_EXENTO.AsFloat :=CDSListaArtCOSTO_EXENTO.AsFloat
  else
    CDSListaArtPRECIO_EXENTO.AsFloat :=CDSListaArtCOSTO_EXENTO.AsFloat * ((Sender.AsFloat*0.01)+1);

  CDSListaArtIVA_IMPORTE.AsFloat   :=CDSListaArtPRECIO_GRAVADO.AsFloat * CDSListaArtIVA_TASA.AsFloat * 0.01;

  CDSListaArtPRECIO.AsFloat := CDSListaArtPRECIO_GRAVADO.AsFloat +
                               CDSListaArtPRECIO_EXENTO.AsFloat +
                               CDSListaArtIVA_IMPORTE.AsFloat;

end;

procedure TFormListaPrecioEspecial.CDSListaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.OPen;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSListaCabID.Value         :=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSListaCabID.Value         :=1;
  QUltimoCodigo2.Close;
  CDSListaCabRECARGOBASE.AsFloat      := 0;
  CDSListaCabFECHA.AsDateTime         := Date;
  CDSListaCabPORDEFECTO.Value         := 'N';
  CDSListaCabUSO_ADMINISTRADOR.Value  := 'N';
  CDSListaCabF_PAGO.Value             := -1;
  CDSListaCabCLONADA.Value            := 'N';
  CDSListaCabID_LISTA_CLONADA.Value   := -1;
  CDSListaCabCOEFICIENTE.AsFloat      := 0;
  CDSListaCabEXCLUSIVO_EFECTIVO.Value := 'N';
  CDSListaCabACTUALIZA_EXCEPCION.Value:= 'S';
  CDSListaCabAPLICA_PROMOCION.Value   :='S';
end;

procedure TFormListaPrecioEspecial.CDSListaCabRECARGOBASESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text<>'' Then
    begin
      Cancelado        := False;
      Confirma.Enabled := False;
      Sender.AsString  := Text;


      dbgRubroDBTableView1.BeginUpdate;
      dbgSubRubroDBTableView1.BeginUpdate;
      dbgArticulosDBTableView1.BeginUpdate;

      dbgRubroDBTableView1.DataController.BeginFullUpdate;
      dbgSubRubroDBTableView1.DataController.BeginFullUpdate;
      dbgArticulosDBTableView1.DataController.BeginFullUpdate;

      AsignarRecargoRubro;

      dbgRubroDBTableView1.DataController.EndFullUpdate;
      dbgSubRubroDBTableView1.DataController.EndFullUpdate;
      dbgArticulosDBTableView1.DataController.EndFullUpdate;

      dbgRubroDBTableView1.EndUpdate;
      dbgSubRubroDBTableView1.EndUpdate;
      dbgArticulosDBTableView1.EndUpdate;

      Confirma.Enabled := True;
    end;
end;

procedure TFormListaPrecioEspecial.CDSListaRubDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text<>'' then
    begin
      sender.AsString:=Text;
      //CDSListaRub.Post;
      AsignarDescuentoSubRubro;
    end;
end;

procedure TFormListaPrecioEspecial.CDSListaRubNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSListaRubID_CAB.Value        := CDSListaCabID.Value;
  CDSListaRubID.Value            := ibgRub.IncrementFD(1);
  CDSListaRubRECARGO.AsFloat     := 0;
  CDSListaRubDESCUENTO.AsFloat   := 0;
  CDSListaRubREC_APLICAR.AsFloat := 0;
end;

procedure TFormListaPrecioEspecial.CDSListaRubRECARGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if Text<>'' then
    begin
      sender.AsString:=Text;
      AsignarRecargoSubRubro;
    end;
end;

procedure TFormListaPrecioEspecial.CDSListaRubReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(E.Message);
end;

procedure TFormListaPrecioEspecial.CDSListaSubBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if Lleno Then sysutils.Abort;
end;

procedure TFormListaPrecioEspecial.CDSListaSubDESCUENTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if text<>'' then
    begin
      sender.AsString:=text;
      AsignarDescuentoArticulo;
    end;
end;

procedure TFormListaPrecioEspecial.CDSListaSubNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSListaSubID.Value            := ibgSub.IncrementFD(1);
  CDSListaSubID_CAB.Value        := CDSListaCabID.Value;
  CDSListaSubRECARGO.AsFloat     := 0;
  CDSListaSubDESCUENTO.AsFloat   := 0;
  CDSListaSubREC_APLICAR.AsFloat := 0;
end;

procedure TFormListaPrecioEspecial.CDSListaSubRECARGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if text<>'' then
    begin
      sender.AsString:=text;
      AsignarRecargoArticulo;
//      CDSListasub.Post;
    end;
end;

procedure TFormListaPrecioEspecial.CDSListaSubREC_APLICARSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if text<>'' then
    begin
      sender.AsString:=text;
      AsignarRecAplicarArticulo;
//      CDSListasub.Post;
    end;
end;

procedure TFormListaPrecioEspecial.ReasignarListaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambioListaCliente)) then
    FormCambioListaCliente:=TFormCambioListaCliente.Create(Self);
  FormCambioListaCliente.IDListaOld:=CDSListaCabID.Value;
  FormCambioListaCliente.ListaOld  :=CDSListaCabNOMBRE.Value;
  FormCambioListaCliente.ShowModal;
end;

procedure TFormListaPrecioEspecial.RecalculoExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    sbEstado.Panels[0].Text:='Recalculando Listas ...';
    Application.ProcessMessages;
    Sleep(1);
    DatosListaPrecioEspecial.spRecalcular.Close;
    DatosListaPrecioEspecial.spRecalcular.ParamByName('LISTA').Value:=CDSListaCabID.Value;
    DatosListaPrecioEspecial.spRecalcular.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DatosListaPrecioEspecial.spRecalcular.Close;
    DatoNew:=CDSListaCabID.AsString;
    Recuperar.Execute;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la operación');
  end;
  sbEstado.Panels[0].Text:='';
  Application.ProcessMessages;
  Screen.Cursor:=crDefault;

  Sleep(1);
end;

procedure TFormListaPrecioEspecial.AsignarDescuentoSubRubro;
BEGIN
  CDSListaSub.First;
  sbEstado.Panels[0].Text:='Aplicando Descuentos Sub Rubro....';
  Application.ProcessMessages;
  Sleep(1);
  pgSubRubro.Min      := 0;
  pgSubRubro.Max      := 0;
  if CDSListaSub.RecordCount>0 then
    pgSubRubro.Max      := CDSListaSub.RecordCount-1;
  pgSubRubro.Position := 0;
  while Not(CDSListaSub.Eof) and (CDSListaSub.RecordCount>0) DO
    begin
      if (pgSubRubro.Position<pgSubRubro.Max) and ( pgSubRubro.Max>0) then
        pgSubRubro.Position:=pgSubRubro.Position+1;
      CDSListaSub.edit;
      CDSListaSubDESCUENTOSetText(CDSListaSubDESCUENTO,CDSListaRubDESCUENTO.AsString);
      AsignarDescuentoArticulo;
      CDSListaSub.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  pgSubRubro.Position:=0;
  Application.ProcessMessages;
  Sleep(1);
End;

procedure TFormListaPrecioEspecial.AsignarDescuentoArticulo;
BEGIN
  CDSListaArt.First;
  CDSListaArt.DisableControls;
  sbEstado.Panels[0].Text:='Aplicando Descuentos en Articulos....';
  Application.ProcessMessages;
  Sleep(1);
  pgArticulo.Position := 0;
  pgArticulo.Min      := 0;
  pgArticulo.Max      := 0;
  if CDSListaArt.RecordCount>0 then
    pgArticulo.Max      := CDSListaArt.RecordCount-1;
  while Not(CDSListaArt.Eof) and (CDSListaArt.RecordCount>0) DO
    begin
      sbEstado.Panels[0].Text:='Aplicando Descuentos en Articulos....'+IntToStr(pgArticulo.Position)+'/'+IntToStr(pgArticulo.Max);
      if (pgArticulo.Position<pgArticulo.Max) and ( pgArticulo.Max>0) then
        pgArticulo.Position:=pgArticulo.Position+1;
      Application.ProcessMessages;
      Sleep(1);
      CDSListaArt.edit;
      CDSListaArtDESCUENTO.AsFloat:=CDSListaSubDESCUENTO.AsFloat;
      CDSListaArt.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  Application.ProcessMessages;
  Sleep(1);
  CDSListaArt.EnableControls;
  pgArticulo.Position:=0;
end;
//////////////////////////////////////////////////////////////////////////////////
procedure TFormListaPrecioEspecial.AsignarRecAplicarSubRubro;
BEGIN
  CDSListaSub.First;
  sbEstado.Panels[0].Text:='Aplicando Rec.Futuro Sub Rubro....';
  Application.ProcessMessages;
  Sleep(1);
  pgSubRubro.Min      := 0;
  pgSubRubro.Max      := 0;
  if CDSListaSub.RecordCount>0 then
    pgSubRubro.Max      := CDSListaSub.RecordCount-1;
  pgSubRubro.Position := 0;
  while Not(CDSListaSub.Eof) and (CDSListaSub.RecordCount>0) DO
    begin
      if (pgSubRubro.Position<pgSubRubro.Max) and ( pgSubRubro.Max>0) then
        pgSubRubro.Position:=pgSubRubro.Position+1;
      CDSListaSub.edit;
      CDSListaSubREC_APLICARSetText(CDSListaSubREC_APLICAR,CDSListaRubREC_APLICAR.AsString);
      AsignarRecAplicarArticulo;
      CDSListaSub.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  pgSubRubro.Position:=0;
  Application.ProcessMessages;
  Sleep(1);
End;

procedure TFormListaPrecioEspecial.AsignarRecAplicarArticulo;
BEGIN
  CDSListaArt.First;
  CDSListaArt.DisableControls;
  sbEstado.Panels[0].Text:='Aplicando Rec.Futuro en Articulos....';
  Application.ProcessMessages;
  Sleep(1);
  pgArticulo.Position := 0;
  pgArticulo.Min      := 0;
  pgArticulo.Max      := 0;
  if CDSListaArt.RecordCount>0 then
    pgArticulo.Max      := CDSListaArt.RecordCount-1;
  while Not(CDSListaArt.Eof) and (CDSListaArt.RecordCount>0) DO
    begin
      sbEstado.Panels[0].Text:='Aplicando Descuentos en Articulos....'+IntToStr(pgArticulo.Position)+'/'+IntToStr(pgArticulo.Max);
      if (pgArticulo.Position<pgArticulo.Max) and ( pgArticulo.Max>0) then
        pgArticulo.Position:=pgArticulo.Position+1;
      Application.ProcessMessages;
      Sleep(1);
      CDSListaArt.edit;
      CDSListaArtREC_APLICAR.AsFloat:=CDSListaSubREC_APLICAR.AsFloat;
      CDSListaArt.Next;
    end;
  sbEstado.Panels[0].Text:='...';
  Application.ProcessMessages;
  Sleep(1);
  CDSListaArt.EnableControls;
  pgArticulo.Position:=0;
end;


//procedure TFormListaPrecioEspecial.AsignarRecAplicarRubro;
//begin
//  QListaRub.First;
//  sbEstado.Panels[0].Text:='Aplicando Rec.Futuro Rubro....';
//  Application.ProcessMessages;
//  Sleep(1);
//  pgRubro.Min      := 0;
//  pgRubro.Max      := 0;
//  if QListaRub.RecordCount>0 then
//    pgRubro.Max      := QListaRub.RecordCount-1;
//  pgRubro.Position := 0;
//  while Not(QListaRub.Eof) and (QListaRub.RecordCount>0) DO
//    begin
//      if (pgRubro.Position<pgRubro.Max) and ( pgRubro.Max>0) then
//        pgRubro.Position:=pgRubro.Position+1;
//      QListaRub.edit;
//      QListaRubREC_APLICARSetText(QListaRubREC_APLICAR,QListaRubREC_APLICAR.AsString);
//      AsignarRecAplicarSubRubro;
//      QListaRub.Next;
//    end;
//  sbEstado.Panels[0].Text:='...';
//  pgRubro.Position:=0;
//  Application.ProcessMessages;
//  Sleep(1);
//end;

end.