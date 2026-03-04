unit UOrdenDeTrabajo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxRich, Vcl.Menus,
  frxClass, frxExportPDF, frxDBSet, JvArrowButton, Vcl.ComCtrls, Vcl.StdCtrls,
  JvExStdCtrls, JvCombobox, JvDBCombobox, Vcl.DBCtrls, JvRichEdit, JvDBRichEdit,
  Vcl.Grids, Vcl.DBGrids, JvExDBGrids, JvDBGrid, JvDBDateTimePicker,
  JvExComCtrls, JvDateTimePicker, JvExControls, JvDBLookup, JvToolEdit,
  JvDBControls, JvExMask, Vcl.Samples.Spin, Vcl.Mask, JvLabel,Variants,
  Vcl.Samples.Gauges, Vcl.ExtCtrls, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  JvGradient, Vcl.Buttons, Vcl.ToolWin,IniFiles,Math,System.Types, JvBaseEdits,
  frxExportBaseDialog, System.ImageList, AdvDBLookupComboBox, Datasnap.Provider,
  Datasnap.DBClient, AdvSearchList, AdvSearchEdit, DBAdvSearchEdit, Lucombo,
  dblucomb, Data.Bind.EngExt, Vcl.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.DBScope, AdvEdit, DBAdvEd, AdvPanel, Easysize, System.StrUtils,
  AdvPageControl, AdvOfficePager, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxCalendar, cxDBEdit, cxMaskEdit, cxDropDownEdit, cxCalc,
  cxTextEdit, JvToolBar, AdvCustomComponent, AdvStateManager,
  AdvResponsiveManager, frCoreClasses;

type
  TFormOrdenDeTrabajo = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeMuestraResponsableOT: TDBEdit;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarConVenta: TAction;
    BuscarVendedor: TAction;
    BuscarProducto: TAction;
    BuscarTipoCpbte: TAction;
    BuscarArticulo: TAction;
    ToolButton1: TToolButton;
    spArchivarOT: TSpeedButton;
    Facturar: TAction;
    HacerFactura: TAction;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    sbFacturar: TSpeedButton;
    ArchivarOdeTrabajo: TAction;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    NivelPrioridad: TGauge;
    edDeltaPrioridad: TSpinEdit;
    frOrdenTrabajo: TfrxReport;
    frDSMovimientos: TfrxDBDataset;
    frDSCabecera: TfrxDBDataset;
    dbeMuestraResponsableTurno: TDBEdit;
    Imprimir: TAction;
    edPrioridadInicial: TSpinEdit;
    SpeedButton1: TSpeedButton;
    DatosCliente: TAction;
    BuscaTipoFc: TAction;
    dbeMuestraTelefono: TDBEdit;
    BorrarPenalizacion: TAction;
    DBText10: TDBText;
    Bevel2: TBevel;
    SpeedButton2: TSpeedButton;
    CronogramOT: TAction;
    Recalcular: TAction;
    frEmpresa: TfrxDBDataset;
    RxCCodigo: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcResponsableOT: TJvDBComboEdit;
    rxcRespTurno: TJvDBComboEdit;
    frxPDFExport1: TfrxPDFExport;
    dbeFechaInicio: TJvDBDateEdit;
    BuscarFactura: TAction;
    DBText8: TDBText;
    DBText11: TDBText;
    frDBDetalle: TfrxDBDataset;
    JvArrowButton1: TJvArrowButton;
    PopupMenu1: TPopupMenu;
    ImprimirContrato1: TMenuItem;
    ImprimirAnexo1: TMenuItem;
    BuscarPorObs: TAction;
    N1: TMenuItem;
    BuscarPorObs1: TMenuItem;
    dbeTelefono2: TDBEdit;
    RxCLdr: TJvDBComboEdit;
    dbeLdr: TDBEdit;
    spCorreo: TSpeedButton;
    EnviarCorreo: TAction;
    BuscadorXIdentif: TAction;
    SpeedButton3: TSpeedButton;
    cbMotivo: TJvDBLookupCombo;
    DBFechaFianlizacion: TJvDBDateEdit;
    HoraDesde: TJvDateTimePicker;
    HoraHasta: TJvDateTimePicker;
    ComBuscadorProductos: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorLdr: TComBuscador;
    DBText13: TDBText;
    DBText14: TDBText;
    RtfToTexto: TAction;
    frxRichObject1: TfrxRichObject;
    PopupMenu2: TPopupMenu;
    RtfToTexto1: TMenuItem;
    ComBuscadorDepositos: TComBuscador;
    BuscarSerie: TAction;
    ComBuscadorSeries: TComBuscador;
    frDBSeries: TfrxDBDataset;
    BuscarConsumible: TAction;
    frDBConsumibles: TfrxDBDataset;
    HacerAjusteStcok: TAction;
    SpeedButton4: TSpeedButton;
    pnDetalle: TPanel;
    pcDetalles: TPageControl;
    PagNovedades: TTabSheet;
    Label2: TLabel;
    DBText9: TDBText;
    Label3: TLabel;
    Label9: TLabel;
    dbePuntos: TDBEdit;
    JvDBDateTimePicker2: TJvDBDateTimePicker;
    dbgMov: TJvDBGrid;
    PagDetalles: TTabSheet;
    Bevel21: TBevel;
    DBText60: TDBText;
    dbtMustraTipoFactura: TDBText;
    DBGrillaDetalle: TDBGrid;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    RxCTipoFactura: TJvDBComboEdit;
    pnPieFactura: TPanel;
    DBText12: TDBText;
    Label1: TLabel;
    DBText15: TDBText;
    RxCDeposito: TJvDBComboEdit;
    dbeDeposito: TDBEdit;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    PagImpuestos: TTabSheet;
    Label6: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    Label4: TLabel;
    DBText2: TDBText;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    PagConsumibles: TTabSheet;
    dbgConsumibles: TDBGrid;
    edTotal: TJvCalcEdit;
    PagPenalizaciones: TTabSheet;
    btBorraPenalizaciones: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    pagNotas: TTabSheet;
    dbmNotas: TDBMemo;
    DSBuscadorProductos: TDataSource;
    DSMarcas: TDataSource;
    DSModelos: TDataSource;
    DSCategorias: TDataSource;
    DSProducto: TDataSource;
    pcConfig: TTabSheet;
    ceArtPorDef: TJvComboEdit;
    edArtPorDef: TEdit;
    Label10: TLabel;
    BuscarArticuloPorDef: TAction;
    frDBProducto: TfrxDBDataset;
    ImprimirContrato: TAction;
    SpeedButton5: TSpeedButton;
    frContrato: TfrxReport;
    edCpbtePorDef: TEdit;
    ceCpbtePorDef: TJvComboEdit;
    BuscarCpbtePorDef: TAction;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    NuevoProducto: TAction;
    BalloonHint1: TBalloonHint;
    ImprimirEtiqueta: TAction;
    ImprimirEtiqueta1: TMenuItem;
    SpeedButton7: TSpeedButton;
    frEtiqueta: TfrxReport;
    pnTrabajoSimple: TAdvPanel;
    JvDBComboEdit1: TJvDBComboEdit;
    dbeMuestraIdentificacion: TDBEdit;
    dbeDescripcionProducto: TDBEdit;
    DBMemo1: TDBMemo;
    RxCEstados: TJvDBComboBox;
    pnDetalleTrabajo: TAdvPanel;
    SpeedButton6: TSpeedButton;
    RxCProducto: TJvDBComboEdit;
    edObservacion: TDBMemo;
    edIdentificador: TDBLUEdit;
    edPatron: TDBAdvEdit;
    edPassword: TDBAdvEdit;
    edObservacion2: TDBMemo;
    dbmDetalle: TDBMemo;
    edProblema: TDBMemo;
    dbtTotal: TDBText;
    dbmDetalle2: TDBMemo;
    BuscarPorReferencia: TAction;
    DBText16: TDBText;
    RxLabel58: TLabel;
    RxLabel59: TLabel;
    RxLabel60: TLabel;
    RxLabel63: TLabel;
    RxLabel2: TLabel;
    RxLabel6: TLabel;
    RxLabel7: TLabel;
    RxLabel9: TLabel;
    RxLabel10: TLabel;
    RxLabel11: TLabel;
    RxLabel3: TLabel;
    RxLabel4: TLabel;
    RxLabel8: TLabel;
    RxLabel15: TLabel;
    JvLabel3: TLabel;
    JvLabel4: TLabel;
    JvLabel5: TLabel;
    JvLabel6: TLabel;
    JvLabel7: TLabel;
    JvLabel16: TLabel;
    JvLabel17: TLabel;
    RxLabel5: TLabel;
    RxLabel14: TLabel;
    JvLabel2: TLabel;
    JvLabel8: TLabel;
    JvLabel1: TLabel;
    JvLabel9: TLabel;
    JvLabel20: TLabel;
    JvLabel21: TLabel;
    RxLabel1: TLabel;
    JvLabel11: TLabel;
    JvLabel14: TLabel;
    JvLabel15: TLabel;
    JvLabel18: TLabel;
    JvLabel19: TLabel;
    JvLabel12: TLabel;
    RxLabel12: TLabel;
    JvLabel10: TLabel;
    pcModo: TAdvOfficePager;
    pagClasico: TAdvOfficePage;
    pagMovil: TAdvOfficePage;
    pagMatafuegos: TAdvOfficePage;
    pnMatafuegos: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label31: TLabel;
    edNumero: TDBEdit;
    edMarcaMatafuego: TDBEdit;
    edCapacidad: TJvDBCalcEdit;
    GroupBox1: TGroupBox;
    cxDBTextEdit4: TDBCheckBox;
    cxDBTextEdit5: TDBCheckBox;
    cxDBTextEdit6: TDBCheckBox;
    cxDBTextEdit7: TDBCheckBox;
    cxDBTextEdit8: TDBCheckBox;
    cxDBTextEdit9: TDBCheckBox;
    cxDBTextEdit10: TDBCheckBox;
    cxDBTextEdit11: TDBCheckBox;
    DBCheckBox1: TDBCheckBox;
    JvToolBar1: TJvToolBar;
    MainMenu1: TMainMenu;
    Opciones1: TMenuItem;
    ModoDatosAmpliados: TMenuItem;
    ModoMatafuegos: TMenuItem;
    ModoStandard: TMenuItem;
    N2: TMenuItem;
    edRealizado: TJvDBDateEdit;
    edAgente: TDBEdit;
    ComBuscadorMatafuego: TComBuscador;
    SpeedButton9: TSpeedButton;
    BuscarMatafuego: TAction;
    Label23: TLabel;
    edFechaFabricacion: TJvDBDateEdit;
    SpeedButton8: TSpeedButton;
    AgregarMatafuego: TAction;
    DBRadioGroup1: TDBRadioGroup;
    DBText17: TDBText;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    edFechaEstimada: TJvDBDateEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure BuscarProductoExecute(Sender: TObject);
    procedure RxCProductoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure HacerFacturaExecute(Sender: TObject);
    procedure ArchivarOdeTrabajoExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure pcDetallesChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure rxcRespTurnoExit(Sender: TObject);
    procedure rxcResponsableOTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxcRespTurnoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DatosClienteExecute(Sender: TObject);
    procedure RxCTipoFacturaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure BorrarPenalizacionExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbeFechaInicioExit(Sender: TObject);
    procedure CronogramOTExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCEstadosChange(Sender: TObject);
    procedure RxCEstadosEnter(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarFacturaExecute(Sender: TObject);
    procedure RxCCodigoExit(Sender: TObject);
    procedure BuscarPorObsExecute(Sender: TObject);
    procedure dbmDetalleDblClick(Sender: TObject);
    procedure dbmDetalleExit(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure BuscadorXIdentifExecute(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure BuscaTipoFcExecute(Sender: TObject);
//    procedure dbgMovColEnter(Sender: TObject);
//    procedure dbgMovKeyPress(Sender: TObject; var Key: Char);
    procedure RtfToTextoExecute(Sender: TObject);
//    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
//      Shift: TShiftState);
    procedure dbgMovColEnter(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure dbgConsumiblesColEnter(Sender: TObject);
    procedure dbgConsumiblesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgConsumiblesKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarConsumibleExecute(Sender: TObject);
    procedure HacerAjusteStcokExecute(Sender: TObject);
    procedure dbgConsumiblesDblClick(Sender: TObject);
    procedure DSBuscadorProductosStateChange(Sender: TObject);
    procedure BuscarArticuloPorDefExecute(Sender: TObject);
    function  AsignarArtPorDef(Dato: string): boolean;
    function  AsignarCpbtePorDef(Dato: string): boolean;
    procedure ceArtPorDefKeyPress(Sender: TObject; var Key: Char);
    procedure ImprimirContratoExecute(Sender: TObject);
    procedure  AgregarDetallePorDef;
    procedure ceCpbtePorDefKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarCpbtePorDefExecute(Sender: TObject);
    function  BuscarCpbteFactura: string;
    procedure seProductoDropDownHeaderButtonClick(Sender: TObject;
      ButtonIndex: Integer);
    procedure NuevoProductoExecute(Sender: TObject);
    procedure DSProductoStateChange(Sender: TObject);
    procedure ImprimirEtiquetaExecute(Sender: TObject);
    procedure FormCanResize(Sender: TObject; var NewWidth, NewHeight: Integer;
      var Resize: Boolean);
    procedure seProductoBeforeDropDown(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure ModoStandardClick(Sender: TObject);
    procedure ModoDatosAmpliadosClick(Sender: TObject);
    procedure ModoMatafuegosClick(Sender: TObject);
    procedure BuscarMatafuegoExecute(Sender: TObject);
    procedure AgregarMatafuegoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    // Para la Facturacion ...
    SucursalComprobante:Integer;
    IDComprobante      :Integer;
    Deposito           :Integer;
    CpbteCancelado     :Boolean;
    CodigosSeries : TStringList;

    EstuvoAsignado   :Boolean;
    Archivada        :TPanel;
    Penalizada       :TPanel;
    OldEstado        :Byte;
    CpbteNuevo       : Char;
    ImporteOriginal  : Real;
    AutoEnviarCorreo :Boolean;
    Campo1,Campo2,Campo3,Campo4:String;
    procedure AgregaCabecera;
    procedure AgregaDetalle;
    procedure CambiarHora(Sender:TObject);
//    procedure NuevoProducto;

  end;

var
  FormOrdenDeTrabajo: TFormOrdenDeTrabajo;

PROCEDURE UltimoComprobante;

implementation

uses DMOrdenTrabajo, UBuscadorCpbte, ComposicionPrecio,UStock_2,
  UConsultaArticuloVendido, UFactura_2, DMVenta, UDatosClienteCabeceraCpbte,
  DMVentaCtdo, UFacturaCtdo_2, UCronogramaOT, UBuscadorClientes,
  DMStoreProcedureForm, UBuscadorArticulos, UBuscadorPorObs, DMBuscadoresForm,
  UCorreo, UBuscadorXidentificador, UBuscadorComprobantes, UBuscadorTipoCpbte,
  UBuscadorDepositos,UAjusteMercaderia,UDMain_FD, UBuscarPorNroReferencia,
  UMatafuegos, UProductos, UAltaProductosCliente;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosOrdenDeTrabajo, FormOrdenDeTrabajo, DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSOTrabajoCabLETRAOT.AsString <> '') AND (CDSOTrabajoCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSOTrabajoCabLETRAOT.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSOTrabajoCabSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSOTrabajoCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSOTrabajoCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSOTrabajoCabSUCOTSetText(CDSOTrabajoCabSUCOT,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSOTrabajoCabNUMEROOTSetText(CDSOTrabajoCabNUMEROOT,IntToStr(Numero));
            END;
            // el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
            //  wwCDSRtoCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
            //  wwCDSRtoCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
            //  wwCDSRtoCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          CDSOTrabajoCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSOTrabajoCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime                               := spNumeroCpbte.ParamByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSOTrabajoCabNROCPBTE.AsString := CDSOTrabajoCabLETRAOT.AsString + CDSOTrabajoCabSUCOT.AsString +
      CDSOTrabajoCabNUMEROOT.AsString;
    END;
END;

procedure TFormOrdenDeTrabajo.CambiarHora(Sender:TObject);
begin
end;

procedure TFormOrdenDeTrabajo.FormCreate(Sender: TObject);
var
  ArtPorDef, CpbtePorDef:  String;
begin
  inherited;
  SinBde:=2;
  EstuvoAsignado            := False;
  Autosize                  := False;
//  FResizer.InitializeForm;
  DMMain_FD.Facturado        :=False;
  IF NOT (Assigned(DatosOrdenDeTrabajo)) THEN
    DatosOrdenDeTrabajo := TDatosOrdenDeTrabajo.Create(Application);
  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosOrdenDeTrabajo.CDSOTrabajoCab;
  with DatosOrdenDeTrabajo DO
    begin
     // AddClientDataSet(CDSProducto,DSPProducto);
      AddClientDataSet(CDSOTrabajoCab,DSPOTrabajoCab);
      AddClientDataSet(CDSOTrabajoDet,DSPOTrabajoDet);
      AddClientDataSet(CDSOTrabajoMov,DSPOTrabajoMov);
      AddClientDataSet(CDSOTrabajoSubDet,DSPOTrabajoSubDet);
      AddClientDataSet(CDSImpuestos,DSPImpuestos);
      AddClientDataSet(CDSPenalizaciones,DSPPenalizaciones);
      AddClientDataSet(CDSOTrabajoConsumible,DSPOTrabajoConsumible);
      AddClientDataSet(CDSOTrabajoMatafuegos,DSPOTrabajoMatafuegos);


      DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterSource    := DatosOrdenDeTrabajo.DSOTrabajoDet;
      DatosOrdenDeTrabajo.CDSOTrabajoSubDet.IndexFieldNames := 'ID_DETOT';
      DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterFields    := 'ID';

      CDSOTrabajoCab.Open;
      CDSOTrabajoDet.Open;
      CDSOTrabajoMov.Open;
      CDSOTrabajoSubDet.Open;
      CDSOTrabajoConsumible.Open;
      CDSOTrabajoMatafuegos.Open;

      CDSMotivos.Open;
      CDSImpuestos.Open;
      CDSPenalizaciones.Open;
      CDSEmpresa.Open;
      CDSListaPrecios.Open;

      CDSOTrabajoCab.EmptyDataSet;
      CDSOTrabajoDet.EmptyDataSet;
      CDSOTrabajoMov.EmptyDataSet;
      CDSOTrabajoSubDet.EmptyDataSet;
      CDSOTrabajoConsumible.EmptyDataSet;
      CDSOTrabajoMatafuegos.EmptyDataSet;

      CDSImpuestos.EmptyDataSet;
      CDSPenalizaciones.EmptyDataSet;

 //     CDSBuscadorProductos.Open;
      //CDSCategorias.Open;
      //CDSMarcas.Open;
      CDSModelos.Open;
 //     CDSProducto.Open;

      AplicarMascarasNumericas;
        // Asigno la cantidad de renglones de la factura;
      DMMain_FD.QOpciones.Close;
      DMMain_FD.QOpciones.ParamByName('opcion').AsString:='RENGLONES';
      DMMain_FD.QOpciones.Open;
      IF DMMain_FD.QOpciones.Fields[0].AsString<>'' Then
         Renglones:=DMMain_FD.QOpciones.Fields[0].AsInteger
      else
        Renglones:=20;
      DMMain_FD.QOpciones.Close;
      // Abro el Query de Operadores
      DatosOrdenDeTrabajo.CDSOperarios.Open;
      DatosOrdenDeTrabajo.ActivoEventoMov:=False;
      DatosOrdenDeTrabajo.ActivoEventoDet:=False;
    end;
  // habilito o no el cambio de lista de precios
   gbLista.Enabled:=(DMMain_FD.ModificaListaPrecios);
  if DMMain_FD.UsuarioAdministrador then
    Tag:=0
  else
    Tag:=1;  

  Tabla:='OrdenTrabajoCab';
  Campo:='id_OT';
  //*************************************************************
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'OTrabajo.ini');
   Campo1                       := ArchivoIni.ReadString('Plantilla', 'campo1', '');
   Campo2                       := ArchivoIni.ReadString('Plantilla', 'campo2', '');
   Campo3                       := ArchivoIni.ReadString('Plantilla', 'campo3', '');
   Campo4                       := ArchivoIni.ReadString('Plantilla', 'campo4', '');
   ArtPorDef                    := ArchivoIni.ReadString('Facturacion','ArtPorDef','');
   CpbtePorDef                  := ArchivoIni.ReadString('Facturacion','CpbtePorDef','');
   pcModo.ActivePageIndex       := ArchivoIni.ReadInteger('Configuracion','Tipo',0);
   pcDetalles.ActivePageIndex   := ArchivoIni.ReadInteger('Configuracion','ActivePage',0);
   ModoStandard.Checked         := ArchivoIni.ReadBool('Modo','ModoStandar',True);
   ModoDatosAmpliados.Checked   := ArchivoIni.ReadBool('Modo','ModoAmpliado',False);
   ModoMatafuegos.Checked       := ArchivoIni.ReadBool('Modo','ModoMatafuego',False);

   AsignarArtPorDef(ArtPorDef);
   AsignarCpbtePorDef(CpbtePorDef);

   ArchivoIni.Free;
  //*************************************************************
   PagImpuestos.TabVisible := False;
   AutoEnviarCorreo        := False;

   CodigosSeries:=TStringList.Create;
   CodigosSeries.Clear;
   if ModoStandard.Checked  then
     pcModo.ActivePageIndex:=0
   else
     if ModoDatosAmpliados.Checked  then
       pcModo.ActivePageIndex:=1
     else
       if ModoMatafuegos.Checked  then
         pcModo.ActivePageIndex:=2

//  Modifica altura de Linea en Grid
//  DBGMov.DataSource.DataSet.DisableControls;
//  TStringGrid(DBgMov).DefaultRowHeight:=60;
//  DBGMov.DataSource.DataSet.EnableControls;
//  dtHoraDesde.OnChange:=CambiarHora;


end;


procedure TFormOrdenDeTrabajo.FormCanResize(Sender: TObject; var NewWidth,
  NewHeight: Integer; var Resize: Boolean);
begin
  inherited;
  Resize  :=  True;

end;

procedure TFormOrdenDeTrabajo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'OTrabajo.ini');
   ArchivoIni.WriteString('Plantilla', 'campo1', Campo1);
   ArchivoIni.WriteString('Plantilla', 'campo2', Campo2);
   ArchivoIni.WriteString('Plantilla', 'campo3', Campo3);
   ArchivoIni.WriteString('Plantilla', 'campo4', Campo4);

   ArchivoIni.WriteString('Facturacion','ArtPorDef',ceArtPorDef.Text);
   ArchivoIni.WriteString('Facturacion','CpbtePorDef',ceCpbtePorDef.Text);
   ArchivoIni.WriteInteger('Configuracion','Tipo',pcModo.ActivePageIndex);
   ArchivoIni.WriteInteger('Configuracion','ActivePage',pcDetalles.ActivePageIndex);
   ArchivoIni.WriteBool('Modo','ModoStandar',ModoStandard.Checked);
   ArchivoIni.WriteBool('Modo','ModoAmpliado',ModoDatosAmpliados.Checked);
   ArchivoIni.WriteBool('Modo','ModoMatafuego',ModoMatafuegos.Checked);


   ArchivoIni.Free;
  //*************************************************************

  inherited;
  if Archivada<>nil Then
    FreeAndNil(Archivada);
  if Penalizada<>nil Then
    FreeAndNil(Penalizada);

  with DatosOrdenDeTrabajo do
    begin
      CDSBuscadorProductos.Close;
     // CDSCategorias.Close;
     // CDSMarcas.Close;
      CDSModelos.Close;

      CDSProducto.ParamByName('id').Clear;
      CDSProducto.Close;


      CDSOperarios.Close;
      CDSOTrabajoCab.Close;
      CDSOTrabajoDet.Close;
      CDSOTrabajoMov.Close;
      CDSOTrabajoConsumible.Close;
      CDSImpuestos.Close;
      CDSEmpresa.Close;
      CDSListaPrecios.Close;
      CDSMotivos.Close;

    end;

  Action:=caFree;
end;

procedure TFormOrdenDeTrabajo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOrdenDeTrabajo:=nil;
end;

procedure TFormOrdenDeTrabajo.BuscarSerieExecute(Sender: TObject);
var i:byte;
begin
  if ((DSBase.DataSet.State IN [dsInsert,dsEdit])) then
    begin
      if (DatosOrdenDeTrabajo.CDSOTrabajoDetCON_NROSERIE.Value='S') Then
        begin
            begin
              DatosOrdenDeTrabajo.CDSBuscaNroSerie.Close;
              DatosOrdenDeTrabajo.CDSBuscaNroSerie.CommandText:='';
              DatosOrdenDeTrabajo.CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                                                'where  (ss.codigo_stk = :codigo  and ss.id_cpbte_egreso is null)  and ( ss.deposito = :deposito or  :deposito = -1 ) ';
              DMMain_FD.QOpciones.Close;
              DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
              DMMain_FD.QOpciones.Open;
              if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
                DatosOrdenDeTrabajo.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger := -1
              else
                DatosOrdenDeTrabajo.CDSBuscaNroSerie.Params.ParamByName('deposito').AsInteger := DatosVentas.CDSVentaDetDeposito.AsInteger;
              DMMain_FD.QOpciones.Close;
            end;
          comBuscadorSeries.Campo :='codigoserie';
          ComBuscadorSeries.Data  :=DatosVentas.CDSBuscaNroSerie;

          DatosOrdenDeTrabajo.CDSBuscaNroSerie.Params.ParamByName('codigo').AsString  :=DatosVentas.CDSVentaDetCodigoArticulo.AsString;
          DatosOrdenDeTrabajo.CDSBuscaNroSerie.Open;

          ComBuscadorSeries.Execute;
          if comBuscadorSeries.rOk Then
            DatosOrdenDeTrabajo.CDSOTrabajoSubDetSERIE.Value:=comBuscadorSeries.Id;
          DatosOrdenDeTrabajo.CDSBuscaNroSerie.Close;
        end
      else
        if (DatosVentas.CDSVentaDetCON_NRO_SERIE.Value='N') and (DatosVentas.CDSVentaDetCON_CODIGO_BARRA.Value='S') Then
          begin
            comBuscadorSeries.Campo:='codigobarra';
            ComBuscadorSeries.Data :=DatosVentas.CDSBuscaCodigoBarra;
            DatosVentas.CDSBuscaCodigoBarra.Close;
            DatosVentas.CDSBuscaCodigoBarra.Params.ParamByName('codigo').Value:= DatosVentas.CDSVentaDetCodigoArticulo.Value;
            DatosVentas.CDSBuscaCodigoBarra.Open;

//            wwBuscadorSerie.Selected.Clear;
//            for i:= 0 to DatosVentas.CDSBuscaCodigoBarra.FieldCount-1 do
//              begin
//                if i<0 then
//                  wwBuscadorSerie.Selected.Add(DatosVentas.CDSBuscaCodigoBarra.Fields[i].FieldName + #9 + IntToStr(DatosVentas.CDSBuscaCodigoBarra.Fields[i].DisplayWidth) + #9 +
//                    DatosVentas.CDSBuscaCodigoBarra.Fields[i].DisplayLabel);
//                if I>0 then
//                  DatosVentas.CDSBuscaCodigoBarra.Fields[i].Visible:=False;
//              end;

            comBuscadorSeries.Execute;
            if comBuscadorSeries.rOk Then
              DatosVentas.CDSVtaSubDetalleSERIESetText(DatosVentas.CDSVtaSubDetalleSERIE,comBuscadorSeries.Id);
            DatosVentas.CDSBuscaCodigoBarra.Close;
          end;
    end;


end;

procedure TFormOrdenDeTrabajo.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscaSucursal.Close;
  DatosOrdenDeTrabajo.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSALSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosOrdenDeTrabajo.CDSBuscaSucursal.Close;

end;

procedure TFormOrdenDeTrabajo.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRASUCURSAL.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTE.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRACOMPROBANTE.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabLETRAOT.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabSUCOT.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOT.Clear;
    end;

end;

procedure TFormOrdenDeTrabajo.RxCDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormOrdenDeTrabajo.RxCConVtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabCONDICIONVTA.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRACONDVENTA.Clear;
    end;
end;

Function TFormOrdenDeTrabajo.BuscarCpbteFactura: string;
begin
  try
    DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Clear;
    DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;

   // DatosOrdenDeTrabajo.CDSBuscaTipoFc.Close;

    DMMain_FD.QOpciones.Close;
    DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COMPUSER';
    DMMain_FD.QOpciones.Open;

   if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='N') then
      begin
        DMBuscadores.CDSBuscaComprob.Close;
        DMBuscadores.CDSBuscaComprob.CommandText:='';
        DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and compra_venta = ''V'' and '+
                                                 '(tipo_comprob = ''FC'' or tipo_comprob = ''FO'' ) and '+
                                                 '(( desgloza_iva = :desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by sucursal , tipo_comprob ';
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.Value;
        if FiltraCpbteCondIva='S' Then
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.Value
        else
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
        // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
        // lleno con un asterisco para que el Qry no de error
        if DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.AsString='' Then
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      end
    else
      begin
        DMBuscadores.CDSBuscaComprob.Close;
        DMBuscadores.CDSBuscaComprob.CommandText:='';
        DMBuscadores.CDSBuscaComprob.CommandText:='select cpbe.* from comprobantes_usuarios c '+
                              'left join comprobantes cpbe on cpbe.id_comprobante = c.id_comprobante '+
                              'where c.id_usuario = :usuario and sucursal = :suc and compra_venta = ''V'' and (( desgloza_iva = :desglozaiva ) or ( :desglozaiva = ''*'' ) ) and'+
                              '(tipo_comprob = ''FC'' or tipo_comprob = ''FO'' ) order by sucursal , tipo_comprob ';


        DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.Value;

        if FiltraCpbteCondIva='S' Then
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.Value
        else
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
        // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
        // lleno con un asterisco para que el Qry no de error
        if DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.AsString='' Then
          DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('usuario').Value     := DMMain_FD.UsuarioActivoId;
      end;
    if Not(Assigned(FormBuscaComprobantes)) then
      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
    FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
    FormBuscaComprobantes.ShowModal;
    DMMain_FD.QOpciones.Close;


    IF (FormBuscaComprobantes.ModalResult=mrOk) THEN
      Result  :=  IntToStr(FormBuscaComprobantes.Id_Comp)
    else
      Result  :=  '';
  except
    Result  :=  '';
  end;
end;


procedure TFormOrdenDeTrabajo.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscaVendedor.Close;
  DatosOrdenDeTrabajo.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    begin
      if (Sender as TJvDBComboEdit).Name='rxcResponsableOT' Then
        DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OTSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT,comBuscadorVendedor.Id)
       else
        if (Sender as TJvDBComboEdit).Name='rxcRespTurno' Then
          DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_TURNOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_TURNO,comBuscadorVendedor.Id);
    end;
  DatosOrdenDeTrabajo.CDSBuscaVendedor.Close;
end;

procedure TFormOrdenDeTrabajo.BuscaTipoFcExecute(Sender: TObject);
var IdCpbte: string;
begin
  inherited;
  IdCpbte :=  BuscarCpbteFactura;
  if IdCpbte<>'' then
      DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID_COMPROBANTE.Text   :=  IdCpbte
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');

end;

procedure TFormOrdenDeTrabajo.BuscarPorObsExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State=dsBrowse then
    begin
      IF NOT (Assigned(FormBuscadorPorObs)) THEN
        FormBuscadorPorObs := TFormBuscadorPorObs.Create(Application);
      FormBuscadorPorObs.TipoComp:='T';
      FormBuscadorPorObs.ShowModal;
      IF FormBuscadorPorObs.Id > 0 THEN
        BEGIN
          if FormBuscadorPorObs.Tipo='OT' then
            begin
              TipoCpbte:= FormBuscadorPorObs.Tipo;
              DatoNew  := IntToStr(FormBuscadorPorObs.id);
              Recuperar.Execute;
            end
        end;
    end;

end;

procedure TFormOrdenDeTrabajo.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='OT';
  FormBuscarPorNroReferenica.ShowModal;
  IF (FormBuscarPorNroReferenica.ModalResult=mrOK) then
    begin
      if (FormBuscarPorNroReferenica.Id > 0) THEN
        BEGIN
            TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
            DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
            Recuperar.Execute;
        END
      else
        Showmessage('No se encontró la O. de Trabajo');
    end;
end;

procedure TFormOrdenDeTrabajo.BuscarProductoExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscadorProductos.Close;
  if (Trim(RxCCodigo.Text)='') then
    DatosOrdenDeTrabajo.CDSBuscadorProductos.Params.ParamByName('codigo').AsString:='******'
  else
    DatosOrdenDeTrabajo.CDSBuscadorProductos.Params.ParamByName('codigo').AsString:=Trim(RxCCodigo.Text);

  DatosOrdenDeTrabajo.CDSBuscadorProductos.Open;
  comBuscadorProductos.Execute;
  if comBuscadorProductos.rOk Then
    DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTO,IntToStr(comBuscadorProductos.id));
 // DatosOrdenDeTrabajo.CDSBuscadorProductos.Close;

 {
  With DatosOrdenDeTrabajo do
    begin
      if not Assigned(FormBuscadorProductos) then
        FormBuscadorProductos :=  TFormBuscadorProductos.Create(Self);
      if not CDSOTrabajoCabCodigo.IsNull then
        FormBuscadorProductos.Cliente :=  CDSOTrabajoCabCODIGO.AsString;
      FormBuscadorProductos.ShowModal;
      if (FormBuscadorProductos.ModalResult = mrOk) then
        begin
          CDSOTrabajoCabPRODUCTO.Text   :=  IntToStr(FormBUscadorProductos.Producto);
        end;
      FormBuscadorProductos.Free;
    end;                            }
end;

procedure TFormOrdenDeTrabajo.RxCProductoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTO.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabDESCRIPCIONPRODUCTO.Clear;
    end;
end;

procedure TFormOrdenDeTrabajo.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscaComprob.Close;
  DatosOrdenDeTrabajo.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosOrdenDeTrabajo.CDSOTrabajoCabSucursal.Value;
  DatosOrdenDeTrabajo.CDSBuscaComprob.Open;
  DatosOrdenDeTrabajo.CDSBuscaComprob.Filtered:=False;

 if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DatosOrdenDeTrabajo.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTESetText(DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

end;

procedure TFormOrdenDeTrabajo.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTE.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRACOMPROBANTE.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabLETRAOT.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabSUCOT.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOT.Clear;
    end;
end;

procedure TFormOrdenDeTrabajo.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag        := 18;
  FormBuscaCpbte.TipoCpbte1 := 'OT';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion  := ' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte  := FormBuscaCpbte.TipoCpbte;
      DatoNew    := IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
 end;

procedure TFormOrdenDeTrabajo.BuscarFacturaExecute(Sender: TObject);
begin
  inherited;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FC' then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString;
      FormCpbte_2.TipoCpbte:=DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FO' then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString;
        FormCpbteCtdo_2.TipoCpbte:=DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end;

end;

procedure TFormOrdenDeTrabajo.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscaLdr.Close;
  DatosOrdenDeTrabajo.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Value;
  DatosOrdenDeTrabajo.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLdr.rOk Then
    DatosOrdenDeTrabajo.CDSOTrabajoCabLDRSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabLDR, IntToStr(comBuscadorLdr.Id));
  DatosOrdenDeTrabajo.CDSBuscaLdr.Close;
end;

procedure TFormOrdenDeTrabajo.RecuperarExecute(Sender: TObject);
var D,M,Y,hh,mm,ss,sss:word;
begin
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('TipoCpbte').Value:= TipoCpbte ;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoDet.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoConsumible.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoConsumible.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoConsumible.OPen;

  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterSource    := nil;
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterFields    := '';
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.IndexFieldNames := '';

  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterSource    := DatosOrdenDeTrabajo.DSOTrabajoDet;
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.IndexFieldNames := 'ID_DETOT';
  DatosOrdenDeTrabajo.CDSOTrabajoSubDet.MasterFields    := 'ID';


  DatosOrdenDeTrabajo.CDSOTrabajoMov.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Open;

//  if DatosOrdenDeTrabajo.CDSOTrabajoCab.State<>dsBrowse Then
//    DatosOrdenDeTrabajo.CDSOTrabajoCab.Post;

  DatosOrdenDeTrabajo.CDSImpuestos.Close;
  DatosOrdenDeTrabajo.CDSImpuestos.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSImpuestos.Open;

  DatosOrdenDeTrabajo.CDSPenalizaciones.Close;
  DatosOrdenDeTrabajo.CDSPenalizaciones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOrdenDeTrabajo.CDSPenalizaciones.OPen;


  DatosOrdenDeTrabajo.CDSProducto.Close;
  DatosOrdenDeTrabajo.CDSProducto.ParamByName('id').Value   :=   DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTO.AsInteger;
  DatosOrdenDeTrabajo.CDSProducto.Open;


  inherited;

  pnPrincipal.Enabled := True;
  pcDetalles.Enabled  := True;

  // si esta penalizada muestro un Cartel
  if Not(DatosOrdenDeTrabajo.CDSPenalizaciones.isEmpty) Then
    begin
       if Penalizada=nil Then
         Penalizada:=TPanel.Create(Self);
       Penalizada.Parent:=Self;
       Penalizada.Caption    := 'Penalizada';
       Penalizada.Top        := 80;
       Penalizada.Left       := 450;
       Penalizada.Height     := 30;
       Penalizada.Width      := 140;
       Penalizada.Font.Size  := 14;
       Penalizada.Font.Color := clRed;
       Penalizada.Font.Name  := 'Arial';
       Penalizada.Font.Style := [fsBold];
       Penalizada.Visible    := True;
       Penalizada.BringToFront;
    end
  else
    if Penalizada<>nil Then
      begin
        FreeAndNil(Penalizada);
      end;

  // Si fue archivada Muestro el cartel
  if DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.Value='S' Then
    begin
       if Archivada=nil Then
          Archivada:=TPanel.Create(Self);
       Archivada.Parent     := Self;
       Archivada.Caption    := 'ARCHIVADA';
       Archivada.Top        :=  Trunc(FormOrdenDeTrabajo.Height*0.5)-200;
       Archivada.Left       := Trunc(FormOrdenDeTrabajo.Width*0.5)-150;
       Archivada.Height     := 40;
       Archivada.Width      := 250;
       Archivada.Font.Size  := 30;
       Archivada.Font.Color := clRed;
       Archivada.Font.Name  := 'Arial';
       Archivada.Font.Style := [fsBold];
       Archivada.Visible    := True;
       Archivada.BringToFront;
    end
  else
    if Archivada<>nil Then
      begin
        FreeAndNil(Archivada);
      end;

 // pnCabecera.Enabled :=True;
  if (DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.Value='N') or (DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.AsString='') Then
    begin
      Modificar.Enabled := True; // si esta facturada
      Borrar.Enabled    := (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString='') or (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString='0');
      Facturar.Enabled  := (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString='') or (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString='0');
    end
  else
    begin
      Modificar.Enabled := False;
      Borrar.Enabled    := False;
      Facturar.Enabled  := False;
    end;

  ArchivarOdeTrabajo.Enabled :=(DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.Value='N') or (DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.AsString='');

  // esta variable la uso tambien en recibos ...
  // es para ssaber si se confirmo la factura o no..
  // aca la pongo para incializarla.
  DMMain_FD.Facturado:=Facturar.Enabled;
  //*******************************************
  if (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value>=0) and (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value<=3) Then
    NivelPrioridad.ForeColor:=clblack
  else
    if (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value>=4) and (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value<=6) Then
      NivelPrioridad.ForeColor:=clBlue
    else
      if (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value>=7) and (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value<=9) Then
        NivelPrioridad.ForeColor:=clGreen
      else
        if (DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value>=10) Then
          NivelPrioridad.ForeColor:=clRed;
//  NivelPrioridad.Position:=DatosOrdenDeTrabajo.wwCDSOTrabajoCabPRIORIDAD.Value;
  NivelPrioridad.Progress    := DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD.Value;
  edDeltaPrioridad.Value     := DatosOrdenDeTrabajo.CDSOTrabajoCabDELTA_PRIORIDAD.Value;
  edPrioridadInicial.Value   := DatosOrdenDeTrabajo.CDSOTrabajoCabPRIORIDAD_INICIAL.Value;
  ArchivarOdeTrabajo.Enabled := Tag=0;
  DatoNew                    := ''+DatoNew+'';
  EstuvoAsignado             := False;
  DMMain_FD.Facturado        := False;
  rxcResponsableOT.Enabled   := DMMain_FD.ModificaAsignadoOT;
  FormOrdenDeTrabajo.Caption :='Orden de Trabajo -- '+DatosOrdenDeTrabajo.CDSOTrabajoCabFECHA_HORA.AsString+'//'+Copy(DatosOrdenDeTrabajo.CDSOTrabajoCabUSUARIO.Value,1,15);

  DecodeDate(DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAESTIMADA.AsDateTime,Y,M,D);
  DecodeTime(DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAESTIMADA.AsDateTime,hh,mm,ss,sss);
 // Fecha.Date    := EncodeDate(y,m,d);

  HoraDesde.Time:= EncodeTime(hh,mm,ss,sss);

  DecodeTime(DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAESTIMADAFIN.AsDateTime,hh,mm,ss,sss);
  HoraHasta.Time:= EncodeTime(hh,mm,ss,sss);

  edTotal.Value:=DatosOrdenDeTrabajo.SumarConsumibles;
  HacerAjusteStcok.Enabled:= VarIsNull(DSBase.DataSet.FieldByName('ID_Ajuste_Stock').Value) or (DSBase.DataSet.FieldByName('ID_Ajuste_Stock').AsInteger<=0);
  sbEstado.Panels[1].Text:= DSBase.DataSet.FieldByName('MUESTRANROAJUSTE').AsString;
  {  if Tag=0 Then
    begin
      ArchivarOdeTrabajo.Enabled:=True;
      rxcResponsableOT.Enabled  :=True;
      wwDBFechaProbable.Enabled :=True;
      edDeltaPrioridad.Enabled  :=True;
      edPrioridad.Enabled       :=True;
    end
  else
    if Tag<>0 Then
      begin
        ArchivarOdeTrabajo.Enabled:=False;
        rxcResponsableOT.Enabled  :=False;
        wwDBFechaProbable.Enabled :=False;
        edDeltaPrioridad.Enabled  :=False;
        edPrioridad.Enabled       :=False;
      end;}
end;

// Procedmientoe de pasar RichEdit A Texto Plano
procedure TFormOrdenDeTrabajo.RtfToTextoExecute(Sender: TObject);
var
    l:TStringList;
    s:WideString;
    RE:TRichEdit;
    ss:TStringStream;
begin
    ss := TStringStream.Create;
    s  := DatosOrdenDeTrabajo.CDSOTrabajoMOVDetalle.Value; // Input String
    RE := TRichEdit.CreateParented(HWND_MESSAGE);
    l  := TStringList.Create;
    l.Add(s);
    ss.Position := 0;
    l.SaveToStream(ss);
    ss.Position := 0;
    RE.Lines.LoadFromStream(ss);
    DatosOrdenDeTrabajo.CDSOTrabajoMOV.Edit;
    DatosOrdenDeTrabajo.CDSOTrabajoMOVDetalle.Value:=RE.Text;
    DatosOrdenDeTrabajo.CDSOTrabajoMOV.Post;
    DatosOrdenDeTrabajo.CDSOTrabajoMOV.ApplyUpdates(0);
    Recuperar.Execute;
//    Memo2.Text := RE.Text; // Output String
end;


procedure TFormOrdenDeTrabajo.ConfirmaExecute(Sender: TObject);
var i:integer;
D,M,Y,hh,mm,ss,sss:word;
begin
  DecodeDate(edFechaEstimada.Date,Y,M,D);
  DecodeTime(HoraDesde.Time,hh,mm,ss,sss);

  with DatosOrdenDeTrabajo do
    begin
      CDSOTrabajoCabFECHAESTIMADA.AsDateTime:=EncodeDate(y,m,d)+EncodeTime(hh,mm,ss,sss);
      CDSOTrabajoCabFECHAESTIMADA.AsDateTime:=EncodeDate(y,m,d)+EncodeTime(hh,mm,ss,sss);


      DecodeDate(edFechaEstimada.Date,Y,M,D);
      DecodeTime(HoraHasta.Time,hh,mm,ss,sss);

      CDSOTrabajoCabFECHAESTIMADAFIN.AsDateTime:=EncodeDate(y,m,d)+EncodeTime(hh,mm,ss,sss);

      if DSBase.DataSet.State=dsInsert then
        CDSOTrabajoCabFECHAESTIMADAFIN.AsDateTime:=EncodeDate(y,m,d)+EncodeTime(hh,30,ss,sss)
      else
        CDSOTrabajoCabFECHAESTIMADAFIN.AsDateTime:=EncodeDate(y,m,d)+EncodeTime(hh,mm,ss,sss);

//      if CDSProducto.State <>dsBrowse then
//        CDSProducto.Post;
      if CDSOTrabajoDet.State<>dsBrowse Then
        CDSOTrabajoDet.Post;
      if CDSOTrabajoMov.State<>dsBrowse Then
        CDSOTrabajoMov.Post;
      if CDSPenalizaciones.State<>dsBrowse Then
        CDSPenalizaciones.Post;
      if CDSOTrabajoCab.state=dsBrowse Then
        CDSOTrabajoCab.Edit;
      CDSOTrabajoCabDELTA_PRIORIDAD.Value  :=StrToInt(edDeltaPrioridad.text);
      CDSOTrabajoCabPRIORIDAD_INICIAL.Value:=StrToInt(edPrioridadInicial.text);
      if (CDSOTrabajoMov.RecordCount>0) and
         (CDSOTrabajoCabESTADO.Value=0) Then
        CDSOTrabajoCabESTADO.Value:=1;
      if (CDSOTrabajoCabIDENTIFICADORPRODUCTO.AsString='') then
        CDSOTrabajoCabIDENTIFICADORPRODUCTO.AsString:='-';
      if (CDSOTrabajoCabDESCRIPCIONPRODUCTO.AsString='') then
        CDSOTrabajoCabDESCRIPCIONPRODUCTO.AsString:='-';

      if (CDSOTrabajoCabESTADO.Value>=7) and
         (CDSOTrabajoCabFECHAFINAL.AsString='') then
         CDSOTrabajoCabFECHAFINAL.AsDateTime:=Date
      else
         CDSOTrabajoCabFECHAFINAL.Clear;



    //  Verifica Campos Requeriddos
    //  for i:= 0 to DatosOrdenDeTrabajo.CDSOTrabajoCab.FieldCount - 1 do
    //    begin
    //      if DatosOrdenDeTrabajo.CDSOTrabajoCab.Fields[i].Required then
    //        ShowMessage(DatosOrdenDeTrabajo.CDSOTrabajoCab.Fields[i].FieldName+'-'+DatosOrdenDeTrabajo.CDSOTrabajoCab.Fields[i].AsString);
    //    end;

      if CDSOTrabajoCab.state<>dsBrowse Then
        CDSOTrabajoCab.post;
      DatoNew   :=IntToStr(CDSOTrabajoCabID_OT.Value);
      TipoCpbte :=CDSOTrabajoCabTIPOCPBTE.Value;
    end;


  inherited;

  Recuperar.Execute;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabESTADO.Value=8 then
    begin

    end;



  // **** Ingreso en el Log File  **************
  if (CpbteNuevo='N') and (Not(DatosOrdenDeTrabajo.CDSOTrabajoCab.IsEmpty)) and
     (Not(CompareValue(ImporteOriginal,DatosOrdenDeTrabajo.CDSOTrabajoCabTOTAL.AsFloat,0.02)=EqualsValue))  then // por que viene de una modificacion
    DMMain_FD.LogFileFD(1,2,'Modificación O.de Trabajo: '+ DatosOrdenDeTrabajo.CDSOTrabajoCabNROCPBTE.Value+' Cliente: '+
                     DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.Value+' Importe Nuevo: '+FormatFloat('0.00',DatosOrdenDeTrabajo.CDSOTrabajoCabTOTAL.AsFloat)+
                    ' Importe Anterior :'+ FormatFloat('0.00',ImporteOriginal),'OTRABAJO');
  // ******************************************

end;

procedure TFormOrdenDeTrabajo.dbgConsumiblesColEnter(Sender: TObject);
begin
  inherited;
  IF dbgConsumibles.SelectedIndex = 5 THEN
    dbgConsumibles.SelectedIndex := 4;
end;

procedure TFormOrdenDeTrabajo.dbgConsumiblesDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:= dbgConsumibles.DataSource.DataSet.FieldByName('CODIGO').Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
  FormStock_2.BringToFront;
end;

procedure TFormOrdenDeTrabajo.dbgConsumiblesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (dbgConsumibles.SelectedIndex = 1) THEN
        dbgConsumibles.SelectedIndex := 0
      else
        if (dbgConsumibles.SelectedIndex = 4) THEN
          dbgConsumibles.SelectedIndex := 1
        else
          if (dbgConsumibles.SelectedIndex = 5) THEN
            dbgConsumibles.SelectedIndex := 4
          else
            if (dbgConsumibles.SelectedIndex = 6) THEN
              dbgConsumibles.SelectedIndex := 5;
      key := 0;
    END;

end;

procedure TFormOrdenDeTrabajo.dbgConsumiblesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgConsumibles.SelectedIndex < 3) THEN
        dbgConsumibles.SelectedIndex := dbgConsumibles.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgConsumibles.DataSource.DataSet.Eof THEN
            dbgConsumibles.DataSource.DataSet.Append;
          dbgConsumibles.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF dbgConsumibles.SelectedField = DatosOrdenDeTrabajo.CDSOTrabajoConsumibleCODIGO THEN
           BuscarConsumible.Execute;
      END
    else
      if (key = #27) then
        dbgConsumibles.DataSource.DataSet.Cancel;

end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 7 THEN
    DBGrillaDetalle.SelectedIndex := 6;
  IF (DBGrillaDetalle.SelectedIndex = 5) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      IF (DatosOrdenDeTrabajo.CDSOTrabajoDet.State IN [dsEdit, dsInsert]) AND
        (DatosOrdenDeTrabajo.CDSOTrabajoDetModo_Gravamen.Value = 'M') THEN
        BEGIN
          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado := DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Gravado.AsFloat;
          FormComposicionPrecio.ValorExento  := DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Exento.AsFloat;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Exento.AsFloat  := FormComposicionPrecio.ValorExento;
          DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Gravado.AsFloat := FormComposicionPrecio.ValorGravado;
          DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_TotalSetText(DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Total, DatosOrdenDeTrabajo.CDSOTrabajoDetUnitario_Total.AsString);
        END;
    END;

end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:=' F-11: Lista los movimientos del artículo elegido';
end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 5) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 6) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;

  IF (Key = VK_F11) and (DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO.AsString<>'')  THEN
    BEGIN
      IF NOT (Assigned(FormArticulosVendidos)) THEN
        BEGIN
          FormArticulosVendidos := TFormArticulosVendidos.Create(Application);
          FormArticulosVendidos.CodigoCliente  := DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Value;
          FormArticulosVendidos.CodigoArticulo := DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO.Value;
          FormArticulosVendidos.ShowModal;
        END;
    END;

end;

procedure TFormOrdenDeTrabajo.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 5) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGrillaDetalle.SelectedField = DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormOrdenDeTrabajo.dbmDetalleDblClick(Sender: TObject);
begin
  inherited;
//  if dbmDetalle.Height<50 Then  dbmDetalle.Height:=308
//  else
//  dbmDetalle.Height:=46;
end;

procedure TFormOrdenDeTrabajo.dbmDetalleExit(Sender: TObject);
begin
  inherited;
//  dbmDetalle.Height:=46;
end;

procedure TFormOrdenDeTrabajo.BuscadorXIdentifExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorXidentific)) THEN
    FormBuscadorXidentific:=TFormBuscadorXidentific.Create(Self);
  FormBuscadorXidentific.ShowModal;
   IF FormBuscadorXidentific.Id_Rec > 0 THEN
    BEGIN
      TipoCpbte := 'OT';
      DatoNew   := IntToStr(FormBuscadorXidentific.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormOrdenDeTrabajo.BuscarMatafuegoExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorMatafuego.Data.Close;
  ComBuscadorMatafuego.Data.Open;
  ComBuscadorMatafuego.Execute;
  if ComBuscadorMatafuego.rOk then
    begin
      DatosOrdenDeTrabajo.QMatafuego.Close;
      DatosOrdenDeTrabajo.QMatafuego.ParamByName('id').Value:=ComBuscadorMatafuego.Id;
      DatosOrdenDeTrabajo.QMatafuego.Open;
      if Not(DatosOrdenDeTrabajo.QMatafuego.IsEmpty) then
        begin
          if (DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.State=dsBrowse) and (DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.IsEmpty) then
            DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Insert
          else
            DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Edit;

          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosID_MATAFUEGO.Value          :=DatosOrdenDeTrabajo.QMatafuegoID.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosNUMERO_MATAFUEGO.Value      :=DatosOrdenDeTrabajo.QMatafuegoNUMERO_MATAFUEGO.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosAGENTE.Value                :=DatosOrdenDeTrabajo.QMatafuegoAGENTE.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosCAPACIDAD.Value             :=DatosOrdenDeTrabajo.QMatafuegoCAPACIDAD.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosMARCA.Value                 :=DatosOrdenDeTrabajo.QMatafuegoMARCA.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosFECHA_FABICACION.AsDateTime :=DatosOrdenDeTrabajo.QMatafuegoFECHA_FABICACION.AsDateTime;

        end;
    end;
  ComBuscadorMatafuego.Data.Close;
  DatosOrdenDeTrabajo.QMatafuego.Close;
end;

procedure TFormOrdenDeTrabajo.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Param3:=3;
  FormBuscadorArticulos.ListaPrecio:= DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;
  FormBuscadorArticulos.Esquema    := -1;
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    BEGIN
      IF DatosOrdenDeTrabajo.CDSOTrabajoDet.State = dsBrowse THEN
        DatosOrdenDeTrabajo.CDSOTrabajoDet.Edit;
      DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULOSetText(DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO, FormBuscadorArticulos.Codigo);
    END;
end;

function TFormOrdenDeTrabajo.AsignarCpbtePorDef(Dato: string): boolean;
var
  ID: integer;
begin
  with DatosOrdenDeTrabajo do
    begin
      if TryStrToInt(Dato,ID) then
        begin
          QComprob.Close;
          QComprob.ParamByName('id').Value  := ID;
          QComprob.Open;
          if not QComprob.IsEmpty then
            begin
              CpbtePorDef         :=  QComprobID_COMPROBANTE.AsInteger;
              ceCpbtePorDef.Text  :=  QComprobID_COMPROBANTE.AsString;
              edCpbtePorDef.Text  :=  QComprobDENOMINACION.AsString;
            end;
          QComprob.Close;
        end;
    end;
end;

function TFormOrdenDeTrabajo.AsignarArtPorDef(Dato: string): boolean;
begin
  with DatosOrdenDeTrabajo do
    begin
      CDSStock.Close;
      CDSStock.ParamByName('codigo').Value  := Dato;
      CDSStock.Open;
      if not CDSStock.IsEmpty then
        begin
          ceArtPorDef.Text  :=  CDSStockCODIGO_STK.AsString;
          edArtPorDef.Text  :=  CDSStockDETALLE_STK.AsString;
        end;
      CDSStock.Close;
    end;
end;

procedure TFormOrdenDeTrabajo.BuscarArticuloPorDefExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio:=DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;
  FormBuscadorArticulos.Esquema     := -1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    AsignarArtPorDef(FormBuscadorArticulos.Codigo);

end;


procedure TFormOrdenDeTrabajo.AgregarDetallePorDef;
begin
  if ceArtPorDef.Text <> '' then
    begin
      with DatosOrdenDeTrabajo do
        begin
          CDSOTrabajoDet.Append;
          CDSOTrabajoDetCODIGOARTICULO.Text   :=  ceArtPorDef.Text;
          CDSOTrabajoDetCANTIDAD.Text         :=  '1';
          CDSOTrabajoDet.Post;
        end;
    end;

end;

procedure TFormOrdenDeTrabajo.AgregarExecute(Sender: TObject);
begin
  EstuvoAsignado:=False;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoDet.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoMov.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Open;

  DatosOrdenDeTrabajo.CDSImpuestos.Close;
  DatosOrdenDeTrabajo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSImpuestos.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Open;

  pnCabecera.Enabled:=True;

  inherited;

  //DatosOrdenDeTrabajo.CDSProducto.Append;
 // DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTO.AsInteger  := DatosOrdenDeTrabajo.CDSProductoID.AsInteger


  AgregarDetallePorDef;

  if Penalizada<>nil Then
    FreeAndNil(Penalizada);
  if Archivada<>nil Then
    FreeAndNil(Archivada);
  pnPrincipal.Enabled        := True;
  pcDetalles.ActivePageIndex := 0;
  edDeltaPrioridad.Value     := 1;
  edPrioridadInicial.Value   := 1;
  CpbteNuevo                 :='S';
  HoraDesde.Time:=EncodeTime(8,0,0,0);
  HoraHasta.Time:=EncodeTime(8,30,0,0);
  CodigosSeries.Clear;


end;

procedure TFormOrdenDeTrabajo.AgregarMatafuegoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormMatafuego)) then
    FormMatafuego:=TFormMatafuego.Create(Self);

  FormMatafuego.id        :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosID_MATAFUEGO.Value;
  FormMatafuego.Agente    :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosAGENTE.Value;
  FormMatafuego.Numero    :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosNUMERO_MATAFUEGO.Value;
  FormMatafuego.Marca     :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosMARCA.Value;
  FormMatafuego.Capacidad :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosCAPACIDAD.Value;
  FormMatafuego.FechaFab  :=DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosFECHA_FABICACION.AsDateTime;
  FormMatafuego.ShowModal;

  if FormMatafuego.ModalResult=mrOk then
    begin
      DatosOrdenDeTrabajo.QMatafuego.Close;
      DatosOrdenDeTrabajo.QMatafuego.ParamByName('id').Value:=FormMatafuego.Id;
      DatosOrdenDeTrabajo.QMatafuego.Open;
      if Not(DatosOrdenDeTrabajo.QMatafuego.IsEmpty) then
        begin
          if (DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.State=dsBrowse) and (DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.IsEmpty) then
            DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Insert
          else
            DatosOrdenDeTrabajo.CDSOTrabajoMatafuegos.Edit;

          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosID_MATAFUEGO.Value          :=DatosOrdenDeTrabajo.QMatafuegoID.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosNUMERO_MATAFUEGO.Value      :=DatosOrdenDeTrabajo.QMatafuegoNUMERO_MATAFUEGO.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosAGENTE.Value                :=DatosOrdenDeTrabajo.QMatafuegoAGENTE.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosCAPACIDAD.Value             :=DatosOrdenDeTrabajo.QMatafuegoCAPACIDAD.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosMARCA.Value                 :=DatosOrdenDeTrabajo.QMatafuegoMARCA.Value;
          DatosOrdenDeTrabajo.CDSOTrabajoMatafuegosFECHA_FABICACION.AsDateTime :=DatosOrdenDeTrabajo.QMatafuegoFECHA_FABICACION.AsDateTime;
        end;
    end;
end;

procedure TFormOrdenDeTrabajo.FormShow(Sender: TObject);
begin
  if TForm(Self.Owner).Name='FormPizarronOT' then
    AnimateWindow(Handle,380,AW_ACTIVATE or AW_CENTER );

  inherited;

  if Agregar.Enabled Then
    btNuevo.SetFocus;
end;

procedure TFormOrdenDeTrabajo.FacturarExecute(Sender: TObject);
begin
  inherited;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.AsString<>'' THEN
    if (DatosOrdenDeTrabajo.CDSOTrabajoCabTOTAL.AsFloat>0) Then
      if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString<>'' Then
        if Not(DatosOrdenDeTrabajo.CDSOTrabajoCab.IsEmpty) Then
          begin
//            if Not(Assigned(FormBuscadorTipoCpbte)) then
//              FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
//            FormBuscadorTipoCpbte.TipoCpbte2    := '';
//            FormBuscadorTipoCpbte.TipoCpbte3    := '';
//            FormBuscadorTipoCpbte.CV            := 'V';
//            FormBuscadorTipoCpbte.Sucursal      := DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.Value;
//            FormBuscadorTipoCpbte.DiscriminaIVA := DatosOrdenDeTrabajo.CDSOTrabajoCabDESGLOZAIVA.AsString;
//            FormBuscadorTipoCpbte.ShowModal;
//            SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
//            IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
             if (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FC') Then
              begin  //Si es de Cta.Cte
                 if Not(Assigned(FormCpbte_2)) Then
                  FormCpbte_2:=TFormCpbte_2.Create(Application);
                HacerFactura.Execute;
                if Not(CpbteCancelado) then
                  begin
                    FormCpbte_2.Show;
                    FormCpbte_2.DBGrillaDetalle.SetFocus;
                  end;
              end
            else
              begin  // Si es de Contado
                if Not(Assigned(FormCpbteCtdo_2)) Then
                  FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
                HacerFactura.Execute;
                if Not(CpbteCancelado) then
                  begin
                    FormCpbteCtdo_2.Show;
                    FormCpbteCtdo_2.DBGrillaDetalle.SetFocus;
                  end;
              end;
          end
        else
          ShowMessage('No hay Comprobante para Facturar....')
      else
        ShowMessage('No hay Comprobante de Factura seleccionado....')
    else
      ShowMessage('No Hay artículos o servicios para Facturar....')
  ELSE
    ShowMessage('No hay Cliente para Facturar....');
end;

procedure TFormOrdenDeTrabajo.HacerAjusteStcokExecute(Sender: TObject);
var id_Ajuste:Integer;
QAux:TFDQuery;
begin
  inherited;
   if not(DSBase.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
       FormBuscadorTipoCpbte.TipoCpbte1   := 'AS';
       FormBuscadorTipoCpbte.TipoCpbte2   := '';
       FormBuscadorTipoCpbte.TipoCpbte3   := '';
       FormBuscadorTipoCpbte.CV           := 'V';
       FormBuscadorTipoCpbte.Sucursal     := DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.Value;
       FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
       FormBuscadorTipoCpbte.ShowModal;
       SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
       IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
           FormBuscadorDepositos.Deposito:=  DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.Value;
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               Deposito    := FormBuscadorDepositos.Deposito;
               DatoNew     := IntToStr(DatosOrdenDeTrabajo.CDSOTrabajoCabID_OT.Value);
               TipoCpbte   := DatosOrdenDeTrabajo.CDSOTrabajoCabTIPOCPBTE.Value;


               if (Assigned(FormAjustesStock)) then
                   FreeAndNil(FormAjustesStock);
               if Not(Assigned(FormAjustesStock)) then
                 FormAjustesStock:=TFormAjustesStock.Create(Self);
                FormAjustesStock.Show;
                FormAjustesStock.Agregar.Execute;
                FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(Deposito));
                FormAjustesStock.CDSAjusteCabOBS.Value:='Por Consumos de O.Trabajo.Nro.'+DSBase.DataSet.FieldbyName('NROCPBTE').AsString+
                                                        '- Realizado por Usuario:'+DMMain_FD.UsuarioActivo;
                DatosOrdenDeTrabajo.CDSOTrabajoConsumible.First;
                while Not(DatosOrdenDeTrabajo.CDSOTrabajoConsumible.Eof) do
                  begin
                    if DatosOrdenDeTrabajo.CDSOTrabajoConsumibleAFECTA_STOCK.Value='S' then
                      begin
                        FormAjustesStock.CDSAjusteDet.Append;
                        FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,DatosOrdenDeTrabajo.CDSOTrabajoConsumibleCODIGO.AsString);
                        FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,DatosOrdenDeTrabajo.CDSOTrabajoConsumibleCANT_CONSUMIDA.AsString);
                        FormAjustesStock.CDSAjusteDet.Post;
                      end;
                    DatosOrdenDeTrabajo.CDSOTrabajoConsumible.Next;
                  end;
                Id_Ajuste := FormAjustesStock.CDSAjusteCabID_RTO.Value;
                FormAjustesStock.Confirma.Execute;
                QAux:=TFDQuery.Create(self);
                QAux.Connection:=DMMain_FD.fdcGestion;
                QAux.SQL.Text  :='update ordentrabajocab o set o.id_ajuste_stock = '+IntToStr(id_Ajuste)+' where o.id_ot = '+IntToStr( DSBase.DataSet.FieldByName('ID_OT').AsInteger);
                QAux.ExecSQL;
                QAux.Close;
                FreeAndNil(QAux);
                FormAjustesStock.Salir.Execute;
             end;
         end;
     end;

end;

procedure TFormOrdenDeTrabajo.HacerFacturaExecute(Sender: TObject);
begin
  inherited;
  CpbteCancelado:=False;
  // si es de cta cte.
  with DatosOrdenDeTrabajo do
    begin
      if not(DSBase.DataSet.IsEmpty) then
        begin
//          if (CDSOTrabajoCabFACTURA_ID_COMPROBANTE.IsNull) or (CDSOTrabajoCabFACTURA_ID_COMPROBANTE.AsInteger = -1) then
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
               FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
              FormBuscadorTipoCpbte.TipoCpbte1   := CDSOTrabajoCabFACTURA_TIPO.Value;//  'FC';
              FormBuscadorTipoCpbte.TipoCpbte2   := '';
              FormBuscadorTipoCpbte.TipoCpbte3   := '';
              FormBuscadorTipoCpbte.CV           := 'V';
              FormBuscadorTipoCpbte.Sucursal     := CDSOTrabajoCabSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA:= CDSOTrabajoCabDESGLOZAIVA.Value;
              FormBuscadorTipoCpbte.ShowModal;
              if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                begin
                  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
                end
              else
                CpbteCancelado  :=  True;
//            end
//          else
//            begin
//              QComprob.Close;
//              QComprob.ParamByName('id').Value  := CDSOTrabajoCabFACTURA_ID_COMPROBANTE.AsInteger;
//              QComprob.Open;
//              SucursalComprobante    := QComprobSUCURSAL.AsInteger;
//              IDComprobante          := QComprobID_COMPROBANTE.AsInteger;
//              QComprob.Close;
            end;

          if {((CDSOTrabajoCabDEPOSITO.IsNull) or (CDSOTrabajoCabDEPOSITO.AsInteger=-1)) and} (not CpbteCancelado) then
            begin
              if Not(Assigned(FormBuscadorDepositos)) then
               FormBuscadorDepositos := TFormBuscadorDepositos.Create(Self);
              FormBuscadorDepositos.Deposito:=  CDSOTrabajoCabDEPOSITO.Value;
              FormBuscadorDepositos.ShowModal;
              if (FormBuscadorDepositos.ModalResult=mrok) Then
                Deposito    := FormBuscadorDepositos.Deposito
              else
                CpbteCancelado  :=  True;
            end
          else
            begin
              if not CpbteCancelado then
                Deposito    :=  CDSOTrabajoCabDEPOSITO.AsInteger;
            end;

          if not CpbteCancelado then
             begin
               DatoNew     := IntToStr(CDSOTrabajoCabID_OT.Value);
               TipoCpbte   := CDSOTrabajoCabTIPOCPBTE.Value;

               if CDSOTrabajoCabFACTURA_TIPO.Value='FC' Then
                 FormCpbte_2.Agregar.Execute
               else // si es de contado
                 FormCpbteCtdo_2.Agregar.Execute;
               AgregaCabecera;
               DatosOrdenDeTrabajo.CDSOTrabajoDet.First;
               while Not(CDSOTrabajoDet.Eof) Do // Ingreso el detalle
                 begin
                   AgregaDetalle;
                   CDSOTrabajoDet.Next;
                 end;
             end;
         end;
    end;
end;


procedure TFormOrdenDeTrabajo.AgregaCabecera;
begin
  if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FC' Then
    with DatosVentas DO //cta.cte
      begin
        CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante){ DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.AsString});
        CDSVentaCabCodigoSetText(CDSVentaCabCodigo,DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.AsString);
        CDSVentaCabLDRSetText(CDSVentaCabLDR,DatosOrdenDeTrabajo.CDSOTrabajoCabLDR.AsString);

        CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante){ DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID_COMPROBANTE.AsString});

        CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,DatosOrdenDeTrabajo.CDSOTrabajoCabCONDICIONVTA.AsString);
        if DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT.AsString<>'' Then
          CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR, DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT.AsString);
        CDSVentaCabNRORTO.Value      :='O.T :'+DatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOT.Value;
        CDSVentaCabANULADO.Value     :='N';
        CDSVentaCabIMPRESO.Value     :='N';
        CDSVentaCabCPTE_MANUAL.Value :='N';

//        if DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.AsString<>'' Then
//          CDSVentaCabDepositoSetText(CDSVentaCabDeposito,DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.AsString)
//        else
//          CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(FormOrdenDeTrabajo.DepositoPorDefecto));

        CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));

        CDSVentaCabREDUCIDA.Value    :='N';
        CDSVentaCabZONA.Value        :=DatosOrdenDeTrabajo.CDSOTrabajoCabZONA.Value;
        CDSVentaCabIDREMITO.Value    :=DatosOrdenDeTrabajo.CDSOTrabajoCabID_OT.Value;
        CDSVentaCabTIPO_REMITO.Value :=DatosOrdenDeTrabajo.CDSOTrabajoCabTIPOCPBTE.Value;
        // reasigno los valores siguientes por si se cambian en la orden de trabajo
        CDSVentaCabNOMBRE.Value     :=DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.Value;
        CDSVentaCabRAZONSOCIAL.Value:=DatosOrdenDeTrabajo.CDSOTrabajoCabRAZONSOCIAL.Value;
        CDSVentaCabDIRECCION.Value  :=DatosOrdenDeTrabajo.CDSOTrabajoCabDIRECCION.Value;
        CDSVentaCabCPOSTAL.Value    :=DatosOrdenDeTrabajo.CDSOTrabajoCabCPOSTAL.Value;
        CDSVentaCabLOCALIDAD.Value  :=DatosOrdenDeTrabajo.CDSOTrabajoCabLOCALIDAD.Value;
        CDSVentaCabLISTAPRECIO.Value:=DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;
        FormCpbte_2.DiscriminaIva:='S';
     end;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FO' Then
    with DatosVentasCtdo DO //contado
      begin
        CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante){ DatosOrdenDeTrabajo.CDSOTrabajoCabSUCURSAL.AsString});
        CDSVentaCabCodigoSetText(CDSVentaCabCodigo,DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.AsString);
        CDSVentaCabLDRSetText(CDSVentaCabLDR,DatosOrdenDeTrabajo.CDSOTrabajoCabLDR.AsString);

      //  CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID_COMPROBANTE.AsString);

        CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

        if DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT.AsString<>'' Then
          CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR, DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT.AsString);

        CDSVentaCabNRORTO.Value      :='Or.T :'+DatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOT.Value;
        CDSVentaCabANULADO.Value     :='N';
        CDSVentaCabIMPRESO.Value     :='N';
        CDSVentaCabCPTE_MANUAL.Value :='N';

//        if DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.AsString<>'' Then
//          CDSVentaCabDepositoSetText(CDSVentaCabDeposito,DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO.AsString)
//        else
//          CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(FormOrdenDeTrabajo.DepositoPorDefecto));

        CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));

        CDSVentaCabREDUCIDA.Value    :='N';
        CDSVentaCabZONA.Value        :=DatosOrdenDeTrabajo.CDSOTrabajoCabZONA.Value;
        CDSVentaCabIDREMITO.Value    :=DatosOrdenDeTrabajo.CDSOTrabajoCabID_OT.Value;
        CDSVentaCabTIPO_REMITO.Value :=DatosOrdenDeTrabajo.CDSOTrabajoCabTIPOCPBTE.Value;
        // reasigno los valores siguientes por si se cambian en la orden de trabajo
        CDSVentaCabNOMBRE.Value     :=DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.Value;
        CDSVentaCabRAZONSOCIAL.Value:=DatosOrdenDeTrabajo.CDSOTrabajoCabRAZONSOCIAL.Value;
        CDSVentaCabDIRECCION.Value  :=DatosOrdenDeTrabajo.CDSOTrabajoCabDIRECCION.Value;
        CDSVentaCabCPOSTAL.Value    :=DatosOrdenDeTrabajo.CDSOTrabajoCabCPOSTAL.Value;
        CDSVentaCabLOCALIDAD.Value  :=DatosOrdenDeTrabajo.CDSOTrabajoCabLOCALIDAD.Value;
        CDSVentaCabLISTAPRECIO.Value:=DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;

        FormCpbteCtdo_2.DiscriminaIva:='S';
     end;

end;


procedure TFormOrdenDeTrabajo.AgregaDetalle;
begin
  inherited;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FC' Then
    with DatosVentas DO
      begin
        CDSVentaDet.Append;
        CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO.AsString);
        CDSVentaDetDetalle.Value           :=DatosOrdenDeTrabajo.CDSOTrabajoDetDETALLE.Value;
        CDSVentaDetIVA_UNITARIO.Value      :=DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat*CDSVentaDetIVA_TASA.AsFloat*0.01;
        CDSVentaDetUnitario_Gravado.AsFloat:=DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
        CDSVentaDetUnitario_Exento.AsFloat :=DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
        CDSVentaDetUnitario_Total.AsFloat  :=DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_TOTAL.AsFloat;

        CDSVentaDetCosto_Gravado.AsFloat   :=DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_GRAVADO.AsFloat;
        CDSVentaDetCosto_Exento.AsFloat    :=DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_EXENTO.AsFloat;
        CDSVentaDetCosto_Total.AsFloat     :=DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_TOTAL.AsFloat;
        CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosOrdenDeTrabajo.CDSOTrabajoDetCANTIDAD.AsString);
        if CDSVentaDetCON_NRO_SERIE.Value='S' then
          begin
            CDSVtaSubDetalle.Insert;
            CDSVtaSubDetalleSERIESetText(CDSVtaSubDetalleSERIE,DatosOrdenDeTrabajo.CDSOTrabajoSubDetSERIE.Value);
          end;
        if CDSVtaSubDetalle.State<>dsBrowse then
          CDSVtaSubDetalle.Post;
        CDSVentaDet.Post;
      end;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.AsString='FO' Then
    with DatosVentasCtdo DO
      begin
        CDSVentaDet.Append;
        CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,DatosOrdenDeTrabajo.CDSOTrabajoDetCODIGOARTICULO.AsString);
        CDSVentaDetDetalle.Value            := DatosOrdenDeTrabajo.CDSOTrabajoDetDETALLE.Value;
        CDSVentaDetIVA_UNITARIO.Value       := DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat*CDSVentaDetIVA_TASA.AsFloat*0.01;


        CDSVentaDetUnitario_Total.AsFloat   := DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_TOTAL.AsFloat;
        CDSVentaDetUnitario_Gravado.AsFloat := DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_GRAVADO.AsFloat;
        CDSVentaDetUnitario_Exento.AsFloat  := DatosOrdenDeTrabajo.CDSOTrabajoDetUNITARIO_EXENTO.AsFloat;
        CDSVentaDetCosto_Gravado.AsFloat    := DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_GRAVADO.AsFLoat;
        CDSVentaDetCosto_Exento.AsFloat     := DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_EXENTO.AsFloat;
        CDSVentaDetCosto_Total.AsFloat      := DatosOrdenDeTrabajo.CDSOTrabajoDetCOSTO_TOTAL.AsFloat;
        CDSVentaDetCantidadSetText(CDSVentaDetCantidad,DatosOrdenDeTrabajo.CDSOTrabajoDetCANTIDAD.AsString);
       if CDSVentaDetCON_NRO_SERIE.Value='S' then
          begin
            CDSVtaSubDetalle.Insert;
            CDSVtaSubDetalleSERIESetText(CDSVtaSubDetalleSERIE,DatosOrdenDeTrabajo.CDSOTrabajoSubDetSERIE.Value);
          end;
        if CDSVtaSubDetalle.State<>dsBrowse then
          CDSVtaSubDetalle.Post;

        CDSVentaDet.Post;
      end;

end;

procedure TFormOrdenDeTrabajo.ArchivarOdeTrabajoExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.edit;
  DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.Value:='S';
  DatosOrdenDeTrabajo.CDSOTrabajoCabESTADO.Value   :=8; //Finalizada
  Confirma.Execute;
end;

procedure TFormOrdenDeTrabajo.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO,FormBuscadorClientes.Codigo);
end;

procedure TFormOrdenDeTrabajo.BuscarConsumibleExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos := TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.Param1 :=1;
  FormBuscadorArticulos.Param2 :=3;
  FormBuscadorArticulos.ListaPrecio := DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Value;
  FormBuscadorArticulos.Esquema     := -1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    BEGIN
      IF DatosOrdenDeTrabajo.CDSOTrabajoConsumible.State = dsBrowse THEN
        DatosOrdenDeTrabajo.CDSOTrabajoConsumible.Edit;
      DatosOrdenDeTrabajo.CDSOTrabajoConsumibleCODIGOSetText(DatosOrdenDeTrabajo.CDSOTrabajoConsumibleCODIGO, FormBuscadorArticulos.Codigo);
    END;
end;

procedure TFormOrdenDeTrabajo.BuscarCpbtePorDefExecute(Sender: TObject);
begin
  inherited;
  AsignarCpbtePorDef(BuscarCpbteFactura);

end;

procedure TFormOrdenDeTrabajo.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSBuscadorDeposito.Close;
  DatosOrdenDeTrabajo.CDSBuscadorDeposito.Open;
  ComBuscadorDepositos.Execute;
  if ComBuscadorDepositos.rOk Then
    DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabDEPOSITO, IntToStr(ComBuscadorDepositos.Id));
  DatosOrdenDeTrabajo.CDSBuscadorDeposito.Close;
end;

procedure TFormOrdenDeTrabajo.RxCCodigoExit(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSClientes.Close;
  DatosOrdenDeTrabajo.CDSClientes.Params.ParamByName('Codigo').Value:=Trim(RxCCodigo.Text);
  DatosOrdenDeTrabajo.CDSClientes.Open;
  if DatosOrdenDeTrabajo.CDSClientesCODIGO.AsString='' then
    begin
      ShowMessage('Debe haber un codigo de cliente valido...');
      RxCCodigo.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Clear;
      RxCCodigo.SetFocus;
      RxCCodigo.SelectAll;
    end;
   DatosOrdenDeTrabajo.CDSClientes.Close;  
end;

procedure TFormOrdenDeTrabajo.RxCCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabLDR.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRALDR.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabCONDICIONVTA.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormOrdenDeTrabajo.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Facturar.Enabled           := Not(DSBase.State in [dsInsert,dsEdit]) and (Not(DSBase.DataSet.IsEmpty));
  ArchivarOdeTrabajo.Enabled := Not(DSBase.State in [dsInsert,dsEdit]) and (Not(DSBase.DataSet.IsEmpty));
  Imprimir.Enabled           := Not(DSBase.State in [dsInsert,dsEdit]) and (Not(DSBase.DataSet.IsEmpty));

  pnDetalleTrabajo.Enabled   := DSBase.State in [dsInsert,dsEdit];

  edFechaEstimada.Enabled    := DSBase.State in [dsInsert,dsEdit];
  HoraDesde.Enabled          := DSBase.State in [dsInsert,dsEdit];
  HoraHasta.Enabled          := DSBase.State in [dsInsert,dsEdit];
  pnCabecera.Enabled         := DSBase.State in [dsInsert,dsEdit];
  PagDetalles.Enabled        := DSBase.State in [dsInsert,dsEdit];
  PagImpuestos.Enabled       := DSBase.State in [dsInsert,dsEdit];
  PagNovedades.Enabled       := DSBase.State in [dsInsert,dsEdit];
  DBGrillaDetalle.Enabled    := DSBase.State in [dsInsert,dsEdit];
  DBGrillaDetalle.ReadOnly   := DSBase.State =  dsBrowse;
  dbgConsumibles.Enabled     := True;
  dbgConsumibles.ReadOnly    := DSBase.State =  dsBrowse;

  //pcDetalles.Enabled         := DSBase.State<>dsBrowse;


 // dbgMov.ReadOnly            := DSBase.State=dsBrowse;

  RxCEstados.Enabled         := DSBase.State in [dsInsert,dsEdit];
  dbeFechaInicio.Enabled     := DSBase.State in [dsInsert,dsEdit];
  RxCSucursal.Enabled        := DSBase.State in [dsInsert,dsEdit];
  RxCTipoCpbte.Enabled       := DSBase.State in [dsInsert,dsEdit];
  //RxCProducto.Enabled        := DSBase.State in [dsInsert,dsEdit];
  RxCCodigo.Enabled          := DSBase.State in [dsInsert,dsEdit];
  dbmDetalle.ReadOnly        := Not(DSBase.State in [dsInsert,dsEdit]);
  dbmDetalle.Enabled         := True;
  edPrioridadInicial.Enabled := DSBase.State in [dsInsert,dsEdit];
  edDeltaPrioridad.Enabled   := DSBase.State in [dsInsert,dsEdit];
  rxcResponsableOT.Enabled   := DSBase.State in [dsInsert,dsEdit];
  rxcRespTurno.Enabled       := DSBase.State in [dsInsert,dsEdit];
  PagPenalizaciones.Enabled  := False;
  cbMotivo.Enabled           := DSBase.State in [dsInsert,dsEdit];
  ArchivarOdeTrabajo.Enabled := (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty))
                                                             and  (DatosOrdenDeTrabajo.CDSOTrabajoCabARCHIVADA.Value='N')
                                                             and  (DatosOrdenDeTrabajo.CDSOTrabajoCabESTADO.Value<>8); //Finalizada;
  ImprimirEtiqueta.Enabled   := (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  //De acuerdo de donde viene habilito estas opciones
  // Cuando el Tag es 0(cero) viene de supervisor
  if (Tag=0) and (DSBase.State in [dsInsert,dsEdit])  Then
    begin
      ArchivarOdeTrabajo.Enabled := True;
      rxcResponsableOT.Enabled   := True;
      edDeltaPrioridad.Enabled   := True;
      edPrioridadInicial.Enabled := True;
      dbePuntos.Enabled          := True;
      PagPenalizaciones.Enabled  := True;
    end
  else
  // Cuando el Tag es 1(uno) viene de Operador
    if (Tag<>0) and (DSBase.State in [dsEdit]) Then
      begin
        ArchivarOdeTrabajo.Enabled := False;
        rxcResponsableOT.Enabled   := False;
        edDeltaPrioridad.Enabled   := False;
        edPrioridadInicial.Enabled := False;
        dbePuntos.Enabled          := False;
        // si fue facturada, entonces solo habilito el "Asignado a"
        if (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString<>'') Then
          if (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.AsString<>'0') Then
           if (DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_ID.Value<>0) Then
             begin
               RxCEstados.Enabled        := False;
               dbeFechaInicio.Enabled    := False;
               RxCSucursal.Enabled       := False;
               RxCTipoCpbte.Enabled      := False;
         //      RxCProducto.Enabled       := False;
               RxCCodigo.Enabled         := False;
               dbmDetalle.ReadOnly       := Not(DSBase.State in [dsInsert,dsEdit]);
             //  DBGMov.ReadOnly           := False;
               DBGrillaDetalle.ReadOnly  := True;
               PagImpuestos.Enabled      := False;
               dbmDetalle.Enabled        := False;
               edPrioridadInicial.Enabled:= False;
               edDeltaPrioridad.Enabled  := False;
               rxcResponsableOT.Enabled  := False;
               rxcRespTurno.Enabled      := True;
             end;
      end;
   ArchivarOdeTrabajo.Enabled := Tag=0;
   RxCSucursal.Enabled        := DSBase.State=dsInsert;
   RxCTipoCpbte.Enabled       := DSBase.State=dsInsert;
   dbeSuc.Enabled             := DSBase.State=dsInsert;
   dbeNumero.Enabled          := DSBase.State=dsInsert;
   BuscadorXIdentif.Enabled   := Buscar.Enabled;
 end;

procedure TFormOrdenDeTrabajo.DSBuscadorProductosStateChange(Sender: TObject);
begin
  inherited;
 { edModelo.Enabled  :=  DSProductos.State in [dsEdit, dsInsert];
  edMarca.Enabled  :=  DSProductos.State in [dsEdit, dsInsert];
  edCategoria.Enabled  :=  DSProductos.State in [dsEdit, dsInsert];     }

end;

procedure TFormOrdenDeTrabajo.DSProductoStateChange(Sender: TObject);
begin
  inherited;
  NuevoProducto.Enabled :=  DSProducto.State  <> dsInsert;
  edObservacion.Enabled :=  DSProducto.State in [dsInsert,dsEdit];
end;



procedure TFormOrdenDeTrabajo.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');


  DatosOrdenDeTrabajo.QComprob.Close;
  DatosOrdenDeTrabajo.QComprob.ParamByName('id').Value :=DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTE.Value;
  DatosOrdenDeTrabajo.QComprob.Open;

  frOrdenTrabajo.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOrdenDeTrabajo.QComprobREPORTE.AsString);
  frOrdenTrabajo.PrintOptions.Copies :=1;

  DatosOrdenDeTrabajo.QComprob.Close;

  frOrdenTrabajo.PrintOptions.Printer:=PrNomCpbte;
  frOrdenTrabajo.SelectPrinter;


  frOrdenTrabajo.PrepareReport;

  frxPDFExport1.ShowDialog:=False;
  frxPDFExport1.FileName:=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OTrabajo_'+DatosOrdenDeTrabajo.CDSOTrabajoCabNROCPBTE.AsString+'.pdf');
  frOrdenTrabajo.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  DatosOrdenDeTrabajo.CorreoDestino  :=DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('Codigo').AsString);
  DatosOrdenDeTrabajo.CorreoDestino_2:=DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('Codigo').AsString);

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen         := DirCorreo;
  FormCorreo.Remitente            := Remitente;
  FormCorreo.Destinatario         := DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.AsString;
  FormCorreo.Puerto               := Puerto;
  FormCorreo.CorreoDestino        := DatosOrdenDeTrabajo.CorreoDestino;
  FormCorreo.CCopia               := DatosOrdenDeTrabajo.CorreoDestino_2;
  FormCorreo.NombreServidorCorreo := NombreServidor;
  FormCorreo.NombreCuentaCorreo   := NombreCuenta;
  FormCorreo.Clave                := Clave;
  FormCorreo.Autenticacion        := Autotenticacion;
  FormCorreo.Asunto               := 'O.Trabajo - '+ DatosOrdenDeTrabajo.CDSOTrabajoCabLETRAOT.AsString+
                                     '-'+ DatosOrdenDeTrabajo.CDSOTrabajoCabSUCOT.AsString+
                                     '-'+ DatosOrdenDeTrabajo.CDSOTrabajoCabNUMEROOT.AsString+
                                     ' del '+ FormatDateTime('dd-mm-yy',DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAINICIO.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OTrabajo_'+DatosOrdenDeTrabajo.CDSOTrabajoCabNROCPBTE.AsString+'.pdf');
  if AutoEnviarCorreo=False then
    FormCorreo.Show
  else
    begin
      FormCorreo.Enviar.Execute;
    end;
  AutoEnviarCorreo:=False;
end;



//procedure TFormOrdenDeTrabajo.dbgMovKeyPress(Sender: TObject; var Key: Char);
//var Tope:Integer;
//begin
//  inherited;
//  Tope:=5;
//  IF Key = #13 THEN
//    BEGIN
//      Key := #0;
//      IF (dbgMov.SelectedIndex < Tope) THEN
//        dbgMov.SelectedIndex := dbgMov.SelectedIndex + 1
//      ELSE
//        BEGIN
//          IF dbgMov.DataSource.DataSet.Eof THEN
//            dbgMov.DataSource.DataSet.Append;
//          dbgMov.SelectedIndex := 0;
//          Key := #0;
//        END;
//    END
//  else
//    if (key = #27) then
//      DBGrillaDetalle.DataSource.DataSet.Cancel;
//end;

procedure TFormOrdenDeTrabajo.FormKeyPress(Sender: TObject; var Key: Char);
begin
  // para no modifcar el Base puse esta opcion
  // por la grilla de las InfoPower
  if (not(ActiveControl is TjvDBGrid)) and (not(ActiveControl is TDBGrid))  Then
    inherited;
end;

procedure TFormOrdenDeTrabajo.FormResize(Sender: TObject);
begin
  inherited;
{  if FormOrdenDeTrabajo<>nil then
    if FormOrdenDeTrabajo.Width<>920 then
      FormOrdenDeTrabajo.Width:=920;    }
 // FResizer.ResizeAll;

end;

procedure TFormOrdenDeTrabajo.pcDetallesChange(Sender: TObject);
begin
  inherited;
//  PagDetalles.Enabled :=RxCCodigo.Text<>'';
 // PagImpuestos.Enabled:=RxCCodigo.Text<>'';
  if (pcDetalles.Enabled) and  (pcDetalles.ActivePageIndex=1) then
    begin
      if (DBGrillaDetalle.Visible) and (DBGrillaDetalle.Enabled) then
        begin
          DBGrillaDetalle.SetFocus;
          DBGrillaDetalle.SelectedIndex:=0;
        end;
    end;
end;



procedure TFormOrdenDeTrabajo.ImprimirContratoExecute(Sender: TObject);
begin
  inherited;
  frContrato.LoadFromFile(DMMain_FD.PathReportesLst+'\OTrabajoContrato.fr3');
  frContrato.PrintOptions.Copies :=1;
  frContrato.ShowReport;

end;

procedure TFormOrdenDeTrabajo.ImprimirEtiquetaExecute(Sender: TObject);
begin
  inherited;
  frEtiqueta.LoadFromFile(DMMain_FD.PathReportesLst+'\OTrabajoEtiqueta.fr3');
  frEtiqueta.PrintOptions.Copies :=1;
  frEtiqueta.ShowReport;

end;

procedure TFormOrdenDeTrabajo.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  DatosOrdenDeTrabajo.QComprob.Close;
  DatosOrdenDeTrabajo.QComprob.ParamByName('id').Value :=DatosOrdenDeTrabajo.CDSOTrabajoCabID_TIPOCOMPROBANTE.Value;
 // DatosOrdenDeTrabajo.QComprob.ParamByName('suc').Value:=DatosOrdenDeTrabajo.wwCDSOTrabajoCabSUCURSAL.Value;
  DatosOrdenDeTrabajo.QComprob.Open;

  frOrdenTrabajo.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOrdenDeTrabajo.QComprobREPORTE.AsString);
  frOrdenTrabajo.PrintOptions.Copies :=DatosOrdenDeTrabajo.QComprobCOPIAS.Value;
  frOrdenTrabajo.Variables['MuestraMotivo']  := ''''+cbMotivo.Text+'''';


  DatosOrdenDeTrabajo.QComprob.Close;

  frOrdenTrabajo.ShowReport;

end;

procedure TFormOrdenDeTrabajo.ModificarExecute(Sender: TObject);
begin
  inherited;
  if DatosOrdenDeTrabajo.CDSProducto.IsEmpty then
    DatosOrdenDeTrabajo.CDSProducto.Append
  else
    DatosOrdenDeTrabajo.CDSProducto.Edit;

  pncabecera.Enabled:=true ;//else
  CpbteNuevo    :='N';
  ImporteOriginal:=DatosOrdenDeTrabajo.CDSOTrabajoCabTOTAL.AsFloat;
end;

procedure TFormOrdenDeTrabajo.ModoDatosAmpliadosClick(Sender: TObject);
begin
  inherited;
  ModoStandard.Checked       :=False;
  ModoDatosAmpliados.Checked :=True;
  ModoMatafuegos.Checked     :=False;
  pcModo.ActivePageIndex     :=1;
end;

procedure TFormOrdenDeTrabajo.ModoMatafuegosClick(Sender: TObject);
begin
  inherited;
  ModoStandard.Checked       :=False;
  ModoDatosAmpliados.Checked :=False;
  ModoMatafuegos.Checked     :=True;
  pcModo.ActivePageIndex     :=2;

end;

procedure TFormOrdenDeTrabajo.ModoStandardClick(Sender: TObject);
begin
  inherited;
  ModoStandard.Checked       :=True;
  ModoDatosAmpliados.Checked :=False;
  ModoMatafuegos.Checked     :=False;
  pcModo.ActivePageIndex     :=0;

end;

procedure TFormOrdenDeTrabajo.NuevoProductoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAltaProdutosCliente)) Then
    FormAltaProdutosCliente := TFormAltaProdutosCliente.Create(Self);
  FormAltaProdutosCliente.Cliente := DSBase.DataSet.FieldByName('codigo').AsString;
  FormAltaProdutosCliente.Nombre  := DSBase.DataSet.FieldByName('nombre').AsString;
  FormAltaProdutosCliente.ShowModal;
  if FormAltaProdutosCliente.ModalResult=mrok then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabPRODUCTO,IntToStr(FormAltaProdutosCliente.id));
    end;
end;

procedure TFormOrdenDeTrabajo.rxcRespTurnoExit(Sender: TObject);
begin
  inherited;
  if DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_TURNO.AsString<>'' Then
    EstuvoAsignado:=True;
end;

procedure TFormOrdenDeTrabajo.rxcResponsableOTKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_OT.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRARESPONSABLEOT.Clear;
    end;

end;

procedure TFormOrdenDeTrabajo.rxcRespTurnoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabRESPONSABLE_TURNO.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRARESPONSABLETURNO.Clear;
    end;

end;

procedure TFormOrdenDeTrabajo.DateTimePicker1Change(Sender: TObject);
begin
  inherited;
  ShowMessage('Cambia');
end;

procedure TFormOrdenDeTrabajo.DatosClienteExecute(Sender: TObject);
begin
  inherited;
{  if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
    FormDatosClienteCabeceraCpbte:=TFormDatosClienteCabeceraCpbte.Create(Application);
  FormDatosClienteCabeceraCpbte.Tag :=5;
  FormDatosClienteCabeceraCpbte.ShowModal;  }

  DMMain_FD.ModificarDatosCliente(DSBase);
end;


procedure TFormOrdenDeTrabajo.RxCTipoFacturaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabFACTURA_TIPO.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRATIPOFACTURA.Clear;
    end;
end;

procedure TFormOrdenDeTrabajo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frOrdenTrabajo.DesignReport;
end;

procedure TFormOrdenDeTrabajo.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if DMMain_FD.Facturado Then
        begin
          DatoNew   :=IntToStr(DatosOrdenDeTrabajo.CDSOTrabajoCabID_OT.Value);
          TipoCpbte :=DatosOrdenDeTrabajo.CDSOTrabajoCabTIPOCPBTE.Value;
          Recuperar.Execute;
        end;
    end;
end;


procedure TFormOrdenDeTrabajo.BorrarPenalizacionExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosOrdenDeTrabajo.CDSPenalizaciones.IsEmpty) Then
    DatosOrdenDeTrabajo.CDSPenalizaciones.Delete
  else
    ShowMessage('No hay datos para borrar....');

end;

procedure TFormOrdenDeTrabajo.CancelarExecute(Sender: TObject);
begin
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Cancel;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Cancel;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Cancel;

  DatosOrdenDeTrabajo.CDSOTrabajoCab.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoCab.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoDet.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.Open;

  DatosOrdenDeTrabajo.CDSOTrabajoMov.Close;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSOTrabajoMov.Open;

  DatosOrdenDeTrabajo.CDSImpuestos.Close;
  DatosOrdenDeTrabajo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSImpuestos.Open;

  DatosOrdenDeTrabajo.CDSPenalizaciones.Close;
  DatosOrdenDeTrabajo.CDSPenalizaciones.Params.ParamByName('id').Clear;
  DatosOrdenDeTrabajo.CDSPenalizaciones.OPen;

  inherited;
  if Penalizada<>nil Then
    FreeAndNil(Penalizada);
  if Archivada<>nil Then
    FreeAndNil(Archivada);
end;

procedure TFormOrdenDeTrabajo.ceArtPorDefKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      AsignarArtPorDef(ceArtPorDef.Text);
    end;
end;

procedure TFormOrdenDeTrabajo.ceCpbtePorDefKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key=#13) then
    begin
      Key:=#0;
      AsignarCpbtePorDef(ceCpbtePorDef.Text);
    end;

end;


procedure TFormOrdenDeTrabajo.dbeFechaInicioExit(Sender: TObject);
begin
  inherited;
  DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAINICIOSetText(DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAINICIO,dbeFechaInicio.Text);
end;


procedure TFormOrdenDeTrabajo.seProductoBeforeDropDown(Sender: TObject);
begin
  DatosOrdenDeTrabajo.CDSBuscadorProductos.Close;
  DatosOrdenDeTrabajo.CDSBuscadorProductos.Open;
  inherited;
end;

procedure TFormOrdenDeTrabajo.seProductoDropDownHeaderButtonClick(
  Sender: TObject; ButtonIndex: Integer);
begin
  inherited;
  if ButtonIndex=0 then NuevoProducto.Execute;
end;



procedure TFormOrdenDeTrabajo.dbgMovColEnter(Sender: TObject);
begin
 inherited;
  if dbgMov.SelectedIndex=4 Then
    dbgMov.SelectedIndex:=5;
  if FormOrdenDeTrabajo<>nil Then
    if (FormOrdenDeTrabajo.Tag=1) And (dbgMov.SelectedIndex=5) then // Modo Operador
      dbgMov.SelectedIndex:=3;
end;


procedure TFormOrdenDeTrabajo.CronogramOTExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCronogramaOT)) Then
    FormCronogramaOT:=TFormCronogramaOT.Create(Self);
  FormCronogramaOT.Fecha:=edFechaEstimada.Date;

  FormCronogramaOT.ShowModal;
  DatosOrdenDeTrabajo.CDSOTrabajoCabFECHAESTIMADA.AsDateTime := FormCronogramaOT.Fecha;
end;


procedure TFormOrdenDeTrabajo.BorrarExecute(Sender: TObject);
var valor:String;
Nro,Cliente:String;
begin
  if DMMain_FD.UsuarioAdministrador Then
    begin
      valor:= FormatFloat('0.00',DatosOrdenDeTrabajo.CDSOTrabajoCabTOTAL.AsFloat);
      Nro  := DatosOrdenDeTrabajo.CDSOTrabajoCabNROCPBTE.Value;
      Cliente:=DatosOrdenDeTrabajo.CDSOTrabajoCabCODIGO.Value+':'+DatosOrdenDeTrabajo.CDSOTrabajoCabNOMBRE.Value;
      inherited;
       // **** Ingreso en el Log File  **************
       DMMain_FD.LogFileFD(1,2,'Borrado O.de Trabajo: '+ Nro+' Cliente: '+
                           Cliente+' Valor: '+Valor,
                          'OTRABAJO');
        // ******************************************

    end
  else
    ShowMessage('No esta Autorizado para esta Operacion... Debe ser Administrador....');  
end;

procedure TFormOrdenDeTrabajo.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
begin
  inherited;
  Puntero:=DatosOrdenDeTrabajo.CDSOTrabajoDet.GetBookmark;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.First;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.DisableControls;
  while Not(DatosOrdenDeTrabajo.CDSOTrabajoDet.Eof) DO
    begin
      Puntero2:=DatosOrdenDeTrabajo.CDSOTrabajoDet.GetBookmark;
      DatosOrdenDeTrabajo.CDSOTrabajoDet.edit;
      DatosOrdenDeTrabajo.CalculaPrecioVta;
      DatosOrdenDeTrabajo.CDSOTrabajoDetCantidadSetText(DatosOrdenDeTrabajo.CDSOTrabajoDetCantidad,DatosOrdenDeTrabajo.CDSOTrabajoDetCantidad.AsString);
      DatosOrdenDeTrabajo.CDSOTrabajoDet.GotoBookmark(Puntero2);
      DatosOrdenDeTrabajo.CDSOTrabajoDet.FreeBookmark(Puntero2);
      DatosOrdenDeTrabajo.CDSOTrabajoDet.Next;
    end;
  DatosOrdenDeTrabajo.CDSOTrabajoDet.GotoBookmark(Puntero);
  DatosOrdenDeTrabajo.CDSOTrabajoDet.FreeBookmark(Puntero);
  DatosOrdenDeTrabajo.CDSOTrabajoDet.EnableControls;
end;

procedure TFormOrdenDeTrabajo.dbcListaClick(Sender: TObject);
begin
  inherited;
  Recalcular.Execute;
end;

procedure TFormOrdenDeTrabajo.dbcListaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabLISTAPRECIO.Clear;
      Recalcular.Execute;
    end;
end;

procedure TFormOrdenDeTrabajo.RxCEstadosChange(Sender: TObject);
begin
  inherited;
  if (OldEstado<>RxCEstados.ItemIndex) and (DSBase.State=dsEdit)  Then
    begin
//      ShowMessage('Cambio');
      DatosOrdenDeTrabajo.CDSOTrabajoMov.Insert;
      DatosOrdenDeTrabajo.CDSOTrabajoMovFECHA.AsDateTime      := Date;
      DatosOrdenDeTrabajo.CDSOTrabajoMovHORAINICIO.AsDAteTime := Now;
      DatosOrdenDeTrabajo.CDSOTrabajoMovHORAFINAL.AsDateTime  := Now;
      DatosOrdenDeTrabajo.CDSOTrabajoMovDETALLE.Value         := 'SACOT:Estado '+RxCEstados.Text;
      DatosOrdenDeTrabajo.CDSOTrabajoMov.Post;
      OldEstado:=RxCEstados.ItemIndex;
    end;
end;

procedure TFormOrdenDeTrabajo.RxCEstadosEnter(Sender: TObject);
begin
  inherited;
  OldEstado:=RxCEstados.ItemIndex
end;

procedure TFormOrdenDeTrabajo.RxCLdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOrdenDeTrabajo.CDSOTrabajoCabLDR.Clear;
      DatosOrdenDeTrabajo.CDSOTrabajoCabMUESTRALDR.Clear;
    end;
end;

end.


