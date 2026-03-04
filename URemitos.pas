unit URemitos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, UABMBase, FMTBcd, Menus,
  frxExportPDF, frxExportText, frxDMPExport, frxClass, frxExportRTF, frxDBSet,
  StdCtrls, ComCtrls, Grids, DBGrids, ExtCtrls, JvExMask, JvToolEdit,
  JvDBControls, DBCtrls, Mask, DB, SqlExpr, DBXCommon, Math, Clipbrd,
  JvComponentBase, JvFormPlacement, ImgList, Controls,
  ActnList, JvLabel, JvExControls, JvGradient, Buttons, ToolWin,
  Forms, CheckLst, Dialogs, Variants,GridClickPatch,IniFiles, JvExDBGrids,
  JvDBGrid, JvBaseDlg, JvDesktopAlert, JvDBLookup, System.Actions, JvAppStorage,
  JvAppIniStorage, Data.Win.ADODB, CompBuscador, JvExExtCtrls, JvExtComponent,
  JvPanel, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,SystelConn,
  dxGDIPlusClasses, JvExStdCtrls, JvCombobox, JvDBCombobox, frxExportBaseDialog,
  System.ImageList, System.UITypes,StrUtils,Librerias, frCoreClasses,
  Datasnap.DBClient, Vcl.ValEdit;

type
  TFormRemitos = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText66: TDBText;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    DBCheckManual: TDBCheckBox;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeEntrega: TDBEdit;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Bevel8: TBevel;
    Label17: TLabel;
    Bevel21: TBevel;
    DBText60: TDBText;
    dbtTotal: TDBText;
    Label1: TLabel;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    PagPieCpbte: TTabSheet;
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
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVenta: TAction;
    BuscarTipoCpbte: TAction;
    BuscarArticulo: TAction;
    Imprimir: TAction;
    frRemitos: TfrxReport;
    frxDbCabecera: TfrxDBDataset;
    frxDBDetalle: TfrxDBDataset;
    frxDBImpuestos: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    dbeMuestraVendedor: TDBEdit;
    BuscarVendedor: TAction;
    BtAnular: TSpeedButton;
    Anular: TAction;
    ToolButton2: TToolButton;
    Label3: TLabel;
    dbeDscto_1: TDBEdit;
    Bevel2: TBevel;
    DBText10: TDBText;
    SpeedButton1: TSpeedButton;
    DatosCliente: TAction;
    Recalcular: TAction;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    pnCosto: TPanel;
    dbtCosto: TDBText;
    Label8: TLabel;
    dbtDetalle: TDBText;
    dbgExitencias: TDBGrid;
    spCorreo: TSpeedButton;
    EnviarCorreo: TAction;
    btTareas: TBitBtn;
    Tareas: TAction;
    DesmarcarImpreso: TAction;
    frxPDFExport1: TfrxPDFExport;
    Facturar: TAction;
    spFacturacion: TSpeedButton;
    CambiarNro: TAction;
    spMenu: TSpeedButton;
    PopupMenu1: TPopupMenu;
    CambiarNro1: TMenuItem;
    DesmarcarImpreso1: TMenuItem;
    RestaurarNV: TAction;
    dbId: TDBText;
    RxCCodigo: TJvDBComboEdit;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCConVta: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    VerFactura: TAction;
    pnFactura: TPanel;
    DBText8: TDBText;
    DBText11: TDBText;
    DBText12: TDBText;
    RestaurarPres: TAction;
    dbeFechaVta: TJvDBDateEdit;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel62: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel5: TJvLabel;
    RestaurarNP: TAction;
    chPreview: TCheckBox;
    LimpiarRtosSinFc: TAction;
    N1: TMenuItem;
    LimpiarelcampoIdFacdelosRtosSinFc1: TMenuItem;
    MarcarEntrgado: TAction;
    N2: TMenuItem;
    MarcarEntrgado1: TMenuItem;
    pnPrecios: TPanel;
    dbgPrecios: TJvDBGrid;
    jvAlerta: TJvDesktopAlert;
    RecuperaRto: TAction;
    N3: TMenuItem;
    RecuperaRto1: TMenuItem;
    CopiarDetalle: TAction;
    PegarDetalle: TAction;
    PopupMenu2: TPopupMenu;
    CopiarDetalle1: TMenuItem;
    PegarDetalle1: TMenuItem;
    JvLabel2: TJvLabel;
    Panel3: TPanel;
    lbEstadoIVA: TJvLabel;
    N4: TMenuItem;
    CopiarPortaPaplesWindows1: TMenuItem;
    pnColumnas: TPanel;
    chklstColumnas: TCheckListBox;
    btnSalirColumna: TButton;
    Columnas1: TMenuItem;
    BusqedarPorReferencia: TAction;
    BusquedaPorReferencia1: TMenuItem;
    MarcarNoFacturable: TAction;
    MarcarNoFacturable1: TMenuItem;
    DBText13: TDBText;
    RxLabel6: TJvLabel;
    dbeBultos: TDBEdit;
    Label9: TLabel;
    N5: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    dbcTransporte: TDBLookupComboBox;
    spFiscalizar: TSpeedButton;
    Fiscalizar: TAction;
    frEmpresa: TfrxDBDataset;
    SpeedButton2: TSpeedButton;
    ImpresionRotulo: TAction;
    RecalcuoPrecios: TAction;
    N6: TMenuItem;
    RecuperaRtoparafacturar1: TMenuItem;
    dskAviso: TJvDesktopAlert;
    ImportarDesdeXLS: TAction;
    ADOConnection: TADOConnection;
    ADODSDetalelleXLS: TADODataSet;
    OpenDialog: TOpenDialog;
    N7: TMenuItem;
    ImportarDesdeExcel1: TMenuItem;
    pnLimiteCto: TPanel;
    lbLimite: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Lte: TLabel;
    Saldo: TLabel;
    Label19: TLabel;
    SaldoRto: TLabel;
    btAnexosTr: TBitBtn;
    ComBuscadorLdr: TComBuscador;
    ComBuscadorConVta: TComBuscador;
    ComBuscadorSuc: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    BuscarPorObservacion: TAction;
    pnDetalleAdicional: TJvPanel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    dbeNro: TDBEdit;
    dbeDetAdicional: TDBMemo;
    IngTroquel: TAction;
    spTroqueles: TSpeedButton;
    AnexosTR: TAction;
    LeerPeso: TAction;
    ConectarBalanza: TAction;
    imBalanza: TImage;
    GenerarMovStock: TAction;
    GenerarMovStock1: TMenuItem;
    JvLabel6: TJvLabel;
    Panel4: TPanel;
    DBText15: TDBText;
    VerNotaPedido: TAction;
    N8: TMenuItem;
    OrdenarArticulosImpresionPorSubRubros1: TMenuItem;
    OrdenarArticulosImpresionPorLote: TMenuItem;

    JvLabel7: TJvLabel;
    pnFechaAlquiler: TPanel;
    chLista: TCheckBox;
    DBText14: TDBText;
    JvLabel5: TJvLabel;
    dbcMoneda: TJvDBLookupCombo;
    JvLabel1: TJvLabel;
    dbFechaDevol: TJvDBDateEdit;
    DevolverAlq: TAction;
    N9: TMenuItem;
    DevolverAlquiler: TMenuItem;
    btDevolver: TSpeedButton;
    JvLabel9: TJvLabel;
    DBText16: TDBText;
    frxDBTroqueles: TfrxDBDataset;
    dbFechaEntrega: TJvDBDateEdit;
    JvLabel10: TJvLabel;
    N10: TMenuItem;
    ExpresarUnidadesenEnteros1: TMenuItem;
    pnRefFactura: TPanel;
    DBText9: TDBText;
    VerFacturaXDetalle: TAction;
    JvLabel11: TJvLabel;
    frxDBSucursal: TfrxDBDataset;
    N11: TMenuItem;
    MostrarTasaIva1: TMenuItem;
    MostrarSignoMoneda1: TMenuItem;
    MostrarPrecioUnitario1: TMenuItem;
    MostrarDescuento1: TMenuItem;
    MostrarTotal1: TMenuItem;
    MostrarUnidadesdeStokc1: TMenuItem;
    MostrarFacturaAsociadad1: TMenuItem;
    lbDragDrop: TLabel;
    btNuevoCliente: TSpeedButton;
    AgregarCliente: TAction;
    PedidoCOT: TAction;
    SpeedButton4: TSpeedButton;
    DBText17: TDBText;
    DBText18: TDBText;
    Label10: TLabel;
    DBText20: TDBText;
    pnTipoRto: TPanel;
    JvLabel8: TJvLabel;
    cbDevolucion: TJvDBComboBox;
    Pasar_A_Papelera: TAction;
    Papelera: TAction;
    spPapelera: TSpeedButton;
    lbRtoModificaStock: TLabel;
    PagLotes: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    pnLote: TPanel;
    lblJvLabel8: TLabel;
    cbLote: TJvDBComboEdit;
    Panel6: TPanel;
    lblJvLabel10: TLabel;
    lblJvLabel11: TLabel;
    lblJvLabel9: TLabel;
    dbeDespacho: TDBEdit;
    dbeCantidadLote: TDBEdit;
    dbeCant: TDBEdit;
    BuscarLote: TAction;
    ComBuscadorLote: TComBuscador;
    JvLabel12: TJvLabel;
    DBText21: TDBText;
    chOrdenarDetalle: TCheckBox;
    Pikeo: TAction;
    spPikeo: TSpeedButton;
    pagTabla: TTabSheet;
    DBGrid1: TDBGrid;
    ValueListEditor1: TValueListEditor;
    Button1: TButton;
    Button2: TButton;
    CambiarTransporte: TAction;
    SpeedButton3: TSpeedButton;
    DBText19: TDBText;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVentaExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure AgregarExecute(Sender: TObject);
    procedure DBCheckManualClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure DatosClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frRemitosPrintReport(Sender: TObject);
    procedure TareasExecute(Sender: TObject);
    procedure btTareasMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BorrarExecute(Sender: TObject);
    procedure DesmarcarImpresoExecute(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure CambiarNroExecute(Sender: TObject);
    procedure RestaurarNVExecute(Sender: TObject);
    procedure VerFacturaExecute(Sender: TObject);
    procedure RestaurarPresExecute(Sender: TObject);
    procedure sbEstadoClick(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RestaurarNPExecute(Sender: TObject);
    procedure LimpiarRtosSinFcExecute(Sender: TObject);
    procedure MarcarEntrgadoExecute(Sender: TObject);
    procedure dbtTotalMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure RecuperaRtoExecute(Sender: TObject);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure lbEstadoIVAClick(Sender: TObject);
    procedure CopiarPortaPaplesWindows1Click(Sender: TObject);
    procedure Columnas1Click(Sender: TObject);
    procedure btnSalirColumnaClick(Sender: TObject);
    procedure dbcMonedaClick(Sender: TObject);
    procedure BusqedarPorReferenciaExecute(Sender: TObject);
    procedure MarcarNoFacturableExecute(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure FiscalizarExecute(Sender: TObject);
    procedure ImpresionRotuloExecute(Sender: TObject);
    procedure RecalcuoPreciosExecute(Sender: TObject);
    procedure ImportarDesdeXLSExecute(Sender: TObject);
    procedure dbcTransporteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarPorObservacionExecute(Sender: TObject);
    procedure dbeDetAdicionalKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure IngTroquelExecute(Sender: TObject);
    procedure DBGrillaDetalleColExit(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure AnexosTRExecute(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure LeerPesoExecute(Sender: TObject);
    procedure ConectarBalanzaExecute(Sender: TObject);
    procedure GenerarMovStockExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure VerNotaPedidoExecute(Sender: TObject);
    procedure OrdenarArticulosImpresionPorSubRubros1Click(Sender: TObject);
    procedure OrdenarArticulosImpresionPorLoteClick(Sender: TObject);
    procedure DSBaseDataChange(Sender: TObject; Field: TField);
    procedure DevolverAlqExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ExpresarUnidadesenEnteros1Click(Sender: TObject);
    procedure VerFacturaXDetalleExecute(Sender: TObject);
    procedure MostrarTasaIva1Click(Sender: TObject);
    procedure MostrarSignoMoneda1Click(Sender: TObject);
    procedure MostrarPrecioUnitario1Click(Sender: TObject);
    procedure MostrarDescuento1Click(Sender: TObject);
    procedure MostrarTotal1Click(Sender: TObject);
    procedure MostrarUnidadesdeStokc1Click(Sender: TObject);
    procedure MostrarFacturaAsociadad1Click(Sender: TObject);
    procedure DBGrillaDetalleMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DBGrillaDetalleEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure AgregarClienteExecute(Sender: TObject);
    procedure PedidoCOTExecute(Sender: TObject);
    procedure Pasar_A_PapeleraExecute(Sender: TObject);
    procedure PapeleraExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure dbcTransporteClick(Sender: TObject);
    procedure dbcTransporteEnter(Sender: TObject);
    procedure BuscarLoteExecute(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chOrdenarDetalleClick(Sender: TObject);
    procedure PikeoExecute(Sender: TObject);
    procedure RxCCodigoExit(Sender: TObject);
    procedure pcDetalleFacturaChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CambiarTransporteExecute(Sender: TObject);


  private
    { Private declarations }
    FGravado  : Boolean;
    FId       : Integer;
    FNroCpbte : string;
    Balanza   : tSystelConnect;
    ChoiceControlPrecio: Byte;
    function ControlLotes: Boolean;
    procedure MostrarRegistroEnValueList(ADataset: TDataSet;
      AValueList: TValueListEditor);   // mrYes, mrNo, mrYesToAll, mrNoToAll
  public
     Anulado:TPanel;
     CpbteNuevo: Char;
     Copias: Integer;
     Calcula_iva_articulo:Boolean;
     Impresa:Boolean;
     ListaTareas:TCheckListBox;
     MuestraTareas:String;
     SucursalComprobante:Integer;
     IDComprobante:Integer;
     ColumnasVisble      :String;
     Deposito:Integer;
     Box:Byte;
     RemitoIni:TIniFile;
     ListaRto:String;
     MargenUtilidad:Extended;
     procedure AgregarCabFactura;
     procedure AgregarDetFactura;
   published
     property GravadoOk:Boolean read FGravado write FGravado;
     property Id:Integer read FId write FId;
     property NroCpbte:String read FNroCpbte write FNroCpbte;
     procedure CopiarClipBoard(Grilla:TDBGrid);
     procedure AgregarPikeo(CDSDatos:TClientDataSet);
    { Public declarations }
  end;

var
  FormRemitos: TFormRemitos;

PROCEDURE UltimoComprobante;

implementation

uses DMRemitos, ComposicionPrecio, UConsultaArticuloVendido,
     UBuscadorCpbte, UDatosClienteCabeceraCpbte, UConsultaStock,
     UBuscadorClientes, UBuscadorArticulos, ULogin, UCorreo, DMVenta, UFactura_2,
     UBuscadorTipoCpbte, UBuscadorDepositos, UCambiaNumeroCpbte,
     DMStoreProcedureForm, DMBuscadoresForm, UNotaVenta, UPresupuesto_2,
     UBuscarPorNroReferencia, UBuscadorComprobantes, UFiscalizacion,
     UAnexosRtoTransporte, UBuscadorPorObs, URtoTroqueles, UStock_2,
     UNotaPedidoCliente, UBuscadorLDR, UDevolucionAlq, UDMain_FD, UFacturaCtdo_2,
     CotLinker_TLB, URestaurarPapelera, UFecha, UBorradorRegistrPikeo,
  UEleccionTransporte;

{$R *.DFM}


procedure TFormRemitos.CopiarClipBoard(Grilla:TDBGrid);
var
  i_local,j_local: Integer;
  BookMark_local: TBookmark;
  s_local,Campo: string;
begin
  Grilla.DataSource.DataSet.DisableControls;  // evita parpadeo en la grilla
  try
    BookMark_local:= Grilla.DataSource.DataSet.Bookmark;  // guardar posición
    Grilla.DataSource.DataSet.first; // ir a 1era fila
    s_local:= '';

    for j_local:= 0 to Grilla.FieldCount - 1 do   // campos
      begin
         if (chklstColumnas.Checked[j_local]) then
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
           if (chklstColumnas.Checked[j_local]) then
            begin
              campo:='';
  //            if (Grilla.Fields[j_local].DataType=ftFloat) or
  //               (Grilla.Fields[j_local].DataType=ftBCD) or
  //               (Grilla.Fields[j_local].DataType=ftFMTBcd) Then
  //              begin
  //                 if (J_local=9) or (J_local=7) then
  //                   begin
  //                     if DatosRemitos.CDSRtoCabDESGLOZAIVA.Value='S' then
  //                       campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
  //                     else
  //                       campo:= FormatFloat(',0.00',RoundTo( (Grilla.Fields[j_local].AsFloat * ((1+Grilla.Fields[3].AsFloat*0.01))),-2));
  //                   end
  //                 else
  //                   campo:= FormatFloat(',0.00',RoundTo( Grilla.Fields[j_local].AsFloat,-2))
  //
  //               end
  //             else
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


function TFormRemitos.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentas.wwCDSVentaDet.DisableControls;
  DatosRemitos.CDSRtoDet.First;
  while not(DatosRemitos.CDSRtoDet.Eof) and aux=True do
    begin
      if DatosRemitos.CDSRtoDetCONTROLA_TRAZABILIDAD.Value='S' Then
        begin
          if (Int(DatosRemitos.CDSRtoDetCANTIDAD.AsFloat)=Int(DatosRemitos.CDSRtoLoteCANTIDAD.AsFloat)) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosRemitos.CDSRtoDet.Next;
    end;
 // DatosVentas.wwCDSVentaDet.EnableControls;
  Result:=Aux;
end;

procedure TFormRemitos.AgregarCabFactura;
begin
  with DatosVentas,DatosRemitos DO
  begin
    FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
    FormCpbte_2.DepositoPorDefecto:=Deposito;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtoCabCODIGO.AsString);
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSRtoCabLDR.AsString);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));

    CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,CDSRtoCabCONDICIONVTA.AsString);

    CDSVentaCabANULADO.Value       :='N';

    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabOBSERVACION1.Value  :=CDSRtoCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value  :=CDSRtoCabOBSERVACION2.Value;
    CDSVentaCabCPTE_MANUAL.Value   :='N';

    CDSVentaCabZONA.Value          :=CDSRtoCabZONA.Value;
   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;
    CDSVentaCabIDREMITO.Value      := CDSRtoCabID_RTO.Value;
    CDSVentaCabTIPO_REMITO.Value   := CDSRtoCabTIPOCPBTE.Value;
    CDSVentaCabNRORTO.Value        := CDSRtoCabNROCPBTE.Value;


    if CDSRtoCabLISTAPRECIO.AsString<>'' then
      CDSVentaCabLISTAPRECIO.Value :=CDSRtoCabLISTAPRECIO.Value;
    if CDSRtoCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSRtoCabVENDEDOR.AsString);

    CDSVentaCabNOMBRE.Value          := CDSRtoCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value     := CDSRtoCabRAZONSOCIAL.Value;
    CDSVentaCabDIRECCION.Value       := CDSRtoCabDIRECCION.Value;
    CDSVentaCabCPOSTAL.Value         := CDSRtoCabCPOSTAL.Value;
    CDSVentaCabLOCALIDAD.Value       := CDSRtoCabLOCALIDAD.Value;
    CDSVentaCabFECHA_HORA.AsDateTime := Now;
    CDSVentaCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    FormCpbte_2.DiscriminaIva        := 'S';

  end;
end;

procedure TFormRemitos.AgregarClienteExecute(Sender: TObject);
var
  CodAux: string;
begin
  inherited;
  CodAux  :=  DMMain_FD.NuevoCliente;
  if CodAux <> '' then
    DSBase.DataSet.FieldByName('CODIGO').Text :=  CodAux;
end;

procedure TFormRemitos.AgregarDetFactura;
Var UnitarioTotal,Precio,PrecioRto:Extended;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosVentas,DatosRemitos DO
    begin
      CDSVentaDet.Append;
      DMMain_FD.QStockPrecio.Close;
      DMMain_FD.QStockPrecio.ParamByName('Codigo').Value  := CDSRtoDetCodigoArticulo.Value;
      DMMain_FD.QStockPrecio.ParamByName('deposito').Value:= CDSRtoCabDEPOSITO.Value;
      DMMain_FD.QStockPrecio.ParamByName('Lista').Value   := CDSRtoCabLISTAPRECIO.Value;
      DMMain_FD.QStockPrecio.ParamByName('Sucursal').Value:= CDSRtoCabSUCURSAL.Value;
      DMMain_FD.QStockPrecio.Open;

      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtoDetCODIGOARTICULO.AsString);
      CDSVentaDetDetalle.Value            := CDSRtoDetDETALLE.Value;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtoDetCantidad.AsString);
      CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=CDSRtoDetCANTIDAD_UNIDADES.AsFloat;

      CDSVentaDetDESGLOZAIVA.Value        := CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value           := CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value         := CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTipoCpbte.Value          := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,CDSRtoDetDESCUENTO.AsString);

      Precio       := DMMain_FD.QStockPrecioPRECIO.AsFloat;
      PrecioRto    := DatosRemitos.CDSRtoDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' then
        begin
          Precio      := Precio * (1 + DatosRemitos.CDSRtoDetIVA_TASA.AsFloat * 0.01);
          PrecioRto   := PrecioRto + DatosRemitos.CDSRtoDetIVA_UNITARIO.AsFloat;
        end;

      CDSVentaDetLOTE.Value               := CDSRtoDetLOTE.Value;
      if ((Trunc(Precio * 100) - Trunc( PrecioRto * 100)) > 1) and
         (DMMAin_FD.VerificaCambioPrecio) and (ChoiceControlPrecio <> mrNoToAll)   Then
        begin
          if  (ChoiceControlPrecio <> mrYesToAll) then
            ChoiceControlPrecio  :=         MessageDlg('Precio distinto al ingresado'+#13+
                                              'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                                              'Precio Cargado:'+FormatFloat('0.00',PrecioRto)+#13+
                                              'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                                              'Modifica?',mtConfirmation,[mbYesToAll,mbYes,mbNo,mbNoToAll],0);
        end;

      if ((Trunc(Precio * 100) - Trunc( PrecioRto * 100)) > 1) and (ChoiceControlPrecio in [mrYes, mrYesToALl]) then
        begin

          CDSVentaDetCosto_Gravado.AsFloat     := DMMain_FD.QStockPrecioCOSTO_GRAVADO.AsFloat;
          CDSVentaDetCosto_Exento.AsFloat      := DMMain_FD.QStockPrecioCOSTO_EXENTO.AsFloat;
          CDSVentaDetCosto_Total.AsFloat       := DMMain_FD.QStockPrecioCOSTO_TOTAL.AsFloat;

          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, CDSVentaCabLISTAPRECIO.AsInteger,CDSVentaCabSUCURSAL.AsInteger,CDSVentaCabDEPOSITO.AsInteger,
                                        CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString, CDSVentaCabTIPOCPBTE.AsString,
                                        CDSVentaDetCOTIZACION.AsFloat, CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,
                                        Exento,
                                        Total,
                                        Iva,
                                        Margen,
                                        Dscto,PFinal);

      // Verifico si el Comprobante calcual el Iva en los items
          if (FormCpbte_2.Divide_iva=True) then
              Iva:=Iva/2;
          if (FormCpbte_2.Calcula_iva_articulo=False) then
              Iva:=0;

          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
          CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          CDSVentaDetMARGEN.ASFloat          :=Margen;
          CDSVentaDetDESCUENTO.ASFloat       :=Dscto;
          //              DatosVentas.CalculaPrecioVta;

          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;;

          CDSVentaDetUnitario_Total.Text    :=  FloatToStr(UnitarioTotal);

        end
      //else
//        begin
//          CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtoDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//          CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtoDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//          CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtoDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//
//          CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtoDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//          CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtoDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//          CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtoDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//
//          if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
//            begin
//              CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtoDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//              CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtoDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
//            end
//          else
//            begin
//              CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
//              CDSVentaDetIVA_TOTAL.AsFloat        :=0;
//            end;
//
//          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;
//
//          if CDSVentaCabDESGLOZAIVA.Value='N' Then
//            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;
//
//          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
//        end;
//          end
      else
        begin
          CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtoDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtoDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtoDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtoDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtoDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtoDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtoDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            end
          else
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
              CDSVentaDetIVA_TOTAL.AsFloat        :=0;
            end;

          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          CDSVentaDetUnitario_Total.Text    :=  FloatToStr(UnitarioTotal);
          if CDSRtoDetCANTIDAD_UNIDADES.AsFloat>0 then
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=CDSRtoDetCANTIDAD_UNIDADES.AsFloat;

        end;

      //if DMMain_FD.DescuentaStockRto then
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';

      DMMain_FD.QStockPrecio.Close;
      CDSVentaDet.Post;
    end;
end;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosRemitos, FormRemitos,DMStoreProcedure DO
    BEGIN
      IF (DBCheckManual.Checked <> true) THEN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF (CDSRtoCabLETRARTO.AsString <> '') AND (CDSRtoCabCLASECPBTE.Value <> '') THEN
            BEGIN
              spNumeroCpbte.Close;
              spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSRtoCabLETRARTO.AsString;
              spNumeroCpbte.ParamByName('Sucursal').Value    := CDSRtoCabSucursal.Value;
              spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSRtoCabCLASECPBTE.Value;
              spNumeroCpbte.ParamByName('TipoComp').Value    := CDSRtoCabTIPOCPBTE.AsString;
              spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
              spNumeroCpbte.ExecProc;
              IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
                BEGIN
                  IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
                  ELSE
                    Numero := 1;
                  CDSRtoCabSUCRTOSetText(CDSRtoCabSUCRTO,IntToStr(Numero));
                  IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                    Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
                  ELSE
                    Numero := 1;
                  CDSRtoCabNumeroRtoSetText(CDSRtoCabNumeroRto,IntToStr(Numero));
                END;
            // el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
            //  wwCDSRtoCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
            //  wwCDSRtoCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
            //  wwCDSRtoCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSRtoCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSRtoCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
              Imprime                            := spNumeroCpbte.ParamByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
          CDSRtoCabNroCpbte.AsString := CDSRtoCabLetraRto.AsString + CDSRtoCabSucRto.AsString +
            CDSRtoCabNumeroRto.AsString;
        END;
    END;
END;


procedure TFormRemitos.FormCreate(Sender: TObject);
var i:integer;
begin
  if FormRemitos<>NIL then
    FreeAndNil(FormRemitos);
  inherited;
  SinBDE:=2;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Calcula_iva_articulo := True;

  IF NOT (Assigned(DatosRemitos)) THEN
    DatosRemitos := TDatosRemitos.Create(self);

  IF NOT (Assigned(FormAnexosRtoTransporte)) THEN
    FormAnexosRtoTransporte := TFormAnexosRtoTransporte.Create(Self);

  IF NOT (Assigned(FormRtoTroqueles)) THEN
    FormRtoTroqueles := TFormRtoTroqueles.Create(Self);

  if DSBase.DataSet=nil Then
    DSBase.DataSet:=datosRemitos.CDSRtoCab;
  with DatosRemitos DO
    begin
      AddClientDataSet(CDSRtoCab,DSPRtoCab);
      AddClientDataSet(CDSRtoDet,DSPRtoDet);
      AddClientDataSet(CDSImpuestos,DSPImpuestos);
      AddClientDataSet(CDSRtoTroqueles,DSPRtoTroqueles);
      AddClientDataSet(CDSRtoLote,DSPRtoLote);


      CDSRtoCab.close;
      CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
      CDSRtoCab.Params.ParamByName('id').Clear;
      CDSRtoCab.Open;

      CDSRtoDet.Close;
      CDSRtoDet.Params.ParamByName('id').Clear;
      CDSRtoDet.Open;

      CDSImpuestos.Close;
      CDSImpuestos.Params.ParamByName('id').Clear;
      CDSImpuestos.Open;

      CDSRtoTroqueles.Close;
      CDSRtoTroqueles.Params.ParamByName('id').Clear;
      CDSRtoTroqueles.Open;

      CDSRtoLote.MasterSource := nil;
      CDSRtoLote.MasterFields := '';

      CDSRtoLote.Close;
      CDSRtoLote.Params.ParamByName('id').Clear;//Value     := StrToInt(DatoNew);//DatosVentas.CDSVentaDetID.AsInteger;//
      CDSRtoLote.Open;

      CDSRtoLote.MasterSource := DSRtoDet;
      CDSRtoLote.MasterFields := 'ID';

      CDSEmpresa.Open;

      CDSRtoCab.EmptyDataSet;
      CDSRtoDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      CDSRtoTroqueles.EmptyDataSet;

      CDSTarea.Close;
      CDSTarea.Open;

      CDSMoneda.Close;
      CDSMoneda.Open;

      CDSTransporte.Open;

      AplicarMascarasNumericas;
    end;

//    DMMain_FD.QOpciones.Close;
    // Verifico la Opcion de Ver Stock y si vendo con stock cero
//    DMMain_FD.QOpciones.Close;
//    DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VERSTOCK';
//    DMMain_FD.QOpciones.Open;
//    DMMain_FD.VerStock :=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//    DMMain_FD.QOpciones.Close;

//    DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VTASTOCKCERO';
//    DMMain_FD.QOpciones.Open;
//    DMMain_FD.VenderSinStock:=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//    DMMain_FD.QOpciones.Close;

   dbeDscto.Enabled                   :=(DMMain_FD.AplicaDescuento);
   dbeDscto_1.Enabled                 :=(DMMain_FD.AplicaDescuento);

   gbLista.Enabled:=(DMMain_FD.ModificaListaPrecios);
   pnCosto.Visible:=(DMMain_FD.VerCostos);
   //***************************************************************
   begin
      ListaTareas:=TCheckListBox.Create(Self);
      ListaTareas.Parent      := Self;
      ListaTareas.Font.Height := 16;
      ListaTareas.Top         := 200;
      ListaTareas.Left        := 350;
      ListaTareas.Height      := 170;
      ListaTareas.Width       := 160;
      ListaTareas.Visible     := False;
      DatosRemitos.CDSTarea.First;
      while not(DatosRemitos.CDSTarea.Eof) do
        begin
          ListaTareas.Items.Add(DatosRemitos.CDSTareaTAREA.Value);
          DatosRemitos.CDSTarea.Next;
       end;
   end;
   Tabla:='RtoCab';
   Campo:='id_rto';

   RemitoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Remito.ini');
   //*************************************************************
   ColumnasVisble                                 := RemitoIni.ReadString('Dato', 'Dato', '111111111111');
   VerCodigoAlternativo1.Checked                  := RemitoIni.ReadBool('codigo', 'codigo', False);
   chPreview.Checked                              := RemitoIni.ReadBool('Modo', 'Modo', False);
   ListaRto                                       := RemitoIni.ReadString('Lista', 'Lista','');
   chLista.Checked                                := RemitoIni.ReadBool('ListaDef', 'ListaDef', False);
   DiscriminaIva                                  := RemitoIni.ReadString('Iva', 'Iva', 'N');
   OrdenarArticulosImpresionPorSubRubros1.Checked := RemitoIni.ReadBool('Impresion', 'OrdenSubRubro', False);
   OrdenarArticulosImpresionPorLote.Checked       := RemitoIni.ReadBool('Impresion', 'OrdenLote', False);

   MostrarTasaIva1.Checked                        := RemitoIni.ReadBool('Columna', 'TasaIva', True);
   MostrarSignoMoneda1.Checked                    := RemitoIni.ReadBool('Columna', 'SignoMoneda', True);
   MostrarPrecioUnitario1.Checked                 := RemitoIni.ReadBool('Columna', 'PrecioUnitario', True);
   MostrarDescuento1.Checked                      := RemitoIni.ReadBool('Columna', 'Descuento', True);
   MostrarTotal1.Checked                          := RemitoIni.ReadBool('Columna', 'Total', True);
   MostrarUnidadesdeStokc1.Checked                := RemitoIni.ReadBool('Columna', 'UnidadesStk', True);
   MostrarFacturaAsociadad1.Checked               := RemitoIni.ReadBool('Columna', 'IDFactura', True);

   RemitoIni.Free;

   if Length(ColumnasVisble)<12 then
     ColumnasVisble:=AnsiRightStr(ColumnasVisble+'111111111111',12);

   //*************************************************************

   if VerCodigoAlternativo1.Checked then
     DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
   else
     DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';

   ArchivoIni                          := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'consignacion.ini');
   ExpresarUnidadesenEnteros1.Checked  := ArchivoIni.ReadBool('Unidades', 'ModoEntero', False);
   ArchivoIni.Free;


   for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
     begin
       chklstColumnas.Items.Add(DBGrillaDetalle.Columns[i].Title.Caption);
       try
         chklstColumnas.Checked[i]:=ColumnasVisble[i+1]='1';//   True;
       except
         Exit;
       end;
     end;
   // *******************************************************************
   // **** Manejo Lista Precios ....
   // *******************************************************************
   DatosRemitos.CDSListaPrecio.Close;
   if DMMain_FD.UsuarioAdministrador Then
     DatosRemitos.CDSListaPrecio.Params.ParamByName('uso').Value:='*'
   else
     DatosRemitos.CDSListaPrecio.Params.ParamByName('uso').Value:='S';
   DatosRemitos.CDSListaPrecio.OPen;
   // *******************************************************************
   // **** se es controlada la lista por usuario ....
   // *******************************************************************
   if (DMMain_FD.GetControlaLista) then
     begin
       DatosRemitos.CDSListaPrecio.Close;
       DatosRemitos.DSListaPrecios.DataSet :=DMMain_FD.CDSListaPreciosUsuarios;
       DMMain_FD.CDSListaPreciosUsuarios.Close;
       DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivoId;
       DMMain_FD.CDSListaPreciosUsuarios.Open;
     end;
   // *******************************************************************
   // Levanto si el Rto descuen ta Stock
   //*************************************************************
//    DMMain_FD.QOpciones.Close;
//    DMMain_FD.QOpciones.ParamByName('opcion').Value:='STOCKRTO';
//    DMMain_FD.QOpciones.Open;
//    DMMain_FD.DescuentaStockRto :=False;
//    if Not(DMMain_FD.QOpciones.IsEmpty) Then
//      DMMain_FD.DescuentaStockRto := Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='S';
//    DMMain_FD.QOpciones.Close;
    // *******************************************************************
 // if (FormRemitos<>nil) and (FormRemitos.Visible=True) and (lbEstadoIVA.Visible) Then
    begin
      if DiscriminaIva='N' then
        lbEstadoIVA.Caption:='Importes C/IVA'
      else
       lbEstadoIVA.Caption :='Importes S/IVA';
    end;
  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormConsolidacionAcopioRemitos') and
     (TForm(Self.Owner).Name<>'FormImportacionPreventas') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') and
     (ScannerSerie='S') and (Balanza=nil) then
    ConectarBalanza.Execute;

   for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='IVA_TASA' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarTasaIva1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='MUESTRASIGNO' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarSignoMoneda1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='UNITARIO_TOTAL' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarPrecioUnitario1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='DESCUENTO' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarDescuento1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='TOTAL' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarTotal1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='CANTIDAD_UNIDADES' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarUnidadesdeStokc1.Checked;

      if DBGrillaDetalle.Columns[I].FieldName='ID_FACTURA' Then
        DBGrillaDetalle.Columns[I].Visible:=MostrarFacturaAsociadad1.Checked;

    end;
   //***************************************************************
    // Si no puede modificar precio el usuario pongo la
    // columna en la grilla como solo lectura y no puede cambiar de lista
    // Precio Unitario

    // DBGrillaDetalle.Columns[7].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
   for I := 0 to DBGrillaDetalle.Columns.Count-1 do
     begin
       if (DBGrillaDetalle.Columns[I].Field.FieldName = 'UNITARIO_TOTAL') and  (NOt(DMMain_FD.ModificaPrecioVta)) Then
         DBGrillaDetalle.Columns[I].ReadOnly:=True
       else
         DBGrillaDetalle.Columns[I].ReadOnly:=False;
     end;
   // Descuento
   // DBGrillaDetalle.Columns[8].ReadOnly:=Not(DMMain_FD.AplicaDescuento);

   for I := 0 to DBGrillaDetalle.Columns.Count-1 do
     begin
       if (DBGrillaDetalle.Columns[I].Field.FieldName = 'DESCUENTO') and  (Not(DMMain_FD.AplicaDescuento)) Then
         DBGrillaDetalle.Columns[I].ReadOnly:=True
       else
         DBGrillaDetalle.Columns[I].ReadOnly:=False;
     end;

   lbRtoModificaStock.Visible       := DMMain_FD.RtoDescuentaStock;
   pcDetalleFactura.ActivePageIndex := 0;
   Pikeo.Enabled                    := False;
   pagTabla.TabVisible              := DMMain_FD.UsuarioActivo='master';
   MargenUtilidad                   := DMMain_FD.GetMargenUtilidad;
end;

procedure TFormRemitos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRemitos:=nil;
end;

procedure TFormRemitos.FacturarExecute(Sender: TObject);
begin
  inherited;
  ChoiceControlPrecio  :=  mrNone;       //0
  if (DatosRemitos.CDSRtoCabANULADO.Value='N') and ((DatosRemitos.CDSRtoCabIDFACTURA.Value<=0) or (VarIsNull(DatosRemitos.CDSRtoCabIDFACTURA.Value))) then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
      if DatosRemitos.CDSRtoCabDEVOLUCION.Value='S' then
        FormBuscadorTipoCpbte.TipoCpbte1:='NC'
      else
        FormBuscadorTipoCpbte.TipoCpbte1:='FC';

      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := DatosRemitos.CDSRtoCabSUCURSAL.Value;
      FormBuscadorTipoCpbte.DiscriminaIVA := DatosRemitos.CDSRtoCabDESGLOZAIVA.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
          FormBuscadorDepositos.Deposito:=  DatosRemitos.CDSRtoCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito    :=FormBuscadorDepositos.Deposito;
              DatoNew     :=IntToStr(DatosRemitos.CDSRtoCabID_RTO.Value);
              TipoCpbte   :=DatosRemitos.CDSRtoCabTIPOCPBTE.Value;
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(Self);
              FormCpbte_2.SucursalPorDefecto := SucursalComprobante;
              FormCpbte_2.DepositoPorDefecto := Deposito;
              FormCpbte_2.Show;
              FormCpbte_2.Agregar.Execute;
              AgregarCabFactura;
              DatosRemitos.CDSRtoDet.First;
              while Not(DatosRemitos.CDSRtoDet.Eof) Do // Ingreso el detalle
                begin
                  if DatosRemitos.CDSRtoDetCantidad.AsFloat>0 Then
                    AgregarDetFactura;
                  DatosRemitos.CDSRtoDet.Next;
                end;
              DatosVentas.CDSVentaCabCON_GTIA_EXTENDIDA.Value:= DatosRemitos.CDSRtoCabCON_GTIA_EXTENDIDA.Value;
            end;
        end;
//      if (FormCpbte_2<>Nil) then
//        if (FormCpbte_2.Generado) and (FormCpbte_2<>Nil) then
//          FormRemitos.Recuperar.Execute;
    end
  else
    begin
      if ((DatosRemitos.CDSRtoCabIDFACTURA.Value>0) and (not(VarIsNull(DatosRemitos.CDSRtoCabIDFACTURA.Value)))) then
        ShowMessage('Remito ya facturado ... No se puede volver a Facturar....')
      else
        ShowMessage('Remito Anulado o No facturable ... No se puede Facturar....');
    end;
end;

procedure TFormRemitos.FiscalizarExecute(Sender: TObject);
var aux:String;
d,m,y:word;
begin
  inherited;
  Agregar.Enabled:=False;
  if (DatosRemitos<>nil) and (DatosRemitos.CDSRtoCabREMITO_ELECTRONICO.Value='S') and (DatosRemitos.CDSRtoCabCAE.AsFloat<=0) then
    begin
      if  Not(Assigned(FormFiscalizacion)) then
        FormFiscalizacion:= TFormFiscalizacion.Create(self);

     // DatosVentas.CDSEmpresa.Close;
     // DatosVentas.CDSEmpresa.Open;

      Aux:= Trim( DatosRemitos.CDSEmpresa.FieldByName('cuit').AsString);
      while Pos('-',Aux)<>0 do
        delete(Aux,Pos('-',Aux),1);
      if (aux='') or (copy(aux,1,1)='0') then
        Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

      FormFiscalizacion.CuitVdor    := StrToFloat(Aux);

      Aux:= DatosRemitos.CDSRtoCabCUIT.AsString;
      if aux='' then aux:='00000000000';

      while Pos('-',Aux)<>0 do
        delete(Aux,Pos('-',Aux),1);
      FormFiscalizacion.CuitComp    := StrToFloat(Aux);
      FormFiscalizacion.PtoVenta    := StrToInt(DatosRemitos.CDSRtoCabSUCRTO.Value);
      FormFiscalizacion.FechaVta    := FormatDateTime('yyyymmdd', Date);
      FormFiscalizacion.Total       := DatosRemitos.CDSRtoCabTOTAL.AsFloat;
      FormFiscalizacion.TotalNeto   := DatosRemitos.CDSRtoCabNETOGRAV2.AsFloat;
      FormFiscalizacion.TotalExento := DatosRemitos.CDSRtoCabNETOEXEN2.AsFloat;
      FormFiscalizacion.TotalIIBB   := 0;//DatosRemitos.CDSRtoCabPERCEPCION_IB_IMPORTE.AsFloat;
      FormFiscalizacion.TasaIIBB    := 0;//DatosVentas.CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
      FormFiscalizacion.Nombre      := DatosRemitos.CDSRtoCabRAZONSOCIAL.AsString;
      FormFiscalizacion.Domicilio   := DatosRemitos.CDSRtoCabDIRECCION.AsString;
      FormFiscalizacion.BaseImpIIBB := 0;//DatosRemitos.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
      FormFiscalizacion.DatosImp    := DatosRemitos.CDSImpuestos;
      FormFiscalizacion.URLWSAA     := FormRemitos.URLWSAA;
      FormFiscalizacion.URLWSW      := FormRemitos.URLWSW;
      FormFiscalizacion.URLWSW_EX   := FormRemitos.URLWSW_EX;
      FormFiscalizacion.NumeroActual:= DatosRemitos.CDSRtoCabNUMERORTO.AsFloat;

//      if (DatosRemitos.CDSRtoCabTIPOCPBTE.Value='RE') Then
        FormFiscalizacion.TipoComp:=88;


     // if (DatosVentas.CDSVentaCabLETRAFAC.Value<>'E') then
//        begin
//          if (DatosVentas.CDSVentaCabTOTAL.AsFloat<1000) and
//             (DatosVentas.CDSVentaCabLETRAFAC.Value='B') and
//             (DatosVentas.CDSVentaCabTIPOIVA.Value=3) Then
//            FormFiscalizacion.TipoDocumento := 99
//          else
//            FormFiscalizacion.TipoDocumento := 80;
//          if (DatosVentas.CDSVentaCabTOTAL.AsFloat>1000) and
//             (DatosVentas.CDSVentaCabLETRAFAC.Value='B') and
//             (DatosVentas.CDSVentaCabTIPOIVA.Value=3) Then
//            begin
//              FormFiscalizacion.TipoDocumento := 96;
//            end;
//        end;
//

      FormFiscalizacion.Certificado := FormRemitos.CertificadoElectronico;
      FormFiscalizacion.Clave       := FormRemitos.ClaveElectronica;

      FormFiscalizacion.ShowModal;
      if FormFiscalizacion.Resultado='A' then
        begin
          FormRemitos.Modificar.Enabled:=True;
          FormRemitos.Modificar.Execute;
          if FormFiscalizacion.Revision=False then
            DatosRemitos.CDSRtoCabFECHAVTA.AsDateTime := Date;
          DatosRemitos.CDSRtoCabNUMERORTO.Value:= copy('00000000',1,8-length(FloatToStr(FormFiscalizacion.Numero)))+FloatToStr(FormFiscalizacion.Numero);
          DatosRemitos.CDSRtoCabCAE.Value      := FormFiscalizacion.CAE;
          d:=StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
          m:=StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
          y:=StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

          DatosRemitos.CDSRtoCabCAE_VENCIMIENTO.AsDateTime := EncodeDate(y,m,d);
//          if FormFiscalizacion.Ajustar then
//            DatosVentas.ReCalcularIva;

          FormRemitos.Confirma.Execute;
        end;
    end;
  Agregar.Enabled:=True;
end;

procedure TFormRemitos.FormActivate(Sender: TObject);
begin
  inherited;
  if (FormRemitos<>nil) and (DSBase.DataSet.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormRemitos<>Nil) then
        Recuperar.Execute;
    end;
end;

procedure TFormRemitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
var i:integer;
begin
  RemitoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Remito.ini');
  RemitoIni.WriteBool('Modo', 'Modo', chPreview.Checked);
  RemitoIni.WriteBool('ListaDef', 'ListaDef', chLista.Checked );
  RemitoIni.WriteString('Iva', 'Iva', DiscriminaIva);

  if chLista.Checked then
    RemitoIni.WriteString('Lista', 'Lista',(dbcLista.Text))
  else
    RemitoIni.WriteString('Lista', 'Lista','');

  ColumnasVisble:='';
  for i:=0 to chklstColumnas.Items.Count-1 do
    begin
      try
         if chklstColumnas.Checked[i] Then
            ColumnasVisble:=ColumnasVisble+'1'
         else
           ColumnasVisble:=ColumnasVisble+'0';
      finally

      end;
    end;
 //*************************************************************
  RemitoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  RemitoIni.WriteString('Dato', 'Dato', ColumnasVisble);
  RemitoIni.WriteBool('Impresion', 'OrdenSubRubro', OrdenarArticulosImpresionPorSubRubros1.Checked);
  RemitoIni.WriteBool('Impresion', 'OrdenLote', OrdenarArticulosImpresionPorLote.Checked);

  RemitoIni.WriteBool('Columna', 'TasaIva', MostrarTasaIva1.Checked);
  RemitoIni.WriteBool('Columna', 'SignoMoneda', MostrarSignoMoneda1.Checked);
  RemitoIni.WriteBool('Columna', 'PrecioUnitario', MostrarPrecioUnitario1.Checked);
  RemitoIni.WriteBool('Columna', 'Descuento', MostrarDescuento1.Checked);
  RemitoIni.WriteBool('Columna', 'Total', MostrarTotal1.Checked);

  RemitoIni.WriteBool('Columna', 'UnidadesStk', MostrarUnidadesdeStokc1.Checked);
  RemitoIni.WriteBool('Columna', 'IDFactura', MostrarFacturaAsociadad1.Checked);

  RemitoIni.Free;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'consignacion.ini');
  ArchivoIni.WriteBool('Unidades', 'ModoEntero', ExpresarUnidadesenEnteros1.Checked );
  ArchivoIni.Free;

  inherited;
  DatosRemitos.CDSRtoCab.Close;
  DatosRemitos.CDSRtoDet.Close;
  DatosRemitos.CDSImpuestos.Close;
  DatosRemitos.CDSListaPrecio.Close;
  DatosRemitos.CDSTransporte.Close;
  if FormAnexosRtoTransporte<>nil then
    FreeAndNil(FormAnexosRtoTransporte);
  if ListaTareas<>nil then
    FreeAndNil(ListaTareas);
  if FormBuscadorLDR<>nil then
    FreeAndNil(FormBuscadorLDR);
  if DatosRemitos<>nil then
    FreeAndNil(DatosRemitos);
  Action:=caFree;
end;

procedure TFormRemitos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then  canClose:=False;
end;

procedure TFormRemitos.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosRemitos.CDSRtoCabCodigoSetText(DatosRemitos.CDSRtoCabCodigo,FormBuscadorClientes.Codigo);
end;

procedure TFormRemitos.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  if not Assigned(FormBuscadorLDR) then
    FormBuscadorLDR :=  TFormBuscadorLDR.Create(Self);
  FormBuscadorLDR.Codigo  :=  DatosRemitos.CDSRtoCabCodigo.AsString;
  FormBuscadorLDR.LDR     :=  DatosRemitos.CDSRtoCabLDR.AsString;
  FormBuscadorLDR.ShowModal;
  if (FormBuscadorLDR.LDR<>'') then
    DatosRemitos.CDSRtoCabLDR.Text  :=FormBuscadorLDR.LDR;
  FreeAndNil(FormBuscadorLDR);
end;

procedure TFormRemitos.BuscarLoteExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSBuscaLotes.Close;
  if DatosRemitos.CDSRtoCabDEVOLUCION.Value='S' then
     DatosRemitos.CDSBuscaLotes.CommandText:='select s.* from stock_lotes_impo s where s.codigo = :codigo';
  DatosRemitos.CDSBuscaLotes.Params.ParamByName('Codigo').Value:=DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString;
  DatosRemitos.CDSBuscaLotes.Open;
  if (DatosRemitos.CDSRtoDetCONTROLA_TRAZABILIDAD.Value='S') Then
    begin
      comBuscadorLote.Execute;
      if comBuscadorLote.rOk Then
        DatosRemitos.CDSRtoLoteID_LOTESetText(DatosRemitos.CDSRtoLoteID_LOTE,IntToStr(comBuscadorLote.Id));
    end;
  DatosRemitos.CDSBuscaLotes.Close;
end;

procedure TFormRemitos.BuscarPorObservacionExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscadorPorObs)) THEN
    FormBuscadorPorObs := TFormBuscadorPorObs.Create(self);
  FormBuscadorPorObs.TipoComp:='R';
  FormBuscadorPorObs.ShowModal;
  IF FormBuscadorPorObs.Id > 0 THEN
    begin
      TipoCpbte:= FormBuscadorPorObs.Tipo;
      DatoNew  := IntToStr(FormBuscadorPorObs.id);
      Recuperar.Execute;
    end;
end;

procedure TFormRemitos.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSBuscaSucursal.Close;
  DatosRemitos.CDSBuscaSucursal.Open;
  ComBuscadorSuc.Execute;
  if comBuscadorSuc.rOk Then
      DatosRemitos.CDSRtoCabSucursalSetText(DatosRemitos.CDSRtoCabSucursal, IntToStr(comBuscadorSuc.Id));
  DatosRemitos.CDSBuscaSucursal.Close;
end;

procedure TFormRemitos.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSBuscaDeposito.Close;
  DatosRemitos.CDSBuscaDeposito.Open;
  ComBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
      DatosRemitos.CDSRtoCabDepositoSetText(DatosRemitos.CDSRtoCabDeposito, IntToStr(comBuscadorDeposito.id));
  DatosRemitos.CDSBuscaDeposito.Close;

end;

procedure TFormRemitos.BuscarCondVentaExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSBuscaCondVenta.Close;
  DatosRemitos.CDSBuscaCondVenta.Params.ParamByName('Codigo').Value := DatosRemitos.CDSRtoCabCodigo.Value;
  DatosRemitos.CDSBuscaCondVenta.Open;
  ComBuscadorConVta.Execute;
  if comBuscadorConVta.rOk Then
      DatosRemitos.CDSRtoCabCondicionVtaSetText(DatosRemitos.CDSRtoCabCondicionVta, IntToStr(comBuscadorConVta.Id));
  DatosRemitos.CDSBuscaCondVenta.Close;

end;

procedure TFormRemitos.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                            ' compra_venta = ''V'' and (tipo_comprob= ''RE'') ';

  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := DatosRemitos.CDSRtoCabSucursal.Value;

  DMBuscadores.CDSBuscaComprob.Open;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;

  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTESetText(DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;

  DMBuscadores.CDSBuscaComprob.Close;
end;

procedure TFormRemitos.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      if (DSBase.DataSet.FieldByName('DEVOLUCION').AsString='A') or (DSBase.DataSet.FieldByName('DEVOLUCION').AsString='D') then
            begin
              FormBuscadorArticulos.Param1:=9;
              FormBuscadorArticulos.Param2:=9;
              FormBuscadorArticulos.Param3:=9;
            end
          else
            begin
              FormBuscadorArticulos.Param1:=1;
              FormBuscadorArticulos.Param2:=3;
              FormBuscadorArticulos.Param3:=3;

            end;
      FormBuscadorArticulos.ListaPrecio := DatosRemitos.CDSRtoCabLISTAPRECIO.Value;
      FormBuscadorArticulos.Esquema     := DMMain_FD.GetEsquemaLista(DSBase.DataSet.FieldByName('CODIGO').AsString);

      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosRemitos.CDSRtoDetCodigoArticuloSetText(DatosRemitos.CDSRtoDetCodigoArticulo,FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormRemitos.DBGrillaDetalleColEnter(Sender: TObject);
VAR Indx:Integer;
begin
  inherited;
  Indx:=DBGrillaDetalle.SelectedIndex;

  pnPrecios.Visible:=False;
  dbgPrecios.Columns[1].Visible  := DatosRemitos.CDSRtoCabDESGLOZAIVA.Value='N';
  dbgPrecios.Columns[2].Visible  := DatosRemitos.CDSRtoCabDESGLOZAIVA.Value='S';

  //******************************************************************************
  // permito o no la modificacion del precio controlando si es editable el precio
  //******************************************************************************
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'UNITARIO_TOTAL' then
    begin
      DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
      if (DBGrillaDetalle.DataSource.DataSet.FieldByName('PRECIO_EDITABLE').Value='N') then
        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=True
      else
        begin
          if (DMMain_FD.ModificaPrecioVta=True) Then
            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly  := False
          else
             DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly := True;
        end;
      if DMMain_FD.UsuarioActivo='master' then DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
      if DBGrillaDetalle.DataSource.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat<=0 THEN
        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly  := False
    end;

//******************************************************************************
  // permito o no la modificacion del Detalle de Factura
  //******************************************************************************
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE' then
    DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly :=  not((DMMain_FD.UsuarioActivo='master')  or
                                                                        ((DMMain_FD.ModificaDetalleArticulo) and
                                                                        (DMMain_FD.StockEditDetalle( DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString ))));

  //  if DBGrillaDetalle.SelectedIndex=5 Then
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD' then
    begin
      if (DMMain_FD.VerStock) and
         (DatosRemitos.CDSRtoDetAfecta_Stock.Value='S') and
         (Not(DSBase.State in [dsBrowse])) Then
        begin
          DatosRemitos.CDSExistencia.Close;
          DatosRemitos.CDSExistencia.Params.ParamByName('Unidad').Value:='V';
          DatosRemitos.CDSExistencia.Params.ParamByName('Codigo').Value:=DatosRemitos.CDSRtoDetCodigoArticulo.Value;
          DatosRemitos.CDSExistencia.Params.ParamByName('fisico').Value:=1;
          DatosRemitos.CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;
          DatosRemitos.CDSExistencia.Open;
          dbgExitencias.Visible:=True;
        end;

      pnPrecios.Visible:=False;
      if Not(DMMain_FD.GetClienteConPrecio(DatosRemitos.CDSRtoCabCODIGO.AsString, DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString)) then
        begin
          DMMain_FD.CDSPrecioXCant.Close;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('codigo').Value  :=DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString;
          DMMain_FD.CDSPrecioXCant.Params.ParamByName('id_lista').Value:=DatosRemitos.CDSRtoCabLISTAPRECIO.AsInteger;
          DMMain_FD.CDSPrecioXCant.Open;
          if Not(DMMain_FD.CDSPrecioXCant.IsEmpty) then
            pnPrecios.Visible:=True
          else
            pnPrecios.Visible:=False;
           end;
    end
  else
    dbgExitencias.Visible:=False;

  IF DBGrillaDetalle.SelectedIndex = 0 THEN
    DBGrillaDetalle.SelectedIndex := 1 else

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'UNIDAD' then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'IVA_TASA' then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'MUESTRASIGNO' then
    DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex+1;

 // if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD_UNIDADES' then
//    begin
//      DBGrillaDetalle.SelectedIndex := 2;//DBGrillaDetalle.SelectedIndex;
//    end;

//  IF DBGrillaDetalle.SelectedIndex = 11 THEN
//    DBGrillaDetalle.SelectedIndex := 8;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'ID_FACTURA' then
    begin
      DBGrillaDetalle.SelectedIndex := 2;//DBGrillaDetalle.SelectedIndex;
    end;

  if (DatosRemitos.CDSRtoDetUNIDAD.Value='KGR') or (DatosRemitos.CDSRtoDetUNIDAD.Value='KGS') then
    if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD' then
      IF (Balanza<>nil) THEN LeerPeso.Execute;

end;

procedure TFormRemitos.DBGrillaDetalleColExit(Sender: TObject);
begin
  inherited;
  pnDetalleAdicional.Visible:=False;
end;

procedure TFormRemitos.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 2) THEN
        DBGrillaDetalle.SelectedIndex := 1
      else
        if (DBGrillaDetalle.SelectedIndex = 5) THEN
          DBGrillaDetalle.SelectedIndex := 2
        else
          if (DBGrillaDetalle.SelectedIndex = 6) THEN
            DBGrillaDetalle.SelectedIndex := 5
          else
            if (DBGrillaDetalle.SelectedIndex = 7) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;
  IF (Key = VK_F11) and (DatosRemitos.CDSRtoDetCodigoArticulo.AsString<>'') THEN
    BEGIN
      IF NOT (Assigned(FormArticulosVendidos)) THEN
        BEGIN
          FormArticulosVendidos                 := TFormArticulosVendidos.Create(Application);
          FormArticulosVendidos.CodigoCliente   := DatosRemitos.CDSRtoCabCodigo.Value;
          FormArticulosVendidos.CodigoArticulo  := DatosRemitos.CDSRtoDetCodigoArticulo.Value;
          FormArticulosVendidos.ShowModal;
        END;
    END;
  if ((key= Vk_F3) and ((DMMain_FD.ModificaPrecioVta=False) or (DMMain_FD.AplicaDescuento=False)) and (DBGrillaDetalle.SelectedIndex in [6,7])) Then
    begin
      if not (Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(FormRemitos);
      FormLogin.ShowModal;
      DBGrillaDetalle.Columns[6].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[7].ReadOnly:=Not(FormLogin.Tag=1);
      key:=0;
    end
  else
  // detalle Adicional..
  IF (Key = VK_ADD) and (Shift =[ssCtrl]) and (DatosRemitos.CDSRtoCabCodigo.AsString<>'')  THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex =2 ) THEN
        begin
          if DBGrillaDetalle.DataSource.DataSet.RecNo>0 then
            pnDetalleAdicional.Top:= 43 + ((DBGrillaDetalle.DataSource.DataSet.RecNo-1) * 18 )
          else
            pnDetalleAdicional.Top:= 43;
          pnDetalleAdicional.Visible:=True;
          dbeDetAdicional.SetFocus;
        end;
    END;



end;

procedure TFormRemitos.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
var
  Tope:Integer;
begin
  inherited;
  Tope:=7;
  if DBGrillaDetalle.Columns.Count<12 then
    Tope:= DBGrillaDetalle.Columns.Count-1;
  IF Key = #13 THEN
    BEGIN
      Key := #0;   // IF (DBGrillaDetalle.SelectedIndex < 7) THEN
      IF (DBGrillaDetalle.SelectedIndex < Tope) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 1;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = DatosRemitos.CDSRtoDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END
    else if (key=#27) then DBGrillaDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormRemitos.DBGrillaDetalleMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if ((X>0) and (X < DBGrillaDetalle.Width)) then
    if (Y>0) and (Y < DBGrillaDetalle.Height)  then
      lbDragDrop.Caption:='May+Ctr:Aciva Drag'
    else
      lbDragDrop.Caption:='';
end;

procedure TFormRemitos.dbtTotalMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
 // dbtTotal.Hint:='Valor Pesos: '+ FormatFloat(',0.00',DatosRemitos.CDSRtoCabTOTAL.AsFloat * DatosRemitos.CDSRtoDetCOTIZACION.ASFloat);

  dbtTotal.Hint:='Valor Pesos: '+ FormatFloat(',0.00',DatosRemitos.SumaPesificada);

  if (DatosRemitos.CDSRtoDetCOTIZACION.ASFloat>1) then
    dbtTotal.ShowHint:=True
  else
    dbtTotal.ShowHint:=False;
  end;

procedure TFormRemitos.DesmarcarImpresoExecute(Sender: TObject);
begin
  inherited;

    BEGIN
       CpbteNuevo:='N';
       DatosRemitos.CDSRtoCab.Edit;
       if DatosRemitos.CDSRtoCabIMPRESO.Value<>'N' Then
         DatosRemitos.CDSRtoCabIMPRESO.Value := 'N'
       else
        if DatosRemitos.CDSRtoCabIMPRESO.Value='N' Then
           DatosRemitos.CDSRtoCabIMPRESO.Value := 'S';
       //    DatosVentas.wwCDSVentaCab.Post;
          Confirma.Execute;
     END;
end;

procedure TFormRemitos.DevolverAlqExecute(Sender: TObject);
begin
  inherited;
  With DatosRemitos do
    begin
      //if CDSRtoCab.state=dsBrowse then  Modificar.Execute;
    //  CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime  :=  Now;
      Modificar.Execute;
      if Not Assigned(FormDevolucionAlq) then
        FormDevolucionAlq :=  TFormDevolucionAlq.Create(Self);
      FormDevolucionAlq.ShowModal;
      if FormDevolucionAlq.ModalResult=mrOk then
        begin
          CDSRtoCabDEVOLUCION.AsString              := 'D';
          Confirma.Execute;
        end;
    end;
  Recuperar.Execute;
end;

procedure TFormRemitos.AgregarExecute(Sender: TObject);
var i:integer;
begin
  if Anulado<>nil Then FreeAndNil(Anulado);

  if FormRemitos.Visible then
    pnPrecios.Visible:=False;

  for I := 0 to ListaTareas.Count - 1 do
    ListaTareas.Checked[i]:=False;

  if ListaTareas.Visible=True then
    ListaTareas.Visible:=False;

  DatosRemitos.CDSRtoCab.close;
  DatosRemitos.CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRemitos.CDSRtoCab.Params.ParamByName('id').Clear;
  DatosRemitos.CDSRtoCab.Open;

  DatosRemitos.CDSRtoDet.Close;
  DatosRemitos.CDSRtoDet.Params.ParamByName('id').Clear;
  DatosRemitos.CDSRtoDet.Open;

  DatosRemitos.CDSImpuestos.Close;
  DatosRemitos.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosRemitos.CDSImpuestos.Open;

  DatosRemitos.CDSRtoTroqueles.Close;
  DatosRemitos.CDSRtoTroqueles.Params.ParamByName('id').Clear;
  DatosRemitos.CDSRtoTroqueles.Open;

  inherited;
  DatosRemitos.CDSTroqueles.Close;
  DatosRemitos.CDSTroqueles.Open;
  Impresa                :=False;
  pnCabecera.Enabled     :=True;
  DatosRemitos.CDSRtoDet.EmptyDataSet;
  DatosRemitos.CDSImpuestos.EmptyDataSet;
  CpbteNuevo := 'S';
  pcDetalleFactura.ActivePageIndex := 0;
  if FormRemitos.Visible=True then
    RxCCodigo.SetFocus;
end;

procedure TFormRemitos.AgregarPikeo(CDSDatos: TClientDataSet);
var Lote:Integer;
begin
  if DSBase.DataSet.State=dsInsert then
    begin
      CDSDatos.First;
      while not(CDSDatos.Eof) do
        begin
          if abs(Trunc(CDSDatos.FieldByName('cantidad').AsFloat*1000))>0 then
            begin
              DBGrillaDetalle.DataSource.DataSet.Append;
              DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoarticulo').Text  :=CDSDatos.FieldByName('codigo').AsString;
              DBGrillaDetalle.DataSource.DataSet.FieldByName('cantidad').Text        :=CDSDatos.FieldByName('cantidad').AsString;
              DBGrillaDetalle.DataSource.DataSet.post;
            end;
          CDSDatos.Next;
        end;
    end;
end;

procedure TFormRemitos.DBCheckManualClick(Sender: TObject);
begin
  inherited;
  dbeSuc.Enabled    := DBCheckManual.Checked;
  dbeNumero.Enabled := DBCheckManual.Checked;
  IF DatosRemitos.CDSRtoCab.State IN [dsEdit, dsInsert] THEN
    BEGIN
      DatosRemitos.CDSRtoCabSUCRTO.Value := '0000';
      DatosRemitos.CDSRtoCabNUMERORTO.Value := '00000000';
    END;
end;

procedure TFormRemitos.Columnas1Click(Sender: TObject);
begin
  inherited;
  if pnColumnas.Visible=False
    then pnColumnas.Visible:=True
  else pnColumnas.Visible:=False;
end;

procedure TFormRemitos.ConectarBalanzaExecute(Sender: TObject);
var x: integer;
begin
  inherited;
   balanza      := tsystelconnect.Create(self);
   Screen.Cursor:= crHourGlass;
   try
     Balanza.Port:= PuertoCom;
     Balanza.Connect;
     Balanza.Id := IdBalanza;
     Balanza.Ping;
     if Balanza.Respuesta<>'' then
       begin
         imBalanza.Visible:=True;
         Balanza.Disconnect;
       end;
   except
     imBalanza.Visible:=False;
     FreeAndNil(Balanza);
     //      ShowMessage('Error de coneccion..');
   end;
   Screen.Cursor:=crDefault;
end;

procedure TFormRemitos.ConfirmaExecute(Sender: TObject);
var LstTareas:String;
LimiteCto,preview,RtoFiscal:Boolean;
i:Integer;
FechaStr:String;
mtPedidos:TFDMemTable;
QMarcarPedido:TFDQuery;
begin
  // esta variable la uso para saber si se hizo o el rto;
  FechaStr:= Trim(Copy(DateToStr(dbeFechaVta.Date),1,2));
  if FechaStr='' then DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime:=Date;
  FGravado:=False;
  if FormRemitos.Visible then
    pnPrecios.Visible:=False;
  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;
  if DatosRemitos.CDSRtoDet.State in [dsInsert,dsEdit] Then
    DatosRemitos.CDSRtoDet.Post;
  if ListaTareas.Visible=True then
    ListaTareas.Visible:=False;

  // Control de lotes
  if DMMain_FD.RtoDescuentaStock then
    if (CpbteNuevo='S') and (Not(ControlLotes))  Then
      RAISE Exception.Create('Hay Lotes sin Asignar.....!!!!');


  LimiteCto:=DMMain_FD.ControlaLteCredito;
  TRY
    IF (FormRemitos.Visible) and (DatosRemitos.CDSRtoCabTotal.AsFloat = 0) THEN
      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
  FINALLY
  END;

  if (DMMain_FD.UsaFirma) and (Not(DMMain_FD.UsuarioActivo='master'))
      and (TForm(Self.Owner).Name<>'FormRecibo_2')
      and (TForm(Self.Owner).Name<>'FormFacturarRemitos')
      and (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') then
    begin
      if Not(Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(Self);
      FormLogin.Usuario :=DMMain_FD.UsuarioActivo;
      FormLogin.Modo    :=1;
      FormLogin.ShowModal;
      if FormLogin.Tag=0 then
        begin
          raise Exception.Create('Usuario no Valido de sesion....');
        end
      else
        Begin
          DatosRemitos.CDSRtoCabUSUARIO.Value:= FormLogin.Usuario;
        End;
    end;

  WITH DatosRemitos DO
    BEGIN
      MuestraTareas:='';
      for i:= 0 to ListaTareas.Count-1 do
        begin
          if ListaTareas.Checked[i] then
            begin
              MuestraTareas:=MuestraTareas+ListaTareas.Items[i];
              LstTareas:=LstTareas+'1';
            end
          else
            LstTareas:=LstTareas+'0';
        end;
      CDSRtoCabTAREAS.Value:=LstTareas;

      DatoNew                  := IntToStr(CDSRtoCabID_RTO.Value);
      TipoCpbte                := CDSRtoCabTIPOCPBTE.Value;
      CDSRtoCabRENGLONES.Value := CDSRtoDet.RecordCount;
      CDSRtoCabDebe.ASFloat    := DatosRemitos.CDSRtoCabTotal.AsFloat;
      if CDSRtoCab.State<>dsBrowse Then
        CDSRtoCab.Post;
      inherited;

      Recuperar.Execute;

      // Si biene de Notas de Pedidos Agrupadas ... Marca los Pedidos Realizados
      if (CpbteNuevo='S') and (TForm(Self.Owner).Name='FormPedidosAProcesar') then
        begin
          mtPedidos               := TFDMemTable.Create(nil);
          QMarcarPedido           := TFDQuery.Create(nil);
          QMarcarPedido.Connection:= DMMain_FD.fdcGestion;
          QMarcarPedido.SQL.Text  := 'update plantilla_pedido_cab p set p.id_factura = :id_factura,' +
                                     '                            p.tipo_factura     = :tipo_fact,' +
                                     '                            p.facturado        =''S'','+
                                     '                            p.hay_pendientes   =''N'' '+
                                     ' where p.id = :id_pedido';
          mtPedidos.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
          mtPedidos.Open;

          DMMain_FD.fdcGestion.StartTransaction;

          try

            mtPedidos.First;
            while Not(mtPedidos.Eof) do
              begin
                QMarcarPedido.Close;
                QMarcarPedido.ParamByName('id_factura').AsInteger  := DSBase.DataSet.FieldByName('id_rto').AsInteger;
                QMarcarPedido.ParamByName('tipo_fact').AsString    := DSBase.DataSet.FieldByName('Tipocpbte').AsString;
                QMarcarPedido.ParamByName('id_pedido').AsString    := mtPedidos.FieldByName('id').Value;
                QMarcarPedido.ExecSQL;
                QMarcarPedido.Close;
                mtpedidos.Next;
              end;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
          end;
          QMarcarPedido.Close;
          mtPedidos.Close;
          FreeAndNil(QMarcarPedido);
          FreeAndNil(mtPedidos);
          DeleteFile(DMMain_FD.MainPath+'Archivos Temporales\PedidosRemitados.xml');
        end;

      RtoFiscal   :=  DMMain_FD.ControlaRtoFiscal;

      if ((RtoFiscal) and (CDSRtoCabANULADO.Value<>'S')) then
        begin
          if MessageDlg('Remito a Facturación Fiscal???...',mtConfirmation,mbYesNo,0)=mrYes then
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                DatosRemitos.spPasaFiscal.close;
                DatosRemitos.spPasaFiscal.ParamByName('id_rto').Value  :=DatosRemitos.CDSRtoCabID_RTO.Value;
                DatosRemitos.spPasaFiscal.ParamByName('cliente').Value :=DatosRemitos.CDSRtoCabCODIGO.Value;
                DatosRemitos.spPasaFiscal.ParamByName('nombre').Value  :=DatosRemitos.CDSRtoCabNOMBRE.Value;
                DatosRemitos.spPasaFiscal.ParamByName('fecha').Value   :=DatosRemitos.CDSRtoCabFECHAVTA.AsDateTime;
                DatosRemitos.spPasaFiscal.ParamByName('nrocpbte').Value:=DatosRemitos.CDSRtoCabNROCPBTE.Value;
                DatosRemitos.spPasaFiscal.ParamByName('importe').Value :=DatosRemitos.CDSRtoCabTOTAL.AsFloat;
                DatosRemitos.spPasaFiscal.ExecProc;
                DMMain_FD.fdcGestion.Commit;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se pudo gravar el aviso ...');
              end;
            end;
        end;
      FGravado:=not(CDSRtoCabID_RTO.AsString='');
      if Fgravado then
      begin
        FId       := CDSRtoCabID_RTO.Value;
        FNroCpbte := CDSRtoCabNROCPBTE.Value;
      end;

      IF (CpbteNuevo = 'S') Then
        if (CDSRtoCabCPTE_MANUAL.Value = 'N') then
          if (Imprime='S') and (TForm(Self.Owner).Name<>'FormImportacionPreventas') THEN
            IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
              begin
                 if OrdenarArticulosImpresionPorLote.Checked then
                    DatosRemitos.CDSRtoDet.IndexFieldNames:='LOTE;RENGLON';

                  if OrdenarArticulosImpresionPorSubRubros1.Checked then
                    DatosRemitos.CDSRtoDet.IndexFieldNames:='MUESTRADETALLESUBRUB;DETALLE';

                  frRemitos.PrintOptions.Printer:=PrNomCpbte;
                  frRemitos.SelectPrinter;
                  MuestraTareas:='';
                  for i:= 0 to ListaTareas.Count-1 do
                    begin
                      if ListaTareas.Checked[i] then
                        MuestraTareas:=MuestraTareas+ListaTareas.Items[i];
                    end;

                  DatosRemitos.QComprob.Close;
                  DatosRemitos.QComprob.ParamByName('id').Value :=DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Value;
                  DatosRemitos.QComprob.ParamByName('suc').Value:=DatosRemitos.CDSRtoCabSUCURSAL.Value;
                  DatosRemitos.QComprob.Open;

                  frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRemitos.QComprobREPORTE.AsString);
                  frRemitos.Variables['Transporte']:= ''''+dbcTransporte.Text+'''';
                  frRemitos.Variables['Tareas']    := ''''+ MuestraTareas+'''';

                  frRemitos.PrintOptions.Copies :=DatosRemitos.QComprobCOPIAS.Value;
                  DatosRemitos.QComprob.Close;
                 // DMMain_FD.QOpciones.Close;

                  frRemitos.PrepareReport;
                  frRemitos.PrintOptions.ShowDialog:=chPreview.Checked;
                  if chPreview.Checked=True then
                    frRemitos.ShowReport
                  else
                    if chPreview.Checked=False then
                      frRemitos.print;

                  if (Impresa) and (DatosRemitos.CDSRtoCabIMPRESO.Value='N') then
                    begin
                      DMMain_FD.fdcGestion.StartTransaction;
                      try
                        DatosRemitos.spMarcarImpreso.Close;
                        DatosRemitos.spMarcarImpreso.ParamByName('ID').Value :=DatosRemitos.CDSRtoCabID_RTO.Value;
                        DatosRemitos.spMarcarImpreso.ExecProc;
                        DMMain_FD.fdcGestion.Commit;
                        DatosRemitos.spMarcarImpreso.close;
                     except
                        DMMain_FD.fdcGestion.Rollback;
                        ShowMessage('El Comprobante no fue marcado como Impreso ....!');
                     end;
                  end;

//                preview:=   DMMain_FD.PreviewFactura; //(DMMain_FD.QOpciones.Fields[0].AsString[1]='S');
//                frRemitos.PrintOptions.Printer:=PrNomCpbte;
//                frRemitos.SelectPrinter;
//                DatosRemitos.QComprob.Close;
//                DatosRemitos.QComprob.ParamByName('id').Value :=DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Value;
//                DatosRemitos.QComprob.ParamByName('suc').Value:=DatosRemitos.CDSRtoCabSUCURSAL.Value;
//                DatosRemitos.QComprob.Open;
//
//                frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte + DatosRemitos.QComprobREPORTE.AsString);
//                frRemitos.Variables['Transporte']:= ''''+dbcTransporte.Text+'''';
//                frRemitos.Variables['Tareas']    := ''''+ MuestraTareas+'''';
//
//                frRemitos.PrintOptions.Copies :=DatosRemitos.QComprobCOPIAS.Value;
//
//                DatosRemitos.QComprob.Close;
//                frRemitos.PrepareReport;
//
//                if Preview then
//                  frRemitos.ShowReport
//                else
//                   frRemitos.Print;
//
//                if (Impresa) and (DatosRemitos.CDSRtoCabIMPRESO.Value='N') then
//                  begin
//                    DMMain_FD.fdcGestion.StartTransaction;
//                    try
//                      spMarcarImpreso.Close;
//                      spMarcarImpreso.ParamByName('ID').Value :=DatosRemitos.CDSRtoCabID_RTO.Value;
//                      spMarcarImpreso.ExecProc;
//                      spMarcarImpreso.close;
//                      DMMain_FD.fdcGestion.Commit;
//                   except
//                      DMMain_FD.fdcGestion.Rollback;
//                      ShowMessage('Comprobante no fue marcado como Impreso ....!');
//                   end;
//                 end;

              end;
      if Impresa then
         Modificar.Enabled:=False;
      if (FormRemitos.Visible) and (btNuevo.Enabled) Then
        btNuevo.SetFocus;
    END;

  // ***********************************************************
  // ************* Factura Electronica *************************
  // ***********************************************************
  // por ahora sin uso ..................
  //  if  (DatosRemitos<>nil) and (CpbteNuevo='S') and
  //     ( (DatosRemitos.CDSRtoCabREMITO_ELECTRONICO.Value='S')) then
  //   Fiscalizar.Execute;
end;

procedure TFormRemitos.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  if Not(DatosRemitos.CDSRtoDet.IsEmpty)  Then
    begin
//      DatosVentas.wwCDSVentaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML');
      DatosRemitos.CDSRtoDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RtoVtaDet.XML');
//      DatosVentas.wwCDSImpuestos.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaImp.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');

end;

procedure TFormRemitos.CopiarPortaPaplesWindows1Click(Sender: TObject);
begin
  inherited;
  CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormRemitos.ImportarDesdeXLSExecute(Sender: TObject);
var i:Integer;
Cant,CantidadStr,Codigo:String;
Cantidad,Ajuste: extended;
begin
  inherited;
   if DSBase.State in [dsInsert] then
    begin
      if MessageDlg('el archivo debe tener las columnas codigo,detalle,cantidad y el nombre de la hoja debe ser hoja1...',mtConfirmation,mbYesNo,0)=mrYes then
      if OpenDialog.Execute then
        if OpenDialog.FileName<>'' then
          begin
            Screen.Cursor:=crHourGlass;
            ADOConnection.Connected:=False;
            ADODSDetalelleXLS.Active:=False;
            ADOConnection.ConnectionString:='';
            //ADODataSet1.CommandText:='';
            ADOConnection.ConnectionString:=
            'Provider=Microsoft.Jet.OLEDB.4.0; '+
            'User ID=Admin; '+
            'Data Source='+OpenDialog.FileName+'; '+
            'Mode=Share Deny None;Extended Properties=Excel 8.0; '+
            'Persist Security Info=False; '+
            'Jet OLEDB:System database=""; '+
            'Jet OLEDB:Registry Path=""; '+
            'Jet OLEDB:Database Password=""; '+
            'Jet OLEDB:Engine Type=35; '+
            'Jet OLEDB:Database Locking Mode=0; '+
            'Jet OLEDB:Global Partial Bulk Ops=2; '+
            'Jet OLEDB:Global Bulk Transactions=1; '+
            'Jet OLEDB:New Database Password=""; '+
            'Jet OLEDB:Create System Database=False; '+
            'Jet OLEDB:Encrypt Database=False; '+
            'Jet OLEDB:Don''t Copy Locale on Compact=False; '+
            'Jet OLEDB:Compact Without Replica Repair=False; '+
            'Jet OLEDB:SFP=False ';
            ADODSDetalelleXLS.Connection:=ADOConnection;
            ADODSDetalelleXLS.CommandType:=cmdTableDirect;
            ADODSDetalelleXLS.CommandText:='Hoja1$';
            ADOConnection.Connected:=true;
            ADODSDetalelleXLS.Active:=True;
            ADODSDetalelleXLS.First;
           // Cancelado:=False;
            i:=0;cant:=IntToStr(ADODSDetalelleXLS.RecordCount-1);
            while not(ADODSDetalelleXLS.Eof) { and (cancelado=False)} do
              begin
                sbEstado.SimpleText:='Procesando Reg:'+IntToStr(i)+'/'+cant;
                i:=i+1;
                Application.ProcessMessages;
                CantidadStr := ADODSDetalelleXLS.FieldByName('cantidad').AsString;
                StringReplace(CantidadStr,',','',[rfReplaceAll]);
                if CantidadStr<>'' then
                  Cantidad := StrToFloat(CantidadStr)
                else
                  cantidad:=0;
                Cantidad:=RoundTo(Cantidad,-3);
                if Not(IsZero(Cantidad)) then
                  begin
                    Codigo:= Trim(ADODSDetalelleXLS.FieldByName('codigo').AsString);
                    Codigo:= Copy('00000000',1,8-Length(Codigo))+Codigo;

                    DatosRemitos.CDSRtoDet.Append;
                    DatosRemitos.CDSRtoDetCodigoArticuloSetText(DatosRemitos.CDSRtoDetCodigoArticulo,Codigo);
                    DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCantidad,FormatFloat('0.000', Cantidad));
                    DatosRemitos.CDSRtoDetDETALLE.Value:=Trim(ADODSDetalelleXLS.FieldByName('detalle').AsString);
                    if DatosRemitos.CDSRtoDetUNITARIO_TOTAL.AsFloat<=0 then
                      DatosRemitos.CDSRtoDetUnitario_TotalSetText(DatosRemitos.CDSRtoDetUnitario_Total,'1');
                    DatosRemitos.CDSRtoDet.Post;

                  end;
                ADODSDetalelleXLS.Next;
             end;
            Application.ProcessMessages;
            ADODSDetalelleXLS.Close;
            ADOConnection.Connected:=False;
          end;
    end;
  Screen.Cursor:=crDefault;

end;

procedure TFormRemitos.ImpresionRotuloExecute(Sender: TObject);
begin
  inherited;
 
  frRemitos.LoadFromFile(DMMain_FD.PathReportesLst+'\RotuloTransporte.fr3');
  frRemitos.Variables['Transporte']:= ''''+dbcTransporte.Text+'''';

//  DMMain_FD.QOpciones.Close;

  frRemitos.PrepareReport;
  frRemitos.PrintOptions.ShowDialog:=chPreview.Checked;
  if chPreview.Checked=True then
    frRemitos.ShowReport
  else
    if chPreview.Checked=False then
      frRemitos.print;
  

end;

procedure TFormRemitos.ImprimirExecute(Sender: TObject);
var i:integer;
BEGIN

  if OrdenarArticulosImpresionPorLote.Checked then
    DatosRemitos.CDSRtoDet.IndexFieldNames:='LOTE;RENGLON';

  if OrdenarArticulosImpresionPorSubRubros1.Checked then
    DatosRemitos.CDSRtoDet.IndexFieldNames:='MUESTRADETALLESUBRUB;DETALLE';

  frRemitos.PrintOptions.Printer:=PrNomCpbte;
  frRemitos.SelectPrinter;
  MuestraTareas:='';
  for i:= 0 to ListaTareas.Count-1 do
    begin
      if ListaTareas.Checked[i] then
        MuestraTareas:=MuestraTareas+ListaTareas.Items[i];
    end;

  DatosRemitos.QComprob.Close;
  DatosRemitos.QComprob.ParamByName('id').Value :=DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Value;
  DatosRemitos.QComprob.ParamByName('suc').Value:=DatosRemitos.CDSRtoCabSUCURSAL.Value;
  DatosRemitos.QComprob.Open;

  frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRemitos.QComprobREPORTE.AsString);
  frRemitos.Variables['Transporte']:= ''''+dbcTransporte.Text+'''';
  frRemitos.Variables['Tareas']    := ''''+ MuestraTareas+'''';

  frRemitos.PrintOptions.Copies :=DatosRemitos.QComprobCOPIAS.Value;
  DatosRemitos.QComprob.Close;

  DatosRemitos.CDSRtoDet.DisableControls;

  frRemitos.PrepareReport;
  frRemitos.PrintOptions.ShowDialog:=chPreview.Checked;
  if chPreview.Checked=True then
    frRemitos.ShowReport
  else
    if chPreview.Checked=False then
      frRemitos.print;

  DatosRemitos.CDSRtoDet.First;
  DatosRemitos.CDSRtoDet.EnableControls;

  if (Impresa) and (DatosRemitos.CDSRtoCabIMPRESO.Value='N') then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosRemitos.spMarcarImpreso.Close;
        DatosRemitos.spMarcarImpreso.ParamByName('ID').Value :=DatosRemitos.CDSRtoCabID_RTO.Value;
        DatosRemitos.spMarcarImpreso.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        DatosRemitos.spMarcarImpreso.close;
     except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('El Comprobante no fue marcado como Impreso ....!');
     end;
  end;

  if DatosRemitos.CDSRtoCabCOT.AsString<>'' then
    begin
      if MessageDlg('Imprimir Cupon de COT...',mtconfirmation,mbYesNo,0,mbYes)=mrYes then
       begin
         frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\cot.fr3');
         frRemitos.Variables['COT']     := ''''+DatosRemitos.CDSRtoCabCOT.Value+'''';
         frRemitos.Variables['FECHA']   := ''''+DateToStr(DatosRemitos.CDSRtoCabFECHAVTA.AsDateTime)+'''';
         frRemitos.Variables['DOMINIO'] := ''''+DatosRemitos.CDSRtoCabMUESTRADOMINIOUNIDTR.AsString+'''';
         frRemitos.ShowReport();
       end;

    end;
  DatosRemitos.CDSRtoDet.EnableControls;
  Modificar.Enabled:=False;
END;

procedure TFormRemitos.IngTroquelExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSTroqueles.Close;
  DatosRemitos.CDSTroqueles.Params.ParamByName('cliente').AsString:=DSBase.DataSet.FieldByName('codigo').AsString;
  DatosRemitos.CDSTroqueles.Open;

  if Trim(DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString)<>'' then
    begin
      DatosRemitos.CDSTroqueles.Filtered := False;
      DatosRemitos.CDSTroqueles.Filter   := 'CODIGO = '+''''+DatosRemitos.CDSRtoDetCODIGOARTICULO.Value+'''';
      DatosRemitos.CDSTroqueles.Filtered := True;
      FormRtoTroqueles.Visible:=Not(FormRtoTroqueles.Visible);
    end
  else
    begin
      ShowMessage( 'No Hay Articulo seleccionado...');
    end;
end;

procedure TFormRemitos.LeerPesoExecute(Sender: TObject);
var p:TPesoActual;
begin
  if (DBGrillaDetalle.SelectedIndex=5) and (imBalanza.Visible) and (Balanza<>nil) then
    begin
      Balanza.Port :=PuertoCom;
      Balanza.Id   :=IdBalanza;
      try
        Balanza.Connect;
        Balanza.PesoActual(p);
        if DatosVentas.CDSVentaDet.State=dsBrowse then
          DatosVentas.CDSVentaDet.Edit;
        DatosVentas.CDSVentaDetCANTIDADSetText(DatosVentas.CDSVentaDetCANTIDAD ,floattostr(p.Peso*0.001));
        Balanza.Disconnect;
      except
        ShowMessage('Error de lectura');
      end;
     end;
end;

procedure TFormRemitos.LimpiarRtosSinFcExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. Va Limpiar los remitos que no tiene factura y pone el campo IDFACTURA en Null....', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosRemitos.QLimpiarRtosSinFactura.Close;
        DatosRemitos.QLimpiarRtosSinFactura.ExecSQL;
        DatosRemitos.QLimpiarRtosSinFactura.Close;
        DMMain_FD.LogFileFD(0,2,'Limpiar Campo de id de Factura De los remitos Sin Factura.....' ,'REMITOS');

        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer el cambio..');
      end;
      DatosRemitos.QLimpiarRtosSinFactura.Close;
    end;
  Recuperar.Execute;
end;

procedure TFormRemitos.BuscarExecute(Sender: TObject);
begin
 inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 6;
  FormBuscaCpbte.TipoCpbte1:='RE';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
//   pnPrincipal.Enabled:=True;
  //ShowMessage('numero:'+IntToStr(FormBuscaCpbte.Id_Rec));
end;

procedure TFormRemitos.pcDetalleFacturaChange(Sender: TObject);
begin
  inherited;
  pnRefFactura.Visible:= pcDetalleFactura.ActivePageIndex=0;

end;

procedure TFormRemitos.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
  IF ((RxCCodigo.Text = '') OR
     (RxCLdr.Text = '') OR
     (RxCSucursal.Text = '') OR
     (RxCDeposito.Text = '') OR
     (DatosRemitos.CDSRtoCabMUESTRACOMPROBANTE.Value='') OR
     (RxCConVta.TExt='') OR
     (dbeSuc.Text = '') OR
     (dbeNumero.Text = '') OR
     (Trim(copy(dbeFechaVta.Text,1,2)) = '')) and (DSBase.State in [dsInsert,dsEdit]) THEN
    BEGIN
      ShowMessage('Datos en la Cabecera Incompletos....');
      IF pcDetalleFactura.ActivePageIndex <> 0 THEN
        pcDetalleFactura.ActivePageIndex := 0;
      pnCabecera.Enabled := True;
      RxCCodigo.SetFocus;
    END
  else
    begin
      if (DSBase.State in [dsInsert,dsEdit]) and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          DatosRemitos.CreditoExedido;
          pnCabecera.Enabled:=False;
          pcDetalleFactura.Enabled:=True;
        end;
    end;
  ListaTareas.Visible:=False;

end;

procedure TFormRemitos.PedidoCOTExecute(Sender: TObject);
var cliente: ClienteRE;
  cab: IRemito;
  det: IProducto;
  COT_CLAVE,COT_CUIT,FechaSalida:String;
begin
   if (DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsString='') or (DSBase.DataSet.FieldByName('ID_TRANSPORTE').AsInteger<=0) then
      raise Exception.Create('No Hay Transporte seleccionado....');


  if Trim(DMMain_FD.CuitCOT)='' then
    raise Exception.Create('No Hay CUIT para Cot....');

  if Trim(DMMain_FD.ClaveCOT)='' then
    raise Exception.Create('No Hay Clave para Cot....');

  if Not(Assigned(FormFecha)) then
    FormFecha:=TFormFecha.Create(self);
  FormFecha.fecha:=Date;
  FormFecha.dbcCtaBco.Visible   := False;
  FormFecha.dbcSucursal.Visible := False;
  FormFecha.ShowModal;
  if FormFecha.ModalResult=mrOk then
    FechaSalida :=FormatDateTime('yyyymmdd', FormFecha.fecha)
  else
    FechaSalida :=FormatDateTime('yyyymmdd', Now);

  FreeAndNil(FormFecha);

  cliente                := CoClienteRE.Create;
  cliente.ModoProduccion := DMMain_FD.ModoCOT = 1;//  false; // Cambiar a true para trabajar en producción
  cliente.CUIT           := StrToFloat(DMMain_FD.CuitCOT);// 20939802593; //StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-','')); //20129063662;//20939802593;
  cliente.Password       := DMMain_FD.ClaveCOT;// 'bitingenieria'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker

  DMMain_FD.COT_Sucursal(DSBase.DataSet.FieldByName('SUCURSAL').Value,cot_cuit,cot_clave);
  if COT_cuit<>'' then
    begin
      cliente.CUIT       := StrToFloat(cot_cuit);// 20939802593;     //StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-','')); //20129063662;//20939802593;
      cliente.Password   := Cot_clave;           // 'bitingenieria'; // Obtenerla segun las instrucciones en www.bitingenieria.com.ar/cotlinker
    end;


  cliente.NroPlanta      := 0;
  cliente.NroPuerta      := 1;
  cliente.Fecha          := FormatDateTime('yyyymmdd', Now);
  cliente.NroSecuencial  := 10;
  cliente.Inicializar;

  cab := CoRemito.Create;

  if Trim(DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').Value)='' then
    raise Exception.Create('No Hay Codigo de Comprobante ...');

  cab.CU_CODIGO_DGI :=  91;
  cab.CU_TIPO       := ' R';
  cab.CU_PREFIJO    := DSBase.DataSet.FieldByName('SUCRTO').AsInteger;// 5;
  cab.CU_NUMERO     := DSBase.DataSet.FieldByName('NUMERORTO').AsInteger;// 10;

  cab.FECHA_EMISION                   := FormatDateTime('yyyymmdd', Now);//'';//DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime;//   FormatDateTime('yyyymmdd', Now);
  cab.FECHA_SALIDA_TRANSPORTE         := FechaSalida;// FormatDateTime('yyyymmdd', Now);
  cab.SUJETO_GENERADOR                := 'E';
  cab.DESTINATARIO_CONSUMIDOR_FINAL   := False;
  cab.DESTINATARIO_TENEDOR            := True;
  cab.DESTINATARIO_CUIT               := StrToFloat(AnsiReplaceStr(DSBase.DataSet.FieldByName('CUIT').AsString,'-',''));//   20939802593;
  cab.DESTINATARIO_RAZON_SOCIAL       := DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString;//'Razon Social';

  cab.DESTINO_DOMICILIO_CALLE         := ifthen(DSBase.DataSet.FieldByName('MUESTRADIRECCION_CALLE').AsString<>'',
                                                DSBase.DataSet.FieldByName('MUESTRADIRECCION_CALLE').AsString,
                                                DSBase.DataSet.FieldByName('DIRECCION').AsString);//'calle';
  if Trim(DSBase.DataSet.FieldByName('MUESTRADIRECCION_NRO').AsString)='' then
    cab.DESTINO_DOMICILIO_NUMERO        := 1000
  else
    cab.DESTINO_DOMICILIO_NUMERO        := DSBase.DataSet.FieldByName('MUESTRADIRECCION_NRO').AsInteger;//1234;


  cab.DESTINO_DOMICILIO_CODIGO_POSTAL := ifThen(DSBase.DataSet.FieldByName('CPOSTAL').AsString<>'',DSBase.DataSet.FieldByName('CPOSTAL').AsString,'1000');//'1234';
  cab.DESTINO_DOMICILIO_LOCALIDAD     := DSBase.DataSet.FieldByName('LOCALIDAD').AsString;//'Capital Federal';
  cab.DESTINO_DOMICILIO_PROVINCIA     := ifthen(DSBase.DataSet.FieldByName('LETRACOT').AsString<>'',DSBase.DataSet.FieldByName('LETRACOT').AsString,' B');
  cab.ORIGEN_CUIT                     := cliente.CUIT;//  StrToFloat(AnsiReplaceStr(DatosRemitos.CDSEmpresaCUIT.AsString,'-',''));// 20939802593;
  cab.ORIGEN_RAZON_SOCIAL             := DatosRemitos.CDSEmpresaNOMBRE.AsString;// 'razon social';
  cab.ORIGEN_DOMICILIO_CALLE          := DatosRemitos.CDSEmpresaDIRECCION.AsString;// 'calle';
  cab.ORIGEN_DOMICILIO_NUMERO         := DatosRemitos.CDSEmpresaDIRECCION_NRO.AsInteger;// 1234;
  cab.ORIGEN_DOMICILIO_CODIGO_POSTAL  := DatosRemitos.CDSEmpresaCPOSTAL.Value;// '1234';
  cab.ORIGEN_DOMICILIO_LOCALIDAD      := DatosRemitos.CDSEmpresaLOCALIDAD.Value;//  'Avellaneda';
  cab.ORIGEN_DOMICILIO_PROVINCIA      := DatosRemitos.CDSEmpresaCODIGO_COT.Value;// 'B';
  cab.ENTREGA_DOMICILIO_ORIGEN        := 'SI';
  If AnsiReplaceStr(DSBase.DataSet.FieldByName('MUESTRADOMINIOUNIDTR').AsString,'-','')='' Then
    raise Exception.Create('Falta Dominio del Transporte');
  if Trim(AnsiReplaceStr(DSBase.DataSet.FieldByName('MUESTRACUITRANSPORTE').AsString,'-',''))='' then
    raise Exception.Create('Falta Cuit Transporte');

  cab.TRANSPORTISTA_CUIT              := StrToFloat(AnsiReplaceStr(DSBase.DataSet.FieldByName('MUESTRACUITRANSPORTE').AsString,'-',''));// 20939802593;

  cab.PATENTE_VEHICULO                := DatosRemitos.CDSRtoCabMUESTRADOMINIOUNIDTR.AsString;// 'AAA111';
  cab.IMPORTE                         := DatosRemitos.CDSRtoCabTOTAL.AsFloat;//  1000;

  cliente.AgregaRemito(cab);

  DatosRemitos.CDSRtoDet.First;
  DatosRemitos.CDSRtoDet.DisableControls;
  while Not(DatosRemitos.CDSRtoDet.Eof) do
    begin
      det := CoProducto.Create;
      det.CODIGO_UNICO_PRODUCTO            := DMMain_FD.CodigoConceptoCOT;// '010100';//DatosRemitos.CDSRtoDetCODIGOARTICULO.Value;// '010100';
      det.RENTAS_CODIGO_UNIDAD_MEDIDA      := 1;
      det.CANTIDAD                         := DatosRemitos.CDSRtoDetCANTIDAD.Value;// 1000;
      det.PROPIO_CODIGO_PRODUCTO           := DatosRemitos.CDSRtoDetCODIGOARTICULO.Value;//'prod1';
      det.PROPIO_DESCRIPCION_PRODUCTO      := DMMain_fd.DetalleConceptoCOT;// Copy(DatosRemitos.CDSRtoDetDETALLE.Value,1,40);//DMMain_fd.DetalleConceptoCOT;//  'VARIOS';//  DatosRemitos.CDSRtoDetDETALLE.Value;//'producto 1'; //LOS DEMAS
      det.PROPIO_DESCRIPCION_UNIDAD_MEDIDA := 'UNIDAD';
      det.CANTIDAD_AJUSTADA                := DatosRemitos.CDSRtoDetCANTIDAD.Value;//1000;

      cliente.AgregaProducto(det);
      DatosRemitos.CDSRtoDet.Next;
    end;
  DatosRemitos.CDSRtoDet.First;
  DatosRemitos.CDSRtoDet.EnableControls;
  cliente.Enviar;

  if cliente.Resultado.TransactionOk then
    begin
      DMMain_FD.GravarCot('R',DatosRemitos.CDSRtoCabID_RTO.Value,IntToStr(cliente.Resultado.COT));
      ShowMessage('COT obtenido: ' + IntToStr(cliente.Resultado.COT));
      Recuperar.Execute;
    end
  else
    ShowMessage(cliente.Resultado.Errores);
    //ShowMessage('Final de pedido de COT');



end;

procedure TFormRemitos.PegarDetalleExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosRemitos.CDSDetalleXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RtoVtaDet.XML');
      DatosRemitos.CDSDetalleXML.First;
      while not(DatosRemitos.CDSDetalleXML.Eof) do
        begin
          DatosRemitos.CDSRtoDet.Append;
          DatosRemitos.CDSRtoDetCodigoArticuloSetText(DatosRemitos.CDSRtoDetCodigoArticulo,DatosRemitos.CDSDetalleXML.FieldByName('CODIGOArticulo').AsString);
          DatosRemitos.CDSRtoDetDetalle.Value  :=DatosRemitos.CDSDetalleXML.FieldByName('Detalle').AsString;
          DatosRemitos.CDSRtoDetDescuentoSetText(DatosRemitos.CDSRtoDetDESCUENTO,DatosRemitos.CDSDetalleXML.FieldByName('DESCUENTO').AsString);
          DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCantidad,DatosRemitos.CDSDetalleXML.FieldByName('Cantidad').AsString);
          DatosRemitos.CDSRtoDetUnitario_TotalSetText(DatosRemitos.CDSRtoDetUnitario_Total,DatosRemitos.CDSDetalleXML.FieldByName('Unitario_Total').AsString);
          DatosRemitos.CDSRtoDet.Post;
          DatosRemitos.CDSDetalleXML.Next;
        end;
    end;
end;

procedure TFormRemitos.PikeoExecute(Sender: TObject);
var lote:Integer;
begin
  inherited;
  if DSBase.DataSet.State=dsInsert then
    begin
      if Not(Assigned(FormBorradoRegistroPikeo)) then
        FormBorradoRegistroPikeo:=TFormBorradoRegistroPikeo.create(Self);
      FormBorradoRegistroPikeo.Cliente:=DSBase.DataSet.FieldByName('codigo').AsString;
      FormBorradoRegistroPikeo.ShowModal;
      if FormBorradoRegistroPikeo.ModalResult=mrOk then
        begin
          Lote:=FormBorradoRegistroPikeo.CDSRegistroPikeo.FieldByName('id_lote').Value;
          AgregarPikeo(FormBorradoRegistroPikeo.CDSRegistroPikeo);
          if MessageDlg('Borra registro de Pikeo....??',mtConfirmation,mbYesNo,0)=mryes then
            DMMain_FD.BorrarRegistrPikeo(Lote);

        //  ShowMessage('Ok');
        end
      else
        if FormBorradoRegistroPikeo.ModalResult=mrCancel then
          ShowMessage('Cancelado');


    end;

end;

procedure TFormRemitos.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraRto = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRARTO').AsString,'''');
  inherited;

end;

procedure TFormRemitos.CambiarNroExecute(Sender: TObject);
begin
  inherited;
  if (DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'') and
      (DatosRemitos.CDSRtoCabIDFACTURA.AsInteger>0) Then
    ShowMessage('Remito Facturado no se puede cambiar el Nro.')
  else
    begin
      if Not(Assigned(FormCambiaNroCpbte)) then
        FormCambiaNroCpbte        :=TFormCambiaNroCpbte.Create(FormRemitos);
      FormCambiaNroCpbte.Id       :=DSBase.DataSet.FieldByName('id_rto').Value;
      FormCambiaNroCpbte.Num      :=DSBase.DataSet.FieldByName('Numerorto').Value;
      FormCambiaNroCpbte.Suc      :=DSBase.DataSet.FieldByName('Sucrto').Value;
      FormCambiaNroCpbte.Let      :=DSBase.DataSet.FieldByName('Letrarto').Value;
      FormCambiaNroCpbte.Tipo     :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
      if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) Then
        FormCambiaNroCpbte.Fecha    :=DSBase.DataSet.FieldByName('FechaVta').Value;

      if Not(VarIsNull(DSBase.DataSet.FieldByName('FechaVta').Value)) then
        FormCambiaNroCpbte.Fecha2   :=DSBase.DataSet.FieldByName('FechaVta').Value;

      FormCambiaNroCpbte.Sucursal := DSBase.DataSet.FieldByName('Sucursal').Value;
      FormCambiaNroCpbte.Clase    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
      FormCambiaNroCpbte.CV       := 'V';
      FormCambiaNroCpbte.Showmodal;
      Recuperar.Execute;
    end;
end;

procedure TFormRemitos.CambiarTransporteExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEleccionTransporte)) then
    FormEleccionTransporte:=TFormEleccionTransporte.Create(Self);
  FormEleccionTransporte.showModal;
  if FormEleccionTransporte.ModalResult=mrOk then
    begin
      Modificar.Execute;
      DatosRemitos.CDSRtoCabID_CHOFER.Value                 := FormEleccionTransporte.id_Chofer;
      DatosRemitos.CDSRtoCabTRASNPORTE_ADICIONAL.Value      := FormEleccionTransporte.id_anexo;
      DatosRemitos.CDSRtoCabID_TRANSPORTE.Value             := FormEleccionTransporte.id_Transporte;
      DatosRemitos.CDSRtoCabMUESTRADOMINIOUNIDTR.Value      := FormEleccionTransporte.Dominio;
      DatosRemitos.CDSRtoCabTRASNPORTE_UNIDAD.Value         := FormEleccionTransporte.id_unidada;
      DatosRemitos.CDSRtoCabMUESTRA_UNI_TRANSPORTE.AsString := FormEleccionTransporte.Unidad;
      DMMain_FD.LogFileFD(1,2,'Cambio de Chofer.. Antes:'+IntToStr(FormAnexosRtoTransporte.id_Chofer)+' nuevo >>'+DatosRemitos.CDSRtoCabID_TRANSPORTE.AsString ,'REMITOS');
      Confirma.Execute;
    end;
  FreeAndNil(FormEleccionTransporte);
  //
end;

procedure TFormRemitos.CancelarExecute(Sender: TObject);
begin
  if MessageDlg('Cancela los Cambios...??',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;

  if dbgExitencias.Visible=True Then
    dbgExitencias.Visible:=False;
  if Anulado<>nil Then FreeAndNil(Anulado);

  if pnDetalleAdicional.Visible then
    pnDetalleAdicional.Visible:=False;

  pnPrecios.Visible:=False;

  jvAlerta.Close(True);
  if ListaTareas.Visible=True then
    ListaTareas.Visible:=False;
  // **** Ingreso en el Log File  **************
  DMMain_FD.LogFileFD(1,4,'Rto.Cancelado(FormRtos): '+ DatosRemitos.CDSRtoCabNROCPBTE.Value+'('+DatosRemitos.CDSRtoCabID_RTO.AsString+')'+
                          ' Cliente: '+ DatosRemitos.CDSRtoCabNOMBRE.Value+
                          ' Importe: '+ FormatFloat('0.00',DatosRemitos.CDSRtoCabTOTAL.asfloat),
                          'RTOVTA');


  DatosRemitos.CDSRtoCab.close;
  DatosRemitos.CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRemitos.CDSRtoCab.Params.ParamByName('id').Clear;
  DatosRemitos.CDSRtoCab.Open;

  DatosRemitos.CDSRtoDet.Close;
  DatosRemitos.CDSRtoDet.Params.ParamByName('id').Clear;
  DatosRemitos.CDSRtoDet.Open;

  DatosRemitos.CDSImpuestos.Close;
  DatosRemitos.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosRemitos.CDSImpuestos.Open;
  inherited;
  pnLimiteCto.Visible:=False;
  pnCabecera.Enabled:=False;
  btNuevo.SetFocus;
end;

procedure TFormRemitos.chOrdenarDetalleClick(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSRtoDet.IndexFieldNames:='DETALLE';
end;

procedure TFormRemitos.MarcarEntrgadoExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. Va marcar el remitos como Facturado...', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
     DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosRemitos.QMarcarEntregado.Close;
        DatosRemitos.QMarcarEntregado.ParamByName('id').Value:=DatosRemitos.CDSRtoCabID_RTO.Value;
        DatosRemitos.QMarcarEntregado.ExecSQL;
        DatosRemitos.QMarcarEntregado.Close;
        DMMain_FD.LogFileFD(0,2,'Marcado de remito Como Entregado y Facturado, ('+DatosRemitos.CDSRtoCabID_RTO.AsString+') Nro Cpbte:'+DatosRemitos.CDSRtoCabNROCPBTE.AsString ,'REMITOS' );

        DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo hacer el cambio..');
        end;
      DatosRemitos.QMarcarEntregado.Close;
    end;
  Recuperar.Execute;
end;

procedure TFormRemitos.MarcarNoFacturableExecute(Sender: TObject);
begin
  inherited;
  if ((DatosRemitos.CDSRtoCabIDFACTURA.AsString='') or
      (DatosRemitos.CDSRtoCabIDFACTURA.AsInteger<=0)) and
      (DatosRemitos.CDSRtoCabANULADO.Value='N') then
    begin
      IF MessageDlg('Ud. Va marcar el Rto. como No Facturable...', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosRemitos.spNoFacturable.Close;
            DatosRemitos.spNoFacturable.ParamByName('id').Value:=DatosRemitos.CDSRtoCabID_RTO.Value;
            DatosRemitos.spNoFacturable.ExecProc;
            DatosRemitos.spNoFacturable.Close;
            DMMain_FD.LogFileFD(0,2,'Remito Marcado Como No Facturable, ('+DatosRemitos.CDSRtoCabID_RTO.AsString+') Nro Cpbte:'+DatosRemitos.CDSRtoCabNROCPBTE.AsString ,'REMITOS' );

            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Fallo, no se pudo hacer la operación...');
          end;
        end;
      Recuperar.Execute;
    end
  else
    begin
      if DatosRemitos.CDSRtoCabIDFACTURA.AsInteger>0 then
       ShowMessage('Ya Facturado no se puede revertir...');

    end;
end;

procedure TFormRemitos.ModificarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      inherited;
      pnCabecera.Enabled:=False;
    end
  else
    ShowMessage('No esta autorizado para esta operacion... solo Administradores');
end;

procedure TFormRemitos.MostrarDescuento1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='DESCUENTO' Then
        Ind:=i;
    end;
  MostrarDescuento1.Checked            :=Not(MostrarDescuento1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarDescuento1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.MostrarFacturaAsociadad1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='ID_FACTURA' Then
        Ind:=i;
    end;
  MostrarFacturaAsociadad1.Checked     :=Not(MostrarFacturaAsociadad1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarFacturaAsociadad1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.MostrarPrecioUnitario1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='UNITARIO_TOTAL' Then
        Ind:=i;
    end;
  MostrarPrecioUnitario1.Checked       :=Not(MostrarPrecioUnitario1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarPrecioUnitario1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.MostrarSignoMoneda1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='MUESTRASIGNO' Then
        Ind:=i;
    end;
  MostrarSignoMoneda1.Checked          :=Not(MostrarSignoMoneda1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarSignoMoneda1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.MostrarTasaIva1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='IVA_TASA' Then
        Ind:=i;
    end;
  MostrarTasaIva1.Checked              :=Not(MostrarTasaIva1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarTasaIva1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.MostrarTotal1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='TOTAL' Then
        Ind:=i;
    end;
  MostrarTotal1.Checked                :=Not(MostrarTotal1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarTotal1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraRto = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRARTO').AsString,'''');
  inherited;

end;

procedure TFormRemitos.OrdenarArticulosImpresionPorLoteClick(Sender: TObject);
begin
  inherited;
  OrdenarArticulosImpresionPorLote.Checked :=not(OrdenarArticulosImpresionPorLote.Checked);
  if OrdenarArticulosImpresionPorLote.Checked then
    OrdenarArticulosImpresionPorSubRubros1.Checked:=False;

end;

procedure TFormRemitos.OrdenarArticulosImpresionPorSubRubros1Click(
  Sender: TObject);
begin
  inherited;
  OrdenarArticulosImpresionPorSubRubros1.Checked:=not(OrdenarArticulosImpresionPorSubRubros1.Checked);
  if OrdenarArticulosImpresionPorSubRubros1.Checked then
    OrdenarArticulosImpresionPorLote.Checked:=False;

end;

procedure TFormRemitos.PapeleraExecute(Sender: TObject);
var QAux:TFDQuery;
Nro:string;
Id:String;
sDirectorio:string;
Restaurado:Boolean;
cab:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_RE';
  Restaurado:=False;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if Not(Assigned(FormRestaurarPapelera)) Then
        FormRestaurarPapelera := TFormRestaurarPapelera.Create(Self);
      FormRestaurarPapelera.Tag              :=2;
      FormRestaurarPapelera.Directorio       := sDirectorio;
      FormRestaurarPapelera.CDSVentaCab      := DatosRemitos.CDSRtoCab;
      FormRestaurarPapelera.CDSVentaDet      := DatosRemitos.CDSRtoDet;
      FormRestaurarPapelera.CDSImpuestos     := DatosRemitos.CDSImpuestos;

      FormRestaurarPapelera.ShowModal;
      if FormRestaurarPapelera.ModalResult=mrOk then
        begin
           QAux               := TFDQuery.Create(self);
           QAux.Connection    := DMMain_FD.fdcGestion;
           QAux.CachedUpdates := True;
           Nro                := DatosRemitos.CDSRtoCabNUMERORTO.AsString;
           Id                 := DatosRemitos.CDSRtoCabID_RTO.AsString;
           DMMain_FD.fdcGestion.StartTransaction;
           try
             QAux.SQL.Text      := DMMain_FD.QRemitoCab.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosRemitos.CDSRtoCab);
             QAux.ApplyUpdates(0);
             QAux.Close;

             QAux.SQL.Text      := DMMain_FD.QRemitoDet.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosRemitos.CDSRtoDet);
             QAux.ApplyUpdates(0);
             QAux.Close;

             if not(DatosRemitos.CDSImpuestos.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QImpuestoRto.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosRemitos.CDSImpuestos);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;


             QAux.SQL.Text:='Update RtoCab f set f.NUMERORTO='+''''+Nro+''''+' where f.id_RTO='+''+ID+'';
             QAux.ExecSQL;
             QAux.Close;
             Restaurado:=True;
             DMMain_FD.fdcGestion.Commit;
           except
             Restaurado:=False;
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('Opercion de restauración Fallida...')
           end;
           DatoNew   := DatosRemitos.CDSRtoCabID_RTO.AsString;
           TipoCpbte := DatosRemitos.CDSRtoCabTIPOCPBTE.AsString;
           Recuperar.Execute;
        end;
      if Restaurado then
        begin
          DeleteFile(sDirectorio+'\('+Id+')ReVtaCab.xml');
          DeleteFile(sDirectorio+'\('+Id+')ReVtaDet.bin');
          DeleteFile(sDirectorio+'\('+Id+')ReVtaImp.bin');
        end
      else
        begin
          DatoNew:='-1';
          Recuperar.Execute;
        end;
      FreeAndNil(FormRestaurarPapelera);
    end;
end;

procedure TFormRemitos.Pasar_A_PapeleraExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Papelera_RE') then
    CreateDir(DMMain_FD.MainPath+'Papelera_RE');
  if Not(DatosRemitos.CDSRtoCab.IsEmpty)  Then
    begin
      DatosRemitos.CDSRtoCab.SaveToFile(DMMain_FD.MainPath+'Papelera_RE\('+DatosRemitos.CDSRtoCabID_RTO.AsString+')ReVtaCab.XML');
      DatosRemitos.CDSRtoDet.SaveToFile(DMMain_FD.MainPath+'Papelera_RE\('+DatosRemitos.CDSRtoDetID_CABRTO.AsString+')ReVtaDet.bin');
      DatosRemitos.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Papelera_RE\('+DatosRemitos.CDSImpuestosID_RTOCAB.AsString+')ReVtaImp.bin');
    end;
end;

procedure TFormRemitos.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabSUCURSAL.Clear;
      DatosRemitos.CDSRtoCabMUESTRASUCURSAL.Clear;
      DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      DatosRemitos.CDSRtoCabMUESTRACOMPROBANTE.Clear;
      DatosRemitos.CDSRtoCabLETRARTO.Clear;
      DatosRemitos.CDSRtoCabSUCRTO.Clear;
      DatosRemitos.CDSRtoCabNUMERORTO.Clear;
    end;
end;

procedure TFormRemitos.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      DatosRemitos.CDSRtoCabMUESTRACOMPROBANTE.Clear;
      DatosRemitos.CDSRtoCabLETRARTO.Clear;
      DatosRemitos.CDSRtoCabSUCRTO.Clear;
      DatosRemitos.CDSRtoCabNUMERORTO.Clear;
    end;
end;

procedure TFormRemitos.RxCCodigoExit(Sender: TObject);
begin
  inherited;
  if (Trim(RxCCodigo.Text)<>'') then
    Pikeo.Enabled:=DMMain_FD.GetHayRegistroPikeo(Trim(RxCCodigo.Text));
end;

procedure TFormRemitos.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabCODIGO.Clear;
      DatosRemitos.CDSRtoCabNOMBRE.Clear;
      DatosRemitos.CDSRtoCabLDR.Clear;
      DatosRemitos.CDSRtoCabMUESTRALDR.Clear;
      DatosRemitos.CDSRtoCabCONDICIONVTA.Clear;
      DatosRemitos.CDSRtoCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormRemitos.RxCLdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabLDR.Clear;
      DatosRemitos.CDSRtoCabMUESTRALDR.Clear;
    end;
end;

procedure TFormRemitos.RxCDepositoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabDEPOSITO.Clear;
      DatosRemitos.CDSRtoCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormRemitos.RxCConVtaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitos.CDSRtoCabCONDICIONVTA.Clear;
      DatosRemitos.CDSRtoCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormRemitos.DSBaseDataChange(Sender: TObject; Field: TField);
begin
  inherited;
  pnFechaAlquiler.Visible :=  (DSBase.DataSet.FieldByName('DEVOLUCION').AsString ='A') or (DSBase.DataSet.FieldByName('DEVOLUCION').AsString ='D');
  btDevolver.Enabled      :=  (DSBase.DataSet.FieldByName('DEVOLUCION').AsString ='A') and (DSBase.DataSet.State = dsBrowse);
  DevolverAlquiler.Enabled:=  (DSBase.DataSet.FieldByName('DEVOLUCION').AsString ='A') and (DSBase.DataSet.State = dsBrowse);
end;

procedure TFormRemitos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  ImpresionRotulo.Enabled   := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  PedidoCOT.Enabled         := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State =dsBrowse;
  dbeObservaciones1.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled  := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled           := DMMain_FD.AplicaDescuento;
  pnPrincipal.Enabled        := True;
  pcDetalleFactura.Enabled   := True;
  pnCabecera.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbcLista.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  if (DSBase.DataSet.State IN [dsBrowse]) and (dbgExitencias.Visible=True) Then
    dbgExitencias.Visible    := False;
  rxcVendedor.Enabled        := DMMain_FD.ModificaVendedor;
  EnviarCorreo.Enabled       := Imprimir.Enabled;
  Tareas.Enabled             := (Not(DSBase.Dataset.IsEmpty));
  Facturar.Enabled           := ((Not(DSBase.Dataset.IsEmpty)) and (DatosRemitos.CDSRtoCabIDFACTURA.AsString='')) and
                               ((DatosRemitos.CDSRtoCabIDFACTURA.Value=0) or (DatosRemitos.CDSRtoCabIDFACTURA.Value=-1));

  cbDevolucion.Enabled       := pnCabecera.Enabled;
  spMenu.Enabled             := (DMMain_FD.UsuarioAdministrador) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  dbcTransporte.Enabled      := DSBase.DataSet.State IN [dsInsert, dsEdit];
  Anular.Enabled             := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Facturar.Enabled           := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  IngTroquel.Enabled         := DSBase.DataSet.State IN [dsInsert, dsEdit];
  AnexosTR.Enabled           := DSBase.DataSet.State IN [dsInsert, dsEdit];
  pnTipoRto.Enabled          := DSBase.DataSet.State IN [dsInsert];
  CambiarTransporte.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and
                                (DSBase.DataSet.FieldByName('COT').AsString='');

//  if Not(DSBase.DataSet.State=dsInactive) and (Not(DSBase.Dataset.IsEmpty)) then
//    begin
//      if (DSBase.DataSet.State=dsBrowse)  then
//        DBGrillaDetalle.Options:=DBGrillaDetalle.Options + [dgRowselect]
//      else
//        DBGrillaDetalle.Options:=DBGrillaDetalle.Options - [dgRowselect]
//    end;
end;

procedure TFormRemitos.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosRemitos.CDSBuscaVendedor.Close;
  DatosRemitos.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosRemitos.CDSRtoCabVENDEDORSetText(DatosRemitos.CDSRtoCabVENDEDOR,comBuscadorVendedor.Id);
  DatosRemitos.CDSBuscaVendedor.Close;
end;

procedure TFormRemitos.BusqedarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
 IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='R';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='RE' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end;
   end;
end;

procedure TFormRemitos.Button1Click(Sender: TObject);
begin
  inherited;
  DBGrillaDetalle.DataSource.DataSet.Prior;
  MostrarRegistroEnValueList(DBGrillaDetalle.DataSource.DataSet,ValueListEditor1);

end;

procedure TFormRemitos.Button2Click(Sender: TObject);
begin
  inherited;
  DBGrillaDetalle.DataSource.DataSet.Next;
  MostrarRegistroEnValueList(DBGrillaDetalle.DataSource.DataSet,ValueListEditor1);

end;

procedure TFormRemitos.rxcVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosRemitos.CDSRtoCabVENDEDOR.Clear;
        DatosRemitos.CDSRtoCabMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormRemitos.lbEstadoIVAClick(Sender: TObject);
begin
  inherited;
  if MessageDlg('Esta por cambiar el modo de visualizcion del IVA, esta seguro??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
    begin
      if FormRemitos.DiscriminaIva='N' then
        begin
          FormRemitos.DiscriminaIva:='S';
          lbEstadoIVA.Caption:='Importes S/IVA';
        end
      else
        begin
          FormRemitos.DiscriminaIva:='N';
          lbEstadoIVA.Caption:='Importes C/IVA';
        end;
      DBGrillaDetalle.Refresh;
    end;
end;

procedure TFormRemitos.sbEstadoClick(Sender: TObject);
begin
  inherited;
  if sbEstado.Cursor=crHandPoint then
    begin
      if (Box=0) and (DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString<>'') then
        begin
          if not(Assigned(FormNotaVta)) then
            FormNotaVta:=TFormNotaVta.Create(self);
          FormNotaVta.DatoNew  :=DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString;
          FormNotaVta.TipoCpbte:='NV';
          FormNotaVta.Recuperar.Execute;
          FormNotaVta.Show;

        end
      else
        if (Box=1) and (DatosRemitos.CDSRtoCabPRESUPUESTO_ID.AsString<>'') then
          begin
            if not(Assigned(FormPresupuesto_2)) then
              FormPresupuesto_2:=TFormPresupuesto_2.Create(self);
            FormPresupuesto_2.DatoNew  :=DatosRemitos.CDSRtoCabPRESUPUESTO_ID.AsString;
            FormPresupuesto_2.TipoCpbte:='PR';
            FormPresupuesto_2.Recuperar.Execute;
            FormPresupuesto_2.Show;
          end;
    end;
end;

procedure TFormRemitos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  if sbEstado.Cursor<>crHandPoint then
    frRemitos.DesignReport;
end;

procedure TFormRemitos.sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if( X>sbEstado.Panels[0].Width+1) and ( X<sbEstado.Panels[0].Width+sbEstado.Panels[1].Width) then Box:=0
  else
    if( X>sbEstado.Panels[0].Width+sbEstado.Panels[1].Width+1) and ( X<sbEstado.Panels[0].Width+sbEstado.Panels[1].Width+sbEstado.Panels[2].Width-1) then Box:=1;

  if x>(sbEstado.Panels[0].Width+1) then
    begin
      if Not(DSBase.DataSet.IsEmpty) then
      
      sbEstado.Cursor:= crHandPoint;
    end
   else
     begin
       sbEstado.Cursor:=crDefault;
     end;

end;

procedure TFormRemitos.TareasExecute(Sender: TObject);
begin
  inherited;
  if ListaTareas.Visible=True then
    ListaTareas.Visible:=False
  else
    begin
      ListaTareas.Top :=btTareas.Top+btTareas.Height+2;
      ListaTareas.Left:=btTareas.Left-120;
      ListaTareas.Visible:=True;
      ListaTareas.Enabled:=DSBase.State<>dsBrowse;
    end;
end;

procedure TFormRemitos.MostrarUnidadesdeStokc1Click(Sender: TObject);
var i,Ind:integer;
begin
  inherited;
  for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
    begin
      if DBGrillaDetalle.Columns[I].FieldName='CANTIDAD_UNIDADES' Then
        Ind:=i;
    end;
  MostrarUnidadesdeStokc1.Checked      :=Not(MostrarUnidadesdeStokc1.Checked);
  DBGrillaDetalle.Columns[Ind].Visible :=MostrarUnidadesdeStokc1.Checked;

  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  if VerCodigoAlternativo1.Checked then
    DBGrillaDetalle.Columns[1].Title.Caption:='Cod.Alt'
  else
    DBGrillaDetalle.Columns[1].Title.Caption:='Codigo';
  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.VerFacturaExecute(Sender: TObject);
var Tipo:String;
begin
  inherited;
  if DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'' then
    begin
//      DMMain_FD.QCompVta.Close;
//      DMMain_FD.QCompVta.ParamByName('id').Value:=DatosRemitos.CDSRtoCabIDFACTURA.AsInteger;
//      DMMain_FD.QCompVta.Open;
//      if DMMain_FD.QCompVtaTIPOCPBTE.Value='FC' Then
      Tipo:= DMMain_FD.GetTipoCompVta(DatosRemitos.CDSRtoCabIDFACTURA.AsInteger);
      if (Tipo='FC') or (Tipo='NC') Then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  := DatosRemitos.CDSRtoCabIDFACTURA.AsString;
          FormCpbte_2.TipoCpbte:= Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if Tipo='FO' Then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  := DatosRemitos.CDSRtoCabIDFACTURA.AsString;
            FormCpbteCtdo_2.TipoCpbte:= Tipo;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;
    end;

end;

procedure TFormRemitos.VerFacturaXDetalleExecute(Sender: TObject);
var Tipo:String;
begin
  inherited;
  if DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'' then
    begin
   //   DMMain_FD.QCompVta.Close;
   //   DMMain_FD.QCompVta.ParamByName('id').Value:=DatosRemitos.CDSRtoDetID_FACTURA.AsInteger;
   //   DMMain_FD.QCompVta.Open;
     Tipo:=DMMain_FD.GetTipoCompVta(DatosRemitos.CDSRtoDetID_FACTURA.AsInteger);

      if Tipo='FC' Then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  := DatosRemitos.CDSRtoDetID_FACTURA.AsString;
          FormCpbte_2.TipoCpbte:= Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if Tipo='FO' Then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  := DatosRemitos.CDSRtoDetID_FACTURA.AsString;
            FormCpbteCtdo_2.TipoCpbte:= Tipo;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;
    end;
end;

procedure TFormRemitos.VerNotaPedidoExecute(Sender: TObject);
begin
  inherited;
 if DatosRemitos.CDSRtoCabMUESTRA_ID_NOTAPEDIDO.AsString<>'' then
    begin
      if Not(Assigned(FormNotaPedidoCliente)) then
        FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(Self);
      FormNotaPedidoCliente.DatoNew  := DatosRemitos.CDSRtoCabMUESTRA_ID_NOTAPEDIDO.AsString;
      // debo traer el tipo segun si biene de una factura o NC
      FormNotaPedidoCliente.TipoCpbte:= 'PC';
      FormNotaPedidoCliente.Recuperar.Execute;
      FormNotaPedidoCliente.Show;
    end;
end;

procedure TFormRemitos.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormRemitos.DBGrillaDetalleEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
  inherited;
  DBGrillaDetalle.DragMode:=dmManual;
end;

procedure TFormRemitos.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex<1 then
    DBGrillaDetalle.SelectedIndex:=1;
  sbEstado.SimpleText:=' F-11: Lista los movimientos del artículo elegido';
end;

procedure TFormRemitos.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
end;

procedure TFormRemitos.AnexosTRExecute(Sender: TObject);
begin
  inherited;

  FormAnexosrtoTransporte.id_Unidad     := DatosRemitos.CDSRtoCabTRASNPORTE_UNIDAD.Value;
  FormAnexosrtoTransporte.id_Chofer     := DatosRemitos.CDSRtoCabID_CHOFER.Value;
  FormAnexosrtoTransporte.id_anexo      := DatosRemitos.CDSRtoCabTRASNPORTE_ADICIONAL.Value;
  FormAnexosrtoTransporte.id_Transporte := DatosRemitos.CDSRtoCabID_TRANSPORTE.Value;

  FormAnexosRtoTransporte.ShowModal;
  if FormAnexosRtoTransporte.ModalResult=mrOk then
    begin
      DatosRemitos.CDSRtoCabID_CHOFER.Value                 := FormAnexosrtoTransporte.id_Chofer;
      DatosRemitos.CDSRtoCabTRASNPORTE_ADICIONAL.Value      := FormAnexosrtoTransporte.id_anexo;
      DatosRemitos.CDSRtoCabID_TRANSPORTE.Value             := FormAnexosrtoTransporte.id_Transporte;
      DatosRemitos.CDSRtoCabMUESTRADOMINIOUNIDTR.Value      := FormAnexosRtoTransporte.Dominio_Tr;
      DatosRemitos.CDSRtoCabTRASNPORTE_UNIDAD.Value         := FormAnexosRtoTransporte.id_Unidad;
      DatosRemitos.CDSRtoCabMUESTRA_UNI_TRANSPORTE.AsString := FormAnexosRtoTransporte.Unidad_Tr;
      DMMain_FD.LogFileFD(1,2,'Cambio de Chofer.. Antes:'+IntToStr(FormAnexosRtoTransporte.id_Chofer)+' nuevo >>'+DatosRemitos.CDSRtoCabID_TRANSPORTE.AsString ,'REMITOS');

    end;
end;

procedure TFormRemitos.AnularExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.AnularRemitos) then
    begin
      IF NOT (DatosRemitos.CDSRtoCab.IsEmpty) THEN
        BEGIN
          IF MessageDlg('Ud. está por hacer una operación de' + #13 +
            'anulación.....' + #13 +
            'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
              THEN
            BEGIN
              if (DatosRemitos.CDSRtoCabIDFACTURA.AsString='') or (DatosRemitos.CDSRtoCabIDFACTURA.AsInteger=0) then
                begin
                  CpbteNuevo:='N';
                  DatosRemitos.CDSRtoCab.Edit;
                  DatosRemitos.CDSRtoCabANULADO.Value := 'S';
//                  DatoNew:=DatosRemitos.wwCDSRtoCabID_RTO.AsString;
                  //    DatosVentas.wwCDSVentaCab.Post;
                   Confirma.Execute;
                  if (DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString<>'' ) and
                     (DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString<>'0')  then
                  IF MessageDlg('Hay una Nota de Venta asociada al Rto' + #13 +
                                'restaura para volver ser usada...?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                    THEN  RestaurarNV.Execute;

                end
              else
               ShowMessage('Rto.Facturado.......');
            END
        END
      ELSE
        ShowMessage('No hay regsitro Activo');
    end
  ELSE
    ShowMessage('No esta autorizado para esta opción... verifique con el Administrador');


end;

procedure TFormRemitos.BorrarExecute(Sender: TObject);
begin
  if Not(DSbase.DataSet.IsEmpty) and (DMMain_FD.BorrarRemitos) then
    begin
      if (DatosRemitos.CDSRtoCabIDFACTURA.AsString='') or
         (DatosRemitos.CDSRtoCabIDFACTURA.AsInteger=0) 
       then
         begin
           if ListaTareas.Visible=True then
             ListaTareas.Visible:=False;
           if (DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString<>'' ) and
              (DatosRemitos.CDSRtoCabNOTAVTA_ID.AsString<>'0')  then
             IF MessageDlg('Hay una Nota de Venta asociada al Rto' + #13 +
                           'restaura para volver ser usada...?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                     THEN  RestaurarNV.Execute;

           if (DatosRemitos.CDSRtoCabPRESUPUESTO_ID.AsString<>'' ) and
              (DatosRemitos.CDSRtoCabPRESUPUESTO_ID.AsString<>'0')  then
             IF MessageDlg('Hay un Presupuesto asociado al Rto' + #13 +
                           'restaura para volver ser usado...?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                     THEN  RestaurarPres.Execute;

           if (DatosRemitos.CDSRtoCabNOTAPEDIDO_ID.AsString<>'' ) and
              (DatosRemitos.CDSRtoCabNOTAPEDIDO_ID.AsString<>'0')  then
             IF MessageDlg('Hay una Nota de pedido asociada al Rto' + #13 +
                           'restaura para volver ser usada...?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                     THEN  RestaurarPres.Execute;

           Pasar_A_Papelera.Execute;

           // **** Ingreso en el Log File  **************
           DMMain_FD.LogFileFD(1,4,'Borrado Rto.Venta(FormRtos): '+ DatosRemitos.CDSRtoCabNROCPBTE.Value+'('+DatosRemitos.CDSRtoCabID_RTO.AsString+')'+
                                   ' Cliente: '+ DatosRemitos.CDSRtoCabNOMBRE.Value+
                                   ' Importe: '+ FormatFloat('0.00',DatosRemitos.CDSRtoCabTOTAL.asfloat),
                                   'RTOVTA');
          // ******************************************

           inherited;
           if Anulado<>nil Then FreeAndNil(Anulado);

         end
       else
         ShowMessage('Rto.Facturado...no se puede hacer esta operación.... !!!');
    end
  else
    ShowMessage('No está Autorizado hacer esta operación.... consulte con el Administrador');


end;

procedure TFormRemitos.btnSalirColumnaClick(Sender: TObject);
begin
  inherited;
  pnColumnas.Visible:=False;
end;

procedure TFormRemitos.btTareasMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
var i:integer;
s:String;
begin
  inherited;
  s:=  '            Tareas            '+#13;
  s:=s+'------------------------------'+#13;
  for i := 0 to ListaTareas.Count-1 do
  begin
    if ListaTareas.Checked[i] then
      s:=s+IntToStr(i+1)+' - '+ ListaTareas.Items.Strings[i]+#13;
  end;
  btTareas.Hint:=s;
end;

procedure TFormRemitos.DatosClienteExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.ModificarDatosCliente(DSBase);
end;

procedure TFormRemitos.FormShow(Sender: TObject);
var sDirectorio:string;
begin
  inherited;
 // RemitoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_Remito.ini');
//  //*************************************************************
//  chPreview.Checked    := RemitoIni.ReadBool('Modo', 'Modo', False);
//  ListaRto             := RemitoIni.ReadString('Lista', 'Lista','');
//  chLista.Checked      := RemitoIni.ReadBool('ListaDef', 'ListaDef', False);
//  DiscriminaIva        := RemitoIni.ReadString('Iva', 'Iva', 'N');
//
//  RemitoIni.Free;

  sDirectorio      := DMMain_FD.MainPath+'Papelera_RE';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=11
  else
    Papelera.ImageIndex:=10;


  if (FormRemitos<>nil) and
     (FormRemitos.Visible=True) and (btNuevo.Enabled) Then
     btNuevo.SetFocus;
//  if (FormRemitos<>nil) then
//    FormRemitos.DiscriminaIva:='S';
  if (FormRemitos<>nil) and (FormRemitos.Visible=True) then
    if lbEstadoIVA.Visible Then
      begin
        if FormRemitos.DiscriminaIva='N' then
          lbEstadoIVA.Caption:='Importes C/IVA'
        else
         lbEstadoIVA.Caption:='Importes S/IVA';
      end;
end;

procedure TFormRemitos.frRemitosPrintReport(Sender: TObject);
begin
  inherited;
  Impresa:=True;
end;

procedure TFormRemitos.GenerarMovStockExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and
     (DSBase.State=dsBrowse) and (DSBase.DataSet.FieldByName('Devolucion').AsString<>'S')
  then
    begin
      DMMain_FD.LogFileFD(1,2,'Generacion de Movimientos de Stock, desde Rto. de Forma Manual Nro Rto:'+DSBase.DataSet.FieldByName('NROCPBTE').AsString+
                              ' ('+DSBase.DataSet.FieldByName('ID_RTO').AsString+')','MOVSTOCKRTO');

      DatosRemitos.QActualizaModifStock.Close;
      DatosRemitos.QActualizaModifStock.ParamByName('Estado').Value := 'N';
      DatosRemitos.QActualizaModifStock.ParamByName('Id_rto').Value := DSBase.DataSet.FieldByName('id_rto').Value;
      DatosRemitos.QActualizaModifStock.Execute;
      DatosRemitos.QActualizaModifStock.Close;
      Recuperar.Execute;
    end;


end;

procedure TFormRemitos.RecuperarExecute(Sender: TObject);
var i:Integer;
S:String;
TotalGral,NetoTotal:Real;
sDirectorio:String;
begin
  inherited;
  DatosRemitos.CDSRtoDet.IndexFieldNames:='';
  chOrdenarDetalle.Checked:=False;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_RE';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=12
  else
    Papelera.ImageIndex:=11;


   sbEstado.Panels[0].Text := '';
   sbEstado.Panels[1].Text := '';
   ListaTareas.Visible     := False;
   DatosRemitos.CDSRtoCab.close;
   DatosRemitos.CDSRtoCab.Params.ParamByName('TipoCpbte').Value :=TipoCpbte;
   DatosRemitos.CDSRtoCab.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
   DatosRemitos.CDSRtoCab.Open;

   if Not(DatosRemitos.CDSRtoCab.IsEmpty) then
     condicion:=' and tipocpbte ='+AnsiQuotedStr(DatosRemitos.CDSRtoCabTIPOCPBTE.AsString,'''') +
                ' and clasecpbte='+AnsiQuotedStr(DatosRemitos.CDSRtoCabCLASECPBTE.AsString,'''');

  
   DatosRemitos.CDSRtoDet.Close;
   DatosRemitos.CDSRtoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   DatosRemitos.CDSRtoDet.Open;

   DatosRemitos.CDSImpuestos.Close;
   DatosRemitos.CDSImpuestos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   DatosRemitos.CDSImpuestos.Open;

   DatosRemitos.CDSRtoTroqueles.Close;
   DatosRemitos.CDSRtoTroqueles.Params.ParamByName('id').Value:=StrToInt(DatoNew);
   DatosRemitos.CDSRtoTroqueles.Open;

   DatosRemitos.CDSSucursal.Close;
   DatosRemitos.CDSSucursal.Params.ParamByName('codigo').Value:= DatosRemitos.CDSRtoCabSUCURSAL.Value;
   DatosRemitos.CDSSucursal.Open;

   DatosRemitos.CDSRtoLote.Close;
   DatosRemitos.CDSRtoLote.MasterSource := nil;
   DatosRemitos.CDSRtoLote.MasterFields := '';

   DatosRemitos.CDSRtoLote.Params.ParamByName('id').Value     := StrToInt(DatoNew);//DatosVentas.CDSVentaDetID.AsInteger;//
   DatosRemitos.CDSRtoLote.Open;

   DatosRemitos.CDSRtoLote.MasterSource := DatosRemitos.DSRtoDet;
   DatosRemitos.CDSRtoLote.MasterFields := 'ID';

   TotalGral := DatosRemitos.CDSRtoCabTOTAL.AsFloat - DatosRemitos.CDSRtoCabNETOEXEN2.AsFloat;
   NetoTotal := DatosRemitos.CDSRtoCabNETOGRAV2.AsFloat;// + DatosVentas.CDSVentaCabNETOEXEN2.AsFloat;

   if NetoTotal>0 Then
     DatosRemitos.Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
   else
     DatosRemitos.Var_TasaIva:=0;

   DatosRemitos.HabilitarLabel;

   if (DatosRemitos.CDSRtoCabFECHA_DEVOLUCION_ALQ<>nil) and (DatosRemitos.CDSRtoCabFECHA_DEVOLUCION_ALQ.AsDateTime < Now) then
     dbFechaDevol.Font.Color  :=  clRed
   else
     dbFechaDevol.Font.Color  :=  clBlue;

   if DatosRemitos.CDSRtoCabANULADO.Value='S' Then
     begin
       if Anulado=nil Then
         Anulado:=TPanel.Create(Self);
       Anulado.Parent     := Self;
       Anulado.Caption    := 'ANULADO';
       Anulado.Top        := Trunc(FormRemitos.Height*0.5)-20;
       Anulado.Left       := Trunc(FormRemitos.Width*0.5)-100;
       Anulado.Height     := 40;
       Anulado.Width      := 200;
       Anulado.Font.Size  := 30;
       Anulado.Font.Color := clRed;
       Anulado.Font.Name  := 'Arial';
       Anulado.Font.Style := [fsBold];
       Anulado.Visible    := True;
       ANulado.BringToFront;
     end
   else
     begin
       if (DatosRemitos.CDSRtoCabDEVOLUCION.AsString='D')  then
         begin
           dbFechaDevol.Font.Color  :=  clGreen;
           if Anulado=nil Then
             Anulado := TPanel.Create(Self);
           Anulado.Parent     := Self;
           Anulado.Caption    := 'DEVUELTO';
           Anulado.Top        := Trunc(FormRemitos.Height*0.5)-20;
           Anulado.Left       := Trunc(FormRemitos.Width*0.5)-120;
           Anulado.Height     := 40;
           Anulado.Width      := 220;
           Anulado.Font.Size  := 30;
           Anulado.Font.Color := clGreen;
           Anulado.Font.Name  := 'Arial';
           Anulado.Font.Style := [fsBold];
           Anulado.Visible    := True;
           ANulado.BringToFront;
         end
       else
         if Anulado<>nil Then
           begin
             FreeAndNil(Anulado);
           end;
      end;

   if (DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'') and
      (DatosRemitos.CDSRtoCabIDFACTURA.AsInteger<>0) and
      (DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'-1')Then
     begin
       sbEstado.Panels[0].Text:='Rto Facturado no se puede Borrar ni modificar.';
       BtAnular.Enabled         :=False;
       btModificar.Enabled      :=false;
       btBorrar.Enabled         :=false;
       DBGrillaDetalle.ReadOnly :=True;
       DBGrillaIva.ReadOnly     :=True;
     end;
   if (DatosRemitos.CDSRtoCabIMPRESO.AsString='S') Then
     begin
       sbEstado.Panels[0].Text  :='Rto Impreso.';
       btModificar.Enabled      :=false;
       DBGrillaDetalle.ReadOnly :=True;
       DBGrillaIva.ReadOnly     :=True;
     end;


   if DatosRemitos.CDSRtoCabANULADO.AsString='S' Then
     begin
       sbEstado.Panels[0].Text  :='Rto Anulado.';
       BtAnular.Enabled         :=False;
       btModificar.Enabled      :=false;
       btBorrar.Enabled         :=false;
       DBGrillaDetalle.ReadOnly :=True;
       DBGrillaIva.ReadOnly     :=True;
     end
   else
     if DatosRemitos.CDSRtoCabANULADO.AsString='*' Then
       begin
         sbEstado.Panels[0].Text:=sbEstado.Panels[0].Text+' Rto No Facturable';
         BtAnular.Enabled         :=False;
         btModificar.Enabled      :=false;
         btBorrar.Enabled         :=false;
         DBGrillaDetalle.ReadOnly :=True;
         DBGrillaIva.ReadOnly     :=True;
       end;

   DatoNew:=''+DatoNew+'';
   DatosRemitos.QComprob.Close;
   DatosRemitos.QComprob.ParamByName('id').Value :=DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Value;
   DatosRemitos.QComprob.ParamByName('Suc').Value:=DatosRemitos.CDSRtoCabSUCURSAL.Value;
   DatosRemitos.QComprob.Open;
   FormRemitos.Calcula_iva_articulo := DatosRemitos.QComprobCALCULA_IVA_ARTICULOS.Value='S';
   DatosRemitos.Renglones           := DatosRemitos.QComprobLINEAS_DETALLE.Value;
   DatosRemitos.QComprob.Close;
   FormRemitos.Caption:='Remitos -- '+DatosRemitos.CDSRtoCabFECHA_HORA.AsString+'//'+Copy(DatosRemitos.CDSRtoCabUSUARIO.Value,1,15);
   s:=DatosRemitos.CDSRtoCabTAREAS.AsString;
   if s='' then s:='0000000000';

   Tareas.Enabled:=False;

   if ListaTareas.Count>0 then
     BEGIN
       for I := 0 to ListaTareas.Count - 1 do
         begin
           ListaTareas.Checked[i]:= (s[i+1]='1');
           if (s[i+1]='1') then Tareas.Enabled:=True;
         end;
     END;
   sbEstado.Panels[1].Text    := 'N.Vta:'+DatosRemitos.CDSRtoCabNOTAVTA_NROCPBTE.Value;
   sbEstado.Panels[2].Text    := 'Pres.:'+DatosRemitos.CDSRtoCabPRESUPUESTO_NROCPBTE.Value;
   lbRtoModificaStock.Visible := DMMain_FD.RtoDescuentaStock;
   if pagTabla.TabVisible then
     MostrarRegistroEnValueList(DBGrillaDetalle.DataSource.DataSet,ValueListEditor1);
end;



procedure TFormRemitos.MostrarRegistroEnValueList(ADataset: TDataSet; AValueList: TValueListEditor);
var
  i: Integer;
begin
  AValueList.Strings.Clear;

  for i := 0 to ADataset.FieldCount - 1 do
  begin
    AValueList.InsertRow(ADataset.Fields[i].FieldName, ADataset.Fields[i].AsString, True);
  end;
end;


procedure TFormRemitos.RecuperaRtoExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. va Recuperar el remito para Facturar...', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosRemitos.spRecuperarRto.Close;
        DatosRemitos.spRecuperarRto.ParamByName('id_rto').ASInteger:=DatosRemitos.CDSRtoCabID_RTO.Value;
        DatosRemitos.spRecuperarRto.ExecProc;
        DatosRemitos.spRecuperarRto.Close;

        DMMain_FD.LogFileFD(0,2,'Se recupera remito para facturar, ('+DatosRemitos.CDSRtoCabID_RTO.AsString+') Nro Cpbte:'+DatosRemitos.CDSRtoCabNROCPBTE.AsString ,'REMITOS');

        DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo hacer el cambio..');
        end;
       DatosRemitos.spRecuperarRto.Close;
    end;
  Recuperar.Execute;
end;

procedure TFormRemitos.RestaurarNPExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. está por hacer una Restauracion de la Nota de Pedido' + #13 +
                'Asociada.....' + #13 +
                'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    THEN
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosRemitos.spRestaurarNP.Close;
    DatosRemitos.spRestaurarNP.ParamByName('id').Value  :=DatosRemitos.CDSRtoCabNOTAVTA_ID.Value;
    DatosRemitos.spRestaurarNP.ParamByName('Tipo').Value:=DatosRemitos.CDSRtoCabTIPOCPBTE.AsString;
    DatosRemitos.spRestaurarNP.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo restaurar la Nota de Pedido...');
    end;
  DatosRemitos.spRestaurarNP.Close;
end;

procedure TFormRemitos.RestaurarNVExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. está por hacer una Restauracion de la Nota de Vta' + #13 +
                'Asociada.....' + #13 +
                'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    THEN
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosRemitos.spRestaurarNV.Close;
    DatosRemitos.spRestaurarNV.ParamByName('id').Value:=DatosRemitos.CDSRtoCabNOTAVTA_ID.Value;
    DatosRemitos.spRestaurarNV.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo restaurar la Nota de Vta...');
    end;
  DatosRemitos.spRestaurarNV.Close;
end;

procedure TFormRemitos.RestaurarPresExecute(Sender: TObject);
begin
  inherited;
  IF MessageDlg('Ud. está por hacer una Restauracion del Presupuesto' + #13 +
                'Asociado.....' + #13 +
                'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
    THEN
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosRemitos.spRestaurarPres.Close;
    DatosRemitos.spRestaurarPres.ParamByName('id').Value:=DatosRemitos.CDSRtoCabNOTAVTA_ID.Value;
    DatosRemitos.spRestaurarPres.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('No se pudo restaurar la Nota de Vta...');
    end;
  DatosRemitos.spRestaurarPres.Close;
end;

procedure TFormRemitos.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  Puntero:=DatosRemitos.CDSRtoDet.GetBookmark;
  DatosRemitos.CDSRtoDet.First;
  DatosRemitos.CDSRtoDet.DisableControls;
  while Not(DatosRemitos.CDSRtoDet.Eof) DO
    begin
      Puntero2:=DatosRemitos.CDSRtoDet.GetBookmark;
      DatosRemitos.CDSRtoDet.edit;

      DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor,  DatosRemitos.CDSRtoCabLISTAPRECIO.AsInteger,DatosRemitos.CDSRtoCabSUCURSAL.AsInteger,DatosRemitos.CDSRtoCabDEPOSITO.AsInteger,
                                    DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString,DatosRemitos.CDSRtoCabCODIGO.AsString, DatosRemitos.CDSRtoCabTIPOCPBTE.AsString,
                                    DatosRemitos.CDSRtoDetCOTIZACION.AsFloat, DatosRemitos.CDSRtoDetCOTIZACION.AsFloat,
                                    Gravado,
                                    Exento,
                                    Total,
                                    Iva,
                                    Margen,
                                    Dscto,PFinal);

      DatosRemitos.CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
      DatosRemitos.CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
      DatosRemitos.CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;
      DatosRemitos.CDSRtoDetIVA_UNITARIO.AsFloat    :=Iva;
      DatosRemitos.CDSRtoDetMARGEN.ASFloat          :=Margen;
      DatosRemitos.CDSRtoDetDESCUENTO.ASFloat       :=Dscto;

  //    DatosRemitos.CalculaPrecioVta;

      DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCantidad,DatosRemitos.CDSRtoDetCantidad.AsString);
      DatosRemitos.CDSRtoDet.GotoBookmark(Puntero2);
      DatosRemitos.CDSRtoDet.FreeBookmark(Puntero2);
      DatosRemitos.CDSRtoDet.Next;
    end;
  DatosRemitos.CDSRtoDet.GotoBookmark(Puntero);
  DatosRemitos.CDSRtoDet.FreeBookmark(Puntero);
  DatosRemitos.CDSRtoDet.EnableControls;
end;

procedure TFormRemitos.RecalcuoPreciosExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
 Lista:Integer;
begin
  inherited;
  if (dbcLista.KeyValue<>Null) and (Trim(dbcLista.Text)<>'') Then
    Lista:=dbcLista.KeyValue
  else
    Lista:=DMMain_FD.ListaPorDefecto(DatosRemitos.CDSRtoCabSUCURSAL.Value);

  if DatosRemitos.CDSRtoCabIDFACTURA.AsString<>'' then
    Raise Exception.Create('Rto Facturado ... no se puede hacer esta Operacion......');

    begin
      Puntero:=DatosRemitos.CDSRtoDet.GetBookmark;
      DatosRemitos.CDSRtoDet.First;
      DatosRemitos.CDSRtoDet.DisableControls;
      while Not(DatosRemitos.CDSRtoDet.Eof) DO
        begin
          Puntero2:=DatosRemitos.CDSRtoDet.GetBookmark;
          DatosRemitos.CDSRtoDet.edit;
          DMMain_FD.CalculaPrecioVta_FD ('N',DMMain_FD.IdListaProveedor, Lista,DatosRemitos.CDSRtoCabSUCURSAL.AsInteger,DatosRemitos.CDSRtoCabDEPOSITO.AsInteger,
                                          DatosRemitos.CDSRtoDetCODIGOARTICULO.AsString,DatosRemitos.CDSRtoCabCODIGO.AsString, DatosRemitos.CDSRtoCabTIPOCPBTE.AsString,
                                          DatosRemitos.CDSRtoDetCOTIZACION.AsFloat, DatosRemitos.CDSRtoDetCOTIZACION.AsFloat,
                                          Gravado,
                                          Exento,
                                          Total,
                                          Iva,
                                          Margen,
                                          Dscto,PFinal);

          if (Total>0) and (Total>=DatosRemitos.CDSRtoDetUNITARIO_TOTAL.AsFloat)  then
            begin
              DatosRemitos.CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
              DatosRemitos.CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
              DatosRemitos.CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;
              DatosRemitos.CDSRtoDetIVA_UNITARIO.AsFloat    :=Iva;
              DatosRemitos.CDSRtoDetMARGEN.ASFloat          :=Margen;
              DatosRemitos.CDSRtoDetDESCUENTO.ASFloat       :=Dscto;
            end;

     //     DatosVentas.CalculaPrecioVta;
          DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCantidad,DatosRemitos.CDSRtoDetCantidad.AsString);
          DatosRemitos.CDSRtoDet.GotoBookmark(Puntero2);
          DatosRemitos.CDSRtoDet.FreeBookmark(Puntero2);
          DatosRemitos.CDSRtoDet.Next;
        end;
      DatosRemitos.CDSRtoDet.GotoBookmark(Puntero);
      DatosRemitos.CDSRtoDet.FreeBookmark(Puntero);
      DatosRemitos.CDSRtoDet.EnableControls;
    end;

end;

procedure TFormRemitos.dbcListaClick(Sender: TObject);
begin
  inherited;
  if (dbcLista.KeyValue<>Null) Then
    begin
      if (FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsInteger>-1) Then
        DatosRemitos.CDSRtoCabCondicionVtaSetText(DatosRemitos.CDSRtoCabCONDICIONVTA,FormRemitos.dbcLista.ListSource.DataSet.fieldByName('F_Pago').AsString);
      Recalcular.Execute;
      if (DatosRemitos.CDSRtoCabCON_GTIA_EXTENDIDA.Value='S') then
        DatosRemitos.ReCalculaGtia(DatosRemitos.ArticuloGtia,DatosRemitos.CDSRtoCabCODIGO.AsString);
    end;
end;

procedure TFormRemitos.dbcListaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosRemitos.CDSRtoCabLISTAPRECIO.Clear;
      Recalcular.Execute;
    end;
end;

procedure TFormRemitos.dbcMonedaClick(Sender: TObject);
begin
  inherited;
  DBGrillaDetalle.Refresh;
end;

procedure TFormRemitos.dbcTransporteClick(Sender: TObject);
var Aux:String;
begin
  inherited;
  Aux:= dbcTransporte.Text;
  if Trim(Aux)='' then  Aux:='Sin Transporte';
  DMMain_FD.LogFileFD(1,2,'Cambio de Transporte....(Enter) Nuevo: '+Aux ,'REMITOS');
end;

procedure TFormRemitos.dbcTransporteEnter(Sender: TObject);
var AUx:String;
begin
  inherited;
  Aux:= dbcTransporte.Text;
  if Trim(Aux)='' then  Aux:='Sin Transporte';
  DMMain_FD.LogFileFD(1,2,'Cambio de Transporte....(Exit)  Actual: '+Aux ,'REMITOS');
end;

procedure TFormRemitos.dbcTransporteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      DMMain_FD.LogFileFD(1,2,'Borrado de Transporte....Actual:'+dbcTransporte.Text ,'REMITOS');
      if (Key=VK_CLEAR) or (key=VK_BACK) then
        begin
          DMMain_FD.LogFileFD(1,2,'Borrado de Transporte....Actual:'+dbcTransporte.Text ,'REMITOS');
          DSBase.DataSet.FieldByName('id_transporte').Clear;
        end;
    end;

end;

procedure TFormRemitos.dbeDetAdicionalKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#27 then
    begin
      Key:=#0;
      pnDetalleAdicional.Visible:=False;
      DBGrillaDetalle.SetFocus;
    end;
end;

procedure TFormRemitos.dbgDetalleLotesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROLA_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];
  if gdSelected in State Then
    begin
      dbgDetalleLotes.Canvas.Brush.Color:=clAqua;
    end;

  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRemitos.DBGrillaDetalleDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  if DSBase.DataSet.State<>dsBrowse then
    begin
      if ((Source as TJvDBGrid).Name='dbgStock')  Then
        Accept:=True
      else
        Accept:=False;
    end;
end;

procedure TFormRemitos.DBGrillaDetalleDblClick(Sender: TObject);
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

procedure TFormRemitos.DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  if (DatosRemitos.CDSRtoCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosRemitos.CDSRtoDetCodigoArticuloSetText(DatosRemitos.CDSRtoDetCodigoArticulo, (Source as TJvDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosRemitos.CDSRtoDetCantidadSetText(DatosRemitos.CDSRtoDetCantidad,'1');
      DatosRemitos.CDSRtoDetUnitario_TotalSetText(DatosRemitos.CDSRtoDetUnitario_Total,(Source as TJvDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
      DatosRemitos.CDSRtoDet.Append;
    end;
end;

procedure TFormRemitos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (DMMain_FD.UsuarioAdministrador=True) Then
    Borrar.Execute;

  if (Shift=[ssShift,ssCtrl]) and (DSBase.State=dsBrowse) and (Not(DatosRemitos.cdsRtoDet.IsEmpty))	then
    DBGrillaDetalle.DragMode:=dmAutomatic
  else
   DBGrillaDetalle.DragMode:=dmManual;
end;

procedure TFormRemitos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key=#27) and (ActiveControl is TDBMemo) then
    begin
      Key:=#0;
      pnDetalleAdicional.Visible:=False;
    end;
  inherited;
end;

procedure TFormRemitos.FormResize(Sender: TObject);
begin
  inherited;
  if FormRemitos<>nil then
    if FormRemitos.Width<>945 then
      FormRemitos.Width:=945;

end;

procedure TFormRemitos.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  DatosRemitos.QComprob.Close;
  DatosRemitos.QComprob.ParamByName('id').Value  := DatosRemitos.CDSRtoCabID_TIPOCOMPROBANTE.Value;
  DatosRemitos.QComprob.ParamByName('suc').Value := DatosRemitos.CDSRtoCabSUCURSAL.Value;
  DatosRemitos.QComprob.Open;

  frRemitos.PrintOptions.Printer:=PrNomCpbte;
  frRemitos.SelectPrinter;

  frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRemitos.QComprobREPORTE.AsString);
  frRemitos.PrintOptions.Copies :=DatosRemitos.QComprobCOPIAS.Value;

  DatosRemitos.QComprob.Close;

  frRemitos.PrepareReport;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\Remito_'+DatosRemitos.CDSRtoCabNROCPBTE.AsString+'.pdf';
  frRemitos.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog    := True;

  if DatosRemitos.CorreoDestino='' Then
    DatosRemitos.CorreoDestino := DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('Codigo').AsString);

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.edDireccion.Text    := DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('CODIGO').AsString);
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := DatosRemitos.CDSRtoCabNOMBRE.AsString;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.CorreoDestino       := DatosRemitos.CorreoDestino;
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('CODIGO').AsString);
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Remito - '+ DatosRemitos.CDSRtoCabLETRARTO.AsString+
                                    '-'+ DatosRemitos.CDSRtoCabSUCRTO.AsString+
                                    '-'+ DatosRemitos.CDSRtoCabNUMERORTO.AsString+
                                    ' del '+ FormatDateTime('dd-mm-yy',DatosRemitos.CDSRtoCabFECHAVTA.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Remito_'+DatosRemitos.CDSRtoCabNROCPBTE.AsString+'.pdf');
  FormCorreo.Show;
        //FormCorreo.Close;

end;

procedure TFormRemitos.ExpresarUnidadesenEnteros1Click(Sender: TObject);
begin
  inherited;
  ExpresarUnidadesenEnteros1.Checked:= not(ExpresarUnidadesenEnteros1.Checked);
end;

procedure TFormRemitos.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if (DatosRemitos.CDSrtoDetUnitario_Total.AsFloat<DatosRemitos.CDSRtoDetCosto_Total.AsFloat) Then
    begin
      if (gdFocused in State) then
        begin
          DBGrillaDetalle.canvas.brush.color := clBlack;
        end
      else
        begin
          DBGrillaDetalle.canvas.brush.color := clPaleRed;
       end;
    end;
    //Esta línea es nueva
  DBGrillaDetalle.Canvas.Font.Style:=[];
  if (DatosRemitos.CDSRtoDetMargen.AsFloat<MargenUtilidad) and
     (DatosRemitos.CDSRtoDetCodigoArticulo.AsString<>'') and
     (DatosRemitos.CDSRtoDetMargen.AsFloat<>0) and
     (DatosRemitos.CDSRtoDetMargen.AsString<>'') then
    DBGrillaDetalle.Canvas.Font.Style:=[fsBold];

    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

end.
