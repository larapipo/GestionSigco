unit UCompra_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Controls, Forms, Dialogs,VCL.Clipbrd,
  UABMBase, Grids, DBGrids, ExtCtrls, StdCtrls, ComCtrls, Mask,System.AnsiStrings,
  DBCtrls, graphics,System.Variants, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxExportPDF, Vcl.Menus, JvExControls, JvDBLookup, JvMaskEdit,
  JvDBControls, JvExDBGrids, JvExExtCtrls, JvExtComponent, JvRollOut,
  JvLabel, JvExMask, JvToolEdit, JvExComCtrls, JvComCtrls, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, frxDBSet, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvGradient, Vcl.Buttons, Vcl.ToolWin,
  IniFiles,StrUtils,Librerias, Math,DateUtils,Winapi.ShellAPI, frxExportBaseDialog,
  System.ImageList, Datasnap.DBClient, AdvSearchList,
  AdvSearchEdit, DBAdvSearchEdit, Data.SqlExpr, JvDBGrid, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, tmsAdvGridExcel,tmsUFlxFormats, frCoreClasses,UMatchingArticulos;

type
  TFormCompra_2 = class(TFormABMBase)
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    PagImpuestos: TTabSheet;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Bevel7: TBevel;
    DBText8: TDBText;
    Label7: TLabel;
    Bevel8: TBevel;
    DBText9: TDBText;
    dbgPrecepcionIVA: TDBGrid;
    dbeDscto: TDBEdit;
    dbgPercepcionIB: TDBGrid;
    dbgIva: TDBGrid;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondCompra: TAction;
    BuscarArticulo: TAction;
    BuscarTipoCpbte: TAction;
    btAplicadas: TBitBtn;
    ToolButton1: TToolButton;
    VerAplicaciones: TAction;
    Label23: TLabel;
    AgregarProveedor: TAction;
    PagNroSeries: TTabSheet;
    dbgDetalleCompra: TDBGrid;
    dbgSeries: TDBGrid;
    dbtCantidad: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    SpeedButton2: TSpeedButton;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    btRecepciones: TBitBtn;
    BuscarRecepciones: TAction;
    JvDBStatusLabel1: TJvDBStatusLabel;
    ModificarNro: TAction;
    roOrdenCompra: TJvRollOut;
    dbgOCompra: TDBGrid;
    Button1: TButton;
    LstOCompra: TAction;
    dbeFechaCompra: TJvDBDateEdit;
    pnMonedaIngreso: TPanel;
    lb2: TLabel;
    dbtTotal1: TDBText;
    lb1: TLabel;
    lb3: TLabel;
    dbtMUESTRAMONEDACPBTE: TDBText;
    lb4: TLabel;
    dbtMUESTRAMONEDACPBTE1: TDBText;
    dbtMUESTRAMONEDACPBTE2: TDBText;
    dbtMUESTRAMONEDACPBTE3: TDBText;
    ActulizarCotizacion: TAction;
    dbtMUESTRAMONEDA: TDBText;
    ActualizaCotizacionDetalle: TAction;
    dbtMUESTRASIGNOMONEDACPBTE: TDBText;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    dntId: TDBText;
    GravarCambiosDetalles: TAction;
    ReCalcular: TAction;
    ForzarModificar: TAction;
    BorraAplicacionesNC: TAction;
    pmOtros: TPopupMenu;
    BorraAplicacionesNC1: TMenuItem;
    ForzarModificar1: TMenuItem;
    GravarCambiosDetalles1: TMenuItem;
    ModificarNro1: TMenuItem;
    Aplicadaa1: TMenuItem;
    CambiaCodigo: TAction;
    CambiaCodigoProveedor1: TMenuItem;
    BorrarAplicaciones: TAction;
    spBorraAplicaciones: TFDStoredProc;
    BorrarAplicaciones1: TMenuItem;
    spMenu: TSpeedButton;
    DBStatusLabel2: TJvDBStatusLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    Label19: TLabel;
    CambiarClaseCpbte: TAction;
    CambiarClaseCpbte1: TMenuItem;
    DetallesCostos: TAction;
    spCostos: TSpeedButton;
    frReporte: TfrxReport;
    frCabecera: TfrxDBDataset;
    frSuDetalle: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frIva: TfrxDBDataset;
    frPercepIIBB: TfrxDBDataset;
    frPercepIVA: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    CambiarFechaFiscal: TAction;
    N1: TMenuItem;
    CambiarFechaFiscal1: TMenuItem;
    BuscarPorReferencia: TAction;
    LibroIva: TAction;
    edDsctoImporte: TDBEdit;
    CleanBuffer: TAction;
    N2: TMenuItem;
    LimpiarBuffer1: TMenuItem;
    AplicarLibroIva1: TMenuItem;
    lbCargaLote: TLabel;
    PopupMenu1: TPopupMenu;
    VerCodigoAlternativo: TMenuItem;
    spFiscalizar: TSpeedButton;
    Fiscalizar: TAction;
    frEmpresa: TfrxDBDataset;
    dbgCtroCosto: TDBGrid;
    DSCtroCosto: TDataSource;
    N3: TMenuItem;
    ControlaFechaFiscal: TMenuItem;
    pagLotes: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    pnLote: TPanel;
    Label26: TLabel;
    DBEdit1: TDBEdit;
    Label27: TLabel;
    DBEdit2: TJvDBDateEdit;
    Label28: TLabel;
    DBEdit3: TJvDBDateEdit;
    Label29: TLabel;
    Label30: TLabel;
    DBEdit5: TDBEdit;
    Label31: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    ComBuscadorCondCompra: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    VerUnidadesdeStock1: TMenuItem;
    N4: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    roAplicaciones: TJvRollOut;
    JvDBGrid1: TJvDBGrid;
    DBText14: TDBText;
    pcModosFacturas: TJvPageControl;
    Clasico: TTabSheet;
    Liquidacion: TTabSheet;
    edRenspaRecp: TJvDBMaskEdit;
    Label34: TLabel;
    edLugar: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    pcDetalleFc: TJvPageControl;
    tbOriginal: TTabSheet;
    DBGrillaDetalle: TDBGrid;
    tbDetLiquidacion: TTabSheet;
    dbgDetalleLiquidacion: TDBGrid;
    pcOtrosDetalles: TPageControl;
    pgDescuentos: TTabSheet;
    pgLiquidacionOtros: TTabSheet;
    dbgCondPago: TDBGrid;
    pagGastosTributos: TTabSheet;
    dbgTributos: TDBGrid;
    dbgGastos: TDBGrid;
    Label38: TLabel;
    edRucaEmisor: TJvDBMaskEdit;
    Label39: TLabel;
    edRucaRec: TJvDBMaskEdit;
    dbgCompraDTE: TDBGrid;
    Label40: TLabel;
    edFechaFaena: TJvDBDateEdit;
    Label41: TLabel;
    edFechaRecep: TJvDBDateEdit;
    Label42: TLabel;
    edRenspaEmisor: TJvDBMaskEdit;
    AnulaLiquidacion: TAction;
    spAnular: TSpeedButton;
    Duplicar: TAction;
    pcModoFactura_2: TJvPageControl;
    pagStandar: TTabSheet;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label18: TLabel;
    dbeCondCompra: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeFechaFiscal: TJvDBDateEdit;
    dbeFechaVencimiento: TJvDBDateEdit;
    RxDBECondCompra: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    pagLiquidacion: TTabSheet;
    Label32: TLabel;
    Label33: TLabel;
    Label43: TLabel;
    edCuitAutorizadoEmis: TJvDBMaskEdit;
    JvGradient5: TJvGradient;
    JvGradient6: TJvGradient;
    JvGradient7: TJvGradient;
    lbAjusteLiq: TLabel;
    Label22: TLabel;
    Label44: TLabel;
    edCuitAutorizadoRec: TJvDBMaskEdit;
    cbCodOperacion: TJvDBLookupCombo;
    cbCaracterEmisor: TJvDBLookupCombo;
    cbCaracterRec: TJvDBLookupCombo;
    cbMotivo: TJvDBLookupCombo;
    PasarCtaCte: TAction;
    PasarosacradeCtaCte1: TMenuItem;
    GenerarRetencionIVA: TAction;
    N5: TMenuItem;
    GenerarRetencionIVA1: TMenuItem;
    PopupMenu2: TPopupMenu;
    GenerarRetencionIVA2: TMenuItem;
    ImprimirEtiquetas: TAction;
    ImprirEtiquetas1: TMenuItem;
    N6: TMenuItem;
    JvGradient3: TJvGradient;
    JvGradient4: TJvGradient;
    ReCalcular1: TMenuItem;
    Label45: TLabel;
    DBText15: TDBText;
    Bevel9: TBevel;
    RestaurarCAE: TAction;
    N7: TMenuItem;
    Duplicar1: TMenuItem;
    RestaurarCAE1: TMenuItem;
    BorrarCAE: TAction;
    BorrarCAE1: TMenuItem;
    ComBuscadorPerIIBB: TComBuscador;
    GenerarTx: TAction;
    GenerarTx1: TMenuItem;
    spTx: TSpeedButton;
    N8: TMenuItem;
    PermitirModifTotal: TMenuItem;
    CambiarDeposito: TAction;
    CambiarDeposito1: TMenuItem;
    CopiarDetalle: TAction;
    shPP: TShape;
    PegarDetalle: TAction;
    N9: TMenuItem;
    CopiarDetalle1: TMenuItem;
    PegarDetalle1: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    RevisaTasaIva: TAction;
    N12: TMenuItem;
    ReCalcularSinControl: TMenuItem;
    PegarDetalle2: TMenuItem;
    PasaDetallesAStock: TAction;
    PasarDetallesAStock2: TMenuItem;
    DBText5: TDBText;
    Label46: TLabel;
    N13: TMenuItem;
    CopiaralPortaPepelesdeWindows1: TMenuItem;
    CopiarDetallePortaPapeles: TAction;
    dbgGridTMS: TDBAdvGrid;
    ExportarExcel: TMenuItem;
    ExportarExcelCSV: TAction;
    OpenDialog1: TOpenDialog;
    AdvGridExcelIO1: TAdvGridExcelIO;
    ColumnaInvenario: TMenuItem;
    GenerarAjusteInventario: TAction;
    GenerarAjustedeInventario1: TMenuItem;
    DetalleMediaRes: TAction;
    SpeedButton1: TSpeedButton;
    Label54: TLabel;
    DBText42: TDBText;
    AsignarObra: TAction;
    CambiarFechaVencimento: TAction;
    CambiarFechaVencimento1: TMenuItem;
    Label47: TLabel;
    DBText16: TDBText;
    ImportarIA: TAction;
    SpeedButton3: TSpeedButton;
    AsignarObra1: TMenuItem;
    N14: TMenuItem;
    dbchNota_Credito: TDBCheckBox;
    PasarND_NCAjuste: TAction;
    PasarNDNCAjuste1: TMenuItem;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondCompraExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgCondPagoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure VerAplicacionesExecute(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaColEnter(Sender: TObject);
    procedure dbgPrecepcionIVAColEnter(Sender: TObject);
    procedure dbgPercepcionIBColEnter(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECondCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbeFechaCompra_oldExit(Sender: TObject);
    procedure AgregarProveedorExecute(Sender: TObject);
    procedure dbgDetalleCompraDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarRecepcionesExecute(Sender: TObject);
    procedure RxDBECodigoButtonClick(Sender: TObject);
    procedure ModificarNroExecute(Sender: TObject);
    procedure dbgOCompraDblClick(Sender: TObject);
    procedure dbgOCompraDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgOCompraDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure roOrdenCompraCollapse(Sender: TObject);
    procedure LstOCompraExecute(Sender: TObject);
    procedure roOrdenCompraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbeFechaCompraExit(Sender: TObject);
    procedure ActulizarCotizacionExecute(Sender: TObject);
    procedure ActualizaCotizacionDetalleExecute(Sender: TObject);
    procedure GravarCambiosDetallesExecute(Sender: TObject);
    procedure ReCalcularExecute(Sender: TObject);
    procedure ForzarModificarExecute(Sender: TObject);
    procedure BorraAplicacionesNCExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CambiaCodigoExecute(Sender: TObject);
    procedure BorrarAplicacionesExecute(Sender: TObject);
    procedure CambiarClaseCpbteExecute(Sender: TObject);
    procedure DetallesCostosExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CambiarFechaFiscalExecute(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure LibroIvaExecute(Sender: TObject);
    procedure dbeFechaFiscalEnter(Sender: TObject);
    procedure dbeFechaFiscalExit(Sender: TObject);
    procedure CleanBufferExecute(Sender: TObject);
    procedure lbCargaLoteClick(Sender: TObject);
    procedure VerCodigoAlternativoClick(Sender: TObject);
    procedure FiscalizarExecute(Sender: TObject);
    procedure ControlaFechaFiscalClick(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure pnLoteExit(Sender: TObject);
    procedure dbgPrecepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure VerUnidadesdeStock1Click(Sender: TObject);
    procedure datosBGrid1DblClick(Sender: TObject);
    procedure dbgDetalleLiquidacionEditButtonClick(Sender: TObject);
    procedure dbgDetalleLiquidacionKeyPress(Sender: TObject; var Key: Char);
    procedure AnulaLiquidacionExecute(Sender: TObject);
    procedure DuplicarExecute(Sender: TObject);
    procedure dbgDetalleLiquidacionColEnter(Sender: TObject);
    procedure dbgCompraDTEKeyPress(Sender: TObject; var Key: Char);
    procedure dbgGastosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgTributosKeyPress(Sender: TObject; var Key: Char);
    procedure Label43DblClick(Sender: TObject);
    procedure Label42DblClick(Sender: TObject);
    procedure Label38DblClick(Sender: TObject);
    procedure Label39DblClick(Sender: TObject);
    procedure Label34DblClick(Sender: TObject);
    procedure Label44DblClick(Sender: TObject);
    procedure cbCaracterRecChange(Sender: TObject);
    procedure cbCodOperacionEnter(Sender: TObject);
    procedure cbCaracterEmisorChange(Sender: TObject);
    procedure cbCaracterEmisorEnter(Sender: TObject);
    procedure cbCaracterRecEnter(Sender: TObject);
    procedure cbMotivoChange(Sender: TObject);
    procedure PasarCtaCteExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure GenerarRetencionIVAExecute(Sender: TObject);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
    procedure dbgPercepcionIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RestaurarCAEExecute(Sender: TObject);
    procedure BorrarCAEExecute(Sender: TObject);
    procedure dbgPercepcionIBEditButtonClick(Sender: TObject);
    procedure GenerarTxExecute(Sender: TObject);
    procedure spTxClick(Sender: TObject);
    procedure PermitirModifTotalClick(Sender: TObject);
    procedure CambiarDepositoExecute(Sender: TObject);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure RevisaTasaIvaExecute(Sender: TObject);
    procedure ReCalcularSinControlClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PasaDetallesAStockExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure DBGrillaDetalleKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleTitleClick(Column: TColumn);
    procedure FormActivate(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure CopiarDetallePortaPapelesExecute(Sender: TObject);
    procedure ExportarExcelCSVExecute(Sender: TObject);
    procedure AdvGridExcelIO1ExportColumnFormat(Sender: TObject; GridCol,
      GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var ExportCellAsString: Boolean);
    procedure AdvGridExcelIO1CellFormat(Sender: TAdvStringGrid; const GridCol,
      GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
      var Format: TFlxFormat);
    procedure ColumnaInvenarioClick(Sender: TObject);
    procedure GenerarAjusteInventarioExecute(Sender: TObject);
    procedure PopupMenu1Popup(Sender: TObject);
    procedure DetalleMediaResExecute(Sender: TObject);
    procedure AsignarObraExecute(Sender: TObject);
    procedure CambiarFechaVencimentoExecute(Sender: TObject);
    procedure ImportarIAExecute(Sender: TObject);
    procedure PasarND_NCAjusteExecute(Sender: TObject);

  private
    procedure CopiarClipBoard(Grilla: TDBGrid);
    { Private declarations }
  public
    { Public declarations }
    Generado    :Boolean;
    DeRecepcion :Boolean;
    CodigosSeries:TStringList;
    ImporteOriginal:real;
    ArchIni:TIniFile;
    PROCEDURE UltimoComprobante;
    PROCEDURE InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING;ID_OC:Integer;NroOCompra:String);
    function ControlSerie:Boolean;
    function ControlLotes:Boolean;


  end;

var
  FormCompra_2: TFormCompra_2;


implementation

uses ComposicionPrecio, UBuscadorCpbte, DMCompra,UDMain_FD,
     UAplicacionesNCCompra, UProveedor_2, UBuscadorArticulos,
     UBuscarRecepcionesPendientes, UBuscadorProveedor, UCambiaNumeroCpbte,
     UListaBuscadorOrdenCompra, UOrdenCompra, UIngresoCotizacion,
     DMStoreProcedureForm, UDetalleCompraArticulo, UCambioProveedorFactura,
     UCambiaClaseComprobante, UAsignacionCtroCosto, UCambioFechaFiscal,
     UBuscarPorNroReferencia, UCompraCtdo_2, ULoteSeriales, UFiscalizacion,
     UOPago_2, lsplib_TLB, UBuscadorComprobantes, UTransferencia,
     UBuscadorDepositos, UCambiaDespositoFc, UStock_2, UEtiquetas_Compra,
  UAjusteMercaderia, UCompCarnesMedias, UAsignaObra, UFecha{, ULectorPDF},
  ULectorPDF;

{$R *.DFM}


procedure TFormCompra_2.CopiarClipBoard(Grilla: TDBGrid);
var
  i_local,j_local: Integer;
  BookMark_local : TBookmark;
  s_local,Campo  : string;
begin
  Grilla.DataSource.DataSet.DisableControls;  // evita parpadeo en la grilla
  try
    BookMark_local := Grilla.DataSource.DataSet.Bookmark;  // guardar posición
    Grilla.DataSource.DataSet.first; // ir a 1era fila
    s_local:= '';

    for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
      begin
  //  if (chklstColumnas.Checked[j_local]) then
          begin
            campo:='';
            campo:= Grilla.Columns[j_local].Title.Caption;
            s_local:= s_local + campo +
              Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Columns[j_local].Title.Caption));

  //            if i_local < Grilla.Columns.Count then s_local:= s_local + #9;
            s_local:= s_local + #9;
          end;
      end;
    s_local:= s_local + #13 + #10;                  //CRLF

    Grilla.DataSource.DataSet.first; // ir a 1era fila


    for i_local:= 0 to Grilla.Datasource.dataset.RecordCount - 1 do  // nro filas mostradas
      begin
        for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
          begin
         //  if (chklstColumnas.Checked[j_local]) then
            begin
              campo:='';
               campo:= Grilla.Fields[j_local].AsString;
               campo:= Grilla.Columns[j_local].Field.Text;

               s_local:= s_local + campo +
                 Copy('                                         ',1,Grilla.Fields[j_local].Size-Length(Grilla.Fields[j_local].AsString));
               if i_local < Grilla.datasource.dataset.recordCount then s_local:= s_local + #9;
             end;
          end;
        s_local:= s_local + #13 + #10;                  //CRLF
        Grilla.DataSource.DataSet.Next;   // siguiente fila
      end;
    ClipBoard.SetTextBuf(PChar(s_local));  // a portapapeles
    Grilla.DataSource.DataSet.Bookmark:= BookMark_local; // restaurar posición
  finally
    Grilla.DataSource.DataSet.EnableControls;
  end;
end;



PROCEDURE TFormCompra_2.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosCompra,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSCompraCabLetraFac.AsString <> '') AND (CDSCompraCabCLASECPBTE.ASString <> '') and (DSBase.DataSet.State in [dsInsert,dsEdit])  THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').AsString := CDSCompraCabLetraFac.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value     := CDSCompraCabSucursalCompra.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value    := CDSCompraCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value     := CDSCompraCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value  := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSCompraCabSucFacSetText(CDSCompraCabSucFac,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSCompraCabNumeroFacSetText(CDSCompraCabNumeroFac,IntToStr(Numero));
            END;
          IF (DSBase.DataSet.State in [dsInsert,dsEdit])  THEN
            begin
              CDSCompraCabDESGLOZAIVA.Value        := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
              CDSCompraCabINGRESA_A_CTACTE.Value   := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
              CDSCompraCabINGRESA_LIBRO_IVA.Value  := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSCompraCabTIPOCPBTE.Value          := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSCompraCabCLASECPBTE.Value         := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
            end;
          spNumeroCpbte.CLose;
        END;
      IF (DSBase.DataSet.State in [dsInsert,dsEdit])  THEN
        begin
          CDSCompraCabNROCPBTE.AsString := CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString +
                                           CDSCompraCabNumeroFac.AsString;
          FormCompra_2.dbgIva.Enabled   := CDSCompraCabDESGLOZAIVA.Value = 'S';
        end;
    END;
END;

procedure TFormCompra_2.ImprimirExecute(Sender: TObject);
var DiscrIva,Cuit,NroRipsa,Archivo:String;
  CuitEmisor,CuitAutorizado,CuitReceptor:String;
  Certificado,Clave:String;
  wslsp: Iwslsp;
  Response: IConsultarLiquidacionPorNroComprobanteResp;
  puntoVenta: Integer;
  tipoComprobante: Integer;
  nroComprobante: Integer;
begin
  inherited;

  DatosCompra.QComprob.Close;
  DatosCompra.QComprob.ParamByName('id').Value :=DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.Value;
  DatosCompra.QComprob.ParamByName('suc').Value:=DatosCompra.CDSCompraCabSUCURSALCOMPRA.Value;
  DatosCompra.QComprob.Open;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('opcion').AsString:='REPORTES';
//  DMMain_FD.QOpciones.Open;

  IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin

      Cuit:=AnsireplaceText(DatosCompra.CDSEmpresaCUIT.Value,'-','');
            Cuit:=AnsireplaceText(CUIT,'-','');
            Cuit:=AnsireplaceText(CUIT,'.','');


      frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\FcCompraCtaCte.fr3');

      if DatosCompra.CDSCompraCabFACTURA_ELECTRONICA.Value='S' then
        begin

          if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'180') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'182') and
             (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'183') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'185') and
             (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'186') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'188') and
             (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'189') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'191') Then
            begin
              frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosCompra.QComprobREPORTE.AsString);

              frReporte.Variables['CodigoBarra']  :=''''+DMMain_FD.CodigoBarraFcElectronica(Cuit+
                                                     Copy(DatosCompra.CDScompraCabMUESTRACODIGOAFIP.Value,2,2)+
                                                     DatosCompra.CDSCompraCabSUCFAC.Value+
                                                     DatosCompra.CDSCompraCabCAE.Value+
                                                     FormatDateTime('yyyymmdd',DatosCompra.CDSCompraCabCAE_VENCIMIENTO.AsDateTime))+'''';

              frReporte.PrintOptions.Copies :=1;
              //DMMain_FD.QOpciones.Close;
              frReporte.PrepareReport;
              frReporte.ShowReport
            end
          else
            begin
              wslsp                := Cowslsp.Create;
              CuitEmisor:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit').AsString);
              while Pos('-',CuitEmisor)<>0 do
                delete(CuitEmisor,Pos('-',CuitEmisor),1);
              if (CuitEmisor='') or (copy(CuitEmisor,1,1)='0') then
                Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

              CuitAutorizado:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit_Autorizado').AsString);
              while Pos('-',CuitAutorizado)<>0 do
                delete(CuitAutorizado,Pos('-',CuitAutorizado),1);

              CuitReceptor:= Trim(DatosCompra.CDSCompraCabCUIT.AsString);
              while Pos('-',CuitReceptor)<>0 do  delete(CuitReceptor,Pos('-',CuitReceptor),1);
              if (CuitReceptor='') or (copy(CuitReceptor,1,1)='0') then
                Raise Exception.Create (' Falta el Numero de Cuit del Receptor....');


              ArchivoIni        := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
              Clave             := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
              Certificado       := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
              ModoFcElectronica := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto

              ArchivoIni.free;

              wslsp.CUIT           := StrToFloat(CuitEmisor);// 20939802593;
              wslsp.modoProduccion := ModoFcElectronica=1;// false;
              wslsp.Depurar        := true;
              puntoVenta           := StrToInt(DatosCompra.CDSCompraCabSUCFAC.Value);//  1;
              nroComprobante       := DatosCompra.CDSCompraCabNUMEROFAC.AsInteger;
              tipoComprobante      := DatosCompra.CDSCompraCabTIPOCOMP_AFIP.AsInteger;//   186;

              Archivo:=DMMain_FD.MainPath+'Archivos Liquidaciocnes\'+DatosCompra.CDSCompraCabRAZONSOCIAL.AsString+'-'+DatosCompra.CDSCompraCabNROCPBTE.AsString+'.pdf';

              if Not(FileExists(Archivo)) then
                begin
                  if wslsp.login(Certificado ,Clave ) Then //  'certificado.crt', 'clave.key') then  begin
                    Response := wslsp.consultarLiquidacionPorNroComprobante(puntoVenta, tipoComprobante, nroComprobante);
                  if Response.respuesta.hayErrores then
                    ShowMessage(Response.respuesta.errores)
                  else
                    Response.respuesta.guardarPDF(Archivo);
                  Response.respuesta.cabecera.cae;
                 end
              else
                begin
                  ShellExecute(FormCompra_2.Handle,nil,PChar(Archivo),'','',SW_SHOWNORMAL);
                end
            end;
        end
      else
        begin
          frReporte.PrintOptions.Copies :=1;
          frReporte.PrepareReport;
          frReporte.ShowReport
        end;
    end;
end;
procedure TFormCompra_2.ImportarIAExecute(Sender: TObject);
var i            : Integer;
    CodigoProv   : string;
    CodigoM      : TMatchResult;
    CondicionIVA : Integer;
    Modo         : Integer;
    PercibeIIBB  : Boolean;
begin
  inherited;
  if Trim(DSBase.DataSet.FieldByName('codigo').AsString)='' then
    begin
      if Assigned(FormLeerPDF) then
        FreeAndNil(FormLeerPDF);
      if Not(Assigned(FormLeerPDF)) then
        FormLeerPDF:=TFormLeerPDF.Create(Self);
      FormLeerPDF.ShowModal;
      if FormLeerPDF.ModalResult=mrOk then
        begin
          if AnsiContainsText(FormLeerPDF.mtEmisor.FieldByName('condicion_iva').AsString,'INSCRIPTO') then
            CondicionIVA:=1
          else
            if AnsiContainsText(FormLeerPDF.mtEmisor.FieldByName('condicion_iva').AsString,'MONOTRIBUTO') then
              CondicionIVA:=5;

          if FormLeerPDF.mtTotales.FieldByName('percepcion_iibb').AsFloat>0 then
            PercibeIIBB:=True
          else
            PercibeIIBB:=False;

          DSBase.DataSet.FieldByName('FechaCompra').Text := FormLeerPDF.mtComprobante.FieldByName('fecha_emision').Value;
          CodigoProv := DMMain_FD.GetProveedorCuit(FormLeerPDF.mtEmisor.FieldByName('cuit').Value);
          if CodigoProv<>'' then
            DSBase.DataSet.FieldByName('Codigo').Text := CodigoProv
          else
            DSBase.DataSet.FieldByName('Codigo').Text := DMMain_FD.AltaProveedor(FormLeerPDF.mtEmisor.FieldByName('razon_social').Value,
                                                                                 FormLeerPDF.mtEmisor.FieldByName('razon_social').Value,
                                                                                 FormLeerPDF.mtEmisor.FieldByName('Cuit').AsString,
                                                                                 CondicionIVA);
          if PercibeIIBB then DatosCompra.PerciveIB:='S';

          DSBase.DataSet.FieldByName('ID_TIPOCOMPROBANTE').Text:=IntToStr(DMMain_FD.ComprobanteCompra_x_CodigoAfip(FormLeerPDF.mtComprobante.FieldByName('Codigo_afip').Value,
                                                                          DSBase.DataSet.FieldByName('SUCURSALCOMPRA').AsInteger));


          DSBase.DataSet.FieldByName('SucFac').Text      := FormLeerPDF.mtComprobante.FieldByName('punto_venta').Value;
          DSBase.DataSet.FieldByName('NumeroFac').Text   := FormLeerPDF.mtComprobante.FieldByName('numero').Value;
          FormLeerPDF.mtItems.First;
          while Not(FormLeerPDF.mtItems.Eof) do
            begin
              DatosCompra.CDSCompraDet.Append;
              CodigoM := BuscarOMatchearPorDescripcion(
                         DMMain_FD.fdcGestion,
                         CodigoProv,
                         Copy(FormLeerPDF.mtItems.FieldByName('Descripcion').AsString,1,45),
                         DMMain_fd.StockSubRubExp,
                         FormLeerPDF.mtItems.FieldByName('codigo').AsString,
                         True,
                         0.90);

              if CodigoM.Ok then
                DatosCompra.CDSCompraDetCODIGOARTICULO.Text := CodigoM.CodigoSTK
              else
                DatosCompra.CDSCompraDetCODIGOARTICULO.Text :=  '00000000';

              DatosCompra.CDSCompraDetDETALLE.AsString            := FormLeerPDF.mtItems.FieldByName('descripcion').AsString;
              DatosCompra.CDSCompraDetCANTIDAD.Text               := FormLeerPDF.mtItems.FieldByName('cantidad_bultos').AsString;
              DatosCompra.CDSCompraDetUNIDADES_GRAVADO.AsFloat    := StrToFloat(FormLeerPDF.mtItems.FieldByName('precio_unitario').AsString);
              DatosCompra.CDSCompraDetUNIDADES_EXENTO.AsFloat     := StrToFloat(AnsiReplaceText(FloatToStr(FormLeerPDF.mtItems.FieldByName('impuesto_internos').AsFloat/FormLeerPDF.mtItems.FieldByName('cantidad_bultos').AsFloat),',',''));
              if (DatosCompra.CDSCompraDetUNIDADES_EXENTO.AsFloat>0) and (DatosCompra.CDSCompraDetUNIDADES_GRAVADO.AsFloat>0) then
                begin
                  DatosCompra.CDSCompraDetMODO_GRAVAMEN.Value:='M';
                  DMMain_FD.SetStockCostos(DatosCompra.CDSCompraDetCODIGOARTICULO.AsString,
                                           datoscompra.CDSCompraDetUNIDADES_GRAVADO.AsFloat,
                                           datoscompra.CDSCompraDetUNIDADES_EXENTO.AsFloat,
                                           'M');
                end;

              DatosCompra.CDSCompraDetDESCUENTO.Text        := FormLeerPDF.mtItems.FieldByName('porcentaje_descuento').AsString;

              DatosCompra.CDSCompraDetUNIDADES_TOTAL.Text   := AnsiReplaceText(FloatToStr((FormLeerPDF.mtItems.FieldByName('impuesto_internos').AsFloat/FormLeerPDF.mtItems.FieldByName('cantidad_bultos').AsFloat) +
                                                                               FormLeerPDF.mtItems.FieldByName('precio_unitario').AsFloat),',','');
              DatosCompra.CDSCompraDet.Post;
              FormLeerPDF.mtItems.Next;
            end;

          if Not(DatosCompra.CDSPercepcionIVA.IsEmpty) then
            begin
              DatosCompra.CDSPercepcionIVA.Edit;
              DatosCompra.CDSPercepcionIVAIMPORTE.Text:= FloatToStr( FormLeerPDF.mtTotales.FieldByName('res_2126').AsFloat +
                                                                     FormLeerPDF.mtTotales.FieldByName('res_3337').AsFloat);
              //DatosCompra.CDSPercepcionIVA.Post;
            end;
          if Not(DatosCompra.CDSPercepcionIB.IsEmpty) then
            begin
              DatosCompra.CDSPercepcionIB.Edit;
              DatosCompra.CDSPercepcionIBIMPORTE.Text := FloatToStr(FormLeerPDF.mtTotales.FieldByName('percepcion_iibb').AsFloat);
              //DatosCompra.CDSPercepcionIB.Post;
            end;
        end
      else
        ShowMessage('Hay un Proveedor iniciado....' );
    end;
end;

procedure TFormCompra_2.ImprimirEtiquetasExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEtiquetasCompra)) then
    FormEtiquetasCompra:=TFormEtiquetasCompra.Create(self);
  FormEtiquetasCompra.CDSEtiquetas.CloneCursor(DatosCompra.CDSCompraDet,True,True);

  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA')).DisplayFormat  :=',0.00';
  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('CANTIDAD')).DisplayFormat          :=',0.00';
  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('UNITARIO_TOTAL')).DisplayFormat    :=',0.00';

  FormEtiquetasCompra.dbgEtiquetas.Columns[0].FieldName        :='CODIGOARTICULO';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Caption    :='Codigo';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[1].FieldName        :='DETALLE';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Caption    :='Detalle';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[2].FieldName        :='MUESTRACODIGOBARRA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Caption    :='Codigo Barra';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[3].FieldName        :='MUESTRAPRECIOVTA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Caption    :='Precio Vta';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[4].FieldName        :='CANTIDAD';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Caption    :='Cantidad';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[5].FieldName        :='UNITARIO_TOTAL';
  FormEtiquetasCompra.dbgEtiquetas.Columns[5].Title.Caption    :='Precio Costo';
  FormEtiquetasCompra.dbgEtiquetas.Columns[5].Title.Alignment  :=taCenter;

 // FormEtiquetasCompra.frDSEtiq. datafields
  FormEtiquetasCompra.ShowModal;
  FormEtiquetasCompra.BringToFront;
end;

PROCEDURE TFormCompra_2.InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING;ID_OC:Integer;NroOCompra:String);
begin
  if (DatosCompra.CDSCompraCabNUMEROFAC.AsString<>'') and (DatosCompra.CDSCompraCabSUCFAC.AsString<>'') and (DatosCompra.CDSCompraCabCODIGO.AsString<>'') then
    begin
      DeRecepcion:=True;
      DBGrillaDetalle.DataSource.DataSet.Append;
      DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCodigoArticulo, Codigo);
      DatosCompra.CDSCompraDetCantidadSetText(DatosCompra.CDSCompraDetCantidad, FloatToStr(Cantidad));
      DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUNIDADES_TOTAL, FloatToStr(Unitario));
      DatosCompra.CDSCompraDetDESCUENTO.AsFloat                 := 0;
      DatosCompra.CDSCompraDetDETALLE.Value                     := Detalle;
      DatosCompra.CDSCompraDetAFECTA_STOCK.Value                := 'N';
      DatosCompra.CDSCompraDetCON_NRO_SERIE.Value               := 'N';
      DatosCompra.CDSCompraDetID_RECEPCION_CAB.Value            := FormBuscarRecepcionesPendientes.CDSRecepDetID_CABREC.Value;
      DatosCompra.CDSCompraDetID_RECEPCION_DET.Value            := FormBuscarRecepcionesPendientes.CDSRecepDetID.Value;
      DatosCompra.CDSCompraDetNRORECEPCION.Value                := FormBuscarRecepcionesPendientes.CDSRecepCabNROCPBTE.Value;
      if Not((DatosCompra.CDSOCompra.Locate('ID_OC',(ID_OC),[]))) Then
        begin
          DatosCompra.CDSOCompra.Append;
          DatosCompra.CDSOCompraID_FC.Value    :=DatosCompra.CDSOCompraID_FC.Value;
          DatosCompra.CDSOCompraID_OC.Value    :=ID_OC;
          DatosCompra.CDSOCompraNUMERO_OC.Value:=NroOCompra;
          DatosCompra.CDSOCompra.Post;
        end;
      FormBuscarRecepcionesPendientes.CDSRecepDet.Edit;
      FormBuscarRecepcionesPendientes.CDSRecepDetID_FACTURA.Value := DatosCompra.CDSCompraCabID_FC.Value;
      FormBuscarRecepcionesPendientes.CDSRecepDetNROFACTURA.Value := DatosCompra.CDSCompraCabNROCPBTE.Value;
      FormBuscarRecepcionesPendientes.CDSRecepDet.Post;

      DBGrillaDetalle.DataSource.DataSet.Post;
    end
  else
    begin
      ShowMessage('Falta ingresar Nro de factura o datos de cabecera');
      exit;
    end;
end;


procedure TFormCompra_2.cbCaracterRecChange(Sender: TObject);
begin
  inherited;
  if cbCaracterRec.LookupSource.DataSet.IsEmpty=False then
  begin
    case cbCaracterRec.KeyValue of
      1,3,
      100,101:edRucaRec.enabled:=False
    else
      edRucaRec.enabled:=True;
    end;

    case cbCaracterRec.KeyValue of
      1,2,3,
      100,101:edRenspaRecp.enabled:=True
    else
      edRenspaRecp.enabled:=False;
    end;

    case cbCaracterRec.KeyValue of
      4,9,102,103:begin
                    if DSBase.DataSet.FieldByName('TIPOIVA').Value=1 then
                      edCuitAutorizadoRec.enabled:=True
                    else
                      edCuitAutorizadoRec.enabled:=False;
                  end
    else
      edCuitAutorizadoRec.enabled:=False;
    end;
  end;
end;

procedure TFormCompra_2.cbCaracterRecEnter(Sender: TObject);
begin
  inherited;
  if Not(DatosCompra.CDSCaracterRecepAFIP.IsEmpty) then
    begin
      DatosCompra.CDSCaracterRecepAFIP.Filtered:=False;
        CASE DatosCompra.CDSCompraCabCOD_OPERACION_AFIP.AsInteger of
           1:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (1,2,3)';
           2:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (1,2,3)';
           3:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (4,9)';
           4:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (1,2,3,4,9)';
           5:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (1,2,3,4,9)';
           6:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (1,2,3,4,9)';
         101:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101,102,103)';
         102:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101)';
         103:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101)';
         104:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101,102,103)';
         105:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101,102,103)';
         106:DatosCompra.CDSCaracterRecepAFIP.Filter:='Codigo in (100,101,102,103)';
        END;
      DatosCompra.CDSCaracterRecepAFIP.Filtered:=True;
    end;

end;

procedure TFormCompra_2.Label34DblClick(Sender: TObject);
begin
  inherited;
  edRenspaRecp.Enabled:=Not(edRenspaRecp.Enabled);
end;

procedure TFormCompra_2.Label38DblClick(Sender: TObject);
begin
  inherited;
  edRucaEmisor.Enabled:=Not(edRucaEmisor.Enabled);

end;

procedure TFormCompra_2.Label39DblClick(Sender: TObject);
begin
  inherited;
  edRucaRec.Enabled:=Not(edRucaRec.Enabled);
end;

procedure TFormCompra_2.Label42DblClick(Sender: TObject);
begin
  inherited;
  edRenspaEmisor.Enabled:=Not(edRenspaEmisor.Enabled);
end;

procedure TFormCompra_2.Label43DblClick(Sender: TObject);
begin
  inherited;
  edCuitAutorizadoEmis.Enabled:=Not(edCuitAutorizadoEmis.Enabled);
end;

procedure TFormCompra_2.Label44DblClick(Sender: TObject);
begin
  inherited;
  edCuitAutorizadoRec.Enabled:=Not(edCuitAutorizadoRec.Enabled);

end;

procedure TFormCompra_2.datosBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if DatosCompra.CDSAplicacionesTIPOCPBTE.Value='OP' then
    begin
      if Not(Assigned(FormOPago_2)) then
        FormOPago_2:=TFormOPago_2.Create(Self);
      FormOPago_2.DatoNew  :=DatosCompra.CDSAplicacionesID_CPBTE.AsString;
      FormOPago_2.TipoCpbte:=DatosCompra.CDSAplicacionesTIPOCPBTE.AsString;
      FormOPago_2.Recuperar.Execute;
      FormOPago_2.Show;
    end;

end;

procedure TFormCompra_2.lbCargaLoteClick(Sender: TObject);
var Contador:Integer;
  I: Integer;
Sufijo,Prefijo:String;
begin
  inherited;
  if Not(Assigned(FormLoteSeriales)) then
    FormLoteSeriales:=TFormLoteSeriales.Create(Self);
  FormLoteSeriales.edCantidad.Text:=DatosCompra.CDSCompraDetCANTIDAD.AsString;// CDSAjusteDetCANTIDAD.AsString;
  FormLoteSeriales.ShowModal;
  if (FormLoteSeriales.ModalResult=mrOk) and (DatosCompra.CDSCompraDetCON_NRO_SERIE.Value='S') Then //  and (AjusteDetCON_NRO_SERIE.AsString='S') then
    begin
      Sufijo := AnsiRightStr(FormLoteSeriales.Serial,4);
      Prefijo:= Copy(FormLoteSeriales.Serial,1,Length(FormLoteSeriales.Serial)-4);
      Contador:=FormLoteSeriales.Cantidad;
      for I := 0 to Contador do
        begin
          DatosCompra.CDSCompraSubDetalle.Append;//  CDSAjusteSubDetalle.Append;
          if I=0 then
             DatosCompra.CDSCompraSubDetalleSERIESetText( DatosCompra.CDSCompraSubDetalleSERIE,FormLoteSeriales.Serial)
//            CDSAjusteSubDetalleSERIESetText(CDSAjusteSubDetalleSERIE,FormLoteSeriales.Serial)
          else
            begin
              Sufijo:=IntToStr(StrToInt(Sufijo)+1);
              Sufijo:=Copy('000000',1,4-Length(Sufijo))+Sufijo;
              DatosCompra.CDSCompraSubDetalleSERIESetText( DatosCompra.CDSCompraSubDetalleSERIE,FormLoteSeriales.Serial)

//              CDSAjusteSubDetalleSERIESetText(CDSAjusteSubDetalleSERIE,Prefijo+Sufijo)
            end;
        end;
    end;
end;


procedure TFormCompra_2.roOrdenCompraCollapse(Sender: TObject);
begin
  inherited;
  if DatosCompra.CDSOCompra.RecordCount>0 then
    roOrdenCompra.Font.Style:=[fsBold]
  else
    roOrdenCompra.Font.Style:=[];
  if Assigned(FormListaOrdenCompra) then
    FormListaOrdenCompra.Close;
end;

procedure TFormCompra_2.roOrdenCompraMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  roOrdenCompra.Hint:='';
  if (DSBase.State in [dsBrowse]) and (not(DSBase.DataSet.IsEmpty)) then
    begin
     DatosCompra.CDSOCompra.First;
      while not(DatosCompra.CDSOCompra.Eof) do
        begin
          if roOrdenCompra.Hint='' then
            roOrdenCompra.Hint:=DatosCompra.CDSOCompraNUMERO_OC.AsString+'-'
          else
           roOrdenCompra.Hint:=roOrdenCompra.Hint+DatosCompra.CDSOCompraNUMERO_OC.AsString+'-';
          DatosCompra.CDSOCompra.Next;
        end;
    end;
end;

procedure TFormCompra_2.ControlaFechaFiscalClick(Sender: TObject);
begin
  inherited;
  ControlaFechaFiscal.Checked:=Not(ControlaFechaFiscal.Checked);
end;

function TFormCompra_2.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.wwCDSCompraDet.DisableControls;
  DatosCompra.CDSCompraDet.First;
  while not(DatosCompra.CDSCompraDet.Eof) and aux=True do
    begin
      aux:=True;
      if (DatosCompra.CDSCompraDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(DatosCompra.CDSCompraDetCANTIDAD.AsFloat)=DatosCompra.CDSCompraSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosCompra.CDSCompraDet.Next;
    end;
  DatosCompra.CDSCompraDet.First;
 // DatosCompra.wwCDSCompraDet.EnableControls;
  Result:=Aux;
end;


procedure TFormCompra_2.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
 if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if Not(DatosCompra.CDSCompraDet.IsEmpty)  Then
    begin
      DatosCompra.CDSCompraDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompDet.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  shPP.Visible:=True;


end;

procedure TFormCompra_2.CopiarDetallePortaPapelesExecute(Sender: TObject);
begin
  inherited;
  dbgGridTMS.CopyToClipBoard;
end;

function TFormCompra_2.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.wwCDSCompraDet.DisableControls;
  DatosCompra.CDSCompraDet.First;
  while not(DatosCompra.CDSCompraDet.Eof) and Aux=True do
    begin
      Aux:=True;
      if (DatosCompra.CDSCompraDetCONTROL_TRAZABILIDAD.Value='S') then
        begin
          if (DatosCompra.CDSCompLote.IsEmpty) then
            Aux:=False;
        end;
      DatosCompra.CDSCompraDet.Next;
    end;
  DatosCompra.CDSCompraDet.First;
  Result:=Aux;
end;




procedure TFormCompra_2.Action1Execute(Sender: TObject);
begin
  inherited;
  CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormCompra_2.ActualizaCotizacionDetalleExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
      FormCotizacion.Moneda := DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        begin
          if (DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value) = (DSBase.DataSet.FieldByName('moneda_cpbte').Value) then
            DatosCompra.CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat := FormCotizacion.Cotizacion
          else
            DatosCompra.RecotizarPrecios;
        end;
      FreeAndNil(FormCotizacion);
    end;
end;

procedure TFormCompra_2.ActulizarCotizacionExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
       FormCotizacion.Moneda := DSBase.DataSet.FieldByName('moneda_cpbte').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        DSBase.DataSet.FieldByName('moneda_cpbte_Cotizacion').AsFloat:=FormCotizacion.Cotizacion;
      FreeAndNil(FormCotizacion);
    end;
end;

procedure TFormCompra_2.AdvGridExcelIO1CellFormat(Sender: TAdvStringGrid;
  const GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var Format: TFlxFormat);
begin
  inherited;
  if GridCol>1 then
    Format.Format:='0.00';

end;

procedure TFormCompra_2.AdvGridExcelIO1ExportColumnFormat(Sender: TObject;
  GridCol, GridRow, XlsCol, XlsRow: Integer; const Value: WideString;
  var ExportCellAsString: Boolean);
begin
  inherited;
  if GridCol=0 then
    ExportCellAsString:=True;


end;

procedure TFormCompra_2.AgregarExecute(Sender: TObject);
begin
  DeRecepcion  :=False; // Flag para saber si vino de una recepcion de mercaderia
  CodigosSeries.Clear;
  dbgCtroCosto.Visible:=False;
  lbAjusteLiq.Visible :=False;
  Generado                     :=False;
  DatosCompra.Requiere_OC      :=False;
  DatosCompra.Proveedor_con_OC :=False;

  DBGrillaDetalle.ReadOnly  :=False;
  dbgCondPago.ReadOnly      :=False;
  dbgIva.ReadOnly           :=False;
  dbgPrecepcionIVA.ReadOnly :=False;
  dbgPercepcionIB.ReadOnly  :=False;
  pnCabecera.Enabled        :=True;

  roAplicaciones.Collapsed  :=True;

  DatosCompra.CDSCompraDet.EmptyDataSet;
  DatosCompra.CDSImpuestos.EmptyDataSet;
  DatosCompra.CDSPercepcionIVA.EmptyDataSet;
  DatosCompra.CDSPercepcionIB.EmptyDataSet;

  DatosCompra.CDSCompraCab.close;
  DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompra.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraCab.Open;

  DatosCompra.CDSCompraDet.Close;
  DatosCompra.CDSCompraDet.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraDet.Open;

  DatosCompra.CDSImpuestos.Close;
  DatosCompra.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompra.CDSImpuestos.Open;

  DatosCompra.CDSPercepcionIB.Close;
  DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIB.Open;

  DatosCompra.CDSPercepcionIVA.Close;
  DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIVA.Open;

  DatosCompra.CDSCondPago.Close;
  DatosCompra.CDSCondPago.Params.ParamByName('id').Clear;
  DatosCompra.CDSCondPago.Open;

  DatosCompra.CDSCompLote.Close;
  DatosCompra.CDSCompLote.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompLote.Open;

  DatosCompra.CDSProveedor.Close;
  DatosCompra.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosCompra.CDSProveedor.Open;

  DatosCompra.CDSCompraSubDetalle.Close;
  DatosCompra.CDSCompraSubDetalle.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraSubDetalle.Open;

  DatosCompra.CDSOCompra.Close;
  DatosCompra.CDSOCompra.Params.ParamByName('id').Clear;
  DatosCompra.CDSOCompra.Open;

  FormBuscarRecepcionesPendientes.CDSRecepCab.Close;
  FormBuscarRecepcionesPendientes.CDSRecepCab.Params.ParamByName('Codigo').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepCab.OPen;

  FormBuscarRecepcionesPendientes.CDSRecepDet.Close;
  FormBuscarRecepcionesPendientes.CDSRecepDet.Params.ParamByName('id').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepDet.OPen;

  inherited;
  sbEstado.SimpleText:='';
  pcDetalleFactura.ActivePageIndex := 0;
  pcDetalleFactura.ActivePageIndex := 0;
  pcModosFacturas.ActivePageIndex  := 0;
  pcDetalleFc.ActivePageIndex      := 0;
  pcOtrosDetalles.ActivePageIndex  := 0;
  if (FormCompra_2.Visible=True) then
    begin
      dbeFechaCompra.SetFocus;
      dbeFechaCompra.SelectAll;
    end;
  cbCaracterEmisor.OnChange:=Nil;
  cbCaracterRec.OnChange   :=Nil;

  //Para las Liquidaciones**********************************************
   ArchIni                   := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCompra.ini');
   cbCodOperacion.KeyValue   := ArchIni.ReadInteger('Liquidacion', 'Tipo', 0);
   cbCaracterEmisor.KeyValue := ArchIni.ReadInteger('Liquidacion', 'CaracterEmisor', 0);
   cbCaracterRec.KeyValue    := ArchIni.ReadInteger('Liquidacion', 'CaracterReceptor',0);
   cbMotivo.KeyValue         := ArchIni.ReadInteger('Liquidacion', 'Motivo', 0);
   ArchIni.Free;
  //*************************************************************
  cbCaracterEmisor.OnChange:=cbCaracterEmisorChange;
  cbCaracterRec.OnChange   :=cbCaracterRecChange;

end;

procedure TFormCompra_2.CambiaCodigoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaProveedorFactura)) then
    FormCambiaProveedorFactura:=TFormCambiaProveedorFactura.Create(self);
  FormCambiaProveedorFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCambiaProveedorFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
  FormCambiaProveedorFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCambiaProveedorFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
  FormCambiaProveedorFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
  FormCambiaProveedorFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
  FormCambiaProveedorFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
  FormCambiaProveedorFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaProveedorFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaProveedorFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormCompra_2.CambiarClaseCpbteExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      BorrarAplicaciones.Execute;
      BorraAplicacionesNC.Execute;
      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo         :=DatosCompra.CDSCompraCabTIPOCPBTE.AsString;
      FormCambiarClaseCpbte.Clase        :=DatosCompra.CDSCompraCabCLASECPBTE.AsString;
      FormCambiarClaseCpbte.Letra        :=DatosCompra.CDSCompraCabLETRAFAC.AsString;
      FormCambiarClaseCpbte.Sucursal     :=DatosCompra.CDSCompraCabSUCURSALCOMPRA.AsInteger;
      FormCambiarClaseCpbte.IdComprobante:=DatosCompra.CDSCompraCabID_FC.AsInteger;
      FormCambiarClaseCpbte.ComproVenta  :='C';
      FormCambiarClaseCpbte.ShowModal;
      DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
      TipoCpbte:=FormCambiarClaseCpbte.Tipo;
      Recuperar.Execute;
    end;
end;

procedure TFormCompra_2.CambiarDepositoExecute(Sender: TObject);
begin
  inherited;
 if (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) and (DMMain_FD.UsuarioAdministrador)  then
    begin
      if Not(Assigned(FormcambioDeposito)) then
        formCambioDeposito := TFormcambioDeposito.create(Self);
      FormCambioDeposito.Id            := DSBase.DataSet.FieldByName('ID_FC').Value;
      FormCambioDeposito.codigo        := DSBase.DataSet.FieldByName('DEPOSITO').Value;
      FormCambioDeposito.Detalle       := DSBase.DataSet.FieldByName('MUESTRADEPOSITO').Value;
      FormCambioDeposito.TipoOperacion := 'C';

      FormCambioDeposito.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormCompra_2.CambiarFechaFiscalExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFechaFiscal)) then
    FormFechaFiscal:=TFormFechaFiscal.Create(Self);
  FormFechaFiscal.Id      :=DatosCompra.CDSCompraCabID_FC.Value;
  FormFechaFiscal.Fecha   :=DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime;
  FormFechaFiscal.Detalle := DatosCompra.CDSCompraCabTIPOCPBTE.AsString+'-'+
                             DatosCompra.CDSCompraCabCLASECPBTE.AsString+'-'+
                             DatosCompra.CDSCompraCabNROCPBTE.AsString+'('+
                             DatosCompra.CDSCompraCabID_FC.AsString+')';
  FormFechaFiscal.ShowModal;
  Recuperar.Execute;
end;

procedure TFormCompra_2.CambiarFechaVencimentoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormFecha.Create(Self);
  FormFecha.dbcCtaBco.Visible   := False;
  FormFecha.dbcSucursal.Visible := False;
  FormFecha.fecha               := DSBase.DataSet.FieldByName('FECHAVTO').Value;
  FormFecha.lbCta.Visible       := False;
  FormFecha.Label1.Visible      := False;
  FormFecha.ShowModal;
  if FormFecha.ModalResult=mrOk then
    begin
     DMMain_FD.SetFechaVencimentoCompra(DSBase.DataSet.FieldByName('ID_FC').Value,FormFecha.fecha);
     Recuperar.Execute;
    end;
  if (Assigned(FormFecha)) then
    FreeAndNil(FormFecha);

end;

procedure TFormCompra_2.CancelarExecute(Sender: TObject);
begin
  CodigosSeries.Clear;
  roOrdenCompra.Collapsed   := True;
  DBGrillaDetalle.ReadOnly  := True;
  dbgCondPago.ReadOnly      := True;
  dbgIva.ReadOnly           := True;
  dbgPrecepcionIVA.ReadOnly := True;
  dbgPercepcionIB.ReadOnly  := True;
  pnCabecera.Enabled        := True;

  DatosCompra.CDSCompraDet.EmptyDataSet;
  DatosCompra.CDSImpuestos.EmptyDataSet;
  DatosCompra.CDSPercepcionIVA.EmptyDataSet;
  DatosCompra.CDSPercepcionIB.EmptyDataSet;

  if DatosCompra.CDSCompraSubDetalle.State in [dsInsert,dsEdit] Then
    DatosCompra.CDSCompraSubDetalle.Cancel;


  DatosCompra.CDSCompraCab.close;
  DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompra.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraCab.Open;

  DatosCompra.CDSCompraDet.Close;
  DatosCompra.CDSCompraDet.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraDet.Open;

  DatosCompra.CDSImpuestos.Close;
  DatosCompra.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompra.CDSImpuestos.Open;

  DatosCompra.CDSPercepcionIB.Close;
  DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIB.Open;

  DatosCompra.CDSPercepcionIVA.Close;
  DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIVA.Open;

  DatosCompra.CDSCondPago.Close;
  DatosCompra.CDSCondPago.Params.ParamByName('id').Clear;
  DatosCompra.CDSCondPago.Open;

  DatosCompra.CDSProveedor.Close;
  DatosCompra.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosCompra.CDSProveedor.Open;

  DatosCompra.CDSCompraSubDetalle.Close;
  DatosCompra.CDSCompraSubDetalle.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraSubDetalle.Open;

  DatosCompra.CDSOCompra.Close;
  DatosCompra.CDSOCompra.Params.ParamByName('id').Clear;
  DatosCompra.CDSOCompra.Open;

  FormBuscarRecepcionesPendientes.CDSRecepCab.Cancel;
  FormBuscarRecepcionesPendientes.CDSRecepDet.Cancel;

  FormBuscarRecepcionesPendientes.CDSRecepCab.Close;
  FormBuscarRecepcionesPendientes.CDSRecepCab.Params.ParamByName('Codigo').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepCab.OPen;

  FormBuscarRecepcionesPendientes.CDSRecepDet.Close;
  FormBuscarRecepcionesPendientes.CDSRecepDet.Params.ParamByName('id').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepDet.OPen;


  inherited;
  Generado:=False;
  pnCabecera.Enabled:=False;
  pcDetalleFactura.ActivePageIndex := 0;
  pcModosFacturas.ActivePageIndex  := 0;
  pcModoFactura_2.ActivePageIndex  := 0;

  pcDetalleFc.ActivePageIndex      := 0;
  pcOtrosDetalles.ActivePageIndex  := 0;
  if (FormCompra_2.Visible=True) and (btNuevo.Enabled) Then
    btNuevo.SetFocus;
end;

procedure TFormCompra_2.cbCaracterEmisorChange(Sender: TObject);
begin
//  inherited;
  if cbCaracterEmisor.LookupSource.DataSet.IsEmpty=False then
    begin
      case cbCaracterEmisor.KeyValue of
        1,3,100,
        101:edRucaEmisor.enabled:=False
      else
        edRucaEmisor.enabled:=true;
      end;

      case cbCaracterEmisor.KeyValue of
        1,2,3,100,101:edRenspaEmisor.enabled:=True
      else
        edRenspaEmisor.enabled:=False;
      end;

      case cbCaracterEmisor.KeyValue of
        4,9,
        102,
        103:edCuitAutorizadoEmis.enabled:=True
      else
        edRucaEmisor.enabled:=False;
      end;
    end;
end;

procedure TFormCompra_2.cbCaracterEmisorEnter(Sender: TObject);
begin
  inherited;
  if Not(DatosCompra.CDSCaracterEmisorAFIP.IsEmpty) then
    begin
      DatosCompra.CDSCaracterEmisorAFIP.Filtered:=False;
        CASE DatosCompra.CDSCompraCabCOD_OPERACION_AFIP.AsInteger of
           1:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 5';
           2:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 6';
           3:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 7';
           4:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 5';
           5:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo in (1,2,3,4,9)';
           6:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo in (1,2,3)';
         101:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 104';
         102:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 105';
         103:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 106';
         104:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo = 104';
         105:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo in (100,101,102,103)';
         106:DatosCompra.CDSCaracterEmisorAFIP.Filter:='Codigo in (101,102)';
        END;
      DatosCompra.CDSCaracterEmisorAFIP.Filtered:=True;
    end;

end;

procedure TFormCompra_2.cbCodOperacionEnter(Sender: TObject);
begin
  inherited;
  DatosCompra.CDSCompraCabCOD_CARACT_EMIS_AFIP.Clear;
  DatosCompra.CDSOperacionesAFIP.Filtered:=False;

  if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='180') or
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='182') then
    DatosCompra.CDSOperacionesAFIP.Filter:='Codigo in (1,2,3,101,102,103)'

  else

  if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='183') or
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='184') then
    DatosCompra.CDSOperacionesAFIP.Filter:='Codigo in (4,104)'

  else

  if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='186') or
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='188') or
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='189') then
    DatosCompra.CDSOperacionesAFIP.Filter:='Codigo in (5,105)'

  else

  if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='190') or
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value='191') then
    DatosCompra.CDSOperacionesAFIP.Filter:='Codigo in (6,106)';

  DatosCompra.CDSOperacionesAFIP.Filtered:=True;

end;

procedure TFormCompra_2.cbMotivoChange(Sender: TObject);
begin
  inherited;
  if cbMotivo.LookupSource.DataSet.IsEmpty=false then
    begin
      if cbMotivo.KeyValue=1 then
        begin
          edFechaFaena.Enabled:=True;
          edFechaRecep.Enabled:=True;
        end
      else
        begin
          edFechaFaena.Enabled:=False;
          edFechaRecep.Enabled:=False;
        end;
    end;

end;

procedure TFormCompra_2.CleanBufferExecute(Sender: TObject);
begin
  inherited;
  CodigosSeries.Clear;
  Generado                     := False;
  DatosCompra.Requiere_OC      := False;
  DatosCompra.Proveedor_con_OC := False;

  DBGrillaDetalle.ReadOnly     := False;
  dbgCondPago.ReadOnly         := False;
  dbgIva.ReadOnly              := False;
  dbgPrecepcionIVA.ReadOnly    := False;
  dbgPercepcionIB.ReadOnly     := False;
  pnCabecera.Enabled           := True;

  DatosCompra.CDSCompraDet.EmptyDataSet;
  DatosCompra.CDSImpuestos.EmptyDataSet;
  DatosCompra.CDSPercepcionIVA.EmptyDataSet;
  DatosCompra.CDSPercepcionIB.EmptyDataSet;

  DatosCompra.CDSCompraCab.close;
  DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompra.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraCab.Open;

  DatosCompra.CDSCompraDet.Close;
  DatosCompra.CDSCompraDet.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraDet.Open;

  DatosCompra.CDSImpuestos.Close;
  DatosCompra.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompra.CDSImpuestos.Open;

  DatosCompra.CDSPercepcionIB.Close;
  DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIB.Open;

  DatosCompra.CDSPercepcionIVA.Close;
  DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompra.CDSPercepcionIVA.Open;

  DatosCompra.CDSCondPago.Close;
  DatosCompra.CDSCondPago.Params.ParamByName('id').Clear;
  DatosCompra.CDSCondPago.Open;

  DatosCompra.CDSProveedor.Close;
  DatosCompra.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosCompra.CDSProveedor.Open;

  DatosCompra.CDSCompraSubDetalle.Close;
  DatosCompra.CDSCompraSubDetalle.Params.ParamByName('id').Clear;
  DatosCompra.CDSCompraSubDetalle.Open;

  DatosCompra.CDSOCompra.Close;
  DatosCompra.CDSOCompra.Params.ParamByName('id').Clear;
  DatosCompra.CDSOCompra.Open;

  FormBuscarRecepcionesPendientes.CDSRecepCab.Close;
  FormBuscarRecepcionesPendientes.CDSRecepCab.Params.ParamByName('Codigo').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepCab.OPen;

  FormBuscarRecepcionesPendientes.CDSRecepDet.Close;
  FormBuscarRecepcionesPendientes.CDSRecepDet.Params.ParamByName('id').Clear;
  FormBuscarRecepcionesPendientes.CDSRecepDet.OPen;


end;

procedure TFormCompra_2.ColumnaInvenarioClick(Sender: TObject);
begin
  inherited;
  ColumnaInvenario.Checked                  := Not(ColumnaInvenario.Checked);
  DBGrillaDetalle.Columns.Items[11].Visible := ColumnaInvenario.Checked;
  GenerarAjusteInventario.Enabled           := ColumnaInvenario.Checked;
  DBGrillaDetalle.Refresh;
end;

procedure TFormCompra_2.ConfirmaExecute(Sender: TObject);
var Detalle:String;
begin

  DatosCompra.Verifica_ImpuestosEnCero;

  if (DatosCompra.CDSCompraCabDSTO.AsString='') Then
    DatosCompra.CDSCompraCabDSTO.AsFloat:=0;
  if (DatosCompra.CDSCompraCabDSTOIMPORTE.AsString='') Then
    DatosCompra.CDSCompraCabDSTOIMPORTE.AsFloat:=0;

  if (DatosCompra.CDSPercepcionIVA.State<>dsBrowse) Then
    DatosCompra.CDSPercepcionIVA.Post;

  if (DatosCompra.CDSPercepcionIB.State<>dsBrowse) Then
    DatosCompra.CDSPercepcionIB.Post;

  if FormCompra_2.Visible then
    roOrdenCompra.Collapsed:=True;
  if (DatosCompra.CDSCompraDetCodigoArticulo.AsString='') and (DatosCompra.CDSCompraDet.State in [dsInsert,dsEdit]) Then
    DatosCompra.CDSCompraDet.Cancel;

  if (TForm(Self.Owner).Name<>'FormGeneradorCupones') and
     (TForm(Self.Owner).Name<>'FormConversorFcVta_a_Compra') and
     (TForm(Self.Owner).Name<>'FormImportarFacturaCompra') and
     (DatosCompra.ModificoIIB=False) and
     (DatosCompra.ModificoP_IVA=False) and
     (DeRecepcion=False) and
     ((DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.NewValue <> DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.OldValue) or
      (DatosCompra.CDSCompraCabDEPOSITO.NewValue <> DatosCompra.CDSCompraCabDEPOSITO.OldValue) or
      (DatosCompra.CDSCompraCabFECHACOMPRA.NewValue <> DatosCompra.CDSCompraCabFECHACOMPRA.OldValue) or
      (DatosCompra.CDSCompraCabSUCURSALCOMPRA.NewValue <> DatosCompra.CDSCompraCabSUCURSALCOMPRA.OldValue)) Then
       begin
         DatosCompra.CDSCompraDet.AfterPost  :=nil;
         DatosCompra.CDSCompraDet.AfterScroll:=nil;
         DatosCompra.ReAsignaDetalle;
         DatosCompra.CDSCompraDet.AfterPost  := DatosCompra.CDSCompraDetAfterPost;
         DatosCompra.CDSCompraDet.AfterScroll:= DatosCompra.CDSCompraDetAfterScroll;
       end;

  //DatosCompra.SumarDetalle;
  //DatosCompra.CalcularTotales;

 // DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='SERIECOMPRA';
//  DMMain_FD.QOpciones.Open;
//  Control_1:=  DMMain_FD.DBOpciones('SERIECOMPRA');   //DMMain_FD.QOpciones.Fields[0].AsString[1];

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
//  DMMain_FD.QOpciones.Open;
//  Control_2:= DMMain_FD.DBOpciones('CONTROLSERIE');//DMMain_FD.QOpciones.Fields[0].AsString[1];
//  DMMain_FD.QOpciones.Close;

  if (DatosCompra.CDSCompraCabSucFac.AsString='9999') and (DatosCompra.CDSCompraCabNumeroFac.AsString='00000000') Then
    begin
      RAISE Exception.Create('Debe especificar Nro. de Comprobante....');
      pnCabecera.Enabled:=True;
    end;

  if DatosCompra.CDSCompraDet.State in [dsInsert,dsEdit] Then
    DatosCompra.CDSCompraDet.Post;
  if DatosCompra.CDSCompraSubDetalle.State in [dsInsert,dsEdit] Then
    DatosCompra.CDSCompraSubDetalle.Post;
  TRY
    IF Moneda3D(' ',DatosCompra.MascaraCabecera, DatosCompra.CDSCompraCabTotal.AsFloat) = 0 THEN
      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
  FINALLY
  END;

  //  Verificao si hay series y si puedo o no ingresar la factura sin las series;
  //if (not Control_1) and (Control_2) Then
  if (not DMMain_FD.SerieCompra) and ( DMMain_FD.ControlaSerie) then 
    if Not(ControlSerie) {and (Control_1='N') and (Control_2='S')} and (DSBase.State=dsInsert) then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

  if Not(ControlLotes) and (DSBase.State=dsInsert) then
    RAISE Exception.Create('Hay items sin lote asignado......!!!!');

  DatoNew     := IntToStr(DatosCompra.CDSCompraCabID_FC.Value);
  TipoCpbte   := DatosCompra.CDSCompraCabTIPOCPBTE.Value;

  if DatosCompra.CDSCompraCabTIPOCPBTE.Value<>'NC' then
    DatosCompra.InformarCambioPrecio; // al archivo log de los cambios de precio

  if DatosCompra.CDSCompraCabTIPOCPBTE.Value<>'NC' then
    if (TForm(Self.Owner).Name<>'FormGeneradorCupones') and
       (TForm(Self.Owner).Name<>'FormImportarFacturaCompra') Then
    DatosCompra.InformarCambioPrecioHistorial(TForm(Self.Owner).Name); // aca hago el cambio del costo en la ficha indico el origne quein lo genero

  DatosCompra.CDSCompraCabCODIGO.OnSetText            := nil;

  if (DatosCompra.CDSCompraCab.state<>dsBrowse) and (FormCompra_2.Visible=True) Then
    DatosCompra.CDSCompraCab.Post;

  inherited;
  DatosCompra.CDSCompraCabCODIGO.OnSetText            := DatosCompra.CDSCompraCabCodigoSetText;

  Generado:=True;

  Recuperar.Execute;


  if (TForm(Self.Owner).Name<>'FormGeneradorCupones') and
     (TForm(Self.Owner).Name<>'FormConversorFcVta_a_Compra') and
     (TForm(Self.Owner).Name<>'FormImportarFacturaCompra') Then
    begin
      if Not(DSBase.DataSet.IsEmpty) and (SeguimientoCtroCosto=True) then
        DetallesCostos.Execute;
    end;

  if FueModificado Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // **** Ingreso en el Log File  **************
        Detalle:= 'Modificación de Fac.Compra: '+
                   DatosCompra.CDSCompraCabNROCPBTE.Value+
                   'Proveedor: '+
                   DatosCompra.CDSCompraCabRAZONSOCIAL.Value+
                   ' Importe Nuevo: '+
                   FormatFloat('0.00',DatosCompra.CDSCompraCabTOTAL.AsFloat)+
                   ' Importe Anterior: '+
                   FormatFloat('0.00',ImporteOriginal);
        DMMain_FD.LogFileFD(0,2,Detalle,'FACCOMP');
        // ******************************************
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('NO se ingreso registro en el LogFile....!');
      end;
    end;
  pcDetalleFactura.ActivePageIndex := 0;
  if (FormCompra_2.Visible=True) then
    btNuevo.SetFocus;

  cbCaracterEmisor.OnChange:=Nil;
  cbCaracterRec.OnChange   :=Nil;
  //Para las Liquidaciones**********************************************
  if (TForm(Self.Owner).Name<>'FormGeneradorCupones') and
     (TForm(Self.Owner).Name<>'FormConversorFcVta_a_Compra') and
     (TForm(Self.Owner).Name<>'FormImportarFacturaCompra') Then
    begin
      ArchIni                   := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.UsuarioActivo+'FcCompra.ini');
      if (VarIsNull(cbCodOperacion.KeyValue)) then
        ArchIni.WriteInteger('Liquidacion', 'Tipo', 0)
      else
        ArchIni.WriteInteger('Liquidacion', 'Tipo', cbCodOperacion.KeyValue);

      if (VarIsNull(cbCaracterEmisor.KeyValue)) then
        ArchIni.WriteInteger('Liquidacion', 'CaracterEmisor', 0)
      else
        ArchIni.WriteInteger('Liquidacion', 'CaracterEmisor', cbCaracterEmisor.KeyValue);

      if (VarIsNull(cbCaracterRec.KeyValue)) then
        ArchIni.WriteInteger('Liquidacion', 'CaracterReceptor', 0)
      else
        ArchIni.WriteInteger('Liquidacion', 'CaracterReceptor', cbCaracterRec.KeyValue);

      if (VarIsNull(cbMotivo.KeyValue)) then
        ArchIni.WriteInteger('Liquidacion', 'Motivo', 0)
      else
        ArchIni.WriteInteger('Liquidacion', 'Motivo', cbMotivo.KeyValue);

      ArchIni.Free;
    end;
  //*************************************************************
  cbCaracterEmisor.OnChange := cbCaracterEmisorChange;
  cbCaracterRec.OnChange    := cbCaracterRecChange;

  if ColumnaInvenario.Checked and not(FueModificado) and
     (TForm(Self.Owner).Name<>'FormGeneradorCupones') and
     (TForm(Self.Owner).Name<>'FormConversorFcVta_a_Compra') and
     (TForm(Self.Owner).Name<>'FormImportarFacturaCompra') then
   if MessageDlg('Generar Ajustes de Inventario....???',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
      GenerarAjusteInventario.Execute;

end;

procedure TFormCompra_2.BorraAplicacionesNCExecute(Sender: TObject);
begin
  inherited;
  DatosCompra.QBorrarAplicacionDelCpbte.Close;
  DatosCompra.QBorrarAplicacionDelCpbte.ParamByName('id').value   :=DatosCompra.CDSCompraCabID_FC.Value;
  DatosCompra.QBorrarAplicacionDelCpbte.ParamByName('Tipo').value :=DatosCompra.CDSCompraCabTIPOCPBTE.Value;
  DatosCompra.QBorrarAplicacionDelCpbte.ParamByName('Clase').value:=DatosCompra.CDSCompraCabCLASECPBTE.Value;
  DatosCompra.QBorrarAplicacionDelCpbte.ExecSQL;
  DatosCompra.QBorrarAplicacionDelCpbte.Close;
end;

procedure TFormCompra_2.BorrarAplicacionesExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;

  try
    spBorraAplicaciones.Close;
    spBorraAplicaciones.ParamByName('TIPO').Value:=DatosCompra.CDSCompraCabTIPOCPBTE.Value;
    spBorraAplicaciones.ParamByName('ID').Value  :=DatosCompra.CDSCompraCabID_FC.Value;
    spBorraAplicaciones.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spBorraAplicaciones.Close;
  Except
    spBorraAplicaciones.Close;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se Borrarorn las aplicaciones de pago en la factura....!');
  end;
end;

procedure TFormCompra_2.BorrarCAEExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and Not(DSBase.DataSet.IsEmpty) then
    begin
      Modificar.Execute;
      DSBase.DataSet.FieldByName('CAE').Value:='';
      Confirma.Execute;
    end;
end;

procedure TFormCompra_2.BorrarExecute(Sender: TObject);
var Detalle:String;
begin
  DatosCompra.QBuscaAplicaiones.Close;
  DatosCompra.QBuscaAplicaiones.ParamByName('id').Value  :=DatosCompra.CDSCompraCabID_FC.Value;
  DatosCompra.QBuscaAplicaiones.ParamByName('Tipo').Value:=DatosCompra.CDSCompraCabTIPOCPBTE.Value;
  DatosCompra.QBuscaAplicaiones.Open;
  if (DatosCompra.QBuscaAplicaiones.Fields[0].Value>0) Then
    Raise Exception.Create (' Facturas con pagos asignados....');
  DatosCompra.QBuscaAplicaiones.Close;

 if (DatosCompra.CDSCompraCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosCompra.CDSCompraCabCAE.AsString)>0) then

    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede borrar....');

  if (DMMain_FD.BorrarFcCompra) Then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if Not(DatosCompra.CDSCompraCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************
              Detalle:= 'Borrado Fac.Compra: '+
                         DatosCompra.CDSCompraCabNROCPBTE.Value+
                         'Proveedor: '+
                         DatosCompra.CDSCompraCabRAZONSOCIAL.Value+
                         'Importe: '+
                         FormatFloat('0.00',DatosCompra.CDSCompraCabTOTAL.AsFloat);

              DMMain_FD.LogFileFD(0,4,Detalle,'FACCOMP');
  
              // ******************************************
              DatosCompra.CDSCompraCab.Delete;
              DatosCompra.CDSCompraCab.ApplyUpdates(0);
              DatosCompra.CDSCompraCab.EmptyDataSet;
              DatosCompra.CDSCompraDet.EmptyDataSet;
              DatosCompra.CDSImpuestos.EmptyDataSet;
              DatosCompra.CDSPercepcionIVA.EmptyDataSet;
              DatosCompra.CDSPercepcionIB.EmptyDataSet;
              DatosCompra.CDSCondPago.EmptyDataSet;

              DMMain_FD.fdcGestion.Commit;

              DatosCompra.CDSCompraCab.close;
              DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
              DatosCompra.CDSCompraCab.Params.ParamByName('id').Clear;
              DatosCompra.CDSCompraCab.Open;

              DatosCompra.CDSCompraDet.Close;
              DatosCompra.CDSCompraDet.Params.ParamByName('id').Clear;
              DatosCompra.CDSCompraDet.Open;

              DatosCompra.CDSImpuestos.Close;
              DatosCompra.CDSImpuestos.Params.ParamByName('id').Clear;
              DatosCompra.CDSImpuestos.Open;

              DatosCompra.CDSPercepcionIB.Close;
              DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Clear;
              DatosCompra.CDSPercepcionIB.Open;

              DatosCompra.CDSPercepcionIVA.Close;
              DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Clear;
              DatosCompra.CDSPercepcionIVA.Open;

              DatosCompra.CDSCondPago.Close;
              DatosCompra.CDSCondPago.Params.ParamByName('id').Clear;
              DatosCompra.CDSCondPago.Open;

            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Factura con pagos asignados.Transacción no finalizada....!');
            end;
          end
        else
          ShowMessage('No hay registro Seleccionado');
    end
  else
    ShowMessage('No posee permisos para esta operación');
end;

procedure TFormCompra_2.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='C';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo<>'FO' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCompraCtdo_2)) then
            FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Application);
          FormCompraCtdo_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCompraCtdo_2.TipoCpbte:='FO';
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
        end;
   end
 else
    ShowMessage('No Hay Comprobante con ese Nro...');

end;

procedure TFormCompra_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Self);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatosCompra.CDSCompraCabCodigoSetText(DatosCompra.CDSCompraCabCodigo, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormCompra_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      DatosCompra.CDSBuscaSucursal.Close;
      DatosCompra.CDSBuscaSucursal.Open;
      comBuscadorSucursal.Execute;
      if comBuscadorSucursal.rOk Then
        DatosCompra.CDSCompraCabSucursalCompraSetText(DatosCompra.CDSCompraCabSucursalCompra, IntToStr(comBuscadorSucursal.Id));
      DatosCompra.CDSBuscaSucursal.Close;
    end;
end;

procedure TFormCompra_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      DatosCompra.CDSBuscaDeposito.Close;
      DatosCompra.CDSBuscaDeposito.Open;
      comBuscadorDeposito.Execute;
      if comBuscadorDeposito.rOk Then
        DatosCompra.CDSCompraCabDepositoSetText(DatosCompra.CDSCompraCabDeposito, IntToStr(comBuscadorDeposito.Id));
      DatosCompra.CDSBuscaDeposito.Close;
    end;
end;

procedure TFormCompra_2.BuscarCondCompraExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      DatosCompra.CDSBuscaCondCompra.Close;
      DatosCompra.CDSBuscaCondCompra.Params.ParamByName('Codigo').Value := DatosCompra.CDSCompraCabCodigo.Value;
      DatosCompra.CDSBuscaCondCompra.Open;
      comBuscadorCondCompra.Execute;
      if comBuscadorCondCompra.rOk Then
        DatosCompra.CDSCompraCabCondicionCompraSetText(DatosCompra.CDSCompraCabCondicionCompra, IntToStr(comBuscadorCondCompra.Id));
      DatosCompra.CDSBuscaCondCompra.Close;
    end;
end;

procedure TFormCompra_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  // si el proveedore es mercaderias y/o servicios
  if (DatosCompra.CDSCompraCabTIPO_PROVEEDOR.AsString='M') or
     (DatosCompra.CDSCompraCabTIPO_PROVEEDOR.AsString='A') Then
    begin
      FormBuscadorArticulos.Param1:=3;
      FormBuscadorArticulos.Param2:=2;
      FormBuscadorArticulos.Param3:=3;
    end
  else
    // si el proveedor es solo de servicios
    if (DatosCompra.CDSCompraCabTIPO_PROVEEDOR.AsString='G') Then
      begin
        FormBuscadorArticulos.Param1:=4;
        FormBuscadorArticulos.Param2:=5;
        FormBuscadorArticulos.Param3:=5;

      end;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCODIGOARTICULO, FormBuscadorArticulos.Codigo);
end;

procedure TFormCompra_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 1;
  if DSBase.DataSet.FieldByName('TIPOCPBTE').AsString<>'' then
    FormBuscaCpbte.TipoCpbte1:=DSBase.DataSet.FieldByName('TIPOCPBTE').AsString
  else
    begin
      FormBuscaCpbte.TipoCpbte1:='FC';
      FormBuscaCpbte.TipoCpbte2:='NC';
      FormBuscaCpbte.TipoCpbte3:='ND';
    end;
  FormBuscaCpbte.ShowModal;
  IF  (FormBuscaCpbte.Id_Rec > 0) and (FormBuscaCpbte.TipoCpbteElegido<>'FO') THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
     end
   else
    IF  (FormBuscaCpbte.Id_Rec > 0) and (FormBuscaCpbte.TipoCpbteElegido='FO') THEN
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
           FormCompraCtdo_2:=TFormCompraCtdo_2.Create(Application);
        FormCompraCtdo_2.DatoNew:=IntToStr(FormBuscaCpbte.Id_Rec);
        FormCompraCtdo_2.TipoCpbte:='FO';
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
      end;
end;

procedure TFormCompra_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      DatosCompra.CDSBuscaComprob.Close;
      DatosCompra.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosCompra.CDSCompraCabSucursalCompra.Value;
      DatosCompra.CDSBuscaComprob.Open;
    //  IF NOT (DatosCompra.CDSBuscaComprob.IsEmpty) THEN
    //    BEGIN
    //      comBuscadorComprobantes.Execute;
    //      if comBuscadorComprobantes.rOk Then
    //        DatosCompra.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.Id));
    //    END
    //  ELSE
    //    ShowMessage('No hay comprobantes definidos para esta Operación...');
    //  DatosCompra.CDSBuscaComprob.Close;

     if Not(Assigned(FormBuscaComprobantes)) then
        FormBuscaComprobantes        := TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos := DatosCompra.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;
      if FormBuscaComprobantes.ModalResult=mrOk Then
        DatosCompra.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
      DatosCompra.CDSBuscaComprob.Close;
    end;

 end;

procedure TFormCompra_2.dbgOCompraDblClick(Sender: TObject);
begin
  inherited;
  if DatosCompra.CDSOCompraID_OC.AsString<>'' Then
    begin
      if Not(Assigned(FormOrdenCompra)) then
        FormordenCompra:=TFormordenCompra.Create(Application);
      FormOrdenCompra.DatoNew    := DatosCompra.CDSOCompraID_OC.AsString;
      FormOrdenCompra.TipoCpbte  := 'OC';
      FormOrdenCompra.Recuperar.Execute;
      FormOrdenCompra.Show;
    end
  else
    ShowMessage('No hay datos para mostrar....');
//     LstOCompra.Execute;
end;

procedure TFormCompra_2.dbgOCompraDragDrop(Sender, Source: TObject; X, Y: Integer);
begin
  inherited;
 if (DatosCompra.CDSCompraCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosCompra.CDSOCompra.Append;
      DatosCompra.CDSOCompraID_OC.Value     :=(Source as TDBGrid).DataSource.DataSet.FieldByName('ID_OC').AsInteger;
      DatosCompra.CDSOCompraNUMERO_OC.Value :=(Source as TDBGrid).DataSource.DataSet.FieldByName('NroCpbte').Value;
      DatosCompra.CDSOCompra.Post;
    end;
end;

procedure TFormCompra_2.dbgOCompraDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  inherited;
  if Source=FormListaOrdenCompra.dbgOC Then
    Accept:=True
  else
    Accept:=False;
end;

procedure TFormCompra_2.DBGrillaDetalleColEnter(Sender: TObject);
var enter:Char;
begin
  inherited;
  if (DatosCompra.CDSCompraDet.State in [dsInsert,dsEdit]) and (DatosCompra.CDSCompraDetCODIGOARTICULO.AsString='') then
    DBGrillaDetalle.SelectedIndex := 0
  else
    begin
      DBGrillaDetalle.Columns[9].ReadOnly:=True;
      IF DBGrillaDetalle.SelectedIndex = 0 THEN
        sbEstado.Panels[0].Text:='F-11 Ver Mov.de Articulo'
      else
        sbEstado.Panels[0].Text:='';

      IF DBGrillaDetalle.SelectedIndex = 2 THEN
        DBGrillaDetalle.SelectedIndex := 4;
      IF DBGrillaDetalle.SelectedIndex = 3 THEN
        DBGrillaDetalle.SelectedIndex := 4;

      IF DBGrillaDetalle.SelectedIndex = 5 THEN
        DBGrillaDetalle.SelectedIndex := 6;

      IF DBGrillaDetalle.SelectedIndex = 7 THEN
        DBGrillaDetalle.SelectedIndex := 8;
      // columna del Importe Total*********************
      IF DBGrillaDetalle.SelectedIndex = 9 THEN
        if not(PermitirModifTotal.Checked) Then
          DBGrillaDetalle.SelectedIndex := 8
        else
          DBGrillaDetalle.Columns[9].ReadOnly:=False;
      //**********************************************
      IF (DBGrillaDetalle.SelectedIndex = 6) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
        BEGIN
          IF (DatosCompra.CDSCompraDet.State IN [dsEdit, dsInsert]) AND
            (DatosCompra.CDSCompraDetModo_Gravamen.Value[1] IN ['M', 'I', 'Y']) THEN
            BEGIN
              FormComposicionPrecio               := TFormComposicionPrecio.Create(Self);
              FormComposicionPrecio.ValorGravado  := DatosCompra.CDSCompraDetUNIDADES_GRAVADO.AsFloat;
              FormComposicionPrecio.ValorExento   := DatosCompra.CDSCompraDetUNIDADES_EXENTO.AsFloat;
              FormComposicionPrecio.ValorImpuesto := DatosCompra.CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat;
              FormComposicionPrecio.ShowModal;
              // FreeAndNil(ComposicionPrecioForm);
              DatosCompra.CDSCompraDetUNIDADES_EXENTO.AsFloat        := FormComposicionPrecio.ValorExento;
              DatosCompra.CDSCompraDetUNIDADES_GRAVADO.AsFloat       := FormComposicionPrecio.ValorGravado;
              DatosCompra.CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat  := FormComposicionPrecio.ValorImpuesto;
              DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUNIDADES_TOTAL,
                                                            DatosCompra.CDSCompraDetUNIDADES_TOTAL.AsString);

              DBGrillaDetalle.SelectedIndex := 8;
              enter:=#13;
              DBGrillaDetalle.OnKeyPress(Sender,Enter);

            END;
        END;
    END;
end;

procedure TFormCompra_2.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormCompra_2.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 6) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 8) THEN
              DBGrillaDetalle.SelectedIndex := 6;
      key := 0;
    END;
    IF (Key = VK_F11) and (DatosCompra.CDSCompraDetCODIGOARTICULO.AsString<>'')  THEN
      BEGIN
        IF NOT (Assigned(formDetalleCompraArticulo)) THEN
          BEGIN
            formDetalleCompraArticulo := TformDetalleCompraArticulo.Create(Application);
            formDetalleCompraArticulo.CodigoProvee  := DatosCompra.CDSCompraCabCODIGO.Value;
            formDetalleCompraArticulo.Codigo        := DatosCompra.CDSCompraDetCODIGOARTICULO.Value;
            formDetalleCompraArticulo.ShowModal;
          END;
    END;

end;

procedure TFormCompra_2.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 6) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = DatosCompra.CDSCompraDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END;
end;

procedure TFormCompra_2.DBGrillaDetalleKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key = VK_DOWN then
    DBGrillaDetalle.SelectedIndex :=  0;
end;

procedure TFormCompra_2.DBGrillaDetalleTitleClick(Column: TColumn);
var Columna : string;
begin
  inherited;
  if DSBase.State = dsBrowse then
    begin
      with DBGrillaDetalle.DataSource.DataSet as TClientDataSet do
        begin
          Campo := Column.FieldName;

            if IndexFieldNames <> Campo then
              IndexFieldNames := Campo // Ascendente
            else
            begin
              AddIndex(Campo, Campo, [], Campo); // Descendente
              IndexName := Campo;
            end;
        end;
    end;
end;

procedure TFormCompra_2.dbgCompraDTEKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgCompraDTE.SelectedIndex < 1) THEN
        dbgCompraDTE.SelectedIndex := dbgCompraDTE.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgCompraDTE.DataSource.DataSet.Eof THEN
            dbgCompraDTE.DataSource.DataSet.Append;
          dbgCompraDTE.SelectedIndex := 0;
        END;
    END;
end;

procedure TFormCompra_2.dbgCondPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgCondPago.SelectedIndex < 2) THEN
        dbgCondPago.SelectedIndex := dbgCondPago.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgCondPago.DataSource.DataSet.Eof THEN
            dbgCondpago.DataSource.DataSet.Append;
          dbgCondPago.SelectedIndex := 0;
        END;
    END;
end;

procedure TFormCompra_2.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  SinBDE   := 2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcDetalleFactura.ActivePageIndex := 0;
  IF NOT (Assigned(DatosCompra)) THEN
    DatosCompra := TDatosCompra.Create(Self);
  dsBase.DataSet:=DatosCompra.CDSCompraCab;

  if Not(Assigned(FormBuscarRecepcionesPendientes)) Then
    FormBuscarRecepcionesPendientes:=TFormBuscarRecepcionesPendientes.Create(Self);

  pagGastosTributos.TabVisible:=False;

  WITH DMCompra.DatosCompra DO
    BEGIN
      AddClientDataSet(CDSCompraCab, DSPCompraCab);
      AddClientDataSet(CDSCompraDet, DSPCompraDet);
      AddClientDataSet(CDSImpuestos, DSPImpuestos);
      AddClientDataSet(CDSPercepcionIVA, DSPPercepcionIVA);
      AddClientDataSet(CDSPercepcionIB, DSPPercepcionIB);
      AddClientDataSet(CDSCondPago, DSPCondPago);
      AddClientDataSet(CDSCompraSubDetalle,DSPComprSubDet);
      AddClientDataSet(CDSCompLote,DSPCompLote);
      AddClientDataSet(CDSOCompra,DSPOCompra);
      AddClientDataSet(CDSCompraTributos,DSPCompraTributos);
      AddClientDataSet(CDSCompraGastos,DSPCompraGastos);
      AddClientDataSet(CDSCompra_DTE,DSPCompra_DTE);
      AddClientDataSet(CDSRetIVA,DSPRetIVA);
      AddClientDataSet(CDSCarneCab,DSPCarneCab);
      AddClientDataSet(CDSCarneDet,DSPCarneDet);



      AddClientDataSet(FormBuscarRecepcionesPendientes.CDSRecepCab,FormBuscarRecepcionesPendientes.DSPRecepCab);
      AddClientDataSet(FormBuscarRecepcionesPendientes.CDSRecepDet,FormBuscarRecepcionesPendientes.DSPRecepDet);

      DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
      DatosCompra.CDSCompraCab.Params.ParamByName('id').Clear;

      DatosCompra.CDSCompraDet.Params.ParamByName('id').Clear;

      DatosCompra.CDSCompraSubDetalle.Params.ParamByName('id').Clear;

      DatosCompra.CDSImpuestos.Params.ParamByName('id').Clear;

      DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Clear;

      DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Clear;

      DatosCompra.CDSCondPago.Params.ParamByName('id').Clear;

      DatosCompra.CDSRetIVA.Params.ParamByName('id').Clear;

      CDSListaIVA.Open;
      CDSRazaAFIP.Open;

      CDSCompraCab.Open;
      CDSCompraDet.Open;
      CDSImpuestos.Open;
      CDSCondPago.Open;
      CDSPercepcionIB.Open;
      CDSPercepcionIVA.Open;
      CDSCompraSubDetalle.Open;

      CDSCompLote.MasterFields:='';
      CDSCompLote.MasterSource:=Nil;
      CDSCompLote.Open;
      CDSCompLote.MasterFields:='ID';
      CDSCompLote.MasterSource:=DatosCompra.DSCompraDet;

      CDSOCompra.Open;
      CDSEmpresa.Open;
      CDSCompraTributos.Open;
      CDSCompraGastos.Open;
      CDSCompra_DTE.Open;
      CDSRetIVA.Open;

      CDSCarneCab.Open;
      CDSCarneDet.Open;

      CDSCompraCab.EmptyDataSet;
      CDSCompraDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      CDSCondPago.EmptyDataSet;
      CDSPercepcionIB.EmptyDataSet;
      CDSPercepcionIVA.EmptyDataSet;
      CDSCompraSubDetalle.EmptyDataSet;
      CDSCompLote.EmptyDataSet;
      CDSOCompra.EmptyDataSet;
      CDSCompraTributos.EmptyDataSet;
      CDSCompraGastos.EmptyDataSet;
      CDSCompra_DTE.EmptyDataSet;

      CDSCarneCab.EmptyDataSet;
      CDSCarneDet.EmptyDataSet;


      CDSGastosAFIP.Open;
      CDSOperacionesAFIP.Open;
      CDSCaracterEmisorAFIP.Open;
      CDSCaracterRecepAFIP.Open;
      CDSCortesAFIP.Open;
      CDSTipoLiqAFIP.Open;
      CDSMotivosAFIP.Open;
      CDSTributosAFIP.Open;

//      cbCodOperacion.LookupSource  := DatosCompra.DSOperacionesAFIP;
//      cbMotivo.LookupSource        := DatosCompra.DSMotivosAFIP;
//      cbCaracterRec.LookupSource   := DatosCompra.DSCaracterRecepAFIP;
//      cbCaracterEmisor.LookupSource:= DatosCompra.DSCaracterEmisorAFIP;


      AplicarMascarasNumericas;
    END;
   // Listado de Serie en memoria
   roOrdenCompra.Collapsed  := True;
   roAplicaciones.Collapsed := True;
   CodigosSeries            := TStringList.Create;
   CodigosSeries.Clear;
   VerAplicaciones.Enabled  := False;
   Tabla:='FcCompCab';
   Campo:='id_fc';
 //*************************************************************
   ArchIni                      := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCompra.ini');
   VerCodigoAlternativo.Checked := ArchIni.ReadBool('codigo', 'codigo', False);
   ControlaFechaFiscal.Checked  := ArchIni.ReadBool('fecha', 'fechafiscal', True);
   VerUnidadesdeStock1.Checked  := ArchIni.ReadBool('VerUnidades', 'Unidades', False);
   ColumnaInvenario.Checked     := ArchIni.ReadBool('VerInventario', 'Inventariar', False);

   PermitirModifTotal.Checked   := ArchIni.ReadBool('PrecioTotal', 'ModificaTotal', False);
   ArchIni.Free;
   pcDetalleFactura.ActivePageIndex  := 0;
   pcModosFacturas.ActivePageIndex   := 0;
   pcModoFactura_2.ActivePageIndex   := 0;
   pcDetalleFc.ActivePageIndex       := 0;
   pcModoFactura_2.ActivePageIndex   := 0;
   pcOtrosDetalles.ActivePageIndex   := 0;

   DBGrillaDetalle.Columns.Items[10].Visible := VerUnidadesdeStock1.Checked;
   DBGrillaDetalle.Columns.Items[11].Visible := ColumnaInvenario.Checked;
   GenerarAjusteInventario.Enabled           := ColumnaInvenario.Checked;

   SearchAssignGrid(DBGrillaDetalle);

   //*************************************************************
  // pnModoMoneda.BevelOuter:= bvNone;
 //  pnDivisas.Movable:=True;
//JvDBLookupComboEdit1.

end;

procedure TFormCompra_2.DetalleMediaResExecute(Sender: TObject);
var I:integer;
begin
  inherited;
  if Not(DatosCompra.CDSCompraDet.IsEmpty) and (DSBase.State<>dsBrowse) then
    begin
      if (DatosCompra.CDSCompraDet.State<>dsBrowse) and (DatosCompra.CDSCompraDetCODIGOARTICULO.AsString<>'') then
        DatosCompra.CDSCompraDet.post
      else
        DatosCompra.CDSCompraDet.Cancel;



    if Not(Assigned(FormMediasResesCompra)) then
      FormMediasResesCompra:=TFormMediasResesCompra.create(self);
    FormMediasResesCompra.Id_Det:=DatosCompra.CDSCompraDetID.Value;
    FormMediasResesCompra.Id_Cab:=DatosCompra.CDSCompraDetID_CABFAC.Value;
    FormMediasResesCompra.showmodal;
    if FormMediasResesCompra.ModalResult=mrOk then
      begin
  //      function TDMMain_FD.IngresarMediaRes(id_cab,
  //                                           Id_det: Integer;
  //                                           clasificacion,
  //                                           NroTropa: String;
  //                                           kilos,
  //                                           medias:Integer;
  //                                           Arreglo: TStringList): Boolean;

        DatosCompra.CDSCarneCab.Append;
        DatosCompra.CDSCarneCabID.Value            := DatosCompra.ibgCarneCab.IncrementFD(1);
        DatosCompra.CDSCarneCabID_DET.Value        := FormMediasResesCompra.Id_Det;
        DatosCompra.CDSCarneCabCLASIFICACION.Value := FormMediasResesCompra.Clase;
        DatosCompra.CDSCarneCabNRO_TROPA.Value     := IntToStr(FormMediasResesCompra.NumeroTropa);
        DatosCompra.CDSCarneCabT_KILOS.Value       := FormMediasResesCompra.TotalKg;
        DatosCompra.CDSCarneCabT_MEDIAS.Value      := FormMediasResesCompra.TotalReses;

        for I := 0 to FormMediasResesCompra.Matriz.Count-1 do
          begin
            if FormMediasResesCompra.Matriz[i]<>'' then
              begin
                DatosCompra.CDSCarneDet.Append;
                DatosCompra.CDSCarneDetID.Value       := DatosCompra.ibgCarneDet.IncrementFD(1);
                DatosCompra.CDSCarneDetID_DET.Value   := DatosCompra.CDSCompraDetID.Value;
                DatosCompra.CDSCarneDetMEDIA.Value    := StrToInt(FormMediasResesCompra.Matriz[i]);
                DatosCompra.CDSCarneDetEN_STOCK.Value := 'S';
                DatosCompra.CDSCarneDet.Post;
              end;
          end;
        DatosCompra.CDSCarneCab.Post;


       {
        DMMain_FD.IngresarMediaRes(FormMediasResesCompra.Id_Cab,
                                   FormMediasResesCompra.Id_Det,
                                   FormMediasResesCompra.Clase,
                                   FormMediasResesCompra.NumeroTropa,
                                   FormMediasResesCompra.TotalKg,
                                   FormMediasResesCompra.TotalReses,
                                   FormMediasResesCompra.Matriz);
        }
      end;
    end;
end;

procedure TFormCompra_2.DetallesCostosExecute(Sender: TObject);
VAR pos:Integer;
Valor,Importe,Dscto:Extended;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  := DatosCompra.CDSCompraCabID_FC.Value;
      FormAsignacionCentroCosto.TipoCpbte:= DatosCompra.CDSCompraCabTIPOCPBTE.Value;
      FormAsignacionCentroCosto.Tipo     := 'E';
      FormAsignacionCentroCosto.Total    := RoundTo(DatosCompra.CDSCompraCabNETOGRAV2.AsFloat +
                                                    DatosCompra.CDSCompraCabNETOEXEN2.AsFloat +
                                                    DatosCompra.CDSCompraCabIMPORTEEXCLUIDO2.ASFloat +
                                                    DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

      DBGrillaDetalle.DataSource.DataSet.First;
      while Not(FormCompra_2.DBGrillaDetalle.DataSource.DataSet.Eof) do
        begin
          pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(DBGrillaDetalle.Columns[0].Field.Text);
          if Pos<0 Then
            begin
              FormAsignacionCentroCosto.LstConcepto.Append(DBGrillaDetalle.Columns[0].Field.Text );
              FormAsignacionCentroCosto.LstDetalles.Append(DBGrillaDetalle.Columns[1].Field.Text );
              Importe:= StrToFloat(AnsiReplaceText(DBGrillaDetalle.Columns[9].Field.Text,',',''));
              Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
              Importe:= Importe * Dscto;
              FormAsignacionCentroCosto.LstImportes.Append(FloatToStr(Importe));
             end
           else
             begin
               Importe:= StrToFloat(AnsiReplaceText(DBGrillaDetalle.Columns[9].Field.Text,',',''));
               Dscto  := 1-(DatosCompra.CDSCompraCabDSTO.AsFloat * 0.01);
               Importe:= Importe * Dscto;
               Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',',''))+ Importe;
               FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
             end;
          DBGrillaDetalle.DataSource.DataSet.Next;
        end;

      FormAsignacionCentroCosto.ShowModal;

      dbgCtroCosto.Visible:=False;
      DetallesCostos.ImageIndex:=10;
      if DMMain_FD.AplicPorCtroCosto(DatosCompra.CDSCompraCabID_FC.AsInteger,
                                     DatosCompra.CDSCompraCabTIPOCPBTE.AsString,
                                     'E') then
        begin
          DetallesCostos.ImageIndex:=11;
          dbgCtroCosto.Visible:=True;
        end;
    end;
end;

procedure TFormCompra_2.DSBaseStateChange(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  pnPrincipal.Enabled:=True;
  pnCabecera.Enabled             := DSBase.DataSet.State IN [dsInsert];
  dbgCondPago.ReadOnly           := DSBase.DataSet.State IN [dsBrowse];
//  pagStandar.Enabled             := DSBase.DataSet.State IN [dsInsert];
  pcDetalleFactura.Enabled       := True;
  DBGrillaDetalle.ReadOnly       := DSBase.DataSet.State IN [dsBrowse];
  dbgIva.ReadOnly                := DSBase.DataSet.State IN [dsBrowse];
  dbgCondPago.ReadOnly           := DSBase.DataSet.State IN [dsBrowse];
  dbgPrecepcionIVA.ReadOnly      := DSBase.DataSet.State IN [dsBrowse];
  dbgPercepcionIB.ReadOnly       := DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly             := DSBase.DataSet.State IN [dsBrowse];
  dbgDetalleLotes.ReadOnly       := DSBase.DataSet.State IN [dsBrowse];
  dbgDetalleLiquidacion.ReadOnly := DSBase.DataSet.State IN [dsBrowse];
  dbgGastos.ReadOnly             := DSBase.DataSet.State IN [dsBrowse];
  GenerarTx.Enabled              := DSBase.DataSet.State IN [dsBrowse];
  AnulaLiquidacion.Enabled       := DSBase.DataSet.State IN [dsBrowse];
  dbgTributos.ReadOnly           := DSBase.DataSet.State IN [dsBrowse];
  RxDBECondCompra.Enabled        := DSBase.DataSet.State IN [dsInsert,dsEdit];
  RxDBEDeposito.Enabled          := DSBase.DataSet.State IN [dsInsert,dsEdit];
  PasaDetallesAStock.Enabled     := DSBase.DataSet.State IN [dsBrowse];

  BuscarRecepciones.Enabled:= DSBase.DataSet.State IN [dsInsert];
  if (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) Then
    begin
      DecodeDate(DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime;
      DMStoreProcedure.QVerificaPeriodoFiscal.Open;

      Borrar.Enabled    :=Not( DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C');
      Modificar.Enabled :=Not( DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C');
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;


    end;
  DetallesCostos.Enabled       := DSBase.DataSet.State IN [dsBrowse];
  Imprimir.Enabled             := (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  spMenu.Enabled               := (DSBase.DataSet.State in [dsBrowse]);
  roAplicaciones.Enabled       := (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  Fiscalizar.Enabled           := (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  Duplicar.Enabled             := DMMain_FD.UsuarioAdministrador;
  ReCalcularSinControl.Enabled := DMMain_FD.UsuarioActivo='master';
  spTx.Enabled                 := (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  AsignarObra.Enabled          := (DSBase.DataSet.FieldByName('ANULADO').Value='N') and Not(DSBase.DataSet.IsEmpty);
  ImportarIA.Enabled           := Not(DSBase.DataSet.State IN [dsBrowse]);
  // roOrdenCompra.Enabled  := Not(DSBase.DataSet.State in [dsBrowse]);

end;

procedure TFormCompra_2.DuplicarExecute(Sender: TObject);
var i:byte;
Nombre:String;
P_Gravado,P_Exento,P_ConIVA,Importe_Iva,P_Total:Extended;
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador) and (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      DatosCompra.CDSCompraCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompCab.XML');
      DatosCompra.CDSCompraDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompDet.XML');
      DatosCompra.CDSCompraGastos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcGastos.XML');

      DatosCompra.CDSCabeceraXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompCab.XML');
      DatosCompra.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompDet.XML');
      DatosCompra.CDSGastosXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcGastos.XML');

      Agregar.Execute;
      For i:=0 to DatosCompra.CDSCabeceraXML.FieldCount-1 do
        begin
          if DatosCompra.CDSCompraCab.FindField(DatosCompra.CDSCabeceraXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=DatosCompra.CDSCabeceraXML.Fields[i].FieldName;
              if (Nombre<>'ID_FC') Then
                DatosCompra.CDSCompraCab.FieldByName(Nombre).Value:=DatosCompra.CDSCabeceraXML.FieldByName(Nombre).Value;
            end;
        end;
      DatosCompra.CDSCompraCabID_CPBTE_ANULADO_LIQ.Value:=DatosCompra.CDSCabeceraXML.FieldByName('ID_FC').Value;

      while not(DatosCompra.CDSDetalleXML.Eof) do
        begin
          DatosCompra.CDSCompraDet.Append;
          For i:=0 to DatosCompra.CDSDetalleXML.FieldCount-1 do
            begin
              if DatosCompra.CDSCompraDet.FindField(DatosCompra.CDSDetalleXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosCompra.CDSDetalleXML.Fields[i].FieldName;
                  if Nombre<>'ID' Then
                    DatosCompra.CDSCompraDet.FieldByName(Nombre).Value:=DatosCompra.CDSDetalleXML.FieldByName(Nombre).Value;
                end;
            end;

          DatosCompra.CDSCompraDetId_CabFac.Value:=DatosCompra.CDSCompraCabID_FC.Value;
          DatosCompra.CDSCompraDet.Post;
          DatosCompra.CDSDetalleXML.Next;
        end;

      while not(DatosCompra.CDSCompraGastos.Eof) do
        begin
          DatosCompra.CDSCompraGastos.Append;
          For i:=0 to DatosCompra.CDSCompraGastos.FieldCount-1 do
            begin
              if DatosCompra.CDSCompraGastos.FindField(DatosCompra.CDSGastosXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosCompra.CDSGastosXML.Fields[i].FieldName;
                  if Nombre<>'ID' Then
                    DatosCompra.CDSCompraGastos.FieldByName(Nombre).Value:=DatosCompra.CDSGastosXML.FieldByName(Nombre).Value;
                end;
            end;

          DatosCompra.CDSCompraGastosID_FC.Value:=DatosCompra.CDSCompraCabID_FC.Value;
          DatosCompra.CDSCompraGastos.Post;
          DatosCompra.CDSGastosXML.Next;
        end;

      DatosCompra.CDSCompraCabCAE.Value         :='0';
      DatosCompra.CDSCompraCabCAE_VENCIMIENTO.Clear;
   end
end;

procedure TFormCompra_2.ExportarExcelCSVExecute(Sender: TObject);
begin
  inherited;
  if OpenDialog1.Execute then
    begin
      OpenDialog1.DefaultExt:='XLS';
      if ExtractFileExt(OpenDialog1.FileName)='' then
        OpenDialog1.FileName:=OpenDialog1.FileName+'.'+OpenDialog1.DefaultExt;
      AdvGridExcelIO1.XLSExport(OpenDialog1.FileName)
    end;
end;

procedure TFormCompra_2.FiscalizarExecute(Sender: TObject);
var CuitEmisor,CuitAutorizado,CuitAutorizadoRec,CuitReceptor:String;
  d,m,y:word;
  Certificado,Clave:String;
  wslsp      : Iwslsp;
  Solicitud  : IGenerarLiquidacionReq;
  Response   : IGenerarLiquidacionResp;
  ConsultaUltimoNroResponse: IConsultarUltimoNroComprobantePorPtoVtaResp;
  puntoVenta               : Integer;
  tipoComprobante          : Integer;
  I: Integer;
  Produccion:Boolean;
  BaseImponible:Double;
begin
  inherited;
  Agregar.Enabled:=False;
  if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'180') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'182') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'183') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'185') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'186') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'188') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'151') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'152') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'153') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'154') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'155') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'156') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'157') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'158') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'159') and
     (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'189') and (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value<>'191') Then
    begin
      if (DatosCompra<>nil) and (DatosCompra.CDSCompraCabFACTURA_ELECTRONICA.Value='S') and (DatosCompra.CDSCompraCabCAE.AsFloat<=0) then
        begin
          if  Not(Assigned(FormFiscalizacion)) then
            FormFiscalizacion:= TFormFiscalizacion.Create(self);

         // DatosVentas.CDSEmpresa.Close;
         // DatosVentas.CDSEmpresa.Open;

          CuitEmisor:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit').AsString);
          while Pos('-',CuitEmisor)<>0 do
            delete(CuitEmisor,Pos('-',CuitEmisor),1);
          if (CuitEmisor='') or (copy(CuitEmisor,1,1)='0') then
            Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

          FormFiscalizacion.CuitVdor    := StrToFloat(CuitEmisor);

          CuitReceptor:= DatosCompra.CDSCompraCabCUIT.AsString;
          if CuitReceptor='' then CuitReceptor:='00000000000';

          while Pos('-',CuitReceptor)<>0 do
            delete(CuitReceptor,Pos('-',CuitReceptor),1);

          FormFiscalizacion.CuitComp    := StrToFloat(CuitReceptor);
          FormFiscalizacion.PtoVenta    := StrToInt(DatosCompra.CDSCompraCabSUCFAC.Value);
          FormFiscalizacion.FechaVta    := FormatDateTime('yyyymmdd', Date);
          FormFiscalizacion.Total       := DatosCompra.CDSCompraCabTOTAL.AsFloat;
          FormFiscalizacion.TotalNeto   := DatosCompra.CDSCompraCabNETOGRAV2.AsFloat;
          FormFiscalizacion.TotalExento := DatosCompra.CDSCompraCabNETOEXEN2.AsFloat+DatosCompra.CDSCompraCabNETOMONOTRIBUTO2.ASFloat;
          FormFiscalizacion.TotalIIBB   := 0;
          FormFiscalizacion.TasaIIBB    := 0;
          FormFiscalizacion.Nombre      := DatosCompra.CDSCompraCabRAZONSOCIAL.AsString;
          FormFiscalizacion.Domicilio   := DatosCompra.CDSCompraCabDIRECCION.AsString;
          FormFiscalizacion.BaseImpIIBB := DatosCompra.CDSCompraCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
          FormFiscalizacion.DatosImp    := DatosCompra.CDSImpuestos;
          FormFiscalizacion.URLWSAA     := FormCompra_2.URLWSAA;
          FormFiscalizacion.URLWSW      := FormCompra_2.URLWSW;
          FormFiscalizacion.URLWSW_EX   := FormCompra_2.URLWSW_EX;
          FormFiscalizacion.NumeroActual:= DatosCompra.CDSCompraCabNUMEROFAC.AsFloat;

          if (DatosCompra.CDSCompraCabTIPOCPBTE.Value='FC') and (DatosCompra.CDSCompraCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosCompra.CDSCompraCabMUESTRACODIGOAFIP.AsInteger// 34
          else
            if (DatosCompra.CDSCompraCabTIPOCPBTE.Value='FC') and (DatosCompra.CDSCompraCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosCompra.CDSCompraCabMUESTRACODIGOAFIP.AsInteger;// 35;

          if (DatosCompra.CDSCompraCabCLASECPBTE.Value='LQ') and (DatosCompra.CDSCompraCabLETRAFAC.Value='A') then
            FormFiscalizacion.TipoComp:=DatosCompra.CDSCompraCabMUESTRACODIGOAFIP.AsInteger;//  63;

          if (DatosCompra.CDSCompraCabCLASECPBTE.Value='LQ') and (DatosCompra.CDSCompraCabLETRAFAC.Value='B') then
            FormFiscalizacion.TipoComp:=DatosCompra.CDSCompraCabMUESTRACODIGOAFIP.AsInteger;//  64;

          if (DatosCompra.CDSCompraCabLETRAFAC.Value<>'E') then
            begin
              if (DatosCompra.CDSCompraCabTOTAL.AsFloat<1000) and
                 (DatosCompra.CDSCompraCabLETRAFAC.Value='B') and
                 (DatosCompra.CDSCompraCabTIPOIVA.Value=3) Then
                FormFiscalizacion.TipoDocumento := 99
              else
                FormFiscalizacion.TipoDocumento := 80;
              if (DatosCompra.CDSCompraCabTOTAL.AsFloat>1000) and
                 (DatosCompra.CDSCompraCabLETRAFAC.Value='B') and
                 (DatosCompra.CDSCompraCabTIPOIVA.Value=3) Then
                begin
                  FormFiscalizacion.TipoDocumento := 96;
                end;
            end;


          FormFiscalizacion.Certificado := FormCompra_2.CertificadoElectronico;
          FormFiscalizacion.Clave       := FormCompra_2.ClaveElectronica;

          FormFiscalizacion.ShowModal;
          if FormFiscalizacion.Resultado='A' then
            begin
              FormCompra_2.Modificar.Enabled:=True;
              FormCompra_2.Modificar.Execute;
              if FormFiscalizacion.Revision=False then
                DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime := Date;
              DatosCompra.CDSCompraCabNUMEROFAC.Value:= copy('00000000',1,8-length(FloatToStr(FormFiscalizacion.Numero)))+FloatToStr(FormFiscalizacion.Numero);
              DatosCompra.CDSCompraCabCAE.Value      := FormFiscalizacion.CAE;
              d:=StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
              m:=StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
              y:=StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

              DatosCompra.CDSCompraCabCAE_VENCIMIENTO.AsDateTime := EncodeDate(y,m,d);
              //if FormFiscalizacion.Ajustar then
              //  DatosCompra.ReCalcularIva;
              FormCompra_2.Confirma.Execute;
            end;
        end;
    end
  else
    if (DatosCompra<>nil) and (DatosCompra.CDSCompraCabFACTURA_ELECTRONICA.Value='S') and (DatosCompra.CDSCompraCabCAE.AsFloat<=0) then
      begin
        wslsp                := Cowslsp.Create;
        CuitEmisor:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit').AsString);
        while Pos('-',CuitEmisor)<>0 do
          delete(CuitEmisor,Pos('-',CuitEmisor),1);
        if (CuitEmisor='') or (copy(CuitEmisor,1,1)='0') then
          Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

        CuitAutorizado:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit_Autorizado').AsString);
        while Pos('-',CuitAutorizado)<>0 do
          delete(CuitAutorizado,Pos('-',CuitAutorizado),1);

        CuitReceptor:= Trim(DatosCompra.CDSCompraCabCUIT.AsString);
        while Pos('-',CuitReceptor)<>0 do  delete(CuitReceptor,Pos('-',CuitReceptor),1);
        if (CuitReceptor='') or (copy(CuitReceptor,1,1)='0') then
          Raise Exception.Create (' Falta el Numero de Cuit del Receptor....');

        ArchivoIni        := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.NombreIni);
        Clave             := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
        Certificado       := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
        ModoFcElectronica := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
        ArchivoIni.free;

        wslsp.CUIT           := StrToFloat(CuitEmisor);// 20939802593;
        wslsp.modoProduccion := ModoFcElectronica=1;// false;
        wslsp.Depurar        := true;
        puntoVenta           := StrToInt(DatosCompra.CDSCompraCabSUCFAC.Value);//  1;
        tipoComprobante      := DatosCompra.CDSCompraCabTIPOCOMP_AFIP.AsInteger;//   186;

        if wslsp.login(Certificado ,Clave ) Then //  'certificado.crt', 'clave.key') then
          begin
            ConsultaUltimoNroResponse := wslsp.consultarUltimoNroComprobantePorPtoVta(puntoVenta, tipoComprobante);
            if not ConsultaUltimoNroResponse.respuesta.hayErrores then
              begin
                try
                  Solicitud := wslsp.nuevaLiquidacion;
                  if edCuitAutorizadoEmis.Enabled then
                    Solicitud.emisor.cuitAutorizado             :=StrToFloat(CuitAutorizado);

                  Solicitud.codOperacion                        := cbCodOperacion.KeyValue;// 5;
                  Solicitud.emisor.puntoVenta                   := puntoVenta;
                  Solicitud.emisor.tipoComprobante              := tipoComprobante;
                  Solicitud.emisor.nroComprobante               := ConsultaUltimoNroResponse.respuesta.nroComprobante + 1;
                  if cbCaracterEmisor.Enabled then
                    Solicitud.emisor.codCaracter                := cbCaracterEmisor.KeyValue;// 4;
                  Solicitud.emisor.fechaInicioActividades       := FormatDateTime('YYYY-MM-DD',DatosCOmpra.CDSEmpresaFECHA_INICIO_ACTI.AsDateTime);// '2005-01-01';
                  Solicitud.emisor.iibb                         := CuitEmisor;// '20160000261';//'20939802593';

                  if edRucaEmisor.Enabled then
                    Solicitud.emisor.nroRUCA                    := DatosCompra.CDSEmpresaNRO_RUCA.Value;// 1111;

                  if edCuitAutorizadoRec.Enabled then
                    begin
                      CuitAutorizadoRec:= Trim( DatosCompra.CDSCompraCabCUIT_AUTORIZADO_RECEP.AsString);
                      while Pos('-',CuitAutorizadoRec)<>0 do
                        delete(CuitAutorizadoRec,Pos('-',CuitAutorizadoRec),1);
                      if CuitAutorizadoRec<>'' then
                      Solicitud.receptor.operador.cuitAutorizado:=StrToFloat(CuitAutorizadoRec);
                    end;

                  if cbCaracterRec.Enabled then
                    Solicitud.receptor.codCaracter                := cbCaracterRec.KeyValue;// 4;
                  Solicitud.receptor.operador.cuit              := StrToFloat(CuitReceptor);// 30160000011; //20160000024;             //******
                  Solicitud.receptor.operador.iibb              := CuitReceptor;// '20160000024';

                  if edRenspaRecp.Enabled then
                    Solicitud.receptor.operador.nroRenspa       := DatosCompra.CDSCompraCabNRO_RENSPA_RECEP.Value;  //***/

                  if edRucaRec.Enabled then
                    Solicitud.receptor.operador.nroRUCA         := DatosCompra.CDSCompraCabNRO_RUCA_RECEPTOR_AFIP.AsFloat;// 1011;  //***/

                  Solicitud.datosLiquidacion.fechaComprobante   := FormatDateTime('YYYY-MM-DD',DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime);//  '2018-07-16';
                  Solicitud.datosLiquidacion.fechaOperacion     := FormatDateTime('YYYY-MM-DD',DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime);// '2018-07-16';

                  if edFechaFaena.Enabled then
                    Solicitud.datosLiquidacion.fechaFaena       := FormatDateTime('YYYY-MM-DD',DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime);// '2018-07-16';
                  if edFechaRecep.Enabled then
                    Solicitud.datosLiquidacion.fechaRecepcion   := FormatDateTime('YYYY-MM-DD',DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime);// '2018-07-16';

                  if (cbCodOperacion.KeyValue=2) or (cbCodOperacion.KeyValue=102) or
                    (cbCodOperacion.KeyValue=3) or (cbCodOperacion.KeyValue=103)then
                  begin
                    Solicitud.datosLiquidacion.frigorifico.CUIT      := StrToFloat(CuitEmisor);
                    Solicitud.datosLiquidacion.frigorifico.nroPlanta := 1;
                  end;

                  Solicitud.datosLiquidacion.lugarRealizacion   := Trim(DatosCompra.CDSCompraCabLUGAR_REALIZA_AFIP.AsString);// 'CORONEL SUAREZ';
                  Solicitud.datosLiquidacion.codMotivo          := cbMotivo.KeyValue;// 1;

                  i:=0;
                  DatosCompra.CDSCompra_DTE.First;
                  while not(DatosCompra.CDSCompra_DTE.eof) do
                    begin
                      Solicitud.dte[0].nroDTE                       := DatosCompra.CDSCompra_DTENRO_DET.AsString;//  '014469997-1';               //*****
                      Solicitud.dte[0].nroRenspa                    := DatosCompra.CDSCompra_DTENRO_RENSPA.AsString;//  '22.123.1.12345/A5';   //*****
                      DatosCompra.CDSCompra_DTE.Next;
                    end;

                  I:=0;
                  DatosCompra.CDSCompraDet.First;
                  while not(DatosCompra.CDSCompraDet.eof) do
                    begin
                      if (tipoComprobante=183) or (tipoComprobante=185) or
                        (tipoComprobante=180) or (tipoComprobante=18) Then
                      Solicitud.itemDetalleLiquidacion[i].cuitCliente     := StrToFloat(CuitReceptor);
                      Solicitud.itemDetalleLiquidacion[i].codCategoria    := DatosCompra.CDSCompraDetCODIGOARTICULO.AsInteger;//  51020102;
                      Solicitud.itemDetalleLiquidacion[i].tipoLiquidacion := 2;// por kilo vivo
                      Solicitud.itemDetalleLiquidacion[i].cantidad        := DatosCompra.CDSCompraDetCANTIDAD.AsInteger;// 50;
                      Solicitud.itemDetalleLiquidacion[i].precioUnitario  := DatosCompra.CDSCompraDetUNITARIO_TOTAL.AsFloat;// 100;
                      if DatosCompra.CDSCompraCabLETRAFAC.AsString='A' then
                        Solicitud.itemDetalleLiquidacion[i].alicuotaIVA     := DatosCompra.CDSCompraDetIVA_TASA.AsFloat;// 21.0;
                      Solicitud.itemDetalleLiquidacion[i].raza.codRaza    := DatosCompra.CDSCompraDetCODIGO_RAZA.AsInteger;// 2;
                      if (DatosCompra.CDSCompraCabCOD_OPERACION_AFIP.AsInteger in [2,102,3,103]) or
                         ((DatosCompra.CDSCompraCabCOD_CARACT_EMIS_AFIP.Value in [4,102,9,103]) and
                         (DatosCompra.CDSCompraCabCOD_OPERACION_AFIP.AsInteger in [5,105])) Then
                        Solicitud.itemDetalleLiquidacion[i].nroTropa      := DatosCompra.CDSCompraDetTROPA.AsFloat;// 2;
                      Solicitud.itemDetalleLiquidacion[i].cantidadCabezas := DatosCompra.CDSCompraDetCABEZAS.AsInteger ;//200;
                      I:=I+1;
                      DatosCompra.CDSCompraDet.Next;
                    end;

                  I:=0;
                  DatosCompra.CDSCompraGastos.First;
                  while Not(DatosCompra.CDSCompraGastos.Eof) do
                    begin
                      Solicitud.gasto[0].codGasto      := DatosCompra.CDSCompraGastosCODGASTO.Value;// 16;
                      Solicitud.gasto[0].baseImponible := DatosCompra.CDSCompraGastosBASEIMPONIBLE.AsFloat;// 100000.0;
                      Solicitud.gasto[0].alicuota      := DatosCompra.CDSCompraGastosALICUOTA.AsFloat;// 2;
                      Solicitud.gasto[0].alicuotaIVA   := DatosCompra.CDSCompraGastosALICUOTAIVA.AsFloat;// 10.5;
                    end;

                  Solicitud.datosAdicionales := DatosCompra.CDSCompraCabOBSERVACION1.AsString;//;
                  Response := wslsp.generarLiquidacion;

                  if Response.respuesta.hayErrores then
                    ShowMessage(Response.respuesta.errores)
                  else
                    begin
                      Modificar.Execute;
                      DatosCompra.CDSCompraCabCAE.Value :=FloatToStr(Response.respuesta.cabecera.cae);
                      d    := StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,1,2));
                      m    := StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,4,2));
                      y    := StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,7,4));
                      DatosCompra.CDSCompraCabCAE_VENCIMIENTO.AsDateTime:=EncodeDate(y,m,d);
                      DatosCompra.CDSCompraCabNumeroFacSetText(DatosCompra.CDSCompraCabNumeroFac,FloatToStr(Response.respuesta.emisor.nroComprobante));
                      DatosCompra.CDSCompraCabCODIGOBARRA_AFIP.AsString := Response.respuesta.cabecera.nroCodigoBarras;
                      DatosCompra.CDSCompraCabCAE.Value                 := FloatToStr(Response.respuesta.cabecera.cae);
                      d   := StrToInt( Copy(Response.respuesta.cabecera.fechaProcesoAFIP,1,2));
                      m   := StrToInt( Copy(Response.respuesta.cabecera.fechaProcesoAFIP,4,2));
                      y   := StrToInt( Copy(Response.respuesta.cabecera.fechaProcesoAFIP,7,4));

                      DatosCompra.CDSCompraCabFECHACOMPRASetText(DatosCompra.CDSCompraCabFECHACOMPRA, DateToStr(EncodeDate(y,m,d)) );
                      DatosCompra.CDSCompraCabFECHAFISCALSetText(DatosCompra.CDSCompraCabFECHACOMPRA, DateToStr(EncodeDate(y,m,d)) );
                      DatosCompra.CDSCompraCabRETENCION_IVA.AsFloat:=0;
                      for I := 0 to 10 do
                        begin
                           if Response.respuesta.tributo[i].codTributo>0 Then
                             begin
                               DatosCompra.CDSCompraTributos.Append;
                               DatosCompra.CDSCompraTributosCODTRIBUTO.Value     :=Response.respuesta.tributo[i].codTributo;
                               DatosCompra.CDSCompraTributosDESCRIPCION.Value    :=Response.respuesta.tributo[i].descripcion;
                            // if (Response.respuesta.tributo[i].baseImponible=nil) then
//                               BaseImponible  :=Response.respuesta.tributo[i].baseImponible;

//                             DatosCompra.CDSCompraTributosBASEIMPONIBLE.AsFloat :=BaseImponible;

                               if Not(VarIsNull(Response.respuesta.tributo[i].alicuota)) then
                                 DatosCompra.CDSCompraTributosALICUOTA.Value       :=Response.respuesta.tributo[i].alicuota
                               else
                                 DatosCompra.CDSCompraTributosALICUOTA.Value       :=0;
                               DatosCompra.CDSCompraTributosIMPORTE.Value          :=Response.respuesta.tributo[i].importe;

                               if DatosCompra.CDSCompraTributosCODTRIBUTO.Value=23 then
                                 DatosCompra.CDSCompraCabRETENCION_IVA.AsFloat:=DatosCompra.CDSCompraCabRETENCION_IVA.AsFloat+DatosCompra.CDSCompraTributosIMPORTE.Value;

                               DatosCompra.CDSCompraTributos.Post;
                             end;
                        end;
                      DatosCompra.CDSCompraCabTOTAL.AsFloat:= DatosCompra.CDSCompraCabTOTAL.AsFloat-DatosCompra.CDSCompraCabRETENCION_IVA.AsFloat;
                      //Response.respuesta.resumenTotales..
                      Confirma.Execute;
                      if not DirectoryExists(DMMain_FD.MainPath+'Archivos Liquidaciocnes') then
                        CreateDir(DMMain_FD.MainPath+'Archivos Liquidaciocnes');

                      Response.respuesta.guardarPDF(DMMain_FD.MainPath+'Archivos Liquidaciocnes\'+DatosCompra.CDSCompraCabRAZONSOCIAL.AsString+'-'+DatosCompra.CDSCompraCabNROCPBTE.AsString+'.pdf');
                        ShowMessage('CAE obtenido: ' + FloatToStr(Response.respuesta.cabecera.cae));
                    end;
                except
                  on E: Exception do
                    ShowMessage(E.Message);
                end;
              end
            else
              ShowMessage(ConsultaUltimoNroResponse.respuesta.errores);
          end
        else
          ShowMessage(wslsp.ErrorDesc);
      end;
  Agregar.Enabled:=True;
end;

procedure TFormCompra_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormCompra_2<>Nil)  then
    if DSBase.DataSet.State = dsBrowse then
      begin
        if (DSBase.DataSet.IsEmpty=False) then
          Recuperar.Execute;
      end;
end;

procedure TFormCompra_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
   ArchivoIni                   := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'FcCompra.ini');
   ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo.Checked);
   ArchivoIni.WriteBool('fecha', 'fechafiscal', ControlaFechaFiscal.Checked );
   ArchivoIni.WriteBool('VerUnidades', 'Unidades', VerUnidadesdeStock1.Checked);
   ArchivoIni.WriteBool('VerInventario', 'Inventariar', ColumnaInvenario.Checked);
   ArchivoIni.WriteBool('PrecioTotal', 'ModificaTotal', PermitirModifTotal.Checked);
   ArchivoIni.Free;
   //*************************************************************
  IF Assigned(FormAplicacionesNCCompra) Then
    FormAplicacionesNCCompra.Close;

  if (FormBuscarRecepcionesPendientes.Visible) Then FormBuscarRecepcionesPendientes.Close;

 // if (FormBuscarRecepcionesPendientes<>nil) and Assigned(FormBuscarRecepcionesPendientes) Then
 //   FreeAndNil(FormBuscarRecepcionesPendientes);

  with DatosCompra do
    begin
      CDSCompraCab.Close;
      CDSCompraDet.Close;
      CDSCompLote.Close;
      CDSImpuestos.Close;
      CDSCondPago.Close;
      CDSEmpresa.Close;
      CDSPercepcionIB.Close;
      CDSPercepcionIVA.Close;
    end;
  FreeAndNil(CodigosSeries);
  Action:=caFree;
  inherited;
end;

procedure TFormCompra_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCompra_2:=nil;
end;

procedure TFormCompra_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (shift=[ssCtrl]) and ((Key=Ord(#77)) or (Key=Ord(#109))) and (DMMain_FD.UsuarioAdministrador) then
     pmOtros.Popup(50,50)
  else
  if (shift=[ssCtrl]) and ((Key=Ord(#82)) or (Key=Ord(#114))) and (DMMain_FD.UsuarioAdministrador) then
    GenerarRetencionIVA.Execute;

end;

procedure TFormCompra_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormCompra_2<>nil then
    if FormCompra_2.Width<>960 then
      FormCompra_2.Width:=960;
end;

procedure TFormCompra_2.FormShow(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormCompra_2)) and (FormCompra_2.Visible) and  (DSBase.State=dsBrowse) AND (btNuevo.Visible=True) Then
     btNuevo.SetFocus;
 end;

procedure TFormCompra_2.ForzarModificarExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.UsuarioAdministrador=True) and (Modificar.Enabled=False) then
    begin
      Modificar.Enabled:=True;
      Modificar.Execute;
    end;
end;

procedure TFormCompra_2.GenerarAjusteInventarioExecute(Sender: TObject);
var AuxExistente,Ajuste:Extended;
begin
  inherited;
  if ColumnaInvenario.Checked then
    begin
      if Not(Assigned(FormAjustesStock)) then
        FormAjustesStock:=TFormAjustesStock.Create(self);
        FormAjustesStock.Agregar.Execute;
        FormAjustesStock.CDSAjusteCabFECHA.AsDateTime    := DSBase.DataSet.FieldByName('FECHACOMPRA').AsDateTime;
        FormAjustesStock.CDSAjusteCabID_INVENTARIO.Value := -1;
        FormAjustesStock.CDSAjusteCabOBS.Value           := 'Ajuste por toma de Inventario en Factura Compra.'+ DSBase.DataSet.FieldByName('NROCPBTE').AsString+'.. del '+FormatDateTime('dd/mm/yyyy',DSBase.DataSet.FieldByName('FECHACOMPRA').AsDateTime);
        FormAjustesStock.CDSAjusteCabSUCURSALSetText(FormAjustesStock.CDSAjusteCabSUCURSAL,IntToStr(DSBase.DataSet.FieldByName('SUCURSALCOMPRA').AsInteger));
        FormAjustesStock.CDSAjusteCabDEPOSITOSetText(FormAjustesStock.CDSAjusteCabDEPOSITO,IntToStr(DSBase.DataSet.FieldByName('DEPOSITO').AsInteger));
        DatosCompra.CDSCompraDet.First;
        while not(DatosCompra.CDSCompraDet.Eof) do
          begin
            if (Abs(DatosCompra.CDSCompraDetCANTIDAD_INVENTARIO.AsFloat)>=0) then
              begin
                FormAjustesStock.CDSAjusteDet.Append;
                FormAjustesStock.CDSAjusteDetCODIGOSetText(FormAjustesStock.CDSAjusteDetCODIGO,DatosCompra.CDSCompraDetCODIGOARTICULO.Value);
                AuxExistente:= FormAjustesStock.CDSAjusteDetSTOCK_ACTUAL_VTA.AsFloat;
                FormAjustesStock.QStkUnit_al.Close;
                FormAjustesStock.QStkUnit_al.ParamByName('Codigo').Value   := DatosCompra.CDSCompraDetCODIGOARTICULO.Value;
                FormAjustesStock.QStkUnit_al.ParamByName('Fecha').AsDate   := DSBase.DataSet.FieldByName('FECHACOMPRA').AsDateTime;
                FormAjustesStock.QStkUnit_al.ParamByName('Deposito').Value := DSBase.DataSet.FieldByName('DEPOSITO').AsInteger;
                FormAjustesStock.QStkUnit_al.Open;
                AuxExistente := FormAjustesStock.QStkUnit_alFISICO.Value;
                FormAjustesStock.CDSAjusteDetSTOCK_ACTUAL_VTA.Value   := AuxExistente;
                FormAjustesStock.CDSAjusteDetSTOCK_ACTUAL_COMPRA.Value:= AuxExistente;
                FormAjustesStock.QStkUnit_al.Close;

                if AuxExistente<0 then
                  Ajuste:=DatosCompra.CDSCompraDetCANTIDAD_INVENTARIO.AsFloat - AuxExistente
                else
                  if AuxExistente>0 Then
                    Ajuste:=DatosCompra.CDSCompraDetCANTIDAD_INVENTARIO.AsFloat - AuxExistente ;

                Ajuste := Ajuste + DatosCompra.CDSCompraDetCANTIDAD.AsFloat;
                FormAjustesStock.CDSAjusteDetCANTIDADSetText(FormAjustesStock.CDSAjusteDetCANTIDAD,FloatToStr(Ajuste));
                FormAjustesStock.CDSAjusteDet.Post;
              end;
            DatosCompra.CDSCompraDet.Next;
          end;
        FormAjustesStock.Show;
    end;


end;

procedure TFormCompra_2.GenerarRetencionIVAExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosCompra.CDSCompraTributos.IsEmpty) Then
    begin
      Modificar.Execute;
      DatosCompra.CDSCompraCabRETENCION_IVA.Value:=0;
      if DatosCompra.CDSRetIVA.RecordCount>0 then
        begin
          DatosCompra.CDSRetIVA.First;
          DatosCompra.CDSRetIVA.Delete;
        end;

    //      DatosCompra.CDSRetIVA.Open;
      DatosCompra.CDSCompraTributos.First;
      if DatosCompra.CDSCompraTributos.RecordCount>1 then
        begin
          while DatosCompra.CDSCompraTributos.Eof do
            begin
              if DatosCompra.CDSCompraTributosCODTRIBUTO.Value in [15,23] then
                begin
                  DatosCompra.CDSRetIVA.Insert;
                  DatosCompra.CDSRetIVABASE_IMPONIBLE.AsFloat   := DatosCompra.CDSCompraCabNETOGRAV2.ASFloat;
                  DatosCompra.CDSRetIVAIMPUESTO_RETENIDO.AsFloat:= DatosCompra.CDSCompraTributosIMPORTE.AsFloat;
                  DatosCompra.CDSRetIVACONCEPTO.AsString        := DatosCompra.CDSCompraTributosMUESTRATRIBUTO.AsString;
                  DatosCompra.CDSRetIVA.Post;
                end;
              DatosCompra.CDSCompraTributos.Next;
            end;
        end
      else
        begin
          if DatosCompra.CDSCompraTributosCODTRIBUTO.Value in [15,23] then
            begin
              DatosCompra.CDSRetIVA.Insert;
              DatosCompra.CDSRetIVABASE_IMPONIBLE.AsFloat   := DatosCompra.CDSCompraCabNETOGRAV2.ASFloat;
              DatosCompra.CDSRetIVAIMPUESTO_RETENIDO.AsFloat:= DatosCompra.CDSCompraTributosIMPORTE.Value;
              DatosCompra.CDSRetIVACONCEPTO.AsString        := DatosCompra.CDSCompraTributosMUESTRATRIBUTO.AsString;
              DatosCompra.CDSRetIVA.Post;
            end;
        end;
//      DatosCompra.CDSRetIVA.Close;
      Confirma.Execute;
    end
end;

procedure TFormCompra_2.GenerarTxExecute(Sender: TObject);
var Deposito:Integer;
begin
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormBuscadorDepositos)) then
        FormBuscadorDepositos :=TFormBuscadorDepositos.Create(self);
      FormBuscadorDepositos.Caption  := 'Deposito destino de Mercaderia';
      FormBuscadorDepositos.Deposito :=  DatosCompra.CDSCompraCabDEPOSITO.AsInteger;
      FormBuscadorDepositos.ShowModal;
      If (FormBuscadorDepositos.ModalResult=mrok)  Then
        begin
          Deposito := FormBuscadorDepositos.Deposito;
          if Deposito<> DatosCompra.CDSCompraCabDEPOSITO.AsInteger then
            begin
              if Not(Assigned(FormTransferencias)) then
                FormTransferencias:=TFormTransferencias.Create(Self);
              FormTransferencias.Show;
              FormTransferencias.DepositoPorDefecto:=DatosCompra.CDSCompraCabDEPOSITO.AsInteger;
              FormTransferencias.Agregar.Execute;
              FormTransferencias.CDSTranCabDEPOSITO_ORIGENSetText(FormTransferencias.CDSTranCabDEPOSITO_ORIGEN,DatosCompra.CDSCompraCabDEPOSITO.AsString);
              FormTransferencias.CDSTranCabDEPOSITO_DESTINOSetText(FormTransferencias.CDSTranCabDEPOSITO_DESTINO,IntToStr(Deposito));
              FormTransferencias.CDSTranCabOBS1.Value:='Por Compra de Mercaderias' ;
              FormTransferencias.CDSTranCabOBS2.Value:='Fc.Nro:'+DatosCompra.CDSCompraCabTIPOCPBTE.AsString+ DatosCompra.CDSCompraCabNROCPBTE.AsString;

              DatosCompra.CDSCompraDet.First;
              while not(DatosCompra.CDSCompraDet.eof) do
                begin
                  if DatosCompra.CDSCompraDetAFECTA_STOCK.Value='S' Then
                    begin
                      FormTransferencias.CDSTranDet.Append;
                      FormTransferencias.CDSTranDetCODIGOSetText(FormTransferencias.CDSTranDetCODIGO,DatosCompra.CDSCompraDetCODIGOARTICULO.AsString);
                      FormTransferencias.CDSTranDetCANTIDADSetText(FormTransferencias.CDSTranDetCANTIDAD,DatosCompra.CDSCompraDetCANTIDAD.AsString);
                      FormTransferencias.CDSTranDet.Post;
                    end;
                  DatosCompra.CDSCompraDet.Next;
                end;
            end
          else
            ShowMessage('Los Depositos deben ser distintos..');
        end;
    end;
end;

procedure TFormCompra_2.GravarCambiosDetallesExecute(Sender: TObject);
begin
  inherited;
  DatosCompra.GravarDetalle;
end;

procedure TFormCompra_2.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
  roOrdenCompra.Collapsed:=True;

  if DatosCompra.Requiere_OC then
    begin
      ShowMessage('La configuración del Proveedor, exige la existencia de una O.C.  '+#13+
                  'por lo que se debe proceder desde una Recepción de Mecaderia u '+#13+
                  'Orden de Compra. '+#13+
                  #13+
                  #13+#13+
                  'Se cancelaran los cambios....');
     btCancelar.Click;            

    end;

  IF ((Trim(RxDBECodigo.Text) = '') OR  (Trim(RxDBESucursal.Text) = '') OR
      (RxDBEDeposito.Text = '') OR (DatosCompra.CDSCompraCabMUESTRACOMPROBANTE.Value='') OR
      (dbeSuc.Text = '') OR (dbeNumero.Text = '') OR
      (dbeCondCompra.Text = '') or
      (dbeFechaCompra.Text[1] = ' ') or (dbeFechaFiscal.Text[1] = ' ')) and (DSBase.State in [dsInsert,dsEdit]) THEN
    BEGIN
      ShowMessage('Datos en la Cabecera Incompletos....');
      IF pcDetalleFactura.ActivePageIndex <> 0 THEN
        pcDetalleFactura.ActivePageIndex := 0;
      pnCabecera.Enabled := True;
      RxDBECodigo.SetFocus;
    END
  else
    begin
      if DSBase.State<>dsBrowse Then
        begin
          DatosCompra.CDSCompraCabNumeroFacSetText(DatosCompra.CDSCompraCabNumeroFac,dbeNumero.Text);
          DatosCompra.CDSCompraCabSucFacSetText(DatosCompra.CDSCompraCabSucFac,dbeSuc.Text);
        end;
      pnCabecera.Enabled       :=False;
      pcDetalleFactura.Enabled :=True;
    end;
  if (pcDetalleFactura.Enabled) and (pcDetalleFactura.ActivePageIndex=0) then
    begin
      if (pcDetalleFc.ActivePageIndex=0) then
        DBGrillaDetalle.SetFocus
      else
        if (pcDetalleFc.ActivePageIndex=1) then
          dbgDetalleLiquidacion.SetFocus;
    end;

end;

procedure TFormCompra_2.PegarDetalleExecute(Sender: TObject);
begin
  inherited;
  shPP.Visible:=False;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosCompra.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcCompDet.XML');
      DatosCompra.CDSDetalleXML.First;
      while not(DatosCompra.CDSDetalleXML.Eof) do
        begin
          DatosCompra.CDSCompraDet.Append;
          DatosCompra.CDSCompraDetCodigoArticuloSetText(DatosCompra.CDSCompraDetCodigoArticulo,DatosCompra.CDSDetalleXML.FieldByName('CODIGOArticulo').AsString);
          DatosCompra.CDSCOmpraDetDetalle.AsString  :=DatosCompra.CDSDetalleXML.FieldByName('Detalle').AsString;
          DatosCompra.CDSCompraDetDescuentoSetText(DatosCompra.CDSCompraDetDescuento,DatosCOmpra.CDSDetalleXML.FieldByName('DESCUENTO').AsString);
          DatosCompra.CDSCompraDetCantidadSetText(DatosCompra.CDSCompraDetCantidad,DatosCompra.CDSDetalleXML.FieldByName('Cantidad').AsString);

          DatosCompra.CDSCompraDetUNIDADES_TOTALSetText(DatosCompra.CDSCompraDetUnitario_Total,DatosCompra.CDSDetalleXML.FieldByName('UNIDADES_TOTAL').AsString);
          DatosCompra.CDSCompraDet.Post;
          DatosCompra.CDSDetalleXML.Next;
        end;
    end;

end;

procedure TFormCompra_2.PermitirModifTotalClick(Sender: TObject);
begin
  inherited;
  PermitirModifTotal.Checked:= not(PermitirModifTotal.Checked);
end;

procedure TFormCompra_2.pnLoteExit(Sender: TObject);
begin
  inherited;
  if DatosCompra.CDSCompLote.State<>dsBrowse then
    DatosCompra.CDSCompLote.Post;

end;

procedure TFormCompra_2.PopupMenu1Popup(Sender: TObject);
begin
  inherited;
  GenerarAjusteInventario.Enabled:=ColumnaInvenario.Checked;
end;

procedure TFormCompra_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursalCompra  ='+DSBase.DataSet.FieldByName('SUCURSALCompra').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;
end;

procedure TFormCompra_2.VerAplicacionesExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormAplicacionesNCCompra)) Then
    FormAplicacionesNCCompra:=TFormAplicacionesNCCompra.Create(FormCompra_2);
  FormAplicacionesNCCompra.CDSAplica.Close;
  FormAplicacionesNCCompra.CDSAplica.Params.ParamByName('id').Value   :=DatosCompra.CDSCompraCabID_FC.Value;
  FormAplicacionesNCCompra.CDSAplica.Params.ParamByName('Tipo').Value :=DatosCompra.CDSCompraCabTIPOCPBTE.Value;
  FormAplicacionesNCCompra.CDSAplica.Params.ParamByName('clase').Value:=DatosCompra.CDSCompraCabCLASECPBTE.Value;
  FormAplicacionesNCCompra.CDSAplica.Open;
  FormAplicacionesNCCompra.Show;
end;


procedure TFormCompra_2.VerCodigoAlternativoClick(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo.Checked:=Not(VerCodigoAlternativo.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormCompra_2.VerUnidadesdeStock1Click(Sender: TObject);
begin
  inherited;
  VerUnidadesdeStock1.Checked:=Not(VerUnidadesdeStock1.Checked);

  DBGrillaDetalle.Columns.Items[10].Visible := VerUnidadesdeStock1.Checked;
    if VerUnidadesdeStock1.Checked=False then
     DBGrillaDetalle.Width:=784
   else
     DBGrillaDetalle.Width:=850;

  DBGrillaDetalle.Refresh;
end;

procedure TFormCompra_2.LibroIvaExecute(Sender: TObject);
begin
  inherited;
DMMain_FD.fdcGestion.StartTransaction;
  try
    DMMain_FD.SPAplicarLibroIva.Close;
    DMMain_FD.SPAplicarLibroIva.ParamByName('id').Value  := DatosCompra.CDSCompraCabID_FC.Value;
    DMMain_FD.SPAplicarLibroIva.ParamByName('Tipo').Value:= 'C';
    DMMain_FD.SPAplicarLibroIva.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DMMain_FD.SPAplicarLibroIva.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormCompra_2.LstOCompraExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert]) then
    begin
      if not(Assigned(FormListaOrdenCompra)) then
        FormListaOrdenCompra:=TFormListaOrdenCompra.create(Self);
      FormListaOrdenCompra.VTop:=Top;
      FormListaOrdenCompra.VLeft:=Left+Width;
      FormListaOrdenCompra.codigo:=DatosCompra.CDSCompraCabCodigo.AsString;

      FormListaOrdenCompra.Show;
    end;
end;

procedure TFormCompra_2.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormCompra_2.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:=' F-11:Ver movimientos del artículo';
end;

procedure TFormCompra_2.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompra.CDSCompraCabSucursalCompra.Clear;
      DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompra.CDSCompraCabMUESTRASUCURSAL.Clear;
      DatosCompra.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompra.CDSCompraCabLetraFac.Clear;
      DatosCompra.CDSCompraCabSucFac.Clear;
      DatosCompra.CDSCompraCabNumeroFac.Clear;
    end;
end;


procedure TFormCompra_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormCompra_2.spTxClick(Sender: TObject);
begin
  inherited;
  GenerarTx.Execute;
end;

procedure TFormCompra_2.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
  if dbgIva.SelectedIndex=0 Then dbgIva.SelectedIndex:=2;
  if dbgIva.SelectedIndex<2 Then dbgIva.SelectedIndex:=2;
end;

procedure TFormCompra_2.dbgIvaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (Key=VK_DOWN) or (Key=VK_UP) then key:=0;
end;

procedure TFormCompra_2.dbgPrecepcionIVAColEnter(Sender: TObject);
begin
  inherited;
  if dbgPrecepcionIVA.SelectedIndex<2 Then dbgPrecepcionIVA.SelectedIndex:=2;
end;

procedure TFormCompra_2.dbgPrecepcionIVAKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DOWN) or (Key=VK_UP) then key:=0;

end;

procedure TFormCompra_2.dbgPercepcionIBColEnter(Sender: TObject);
begin
  inherited;
  if dbgPercepcionIB.SelectedIndex=1 Then
    dbgPercepcionIB.SelectedIndex:=2;
//  else
//    if dbgPercepcionIB.SelectedIndex<2 Then dbgPercepcionIB.SelectedIndex:=2;

end;

procedure TFormCompra_2.dbgPercepcionIBEditButtonClick(Sender: TObject);
begin
  inherited;
  DatosCompra.QBuscaPercionesIIBB.Close;
  DatosCompra.QBuscaPercionesIIBB.Open;
  ComBuscadorPerIIBB.Execute;
  if ComBuscadorPerIIBB.rOk Then
    DatosCompra.CDSPercepcionIBCODIGO_PERCEPCIONSetText(DatosCompra.CDSPercepcionIBCODIGO_PERCEPCION,IntToStr(ComBuscadorPerIIBB.Id));
  DatosCompra.QBuscaPercionesIIBB.Close;
 end;

procedure TFormCompra_2.dbgPercepcionIBKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
//  if (Key=VK_DOWN) or (Key=VK_UP) then key:=0;
end;

procedure TFormCompra_2.ModificarExecute(Sender: TObject);
begin
 // ShowMessage((Sender as TMenuItem).Caption);
  with DatosCompra do
    begin
      if (DMMain_FD.UsuarioAdministrador=True) Then
        begin
          try
            QBuscaAplicaiones.Close;
            QBuscaAplicaiones.ParamByName('id').Value     := CDSCompraCabID_FC.AsInteger;
            QBuscaAplicaiones.ParamByName('Tipo').Value   :=  CDSCompraCabTIPOCPBTE.AsString;
            QBuscaAplicaiones.Open;
            if (QBuscaAplicaiones.Fields[0].Value>0) Then
                Raise Exception.Create (' Facturas con pagos asignados....')
            else
              begin
                inherited;
                if (CDSCompraDet.State <> dsBrowse) then
                  CDSCompraDet.IndexDefs.Clear;
              end;
            pnCabecera.Enabled := False;
            ImporteOriginal    := CDSCompraCabTOTAL.AsFloat;

          finally
            QBuscaAplicaiones.Close;
          end;
        end
     else
        ShowMessage('No posee permisos para esta operación');
    end;

end;

procedure TFormCompra_2.ModificarNroExecute(Sender: TObject);
begin
  inherited;
  DatosCompra.QBuscaAplicaiones.Close;
  DatosCompra.QBuscaAplicaiones.ParamByName('id').Value  :=DatosCompra.CDSCompraCabID_FC.Value;
  DatosCompra.QBuscaAplicaiones.ParamByName('Tipo').Value:=DatosCompra.CDSCompraCabTIPOCPBTE.Value;
  DatosCompra.QBuscaAplicaiones.Open;
  if (DatosCompra.QBuscaAplicaiones.Fields[0].Value>0) Then
    Raise Exception.Create (' Facturas con pagos asignados....');
  DatosCompra.QBuscaAplicaiones.Close;

  if DatosCompra.CDSCompraCabTIPOCPBTE.Value='NC' then
    BorraAplicacionesNC.Execute;

  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte:=TFormCambiaNroCpbte.Create(self);
  FormCambiaNroCpbte.Id     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaNroCpbte.Num    :=DSBase.DataSet.FieldByName('NumeroFac').Value;
  FormCambiaNroCpbte.Suc    :=DSBase.DataSet.FieldByName('SucFac').Value;
  FormCambiaNroCpbte.Let    :=DSBase.DataSet.FieldByName('LetraFac').Value;
  FormCambiaNroCpbte.Tipo   :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Fecha  :=DSBase.DataSet.FieldByName('FechaCompra').Value;
  FormCambiaNroCpbte.Fecha2 :=DSBase.DataSet.FieldByName('FechaFiscal').Value;
  FormCambiaNroCpbte.Codigo :=DSBase.DataSet.FieldByName('codigo').Value;

  FormCambiaNroCpbte.CV   :='C';
  FormCambiaNroCpbte.Showmodal;

  Recuperar.Execute;
end;

procedure TFormCompra_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursalCompra  ='+DSBase.DataSet.FieldByName('SUCURSALCompra').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;
end;

procedure TFormCompra_2.PasaDetallesAStockExecute(Sender: TObject);
begin
  inherited;
  With DatosCompra do
    begin
      CDSCompraDet.First;
      while not CDSCompraDet.Eof do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QActualizaDetalleStk.Close;
            QActualizaDetalleStk.ParamByName('codigo').Value  :=  CDSCompraDetCODIGOARTICULO.AsString;
            QActualizaDetalleStk.ParamByName('detalle').Value :=  CDSCompraDetDETALLE.AsString;
            QActualizaDetalleStk.ExecSQL;
            QActualizaDetalleStk.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
          end;
          CDSCompraDet.Next;
        end;
    end;
end;

procedure TFormCompra_2.PasarCtaCteExecute(Sender: TObject);
begin
  inherited;
  DMStoreProcedure.QPasaACtaCOmpra.Close;
  DMStoreProcedure.QPasaACtaCOmpra.ParamByName('id').Value    :=DSBase.DataSet.FieldByName('ID_FC').Value;
  if DSBase.DataSet.FieldByName('ingresa_a_ctacte').Value='S' then
    DMStoreProcedure.QPasaACtaCOmpra.ParamByName('estado').Value:='N'
  else
    DMStoreProcedure.QPasaACtaCOmpra.ParamByName('estado').Value:='S';
  DMStoreProcedure.QPasaACtaCOmpra.ExecSQL;
  DMStoreProcedure.QPasaACtaCOmpra.Close;
  Recuperar.Execute;

    begin
      DatosCompra.spReHaceMov.Close;
      DatosCompra.spReHaceMov.ParamByName('CPBTE_ID').Value   := DSBase.DataSet.FieldByName('ID_FC').Value;
      DatosCompra.spReHaceMov.ParamByName('CPBTE_TIPO').Value := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
      DatosCompra.spReHaceMov.ParamByName('CPBTE_CLASE').Value:= DSBase.DataSet.FieldByName('CLASECPBTE').Value;
      DatosCompra.spReHaceMov.ExecProc;
      DatosCompra.spReHaceMov.Close;
    end
end;

procedure TFormCompra_2.PasarND_NCAjusteExecute(Sender: TObject);
begin
  inherited;
  if ((datoscompra.CDSCompraCabTIPOCPBTE.Value='NC') or (datoscompra.CDSCompraCabTIPOCPBTE.Value='ND')) then
    begin
      Modificar.Execute;
      if DatosCompra.CDSCompraCabNC_POR_DIFERENCIA.Value='S' then
        DatosCompra.CDSCompraCabNC_POR_DIFERENCIA.Value:='N'
      else
        DatosCompra.CDSCompraCabNC_POR_DIFERENCIA.Value:='S';

      DatosCompra.ReAsignaDetalle;
      Confirma.Execute;
    end;
end;

procedure TFormCompra_2.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompra.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompra.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompra.CDSCompraCabLetraFac.Clear;
      DatosCompra.CDSCompraCabSucFac.Clear;
      DatosCompra.CDSCompraCabNumeroFac.Clear;
    end;

end;

procedure TFormCompra_2.RxDBECodigoButtonClick(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    BuscarProveedor.Execute;
end;

procedure TFormCompra_2.RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompra.CDSCompraCabCodigo.Clear;
      DatosCompra.CDSCompraCabRAZONSOCIAL.Clear;
      DatosCompra.CDSCompraCabCondicionCompra.Clear;
      DatosCompra.CDSCompraCabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormCompra_2.RxDBECondCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompra.CDSCompraCabCondicionCompra.Clear;
      DatosCompra.CDSCompraCabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormCompra_2.RxDBEDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompra.CDSCompraCabDeposito.Clear;
      DatosCompra.CDSCompraCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormCompra_2.ReCalcularExecute(Sender: TObject);
begin
  inherited;
  if DatosCompra.CDSCompraCab.State in [dsBrowse] then
   Modificar.Execute;
  DatosCompra.ReCalcular;
  Confirma.Execute;
end;

procedure TFormCompra_2.ReCalcularSinControlClick(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if DatosCompra.CDSCompraCab.State in [dsBrowse] then
        DSBase.DataSet.Edit;
      DatosCompra.CDSCompraCabREDUCIDA.Value:='*';
      DatosCompra.ReCalcular;
      Confirma.Execute;
    end;
end;

procedure TFormCompra_2.RecuperarExecute(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';

  roAplicaciones.Collapsed := True;
  DatosCompra.CDSCompraCab.close;
  DatosCompra.CDSCompraCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosCompra.CDSCompraCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosCompra.CDSCompraCab.Open;

  if Not( DatosCompra.CDSCompraCab.IsEmpty) then
    condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosCompra.CDSCompraCabTIPOCPBTE.AsString,'''') +
               ' and clasecpbte='+AnsiQuotedStr( DatosCompra.CDSCompraCabCLASECPBTE.AsString,'''');


  DatosCompra.CDSCompraDet.IndexDefs.Clear;
  DatosCompra.CDSCompraDet.IndexName:='';

  DatosCompra.CDSCompraDet.Close;
  DatosCompra.CDSCompraDet.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosCompra.CDSCompraDet.Open;

  DatosCompra.CDSCompraSubDetalle.Close;
  DatosCompra.CDSCompraSubDetalle.Params.ParamByName('id').Value:=  DatosCompra.CDSCompraDetID.AsInteger;// StrToInt(DatoNew);
  DatosCompra.CDSCompraSubDetalle.Open;

  DatosCompra.CDSCarneCab.Close;
  DatosCompra.CDSCarneCab.Params.ParamByName('id_detfac').Value :=  DatosCompra.CDSCompraDetID.AsInteger;// StrToInt(DatoNew);
  DatosCompra.CDSCarneCab.Open;

  DatosCompra.CDSCarneDet.Close;
  DatosCompra.CDSCarneDet.Params.ParamByName('id_det').Value    :=  DatosCompra.CDSCarneCabID.AsInteger;// StrToInt(DatoNew);
  DatosCompra.CDSCarneDet.Open;


  DatosCompra.CDSCompLote.MasterFields:='';
  DatosCompra.CDSCompLote.MasterSource:=Nil;

  DatosCompra.CDSCompLote.Close;
  DatosCompra.CDSCompLote.Params.ParamByName('id').Value      := StrToInt(DatoNew);//  DatosCompra.CDSCompraDetID.AsInteger;// StrToInt(DatoNew);
  DatosCompra.CDSCompLote.Open;

  DatosCompra.CDSCompLote.MasterFields:='ID';
  DatosCompra.CDSCompLote.MasterSource:=DatosCompra.DSCompraDet;

  DatosCompra.CDSImpuestos.Close;
  DatosCompra.CDSImpuestos.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  DatosCompra.CDSImpuestos.Open;

  DatosCompra.CDSPercepcionIB.Close;
  DatosCompra.CDSPercepcionIB.Params.ParamByName('id').Value  := StrToInt(DatoNew);
  DatosCompra.CDSPercepcionIB.Open;

  DatosCompra.CDSPercepcionIVA.Close;
  DatosCompra.CDSPercepcionIVA.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosCompra.CDSPercepcionIVA.Open;

  DatosCompra.CDSCondPago.Close;
  DatosCompra.CDSCondPago.Params.ParamByName('id').Value      := StrToInt(DatoNew);
  DatosCompra.CDSCondPago.Open;

  DatosCompra.CDSCompraTributos.Close;
  DatosCompra.CDSCompraTributos.Params.ParamByName('id').Value      := StrToInt(DatoNew);
  DatosCompra.CDSCompraTributos.Open;

  DatosCompra.CDSCompraGastos.Close;
  DatosCompra.CDSCompraGastos.Params.ParamByName('id').Value      := StrToInt(DatoNew);
  DatosCompra.CDSCompraGastos.Open;

  DatosCompra.CDSCompra_DTE.Close;
  DatosCompra.CDSCompra_DTE.Params.ParamByName('id').Value      := StrToInt(DatoNew);
  DatosCompra.CDSCompra_DTE.Open;


  DatosCompra.CDSProveedor.Close;
  DatosCompra.CDSProveedor.Params.ParamByName('Codigo').Value := DatosCompra.CDSCompraCabCodigo.Value;
  DatosCompra.CDSProveedor.Open;

  DatosCompra.CDSOCompra.Close;
  DatosCompra.CDSOCompra.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompra.CDSOCompra.Open;

  DatosCompra.CDSRetIVA.Close;
  DatosCompra.CDSRetIVA.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompra.CDSRetIVA.Open;

  if DatosCompra.CDSCompraCabTIPOCPBTE.Value<>'NC' then
    begin
      DatosCompra.CDSAplicaciones.Close;
      DatosCompra.CDSAplicaciones.Params.ParamByName('id').AsInteger  := StrToInt(DatoNew);
      DatosCompra.CDSAplicaciones.Params.ParamByName('Tipo').AsString := DatosCompra.CDSCompraCabTIPOCPBTE.Value;
      DatosCompra.CDSAplicaciones.Open;
    end;


  if Not(DatosCompra.CDSCompraCab.IsEmpty) then
    begin
      DatosCompra.PerciveIva                          := DatosCompra.CDSProveedorRetiene_IVA.Value;
      DatosCompra.PerciveIB                           := DatosCompra.CDSProveedorRetiene_IB.Value;
      with DatosCompra DO
        begin
          IF PerciveIva = 'S' THEN
            BEGIN
              Codigo_PercepcionIva := CDSProveedorId_Perc_Iva.Value;
              CDSTasaPercepIVA.Close;
              CDSTasaPercepIVA.Params.ParamByName('id').value := Codigo_PercepcionIva;
              CDSTasaPercepIVA.Open;
              if not (CDSTasaPercepIVA.IsEmpty) then
                begin
                  Tasa_PercepcionIva    := CDSTasaPercepIVATASA.AsFloat;
                  Minimo_PercepcionIva  := CDSTasaPercepIVAMINIMOAPLICABLE.AsFloat;
                  Detalle_PercepcionIVA := CDSTasaPercepIVADESCRIPCION.Value;
                end;
              CDSTasaPercepIVA.Close;
            END;
          IF PerciveIB = 'S' THEN
            BEGIN
              Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
              CDSTasaPercepIIBB.Close;
              CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
              CDSTasaPercepIIBB.Open;
              if not(CDSTasaPercepIIBB.IsEmpty) then
                begin
                  Tasa_PercepcionIB    := CDSTasaPercepIIBBTASA.AsFloat;
                  Minimo_PercepcionIB  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
                  Detalle_PercepcionIB := CDSTasaPercepIIBBDESCRIPCION.Value;
                end;
              CDSTasaPercepIIBB.Close;
            END;
        end;
      DatosCompra.CDSProveedor.Close;
      pnPrincipal.Enabled     :=True;
      pcDetalleFactura.Enabled:=True;
      VerAplicaciones.Enabled :=(DatosCompra.CDSCompraCabTIPOCPBTE.Value='NC');
      if DatosCompra.CDSCompraCabTIPOCPBTE.Value='NC' Then
        sbEstado.Panels[0].Text:='Ctrl+A mostrar aplicaciones'
      else
        sbEstado.Panels[0].Text:='';
      // segun el periodo fiscal habilito o no para borrar y modificar
      begin
        DecodeDate(DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
        DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
        DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime;
        DMStoreProcedure.QVerificaPeriodoFiscal.Open;
        if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
          begin
            sbEstado.Panels[0].Text:='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
            Borrar.Enabled    :=False;
            Modificar.Enabled :=False;
          end
        else
          begin
            Borrar.Enabled    :=True;
            Modificar.Enabled :=True;
          end;
       DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      end;

    //  FormBuscarRecepcionesPendientes.CDSRecepDet.MasterFields:='';
    //  FormBuscarRecepcionesPendientes.CDSRecepDet.MasterSource:=nil;
      if FormBuscarRecepcionesPendientes<>nil then
        begin
          if FormBuscarRecepcionesPendientes.CDSRecepCab<>nil then
            begin
              FormBuscarRecepcionesPendientes.CDSRecepCab.Close;
              FormBuscarRecepcionesPendientes.CDSRecepCab.Params.ParamByName('Codigo').Value:=DatosCompra.CDSCompraCabCodigo.Value;
              FormBuscarRecepcionesPendientes.CDSRecepCab.OPen;

              FormBuscarRecepcionesPendientes.CDSRecepDet.Close;
              FormBuscarRecepcionesPendientes.CDSRecepDet.Params.ParamByName('id').Value:=DatosCompra.CDSCompraCabCodigo.Value;
              FormBuscarRecepcionesPendientes.CDSRecepDet.OPen;
            end;
        end;

      dbgCtroCosto.Visible:=False;
      DetallesCostos.ImageIndex:=10;
      if DMMain_FD.AplicPorCtroCosto(DatosCompra.CDSCompraCabID_FC.AsInteger,
                                     DatosCompra.CDSCompraCabTIPOCPBTE.AsString,
                                     'E') then
        begin
          DetallesCostos.ImageIndex:=11;
          dbgCtroCosto.Visible:=True;
        end;

      // FormBuscarRecepcionesPendientes.CDSRecepDet.MasterFields:='ID_RECMER';
     // FormBuscarRecepcionesPendientes.CDSRecepDet.MasterSource:=FormBuscarRecepcionesPendientes.DSRecepCab;
      FormCompra_2.Caption:='Factura de Compra en Cta.Cte. -- '+DatosCompra.CDSCompraCabFECHA_HORA.AsString+'//'+Copy(DatosCompra.CDSCompraCabUSUARIO.Value,1,15);

      if (DatosCompra.CDSCompraCabCAE.AsString<>'') and (DatosCompra.CDSCompraCabCAE.AsFloat>0 )then
        FormCompra_2.Caption:='Factura de Compra en Cta.Cte. -- '+DatosCompra.CDSCompraCabFECHA_HORA.AsString+'//'+Copy(DatosCompra.CDSCompraCabUSUARIO.Value,1,15)+'// CAE: '+DatosCompra.CDSCompraCabCAE.Value;

      if DatosCompra.CDSCompraCabINGRESA_LIBRO_IVA.Value='S' then
        sbEstado.Panels[1].Text:='Iva';
      DatoNew:=''+DatoNew+'';

      sbEstado.Panels[1].Text:='';
      if DatosCompra.CDSCompraCabINGRESA_LIBRO_IVA.Value='S' then
        sbEstado.Panels[1].Text:='Iva';
      if DatosCompra.CDSCompraCabINGRESA_A_CTACTE.Value='S' then
        sbEstado.Panels[1].Text:=sbEstado.Panels[1].Text+'-CC';


      if (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='186') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='188') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='189') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='182') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='180') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='151') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='153') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='155') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='157') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='159') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='180') or
         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='180') or

         (DatosCompra.CDSCompraCabTIPOCOMP_AFIP.Value ='183')  then
        begin
          FormCompra_2.pcModosFacturas.ActivePageIndex :=1;
          FormCompra_2.pcDetalleFc.ActivePageIndex     :=1;
          FormCompra_2.pcOtrosDetalles.ActivePageIndex :=1;
          FormCompra_2.pcModoFactura_2.ActivePageIndex :=1;
          FormCompra_2.pagGastosTributos.TabVisible    :=True;

          if Not(VarIsNull(cbCaracterEmisor.KeyValue)) then
            begin
              case cbCaracterEmisor.KeyValue of
                1,3,100,
                101:edRucaEmisor.enabled:=False
              else
                edRucaEmisor.enabled:=true;
              end;

              case cbCaracterEmisor.KeyValue of
                1,2,3,100,101:edRenspaEmisor.enabled:=True
              else
                edRenspaEmisor.enabled:=False;
              end;
            end;

//********************************************************************
          if Not(VarIsNull(cbCaracterRec.KeyValue)) then
            begin
              case cbCaracterRec.KeyValue of
                1,3,
                100,101:edRucaRec.enabled:=False
              else
                edRucaRec.enabled:=True;
              end;

              case cbCaracterRec.KeyValue of
                1,2,3,
                100,101:edRenspaRecp.enabled:=True
              else
                edRenspaRecp.enabled:=False;
              end;
              case cbCaracterRec.KeyValue of
                4,9,102,103:begin
                              if DSBase.DataSet.FieldByName('TIPOIVA').Value=1 then
                                edCuitAutorizadoRec.enabled:=True
                              else
                                edCuitAutorizadoRec.enabled:=False;
                            end
              else
                edCuitAutorizadoRec.enabled:=False;
              end;
            end;
//************************************************************

      if cbMotivo.KeyValue=1 then
        begin
          edFechaFaena.Enabled:=True;
          edFechaRecep.Enabled:=True;
        end
      else
        begin
          edFechaFaena.Enabled:=False;
          edFechaRecep.Enabled:=False;
        end;

    end
      else
        begin
          FormCompra_2.pcModosFacturas.ActivePageIndex :=0;
          FormCompra_2.pcDetalleFc.ActivePageIndex     :=0;
          FormCompra_2.pcOtrosDetalles.ActivePageIndex :=0;
          FormCompra_2.pcModoFactura_2.ActivePageIndex :=0;
          FormCompra_2.pagGastosTributos.TabVisible    :=False;
        end;
    end;
  lbAjusteLiq.Visible:=DatosCompra.CDSCompraCabTIPO_LIQUIDACION.Value='C';
end;

procedure TFormCompra_2.RestaurarCAEExecute(Sender: TObject);
var CuitEmisor,CuitAutorizado,CuitAutorizadoRec,CuitReceptor:String;
  d,m,y:word;
  Certificado,Clave:String;
  wslsp      : Iwslsp;
  Solicitud  : IGenerarLiquidacionReq;
  Response   : IGenerarLiquidacionResp;
  ConsultaNro: IConsultarLiquidacionPorNroComprobanteResp;
  puntoVenta               : Integer;
  tipoComprobante          : Integer;
  I: Integer;
  Produccion:Boolean;
  BaseImponible:Double;
begin
  inherited;
  if (DatosCompra<>nil) and (DatosCompra.CDSCompraCabFACTURA_ELECTRONICA.Value='S') and
     ((DatosCompra.CDSCompraCabCAE.AsString='') or
     (DatosCompra.CDSCompraCabCAE.AsFloat<=0)) then
    begin
      wslsp                := Cowslsp.Create;
      CuitEmisor:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit').AsString);
      while Pos('-',CuitEmisor)<>0 do
        delete(CuitEmisor,Pos('-',CuitEmisor),1);
      if (CuitEmisor='') or (copy(CuitEmisor,1,1)='0') then
        Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

//      CuitAutorizado:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit_Autorizado').AsString);
//      while Pos('-',CuitAutorizado)<>0 do
//        delete(CuitAutorizado,Pos('-',CuitAutorizado),1);
//
//      CuitReceptor:= Trim(DatosCompra.CDSCompraCabCUIT.AsString);
//      while Pos('-',CuitReceptor)<>0 do  delete(CuitReceptor,Pos('-',CuitReceptor),1);
//      if (CuitReceptor='') or (copy(CuitReceptor,1,1)='0') then
//        Raise Exception.Create (' Falta el Numero de Cuit del Receptor....');

      ArchivoIni        := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.NombreIni);
      Clave             := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
      Certificado       := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
      ModoFcElectronica := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
      ArchivoIni.free;

      wslsp.CUIT           := StrToFloat(CuitEmisor);// 20939802593;
      wslsp.modoProduccion := ModoFcElectronica=1;// false;
      wslsp.Depurar        := true;
      puntoVenta           := StrToInt(DatosCompra.CDSCompraCabSUCFAC.Value);//  1;
      tipoComprobante      := DatosCompra.CDSCompraCabTIPOCOMP_AFIP.AsInteger;//   186;

      if wslsp.login(Certificado ,Clave ) Then //  'certificado.crt', 'clave.key') then
        begin
          ConsultaNro := wslsp.consultarLiquidacionPorNroComprobante(puntoVenta, tipoComprobante,DatosCompra.CDSCompraCabNUMEROFAC.AsInteger);
          if not ConsultaNro.respuesta.hayErrores then
            begin
              try
                Modificar.Execute;
                d    := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaVencimientoCae,1,2));
                m    := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaVencimientoCae,4,2));
                y    := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaVencimientoCae,7,4));
                DatosCompra.CDSCompraCabCAE_VENCIMIENTO.AsDateTime := EncodeDate(y,m,d);
                DatosCompra.CDSCompraCabCODIGOBARRA_AFIP.AsString  := ConsultaNro.respuesta.cabecera.nroCodigoBarras;
                DatosCompra.CDSCompraCabCAE.Value                  := FloatToStr(ConsultaNro.respuesta.cabecera.cae);
                d   := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaProcesoAFIP,1,2));
                m   := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaProcesoAFIP,4,2));
                y   := StrToInt( Copy(ConsultaNro.respuesta.cabecera.fechaProcesoAFIP,7,4));

                DatosCompra.CDSCompraCabFECHACOMPRASetText(DatosCompra.CDSCompraCabFECHACOMPRA, DateToStr(EncodeDate(y,m,d)) );
                DatosCompra.CDSCompraCabFECHAFISCALSetText(DatosCompra.CDSCompraCabFECHACOMPRA, DateToStr(EncodeDate(y,m,d)) );

                ConsultaNro.respuesta.guardarPDF(DMMain_FD.MainPath+'Archivos Liquidaciocnes\'+DatosCompra.CDSCompraCabRAZONSOCIAL.AsString+'-'+DatosCompra.CDSCompraCabNROCPBTE.AsString+'.pdf');
                  ShowMessage('CAE obtenido: ' + FloatToStr(ConsultaNro.respuesta.cabecera.cae));
              except
                on E: Exception do
                  ShowMessage(E.Message);
              end;
            end
            else
            ShowMessage(ConsultaNro.respuesta.errores);
          end
        else
          ShowMessage(wslsp.ErrorDesc);
      end;
  //Agregar.Enabled:=True;
end;

procedure TFormCompra_2.RevisaTasaIvaExecute(Sender: TObject);
begin
  inherited;
  if not(DatosCompra.CDSCompraDet.IsEmpty) and (DSBase.State=dsBrowse) then
    begin
      DatosCompra.spActualizaTasaIvaDetalle.Close;
      DatosCompra.spActualizaTasaIvaDetalle.Params.ParamByName('id_detalle').Value:=DatosCompra.CDSCompraDetID.Value;
      DatosCompra.spActualizaTasaIvaDetalle.ExecProc;
      DatosCompra.spActualizaTasaIvaDetalle.Close;
      Recuperar.Execute;
    end;

end;

procedure TFormCompra_2.dbeFechaCompra_oldExit(Sender: TObject);
begin
  inherited;
  DatosCompra.CDSCompraCabFECHACOMPRASetText(DatosCompra.CDSCompraCabFECHACOMPRA,dbeFechaCompra.Text);
end;

procedure TFormCompra_2.dbeFechaFiscalEnter(Sender: TObject);
begin
  inherited;
  dbeFechaFiscal.Color:=clMoneyGreen;
end;

procedure TFormCompra_2.dbeFechaFiscalExit(Sender: TObject);
begin
  inherited;
  dbeFechaFiscal.Color:=clWhite;
  if DatosCompra.CDSCompraCab.State in [dsInsert,DsEdit] then
    DatosCompra.CDSCompraCabFECHAFISCALSetText(DatosCompra.CDSCompraCabFECHAFISCAL,DateToStr( dbeFechaFiscal.Date));
end;

procedure TFormCompra_2.dbeFechaCompraExit(Sender: TObject);
begin
  inherited;
  DatosCompra.CDSCompraCabFECHACOMPRASetText(DatosCompra.CDSCompraCabFECHACOMPRA,DateToStr(dbeFechaCompra.date));
  DatosCompra.AsignarCondCompra(DatosCompra.CDSCompraCabCODIGO.Value,DatosCompra.CDSCompraCabCONDICIONCOMPRA.Value);

  if (DatosCompra.CDSCompraCab.State in [dsInsert,DsEdit]) and (dbeFechaCompra.Date>Date) or ( YearOf(dbeFechaCompra.Date)<1900) Then
    begin
      if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
        begin
          FormCompra_2.dbeFechaCompra.Clear;
          FormCompra_2.dbeFechaCompra.SetFocus;
        end;
    end;
  if (DatosCompra.CDSCompraCab.State in [dsInsert,DsEdit]) and (DatosCompra.CDSCompraCabFECHAFISCAL.AsString='') Then
    begin
      if (FormCompra_2.dbeFechaCompra.Date>0) then
        DatosCompra.CDSCompraCabFECHAFISCALSetText(DatosCompra.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));
    end
  else
    if (DatosCompra.CDSCompraCab.State in [dsInsert,DsEdit]) and (CompareDate(DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime,DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime)<>0) and (ControlaFechaFiscal.Checked) Then
      if MessageDlg('Actualiza Fecha Fisca...??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        DatosCompra.CDSCompraCabFECHAFISCALSetText(DatosCompra.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));
  //DatosCompra.CDSCompraCabFECHAVTO.Value:=DatosCompra.CDSCompraCabFECHACOMPRA.Value+DatosCompra.CDSCompraCabc )
end;

procedure TFormCompra_2.AgregarProveedorExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      if Not(Assigned(FormProveedor_2)) Then
        FormProveedor_2:=TFormProveedor_2.Create(Application);
      FormProveedor_2.Agregar.Execute;
    end;
end;

procedure TFormCompra_2.AnulaLiquidacionExecute(Sender: TObject);
var  CuitEmisor,CuitAutorizado,CuitReceptor:String;
  d,m,y:word;
  wslsp     : Iwslsp;
  Solicitud : IGenerarAjusteReq;
  Response  : IGenerarAjusteResp;
  Certificado,Clave:String;
  ComprobanteANulado:String;
  puntoVenta               : Integer;
  tipoComprobante          : Integer;
  I: Integer;
  ConsultaUltimoNroResponse: IConsultarUltimoNroComprobantePorPtoVtaResp;
begin
  if (DSBase.DataSet.FieldByName('TIPO_LIQUIDACION').Value<>'X') then
    begin

      if DatosCompra.CDSCompraCabTIPO_LIQUIDACION.Value='C' then
        raise Exception.Create('Esta una liquidacion de credito... No se puede Anular');
      ArchivoIni        := TIniFile.Create(DMMain_FD.MainPath + DMMain_FD.NombreIni);
      Clave             := ArchivoIni.ReadString('FacturaEelectronica', 'Clave', '');
      Certificado       := ArchivoIni.ReadString('FacturaEelectronica', 'Certificado', '');
      ModoFcElectronica := ArchivoIni.ReadInteger('FacturaEelectronica', 'Modo',0);//Modo de Prueba.... por defecto
      ArchivoIni.free;

      CuitEmisor:= Trim( DatosCompra.CDSEmpresa.FieldByName('cuit').AsString);
      while Pos('-',CuitEmisor)<>0 do
        delete(CuitEmisor,Pos('-',CuitEmisor),1);
      if (CuitEmisor='') or (copy(CuitEmisor,1,1)='0') then
        Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');


      puntoVenta           := StrToInt(DatosCompra.CDSCompraCabSUCFAC.AsString);//  1;
      tipoComprobante      := DatosCompra.CDSCompraCabTIPOCOMP_AFIP.AsInteger;//   186;

      wslsp                := Cowslsp.Create;
      wslsp.CUIT           := StrToFloat(CuitEmisor);// 20939802593; 20939802593;
      wslsp.modoProduccion := ModoFcElectronica=1;// false;  False;

      wslsp.Depurar        := True;

      if wslsp.login(certificado, clave) then
        begin
          try
            ConsultaUltimoNroResponse := wslsp.consultarUltimoNroComprobantePorPtoVta(puntoVenta, tipoComprobante);

            Solicitud                       := wslsp.nuevoAjuste;
            Solicitud.tipoAjuste            := 'C';
            Solicitud.fechaComprobante      := FormatDateTime('YYYY-MM-DD',Date);//DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime);// '2017-06-05';
            Solicitud.emisor.puntoVenta     := puntoVenta;// 10;
            Solicitud.emisor.nroComprobante := Trunc(ConsultaUltimoNroResponse.respuesta.nroComprobante + 1);//  DatosCompra.CDSCompraCabNUMEROFAC.AsInteger;// 1;
            Solicitud.emisor.comprobanteAAjustar.tipoComprobante            := DatosCompra.CDSCompraCabTIPOCOMP_AFIP.AsInteger;// 183;
            Solicitud.emisor.comprobanteAAjustar.puntoVenta                 := puntoVenta;// 10;
            Solicitud.emisor.comprobanteAAjustar.nroComprobante             := DatosCompra.CDSCompraCabNUMEROFAC.AsInteger;// 20;
            i:=0;
            DatosCompra.CDSCompraDet.First;
            while Not(DatosCompra.CDSCompraDet.Eof) do
              begin
                Solicitud.itemDetalleAjusteLiquidacion[i].nroItemAjustar        := i+1;// D atosCompra.CDSCompraDetCODIGOARTICULO.AsInteger;// 1;
                Solicitud.itemDetalleAjusteLiquidacion[i].ajusteFisico.cantidad := DatosCompra.CDSCompraDetCANTIDAD.AsInteger;// 10;
                DatosCompra.CDSCompraDet.Next;
                i:=i+1;
              end;
            Response := wslsp.generarAjuste;

            if Response.respuesta.hayErrores then
              ShowMessage(Response.respuesta.errores)
            else
              begin
                if not DirectoryExists(DMMain_FD.MainPath + 'Archivos Liquidaciocnes') then
                  CreateDir(DMMain_FD.MainPath+'Archivos Liquidaciocnes');
                ComprobanteANulado:='Comprobante Anulado - '+ DatosCompra.CDSCompraCabNROCPBTE.AsString+'('+DatosCompra.CDSCompraCabID_FC.AsString+')';
                Duplicar.Execute;
                for I := 0 to 10 do
                  begin
                    if Response.respuesta.tributo[i].codTributo>0 Then
                      begin
                        DatosCompra.CDSCompraTributos.Append;
                        DatosCompra.CDSCompraTributosCODTRIBUTO.Value   :=Response.respuesta.tributo[i].codTributo;
                        DatosCompra.CDSCompraTributosDESCRIPCION.Value  :=Response.respuesta.tributo[i].descripcion;
                        DatosCompra.CDSCompraTributosIMPORTE.Value      :=Response.respuesta.tributo[i].importe;
                        DatosCompra.CDSCompraTributos.Post;
                      end;
                  end;
                d:=StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,1,2));
                m:=StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,4,2));
                y:=StrToInt( Copy(Response.respuesta.cabecera.fechaVencimientoCae,7,4));
                DatosCompra.CDSCompraCabCAE_VENCIMIENTO.AsDateTime:=EncodeDate(y,m,d);
                DatosCompra.CDSCompraCabNumeroFacSetText(DatosCompra.CDSCompraCabNumeroFac,FloatToStr(Response.respuesta.emisor.nroComprobante));
                DatosCompra.CDSCompraCabCODIGOBARRA_AFIP.AsString := Response.respuesta.cabecera.nroCodigoBarras;
                DatosCompra.CDSCompraCabCAE.Value                 := FloatToStr(Response.respuesta.cabecera.cae);

                DatosCompra.CDSCompraCabOBSERVACION1.Value:=ComprobanteANulado;

                d:=StrToInt( Copy(Response.respuesta.datosLiquidacion.fechaComprobante,1,2));
                m:=StrToInt( Copy(Response.respuesta.datosLiquidacion.fechaComprobante,4,2));
                y:=StrToInt( Copy(Response.respuesta.datosLiquidacion.fechaComprobante,7,4));

                DatosCompra.CDSCompraCabFECHACOMPRA.AsDateTime:=EncodeDate(y,m,d);
                DatosCompra.CDSCompraCabFECHAFISCAL.AsDateTime:=EncodeDate(y,m,d);
                DatosCompra.CDSCompraCabTIPO_LIQUIDACION.AsString:='C';

                Confirma.Execute;
                Response.respuesta.guardarPDF(DMMain_FD.MainPath+'Archivos Liquidaciocnes\'+DatosCompra.CDSCompraCabRAZONSOCIAL.AsString+'-'+DatosCompra.CDSCompraCabNROCPBTE.AsString+'-AJ.pdf');
                ShowMessage('CAE obtenido: ' + FloatToStr(Response.respuesta.cabecera.cae));

              end;
          except
            on E: Exception do
              begin
                ShowMessage(E.Message);
              end;
          end;
        end
      else
        ShowMessage(wslsp.ErrorDesc);
    end;

end;

procedure TFormCompra_2.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := lowercase(DSBase.DataSet.FieldByName('TIPOCPBTE').Value);
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_FC').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_FC').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

procedure TFormCompra_2.dbgDetalleCompraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgDetalleCompra.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S' Then
    dbgDetalleCompra.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleCompra.Canvas.Font.Style:=[];
  dbgDetalleCompra.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormCompra_2.dbgDetalleLiquidacionColEnter(Sender: TObject);
begin
  inherited;
  if (cbCodOperacion.KeyValue=2) or
     (cbCodOperacion.KeyValue=102) or
     (cbCodOperacion.KeyValue=3) or
     (cbCodOperacion.KeyValue=103) then
    dbgDetalleLiquidacion.Columns[4].ReadOnly:=True
  else
    dbgDetalleLiquidacion.Columns[4].ReadOnly:=False;

end;

procedure TFormCompra_2.dbgDetalleLiquidacionEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;



procedure TFormCompra_2.dbgDetalleLiquidacionKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgDetalleLiquidacion.SelectedIndex < 8) THEN
        dbgDetalleLiquidacion.SelectedIndex := dbgDetalleLiquidacion.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgDetalleLiquidacion.DataSource.DataSet.Eof THEN
            dbgDetalleLiquidacion.DataSource.DataSet.Append;
          dbgDetalleLiquidacion.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF dbgDetalleLiquidacion.SelectedField = DatosCompra.CDSCompraDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END;
end;

procedure TFormCompra_2.dbgDetalleLotesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];
  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormCompra_2.dbgGastosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgGastos.SelectedIndex < 3) THEN
        dbgGastos.SelectedIndex := dbgGastos.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgGastos.DataSource.DataSet.Eof THEN
            dbgGastos.DataSource.DataSet.Append;
          dbgGastos.SelectedIndex := 0;
        END;
    END;
end;

procedure TFormCompra_2.dbgSeriesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;
end;

procedure TFormCompra_2.dbgTributosKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgTributos.SelectedIndex < 3) THEN
        dbgTributos.SelectedIndex := dbgTributos.SelectedIndex + 1
      ELSE
        BEGIN
          IF dbgTributos.DataSource.DataSet.Eof THEN
            dbgTributos.DataSource.DataSet.Append;
          dbgTributos.SelectedIndex := 0;
        END;
    END;
end;

procedure TFormCompra_2.BuscarRecepcionesExecute(Sender: TObject);
begin
  inherited;
  DatosCompra.Requiere_OC := False;
  FormBuscarRecepcionesPendientes.ShowModal;
end;

end.
