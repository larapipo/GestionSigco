unit UTiketVta;
{$D+}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresIngreso, StdCtrls, Grids, DBGrids, ExtCtrls,
  ComCtrls,   Mask, Math,  Db,   ActnList,IniFiles,Librerias,System.Variants,
  Buttons, ToolWin, frxClass,  frxDBSet, ImgList, JvComponentBase, 
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, JvExMask,
  JvToolEdit, FMTBcd, SqlExpr, DBXCommon, GridClickPatch, Menus, DataExport, DataToXLS,
  DBClient, JvAppStorage, JvAppIniStorage, System.Actions, Vcl.DBCtrls,
  CompBuscador,System.StrUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client,UNroCuit_Doc,SystelConn, dxGDIPlusClasses, frxExportBaseDialog, frxExportPDF,
  System.ImageList, Vcl.Printers, JvArrowButton, JvExDBGrids, JvDBGrid,
  frCoreClasses;

type
  TFormTicketVta = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText1: TDBText;
    dbtMuestraComprobante: TDBText;
    DBText3: TDBText;
    spClienteModif: TSpeedButton;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeMuestraSucursal: TDBEdit;
    dbeMuestraVendedor: TDBEdit;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Label4: TLabel;
    DBGrillaDetalle: TDBGrid;
    Panel3: TPanel;
    DBCheckBox2: TDBCheckBox;
    dbeDscto: TDBEdit;
    PagValores: TTabSheet;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    Panel2: TPanel;
    DBText10: TDBText;
    Label5: TLabel;
    BuscarArticulo: TAction;
    BuscarSucursal: TAction;
    BuscadorVendedor: TAction;
    BuscarCliente: TAction;
    BuscarTipoCpbte: TAction;
    Imprimir: TAction;
    frDBcabecera: TfrxDBDataset;
    frDBDetalles: TfrxDBDataset;
    frDBImpuestos: TfrxDBDataset;
    RecalcularTodo: TAction;
    ClonarFc: TAction;
    CalcularRecargosTC: TAction;
    CancelarRecargoTC: TAction;
    Recalcular: TAction;
    BtAnular: TSpeedButton;
    ToolButton1: TToolButton;
    Anular: TAction;
    dbtCLASECPBTE: TDBText;
    frFactura: TfrxReport;
    dbeFechaVta: TJvDBDateEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    RxCCodigo: TJvDBComboEdit;
    chbPreview: TCheckBox;
    chbPregunta: TCheckBox;
    CambiarNro: TAction;
    DesmarcarImpresa: TAction;
    PopupMenu1: TPopupMenu;
    CambiarNro1: TMenuItem;
    ClonarFc1: TMenuItem;
    DesmarcarImpresa1: TMenuItem;
    Recalcular1: TMenuItem;
    RecalcularTodo1: TMenuItem;
    spMenu: TSpeedButton;
    SaveDialog1: TSaveDialog;
    DataToXLS1: TDataToXLS;
    exportarXls: TAction;
    TransformarTk: TAction;
    ransformarTk1: TMenuItem;
    N1: TMenuItem;
    HacerNC1: TMenuItem;
    frDBCajaMov: TfrxDBDataset;
    frDBEfectivo: TfrxDBDataset;
    frDBTC: TfrxDBDataset;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBEdit1: TDBEdit;
    N2: TMenuItem;
    MostrarDesctenDetalle1: TMenuItem;
    DBEdit2: TDBEdit;
    RecalculoSuma00: TAction;
    N3: TMenuItem;
    RecalculoSuma001: TMenuItem;
    DBText2: TDBText;
    DBText7: TDBText;
    Freezar: TAction;
    LeerFacturaFreezada: TAction;
    N4: TMenuItem;
    FreezarComprobante1: TMenuItem;
    LeerFacturaFreezada1: TMenuItem;
    DBText8: TDBText;
    Label1: TLabel;
    DuplicarCpbte: TAction;
    DBEdit3: TDBEdit;
    DBText9: TDBText;
    DesAnular: TAction;
    N5: TMenuItem;
    Desanular1: TMenuItem;
    pnIva: TPanel;
    Label6: TLabel;
    lbIva: TLabel;
    Label3: TLabel;
    DBText11: TDBText;
    spProduccion: TSpeedButton;
    EditarProduccion: TAction;
    spNCredito: TSpeedButton;
    CambiarCliente: TAction;
    CambiarCliente1: TMenuItem;
    PagLotes: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    pnLote: TPanel;
    JvDBComboEdit1: TJvDBComboEdit;
    Panel4: TPanel;
    DBEdit5: TDBEdit;
    dbeCantidadLote: TDBEdit;
    DBEdit4: TDBEdit;
    BuscarLote: TAction;
    frDBLotes: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBTx: TfrxDBDataset;
    frDBChComp: TfrxDBDataset;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    PopupMenu2: TPopupMenu;
    VerCodigoALternativo1: TMenuItem;
    ToolBar2: TToolBar;
    MainMenu1: TMainMenu;
    Otros1: TMenuItem;
    RevisionValoresIng: TAction;
    RevisiondeValoresIngresados1: TMenuItem;
    Fiscalizar: TAction;
    spFiscalizar: TSpeedButton;
    DBText12: TDBText;
    frDBEmpresa: TfrxDBDataset;
    BuscarPorReferencia: TAction;
    DuplicarCpbte1: TMenuItem;
    BorrarCAE: TAction;
    Borrar2: TMenuItem;
    CambiarCUIT: TAction;
    CambiarCUITDocum1: TMenuItem;
    pagCtaOrden: TTabSheet;
    ceProveedor: TJvDBComboEdit;
    dbeProveedor: TDBEdit;
    dbgConsignaciones: TDBGrid;
    BuscaProveedor: TAction;
    dbchCtayOrden: TDBCheckBox;
    BuscarRecepcionDetalle: TAction;
    ComBuscadorRecepciones: TComBuscador;
    DBText13: TDBText;
    SaltearDetalle: TMenuItem;
    N6: TMenuItem;
    ActivarDialogoValores1: TMenuItem;
    DBText14: TDBText;
    ComBuscadorLote: TComBuscador;
    ConectarBalanza: TAction;
    LeerPeso: TAction;
    N7: TMenuItem;
    LeerPeso1: TMenuItem;
    imBalanza: TImage;
    CambiarClase: TAction;
    CambiarClase1: TMenuItem;
    Pasar_a_Papelera: TAction;
    N8: TMenuItem;
    PasaraPapelera1: TMenuItem;
    Papelera: TAction;
    spPapelera: TSpeedButton;
    pnTotal: TPanel;
    Label7: TLabel;
    dbtTotal: TDBText;
    dbcLista: TDBLookupComboBox;
    CopiarDetalle: TAction;
    shPP: TShape;
    PegarDetalle: TAction;
    N9: TMenuItem;
    CopiarDetalle1: TMenuItem;
    PegarDetalle1: TMenuItem;
    AplicaLibroIva: TAction;
    AplicaLibroIva1: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    RxLabel1: TLabel;
    RxLabel5: TLabel;
    RxLabel7: TLabel;
    RxLabel8: TLabel;
    RxLabel2: TLabel;
    RxLabel3: TLabel;
    JvLabel1: TLabel;
    JvLabel2: TLabel;
    RxLabel11: TLabel;
    JvLabel3: TLabel;
    JvLabel4: TLabel;
    JvLabel8: TLabel;
    JvLabel10: TLabel;
    JvLabel11: TLabel;
    JvLabel9: TLabel;
    Label2: TLabel;
    pcConfig: TTabSheet;
    VerNotaCredito: TAction;
    pnNC: TPanel;
    DBText15: TDBText;
    DBText16: TDBText;
    HacerNC_2: TAction;
    btNuevoCliente: TSpeedButton;
    AgregarCliente: TAction;
    DBImage1: TDBImage;
    N10: TMenuItem;
    IniciarEnFecha1: TMenuItem;
    btImprimir: TJvArrowButton;
    PopupMenuImpresion: TPopupMenu;
    ImprimirTkCambio: TMenuItem;
    PrintTkCambio: TAction;
    ScrollBox1: TScrollBox;
    grSector1: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbPrinter1: TComboBox;
    eNombre1: TEdit;
    eSubrubros1: TEdit;
    chActivo1: TCheckBox;
    grSector2: TGroupBox;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    cbPrinter2: TComboBox;
    eNombre2: TEdit;
    eSubrubros2: TEdit;
    chActivo2: TCheckBox;
    grSector3: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    cbPrinter3: TComboBox;
    eNombre3: TEdit;
    eSubrubros3: TEdit;
    chActivo3: TCheckBox;
    grSector4: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    cbPrinter4: TComboBox;
    eNombre4: TEdit;
    eSubrubros4: TEdit;
    chActivo4: TCheckBox;
    IngresarMovCaja: TAction;
    N11: TMenuItem;
    IngresarMovdeCaja1: TMenuItem;
    frDBSucursal: TfrxDBDataset;
    ReHacerQr: TAction;
    ReHacerQr1: TMenuItem;
    pagData: TTabSheet;
    DBGrid1: TDBGrid;
    dbgDatos: TDBGrid;
    DBGrid3: TDBGrid;
    N12: TMenuItem;
    CopiaralPortaPapelesdeWindows1: TMenuItem;
    ModificaTotal: TMenuItem;
    PopupMenu3: TPopupMenu;
    Splitter2: TSplitter;
    ExportarPortaPapeles1: TMenuItem;
    DBText17: TDBText;
    pnPercep: TPanel;
    Label20: TLabel;
    lbPercepcionIVA: TLabel;
    frDBPercepcionIVA: TfrxDBDataset;
    MarcarComoImpresaalDuplicarOpcion1: TMenuItem;
    CambiarDeposito: TAction;
    N13: TMenuItem;
    CambiarDeposito1: TMenuItem;
    pnPrecios: TPanel;
    dbgPrecios: TJvDBGrid;
    ModificarDatosCabecera: TAction;
    SpeedButton1: TSpeedButton;
    CalculaIvaDet: TAction;
    CalculaIvaDet1: TMenuItem;
    pagConfiguracionFRDb: TTabSheet;
    sgNombreFR: TStringGrid;
    btGuardarArchivo: TButton;
    frDBDetNovedades: TfrxDBDataset;
    VerNovedadesDet: TAction;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleExit(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscadorVendedorExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBComboEdit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrillaDetalleDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecalcularTodoExecute(Sender: TObject);
    procedure ClonarFcExecute(Sender: TObject);
    procedure CalcularRecargosTCExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure pcDetalleFacturaChange(Sender: TObject);
    procedure CancelarRecargoTCExecute(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure frFacturaPrintReport(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure CambiarNroExecute(Sender: TObject);
    procedure DesmarcarImpresaExecute(Sender: TObject);
    procedure TransformarTkExecute(Sender: TObject);
    procedure spClienteModifClick(Sender: TObject);
  //  procedure HacerNCExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure MostrarDesctenDetalle1Click(Sender: TObject);
    procedure RecalculoSuma00Execute(Sender: TObject);
    procedure FreezarExecute(Sender: TObject);
    procedure LeerFacturaFreezadaExecute(Sender: TObject);
    procedure DuplicarCpbteExecute(Sender: TObject);
    procedure DesAnularExecute(Sender: TObject);
    procedure EditarProduccionExecute(Sender: TObject);
    procedure CambiarClienteExecute(Sender: TObject);
    procedure BuscarLoteExecute(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerCodigoALternativo1Click(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure RevisionValoresIngExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FiscalizarExecute(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure BorrarCAEExecute(Sender: TObject);
    procedure CambiarCUITExecute(Sender: TObject);
    procedure BuscaProveedorExecute(Sender: TObject);
    procedure dbchCtayOrdenClick(Sender: TObject);
    procedure dbgConsignacionesColEnter(Sender: TObject);
    procedure BuscarRecepcionDetalleExecute(Sender: TObject);
    procedure dbgConsignacionesEnter(Sender: TObject);
    procedure ceProveedorButtonClick(Sender: TObject);
    procedure SaltearDetalleClick(Sender: TObject);
    procedure ActivarDialogoValores1Click(Sender: TObject);
    procedure ConectarBalanzaExecute(Sender: TObject);
    procedure LeerPesoExecute(Sender: TObject);
    procedure CambiarClaseExecute(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Pasar_a_PapeleraExecute(Sender: TObject);
    procedure PapeleraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure dbcListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure CopiarDetalleExecute(Sender: TObject);
    procedure PegarDetalleExecute(Sender: TObject);
    procedure AplicaLibroIvaExecute(Sender: TObject);
    procedure VerNotaCreditoExecute(Sender: TObject);
    procedure DBText16Click(Sender: TObject);
    procedure IniciaSectores;
    procedure GravaSectores;
    procedure ImprimeSectores;
    procedure HacerNC_2Execute(Sender: TObject);
    procedure AgregarClienteExecute(Sender: TObject);
    procedure dbeFechaVtaExit(Sender: TObject);
    procedure IniciarEnFecha1Click(Sender: TObject);
    procedure ImprimirTkCambioClick(Sender: TObject);
    procedure PrintTkCambioExecute(Sender: TObject);
    procedure IngresarMovCajaExecute(Sender: TObject);
    procedure ReHacerQrExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure CopiaralPortaPapelesdeWindows1Click(Sender: TObject);
    procedure ModificaTotalClick(Sender: TObject);
    procedure ExportarPortaPapeles1Click(Sender: TObject);
    procedure MarcarComoImpresaalDuplicarOpcion1Click(Sender: TObject);
    procedure CambiarDepositoExecute(Sender: TObject);
    procedure ModificarDatosCabeceraExecute(Sender: TObject);
    procedure CalculaIvaDetExecute(Sender: TObject);
    procedure btGuardarArchivoClick(Sender: TObject);
    procedure VerNovedadesDetExecute(Sender: TObject);
  private
    { Private declarations }
     Balanza:tSystelConnect;
    procedure CargarTfrxDBDatasetsEnGrilla;
    procedure GuardarNombresEnArchivo;
    procedure CargarNombresDesdeArchivo;
    procedure AplicarNombresGuardados;

  public
    { Public declarations }
    //Duplicado     : Boolean;

    Generado             : Boolean;
    EstadoIngAutomatio   : String;  // Variable de Control para habilitar y deshabilitar el Ing Automatico
    Proveedor            : String;
    PrefijoDup,
    NumeroDup            : String;
    CodigosSeries        : TStringList;
    Anulado              : Tpanel;
    CpbteNuevo           : Char;
    CajaCerrada          : Boolean; // antes = CajaAbierta
    CajaNro              : Integer;
    Saldo                : Real;
    Id_referencia,id_Old : Integer;
    Copias               : Integer;
    Preveer              : STRING;
    Impresa              : Boolean;
    DuplicarFc           : Boolean;
    ImporteOriginal      : Real;
    Vendedor             : String;
    ItemRedondeo         : String; // LO UTILIZO PARA SABER EL ITEM QUE SE USA PARA AGREGAR AL DETALLE COMO REDONDEO DE LAS TC
    Consignacion         : Boolean;
    SucursalComprobante  : Integer;
    IDComprobante        : Integer;
    ID_Cta_Caja          : Integer;
    Calcula_iva_Articulo,Divide_Iva:Boolean;
    OldLista      :String;
  //  procedure AgregarCabNC;
  //  procedure AgregarDetNC;
    procedure Exportar_Pdf(Direcorio: String);
    PROCEDURE UltimoComprobante;
    procedure IngresarEfectivo(Importe:Extended);
    procedure IngresarTCredito(IDTCredito,ID_FPago,NroCupon,Cuotas:String; Importe: Extended);
    function ControlLotes:Boolean;
  end;

var
  FormTicketVta: TFormTicketVta;

const
  NombreArchivo = 'nombres_datasets.txt';

implementation

uses DMTicket, ComposicionPrecio, UBuscadorCpbte, ULogin,
  UBuscadorArticulos, UBuscadorClientes, DMStoreProcedureForm,
  UCambiaNumeroCpbte, UPasaACC, UDatosClienteCabeceraCpbte, UFactura_2,
  UBuscadorTipoCpbte, USeleccionCajaNC, DMBuscadoresForm, UBuscadorComprobantes,
  UListarFacturasFrezadas, DMVenta, UFacturaProduccion, UCambioClienteFactura,
  URevisionValoresIngreso, UFiscalizacion, UDMain_FD, UBuscarPorNroReferencia,
  UFacturaCtdo_2, UBuscadorProveedor, UProveedor_x_CtaOrden, UIngresoValores,
  UCambiaClaseComprobante, UClaveVerificada, UControlNroRto,URestaurarPapelera,
  UAgregarMovCaja_Efectivo, UStock_2, UCambiaDespositoFc, UNovedadesDetVtas;

{$R *.DFM}


procedure TFormTicketVta.Exportar_Pdf(Direcorio: String);
var DiscrIVA:String;
begin
  DiscrIva                      := FormTicketVta.DiscriminaIva;
  FormTicketVta.DiscriminaIva   := 'S';

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  DatosVentasTicket.QComprob.Close;
  DatosVentasTicket.QComprob.ParamByName('id').AsInteger         := DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.AsInteger;
  DatosVentasTicket.QComprob.ParamByName('suc').AsInteger        := DatosVentasTicket.CDSVentaCabSUCURSAL.AsInteger;
  DatosVentasTicket.QComprob.ParamByName('desglozaIva').AsString :='*';
  DatosVentasTicket.QComprob.Open;

  if FileExists(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasTicket.QComprobREPORTE.AsString) then
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Mail_'+DatosVentasTicket.QComprobREPORTE.AsString)
  else
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentasTicket.QComprobREPORTE.AsString);

  DatosVentasTicket.QComprob.Close;
  frFactura.PrepareReport();
  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.EmbeddedFonts := True;
  frxPDFExport1.FileName      :=(Direcorio+DatosVentasTicket.CDSVentaCabNROCPBTE.AsString+'.pdf');
  frFactura.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;
  DatosVentasTicket.QComprob.Close;
  FormTicketVta.DiscriminaIva  :=DiscrIva;
end;


procedure TFormTicketVta.CargarTfrxDBDatasetsEnGrilla;
var
  i, row: Integer;
begin
  row                  := 1; // Empezamos en la primera fila después del encabezado
  sgNombreFR.RowCount  := 1;  // Reseteamos la grilla para empezar desde la primera fila
  sgNombreFR.Cells[0,0]:='Nombre Original';
  sgNombreFR.Cells[1,0]:='Nombre Nuevo';

  for i := 0 to ComponentCount - 1 do
    begin
      if Components[i] is TfrxDBDataset then
        begin
          sgNombreFR.RowCount      := sgNombreFR.RowCount + 1;
          sgNombreFR.Cells[0, row] := Components[i].Name;
          sgNombreFR.Cells[1, row] := (Components[i] as TfrxDBDataset).UserName;
          Inc(row);  // Pasamos a la siguiente fila
        end;
    end;
end;

procedure TFormTicketVta.GuardarNombresEnArchivo;
var
  Archivo: TextFile;
  i: Integer;
begin
  AssignFile(Archivo, NombreArchivo);
  Rewrite(Archivo);
  try
    for i := 1 to sgNombreFR.RowCount - 1 do
      WriteLn(Archivo, sgNombreFR.Cells[0, i] + '=' + sgNombreFR.Cells[1, i]);
   // ShowMessage('Nombres guardados correctamente.');
  finally
    CloseFile(Archivo);
  end;
end;

procedure TFormTicketVta.CargarNombresDesdeArchivo;
var
  Archivo: TextFile;
  Linea, NombreOriginal, NombreNuevo: string;
  i: Integer;
begin
  if not FileExists(NombreArchivo) then Exit;
  AssignFile(Archivo, NombreArchivo);
  Reset(Archivo);
  try
    // Leer cada línea del archivo y aplicarla a la grilla
    i := 1;
    while not Eof(Archivo) do
      begin
        ReadLn(Archivo, Linea);
        // Separar el nombre original del nuevo nombre
        NombreOriginal := Trim(Copy(Linea, 1, Pos('=', Linea) - 1));
        NombreNuevo    := Trim(Copy(Linea, Pos('=', Linea) + 1, Length(Linea)));
        // Buscar el componente por el nombre original en la grilla
        sgNombreFR.Cells[0, i] := NombreOriginal;
        sgNombreFR.Cells[1, i] := NombreNuevo;
        Inc(i);
      end;
    // Aplicar los nombres modificados a los componentes
    AplicarNombresGuardados;
  finally
    CloseFile(Archivo);
  end;
end;

procedure TFormTicketVta.AplicarNombresGuardados;
var
  i: Integer;
  Dataset: TfrxDBDataset;
begin
  // Recorrer los nombres en la grilla y aplicar los cambios
  for i := 1 to sgNombreFR.RowCount - 1 do
    begin
      // Buscar el componente con el nombre original
      Dataset := TfrxDBDataset(FindComponent(sgNombreFR.Cells[0, i]));
      // Si el componente existe y el nombre es distinto, lo renombramos
      if Assigned(Dataset) and (Dataset.UserName <> sgNombreFR.Cells[1, i]) then
        begin
          if FindComponent(sgNombreFR.Cells[0, i]) = nil then
            begin
              Dataset.UserName := sgNombreFR.Cells[1, i];
              Dataset.Name     := sgNombreFR.Cells[1, i];

            end;
         // else
         //   ShowMessage('Ya existe un componente con el nombre "' + sgNombreFR.Cells[1, i] + '".');
        end;
    end;
end;

function TFormTicketVta.ControlLotes:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
 // DatosVentasTicket.wwCDSVentaDet.DisableControls;
  DatosVentasTicket.CDSVentaDet.First;
  while not(DatosVentasTicket.CDSVentaDet.Eof) and aux=True do
    begin
      if DatosVentasTicket.CDSVentaDetCONTROL_TRAZABILIDAD.Value='S' Then
        begin
          if (Int(DatosVentasTicket.CDSVentaDetCantidad.AsFloat)=Int(DatosVentasTicket.CDSVentaLoteCANTIDAD.AsFloat)) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosVentasTicket.CDSVentaDet.Next;
    end;
 // DatosVentasTicket.wwCDSVentaDet.EnableControls;
  Result:=Aux;
end;

procedure TFormTicketVta.CopiaralPortaPapelesdeWindows1Click(Sender: TObject);
begin
  inherited;
  DMMain_FD.CopiarClipBoard(DBGrillaDetalle);
end;

procedure TFormTicketVta.CopiarDetalleExecute(Sender: TObject);
begin
  inherited;
  if not (DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales')) then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');
  if (Not(DatosVentasTicket.CDSVentaCab.IsEmpty))  Then
    begin
//      DatosVentas.wwCDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
      DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.XML');
//      DatosVentas.wwCDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');
    end
  else
    ShowMessage('No Hay datos para Copiar....');
  shPP.Visible:=True;

end;

procedure TFormTicketVta.dbchCtayOrdenClick(Sender: TObject);
begin
  inherited;
  if (DatosVentasTicket.CDSVentaCab.State in [dsInsert]) then
    begin
      PagCtaOrden.TabVisible :=dbchCtayOrden.Checked;
      if (dbchCtayOrden.Checked) then
        begin
          if Proveedor='' then
            begin
              if Not(Assigned(FormProveedor_x_CtaOrden)) Then
                FormProveedor_x_CtaOrden:= TFormProveedor_x_CtaOrden.Create(Self);
              FormProveedor_x_CtaOrden.ShowModal;
              if (FormProveedor_x_CtaOrden.ModalResult=mrOk ) and
                 (FormProveedor_x_CtaOrden.codigo<>'') then
                Proveedor:=FormProveedor_x_CtaOrden.codigo;
            end;

          if Proveedor<>'' then
            DatosVentasTicket.CDSVentaCabPROVEEDORSetText(DatosVentasTicket.CDSVentaCabPROVEEDOR,Proveedor)
          else
            begin
              dbchCtayOrden.Checked:=False;
              DatosVentasTicket.CDSVentaCabPROVEEDOR.Clear;
              if DatosVentasTicket.CDSVtaDetConsig.RecordCount>0 then
                begin
                  DatosVentasTicket.CDSVtaDetConsig.Close;
                  DatosVentasTicket.CDSVtaDetConsig.Params.ParamByName('id').Clear;
                  DatosVentasTicket.CDSVtaDetConsig.Open;
                end;
            end;
          //*************************************************************
          ArchivoIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'consignacion.ini');
          ArchivoIni.WriteString('proveedor', 'codigo', Proveedor);
          ArchivoIni.Free;
          //*************************************************************
        end
      else
        begin
          dbchCtayOrden.Checked:=False;
          DatosVentasTicket.CDSVentaCabPROVEEDOR.Clear;
          if DatosVentasTicket.CDSVtaDetConsig.RecordCount>0 then
            begin
              DatosVentasTicket.CDSVtaDetConsig.Close;
              DatosVentasTicket.CDSVtaDetConsig.Params.ParamByName('id').Clear;
              DatosVentasTicket.CDSVtaDetConsig.Open;
            end;
        end;
    end;

end;

procedure TFormTicketVta.dbcListaClick(Sender: TObject);
begin
  inherited;
  if dbcLista.KeyValue<>Null Then
    begin
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Tk.de Vta Ctdo. de Lista >>'+ OldLista+
                         ' a lista >> '+ dbcLista.Text +
                         ' en Fc.Nro'+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+
                         DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                         DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' FACTK');

      Recalcular.Execute;
      oldLista:=dbcLista.Text;
    end;
end;

procedure TFormTicketVta.dbcListaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=VK_back) or (Key=VK_delete) Then
    begin
      DatosVentasTicket.CDSVentaCabLISTAPRECIO.Clear;
      DMMain_FD.LogFileFD(1,2,'Modificacion Lista de Precio en Tk.de Vta Ctdo. de Lista >>'+OldLista+
                          ' a lista >> VACIA en Fc.Nro'+' ('+DSBase.DataSet.FieldByName('ID_FC').AsString+') '+
                          DSBase.DataSet.FieldByName('TIPOCPBTE').AsString+'-'+
                          DSBase.DataSet.FieldByName('NROCPBTE').AsString ,' FACVTK');
      oldLista:='0';
      Recalcular.Execute;
    end;
end;

procedure TFormTicketVta.dbeFechaVtaExit(Sender: TObject);
begin
  inherited;
  if (TForm(Self.Owner).Name<>'FormFacturaRemitoAgrupado') and
     (TForm(Self.Owner).Name<>'FormImportacionFacturasVtaGral') and
     (TForm(Self.Owner).Name<>'FormRecibo_2') Then
  DatosVentasTicket.CDSVentaCabFECHAVTASetText(DatosVentasTicket.CDSVentaCabFECHAVTA,dbeFechaVta.Text);
end;

procedure TFormTicketVta.dbgConsignacionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgConsignaciones.SelectedIndex>3 Then
    dbgConsignaciones.SelectedIndex:=3
  else
    if dbgConsignaciones.SelectedIndex<3 Then
      dbgConsignaciones.SelectedIndex:=3;

end;

procedure TFormTicketVta.dbgConsignacionesEnter(Sender: TObject);
begin
  inherited;
  dbgConsignaciones.SelectedIndex:=3;
end;

procedure TFormTicketVta.dbgDetalleLotesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
 if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];
  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTicketVta.ActivarDialogoValores1Click(Sender: TObject);
begin
  inherited;
  ActivarDialogoValores1.Checked:= Not(ActivarDialogoValores1.Checked);
end;

{
procedure TFormTicketVta.AgregarCabNC;
begin
  FormCpbte_2.SucursalPorDefecto :=SucursalComprobante;
  FormCpbte_2.DiscriminaIva :='S';
  DatosVentas.CDSVentaCabSucursalSetText(DatosVentas.CDSVentaCabSucursal,IntToStr(SucursalComprobante));
  DatosVentas.CDSVentaCabCodigoSetText(DatosVentas.CDSVentaCabCodigo,DatosVentasTicket.CDSVentaCabCODIGO.AsString);
  DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
  DatosVentas.CDSVentaCabDepositoSetText(DatosVentas.CDSVentaCabDeposito,IntToStr(DepositoPorDefecto));
  DatosVentas.CDSVentaCabDSTOSetText(DatosVentas.CDSVentaCabDSTO,FormatFloat('0.000',DatosVentasTicket.CDSVentaCabDSTO.AsFLoat));

  DatosVentas.CDSVentaCabANULADO.Value     :='N';
  if Vendedor<>'' then
  
  DatosVentas.CDSVentaCabVENDEDORSetText(DatosVentas.CDSVentaCabVENDEDOR,Vendedor);


//  if MessageDlg('Hacer Nota de Credito Contado..????',mtConfirmation,mbYesNo,0)=mrYes then
//    DatosVentas.CDSVentaCabNC_CONTADO.Value  :='S'
//  else
//    DatosVentas.CDSVentaCabNC_CONTADO.Value  :='N';

  DatosVentas.CDSVentaCabNC_CONTADO.Value  :='S';

  DatosVentas.CDSVentaCabCAJA_POR_DEFECTO.Value := ID_Cta_Caja;

  DatosVentas.CDSVentaCabIMPRESO.Value      :='N';
  DatosVentas.CDSVentaCabOBSERVACION1.Value :='CREDITO SOBRE TK:'+DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
  DatosVentas.CDSVentaCabDSTOSetText(DatosVentas.CDSVentaCabDSTO,FloatToStr(DatosVentasTicket.CDSVentaCabDSTO.AsFloat));
  DatosVentas.CDSVentaCabOBSERVACION2.Value :='';
  DatosVentas.CDSVentaCabCPTE_MANUAL.Value  :='N';

  if (not DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.IsNull) and (DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger>0) then
    DatosVentas.CDSVentaCabASOCIADO_TIPO.Value    := DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;
  DatosVentas.CDSVentaCabASOCIADO_PTOVTA.Value  := DatosVentasTicket.CDSVentaCabSUCFAC.AsInteger;
  DatosVentas.CDSVentaCabASOCIADO_NRO.Value     := DatosVentasTicket.CDSVentaCabNUMEROFAC.AsInteger;
  DatosVentas.CDSVentaCabASOCIADO_CPTEFCH.Value := FormatDateTime('yyyymmdd',DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime);

  DatosVentas.CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    //  FormCpbte_2.DiscriminaIva:='S';
end;
}
{
procedure TFormTicketVta.AgregarDetNC;
Var Precio:Extended;
begin
  DatosVentasTicket.CDSVentaDet.First;
  while Not(DatosVentasTicket.CDSVentaDet.Eof) DO
    begin
      DatosVentas.CDSVentaDet.Append;

      Precio :=DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if DatosVentas.CDSVentaCabDESGLOZAIVA.Value='N' then
        Precio:= DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsFloat+
                 DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat;
      DatosVentas.CDSVentaDetCodigoArticuloSetText(DatosVentas.CDSVentaDetCodigoArticulo,DatosVentasTicket.CDSVentaDetCODIGOARTICULO.AsString);
      DatosVentas.CDSVentaDetCantidadSetText(DatosVentas.CDSVentaDetCANTIDAD,DatosVentasTicket.CDSVentaDetCANTIDAD.AsString);
      DatosVentas.CDSVentaDetUnitario_TotalSetText(DatosVentas.CDSVentaDetUNITARIO_TOTAL,FormatFloat('0.000',Precio));
      DatosVentas.CDSVentaDetDescuentoSetText(DatosVentas.CDSVentaDetDescuento,FormatFloat('0.000',DatosVentasTicket.CDSVentaDetDESCUENTO.AsFloat));
      DatosVentas.CDSVentaDet.Post;
      DatosVentasTicket.CDSVentaDet.Next;
    end;
 end;
}
PROCEDURE TFormTicketVta.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosVentasTicket,DMStoreProcedure, FormTicketVta DO
    BEGIN
      BEGIN
        //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
        IF (CDSVentaCabLETRAFAC.AsString <> '') AND (CDSVentaCabCLASECPBTE.Value <> '') THEN
          BEGIN
            spNumeroCpbte.Close;
            spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSVentaCabLETRAFAC.AsString;
            spNumeroCpbte.ParamByName('Sucursal').Value    := CDSVentaCabSucursal.Value;
            spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSVentaCabCLASECPBTE.Value;
            spNumeroCpbte.ParamByName('TipoComp').Value    := CDSVentaCabTIPOCPBTE.AsString;
            spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
            spNumeroCpbte.ExecProc;
            IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
              BEGIN
                CDSVentaCabNUMEROFAC.Value:='';
                IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                  Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
                ELSE
                  Numero := 1;
                CDSVentaCabSucFacSetText(CDSVentaCabSucFac,IntToStr(Numero));
                IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                  Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
                ELSE
                  Numero := 1;
                CDSVentaCabNumeroFacSetText(CDSVentaCabNumeroFac,IntToStr(Numero));
              END;
            CDSVentaCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
            CDSVentaCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
            CDSVentaCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
            CDSVentaCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
            CDSVentaCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
            Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
            spNumeroCpbte.CLose;
          END;
        CDSVentaCabNroCpbte.AsString := CDSVentaCabLetraFac.AsString + CDSVentaCabSucFac.AsString + CDSVentaCabNumeroFac.AsString;
      END;
    END;
  if DatosVentasTicket.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentasTicket.CDSVentaCabPERCIBE_IB.Value  :='N';
  if DatosVentasTicket.CDSVentaCabINGRESA_LIBRO_IVA.Value='N' Then DatosVentasTicket.CDSVentaCabPERCIBE_IVA.Value :='N';
  if DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='N' then DatosVentasTicket.CDSVentaCabPERCIBE_IVA.AsString    :='N';

END;

procedure TFormTicketVta.VerCodigoALternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoALternativo1.Checked:=Not(VerCodigoALternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormTicketVta.VerNotaCreditoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCpbte_2)) then
    FormCpbte_2:=TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew  :=DSBase.DataSet.FieldByName('MuestraID_NC').AsString;
  FormCpbte_2.TipoCpbte:='NC';
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;
end;

procedure TFormTicketVta.VerNovedadesDetExecute(Sender: TObject);
begin
  inherited;
  if FormNovedadesDetVentas=nil then
    FormNovedadesDetVentas:=TFormNovedadesDetVentas.Create(Self);
  FormNovedadesDetVentas.CDS:= DatosVentasTicket.CDSVtaDetNovedades;
  FormNovedadesDetVentas.ShowModal;
  FreeAndNil(FormNovedadesDetVentas);
  FormNovedadesDetVentas:=nil;

end;

procedure TFormTicketVta.IngresarEfectivo(Importe:Extended);
begin

  with FrameMovValoresIngreso1 do
    begin
      if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
        begin
          QCajaCab.Close;
          QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
          QCajaCab.Open;
          if QCajaCab.Fields[0].AsString='' Then
            Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
          IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
            BEGIN
              ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
              edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
              Id_Caja            := QCajaCabID_CAJA.Value;
              id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
              FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
            end;
          QCajaCab.Close;
        end;
      TipoCpbte      := DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
      TipoOperacion  := 'I';
      ClaseCpbte     := DatosVentasTicket.CDSVentaCabCLASECPBTE.Value;
      NroCpbte       := DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
      IdCpbte        := DatosVentasTicket.CDSVentaCabID_FC.Value;
      FechaOperacion := DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime;
      Origen         := DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value;

      pcDetalleFactura.ActivePageIndex:=1;

      CDSCajaMov.Insert;
      CDSCajaMovHABER.AsFloat            := 0;
      CDSCajaMovDEBE.AsFloat             := Importe;//DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;
      CDSFormaPagoEfec.Close;
      CDSFormaPagoEfec.Open;
      CDSFormaPagoEfec.First;
      CDSCajaMovID_TPAGO.Value           := 1;
//      CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO,CDSFormaPagoEfecID_FPAGO.AsString);
      CDSCajaMovID_FPAGO.Value           := CDSFormaPagoEfecID_FPAGO.Value;

      CDSCajaMovUNIDADES.AsFloat         := Importe;//DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;
      CDSCajaMovCOTIZACION.Value         := CDSFormaPagoEfecCOTIZACION.Value;
      CDSCajaMovCLASE_COMPROB.Value      := ClaseCpbte;
      CDSCajaMovID_CUENTA_CAJA.Value     := id_Cuenta_caja;
      CDSCajaMovMONEDA.Value             := CDSFormaPagoEfecMONEDA.Value;
      CDSFormaPagoEfec.Close;
      CDSMovEfectivo.Insert;
      CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
      CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
      CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
      CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
      CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
      CDSMovEfectivoUNIDADES.AsFloat     := Importe;//CDSCajaMovUNIDADES.Value;
      CDSMovEfectivoIMPORTE.AsFloat      := Importe;//DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;
      CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
      CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
      CDSMovEfectivo.Post;
      pcDetalleFactura.ActivePageIndex:=0;
      QCajaCab.Close;
    end;
end;

procedure TFormTicketVta.IngresarMovCajaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAgregarMovCaja_Efectivo)) then
    FormAgregarMovCaja_Efectivo:=TFormAgregarMovCaja_Efectivo.Create(Self);
  FormAgregarMovCaja_Efectivo.Id_Cpbte      := DSBase.DataSet.FieldByName('ID_FC').Value;
  FormAgregarMovCaja_Efectivo.Fecha         := DSBase.DataSet.FieldByName('FECHAVTA').Value;
  FormAgregarMovCaja_Efectivo.Debe          := DSBase.DataSet.FieldByName('Total').Value;
  FormAgregarMovCaja_Efectivo.TipoCpbte     := DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormAgregarMovCaja_Efectivo.ClaseCpbte    := DSBase.DataSet.FieldByName('Clasecpbte').Value;
  FormAgregarMovCaja_Efectivo.TipoOperacion :='I';
  FormAgregarMovCaja_Efectivo.Haber         := 0;


  FormAgregarMovCaja_Efectivo.ShowModal;
  FreeAndNil(FormAgregarMovCaja_Efectivo);

end;

procedure TFormTicketVta.IngresarTCredito(IDTCredito,ID_FPago,NroCupon,Cuotas:String; Importe: Extended);
begin
  with FrameMovValoresIngreso1 do
    begin
      if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
        begin
          QCajaCab.Close;
          QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
          QCajaCab.Open;
          if QCajaCab.Fields[0].AsString='' Then
            Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
          IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
            BEGIN
              ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
              edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
              Id_Caja            := QCajaCabID_CAJA.Value;
              id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
              FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
            end;
          QCajaCab.Close;
        end;
      TipoCpbte      := DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
      TipoOperacion  := 'I';
      ClaseCpbte     := DatosVentasTicket.CDSVentaCabCLASECPBTE.Value;
      NroCpbte       := DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
      IdCpbte        := DatosVentasTicket.CDSVentaCabID_FC.Value;
      FechaOperacion := DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime;
      Origen         := DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value;

      pcDetalleFactura.ActivePageIndex:=1;

      CDSCajaMov.Insert;
      CDSCajaMovHABER.AsFloat        := 0;
      CDSCajaMovDEBE.AsFloat         := Importe;//DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;

      CDSCajaMovID_FPAGOSetText(CDSCajaMovID_FPAGO,ID_FPago);
      CDSMovTCreditoID_TCSetText(CDSMovTCreditoID_TC,IDTCredito);
      CDSMovTCreditoCAN_CUOTASSetText(CDSMovTCreditoCAN_CUOTAS,Cuotas);
      CDSMovTCreditoUNIDADES_NETOSetText(CDSMovTCreditoUNIDADES_NETO,FloatToStr(Importe));
      CDSMovTCreditoNRO_CUPON.value:=StrToInt(NroCupon);

      CDSMovTCredito.Post;
      pcDetalleFactura.ActivePageIndex:=0;
      QCajaCab.Close;
    end;
end;

procedure TFormTicketVta.LeerFacturaFreezadaExecute(Sender: TObject);
var Nombre:String;
I:Integer;
P_Gravado,P_Exento,Importe_Iva,P_Total,P_ConIVA:Extended;
begin
  inherited;
  if DSBase.State in [dsInsert] then
    begin
      if Not(Assigned(FormListadoFacturasClonadas)) then
        FormListadoFacturasClonadas:=TFormListadoFacturasClonadas.Create(self);
      FormListadoFacturasClonadas.Directorio:=PathFreezerCtdo;
      FormListadoFacturasClonadas.ShowModal;
      if (FormListadoFacturasClonadas.ModalResult=mrOk) and (Not(FormListadoFacturasClonadas.CDSCabecera.IsEmpty)) and
         (FormListadoFacturasClonadas.CDSCabecera.FieldByName('TipoCpbte').AsString='TK') then
        begin
          For i:=0 to FormListadoFacturasClonadas.CDSCabecera.FieldCount-1 do
            begin
              if DatosVentasTicket.CDSVentaCab.FindField(FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=FormListadoFacturasClonadas.CDSCabecera.Fields[i].FieldName;
                  if Nombre='ID_TIPOCOMPROBANTE' then
                    DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).AsString);
                  DatosVentasTicket.CDSVentaCab.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSCabecera.FieldByName(Nombre).Value;
                end;
            end;
          DatosVentasTicket.CDSVentaCabIMPRESO.Value        :='N';
          DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime  :=Date;
        //  Saldo.Caption:= '0';
        //  Lte.Caption  := '0';

          FormListadoFacturasClonadas.CDSDetalle.First;
          while not(FormListadoFacturasClonadas.CDSDetalle.Eof) do
            begin
              DatosVentasTicket.CDSVentaDet.Append;
              For i:=0 to FormListadoFacturasClonadas.CDSDetalle.FieldCount-1 do
                begin
                  if DatosVentasTicket.CDSVentaDet.FindField(FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=FormListadoFacturasClonadas.CDSDetalle.Fields[i].FieldName;
                      DatosVentasTicket.CDSVentaDet.FieldByName(Nombre).Value:=FormListadoFacturasClonadas.CDSDetalle.FieldByName(Nombre).Value;
                    end;
                end;

              DatosVentasTicket.CDSVentaDetCALCULA_SOBRETASA.Value:='N';

              if Trunc(DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat*100)=0 then
                begin
                  P_Gravado   := DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := RoundTo(P_Gravado * DatosVentasTicket.CDSVentaDetIVA_TASA.AsFloat * 0.01,DMMain_FD.DecRedondeo);
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end
              else
                begin
                  P_Gravado   := DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat ;
                  P_Exento    := DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat ;
                  Importe_Iva := DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat ;
                  P_Total     := P_Gravado + P_Exento;
                  P_ConIVA    := P_Total + Importe_Iva;
                end;

              if (DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='S') and (FormTicketVta.DiscriminaIva='S') then
                DatosVentasTicket.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_Total))
              else
                DatosVentasTicket.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(P_ConIVA));

//              For i:=0 to DatosVentas.CDSVentaDet.FieldCount-1 do
//                begin
//                  if DatosVentas.CDSVentaDet.Fields[i].Required Then
//                    ShowMessage(DatosVentas.CDSVentaDet.Fields[i].FieldName+':'+
//                                DatosVentas.CDSVentaDet.Fields[i].AsString);
//              end;
              DatosVentasTicket.CDSVentaDet.Post;
              FormListadoFacturasClonadas.CDSDetalle.Next;
            end;
          FreeAndNil(FormListadoFacturasClonadas);
          DatosVentasTicket.CDSVentaDet.Append;
          DBGrillaDetalle.SetFocus;
        end;
  end;
end;

procedure TFormTicketVta.LeerPesoExecute(Sender: TObject);
var p:TPesoActual;
begin
  if (DBGrillaDetalle.SelectedIndex=3) and (imBalanza.Visible) and (Balanza<>nil) then
    begin
      Balanza.Port :=FormTicketVta.PuertoCom;
      Balanza.Id   :=FormTicketVta.IdBalanza;
      try
        Balanza.Connect;
        Balanza.PesoActual(p);
        if DatosVentasTicket.CDSVentaDet.State=dsBrowse then
          DatosVentasTicket.CDSVentaDet.Edit;
        DatosVentasTicket.CDSVentaDetCANTIDADSetText(DatosVentasTicket.CDSVentaDetCANTIDAD ,floattostr(p.Peso*0.001));
        Balanza.Disconnect;
      except
        ShowMessage('Error de lectura');
      end;
     end;
end;

procedure TFormTicketVta.FiscalizarExecute(Sender: TObject);
var aux,TextoLog,TextoLogFiscalizacion:String;
d,m,y:word;
EstadoControlImp,EstadoPreviw,
EstadoDlg,RevisionCAE,Ajustar     :Boolean;
CaeREVISION    :WideString;
VtoREVISION    :String;
FechaCapturada :String;
NumeroCapturado:Double;
NumeroStr      :String;
FechaVta       :TDateTime;
FechaVtoCae    :TDateTime;
begin
  inherited;
  DMMain_FD.Cuit_SUCURSAL        := AnsiReplaceStr( DMMain_FD.GetCuitSUCURSAL((DatosVentasTicket.CDSVentaCabSUCURSAL.Value)),'-','');
  DMMain_FD.Certificado_SUCURSAL := DMMain_FD.GetCertificadoSucursal(DatosVentasTicket.CDSVentaCabSUCURSAL.Value);

  RevisionCAE     := False;
  Agregar.Enabled := False;
  if (DatosVentasTicket<>nil) and (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (DatosVentasTicket.CDSVentaCabIMPRESO.Value='N') and (DatosVentasTicket.CDSVentaCabCAE.AsFloat<=0) then
    begin

      if (Assigned(FormFiscalizacion)) then
        begin
          FreeAndNil(FormFiscalizacion);
          FormFiscalizacion:=nil;
        end;

      if  Not(Assigned(FormFiscalizacion)) then
        FormFiscalizacion:= TFormFiscalizacion.Create(self);

      Aux:= DatosVentasTicket.CDSEmpresa.FieldByName('cuit').AsString;

      //*********  Control del Certifiado por Sucursal **************
      if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
        begin
          Aux:=  Trim(DMMain_FD.Cuit_SUCURSAL);
          FormFiscalizacion.CertificadoSucursal:=Trim(DMMain_FD.Certificado_SUCURSAL);
        end
      else
        FormFiscalizacion.CertificadoSucursal:='';
      //************************************************************

      Aux:= StringReplace(aux,'-','',[rfReplaceAll]);
      Aux:= StringReplace(aux,'.','',[rfReplaceAll]);

      FormFiscalizacion.CuitVdor    := StrToFloat(Aux);

      Aux:= DatosVentasTicket.CDSVentaCabCUIT.AsString;
      if Aux='' then aux:='00000000000';

      Aux:= StringReplace(aux,'-','',[rfReplaceAll]);
      Aux:= StringReplace(aux,'.','',[rfReplaceAll]);
      Aux:= StringReplace(aux,'_','',[rfReplaceAll]);

      FormFiscalizacion.CuitComp           := StrToFloat(Aux);
      FormFiscalizacion.ID_Comprobante     := DatosVentasTicket.CDSVentaCabID_FC.AsString;
      FormFiscalizacion.PtoVenta           := StrToInt(DatosVentasTicket.CDSVentaCabSUCFAC.Value);
      FormFiscalizacion.FechaVta           := FormatDateTime('yyyymmdd', DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime);
      FormFiscalizacion.FechaVto           := FormatDateTime('yyyymmdd', DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime);
      FormFiscalizacion.Total              := RoundTo(DatosVentasTicket.CDSVentaCabTOTAL.AsFloat,-2);
      FormFiscalizacion.TotalNeto          := RoundTo(DatosVentasTicket.CDSVentaCabNETOGRAV2.AsFloat,-2);
      FormFiscalizacion.TotalExento        := roundto(DatosVentasTicket.CDSVentaCabNETOEXEN2.AsFloat,-2);
      FormFiscalizacion.TotalIIBB          := DatosVentasTicket.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
      FormFiscalizacion.TotalNetoNoGrav    := DatosVentasTicket.CDSVentaCabNETONOGRAV2.AsFloat;
      FormFiscalizacion.TasaIIBB           := DatosVentasTicket.CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
      FormFiscalizacion.Nombre             := DatosVentasTicket.CDSVentaCabRAZONSOCIAL.AsString;
      FormFiscalizacion.Domicilio          := DatosVentasTicket.CDSVentaCabDIRECCION.AsString;
      FormFiscalizacion.BaseImpIIBB        := DatosVentasTicket.CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
      FormFiscalizacion.DatosImp           := DatosVentasTicket.CDSImpuestos;
      FormFiscalizacion.DatosPercecpionIVA := DatosVentasTicket.CDSPercepcionIVA;

      FormFiscalizacion.URLWSAA            := FormTicketVta.URLWSAA;
      FormFiscalizacion.URLWSW             := FormTicketVta.URLWSW;
      FormFiscalizacion.URLWSW_EX          := FormTicketVta.URLWSW_EX;
      FormFiscalizacion.NumeroActual       := DatosVentasTicket.CDSVentaCabNUMEROFAC.AsFloat;
      FormFiscalizacion.TipoNumero         := DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value+'-'+DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
      FormFiscalizacion.Moneda             := DatosVentasTicket.CDSVentaCabMONEDA_CPBTE.Value;
      FormFiscalizacion.MonedaCotiz        := DatosVentasTicket.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat;
      FormFiscalizacion.NombreIni          := DMMain_FD.MainPath+DMMain_FD.NombreIni;
      FormFiscalizacion.CodigoActividad    := DatosVentasTicket.CDSEmpresaCOD_ACTIVIDAD.Value;
      FormFiscalizacion.TipoIvaComp        := DatosVentasTicket.CDSVentaCabTIPOIVA.Value;

      // codificacion de Factura Contado //Nota de Vta Contado
      if NotaVtaCtdo then
        begin
          if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK') and (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger// 5
          else
            if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK') and (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//10;
         end
      else
        begin
          if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK') and (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger//1
          else
            if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK') and (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//6;
        end;

      if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK') and (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='C') Then
        FormFiscalizacion.TipoComp:=DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.AsInteger;//11;

       //****************************************************************************************

      if (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
         ((DatosVentasTicket.CDSVentaCabLETRAFAC.Value='B') or  (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='C')) and
         (DatosVentasTicket.CDSVentaCabTIPOIVA.Value=3) Then
        begin
          FormFiscalizacion.TipoDocumento := 99;
          FormFiscalizacion.CuitComp      := 0;
        end
      else
        FormFiscalizacion.TipoDocumento := 80;

      if (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat>=DMMain_FD.LimiteFactB) and
         ((DatosVentasTicket.CDSVentaCabLETRAFAC.Value='B') or  (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='C')) and
         (DatosVentasTicket.CDSVentaCabTIPOIVA.Value=3) Then
        begin
          FormFiscalizacion.TipoDocumento := 96;
        end;

//      FormFiscalizacion.Certificado := FormTicketVta.CertificadoElectronico;
//      FormFiscalizacion.Clave       := FormTicketVta.ClaveElectronica;
//
//      //*********  Control de Certifiado por Sucursal **************
//      if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
//        FormFiscalizacion.Certificado:=Trim(DMMain_FD.Certificado_SUCURSAL);
//      //************************************************************

      if DuplicarFC then
        begin
          FormFiscalizacion.PageControl1.ActivePageIndex:=1;
          FormFiscalizacion.btBuscar.Click;
        end;

      FormFiscalizacion.ShowModal;
      if (FormFiscalizacion.Resultado='A') then
        begin
          RevisionCAE    := FormFiscalizacion.Revision;
          CaeREVISION    := FormFiscalizacion.CAE;
          VtoREVISION    := FormFiscalizacion.Vencimiento;
          FechaCapturada := FormFiscalizacion.FechaVta;
          NumeroCapturado:= FormFiscalizacion.NumeroInt;
          Ajustar        := FormFiscalizacion.Ajustar;

          d:=StrToInt( Copy(FechaCapturada,7,2));
          m:=StrToInt( Copy(FechaCapturada,5,2));
          y:=StrToInt( Copy(FechaCapturada,1,4));

          FechaVta:=EncodeDate(y,m,d);


          d:=StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
          m:=StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
          y:=StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

          FechaVtoCae :=EncodeDate(y,m,d);;

          NumeroStr:= copy('00000000',1,8-length(FloatToStr(NumeroCapturado)))+FloatToStr(NumeroCapturado);

          if RevisionCAE then
            begin
              if DMMain_FD.VerificarCAE(CaeREVISION) Then
                begin
                  DMMain_FD.LogFileFD(1,2,'Error de intento de Asignacion de CAE '+'('+DatosVentasTicket.CDSVentaCabID_FC.AsString+') '+
                                                                                    DatosVentasTicket.CDSVentaCabNROCPBTE.AsString ,
                                                                                    'FACVTA');
                  raise Exception.Create('Este CAE esta asignnado en una factura');
                end;
            end;

          if Not(DMStoreProcedure.ActualizaCAE_VTO(DatosVentasTicket.CDSVentaCabID_FC.Value,FechaVta,CaeREVISION,FechaVtoCae,NumeroStr,FormFiscalizacion.QRImage)) Then
            ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');

//          DMMain_FD.fdcGestion.StartTransaction;
//          try
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Close;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Id').Value            := DatosVentasTicket.CDSVentaCabID_FC.Value;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Fecha').Value         := FechaVta;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Cae').Value           := CaeREVISION;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('CaeVencimiento').Value:= FechaVtoCae;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Params.ParamByName('Numero').Value        := NumeroStr;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.ExecProc;
//            DMStoreProcedure.spActualizaNro_CAE_VTO.Close;
//            DMMain_FD.fdcGestion.Commit;
//          Except
//            DMMain_FD.fdcGestion.Rollback;
//            ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ')
//          end;

          Recuperar.Execute;

          TextoLog:= 'Restauracion de CAE Fc.Ctdo.Nro: '+ '('+DatosVentasTicket.CDSVentaCabID_FC.AsString+') '+
                      DatosVentasTicket.CDSVentaCabNROCPBTE.AsString+
                      ' Cliente: '+
                      DatosVentasTicket.CDSVentaCabRAZONSOCIAL.AsString+
                      ' Importe Fc: '+
                      FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.asfloat)+
                      ' Nro.CAE.:'+DatosVentasTicket.CDSVentaCabCAE.Value;

          TextoLogFiscalizacion:= 'Gravacion de CAE Fc.Ctdo.Nro: '+'('+DatosVentasTicket.CDSVentaCabID_FC.AsString+') '+
                                  DatosVentasTicket.CDSVentaCabNROCPBTE.AsString+
                                  ' Cliente: '+
                                  DatosVentasTicket.CDSVentaCabRAZONSOCIAL.AsString+
                                  ' Importe Fc: '+
                                  FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.asfloat)+
                                  ' Nro.CAE.:'+DatosVentasTicket.CDSVentaCabCAE.Value;

         if FormTicketVta.DSBase.State in [dsInsert,dsEdit] then
            FormTicketVta.Confirma.Execute;

         if (RevisionCAE=False) then
            begin
              DMStoreProcedure.spActualizaContadorCpbte.Close;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('SUCURSAL').AsInteger     :=DSBase.DataSet.FieldByName('SUCURSAL').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('LETRA').AsString         :=DSBase.DataSet.FieldByName('LETRAFAC').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('NUMERO').AsString        :=DSBase.DataSet.FieldByName('NUMEROFAC').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('CLASE_COMPROB').AsString :=DSBase.DataSet.FieldByName('CLASECPBTE').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('TIPO_COMPROB').AsString  :=DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
              DMStoreProcedure.spActualizaContadorCpbte.ParamByName('COMP_VTA').AsString      := 'V';
              DMStoreProcedure.spActualizaContadorCpbte.ExecProc;
              DMStoreProcedure.spActualizaContadorCpbte.Close;
            end;

          EstadoControlImp                  := FormTicketVta.ControlaImpresion;
          FormTicketVta.ControlaImpresion   := False;
          EstadoPreviw                      := FormTicketVta.chbPreview.Checked;
          FormTicketVta.chbPreview.Checked  := False;
          EstadoDlg                         := chbPregunta.Checked;

          FormTicketVta.ControlaImpresion   := EstadoControlImp;
          FormTicketVta.chbPreview.Checked  := EstadoPreviw;
          FormTicketVta.chbPregunta.Checked := EstadoDlg;

          if (FormFiscalizacion<>nil) and ( FormFiscalizacion.Imprimir) then
            Imprimir.Execute;

          // **** Ingreso en el Log File  **************
          if RevisionCAE then
            DMMain_FD.LogFileFD(1,2,TextoLog,' FACVTATKT')
          else
            DMMain_FD.LogFileFD(1,2,TextoLogFiscalizacion,' FACVTATKT');
          // ******************************************
          // ******************************************
        end;
    end;
  Agregar.Enabled:=True;
  if (Assigned(FormTicketVta)) and  ((FormTicketVta.Visible=True) and (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;
end;

procedure TFormTicketVta.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    Recuperar.Execute;

//  if FormTicketVta<>nil Then
//    if (FormTicketVta.ScannerSerie='S') and (Balanza=nil) then
//      ConectarBalanza.Execute;

end;

procedure TFormTicketVta.FormClose(Sender: TObject; var Action: TCloseAction);
VAR GeneralIni,ArchIni:TIniFile;
begin
 // ArchIni            := TIniFile.Create(DMMain_FD.MainPath+'TicketVta.Ini');
//  ArchIni.WriteString('FRCabecera','name', frDBcabecera.UserName);
//  ArchIni.WriteString('FRDetalle', 'name', frDBDetalles.UserName);
//  ArchIni.WriteString('FREmpresa', 'name', frDBEmpresa.UserName);
//  ArchIni.WriteString('FRImpuesto','name', frDBImpuestos.UserName );
//  ArchIni.WriteString('FRSucursal','name', frDBSucursal.UserName );
//  ArchIni.Free;

  if DSBase.State<>dsBrowse Then Action:=caNone;

  if DSBase.DataSet.State IN [dsInsert, dsEdit] then
   DMMain_FD.LogFileFD(0,3,'Cierre de Pantalla Con Cpbte Tk Abierto, Numero Provisorio:'+DSBase.DataSet.FieldByName('LETRAFAC').AsString+'-'+DSBase.DataSet.FieldByName('SUCFAC').AsString+'-'+DSBase.DataSet.FieldByName('NUMEROFAC').AsString+
                          '('+DSBase.DataSet.FieldByName('ID_FC').AsString+')'+ '..Fecha :'+dateToStr(DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime)+
                          ' Importe de :'+FormatFloat(',0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat),
                          'CANCELACION');



  GeneralIni   :=  TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'_TicketVta.Ini');

  if (chbPreview.Checked=True) then
    GeneralIni.WriteString('Impresion', 'Preview', 'S')
  else
    if (chbPreview.Checked=False) then
      GeneralIni.WriteString('Impresion', 'Preview', 'N');

  if (chbPregunta.Checked=True) then
    GeneralIni.WriteString('Impresion', 'confirmacion', 'S')
  else
    if (chbPregunta.Checked=False) then
      GeneralIni.WriteString('Impresion', 'confirmacion', 'N');

  if SaltearDetalle.Checked=True  then
    GeneralIni.WriteString('Impresion', 'saltadetalle', 'S')
  else
    if SaltearDetalle.Checked=False  then
      GeneralIni.WriteString('Impresion', 'saltadetalle', 'N');



  GeneralIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
  GeneralIni.WriteBool('Valores', 'Estado', ActivarDialogoValores1.Checked);
  GeneralIni.WriteBool('Descuentos', 'Descuento', DatosVentasTicket.CDSVentaDetDESCUENTO.Visible);
  GeneralIni.WriteBool('Foco', 'Fecha', IniciarEnFecha1.Checked);
  GeneralIni.Free;

  GravaSectores;

  FreeAndNil(Balanza);
  if Anulado<>nil Then
    FreeAndNil(Anulado);
  pcDetalleFactura.ActivePage := PagDetalles;
  WITH DatosVentasTicket DO
    BEGIN
     // Cancelar.Execute;
      QClientes.Close;
      CDSVentaDet.Close;
      CDSSucursal.Close;
      CDSStock.Close;
      CDSInscripcion.Close;
      CDSIva.Close;
      CDSDeposito.Close;
      CDSImpuestos.Close;
      CDSVentaCab.Close;
      CDSVtaSubDetalle.Close;
      CDSListaPrecios.Close;
      FrameMovValoresIngreso1.QCajaCab.Close;
    END;

  FreeAndNil(DatosVentasTicket);

  Action := caFree;

 // GuardarNombresEnArchivo;
  // DatosVentasCtdo.free;
  inherited;

end;

procedure TFormTicketVta.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  inherited;
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('opcion').Value := 'ESCCPBTE';
//  DMMain_FD.QOpciones.Open;
//  if (Copy(DMMain_FD.QOpciones.Fields[0].AsString, 1, 1) = 'S') then
//    begin
//    end;
//  DMMain_FD.QOpciones.Close;

  if DSBase.State in [dsInsert,dsEdit] then  canClose:=DMMain_FD.EscCpbte;
end;


procedure TFormTicketVta.IniciarEnFecha1Click(Sender: TObject);
begin
  inherited;
  IniciarEnFecha1.Checked:=not(IniciarEnFecha1.Checked);
end;

procedure TFormTicketVta.IniciaSectores;
var
  TkSectores: TiniFile;
begin
  cbPrinter1.Items      :=  Printer.Printers;
  cbPrinter2.Items      :=  Printer.Printers;
  cbPrinter3.Items      :=  Printer.Printers;
  cbPrinter4.Items      :=  Printer.Printers;

  TkSectores            :=  TIniFile.Create(DMMain_FD.MainPath+'TkSectores.Ini');

  chActivo1.Checked     :=  TkSectores.ReadBool('Sector1','Activo',false);
  eNombre1.Text         :=  TkSectores.ReadString('Sector1','Nombre','');
  cbPrinter1.ItemIndex  :=  TkSectores.ReadInteger('Sector1','Printer',-1);
  eSubrubros1.Text      :=  TkSectores.ReadString('Sector1','Subrubros','');

  chActivo2.Checked     :=  TkSectores.ReadBool('Sector2','Activo',false);
  eNombre2.Text         :=  TkSectores.ReadString('Sector2','Nombre','');
  cbPrinter2.ItemIndex  :=  TkSectores.ReadInteger('Sector2','Printer',-1);
  eSubrubros2.Text      :=  TkSectores.ReadString('Sector2','Subrubros','');

  chActivo3.Checked     :=  TkSectores.ReadBool('Sector3','Activo',false);
  eNombre3.Text         :=  TkSectores.ReadString('Sector3','Nombre','');
  cbPrinter3.ItemIndex  :=  TkSectores.ReadInteger('Sector3','Printer',-1);
  eSubrubros3.Text      :=  TkSectores.ReadString('Sector3','Subrubros','');

  chActivo4.Checked     :=  TkSectores.ReadBool('Sector4','Activo',false);
  eNombre4.Text         :=  TkSectores.ReadString('Sector4','Nombre','');
  cbPrinter4.ItemIndex  :=  TkSectores.ReadInteger('Sector4','Printer',-1);
  eSubrubros4.Text      :=  TkSectores.ReadString('Sector4','Subrubros','');

  TkSectores.Free;

end;

procedure TFormTicketVta.GravaSectores;
var
  TkSectores: TiniFile;
begin

  TkSectores            :=  TIniFile.Create(DMMain_FD.MainPath+'TkSectores.Ini');

  TkSectores.WriteBool('Sector1','Activo',chActivo1.Checked);
  TkSectores.WriteString('Sector1','Nombre',eNombre1.Text);
  TkSectores.WriteInteger('Sector1','Printer',cbPrinter1.ItemIndex);
  TkSectores.WriteString('Sector1','Subrubros','''' + eSubrubros1.Text + '''');

  TkSectores.WriteBool('Sector2','Activo',chActivo2.Checked);
  TkSectores.WriteString('Sector2','Nombre',eNombre2.Text);
  TkSectores.WriteInteger('Sector2','Printer',cbPrinter2.ItemIndex);
  TkSectores.WriteString('Sector2','Subrubros','''' + eSubrubros2.Text + '''');

  TkSectores.WriteBool('Sector3','Activo',chActivo3.Checked);
  TkSectores.WriteString('Sector3','Nombre',eNombre3.Text);
  TkSectores.WriteInteger('Sector3','Printer',cbPrinter3.ItemIndex);
  TkSectores.WriteString('Sector3','Subrubros','''' + eSubrubros3.Text + '''');

  TkSectores.WriteBool('Sector4','Activo',chActivo4.Checked);
  TkSectores.WriteString('Sector4','Nombre',eNombre4.Text);
  TkSectores.WriteInteger('Sector4','Printer',cbPrinter4.ItemIndex);
  TkSectores.WriteString('Sector4','Subrubros','''' + eSubrubros4.Text + '''');

  TkSectores.Free;
end;


procedure TFormTicketVta.ImprimeSectores;
begin
  DatosVentasTicket.CDSVentaDet.DisableControls;
  if chActivo1.Checked then
    frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\TkSectores.fr3');

  if chActivo1.Checked then
    begin
      frFactura.PrintOptions.Printer:= cbPrinter1.Text;

      DatosVentasTicket.CDSVentaDet.Filtered    := False;
      DatosVentasTicket.CDSVentaDet.Filter      :=  'SUBRUBRO_STK in (' + eSubrubros1.Text + ')';
      DatosVentasTicket.CDSVentaDet.Filtered    := True;

      frFactura.Variables.Clear;
      frFactura.Variables.Variables['Nombre']    :=  '''' + eNombre1.Text + '''';
      frFactura.PrepareReport;
      if Not( DatosVentasTicket.CDSVentaDet.IsEmpty) then
        begin
          if chbPreview.Checked=True Then
            frFactura.ShowReport
          else
            begin
              frFactura.PrintOptions.ShowDialog:=False;
              frFactura.Print;
            end;
        end;
    end;

  if chActivo2.Checked then
    begin
      frFactura.PrintOptions.Printer:= cbPrinter2.Text;

      DatosVentasTicket.CDSVentaDet.Filtered    := False;
      DatosVentasTicket.CDSVentaDet.Filter      :=  'SUBRUBRO_STK in (' + eSubrubros2.Text + ')';
      DatosVentasTicket.CDSVentaDet.Filtered    := True;

      frFactura.Variables.Clear;
      frFactura.Variables.Variables['Nombre']    := '''' + eNombre2.Text + '''';
      frFactura.PrepareReport;

       if Not( DatosVentasTicket.CDSVentaDet.IsEmpty) then
         begin
           if chbPreview.Checked=True Then
             frFactura.ShowReport
           else
             begin
               frFactura.PrintOptions.ShowDialog:=False;
               frFactura.Print;
             end;
         end;
    end;

  if chActivo3.Checked then
    begin
      frFactura.PrintOptions.Printer:= cbPrinter3.Text;

      DatosVentasTicket.CDSVentaDet.Filtered    := False;
      DatosVentasTicket.CDSVentaDet.Filter      :=  'SUBRUBRO_STK in (' + eSubrubros3.Text + ')';
      DatosVentasTicket.CDSVentaDet.Filtered    := True;

      frFactura.Variables.Clear;
      frFactura.Variables.Variables['Nombre']    := '''' + eNombre3.Text + '''';
      frFactura.PrepareReport;
      if Not( DatosVentasTicket.CDSVentaDet.IsEmpty) then
         begin
      if chbPreview.Checked=True Then
        frFactura.ShowReport
      else
        begin
          frFactura.PrintOptions.ShowDialog:=False;
          frFactura.Print;
        end;
	end;
    end;

  if chActivo4.Checked then
    begin
      frFactura.PrintOptions.Printer:= cbPrinter4.Text;

      DatosVentasTicket.CDSVentaDet.Filtered    := False;
      DatosVentasTicket.CDSVentaDet.Filter      :=  'SUBRUBRO_STK in (' + eSubrubros4.Text + ')';
      DatosVentasTicket.CDSVentaDet.Filtered    := True;
      if DatosVentasTicket.CDSVentaDet.RecordCount>0 then
        begin
          frFactura.Variables.Clear;
          frFactura.Variables.Variables['Nombre']    := '''' + eNombre4.Text + '''';
          frFactura.PrepareReport;

          if chbPreview.Checked=True Then
            frFactura.ShowReport
          else
            begin
              frFactura.PrintOptions.ShowDialog:=False;
              frFactura.Print;
            end;
        end;
    end;

  DatosVentasTicket.CDSVentaDet.Filter    :=  '';
  DatosVentasTicket.CDSVentaDet.Filtered  :=  False;
  DatosVentasTicket.CDSVentaDet.EnableControls;
end;

procedure TFormTicketVta.FormCreate(Sender: TObject);
Var GeneralIni,ArchIni:TiniFile;
  i: TObject;
begin
  inherited;
  SinBDE:=2;
  pcDetalleFactura.ActivePageIndex:=0;
  IF NOT (Assigned(DatosVentasTicket)) THEN
    DatosVentasTicket := TDatosVentasTicket.Create(Self);

  IF NOT (Assigned(FormCpbte_Produccion)) THEN
    FormCpbte_Produccion := TFormCpbte_Produccion.Create(Self);

  AutoSize := False;

  GeneralIni                     := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'_TicketVta.Ini');
  chbPreview.Checked             := GeneralIni.ReadString('Impresion', 'Preview', 'N')='S';
  chbPregunta.Checked            := GeneralIni.ReadString('Impresion', 'confirmacion', 'N')='S';
  SaltearDetalle.Checked         := GeneralIni.ReadString('Impresion', 'saltadetalle', 'N')='S';
  DatosVentasTicket.CDSVentaDetDESCUENTO.Visible :=GeneralIni.ReadBool('Descuentos', 'Descuento', False);
  VerCodigoAlternativo1.Checked  := GeneralIni.ReadBool('codigo', 'codigo', False);
  ActivarDialogoValores1.Checked := GeneralIni.ReadBool('Valores', 'Estado', False);
  IniciarEnFecha1.Checked        := GeneralIni.ReadBool('Foco', 'Fecha', False);

  GeneralIni.Free;

 // ArchIni                 := TIniFile.Create(DMMain_FD.MainPath+'TicketVta.Ini');
//  frDBcabecera.UserName   := ArchIni.ReadString('FRCabecera','name', 'frDBcabecera');
//  frDBDetalles.UserName   := ArchIni.ReadString('FRDetalle', 'name', 'frDBDetalles');
//  frDBImpuestos.UserName  := ArchIni.ReadString('FRImpuesto','name', 'frDBImpuestos');
//  frDBSucursal.UserName   := ArchIni.ReadString('FRSucursal','name', 'frDBSucursal');
//  frDBEmpresa.UserName    := ArchIni.ReadString('FREmpresa', 'name', 'frDBEmpresa');
//  ArchIni.Free;

  sgNombreFR.ColAlignments[0]:= taLeftJustify;
  sgNombreFR.ColWidths[0]    := 200;
  sgNombreFR.ColWidths[1]    := 120;

  IniciaSectores;

  FrameMovValoresIngreso1.tsCheques.TabVisible            := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;
  FrameMovValoresIngreso1.tsEfectivo.TabVisible           := True;
  FrameMovValoresIngreso1.tsChe3.TabVisible               := True;
  FrameMovValoresIngreso1.tsTCredito.TabVisible           := True;
  FrameMovValoresIngreso1.tsTransf.TabVisible             := True;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;
  FrameMovValoresIngreso1.tsValoresCompartidos.TabVisible := True;
  FrameMovValoresIngreso1.tsCheques.TabVisible            := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;


  DSBase.DataSet:=DatosVentasTicket.CDSVentaCab;
  DuplicarFc:=false;
  BEGIN
    WITH DatosVentasTicket DO
      BEGIN
        AddClientDataset(CDSVentaCab, DSPVentaCab);
        AddClientDataset(CDSVentaDet, DSPVentaDet);
        AddClientDataset(CDSVtaDetNovedades, DSPVtaDetNovedades);
        AddClientDataset(CDSImpuestos, DSPImpuestos);
        AddClientDataset(CDSPercepcionIVA, DSPPercepcionIVA);

        AddClientDataSet(CDSVtaSubDetalle,DSPVtaSubDet);
        AddClientDataSet(CDSVtaDetConsig,DSPVtaDetConsig);
        AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
        AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
        AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
        AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
        AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);

        AddClientDataSet(CDSFc_Prod_Det,DSPFc_Prod_Det);
        AddClientDataSet(CDSFc_Prod_Mov,DSPFc_Prod_Mov);
        AddClientdataSet(CDSVentaLote,DSPVentaLote);


        DatosVentasTicket.CDSVentaCab.close;
        DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
        DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVentaCab.Open;

        DatosVentasTicket.CDSVentaDet.Close;
        DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVentaDet.Open;

        DatosVentasTicket.CDSVtaDetNovedades.Close;
        DatosVentasTicket.CDSVtaDetNovedades.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVtaDetNovedades.Open;

        DatosVentasTicket.CDSImpuestos.Close;
        DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSImpuestos.Open;

        DatosVentasTicket.CDSPercepcionIVA.Close;
        DatosVentasTicket.CDSPercepcionIVA.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSPercepcionIVA.Open;

        DatosVentasTicket.CDSVtaSubDetalle.Close;
        DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVtaSubDetalle.Open;

        DatosVentasTicket.CDSVtaDetConsig.Close;
        DatosVentasTicket.CDSVtaDetConsig.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVtaDetConsig.Open;

        FrameMovValoresIngreso1.CDSCajaMov.Close;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Open;

        FrameMovValoresIngreso1.CDSChe3.Close;
        FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSChe3.Open;

        FrameMovValoresIngreso1.CDSMovEfectivo.Close;
        FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovEfectivo.Open;

        FrameMovValoresIngreso1.CDSMovTCredito.Close;
        FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovTCredito.Open;

        FrameMovValoresIngreso1.CDSTransBco.Close;
        FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSTransBco.Open;

        FrameMovValoresIngreso1.QCajaCab.Open;

        DatosVentasTicket.CDSFc_Prod_Det.Close;
        DatosVentasTicket.CDSFc_Prod_Det.Params.ParamByName('id_cab').Clear;
        DatosVentasTicket.CDSFc_Prod_Det.Open;

        DatosVentasTicket.CDSFc_Prod_Mov.Close;
        DatosVentasTicket.CDSFc_Prod_Mov.Params.ParamByName('id_cab').Clear;
        DatosVentasTicket.CDSFc_Prod_Mov.Open;

        DatosVentasTicket.CDSVentaLote.Close;
        DatosVentasTicket.CDSVentaLote.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVentaLote.Open;

        FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

        AplicarMascarasNumericas;

        DBGrillaDetalle.Columns[5].Visible:=CDSVentaDetDESCUENTO.Visible;

        // Asigno la cantidad de renglones de la factura;
//        DMMain_FD.QOpciones.Close;
//        DMMain_FD.QOpciones.ParamByName('opcion').AsString:='RENGLONES';
//        DMMain_FD.QOpciones.Open;
//        IF DMMain_FD.QOpciones.Fields[0].AsString<>'' Then
//          Renglones:=DMMain_FD.QOpciones.Fields[0].AsInteger
//        else
//          Renglones:=20;
//        DMMain_FD.QOpciones.Close;
        FrameMovValoresIngreso1.ceCaja.Enabled  :=  DMMain_FD.ModificaCaja;
      END;
  END;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
  //Precio Unitario
   DBGrillaDetalle.Columns[4].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
  //***************************************************************
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VTASTOCKCERO';
//  DMMain_FD.QOpciones.Open;
//  DMMain_FD.VenderSinStock:=Copy(DMMain_FD.QOpciones.Fields[0].Value,1,1)='S';
//  DMMain_FD.QOpciones.Close;
  //***************************************************************
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('opcion').Value:='LINEACERO';
//  DMMain_FD.QOpciones.Open;
//  DMMain_FD.ControlaLineaCero  := UpperCase(Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1))='S';
//  DMMain_FD.QOpciones.Close;
 // esta lineas se agragan por lo de astesano con rescpecto a la vta en consignacion
//   DMMain_FD.QOpciones.Close;
//   DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONSIGNACION';
//   DMMain_FD.QOpciones.Open;
//   if (DMMain_FD.QOpciones.Fields[0].AsString[1]='S') then
//     Consignacion:=True
//   else
//     Consignacion:=False;
//   DMMain_FD.QOpciones.Close;


  Consignacion  :=  DMMain_FD.UsaConsignacion;
  Tabla         :='FcVtaCab';
  Campo         :='Id_Fc';
  ItemRedondeo  :='*';
  DMMain_FD.CodigoBarraSerie:='';

  if ClientePorDefecto<>'' Then
    begin
      RxCSucursal.TabStop  :=False;
      rxcVendedor.TabStop  :=False;
      RxCTipoCpbte.TabStop :=False;
    end
  else
    begin
      RxCSucursal.TabStop  :=True;
      rxcVendedor.TabStop  :=True;
      RxCTipoCpbte.TabStop :=True;
    end;

  DatosVentasTicket.CDSListaPrecios.Close;

  if DMMain_FD.UsuarioAdministrador Then
    DatosVentasTicket.CDSListaPrecios.Params.ParamByName('uso').Value:='*'
  else
    DatosVentasTicket.CDSListaPrecios.Params.ParamByName('uso').Value:='S';
  DatosVentasTicket.CDSListaPrecios.OPen;

  PagCtaOrden.TabVisible:=False;

  //*************************************************************
  ArchivoIni       := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'consignacion.ini');
  Proveedor        := ArchivoIni.ReadString('proveedor', 'codigo', '');
  ArchivoIni.Free;
   //*************************************************************

  //*************************************************************
  Pasar_A_Papelera.Visible   := DMMain_FD.UsuarioActivo='master';
  pagData.Enabled            := DMMain_FD.UsuarioActivo='master';
  pagData.TabVisible         := DMMain_FD.UsuarioActivo='master';
  //*************************************************************

   // *******************************************************************
   // **** se es controlada la lista por usuario ....
   // *******************************************************************
   if (DMMain_FD.GetControlaLista) then
     begin
       DatosVentasTicket.CDSListaPrecios.Close;
       DatosVentasTicket.DSListaPrecios.DataSet := DMMain_FD.CDSListaPreciosUsuarios;
       DMMain_FD.CDSListaPreciosUsuarios.Close;
       DMMain_FD.CDSListaPreciosUsuarios.Params.ParamByName('usuario').Value := DMMain_FD.UsuarioActivoId;
       DMMain_FD.CDSListaPreciosUsuarios.Open;
     end;
   // *******************************************************************
   // *******************************************************************

  DatosVentasTicket.CDSEmpresa.Close;
  DatosVentasTicket.CDSEmpresa.Open;

  EstadoIngAutomatio:= IngresoAutomatico; //Guardo el estado del Ingreso Autoamtico

  if (ScannerSerie='S') and (Balanza=nil) then
    ConectarBalanza.Execute;

  pcConfig.TabVisible              := DMMain_FD.UsuarioAdministrador;
  pcDetalleFactura.ActivePageIndex := 0;
  DatosVentasTicket.MargenUtilidad := DMMain_FD.GetMargenUtilidad;
end;

procedure TFormTicketVta.DBGrillaDetalleColEnter(Sender: TObject);
var i,Ind:Integer;
begin
  inherited;
  // Saltear Detalle si esta tildado
  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE') and (SaltearDetalle.Checked=True) then
    DBGrillaDetalle.SelectedIndex:=DBGrillaDetalle.SelectedIndex+1;
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
            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly := False
          else
            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly := True;
        end;

      if DMMain_FD.UsuarioActivo='master' then DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;

      if (DBGrillaDetalle.DataSource.DataSet.FieldByName('UNITARIO_TOTAL').AsFloat<=0) THEN
        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly  := False
    end;
  //******************************************************************************
  // permito o no la modificacion del Detalle de Factura
  //******************************************************************************
  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE' then
      DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly :=  not((DMMain_FD.UsuarioActivo='master')  or
                                                                          ((DMMain_FD.ModificaDetalleArticulo)));


  pnPrecios.Visible:=False;

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'CANTIDAD' then
    if Not(DMMain_FD.GetClienteConPrecio(DatosVentasTicket.CDSVentaCabCODIGO.AsString, DatosVentasTicket.CDSVentaDetCODIGOARTICULO.AsString)) then
      begin
        DMMain_FD.CDSPrecioXCant.Close;
        DMMain_FD.CDSPrecioXCant.Params.ParamByName('codigo').Value  :=DatosVentasTicket.CDSVentaDetCODIGOARTICULO.AsString;
        DMMain_FD.CDSPrecioXCant.Params.ParamByName('id_lista').Value:=DatosVentasTicket.CDSVentaCabLISTAPRECIO.AsInteger;
        DMMain_FD.CDSPrecioXCant.Open;
        if Not(DMMain_FD.CDSPrecioXCant.IsEmpty) then
          pnPrecios.Visible:=True
        else
          pnPrecios.Visible:=False;
      end;
  {

  if DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName = 'DETALLE' then
      DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly :=  not((DMMain_FD.UsuarioActivo='master')  or
                                                                          ((DMMain_FD.ModificaDetalleArticulo) and
                                                                          (DMMain_FD.StockEditDetalle(DatosVentas.CDSVentaDetCodigoArticulo.AsString ))));

}



                                                                          //    begin
//      DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
  //    if (DMMain_FD.ModificaDetalleArticulo)=True Then
//        begin
////          DMMain_FD.QStock_EditDetalle.Close;
////          DMMain_FD.QStock_EditDetalle.ParamByName('codigo').Value:= DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString;
////          DMMain_FD.QStock_EditDetalle.Open;
////          if (DMMain_FD.QStock_EditDetalle.Fields[0].AsString='S') then
//          if DMMain_FD.StockEditDetalle(DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString) then
//
//            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False
//          else
//            DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=True;
//          DMMain_FD.QStock_EditDetalle.Close;
//        end
//      else
//        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;
//      DMMain_FD.QStock_EditDetalle.Close;
//      if DMMain_FD.UsuarioActivo='master' then
//        DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;

//    end;
  //*********************************************************************************
  //*********************************************************************************

  IF DBGrillaDetalle.SelectedIndex = 0 THEN
    DBGrillaDetalle.SelectedIndex := 1;

  if DBGrillaDetalle.DataSource.DataSet.FieldByName('DESCUENTO').Visible=True Then
    begin
      if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName='TOTAL') AND nOT(ModificaTotal.Checked) Then
        begin
         for i:= 0 to DBGrillaDetalle.Columns.Count-1 do
           begin
            if DBGrillaDetalle.Columns[I].FieldName='DESCUENTO' Then
              Ind:=i;
           end;

          DBGrillaDetalle.SelectedIndex := ind;
        end;
    end
  else
    begin
       if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName='TOTAL') AND nOT(ModificaTotal.Checked) Then
         DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex-1;
         //DBGrillaDetalle.SelectedIndex := 4;
    end;

  if (DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].Field.FieldName='TOTAL') AND (ModificaTotal.Checked) Then
   // DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex-1;
    DBGrillaDetalle.Columns[DBGrillaDetalle.SelectedIndex].ReadOnly:=False;



  spProduccion.Enabled    :=  DBGrillaDetalle.DataSource.DataSet.FieldByName('DE_PRODUCCION').AsString='S';

  if (DBGrillaDetalle.SelectedIndex=3) and  (spProduccion.Enabled) then
    EditarProduccion.Execute;


//  IF (DBGrillaDetalle.SelectedIndex = 3) and (Balanza<>nil) THEN
//    sbEstado.Panels[0].Text:= 'F6 Desh.Ing.Aut-F11:Lst Mov.Artículo elegido'
//  else
//    sbEstado.Panels[0].Text:= 'F6 Desh.Ing.Aut-F11:Lst Mov.Artículo elegido-Alt+Z Lee balanza';
//
//  if (ScannerSerie='S') and (Balanza=nil) then
//    ConectarBalanza.Execute;

  if (DatosVentasTicket.CDSVentaDetUNIDAD.Value='KGR') or (DatosVentasTicket.CDSVentaDetUNIDAD.Value='KGS') then
    IF (DBGrillaDetalle.SelectedIndex = 3) and (Balanza<>nil) THEN
      LeerPeso.Execute;

end;

procedure TFormTicketVta.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormTicketVta.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if DBGrillaDetalle.SelectedIndex<1 then
    DBGrillaDetalle.SelectedIndex:=1;
  sbEstado.Panels[0].Text:='F6 Desh.Ing.Aut-F11:Lst Mov.Artículo elegido';
  if DMMain_FD.ModificaPrecioVta=False Then
    sbEstado.Panels[0].Text:=sbEstado.Panels[0].Text+'-F3: Autorizar Cambio de Precio';
end;

procedure TFormTicketVta.DBGrillaDetalleExit(Sender: TObject);
begin
  inherited;
  FormTicketVta.sbEstado.Panels[0].Text:='';
  FormTicketVta.sbEstado.Panels[1].Text:='';
end;

procedure TFormTicketVta.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if ((key = vk_down) or (key = vk_up)) and
      (DBGrillaDetalle.SelectedIndex=1 ) and
      (DatosVentasTicket.CDSVentaDet.State in [dsinsert,dsedit]) then
    begin
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount=0) Then
       Key:=0;
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) and
        (Key= vk_down) and
        (DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString='') Then
       Key:=0;
     if (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) and
        (Key= vk_Up) and
        (DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString='') //and
       // (DatosVentasCtdo.wwCDSVentaDet.State in [dsInsert])  Then
         then
          // begin
         DatosVentasTicket.CDSVentaDet.Cancel;
//         Sysutils.Abort;
        //Key:=0;
    end;

  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
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
              DBGrillaDetalle.SelectedIndex := 6;
      key := 0;
    END;
  if ((key= Vk_F3) and ((DMMain_FD.ModificaPrecioVta=False)) and (DBGrillaDetalle.SelectedIndex in [2,4,5])) Then
    begin
      if not (Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(FormTicketVta);
      FormLogin.ShowModal;
      DBGrillaDetalle.Columns[2].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[4].ReadOnly:=Not(FormLogin.Tag=1);
      DBGrillaDetalle.Columns[5].ReadOnly:=Not(FormLogin.Tag=1);
      key:=0;
    end;
  

end;

procedure TFormTicketVta.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  //FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Param3:=3;

  FormBuscadorArticulos.ListaPrecio := DatosVentasTicket.CDSVentaCabLISTAPRECIO.Value;
  FormBuscadorArticulos.Esquema     := DMMain_FD.GetEsquemaLista(DSBase.DataSet.FieldByName('CODIGO').AsString);


  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);

end;

procedure TFormTicketVta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  IF (Shift=[ssCtrl]) and (Key=VK_DELETE) and (DMMain_FD.UsuarioAdministrador=True) Then
    Borrar.Execute
  else
    if (Key=VK_F4) and (DSBase.State<>dsBrowse) Then
      begin
        if (dbeDscto.Enabled) and (dbeDscto.Visible)
           and (pcDetalleFactura.ActivePageIndex=0) then
         dbeDscto.SetFocus;
      end;


end;

procedure TFormTicketVta.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if ((Key = #13) or (Key=#27)) and
    (not (ActiveControl is TListBox)) Then
  inherited;
end;

procedure TFormTicketVta.FormResize(Sender: TObject);
begin
  inherited;
  if FormTicketVta<>nil then
    if FormTicketVta.Width<>780 then
      FormTicketVta.Width:=780;
end;

procedure TFormTicketVta.FormShow(Sender: TObject);
var sDirectorio:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_TK';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=13
  else
    Papelera.ImageIndex:=12;

  CargarTfrxDBDatasetsEnGrilla;

  if FileExists(NombreArchivo) then
    CargarNombresDesdeArchivo;
end;

procedure TFormTicketVta.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosVentasTicket.CDSBuscaSucursal.Close;
  DatosVentasTicket.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosVentasTicket.CDSVentaCabSucursalSetText(DatosVentasTicket.CDSVentaCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosVentasTicket.CDSBuscaSucursal.Close;
end;

procedure TFormTicketVta.AnularExecute(Sender: TObject);
var Detalle:string;
begin
  inherited;
  if DatosVentasTicket.CDSVentaCabANULADO.Value='S' Then
    raise Exception.Create('Ya fue anulado....');

  if (DMMain_FD.UsuarioAdministrador<>True) Then
    raise Exception.Create('No esta Autorizado para esta operacióno....');

  if DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S' Then
    raise Exception.Create('Tk.Factura Electronica, no se puede anular, hacer Nota de Credito....');

  if Not(DSBase.DataSet.IsEmpty) Then
    begin
      IF MessageDlg('Ud. está por hacer una operación de' + #13 + 'anulación.....' + #13 +
        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
        BEGIN
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatoNew     :=IntToStr(DatosVentasTicket.CDSVentaCabID_FC.Value);
            TipoCpbte   :=DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
            DatosVentasTicket.CDSVentaCab.Edit;
            DatosVentasTicket.CDSVentaCabANULADO.Value := 'S';
            //    DatosVentas.wwCDSVentaCab.Post;
            if DatosVentasTicket.Renglones<DatosVentasTicket.CDSVentaDet.RecordCount Then
              DatosVentasTicket.Renglones:=DatosVentasTicket.CDSVentaDet.RecordCount;

              // **** Ingreso en el Log File  **************

            Detalle:=  'Anulación Tk.Venta Ctdo.: '+
                       DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                       ' Cliente: '+
                       DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                       ' Importe: '+
                       FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);


            DMMain_FD.LogFileFD(0,2,Detalle,'TKCVTA');

            {
            DMStoreProcedure.spGravarLogDBX.Close;
            DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 2;
            DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Anulación Tk.Venta Ctdo.: '+
                                                                   DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                                                                   ' Cliente: '+
                                                                   DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                                                                   ' Importe: '+
                                                                   FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);
            DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='TKCVTA';
            DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
            DMStoreProcedure.spGravarLogDBX.ExecProc;
            DMStoreProcedure.spGravarLogDBX.Close;
            }

            DatosVentasTicket.CDSVentaCab.Post;
            DatosVentasTicket.CDSVentaCab.ApplyUpdates(0);
             // ******************************************
              DMMain_FD.fdcGestion.Commit;
              Recuperar.Execute;
             // Confirma.Execute;
           except
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('No se pudo realizar la anulación....');
           end;
        END;
     end
   else
      ShowMessage('No hay comprobante para anular....');
end;

procedure TFormTicketVta.AplicaLibroIvaExecute(Sender: TObject);
var Cadena:string;
begin
  inherited;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if DSBase.DataSet.FieldByName('INGRESA_LIBRO_IVA').Value='S' then
        Cadena :=' Actualmente En Libro de IVA..'
      else
        Cadena :=' Actualmente Fuera del Libro de IVA..';
      Cadena:=DSBase.DataSet.FieldByName('TipoCpbte').AsString+'-'+
              DSBase.DataSet.FieldByName('ClaseCpbte').AsString+'-'+
              DSBase.DataSet.FieldByName('NroCpbte').AsString+' ';

      if MessageDlg('Esta por cambiar el Estado de Factura de Libro Iva.. Seguro? '+
                     Cadena,mtConfirmation,mbYesNo,0,mbNo)=mrYes then
       begin
         DMMain_FD.fdcGestion.StartTransaction;
         try
           DMMain_FD.LogFileFD(0,2,'Cambia Estado Libro IVA.'+Cadena+
                                   ' Cliente: '+DSBase.DataSet.FieldByName('RAZONSOCIAL').Value+
                                   ' Importe: '+FormatFloat('0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat),
                                   'FACVTA');

           DMMain_FD.SPAplicarLibroIva.Close;
           DMMain_FD.SPAplicarLibroIva.ParamByName('id').Value   := DSBase.DataSet.FieldByName('ID_FC').Value;
           DMMain_FD.SPAplicarLibroIva.ParamByName('Tipo').Value := 'V';
           DMMain_FD.SPAplicarLibroIva.ExecProc;
           DMMain_FD.fdcGestion.Commit;
           DMMain_FD.SPAplicarLibroIva.Close;

         except
           DMMain_FD.fdcGestion.Rollback;
         end;
         recuperar.Execute;
       end;
    end;
end;


procedure TFormTicketVta.BorrarCAEExecute(Sender: TObject);
begin
  //inherited;
  if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='N') and (StrToFloat(DatosVentasTicket.CDSVentaCabCAE.AsString)<=0) then
    Raise Exception.Create (' No es Tk Electrónico ....');

  IF (NOT (DatosVentasTicket.CDSVentaCab.IsEmpty)) and (DMMain_FD.UsuarioAdministrador) THEN
    BEGIN
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // Borrado de Cae LOG
        DMMain_FD.LogFileFD(0,2,'Borrado de CAE Tk.Ctdo.Nro: '+
                              DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                             ' Cliente: '+
                              DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                             ' Importe Tk: '+
                              FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.asfloat)+
                             ' Nro.CAE.:'+DatosVentasTicket.CDSVentaCabCAE.Value,
                             ' FACVTA');
        // ******************************************
        DMStoreProcedure.QBorrarCAEFD.Close;
        DMStoreProcedure.QBorrarCAEFD.ParamByName('id').Value :=DatosVentasTicket.CDSVentaCabID_FC.Value;
        DMStoreProcedure.QBorrarCAEFD.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
        DMStoreProcedure.QBorrarCAEFD.Close;
      except
         DMMain_FD.fdcGestion.Rollback;
         DMStoreProcedure.QBorrarCAEFD.Close;
      end;
      Recuperar.Execute;
    END;

end;

procedure TFormTicketVta.BorrarExecute(Sender: TObject);
var Id_Caja_Actual:integer;
Detalle:string;
begin
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasTicket.CDSVentaCabCAE.AsString)>0) then
        Raise Exception.Create ('Ticket Electrónico con CAE, no se puede borrar....');

      if (DMMain_FD.UsuarioAdministrador) Then
        begin
          if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
            if Not(DatosVentasTicket.CDSVentaCab.IsEmpty) Then
              begin
                Id_caja_Actual := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
                DMMain_FD.fdcGestion.StartTransaction;
                try
                  if (CajaCerrada) then
                    begin
                      DatosVentasTicket.QReAbrirCaja.Close;
                      DatosVentasTicket.QReAbrirCaja.ParamByName('id_caja').Value:= Id_caja_Actual;
                      DatosVentasTicket.QReAbrirCaja.ExecSQL;
                      DatosVentasTicket.QReAbrirCaja.Close;
                      DMMain_FD.LogFileFD(0,4,'Re-Apertura de caja para borrar Tk','TKCVTA');
                    end;
                    // **** Ingreso en el Log File  **************
                  Detalle:= 'Borrado Tk.Venta Ctdo.(FormTk): '+
                            DatosVentasTicket.CDSVentaCabNROCPBTE.Value+'('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')'+
                            ' Cliente: '+
                            DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                            ' Importe: '+
                            FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);

                  DMMain_FD.LogFileFD(0,4,Detalle,'TKCVTA');

                  //****** Paso a la Paplera **********************************
                  Pasar_A_Papelera.Execute;
                  // **********************************************************

                  DatosVentasTicket.CDSVentaCab.Delete;
                  DatosVentasTicket.CDSVentaCab.ApplyUpdates(0);

                  DMMain_FD.fdcGestion.Commit;

                  DBGrillaDetalle.ReadOnly  :=False;
                  pnCabecera.Enabled        :=True;

                  DatosVentasTicket.CDSVentaCab.close;
                  DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
                  DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
                  DatosVentasTicket.CDSVentaCab.Open;

                  DatosVentasTicket.CDSVentaDet.Close;
                  DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
                  DatosVentasTicket.CDSVentaDet.Open;

                  DatosVentasTicket.CDSImpuestos.Close;
                  DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
                  DatosVentasTicket.CDSImpuestos.Open;

                  FrameMovValoresIngreso1.CDSCajaMov.Close;
                  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
                  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
                  FrameMovValoresIngreso1.CDSCajaMov.Open;

                  FrameMovValoresIngreso1.CDSChe3.Close;
                  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
                  FrameMovValoresIngreso1.CDSChe3.Open;

                  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
                  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
                  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

                  FrameMovValoresIngreso1.CDSTransBco.Close;
                  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
                  FrameMovValoresIngreso1.CDSTransBco.Open;

                  FrameMovValoresIngreso1.ceCaja.Text       :='';
                  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
                  FrameMovValoresIngreso1.Id_Caja           :=0;
                  if Anulado<>nil Then FreeAndNil(Anulado);

                  if (CajaCerrada) then   // es que la abri y la cierro de nuevo
                    begin
                      DatosVentasTicket.QCerrarCaja.Close;
                      DatosVentasTicket.QCerrarCaja.ParamByName('id_caja').Value := Id_caja_Actual;
                      DatosVentasTicket.QCerrarCaja.ExecSQL;
                      DatosVentasTicket.QCerrarCaja.Close;
                      DMMain_FD.LogFileFD(0,4,'Cierre de la reapertura para borrado de Tk','TKCVTA');
                    end;
                except
                  DMMain_FD.fdcGestion.Rollback;
                  ShowMessage('Transaccion no finalizada....!');
                end;
              end
            else
              ShowMessage('No hay registro Seleccionado');
         end
      else
        ShowMessage('Operación no permitida');
    end;
  pcDetalleFactura.ActivePageIndex := 0;
  Generado:=False;
end;

procedure TFormTicketVta.BuscadorVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosVentasTicket.CDSBuscaVendedor.Close;
  DatosVentasTicket.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
    DatosVentasTicket.CDSVentaCabVENDEDORSetText(DatosVentasTicket.CDSVentaCabVENDEDOR,comBuscadorVendedor.Id);
  DatosVentasTicket.CDSBuscaVendedor.Close;

end;

procedure TFormTicketVta.BuscaProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosVentasTicket.CDSVentaCabPROVEEDORSetText(DatosVentasTicket.CDSVentaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
    end;

end;

procedure TFormTicketVta.rxcVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosVentasTicket.CDSVentaCabVENDEDOR.Clear;
        DatosVentasTicket.CDSVentaCabMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormTicketVta.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  //ClientePorDefecto:=''; // por que lo puse en vacio el cliente por defecto?????
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    DatosVentasTicket.CDSVentaCabCodigoSetText(DatosVentasTicket.CDSVentaCabCodigo,FormBuscadorClientes.Codigo);

end;

procedure TFormTicketVta.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COMPUSER';
//  DMMain_FD.QOpciones.Open;
//  if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='N') then
  if Not DMMain_FD.CpbtePorUsuario then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''V'' and '+
                                                     '(tipo_comprob=''TK'') and (( desgloza_iva=:desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by sucursal,tipo_comprob ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosVentasTicket.CDSVentaCabSucursal.Value;
      if FiltraCpbteCondIva='S' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentasTicket.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';
    end
  else
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select cpbe.* from comprobantes_usuarios c '+
                            'left join comprobantes cpbe on cpbe.id_comprobante=c.id_comprobante '+
                            'where c.id_usuario=:usuario and sucursal=:suc and compra_venta=''V'' and '+
                            '(tipo_comprob=''TK'') and (( desgloza_iva=:desglozaiva ) or ( :desglozaiva = ''*'' ) ) order by sucursal,tipo_comprob ';

      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value     := DatosVentasTicket.CDSVentaCabSucursal.Value;
      if FiltraCpbteCondIva='S' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value
      else
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';

      // por que si no tiene el dato del cliente este campo esta vacio por lo que lo
      // lleno con un asterisco para que el Qry no de error
      if DatosVentasTicket.CDSVentaCabDESGLOZAIVA.AsString='' Then
        DMBuscadores.CDSBuscaComprob.Params.ParamByName('DesglozaIva').Value := '*';

      DMBuscadores.CDSBuscaComprob.Params.ParamByName('usuario').Value := DMMain_FD.UsuarioActivoId;
    end;

//  DMMain_FD.QOpciones.Close;
  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes :=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
end;

procedure TFormTicketVta.btGuardarArchivoClick(Sender: TObject);
begin
  inherited;
  GuardarNombresEnArchivo;
end;

procedure TFormTicketVta.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasTicket.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentasTicket.CDSVentaCabLETRAFAC.Clear;
      DatosVentasTicket.CDSVentaCabSUCFAC.Clear;
      DatosVentasTicket.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormTicketVta.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasTicket.CDSVentaCabSUCURSAL.Clear;
      DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasTicket.CDSVentaCabMUESTRASUCURSAL.Clear;
      DatosVentasTicket.CDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentasTicket.CDSVentaCabLETRAFAC.Clear;
      DatosVentasTicket.CDSVentaCabSUCFAC.Clear;
      DatosVentasTicket.CDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormTicketVta.RxDBComboEdit1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentasTicket.CDSVentaCabCODIGO.Clear;
      DatosVentasTicket.CDSVentaCabNOMBRE.Clear;
      DatosVentasTicket.CDSVentaCabLDR.Clear;
      DatosVentasTicket.CDSVentaCabMUESTRALDR.Clear;
      DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentasTicket.CDSVentaCabMUESTRACOMPROBANTE.Clear;
    end;
end;

procedure TFormTicketVta.SaltearDetalleClick(Sender: TObject);
begin
  inherited;
  SaltearDetalle.Checked:=Not(SaltearDetalle.Checked);
end;

procedure TFormTicketVta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFactura.DesignReport;
end;

procedure TFormTicketVta.spClienteModifClick(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.FieldByName('Nombre').AsString<>'' then
    begin
      DMMain_FD.ModificarDatosCliente(DSBase);
    end;
end;

procedure TFormTicketVta.TransformarTkExecute(Sender: TObject);
var estado,caja:integer;
convalores:boolean;
Detalle:String;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DMMain_FD.UsuarioAdministrador) and
     Not(DSBase.DataSet.IsEmpty) and (CajaCerrada=False)  then
  begin
    id_Old:=DatosVentasTicket.CDSVentaCabID_FC.Value;
    DatosVentasTicket.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
    DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
    DatosVentasTicket.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');

    DatosVentasTicket.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtacab.xml');
    DatosVentasTicket.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtadet.xml');
    DatosVentasTicket.CDSImpuestos.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaImp.XML');

//    ExportarXML.Execute;
    if Not(Assigned(FormTransformaFactura)) then
      FormTransformaFactura:=TFormTransformaFactura.Create(FormTicketVta);
    FormTransformaFactura.sucursal := DSBase.DataSet.FieldByName('sucursal').Value;
    FormTransformaFactura.deposito := DSBase.DataSet.FieldByName('deposito').Value;
    FormTransformaFactura.Numero   := DSBase.DataSet.FieldByName('NumeroFac').Value;
    FormTransformaFactura.Prefijo  := DSBase.DataSet.FieldByName('SucFac').Value;
    FormTransformaFactura.Letra    := DSBase.DataSet.FieldByName('LetraFac').Value;
    FormTransformaFactura.Fiscal   := '*';
    FormTransformaFactura.Showmodal;
    if (FormTransformaFactura.Transformada )then
      begin
        convalores:=false;
        DMMain_FD.fdcGestion.StartTransaction;
        try
          if (DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='TK')  then
            convalores:=True;
//          if convalores then
//            begin
//               DMStoreProcedure.spAbreCaja.Close;
//               DMStoreProcedure.spAbreCaja.ParamByName('idcomprobante').AsInteger := DatosVentasTicket.CDSVentaCabID_FC.AsInteger;
//               DMStoreProcedure.spAbreCaja.ParamByName('tipocpbte').AsString      := DatosVentasTicket.CDSVentaCabTIPOCPBTE.AsString;
//               DMStoreProcedure.spAbreCaja.ParamByName('clasecpbte').AsString     := DatosVentasTicket.CDSVentaCabCLASECPBTE.AsString;
//               DMStoreProcedure.spAbreCaja.ExecProc;
//               estado:=DMStoreProcedure.spAbreCaja.ParamByName('estadoactual').AsInteger;
//               caja  :=DMStoreProcedure.spAbreCaja.ParamByName('caja').Value;
//               DMStoreProcedure.spAbreCaja.Close;
//             end;
          DMStoreProcedure.spBorraFcVtaCabFD.Close;
          DMStoreProcedure.spBorraFcVtaCabFD.ParamByName('id').Value:=DatosVentasTicket.CDSVentaCabID_FC.Value;
          DMStoreProcedure.spBorraFcVtaCabFD.ExecProc;
          DMStoreProcedure.spBorraFcVtaCabFD.Close;
//          if convalores then
//            begin
//              DMStoreProcedure.spCierraCaja.Close;
//              DMStoreProcedure.spCierraCaja.ParamByName('id_caja').Value := caja;
//              DMStoreProcedure.spCierraCaja.ParamByName('estado').Value  := estado;
//              DMStoreProcedure.spCierraCaja.ExecProc;
//              DMStoreProcedure.spCierraCaja.Close;
//            end;
          // **** Ingreso en el Log File  **************
          Detalle:= 'Transformación Cpbte.Tk: '+
                    DatosVentasTicket.CDSVentaCabTIPOCPBTE.OldValue+'-'+
                    DatosVentasTicket.CDSVentaCabCLASECPBTE.OldValue+'-'+
                    DatosVentasTicket.CDSVentaCabNROCPBTE.OldValue+
                    ' Cliente: '+
                    DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                    ' Importe: '+
                    FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);
           DMMain_FD.LogFileFD(0,5,Detalle,'TKCVTA');
           // ******************************************
           //DMMain_FD.fdcGestion.Commit;
           DMMain_FD.fdcGestion.Commit;
        except
           DMMain_FD.fdcGestion.Rollback;
           ShowMessage('No se pudo realizar las operaciones de caja...');
        end;

        DatosVentasTicket.CDSVentaCab.close;
        DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
        DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVentaCab.Open;

        DatosVentasTicket.CDSVentaDet.Close;
        DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVentaDet.Open;

        DatosVentasTicket.CDSImpuestos.Close;
        DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSImpuestos.Open;

        DatosVentasTicket.CDSVtaSubDetalle.Close;
        DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
        DatosVentasTicket.CDSVtaSubDetalle.Open;

        FrameMovValoresIngreso1.CDSCajaMov.Close;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
        FrameMovValoresIngreso1.CDSCajaMov.Open;

        FrameMovValoresIngreso1.CDSChe3.Close;
        FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSChe3.Open;

        FrameMovValoresIngreso1.CDSMovEfectivo.Close;
        FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovEfectivo.Open;

        FrameMovValoresIngreso1.CDSMovTCredito.Close;
        FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSMovTCredito.Open;

        FrameMovValoresIngreso1.CDSTransBco.Close;
        FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
        FrameMovValoresIngreso1.CDSTransBco.Open;

        FrameMovValoresIngreso1.ceCaja.Text       :='';
        FrameMovValoresIngreso1.edMuestraCaja.Text:='';
        FrameMovValoresIngreso1.Id_Caja           :=0;

      end;
  end
    else ShowMessage('caja cerrar o no autorizado');
end;

procedure TFormTicketVta.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #13) THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 4) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF (DBGrillaDetalle.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            begin
              DBGrillaDetalle.DataSource.DataSet.Append;
              DBGrillaDetalle.SelectedIndex := 1;
            end
          else
            IF (not(DBGrillaDetalle.DataSource.DataSet.Eof)) and (Not(DSBase.State in [dsBrowse])) and
              (DBGrillaDetalle.DataSource.DataSet.RecordCount>0) THEN
              begin
                DBGrillaDetalle.DataSource.DataSet.Append;
                DBGrillaDetalle.SelectedIndex := 1;
              end;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGrillaDetalle.SelectedField = DatosVentasTicket.CDSVentaDetCodigoArticulo THEN
          BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel
      else
        if DBGrillaDetalle.SelectedIndex=4 Then
          DBGrillaDetalle.DataSource.DataSet.Edit;

end;

procedure TFormTicketVta.DBText16Click(Sender: TObject);
begin
  inherited;
  VerNotaCredito.Execute;
end;

procedure TFormTicketVta.DesAnularExecute(Sender: TObject);
var Detalle:string;
begin
  inherited;
  if DatosVentasTicket.CDSVentaCabANULADO.Value='N' Then
    raise Exception.Create('No es un Comprobante anulado....');
  if (DMMain_FD.UsuarioAdministrador<>True) Then
    raise Exception.Create('No esta Autorizado para esta operacióno....');

  if Not(DSBase.DataSet.IsEmpty) Then
    begin
      IF MessageDlg('Va a Restaurar una anulación.....' +
        #13 +
        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
        BEGIN
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatoNew     :=IntToStr(DatosVentasTicket.CDSVentaCabID_FC.Value);
            TipoCpbte   :=DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
            DatosVentasTicket.CDSVentaCab.Edit;
            DatosVentasTicket.CDSVentaCabANULADO.Value := 'N';
            //    DatosVentas.wwCDSVentaCab.Post;
            if DatosVentasTicket.Renglones<DatosVentasTicket.CDSVentaDet.RecordCount Then
              DatosVentasTicket.Renglones:=DatosVentasTicket.CDSVentaDet.RecordCount;

              // **** Ingreso en el Log File  **************
              Detalle:= 'Des-Anulación Tk.Venta Ctdo.: '+
                         DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                         ' Cliente: '+
                         DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                         ' Importe: '+
                         FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);

              DMMain_FD.LogFileFD(0,2,Detalle,'TKCVTA');

              {
              DMStoreProcedure.spGravarLogDBX.Close;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Tipo').Value      := 2;
              DMStoreProcedure.spGravarLogDBX.ParamByName('Detalle').AsString:= 'Des-Anulación Tk.Venta Ctdo.: '+
                                                                   DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                                                                   ' Cliente: '+
                                                                   DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                                                                   ' Importe: '+
                                                                   FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);
              DMStoreProcedure.spGravarLogDBX.ParamByName('Origen').AsString   :='TKCVTA';
              DMStoreProcedure.spGravarLogDBX.ParamByName('Usuario').AsString  :=DMMain_FD.UsuarioActivo;
              DMStoreProcedure.spGravarLogDBX.ExecProc;
              DMStoreProcedure.spGravarLogDBX.Close;
              }
              DatosVentasTicket.CDSVentaCab.Post;
              DatosVentasTicket.CDSVentaCab.ApplyUpdates(0);
             // ******************************************
              DMMain_FD.fdcGestion.Commit;
              Recuperar.Execute;
             // Confirma.Execute;
           except
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('No se pudo realizar la anulación....');
           end;
        END;
     end
   else
     ShowMessage('No hay comprobante para desanular....');

end;

procedure TFormTicketVta.DesmarcarImpresaExecute(Sender: TObject);
begin
//  inherited;

  IF (NOT (DatosVentasTicket.CDSVentaCab.IsEmpty)) and (DatosVentasTicket.CDSVentaCab.State=dsBrowse)  THEN
    BEGIN
       CpbteNuevo :='N';
       DatosVentasTicket.CDSVentaCab.Edit;
       if DatosVentasTicket.CDSVentaCabIMPRESO.Value<>'N' Then
         DatosVentasTicket.CDSVentaCabIMPRESO.Value := 'N'
       else
        if DatosVentasTicket.CDSVentaCabIMPRESO.Value='N' Then
           DatosVentasTicket.CDSVentaCabIMPRESO.Value := 'S';
       if DatosVentasTicket.CDSVentaCab.State<>dsBrowse then
         DatosVentasTicket.CDSVentaCab.Post;
       DatoNew:=DatosVentasTicket.CDSVentaCabID_FC.AsString;

       Confirma.Execute;
     END;
end;

procedure TFormTicketVta.DBGrillaDetalleDblClick(Sender: TObject);
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

procedure TFormTicketVta.DBGrillaDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
const
  clPaleGreen = TColor($CCFFCC);
  clPaleRed =   TColor($CCCCFF);
begin
  inherited;
  if (DatosVentasTicket.CDSVentaDetDE_PRODUCCION.AsString='S') then
    DBGrillaDetalle.Canvas.Font.Color:=clBlue;

  if (DatosVentasTicket.CDSVentaDetUnitario_Total.AsFloat < DatosVentasTicket.CDSVentaDetCosto_Total.AsFloat) Then
    begin
      DBGrillaDetalle.canvas.brush.color := clPaleRed;
   end;

  if (gdFocused in State) then
    begin
      DBGrillaDetalle.canvas.brush.color := ClBlack;
      DBGrillaDetalle.canvas.Font.color  := clWhite;
    end;


    DBGrillaDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormTicketVta.CancelarExecute(Sender: TObject);
var Continua:Boolean;
begin
  pnPrecios.Visible:=False;
  Continua:=True;
  if (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat>0) and (DMMain_FD.UsuarioActivo<>'master')  then
    begin
//      DMMain_FD.QOpciones.Close;
//      DMMain_FD.QOpciones.ParamByName('opcion').Value := 'ESCCPBTE';
//      DMMain_FD.QOpciones.Open;
//      if (Copy(DMMain_FD.QOpciones.Fields[0].AsString, 1, 1) = 'S') then
      if DMMain_FD.EscCpbte then
        begin
          if not (Assigned(FormClaveVerificada)) then
            FormClaveVerificada := TFormClaveVerificada.Create(Self);
          FormClaveVerificada.ShowModal;
          if FormClaveVerificada.ModalResult=mrok then
            Continua:=True
          else
            Continua:=False;
        end;
    end;

   if Continua=False then
    Exit;

  if (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat>0) then
    if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
      Exit;

  if Continua=False then
    Exit;

  if (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat>0) then
    DMMain_FD.LogFileFD(1,2,'Cancelacion de Ticket '+'('+DatosVentasTicket.CDSVentaCabID_FC.AsString+') Importe '+
                                                         FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat)+' '+
                                                         DatosVentasTicket.CDSVentaCabNROCPBTE.AsString ,
                                                        'FACVTA');

  if Anulado<>nil Then FreeAndNil(Anulado);
  FrameMovValoresIngreso1.QTc.Cancel;
  FrameMovValoresIngreso1.CDSMovTCredito.Cancel;
  FrameMovValoresIngreso1.CDSMovEfectivo.Cancel;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;


  if DatosVentasTicket.CDSVentaDet.State in [dsInsert,dsEdit] Then
     DatosVentasTicket.CDSVentaDet.Cancel;
  if DatosVentasTicket.CDSImpuestos.State in [dsInsert,dsEdit] Then
    DatosVentasTicket.CDSImpuestos.Cancel;
   if DatosVentasTicket.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentasTicket.CDSVtaSubDetalle.Cancel;

  DatosVentasTicket.CDSVentaCab.close;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaCab.Open;

  DatosVentasTicket.CDSVentaDet.Close;
  DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaDet.Open;

  DatosVentasTicket.CDSImpuestos.Close;
  DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSImpuestos.Open;

  DatosVentasTicket.CDSVtaSubDetalle.Close;
  DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVtaSubDetalle.Open;


  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;
  inherited;
  if TForm(Self.Owner).Name='FormCajaResumen' then
    Salir.Execute;

  pcDetalleFactura.ActivePageIndex := 0;
  Generado:=False;
//  CodigosSeries.Clear;
  IF btNuevo.Enabled THEN
    btNuevo.SetFocus;
end;

// Calculo Recarog de la Tarjeta de Credito
procedure TFormTicketVta.CancelarRecargoTCExecute(Sender: TObject);
var ImporteOld:Real;
begin
  inherited;
  if ItemRedondeo<>'*' Then
    begin
      if DatosVentasTicket.CDSVentaDet.Locate('CODIGOARTICULO',ItemRedondeo,[]) Then
        begin
          //DatosVentasCtdo.CDSVentaDet.Last;
          DatosVentasTicket.CDSVentaDet.delete;
          DatosVentasTicket.CDSVentaDet.First;
          ItemRedondeo:='*';
        end;
    end;
  DatosVentasTicket.CDSVentaDet.First;
  while noT(DatosVentasTicket.CDSVentaDet.Eof) do
    begin
      DatosVentasTicket.CDSVentaDet.Edit;
      DatosVentasTicket.CDSVentaDetUNI_C_REC.Value:='N';

      // Si es con Iva discrimando Tomo el importe Sin Iva
      if (DatosVentasTicket.CDSVentaDetDesglozaIVA.Value='S') AND (FormTicketVta.DiscriminaIva='S')  Then
        DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,
                                                         FloatToStr(RoundTo(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL_OLD.Value,-3)))
      else
        // Si es Sin Iva discrimando Tomo el importe + Iva
        begin
          ImporteOld := DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL_OLD.Value;
          ImporteOld := ImporteOld + DatosVentasTicket.CDSVentaDetUNITARIO_IVA_OLD.Value;
          ImporteOld := RoundTo(ImporteOld,-4);
          ImporteOld := RoundTo(ImporteOld,-3);
          DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total, FloatToStr(ImporteOld));
        end;
      DatosVentasTicket.CDSVentaDet.Next;
    end;
// Recalcular.Execute;
end;


procedure TFormTicketVta.ceProveedorButtonClick(Sender: TObject);
begin
//  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosVentasTicket.CDSVentaCabPROVEEDORSetText(DatosVentasTicket.CDSVentaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
    end;
end;

procedure TFormTicketVta.ConectarBalanzaExecute(Sender: TObject);
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

procedure TFormTicketVta.ConfirmaExecute(Sender: TObject);
Var i:integer;
Dif:Extended;
Cuit :string;
Detalle:String;
begin
  pnPrecios.Visible := False;
  if (DMMain_FD.UsaFirma) and (Not(DMMain_FD.UsuarioActivo='master')) then
    begin
      if Not(Assigned(FormLogin)) then
        FormLogin:=TFormLogin.Create(Self);
      FormLogin.Usuario:=DMMain_FD.UsuarioActivo;
      FormLogin.Modo :=1;
      FormLogin.ShowModal;
      if FormLogin.Tag=0 then
        raise Exception.Create('Usuario no Valido de sesion....')
      else
        DatosVentasTicket.CDSVentaCabUSUARIO.Value:= FormLogin.Usuario;
    end;

  if (DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString='') and
     (DatosVentasTicket.CDSVentaDet.State in [dsInsert,dsEdit]) Then
        DatosVentasTicket.CDSVentaDet.Cancel;
  if DatosVentasTicket.CDSVentaDet.State in [dsInsert,dsEdit] Then
    DatosVentasTicket.CDSVentaDet.Post;
  if DatosVentasTicket.CDSVtaSubDetalle.State in [dsInsert,dsEdit] Then
    DatosVentasTicket.CDSVtaSubDetalle.Post;
  if ((DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.NewValue <> DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.OldValue)) and
     ( DatosVentasTicket.CDSVentaCabANULADO.Value<>'S') Then
    DatosVentasTicket.ReAsignarDetalle;

  Cuit:= Trim(DSBase.DataSet.fieldByName('CUIT').Value);
  Cuit:= ReplaceStr(Cuit,'-','');

  if  (Trunc(DMMain_FD.LimiteFactB)>0) and (DatosVentasTicket.CDSVentaCabTOTAL.Value>DMMain_FD.LimiteFactB) and
      ( (Cuit='') or (cuit='00000000000')) and  (DatosVentasTicket.CDSVentaCabLETRAFAC.Value='B') and
      (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') then
    begin
       if Not(Assigned(FormDatosClienteCabeceraCpbte)) Then
        FormDatosClienteCabeceraCpbte := TFormDatosClienteCabeceraCpbte.Create(Application);
      FormDatosClienteCabeceraCpbte.Tag :=7;
      FormDatosClienteCabeceraCpbte.ShowModal;

      Cuit:= Trim(DSBase.DataSet.fieldByName('CUIT').Value);
      Cuit:= ReplaceStr(Cuit,'-','');

      if Trim(Cuit)='' then
        Raise Exception.Create('No se Ingreso Doc/Cuit....')

    end;

  if CpbteNuevo='S' then
    DatosVentasTicket.CDSVentaCabFECHA_FISCAL.Value:=DatosVentasTicket.CDSVentaCabFECHAVTA.Value;


  if (FrameMovValoresIngreso1.SumaValores>0) and (DatosVentasTicket.CDSVentaCabANULADO.Value<>'S') and
    (DSBase.State=dsEdit)  Then
    begin
      IF FormatFloat(DatosVentasTicket.MascaraCabecera,DatosVentasTicket.CDSVentaCabTotal.AsFloat) <>
         FormatFloat(DatosVentasTicket.MascaraCabecera,FrameMovValoresIngreso1.SumaValores) THEN
        begin
          FrameMovValoresIngreso1.CDSCajaMov.First;
          while Not(FrameMovValoresIngreso1.CDSCajaMov.Eof) do
            begin
              if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=1 then
                begin
                  FrameMovValoresIngreso1.CDSCajaMov.Delete;
                  FrameMovValoresIngreso1.CDSCajaMov.First;
                end
              else
                FrameMovValoresIngreso1.CDSCajaMov.Next;
            end;
        end;
    end;

  if Not(ActivarDialogoValores1.Checked) then
    begin
      if (FrameMovValoresIngreso1.SumaValores<=0) and (DatosVentasTicket.CDSVentaCabANULADO.Value<>'S') Then
        IngresarEfectivo(DatosVentasTicket.CDSVentaCabTOTAL.AsFloat);
    end
  else
    if (ActivarDialogoValores1.Checked) then
      begin
        while FrameMovValoresIngreso1.CDSCajaMov.RecordCount>0 do
          FrameMovValoresIngreso1.CDSCajaMov.Delete;

        IF NOT (Assigned(FormValores)) THEN
          FormValores := TFormValores.Create(Self);
        FormValores.Venta    := RoundTo(DatosVentasTicket.CDSVentaCabTOTAL.AsFloat,-2);
        FormValores.Vuelto   := 0;
        FormValores.Efectivo := RoundTo(DatosVentasTicket.CDSVentaCabTOTAL.AsFloat,-2);


        FormValores.ShowModal;
        if FormValores.ModalResult=mrOk then
          begin
            if FormValores.MovTC.RecordCount>0 then
              begin
                DMMain_FD.QFPago_TC.Close;
                DMMain_FD.QFPago_TC.Open;
                FormValores.MovTC.First;
                While not(FormValores.MovTC.Eof) Do
                  begin
                    IngresarTCredito(IntToStr(FormValores.MovTC.FieldByName('ID_TARJETA').Value),
                                     DMMain_FD.QFPago_TC.Fields[0].AsString,
                                     FormValores.MovTC.FieldByName('NROCUPON').AsString,
                                     IntToStr(FormValores.MovTC.FieldByName('CUOTAS').AsInteger),
                                     FormValores.MovTC.FieldByName('IMPORTE').AsFloat);
                    FormValores.MovTC.Next;
                  end;
                DMMain_FD.QFPago_TC.Close;
              end;

            if FormValores.Efectivo>0 then
              IngresarEfectivo(FormValores.Efectivo-FormValores.Vuelto-FormValores.TCRecargoValor);

            DatosVentasTicket.CDSVentaCabVUELTO.Value              := FormValores.Vuelto;
            DatosVentasTicket.CDSVentaCabVALORES_RECIBIDOS.AsFloat := FormValores.TCreditoNeto +
                                                                      FormValores.Efectivo;
          end
        else
          Exit;
      end;

  TRY
    IF DatosVentasTicket.CDSVentaCabTotal.AsFloat<= 0 THEN
      RAISE
        Exception.Create('El comprobante no pude tener valor 0(cero).....!!!!');
    if (CpbteNuevo='S') and (Not(ControlLotes)) Then
      RAISE Exception.Create('Hay Lotes sin Asignar.....!!!!');
  FINALLY
  END;
  TRY
    //   IF CompararNumero(DatosVentasCtdo.wwCDSVentaCabTotal.Value,DatosMovValoresFacContado.SumaValores) Then
    //     ShowMessage('Numero igual');
//    IF FormatFloat(DatosVentasTicket.MascaraCabecera,DatosVentasTicket.CDSVentaCabTotal.AsFloat) <>
//       FormatFloat(DatosVentasTicket.MascaraCabecera,FrameMovValoresIngreso1.SumaValores) THEN
    dif := abs(RoundTo(DatosVentasTicket.CDSVentaCabTotal.AsFloat-FrameMovValoresIngreso1.SumaValores,-2));
    if ( Dif > 0) and ( Dif < 0.10) and (Not(IsZero(dif))) then
      begin
        IngresarEfectivo(dif);
        Dif := 0;
      end;

    IF (Not(IsZero(dif))) and (DatosVentasTicket.CDSVentaCabANULADO.Value<>'S') THEN
      RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                             'Ingresos por:'+FloatToStr(RoundTo(FrameMovValoresIngreso1.SumaValores,-2))+#13+
                             'Importe Cpbt:'+FloatToStr(RoundTo(DatosVentasTicket.CDSVentaCabTotal.AsFloat,-2)));
  FINALLY
  END;
  WITH DatosVentasTicket DO
    BEGIN
      DatoNew                    := IntToStr(CDSVentaCabID_FC.Value);
      TipoCpbte                  := CDSVentaCabTIPOCPBTE.Value;
      CDSVentaCabRENGLONES.Value := CDSVentaDet.RecordCount;
      CDSVentaCabDebe.ASFloat    := CDSVentaCabTotal.AsFloat;
       ///// // HayProduccion es control si hay articulos de produccion


      CDSVentaCab.Post;
      DMMain_FD.Facturado:=True;
      if CDSVentaCabANULADO.Value<>'S' Then
        InformarCambiosPrecio;   // da aviso por el log de los cambios de precio

      PrefijoDup:= DatosVentasTicket.CDSVentaCabSUCFAC.Value;
      NumeroDup := DatosVentasTicket.CDSVentaCabNUMEROFAC.Value;

//      if (DSBase.State=dsBrowse)  and (Not(dsBase.DataSet.IsEmpty))   and
//           (CpbteNuevo='S')         and (FormTicketVta.GenerarOProducion) and (DatosVentasTicket.HayProduccion)
//          Then
//            if (not PedirConfirmacionOP) or (MessageDlg('Hay Articulos de Produccion, y esta configurado su usuario para generar la Orden de Produccion, ' +
//                                                        ' ejecuta el procedimiento??',mtConfirmation,mbYesNo,0,mbNo)=mrYes)
//            then
//              GenerarRtoProduccion;


      inherited;

      Generado :=True;
      Recuperar.Execute;


      if (DuplicarFc) and (DatosVentasTicket.CDSVentaCabNUMEROFAC.Value<>NumeroDup)then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DMStoreProcedure.spcambiaNroFD.Close;
            DMStoreProcedure.spcambiaNroFD.ParamByName('ID').Value     := DatosVentasTicket.CDSVentaCabID_FC.AsInteger;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Tipo').Value   := DatosVentasTicket.CDSVentaCabTIPOCPBTE.ASString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Prefijo').Value:= DatosVentasTicket.CDSVentaCabSUCFAC.AsString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Numero').Value := NumeroDup;// DatosVentasCtdo.CDSVentaCabNUMEROFAC.AsString;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Compra_venta').Value :='V';
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha').Value  := DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime;
            DMStoreProcedure.spcambiaNroFD.ParamByName('Fecha2').Value := DatosVentasTicket.CDSVentaCabFECHAVTA.ASDateTime;
            DMStoreProcedure.spcambiaNroFD.ExecProc;

            DMMain_FD.LogFileFD(0,2,'Cambio Fecha/Nro Tk.Vta: Original:'+DatosVentasTicket.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasTicket.CDSVentaCabSUCFAC.AsString+'-'+
                                DatosVentasTicket.CDSVentaCabNUMEROFAC.AsString+'..Fecha Fiscal:'+dateToStr(DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime)+
                                 ' Nuevo   :'+DatosVentasTicket.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasTicket.CDSVentaCabSUCFAC.AsString+'-'+NumeroDup,
                                 'CAMBIONRO');
            DMMain_FD.fdcGestion.Commit;
            DMStoreProcedure.SPcambiaNroFD.Close;
          except
            DMStoreProcedure.spcambiaNroFD.Close;
            DMMain_FD.fdcGestion.Rollback;
          end;
          Recuperar.Execute;
        end;




      if (DuplicarFc=True) and (Not(DSBase.DataSet.IsEmpty)) Then
        begin
          if MessageDlg('Borra el comprobante anterior que fue duplicado?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
            begin
              DatosVentasTicket.QBorraFc.Close;
              DatosVentasTicket.QBorraFc.ParamByName('id').Value:=id_Old;
              DatosVentasTicket.QBorraFc.ExecSQL;
              DatosVentasTicket.QBorraFc.Close;
            end;
            // modificado mercadito
//          if MessageDlg('Corrige el Numero de Comprbante',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
//            begin
//              CambiarNro.Execute;
//            end;
          DuplicarFc:=False;
        end;
         // **** Ingreso en el Log File  **************
      if (CpbteNuevo='N') and (DatosVentasTicket.CDSVentaCabANULADO.Value<>'S') then // por que viene de una modificacion
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            Detalle:= 'Modificación Fac.Contado: '+
                       DatosVentasTicket.CDSVentaCabNROCPBTE.Value+
                       ' Cliente: '+
                       DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value+
                       ' Importe Nuevo: '+
                       FormatFloat('0.00',DatosVentasTicket.CDSVentaCabTOTAL.AsFloat)+
                       ' Importe Anterior :'+
                       FormatFloat('0.00',ImporteOriginal);
            DMMain_FD.LogFileFD(0,2,Detalle,'TKCVTA');
          // ******************************************
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('NO se ingreso registro en el LogFile....!');
          end;
        end;
       // **************************************DONE
     if DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.AsString = 'S' then
        Imprime:='N';

      { TODO -cConfirmar Grabaciones : Confirma las operaciones de Valores }
      if (TForm(Self.Owner).Name<>'FormCajaResumen') and (TForm(Self.Owner).Name<>'FormControlImpuestos') then
        begin
          if (TForm(Self.Owner).Name='FormImportacionFacturasVtaGral') Then
            Imprime:='N';

          IF (CpbteNuevo = 'S') and (CDSVentaCabCPTE_MANUAL.Value = 'N') and (Imprime='S') THEN
            Imprimir.Execute;

          if FormTicketVta.Visible then
            Modificar.Enabled              :=False;
          pcDetalleFactura.ActivePageIndex := 0;
          if FormTicketVta.Visible then
            btNuevo.SetFocus;
        end
      else
        Salir.Execute;
    END;
  if (DatosVentasTicket<>nil) and (CpbteNuevo='S') and
     (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and
     (TForm(Self.Owner).Name<>'FormCajaResumen') then
    Fiscalizar.Execute;
end;


procedure TFormTicketVta.ImprimirTkCambioClick(Sender: TObject);
begin
  inherited;
  ImprimirTkCambio.Checked:=Not(ImprimirTkCambio.Checked);
end;

procedure TFormTicketVta.ImprimirExecute(Sender: TObject);
var Imprime:Boolean;
DiscrIva,Cuit:String;
BEGIN
  DiscrIva                       := FormTicketVta.DiscriminaIva;
  frFactura.PrintOptions.Printer := PrNomCpbte;
  frFactura.SelectPrinter;
  FormTicketVta.DiscriminaIva    := 'S';
  Imprime:=False;
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
//  DMMain_FD.QOpciones.Open;
  DatosVentasTicket.CDSSucursal.Close;
  DatosVentasTicket.CDSSucursal.params.ParamByName('codigo').Value:=DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
  DatosVentasTicket.CDSSucursal.Open;

  DatosVentasTicket.QComprob.Close;
  DatosVentasTicket.QComprob.ParamByName('id').Value          := DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentasTicket.QComprob.ParamByName('suc').Value         := DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
  DatosVentasTicket.QComprob.ParamByName('DesglozaIva').Value := '*';
  DatosVentasTicket.QComprob.Open;

  if (DatosVentasTicket.QComprobNOMBREIMPRESORA.Value='') or (DatosVentasTicket.CDSVentaCabIMPRESO.Value='S') Then
    begin
      if chbPregunta.Checked=True then
        begin
          IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes Then
            Imprime:=True
          else
            Imprime:=False;
        end
      else
        Imprime:=True;

      if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (DatosVentasTicket.CDSVentaCabCAE.AsFloat<=0) then
        begin
          Imprime:=False;
          RAISE Exception.Create('Comprobante Electronico, debe tener CAE para imprimir.(2)');
        end;


      if Imprime=True then
        begin
          frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosVentasTicket.QComprobREPORTE.AsString);
          frFactura.PrintOptions.Copies :=DatosVentasTicket.QComprobCOPIAS.Value;

          // ***** Segun quien Fiscaliza verifico si no fue por datos de Sucursal ....
          Cuit  := AnsireplaceText(Trim(DatosVentasTicket.CDSEmpresaCUIT.Value),'-','');
          if Trim(DMMain_FD.Certificado_SUCURSAL)<>'' then
            begin
              FormTicketVta.CertificadoElectronico:=Trim(DMMain_FD.Certificado_SUCURSAL);
              Cuit:= AnsireplaceText(Trim(DMMain_FD.Cuit_SUCURSAL),'-','');
            end;

          Cuit := AnsireplaceText(CUIT,'-','');
          Cuit := AnsireplaceText(CUIT,'.','');
          // ***********************************************************************

          cuit:=copy('0000000000',1,11-Length(Trim(cuit)))+Trim(cuit);

          DatosVentasTicket.QComprob.Close;
         // DMMain_FD.QOpciones.Close;

          if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S')  then
            begin
              frFactura.Variables['CodigoBarra']  :=''''+DMMain_FD.CodigoBarraFcElectronica(Cuit+
                                                      Copy(DatosVentasTicket.CDSVentaCabMUESTRACODIGOAFIP.Value,2,2)+
                                                      DatosVentasTicket.CDSVentaCabSUCFAC.Value+
                                                      DatosVentasTicket.CDSVentaCabCAE.Value+
                                                      FormatDateTime('yyyymmdd',DatosVentasTicket.CDSVentaCabCAE_VENCIMIENTO.AsDateTime))+'''';
              frFactura.Variables['CodigoQR']         := '';
            end;

          frFactura.Variables['MascaraUnitario']  :=''''+DatosVentasTicket.MascaraDetalleUnitario+'''';
          frFactura.Variables['MascaraCantidad']  :=''''+DatosVentasTicket.MascaraDetalleCantidad+'''';
          frFactura.Variables['MascaraTotal']     :=''''+DatosVentasTicket.MascaraDetalleTotal+'''';
          frFactura.Variables['MascaraTotalGral'] :=''''+DatosVentasTicket.MascaraCabecera+'''';
          frFactura.Variables['MascaraIvaTasa']   :=''''+DatosVentasTicket.MascaraIvaTasa+'''';
          frFactura.Variables['MascaraIvaImporte']:=''''+DatosVentasTicket.MascaraIvaImporte+'''';
          frFactura.PrepareReport;
          frFactura.PrintOptions.ShowDialog:=True;

          if chbPreview.Checked=True Then
            frFactura.ShowReport
          else
            begin
              frFactura.PrintOptions.ShowDialog:=False;
              frFactura.Print;
            end;
          if (Impresa) and (DatosVentasTicket.CDSVentaCabIMPRESO.Value='N') then
            begin
              if Not(DMStoreProcedure.MarcarFcVtaImpresa(DatosVentasTicket.CDSVentaCabID_FC.Value)) Then
                ShowMessage('Comprobante no fue marcado como Impreso ....!')
              else
                Recuperar.Execute;
            end;
        end;
      // esto de sectores es de las comandas
      ImprimeSectores;
    end;
  FormTicketVta.DiscriminaIva:=DiscrIva;
  DatosVentasTicket.CDSVentaDet.Refresh;
  if (Assigned(FormTicketVta)) and ((FormTicketVta.Visible=True) and (btNuevo.Enabled=True)) then
    btNuevo.SetFocus;
end;


procedure TFormTicketVta.MarcarComoImpresaalDuplicarOpcion1Click(
  Sender: TObject);
begin
  inherited;
  MarcarComoImpresaalDuplicarOpcion1.Checked:=Not(MarcarComoImpresaalDuplicarOpcion1.Checked);
end;

procedure TFormTicketVta.ModificarDatosCabeceraExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and Not(DSBase.DataSet.IsEmpty) then
    if ( ((DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S') and (DSBase.DataSet.FieldByName('CAE').Value<=0)) or
         (DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value<>'S') ) then
      begin
        DMMain_FD.ModificarDatosCliente(DSBase);
        DatosVentasTicket.CDSVentaCab.ApplyUpdates(-1);
        //Confirma.Execute;
      end;
end;

procedure TFormTicketVta.ModificarExecute(Sender: TObject);
var ControlFondos:Boolean;
begin
 // inherited;
  ControlFondos:=True;
  if (DMMain_FD.UsuarioActivo='master') then
    if MessageDlg('Omitir el Control de Valores...?',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
      ControlFondos:=False;

  if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasTicket.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

 if (DatosVentasTicket.CDSVentaCabIMPRESO.Value='N') Then
    begin
      // Verifico si estan los valores disponibles
       if DMMain_FD.ModificaFactura then
         begin
           DMStoreProcedure.QControlFondos.Close;
           DMStoreProcedure.QControlFondos.ParamByName('id').Value  :=DatosVentasTicket.CDSVentaCabID_FC.Value;
           DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:='TK';
           DMStoreProcedure.QControlFondos.Open;
           if (DMStoreProcedure.QControlFondos.Fields[0].Value='N') and (ControlFondos=True) then
             RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
           DMStoreProcedure.QControlFondos.Open;
           if (DMMain_FD.HayAcopios(DSBase.DataSet.FieldByName('id_fc').Value)) Then
             RAISE Exception.Create('Hay Acopios asociado al comprobante... no se puede hacer la operación....');
           inherited;
           CpbteNuevo := 'N';
           ImporteOriginal:=DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;
           IF NOT (DatosVentasTicket.CDSVentaCab.IsEmpty) THEN
             begin
               DatosVentasTicket.CDSVentaCab.Edit;
               pcDetalleFactura.OnChange(self);
             end
           ELSE
             ShowMessage('No hay registro activo');
         end
       else
         ShowMessage('No se puede modificar No Esta Autorizado....');
     end
   else
     ShowMessage('No se puede modificar un compranbente ya impreso....');
end;

procedure TFormTicketVta.ModificaTotalClick(Sender: TObject);
begin
  inherited;
  ModificaTotal.Checked:=Not(ModificaTotal.Checked);
end;

procedure TFormTicketVta.MostrarDesctenDetalle1Click(Sender: TObject);
begin
  inherited;
  if DatosVentasTicket.CDSVentaDetDESCUENTO.Visible=False Then
    DatosVentasTicket.CDSVentaDetDESCUENTO.Visible:=True
  else
    DatosVentasTicket.CDSVentaDetDESCUENTO.Visible:=False;
  DBGrillaDetalle.Columns[5].Visible:=DatosVentasTicket.CDSVentaDetDESCUENTO.Visible;

end;

procedure TFormTicketVta.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');

  inherited;

end;

procedure TFormTicketVta.PapeleraExecute(Sender: TObject);
var QAux:TFDQuery;
Nro:string;
Id:String;
sDirectorio:string;
Restaurado:Boolean;
cab:string;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_TK';
  Restaurado:=False;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      if Not(Assigned(FormRestaurarPapelera)) Then
        FormRestaurarPapelera := TFormRestaurarPapelera.Create(Self);
      FormRestaurarPapelera.Directorio:=sDirectorio;
      FormRestaurarPapelera.Tag              := 0;
      FormRestaurarPapelera.CDSVentaCab      := DatosVentasTicket.CDSVentaCab;
      FormRestaurarPapelera.CDSVentaDet      := DatosVentasTicket.CDSVentaDet;
      FormRestaurarPapelera.CDSImpuestos     := DatosVentasTicket.CDSImpuestos;
      FormRestaurarPapelera.CDSVtaSubDetalle := DatosVentasTicket.CDSVtaSubDetalle;
      FormRestaurarPapelera.CDSVtaDetConsig  := DatosVentasTicket.CDSVtaDetConsig;
    //  FormRestaurarPapelera.CDSMov_Carnes    := DatosVentasTicket.CDSMov_Carnes;
      FormRestaurarPapelera.CDSFc_Prod_Det   := DatosVentasTicket.CDSFc_Prod_Det;
      FormRestaurarPapelera.CDSFc_Prod_Mov   := DatosVentasTicket.CDSFc_Prod_Mov;
      FormRestaurarPapelera.CDSVentaLote     := DatosVentasTicket.CDSVentaLote;

      FormRestaurarPapelera.CDSCajaMov       := FrameMovValoresIngreso1.CDSCajaMov;
      FormRestaurarPapelera.CDSChe3          := FrameMovValoresIngreso1.CDSChe3;
      FormRestaurarPapelera.CDSMovEfectivo   := FrameMovValoresIngreso1.CDSMovEfectivo;
      FormRestaurarPapelera.CDSMovTCredito   := FrameMovValoresIngreso1.CDSMovTCredito;
      FormRestaurarPapelera.CDSTransBco      := FrameMovValoresIngreso1.CDSTransBco;
      FormRestaurarPapelera.CDSAjustes       := FrameMovValoresIngreso1.CDSAjustes;

      FormRestaurarPapelera.ShowModal;
      if FormRestaurarPapelera.ModalResult=mrOk then
        begin
           QAux               := TFDQuery.Create(self);
           QAux.Connection    := DMMain_FD.fdcGestion;
           QAux.CachedUpdates := True;

           Nro                := DatosVentasTicket.CDSVentaCabNUMEROFAC.Value;
           Id                 := DatosVentasTicket.CDSVentaCabID_FC.AsString;

           DMMain_FD.fdcGestion.StartTransaction;
           try
             QAux.SQL.Text      := DMMain_FD.QVentaCab.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentasTicket.CDSVentaCab);
             QAux.ApplyUpdates(0);
             QAux.Close;

             QAux.SQL.Text      := DMMain_FD.QVentaDet.Sql.Text;
             QAux.Open;
             QAux.CopyDataSet(DatosVentasTicket.CDSVentaDet);
             QAux.ApplyUpdates(0);
             QAux.Close;

             if not(DatosVentasTicket.CDSImpuestos.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QImpuestosVta.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSImpuestos);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasTicket.CDSVtaSubDetalle.IsEmpty) then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaSubDetalle.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSVtaSubDetalle);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasTicket.CDSVtaDetConsig.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVtaDetalleConsig.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSVtaDetConsig);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

    //         if not(DatosVentasTicket.CDSMov_Carnes.IsEmpty) Then
    //           begin
    //             QAux.SQL.Text      := DMMain_FD.QMov_Carnes.Sql.Text;
    //             QAux.Open;
    //             QAux.CopyDataSet(DatosVentasTicket.CDSMov_Carnes);
    //             QAux.ApplyUpdates(0);
    //             QAux.Close;
    //           end;

             if not(DatosVentasTicket.CDSFc_Prod_Det.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Det.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSFc_Prod_Det);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasTicket.CDSFc_Prod_Mov.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QFcVta_Prod_Mov.Sql.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSFc_Prod_Mov);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(DatosVentasTicket.CDSVentaLote.IsEmpty) Then
               begin
                 QAux.SQL.Text      := DMMain_FD.QVentaLote.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet(DatosVentasTicket.CDSVentaLote);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;
     /////////////////////////////////////////////////////////////////////////////////
             if not(FrameMovValoresIngreso1.CDSCajaMov.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QCajaMov.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSCajaMov);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSMovEfectivo.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QMovEfectivo.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSMovEfectivo);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSMovTCredito.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QMovTCredito.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSMovTCredito);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSChe3.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QChe3.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSChe3);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSTransBco.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QTransBco.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSTransBco);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;

             if not(FrameMovValoresIngreso1.CDSAjustes.IsEmpty) Then
               begin
                 QAux.SQL.Text      := FrameMovValoresIngreso1.QAjustes.SQL.Text;
                 QAux.Open;
                 QAux.CopyDataSet( FrameMovValoresIngreso1.CDSAjustes);
                 QAux.ApplyUpdates(0);
                 QAux.Close;
               end;


             QAux.SQL.Text:='Update FcVtaCab f set f.NUMEROFAC='+''''+Nro+''''+' where f.id_fc='+''+ID+'';
             QAux.ExecSQL;
             QAux.Close;
             Restaurado:=True;
             DMMain_FD.fdcGestion.Commit;
           except
             Restaurado:=False;
             DMMain_FD.fdcGestion.Rollback;
             ShowMessage('Opercion de restauración Fallida...')
           end;
           DatoNew   := DatosVentasTicket.CDSVentaCabID_FC.AsString;
           TipoCpbte := DatosVentasTicket.CDSVentaCabTIPOCPBTE.AsString;
           Recuperar.Execute;
        end;
      if Restaurado then
        begin
          DeleteFile(sDirectorio+'\('+Id+')FcVtaCab.xml');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaDet.bin');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaImp.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCVtaSubDetalle.bin');
          DeleteFile(sDirectorio+'\('+Id+')FcVtaDetConsig.bin');
     //     DeleteFile(sDirectorio+'\('+Id+')FCPMov_Carnes.bin');
          DeleteFile(sDirectorio+'\('+Id+')FC_Prod_Det.bin');
          DeleteFile(sDirectorio+'\('+Id+')Fc_Prod_Mov.bin');
          DeleteFile(sDirectorio+'\('+Id+')FCVentaLote.bin');

          DeleteFile(sDirectorio+'\('+Id+')CajaMov.bin');
          DeleteFile(sDirectorio+'\('+Id+')Che3.bin');
          DeleteFile(sDirectorio+'\('+Id+')Efectivo.bin');
          DeleteFile(sDirectorio+'\('+Id+')TCredito.bin');
          DeleteFile(sDirectorio+'\('+Id+')TXBanco.bin');
          DeleteFile(sDirectorio+'\('+Id+')Ajuste.bin');
        end
      else
        begin
          DatoNew:='-1';
          Recuperar.Execute;
        end;

      FreeAndNil(FormRestaurarPapelera);
    end;
end;

procedure TFormTicketVta.Pasar_a_PapeleraExecute(Sender: TObject);
begin
  inherited;
if not DirectoryExists(DMMain_FD.MainPath+'Papelera_TK') then
    CreateDir(DMMain_FD.MainPath+'Papelera_TK');
  if Not(DatosVentasTicket.CDSVentaCab.IsEmpty)  Then
    begin
      DatosVentasTicket.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FcVtaCab.XML');
      DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FcVtaDet.bin');
      DatosVentasTicket.CDSImpuestos.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FcVtaImp.bin');
      DatosVentasTicket.CDSVtaSubDetalle.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FCVtaSubDetalle.bin');
      DatosVentasTicket.CDSVtaDetConsig.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FcVtaDetConsig.bin');
 //     DatosVentasTicket.CDSMov_Carnes.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FCPMov_Carnes.bin');
      DatosVentasTicket.CDSFc_Prod_Det.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FC_Prod_Det.bin');
      DatosVentasTicket.CDSFc_Prod_Mov.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')Fc_Prod_Mov.bin');
      DatosVentasTicket.CDSVentaLote.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')FCVentaLote.bin');

      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')CajaMov.bin');
      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')Che3.bin');
      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')Efectivo.bin');
      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')TCredito.bin');
      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Papelera_TK\('+DatosVentasTicket.CDSVentaCabID_FC.AsString+')TXBanco.bin');
    end;
end;

procedure TFormTicketVta.AgregarClienteExecute(Sender: TObject);
var
  CodAux: string;
begin
  inherited;
  CodAux  :=  DMMain_FD.NuevoCliente;
  if CodAux <> '' then
    DSBase.DataSet.FieldByName('CODIGO').Text :=  CodAux;
end;

procedure TFormTicketVta.AgregarExecute(Sender: TObject);
begin
  if Anulado<>nil Then FreeAndNil(Anulado);
  Generado:=False;
  DatosVentasTicket.CDSVentaCab.Close;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaCab.Open;

  DatosVentasTicket.CDSVentaDet.Close;
  DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaDet.Open;

  DatosVentasTicket.CDSImpuestos.Close;
  DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSImpuestos.Open;

  DatosVentasTicket.CDSVtaSubDetalle.Close;
  DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVtaSubDetalle.Open;

  DatosVentasTicket.CDSVtaDetConsig.Close;
  DatosVentasTicket.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVtaDetConsig.Open;



  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;

  inherited;
  DuplicarFc :=False;
//  DMMain_FD.LogFileFD(1,2,'Inicio de Ticket '+'('+DatosVentasTicket.CDSVentaCabID_FC.AsString+') '+
//                                                 'Nro Incial '+ DatosVentasTicket.CDSVentaCabLETRAFAC.AsString+'-'+DatosVentasTicket.CDSVentaCabSUCFAC.AsString+'-'+DatosVentasTicket.CDSVentaCabNUMEROFAC.AsString ,
//                                                  'FACVTATK',DMMain_FD.UsuarioActivo);

  pcDetalleFactura.ActivePageIndex               := 0;
  FrameMovValoresIngreso1.SumaValores            := 0;
  FrameMovValoresIngreso1.lbTotalValores.Caption := '0.00';
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  DatosVentasTicket.CDSVentaDet.EmptyDataSet;
  DatosVentasTicket.CDSImpuestos.EmptyDataSet;
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly:=False;
  Impresa               :=False;
  CpbteNuevo            := 'S';
  FormTicketVta.Caption := 'Ventas con Ticket';

  if (RxCCodigo.Text='') and (dbeNombre.Text='') Then
    begin
      if (FormTicketVta.Visible) and (FormTicketVta.pnCabecera.Enabled) and
       (FormTicketVta.RxCCodigo.Enabled) then
      RxCCodigo.SetFocus;
    end
  else
    if (FormTicketVta.Visible) and (FormTicketVta.pnCabecera.Enabled) and
      (FormTicketVta.rxcVendedor.Enabled) then
        RxcVendedor.SetFocus;
  if IniciarEnFecha1.Checked then
    dbeFechaVta.SetFocus;
end;

procedure TFormTicketVta.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  if ( DatosVentasTicket.CDSVentaCabLISTAPRECIO.AsString<>'') Then
    begin
      Puntero:=DatosVentasTicket.CDSVentaDet.GetBookmark;
      DatosVentasTicket.CDSVentaDet.First;
      DatosVentasTicket.CDSVentaDet.DisableControls;
      while Not(DatosVentasTicket.CDSVentaDet.Eof) DO
        begin
          Puntero2:=DatosVentasTicket.CDSVentaDet.GetBookmark;
          DatosVentasTicket.CDSVentaDet.Edit;

          DMMain_FD.CalculaPrecioVta_FD( DatosVentasTicket.CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor, DatosVentasTicket.CDSVentaCabLISTAPRECIO.Value,DatosVentasTicket.CDSVentaCabSUCURSAL.Value,DatosVentasTicket.CDSVentaCabDEPOSITO.Value,
                                        DatosVentasTicket.CDSVentaDetCODIGOARTICULO.AsString,DatosVentasTicket.CDSVentaCabCODIGO.AsString,DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value,
                                        DatosVentasTicket.CDSVentaDetCOTIZACION.AsFloat,
                                        DatosVentasTicket.CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);

          if (FormTicketVta.Divide_iva=True) then
            Iva:=Iva/2;

          DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
          DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
          DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          DatosVentasTicket.CDSVentaDetMARGEN.ASFloat          :=Margen;
          DatosVentasTicket.CDSVentaDetDESCUENTO.ASFloat       :=Dscto;


          DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,DatosVentasTicket.CDSVentaDetCantidad.AsString);
          DatosVentasTicket.CDSVentaDet.GotoBookmark(Puntero2);
          DatosVentasTicket.CDSVentaDet.FreeBookmark(Puntero2);
          DatosVentasTicket.CDSVentaDet.Next;
        end;
      DatosVentasTicket.CDSVentaDet.GotoBookmark(Puntero);
      DatosVentasTicket.CDSVentaDet.FreeBookmark(Puntero);
      DatosVentasTicket.CDSVentaDet.EnableControls;
    end
  else
    ShowMessage('No se puede recalcular si no hay lista asignada...');

end;

procedure TFormTicketVta.RecalcularTodoExecute(Sender: TObject);
begin
 // inherited;
  // Verifico la caja si esta cerrada la abro y la cierro
  CajaCerrada  := DMMain_FD.CajaCerrada(FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value);//=1;

  if CajaCerrada then
    begin
      DMMain_FD.Abrir_Cerrar_Caja(FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value,0);
      Recuperar.Execute;
      DatosVentasTicket.ReCalcularTodo;
      DMMain_FD.Abrir_Cerrar_Caja(FormTicketVta.FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value,1);
    end;
end;

procedure TFormTicketVta.RecalculoSuma00Execute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
begin
  inherited;
  Puntero:=DatosVentasTicket.CDSVentaDet.GetBookmark;
  DatosVentasTicket.CDSVentaDet.First;
  DatosVentasTicket.CDSVentaDet.DisableControls;
  while Not(DatosVentasTicket.CDSVentaDet.Eof) DO
    begin
      Puntero2:=DatosVentasTicket.CDSVentaDet.GetBookmark;
      DatosVentasTicket.CDSVentaDet.edit;
      DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);
      DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);
      DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsFloat  :=DatosVentasTicket.CDSVentaDetUNITARIO_GRAVADO.AsFloat+
                                                             DatosVentasTicket.CDSVentaDetUNITARIO_EXENTO.AsFloat;

      DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat,-2);

      DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,DatosVentasTicket.CDSVentaDetCANTIDAD.AsString);
      DatosVentasTicket.CDSVentaDet.GotoBookmark(Puntero2);
      DatosVentasTicket.CDSVentaDet.FreeBookmark(Puntero2);
      DatosVentasTicket.CDSVentaDet.Next;
    end;
  DatosVentasTicket.CDSVentaDet.GotoBookmark(Puntero);
  DatosVentasTicket.CDSVentaDet.FreeBookmark(Puntero);
  DatosVentasTicket.CDSVentaDet.EnableControls;
end;

procedure TFormTicketVta.ClonarFcExecute(Sender: TObject); // para el uso de conversion
var i:byte;
Nombre:String;
EstadoModoFormulario:String;
id_comprobante:String;
begin
  inherited;
//  id_Old:=DatosVentasTicket.CDSVentaCabID_FC.Value;
//  DatosVentasTicket.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaCab.XML');
//  DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\FcVtaDet.XML');
//
//  DatosVentasTicket.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtacab.xml');
//  DatosVentasTicket.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\fcvtadet.xml');
//  Agregar.Execute;
//  DuplicarFc:=True;
//  For i:=0 to DatosVentasTicket.CDSFcVtaCabXML.FieldCount-1 do
//    begin
//      if DatosVentasTicket.CDSVentaCab.FindField(DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
//        begin
//          Nombre:=DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName;
//          if (Nombre<>'ID_FC') Then
//            DatosVentasTicket.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentasTicket.CDSFcVtaCabXML.FieldByName(Nombre).Value;
//        end;
//    end;
//   DatosVentasTicket.CDSVentaCabIMPRESO.Value    :='N';
//   DatosVentasTicket.CDSVentaCabCPTE_MANUAL.Value:='N';
//   while not(DatosVentasTicket.CDSDetalleXML.Eof) do
//     begin
//       DatosVentasTicket.CDSVentaDet.Insert;
//       For i:=0 to DatosVentasTicket.CDSDetalleXML.FieldCount-1 do
//         begin
//           if DatosVentasTicket.CDSVentaDet.FindField(DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName)<>nil Then
//             begin
//               Nombre:=DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName;
//               if Nombre<>'ID' Then
//                 DatosVentasTicket.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentasTicket.CDSDetalleXML.FieldByName(Nombre).Value;
//             end;
//          end;
//        DatosVentasTicket.CDSVentaDetId_CabFac.Value:=DatosVentasTicket.CDSVentaCabID_FC.Value;
//        DatosVentasTicket.CDSVentaDet.Post;
//        DatosVentasTicket.CDSDetalleXML.Next;
//     end;
   if (DatosVentasTicket.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and (DMMain_FD.UsuarioAdministrador=False) then
    Raise Exception.Create('No se permite clonar una factura del tipo Fiscal...');

  if (DSBase.DataSet.State = dsBrowse) and (not(DSBase.DataSet.IsEmpty)) then
    begin
      id_Old:=DatosVentasTicket.CDSVentaCabID_FC.Value;
      DatosVentasTicket.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaCab.XML');
      DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.XML');

      DatosVentasTicket.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaCab.xml');
      DatosVentasTicket.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.xml');
      Agregar.Execute;
      DuplicarFc:=True;
      EstadoModoFormulario:=FormTicketVta.DiscriminaIva;
      FormTicketVta.DiscriminaIva:='S';
      DatosVentasTicket.CDSVentaCabCODIGOSetText(DatosVentasTicket.CDSVentaCabCODIGO,DatosVentasTicket.CDSFcVtaCabXML.FieldByName('CODIGO').AsString);

      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='TK';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal     := DatosVentasTicket.CDSVentaCabSUCURSAL.AsInteger;
      FormBuscadorTipoCpbte.DiscriminaIVA:= DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value;
      FormBuscadorTipoCpbte.ShowModal;

      id_comprobante:='';

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         id_comprobante:=IntToStr(FormBuscadorTipoCpbte.Id_Cpbte)
      else
         id_comprobante:='';

      if id_comprobante<>'' then
        begin
          For i:=0 to DatosVentasTicket.CDSFcVtaCabXML.FieldCount-1 do
            begin
              if DatosVentasTicket.CDSVentaCab.FindField(DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName;
                  if (Nombre<>'ID_FC') and (Nombre<>'TIPOCPBTE') and (Nombre<>'CLASECPBTE') and (Nombre<>'NROCPBTE') and
                     (Nombre<>'LETRAFAC') and (Nombre<>'SUCFAC') and (Nombre<>'NUMEROFAC') and (Nombre<>'RENGLONES') and
                     (Nombre<>'DESGLOZAIVA') Then
                    DatosVentasTicket.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentasTicket.CDSFcVtaCabXML.FieldByName(Nombre).Value;
                end;
            end;

          DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,id_comprobante);

          DatosVentasTicket.CDSVentaCabIMPRESO.Value     :='N';
          DatosVentasTicket.CDSVentaCabCPTE_MANUAL.Value :='N';
          while not(DatosVentasTicket.CDSDetalleXML.Eof) do
            begin
              DatosVentasTicket.CDSVentaDet.Append;
              For i:=0 to DatosVentasTicket.CDSDetalleXML.FieldCount-1 do
                begin
                  if DatosVentasTicket.CDSVentaDet.FindField(DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName;
                      if Nombre<>'ID' Then
                        DatosVentasTicket.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentasTicket.CDSDetalleXML.FieldByName(Nombre).Value;
                    end;
                end;
              DatosVentasTicket.CDSVentaDetDESGLOZAIVA.Value:=DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value;
              DatosVentasTicket.CDSVentaDetId_CabFac.Value :=DatosVentasTicket.CDSVentaCabID_FC.Value;
              DatosVentasTicket.CDSVentaDetTIPOCPBTE.Value :=DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
              DatosVentasTicket.CDSVentaDetCLASECPBTE.Value:=DatosVentasTicket.CDSVentaCabCLASECPBTE.Value;
              DatosVentasTicket.CDSVentaDetNROCPBTE.Value  :=DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
              DatosVentasTicket.CDSVentaDetCANTIDADSetText(DatosVentasTicket.CDSVentaDetCANTIDAD,DatosVentasTicket.CDSVentaDetCANTIDAD.AsString);

              if DatosVentasTicket.CDSVentaDetDESGLOZAIVA.AsString='N' then
                DatosVentasTicket.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,
                                                                 FloatToStr(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsFloat +
                                                                            DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat))
              else
                DatosVentasTicket.CDSVentaDetUNITARIO_TOTALSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,
                                                                 DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL.AsString);


              DatosVentasTicket.CDSVentaDet.Post;

              DatosVentasTicket.CDSDetalleXML.Next;
            end;
        end
      else
        Cancelar.Execute;

      FormTicketVta.DiscriminaIva:=EstadoModoFormulario;
    end;

end;

// **** Control de pago con Tarjeta de Credito ******
procedure TFormTicketVta.CalculaIvaDetExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=DatosVentasTicket.CDSVentaCabID_FC.AsString;
  inherited;
  DMMain_FD.CorrigeIvaDetVta(DatosVentasTicket.CDSVentaCabID_FC.AsInteger);
  Recuperar.Execute;
end;

procedure TFormTicketVta.CalcularRecargosTCExecute(Sender: TObject);
var
  TotalRecargo,
  coeficiente,Unitario :Real;
  TotalOld,TotalNuevo  :Real;
  DiferenciaRec :Real;
  HayPago_ConTC :Boolean;
begin
  inherited;
  Coeficiente   :=0;
  HayPago_ConTC :=False;
  // Veo si hubo Pago con tarjetas
  FrameMovValoresIngreso1.CDSCajaMov.First;
  if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
    begin
      if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          HayPago_ConTC:=True;
    end
  else
    while (Not(FrameMovValoresIngreso1.CDSCajaMov.Eof)) do
      begin
        if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          HayPago_ConTC:=True;
        FrameMovValoresIngreso1.CDSCajaMov.Next;
      end;

  TotalRecargo  :=0;

//  Nueva Asignacion de Valores Old
//  if (DatosVentasCtdo.CDSVentaDet.State=dsBrowse) Then DatosVentasCtdo.CDSVentaDet.Edit;
//  DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL_OLD.Value:=DatosVentasCtdo.CDSVentaDetUNITARIO_TOTAL.Value;
//  DatosVentasCtdo.CDSVentaDetUNITARIO_IVA_OLD.Value  :=DatosVentasCtdo.CDSVentaDetIVA_UNITARIO.Value;
//  DatosVentasCtdo.CDSVentaDet.Post;
  if HayPago_ConTC then
    CancelarRecargoTC.Execute;

  TotalOld      :=DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;

  // Voy acumulando todos los recargos
  FrameMovValoresIngreso1.CDSCajaMov.First;
  if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
    begin
      if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
        begin
          TotalRecargo:=FrameMovValoresIngreso1.CDSMovTCreditoIMPORTE_RECARGO.AsFloat;
          HayPago_ConTC:=True;
        end;
    end
  else
    while (Not(FrameMovValoresIngreso1.CDSCajaMov.Eof)) do
      begin
        if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
          begin
            TotalRecargo:=TotalRecargo + FrameMovValoresIngreso1.CDSMovTCreditoIMPORTE_RECARGO.AsFloat;
            HayPago_ConTC:=True;
          end;
        FrameMovValoresIngreso1.CDSCajaMov.Next;
      end;
  //Calculo el coeficiente total en caso de haber mas de una tarjeta
  Coeficiente:=(TotalOld+TotalRecargo)/TotalOld;
  //**************************************************
  if (HayPago_ConTC=True) Then
    begin

      if UsaConceptoRecargoTC=False then
        begin
          DatosVentasTicket.CDSVentaDet.First;
          while Not(DatosVentasTicket.CDSVentaDet.eof) do
            begin
              DatosVentasTicket.CDSVentaDet.Edit;
              DatosVentasTicket.CDSVentaDetUNI_C_REC.Value := 'S'; // aca le indico que tiene recargo
              if (DatosVentasTicket.CDSVentaDetDesglozaIVA.Value='S') AND (FormTicketVta.DiscriminaIva='S')  Then
              // Si es con Iva discrimando Tomo el importe Sin Iva
                DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,
                                                                 FloatToStr(DatosVentasTicket.CDSVentaDetUnitario_Total.AsFloat * coeficiente))
              else
              // Si es Sin Iva discrimando Tomo el importe + Iva
                begin
                  Unitario:= DatosVentasTicket.CDSVentaDetUnitario_Total.AsFloat;
                  Unitario:= Unitario + DatosVentasTicket.CDSVentaDetIVA_UNITARIO.AsFloat;
                  Unitario:= Unitario * coeficiente;
                  Unitario:= RoundTo(Unitario,-4);
                  Unitario:= RoundTo(Unitario,-3);
                  DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,FloatToStr(Unitario));
                end;
              DatosVentasTicket.CDSVentaDet.Next;
            end;
        end
      else
        Begin
          if Trunc(TotalRecargo)>0 then
            begin
              DatosVentasTicket.QTCredito.Close;
              DatosVentasTicket.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
              DatosVentasTicket.QTCredito.Open;
              if DatosVentasTicket.QTCreditoCODIGOARTICULO.Value<>'' Then
                ItemRedondeo:=DatosVentasTicket.QTCreditoCODIGOARTICULO.Value
              else
                ItemRedondeo:='*';
              if ItemRedondeo<>'*' then
                begin
                  DatosVentasTicket.CDSVentaDet.Append;
                  DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,ItemRedondeo);
                  DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
                  if DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='N' Then
                    DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasTicket.MascaraDetalleUnitario,TotalRecargo))
                  else
                    DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasTicket.MascaraDetalleUnitario,(TotalRecargo/(1+(DatosVentasTicket.CDSVentaDetIVA_Tasa.AsFloat)*0.01))));
                  DatosVentasTicket.CDSVentaDet.Post;
                end;
            end;
        end;

   // Calculo la diferencia que me quedo sin aplicar
      DiferenciaRec:= 0;
      TotalNuevo   := TotalOld+TotalRecargo;
//    DiferenciaRec:=StrToFloat(FormatFloat('0.000',(TotalOld+TotalRecargo)))-StrToFloat(FormatFloat('0.000',DatosVentasCtdo.wwCDSVentaCabTOTAL.Value));
      DiferenciaRec:= (RoundTo(TotalNuevo,-2)) - (RoundTo(DatosVentasTicket.CDSVentaCabTOTAL.AsFloat,-2));
      if DiferenciaRec>0 Then
        begin
          ItemRedondeo:='*';
          FrameMovValoresIngreso1.CDSCajaMov.First;
          if FrameMovValoresIngreso1.CDSCajaMov.RecordCount=1 then
            begin
              if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
                Begin
                  DatosVentasTicket.QTCredito.Close;
                  DatosVentasTicket.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
                  DatosVentasTicket.QTCredito.Open;
                  if DatosVentasTicket.QTCreditoCODIGOARTICULO.Value<>'' Then
                    ItemRedondeo:=DatosVentasTicket.QTCreditoCODIGOARTICULO.Value
                  else
                    ItemRedondeo:='*';
                end;
             end
          else
            while Not(FrameMovValoresIngreso1.CDSCajaMov.Eof) do
              begin
                if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 Then
                  Begin
                    DatosVentasTicket.QTCredito.Close;
                    DatosVentasTicket.QTCredito.ParamByName('Codigo').Value:=FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Value;
                    DatosVentasTicket.QTCredito.Open;
                    if (ItemRedondeo='*') and (DatosVentasTicket.QTCreditoCODIGOARTICULO.Value<>'') Then
                      begin
                        ItemRedondeo:=DatosVentasTicket.QTCreditoCODIGOARTICULO.Value;
                      end
                    else
                      ItemRedondeo:='*';
  //  Correcion, esta linea pasa despues del end, por ue no hacia el next
  //                FrameMovValoresIngreso1.wwCDSCajaMov.Next;
                  end;
                FrameMovValoresIngreso1.CDSCajaMov.Next;
              end;
          if ItemRedondeo<>'*' then
            Begin
              DatosVentasTicket.CDSVentaDet.Append;
              DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCodigoArticulo,ItemRedondeo);
              DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCantidad,'1');
              if DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='N' Then
                DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasTicket.MascaraDetalleUnitario,DiferenciaRec))
              else
                DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUnitario_Total,FormatFloat(DatosVentasTicket.MascaraDetalleUnitario,(DiferenciaRec/(1+(DatosVentasTicket.CDSVentaDetIVA_Tasa.AsFloat)*0.01))));
              DatosVentasTicket.CDSVentaDet.Post;
            end;
        end;
    end;
end;

procedure TFormTicketVta.CambiarClaseExecute(Sender: TObject);
begin
  //inherited;
//  BorrarTodasAplicaciones.Execute;
  if (DSBase.State=dsBrowse) and Not(DSBase.dataSet.IsEmpty) then
    begin
      if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasTicket.CDSVentaCabCAE.AsString)>0) then
        Raise Exception.Create (' Facturas Electrónica con CAE, no se puede Modicficar....');

      if (DatosVentasTicket.CDSVentaCabINGRESA_LIBRO_IVA.Value='S') and (DMMain_FD.UsuarioActivo<>'master') then
        Raise Exception.Create (' Facturas Ingresa en Iva, no se puede Modificar....');

      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo                     := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
      FormCambiarClaseCpbte.Clase                    := DSBase.DataSet.FieldByName('CLASECPBTE').Value;
      FormCambiarClaseCpbte.Letra                    := DSBase.DataSet.FieldByName('LETRAFAC').Value;
      FormCambiarClaseCpbte.Sucursal                 := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
      FormCambiarClaseCpbte.IdComprobante            := DSBase.DataSet.FieldByName('ID_FC').Value;
      FormCambiarClaseCpbte.ComproVenta              := 'V';
      FormCambiarClaseCpbte.dbcSucursalNew.KeyValue  := DSBase.DataSet.FieldByName('SUCURSAL').Value;
      FormCambiarClaseCpbte.dbcSucursalNew.Enabled   := False;

      FormCambiarClaseCpbte.ShowModal;
      if FormCambiarClaseCpbte.ModalResult=mrOk then
        begin
          DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
          TipoCpbte:=FormCambiarClaseCpbte.Tipo;
          Recuperar.Execute;
          DMMain_FD.spRecreaIVADetFc.Close;
          DMMain_FD.spRecreaIVADetFc.ParamByName('id').Value:=DSBase.DataSet.FieldByName('ID_FC').Value;
          DMMain_FD.spRecreaIVADetFc.ExecProc;
          DMMain_FD.spRecreaIVADetFc.Close;
          RecalcularTodo.Execute;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormTicketVta.CambiarClienteExecute(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormCambiaClienteFactura)) then
    FormCambiaClienteFactura:=TFormCambiaClienteFactura.Create(FormTicketVta);
  FormCambiaClienteFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCambiaClienteFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
  FormCambiaClienteFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCambiaClienteFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
  FormCambiaClienteFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
  FormCambiaClienteFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
  FormCambiaClienteFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
  FormCambiaClienteFactura.zona         :=DSBase.DataSet.FieldByName('zona').AsString;
  FormCambiaClienteFactura.ldr          :=DSBase.DataSet.FieldByName('ldr').Value;
  FormCambiaClienteFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaClienteFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaClienteFactura.cuit         :=DSBase.DataSet.FieldByName('cuit').Value;
  FormCambiaClienteFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormTicketVta.CambiarCUITExecute(Sender: TObject);
begin
  inherited;
  if (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S') and (StrToFloat(DatosVentasTicket.CDSVentaCabCAE.AsString)>0) then
    Raise Exception.Create (' Facturas Electrónica con CAE, no se puede cambiar ...');

  if Not(Assigned(FormCuit_Doc)) then
    FormCuit_Doc:=TFormCuit_Doc.Create(self);
  FormCuit_Doc.id  := DSBase.DataSet.FieldByName('id_fc').Value;
  FormCuit_Doc.Cuit:= DSBase.DataSet.FieldByName('cuit').Value;
  FormCuit_Doc.ShowModal;
  if (FormCuit_Doc.ModalResult=mrok) then
    Recuperar.Execute;
end;

procedure TFormTicketVta.CambiarDepositoExecute(Sender: TObject);
begin
  inherited;
   if (DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty))  then
    begin
      if Not(Assigned(FormcambioDeposito)) then
        formCambioDeposito := TFormcambioDeposito.create(Self);
      FormCambioDeposito.Id      := DatosVentasTicket.CDSVentaCabID_FC.Value;
      FormCambioDeposito.codigo  := DatosVentasTicket.CDSVentaCabDEPOSITO.Value;
      FormCambioDeposito.Detalle := DatosVentasTicket.CDSVentaCabMUESTRADEPOSITO.AsString;

      FormCambioDeposito.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormTicketVta.CambiarNroExecute(Sender: TObject);
begin
//  inherited;
  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte     :=TFormCambiaNroCpbte.Create(FormTicketVta);
  FormCambiaNroCpbte.Id    :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaNroCpbte.Num   :=DSBase.DataSet.FieldByName('NumeroFac').Value;
  FormCambiaNroCpbte.Suc   :=DSBase.DataSet.FieldByName('SucFac').Value;
  FormCambiaNroCpbte.Let   :=DSBase.DataSet.FieldByName('LetraFac').Value;
  FormCambiaNroCpbte.Tipo  :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Fecha :=DSBase.DataSet.FieldByName('FechaVta').Value;
  FormCambiaNroCpbte.Fecha2:=DSBase.DataSet.FieldByName('FECHA_FISCAL').Value;
  FormCambiaNroCpbte.CV    :='V';
  FormCambiaNroCpbte.Showmodal;
  Recuperar.Execute;
end;

procedure TFormTicketVta.DSBaseStateChange(Sender: TObject);
var sDirectorio:string;
begin
   inherited;
 // pnPrincipal.Enabled:=True;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_TK';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=13
  else
    Papelera.ImageIndex:=12;

  Anular.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  btImprimir.Enabled        := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeDscto.Enabled          := DMMain_FD.AplicaDescuento;
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  Salir.Enabled             := (DSBase.DataSet.State IN [dsBrowse]);
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  FrameMovValoresIngreso1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresIngreso1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresIngreso1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
 // FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  if (DSBase.State in [dsBrowse]) and (Not(DSbase.DataSet.IsEmpty)) Then
    begin
      pnPrincipal.Enabled       := True;
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Fecha').Value:=DatosVentasTicket.CDSVentaCabFECHA_FISCAL.AsDateTime;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('compra_venta').Value:='V';
      DMStoreProcedure.QVerificaPeriodoFiscal.Open;
      Anular.Enabled      := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C');
      Borrar.Enabled      := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C');
      Modificar.Enabled   := Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C');
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    end;
  rxcVendedor.Enabled     :=DMMain_FD.ModificaVendedor;
  RxCSucursal.Enabled     :=DMMain_FD.ModificaSucursal;
  spMenu.Enabled          :=(DMMain_FD.UsuarioAdministrador) and (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);

  Papelera.Enabled        := (DMMain_FD.UsuarioActivo='master') and (DSBase.State=dsBrowse);

  Fiscalizar.Enabled      := Not(DSBase.DataSet.IsEmpty) and (DSBase.State=dsBrowse) and (DatosVentasTicket.CDSVentaCabFACTURA_ELECTRONICA.Value='S');
  CambiarClase.Enabled    := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  HacerNC_2.Enabled       := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  HacerNC_2.Enabled       := (DSBase.DataSet.FieldByName('MUESTRAID_NC').Value<=0);

  VerNovedadesDet.Enabled := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
 end;

procedure TFormTicketVta.DuplicarCpbteExecute(Sender: TObject);
var i:byte;
Nombre:String;
EstadoModoFormulario:String;
id_comprobante:String;
begin
  inherited;
  id_Old:=DatosVentasTicket.CDSVentaCabID_FC.Value;
  DatosVentasTicket.CDSVentaCab.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaCab.XML');
  DatosVentasTicket.CDSVentaDet.SaveToFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.XML');

  DatosVentasTicket.CDSFcVtaCabXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaCab.xml');
  DatosVentasTicket.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.xml');

  Agregar.Execute;

  DuplicarFc:=True;
  For i:=0 to DatosVentasTicket.CDSFcVtaCabXML.FieldCount-1 do
    begin
      if DatosVentasTicket.CDSVentaCab.FindField(DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
        begin
          Nombre:=DatosVentasTicket.CDSFcVtaCabXML.Fields[i].FieldName;
          if (Nombre<>'ID_FC') Then
            DatosVentasTicket.CDSVentaCab.FieldByName(Nombre).Value:=DatosVentasTicket.CDSFcVtaCabXML.FieldByName(Nombre).Value;
        end;
    end;

  if Not(Assigned(FormControlNroRto)) then
    FormControlNroRto:=TFormControlNroRto.Create(Self);
  FormControlNroRto.Let:= DatosVentasTicket.CDSVentaCabLETRAFAC.Value;
  FormControlNroRto.Suc:= DatosVentasTicket.CDSVentaCabSUCFAC.Value;
  FormControlNroRto.Num:= DatosVentasTicket.CDSVentaCabNUMEROFAC.Value;
  FormControlNroRto.ShowMOdal;

  if (FormControlNroRto.ModalResult=mrOk) then
    begin
      if (FormControlNroRto.Let<> DatosVentasTicket.CDSVentaCabLETRAFAC.Value) or
         (FormControlNroRto.Suc<> DatosVentasTicket.CDSVentaCabSUCFAC.Value) or
         (FormControlNroRto.Num<> DatosVentasTicket.CDSVentaCabNUMEROFAC.Value) Then
      begin
        DatosVentasTicket.CDSVentaCabLETRAFAC.Value:=FormControlNroRto.Let;
        DatosVentasTicket.CDSVentaCabSUCFAC.Value  :=FormControlNroRto.Suc;
        DatosVentasTicket.CDSVentaCabNUMEROFACSetText(DatosVentasTicket.CDSVentaCabNUMEROFAC,FormControlNroRto.Num);
        PrefijoDup := DatosVentasTicket.CDSVentaCabSUCFAC.Value;
        NumeroDup  := DatosVentasTicket.CDSVentaCabNUMEROFAC.Value;
      end;
    end;

   DatosVentasTicket.CDSVentaCabIMPRESO.Value    :='N';

   DatosVentasTicket.CDSVentaCabCPTE_MANUAL.Value:='N';

   DatosVentasTicket.CDSVentaCabCAE.Value         :='0';
   DatosVentasTicket.CDSVentaCabCAE_VENCIMIENTO.Clear;

   while not(DatosVentasTicket.CDSDetalleXML.Eof) do
     begin
       DatosVentasTicket.CDSVentaDet.Insert;
       For i:=0 to DatosVentasTicket.CDSDetalleXML.FieldCount-1 do
         begin
           if DatosVentasTicket.CDSVentaDet.FindField(DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName)<>nil Then
             begin
               Nombre:=DatosVentasTicket.CDSDetalleXML.Fields[i].FieldName;
               if Nombre<>'ID' Then
                 DatosVentasTicket.CDSVentaDet.FieldByName(Nombre).Value:=DatosVentasTicket.CDSDetalleXML.FieldByName(Nombre).Value;
             end;
          end;
        DatosVentasTicket.CDSVentaDetId_CabFac.Value:=DatosVentasTicket.CDSVentaCabID_FC.Value;
        DatosVentasTicket.CDSVentaDet.Post;
        DatosVentasTicket.CDSDetalleXML.Next;
     end;

   if MarcarComoImpresaalDuplicarOpcion1.Checked then
     DatosVentasTicket.CDSVentaCabIMPRESO.Value    :='S';
end;

procedure TFormTicketVta.EditarProduccionExecute(Sender: TObject);
begin
 if (DSBase.DataSet.State in [dsInsert]) and (DatosVentasTicket.CDSVentaDet.RecordCount>0) and (DatosVentasTicket.CDSVentaDetDE_PRODUCCION.Value='S') Then
    begin
      FormCpbte_Produccion.Codigo  := DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString;
      DatosVentasTicket.CDSFc_Prod_DetCANTIDADSetText(DatosVentasTicket.CDSFc_Prod_DetCANTIDAD,FormatFloat('0.00',DatosVentasTicket.CDSVentaDetCANTIDAD.AsFloat));
      FormCpbte_Produccion.dbgDetalle.DataSource :=DatosVentasTicket.DSFc_Prod_Mov;
      FormCpbte_Produccion.edCodigo.DataSource   :=DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.edDetalle.DataSource  :=DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.edCantidad.DataSource :=DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.ShowModal;
      FormTicketVta.DBGrillaDetalle.SelectedIndex:=FormTicketVta.DBGrillaDetalle.SelectedIndex+1;
    end
   else
  if (DSBase.DataSet.State in [dsBrowse]) and (DatosVentasTicket.CDSVentaDet.RecordCount>0) and (DatosVentasTicket.CDSVentaDetDE_PRODUCCION.Value='S') Then
    begin
      FormCpbte_Produccion.Codigo                := DatosVentasTicket.CDSVentaDetCodigoArticulo.AsString;
      FormCpbte_Produccion.dbgDetalle.DataSource := DatosVentasTicket.DSFc_Prod_Mov;
      FormCpbte_Produccion.edCodigo.DataSource   := DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.edDetalle.DataSource  := DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.edCantidad.DataSource := DatosVentasTicket.DSFc_Prod_Det;
      FormCpbte_Produccion.ShowModal;
    //  FormCpbte_2.DBGrillaDetalle.SelectedIndex:=FormCpbte_2.DBGrillaDetalle.SelectedIndex+1;
    end;

end;


procedure TFormTicketVta.ExportarPortaPapeles1Click(Sender: TObject);
begin
  inherited;
  DMMain_FD.CopiarClipBoard(dbgDatos);
end;

procedure TFormTicketVta.RecuperarExecute(Sender: TObject);
var TotalGral,NetoTotal:Extended;
sDirectorio:string;
Aux:Extended;
begin
  inherited;
  sDirectorio      := DMMain_FD.MainPath+'Papelera_TK';
  if IsDirEmpty(sDirectorio) then
    Papelera.ImageIndex:=13
  else
    Papelera.ImageIndex:=12;

  DatosVentasTicket.CDSVentaCab.close;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Value        := DatoNew;
  DatosVentasTicket.CDSVentaCab.Open;
  RevisionValoresIng.Enabled := True;
  if DatosVentasTicket.CDSVentaCabANULADO.Value='S' Then
    begin
       if Anulado=nil Then
          Anulado:=TPanel.Create(Self);
       Anulado.Parent     := Self;
       Anulado.Caption    := 'ANULADA';
       Anulado.Top        := Trunc(FormTicketVta.Height*0.5)-20;
       Anulado.Left       := Trunc(FormTicketVta.Width*0.5)-100;
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
    if Anulado<>nil Then
      begin
        FreeAndNil(Anulado);
      end;

//    ((TotalGral / NetoTotal)-1) x 100 = Tasa de Iva usada
//   ------------------------
  TotalGral := DatosVentasTicket.CDSVentaCabTotal.AsFloat-DatosVentasTicket.CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
  NetoTotal := DatosVentasTicket.CDSVentaCabNetoGrav2.AsFloat + DatosVentasTicket.CDSVentaCabNETOEXEN2.AsFloat;

  if DatosVentasTicket.CDSVentaCabNETOGRAV2.AsFloat>0 Then
    DatosVentasTicket.Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
  else
    DatosVentasTicket.Var_TasaIva:=0;// Var_TasaIva, lo uso para tener el valor de IVA para cuando muestro los importe con el iva sin discriminar


  DatosVentasTicket.CDSFc_Prod_Det.Close;
  DatosVentasTicket.CDSFc_Prod_Det.Params.ParamByName('id_cab').Value  := StrToInt(DatoNew);
  DatosVentasTicket.CDSFc_Prod_Det.Open;

  DatosVentasTicket.CDSFc_Prod_Mov.Close;
  DatosVentasTicket.CDSFc_Prod_Mov.Params.ParamByName('id_cab').Value  := StrToInt(DatoNew);
  DatosVentasTicket.CDSFc_Prod_Mov.Open;

  DatosVentasTicket.CDSVentaDet.Close;
  DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasTicket.CDSVentaDet.Open;

  DatosVentasTicket.CDSVtaSubDetalle.Close;
  DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasTicket.CDSVtaSubDetalle.Open;

  DatosVentasTicket.CDSVtaDetNovedades.Close;
  DatosVentasTicket.CDSVtaDetNovedades.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasTicket.CDSVtaDetNovedades.Open;

  VerNovedadesDet.Enabled := Not(DatosVentasTicket.CDSVtaDetNovedades.IsEmpty);

  DatosVentasTicket.CDSImpuestos.Close;
  DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasTicket.CDSImpuestos.Open;

  DatosVentasTicket.CDSPercepcionIVA.Close;
  DatosVentasTicket.CDSPercepcionIVA.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosVentasTicket.CDSPercepcionIVA.Open;

  aux:=0;
  DatosVentasTicket.CDSPercepcionIVA.First;
  WHILE NOT (DatosVentasTicket.CDSPercepcionIVA.Eof) DO
    BEGIN
      aux:=aux+DatosVentasTicket.CDSPercepcionIVAIMPORTE.AsFloat;
      DatosVentasTicket.CDSPercepcionIVA.Next;
    END;
  FormTicketVta.lbPercepcionIVA.Caption:=FormatFloat('0.00',Aux);

  Aux:=0;
  DatosVentasTicket.CDSImpuestos.First;
  WHILE NOT (DatosVentasTicket.CDSimpuestos.Eof) DO
    BEGIN
      aux:=aux+DatosVentasTicket.CDSImpuestosImporte.AsFloat;
      DatosVentasTicket.CDSImpuestos.Next;
    END;
  FormTicketVta.lbIva.Caption:=FormatFloat('0.00',Aux);

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.AsInteger;
  FrameMovValoresIngreso1.id_Cuenta_caja    :=FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.AsInteger;
  FrameMovValoresIngreso1.FechaCaja         :=FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSMovTCredito.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CalcularValores;

  DatosVentasTicket.HabilitarLabel;
 // pnPrincipal.Enabled:=True;
 // CpbteNuevo := 'N';

  // VERIFICO SI LA CAJA ESTA CERRADA
  //DatosVentasTicket.QCaja.Close;
  //DatosVentasTicket.QCaja.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
  //DatosVentasTicket.QCaja.Open;
  CajaCerrada:= DMMain_FD.CajaCerrada(FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value);// DatosVentasTicket.QCajaESTADO.Value=1;
  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Fecha').Value        := DatosVentasTicket.CDSVentaCabFECHA_FISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('compra_venta').Value :='V';
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.Panels[0].Text:='No se puede Borrar ni modificar, este período fiscal fue cerrado';
        Modificar.Enabled        :=False;
        Anular.Enabled           :=False;
        DBGrillaDetalle.ReadOnly :=True;
        //DBGrillaIva.ReadOnly     :=True;
        FrameMovValoresIngreso1.dbgMovimientos.ReadOnly:=true;
      end
    else
      begin
       if DatosVentasTicket.CDSVentaCabANULADO.Value='N' Then
         begin
           Anular.Enabled        :=True;
           Modificar.Enabled     :=True;
           //DBGrillaDetalle.ReadOnly :=False;
           //DBGrillaIva.ReadOnly     :=True;
         end
       else
         if DatosVentasTicket.CDSVentaCabANULADO.Value='S' Then
           begin
             Anular.Enabled           :=False;
             Modificar.Enabled        :=False;
             DBGrillaDetalle.ReadOnly :=True;
           end;

       if DatosVentasTicket.CDSVentaCabIMPRESO.Value='S' Then
          begin
            sbEstado.Panels[0].Text  := 'Este comprobante no se puede modificar, ya fué impreso';
            Modificar.Enabled        := false;
            DBGrillaDetalle.ReadOnly := True;
            //DBGrillaIva.ReadOnly     :=True;
          end;
        if CajaCerrada Then
          begin
            sbEstado.Panels[0].Text    := 'La caja está cerrada, no se puede modificar ni borrar';
            Anular.Enabled             := False;
            Modificar.Enabled          := False;
            Borrar.Enabled             := False;
            DBGrillaDetalle.ReadOnly   := True;
            RevisionValoresIng.Enabled := False;
            FrameMovValoresIngreso1.dbgMovimientos.ReadOnly:=true;
          end;
      end;
  end;

  TransformarTk.Enabled:=Not(CajaCerrada);
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DatoNew:=''+DatoNew+'';
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      DatosVentasTicket.Renglones       := DMMain_FD.getLineasComprobante(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value);
      FormTicketVta.Calcula_iva_articulo := DMMain_FD.GetCalcualIvaItems(DSBase.Dataset.FieldByName('ID_TIPOCOMPROBANTE').Value)='S';
    end;
  // ********** verifico si hay items de Produccion... **
//  DMMain_FD.HayProduccion:=DatosVentasTicket.VerificaProduccion;
  // ****************************************************

  FormTicketVta.Caption:='Ventas con Ticket -- '+DatosVentasTicket.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentasTicket.CDSVentaCabUSUARIO.Value,1,15);

 if (DatosVentasTicket.CDSVentaCabCAE.AsString<>'') and (DatosVentasTicket.CDSVentaCabCAE.AsFloat>0 )then
    FormTicketVta.Caption:='Ventas con Ticket -- '+DatosVentasTicket.CDSVentaCabFECHA_HORA.AsString+'//'+Copy(DatosVentasTicket.CDSVentaCabUSUARIO.Value,1,15)+'// CAE: '+DatosVentasTicket.CDSVentaCabCAE.Value;

  if RevisionValoresIng.Enabled then
    RevisionValoresIng.Enabled:= (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');

  FormTicketVta.pnIva.Visible:=( DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='S');

  sbEstado.Panels[1].Text:='';
  if DSBase.DataSet.FieldByName('INGRESA_LIBRO_IVA').AsString='S' then
    sbEstado.Panels[1].Text:='Iva';

  PagCtaOrden.TabVisible          :=  dbchCtayOrden.Checked;
end;


procedure TFormTicketVta.ReHacerQrExecute(Sender: TObject);
Var QrImage:TBitmap;
FechaQr:String;
CuitVendedor  :String;
CuitComprador :String;
TipoDocReceptor:Integer;
begin
  QRImage      := TBitmap.Create;
  CuitVendedor := DMMain_FD.FormatoCUIT(DatosVentasTicket.CDSEmpresaCUIT.Value);
  if Trim(DatosVentasTicket.CDSSucursalCERTIFICADO_ELEC.AsString)<>'' then
    CuitVendedor :=DMMain_FD.FormatoCUIT(DatosVentasTicket.CDSSucursalCUIT.Value);

  CuitComprador :=DMMain_FD.FormatoCUIT(DSBase.DataSet.FieldByName('CUIT').AsString);

  case DSBase.DataSet.FieldByName('TIPOIVA').AsInteger of
    1,5,6:TipoDocReceptor:=80;
    3    :TipoDocReceptor:=96;
  end;
  if (DSBase.DataSet.FieldByName('TIPOIVA').AsInteger=3) and  (DSBase.DataSet.FieldByName('Total').Asfloat<DMMain_FD.LimiteFactB) then
    begin
      TipoDocReceptor := 99;
      CuitComprador   := '0'
    end;


  if (FormFiscalizacion<>nil) then
    begin
      FreeAndNil(FormFiscalizacion);
      FormFiscalizacion:=nil;
    end;
  if Not(Assigned(FormFiscalizacion)) then
    FormFiscalizacion:= TFormFiscalizacion.Create(self);
  FechaQr   := FormatDateTime('yyyy-mm-dd', DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime);
  QRImage   := FormFiscalizacion.GenerarQR(1,FechaQr,
                                        StrToFLoat(CuitVendedor),// DSBase.DataSet.FieldByName('CUIT').AsFloat,
                                        DSBase.DataSet.FieldByName('SUCFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('MUESTRACODIGOAFIP').AsInteger,
                                        DSBase.DataSet.FieldByName('NUMEROFAC').AsInteger,
                                        DSBase.DataSet.FieldByName('Total').Asfloat,
                                        'PES',
                                        1,
                                        TipoDocReceptor,
                                        StrToFloat(CuitComprador),
                                        'E',
                                        DSBase.DataSet.FieldByName('CAE').Asfloat);

  if Not(DMStoreProcedure.ActualizaCAE_VTO(DSBase.DataSet.FieldByName('ID_FC').AsInteger,
                                           DSBase.DataSet.FieldByName('FECHAVTA').AsDateTime,
                                           DSBase.DataSet.FieldByName('CAE').AsString,
                                           DSBase.DataSet.FieldByName('CAE_VENCIMIENTO').AsdateTime,
                                           DSBase.DataSet.FieldByName('NUMEROFAC').AsString,QRImage)) Then
    ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');  //

  FreeAndNil(QrImage);
  FreeAndNil(FormFiscalizacion);
  Recuperar.Execute;
end;

procedure TFormTicketVta.RevisionValoresIngExecute(Sender: TObject);
var AUx:String;
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        Aux:= FrameMovValoresIngreso1.lbTotalValores.Caption;
        Aux:= AnsiReplaceText(Aux,',','');
        if Not(Assigned(FormRevisionValoresIngreso)) then
          FormRevisionValoresIngreso := TFormRevisionValoresIngreso.Create(Self);
        FormRevisionValoresIngreso.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_FC').Value;
        FormRevisionValoresIngreso.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresIngreso.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresIngreso.ImporteOriginal := StrToFloat(Aux);// DSBase.DataSet.FieldByName('Total').Value;
        FormRevisionValoresIngreso.Id_Caja         := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresIngreso.Id_Cta_Caja     := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresIngreso.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresIngreso.FechaOperacion  := DSBase.DataSet.FieldByName('FechaVta').Value;
        FormRevisionValoresIngreso.Origen          := DSBase.DataSet.FieldByName('RAZONSOCIAL').Value;
        FormRevisionValoresIngreso.Cuit            := DSBase.DataSet.FieldByName('CUIT').Value;
        FormRevisionValoresIngreso.Show;
      end;
end;

procedure TFormTicketVta.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux:Real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  FrameMovValoresIngreso1.CalcularValores;
  CalcularRecargosTC.Execute;
  aux:= DatosVentasTicket.CDSVentaCabTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosVentasTicket.MascaraCabecera,aux);

end;

procedure TFormTicketVta.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:Real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
  FrameMovValoresIngreso1.CalcularValores;
  CalcularRecargosTC.Execute;
  aux:= DatosVentasTicket.CDSVentaCabTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores );
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosVentasTicket.MascaraCabecera,aux);
end;

procedure TFormTicketVta.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  if FrameMovValoresIngreso1.CDSCajaMovID_TPAGO.Value=4 then
    CancelarRecargoTC.Execute;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormTicketVta.FreezarExecute(Sender: TObject);
var i:integer;
CDSCab,CDSDet:TClientDataSet;
begin
  inherited;
  if ((DatosVentasTicket.CDSVentaCab.IsEmpty) or (Not(DSBase.State in [dsInsert]))) Then
    Raise exception.Create('No se puede hacer esta Operacion..');

  if not DirectoryExists(PathFreezerCtdo) then
    CreateDir(PathFreezerCtdo);
  if (Not(DatosVentasTicket.CDSVentaCab.IsEmpty) and (DatosVentasTicket.CDSVentaCabTOTAL.AsFloat>0)) and (DSBase.State in [dsInsert]) Then
    begin
      DatosVentasTicket.CDSVentaCabRENGLONES.Value := DatosVentasTicket.CDSVentaDet.RecordCount;
      DatosVentasTicket.CDSVentaCabDebe.ASFloat    := DatosVentasTicket.CDSVentaCabTotal.AsFloat;

      if DatosVentasTicket.CDSVentaCab.State in [dsInsert,dsEdit] then
        DatosVentasTicket.CDSVentaCab.Post;

      if DatosVentasTicket.CDSVentaDet.State in [dsInsert,dsEdit] then
        DatosVentasTicket.CDSVentaDet.Post;

      CDSCab:=TClientDataSet.Create(Self);
      CDSCab.CloneCursor(DatosVentasTicket.CDSVentaCab,True);
      CDSDet:=TClientDataSet.Create(Self);
      CDSDet.CloneCursor(DatosVentasTicket.CDSVentaDet,True);

      CDSCab.SaveToFile(PathFreezerCtdo+'\'+DatosVentasTicket.CDSVentaCabID_FC.AsString+'-'+DatosVentasTicket.CDSVentaCabCODIGO.AsString+'-'+DatosVentasTicket.CDSVentaCabNOMBRE.AsString+'.XML');
      CDSDet.SaveToFile(PathFreezerCtdo+'\'+DatosVentasTicket.CDSVentaDetID_CABFAC.AsString+'.xm_');
      ShowMessage('Comprobante freezado............');
    end
  else
    ShowMessage('No Hay datos para exportar....');
  FreeAndNil(CDSCab);
  FreeAndNil(CDSDet);

  DatosVentasTicket.CDSVentaCab.close;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaCab.Open;

  DatosVentasTicket.CDSVentaDet.Close;
  DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVentaDet.Open;

  DatosVentasTicket.CDSImpuestos.Close;
  DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSImpuestos.Open;

  DatosVentasTicket.CDSVtaSubDetalle.Close;
  DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVtaSubDetalle.Open;

  DatosVentasTicket.CDSVtaDetConsig.Close;
  DatosVentasTicket.CDSVtaDetConsig.Params.ParamByName('id').Clear;
  DatosVentasTicket.CDSVtaDetConsig.Open;

  btNuevo.SetFocus;
end;

procedure TFormTicketVta.frFacturaPrintReport(Sender: TObject);
begin
  inherited;
  impresa:=True;
end;

procedure TFormTicketVta.HacerNC_2Execute(Sender: TObject);
var Id_NC:Integer;
TextoLog:String;
begin
  if Assigned(FormCpbte_2) then
    begin
      FormCpbte_2.Close;
      FreeANdNil(FormCpbte_2);
    end;

  ID_Cta_Caja        := -1;

  if (DMMain_FD.AutorizadoHacerNC=False) Then
    raise Exception.Create('No esta Autorizado para esta Operacion....');


  if DatosVentasTicket.CDSVentaCabANULADO.Value='S' then
    Raise Exception.Create('Comprobante anulado...');
  DatosVentasTicket.QNCPorDefecto.Close;
  DatosVentasTicket.QNCPorDefecto.ParamByName('codigo').Value:=DatosVentasTicket.CDSVentaCabCODIGO.Value;
  DatosVentasTicket.QNCPorDefecto.Open;
  if (DatosVentasTicket.QNCPorDefecto.Fields[0].AsString='') then
    begin
      DatosVentasTicket.CDSInscripcion.Close;
      DatosVentasTicket.CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosVentasTicket.CDSVentaCabTIPOIVA.AsInteger;
      DatosVentasTicket.CDSInscripcion.Open;
      IF NOT (DatosVentasTicket.CDSInscripcion.Eof) THEN
        begin
          DatosVentasTicket.CDSComprobantePorDefecto.Close;
          DatosVentasTicket.CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= DatosVentasTicket.CDSInscripcionDISCRIMINAIVA.Value;
          DatosVentasTicket.CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
          DatosVentasTicket.CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
          DatosVentasTicket.CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'NC';
          DatosVentasTicket.CDSComprobantePorDefecto.Open;
          if (DatosVentasTicket.CDSComprobantePorDefecto.RecordCount=1) and
             (DatosVentasTicket.CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
            begin
              IDComprobante      := DatosVentasTicket.CDSComprobantePorDefecto.Fields[0].AsInteger;
              SucursalComprobante:= DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
              ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
              FormBuscadorTipoCpbte.TipoCpbte2    := '';
              FormBuscadorTipoCpbte.TipoCpbte3    := '';
              FormBuscadorTipoCpbte.CV            := 'V';
              FormBuscadorTipoCpbte.Sucursal      := DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA := DatosVentasTicket.CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              if FormBuscadorTipoCpbte.ModalResult=mrOk then
                begin
                  SucursalComprobante:= FormBuscadorTipoCpbte.Sucursal;
                  IDComprobante      := FormBuscadorTipoCpbte.Id_Cpbte;
                  ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
                end
              else
                Exit;
            end;
        end;
     end
   else
     BEGIN
       if (MessageDlg('Comprobante por defecto NC '+DatosVentasTicket.QNCPorDefectoDENOMINACION.Value+' Confirma?',mtInformation,[mbYes, mbNo], 0, mbYes)=mrYes) then
         begin
           SucursalComprobante:= DatosVentasTicket.QNCPorDefectoSUCURSAL.Value;
           IDComprobante      := DatosVentasTicket.QNCPorDefectoID_NOTACREDITOPORDEFECTO.Value;
           ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
         end
       else
         begin
           if Not(Assigned(FormBuscadorTipoCpbte)) then
              FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
           FormBuscadorTipoCpbte.TipoCpbte1   := 'NC';
           FormBuscadorTipoCpbte.TipoCpbte2   := '';
           FormBuscadorTipoCpbte.TipoCpbte3   := '';
           FormBuscadorTipoCpbte.CV           := 'V';
           FormBuscadorTipoCpbte.Sucursal     := DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
           FormBuscadorTipoCpbte.DiscriminaIVA:= DatosVentasTicket.CDSInscripcionDISCRIMINAIVA.AsString;
           FormBuscadorTipoCpbte.ShowModal;
             if FormBuscadorTipoCpbte.ModalResult = mrOk then
               begin
                 SucursalComprobante:= FormBuscadorTipoCpbte.Sucursal;
                 IDComprobante      := FormBuscadorTipoCpbte.Id_Cpbte;
                 ID_Cta_Caja        := StrToInt(FrameMovValoresIngreso1.ceCaja.Text);
               end
             else
               Exit;
         end;
      end;
    begin
      if Not(Assigned(FormSeleccionCajaNC)) then
        FormSeleccionCajaNC:=TFormSeleccionCajaNC.Create(self);
      FormSeleccionCajaNC.CajaOrigen  := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
      FormSeleccionCajaNC.CajaDestino := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
      FormSeleccionCajaNC.ShowModal;
      if (FormSeleccionCajaNC.ModalResult = mrOk) then
        begin
          ID_Cta_Caja:= FormSeleccionCajaNC.CajaDestino;
          Id_NC:=DMMain_FD.Hacer_NC(IDComprobante,DSBase.DataSet.FieldByName('ID_FC').ASInteger,ID_Cta_Caja,date);
          if id_nc>-1 Then
            begin
              if Not(Assigned(FormCpbte_2)) Then
                FormCpbte_2:=TFormCpbte_2.Create(Self);
              FormCpbte_2.DatoNew   := IntToStr(id_NC);
              formCpbte_2.TipoCpbte := 'NC';
              FormCpbte_2.Recuperar.Execute;
              FormCpbte_2.Show;
              if (FormCpbte_2.DSBase.DataSet.FieldByName('FACTURA_ELECTRONICA').Value='S') and
                 (FormCpbte_2.DSBase.DataSet.FieldByName('CAE').ASFloat<=0) then
                FormCpbte_2.Fiscalizar.Execute;
              TextoLog:= 'Ingreso NC Automatica desde Tk/Factura '+DSBase.DataSet.FieldByName('NROCPBTE').AsString+
                                  '('+DSBase.DataSet.FieldByName('ID_FC').AsString +')'+' x Valor de '+
                                  FormatFloat(',0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat)+' >> NC-'+DatosVentas.CDSVentaCabNROCPBTE.Value+
                                  '('+DatosVentas.CDSVentaCabID_FC.AsString+')';
              DMMain_FD.LogFileFD(1,4,TextoLog,'NCAUTO');
            end
          else
            showMessage('No se Pudo Hacer la NC....');
        end
      else
        ShowMessage('Operacion Cancelada...');
    end;

end;

procedure TFormTicketVta.pcDetalleFacturaChange(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] Then
    begin
      DatosVentasTicket.ReAsignarDetalle;
      WITH FrameMovValoresIngreso1 DO
        BEGIN
          if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              IF NOT (QCajaCab.IsEmpty) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
             end;
          TipoCpbte      := DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value;
          TipoOperacion  := 'I';
          ClaseCpbte     := DatosVentasTicket.CDSVentaCabCLASECPBTE.Value;
          NroCpbte       := DatosVentasTicket.CDSVentaCabNROCPBTE.Value;
          IdCpbte        := DatosVentasTicket.CDSVentaCabID_FC.Value;
          FechaOperacion := DatosVentasTicket.CDSVentaCabFECHAVTA.AsDateTime;
          Origen         := DatosVentasTicket.CDSVentaCabRAZONSOCIAL.Value;

          Documento      := DMMain_FD.GetNroDocumento(DatosVentasTicket.CDSVentaCabCODIGO.AsString);
        END;
    end;
  pnNC.Enabled := pcDetalleFactura.ActivePageIndex = 0;
  pnNC.Visible := pcDetalleFactura.ActivePageIndex = 0;

end;

procedure TFormTicketVta.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
    IF (Trim(RxCCodigo.Text) = '') OR
      (Trim(RxCSucursal.Text) = '') OR
      (Trim(DatosVentasTicket.CDSVentaCabMUESTRACOMPROBANTE.Value)='') OR
      (Trim(dbeSuc.Text) = '') OR
      (Trim(dbeNumero.Text) = '') OR
      (Trim(dbeMuestraVendedor.Text) = '') OR
      (Trim(dbeFechaVta.Text) = '') THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
      END
    else
      begin
        pnCabecera.Enabled       := False;
        pcDetalleFactura.Enabled := True;
      END;
end;

procedure TFormTicketVta.PegarDetalleExecute(Sender: TObject);
Var
  importe: extended;
begin
 inherited;
  shPP.Visible:=False;
  if (DSBase.State in [dsInsert,dsEdit]) and (ActiveControl is TDBGrid) Then
    begin
      DatosVentasTicket.CDSDetalleXML.LoadFromFile(DMMain_FD.MainPath+'Archivos Temporales\TkVtaDet.XML');
      DatosVentasTicket.CDSDetalleXML.First;
      while not(DatosVentasTicket.CDSDetalleXML.Eof) do
        begin
          DatosVentasTicket.CDSVentaDet.Insert;
          DatosVentasTicket.CDSVentaDetCodigoArticulo.Text  :=  DatosVentasTicket.CDSDetalleXML.FieldByName('CODIGOArticulo').AsString;
          DatosVentasTicket.CDSVentaDetDetalle.Value        :=  DatosVentasTicket.CDSDetalleXML.FieldByName('Detalle').AsString;

          DatosVentasTicket.CDSVentaDetCantidad.Text        :=  DatosVentasTicket.CDSDetalleXML.FieldByName('Cantidad').AsString;

          if (DatosVentasTicket.CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N') then
            importe   :=  DatosVentasTicket.CDSDetalleXML.FieldByName('Unitario_Total').AsFloat +
                          DatosVentasTicket.CDSDetalleXML.FieldByName('Iva_Unitario').AsFloat
          else
            importe   :=  DatosVentasTicket.CDSDetalleXML.FieldByName('Unitario_Total').AsFloat;

          DatosVentasTicket.CDSVentaDetUnitario_Total.Text  :=  FloatToStr(Importe);//DatosVentasTicket.CDSDetalleXML.FieldByName('Unitario_Total').AsString;
          DatosVentasTicket.CDSVentaDet.Post;
          DatosVentasTicket.CDSDetalleXML.Next;
        end;
    end;
end;

procedure TFormTicketVta.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursal  ='+DSBase.DataSet.FieldByName('SUCURSAL').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');

  inherited;

end;

procedure TFormTicketVta.PrintTkCambioExecute(Sender: TObject);
begin
  inherited;
  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  DatosVentasTicket.QComprob.Close;
  DatosVentasTicket.QComprob.ParamByName('id').Value :=DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE.Value;
  DatosVentasTicket.QComprob.ParamByName('suc').Value:=DatosVentasTicket.CDSVentaCabSUCURSAL.Value;
  DatosVentasTicket.QComprob.ParamByName('DesglozaIva').Value := '*';
  DatosVentasTicket.QComprob.Open;

  frFactura.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+'Cambio_'+DatosVentasTicket.QComprobREPORTE.AsString);
  frFactura.PrintOptions.Copies :=DatosVentasTicket.QComprobCOPIAS.Value;

  DatosVentasTicket.QComprob.Close;

  frFactura.PrepareReport;
  frFactura.PrintOptions.ShowDialog:=True;

  if chbPreview.Checked=True Then
    frFactura.ShowReport
  else
    begin
      frFactura.PrintOptions.ShowDialog:=False;
      frFactura.Print;
    end;

end;

procedure TFormTicketVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTicketVta:=nil;
end;

procedure TFormTicketVta.BuscarExecute(Sender: TObject);
begin
  inherited;
 IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 29;
  FormBuscaCpbte.TipoCpbte1 := 'TK';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormTicketVta.BuscarLoteExecute(Sender: TObject);
begin
  inherited;
 if DatosVentasTicket.CDSVentaCabTIPOCPBTE.Value='NC' then
     DatosVentasTicket.CDSBuscaLotes.CommandText:='select s.* from stock_lotes_impo s where s.codigo = :codigo';
  DatosVentasTicket.CDSBuscaLotes.Close;
  DatosVentasTicket.CDSBuscaLotes.Params.ParamByName('Codigo').Value:=DatosVentasTicket.CDSVentaDetCODIGOARTICULO.Value;
  DatosVentasTicket.CDSBuscaLotes.Open;
  if (DatosVentasTicket.CDSVentaDetCONTROL_TRAZABILIDAD.Value='S') Then
    begin
   //   if DatosVentas.CDSVentaCabTIPOCPBTE.AsString<>'NC' Then
        begin
          FormTicketVta.comBuscadorLote.Execute;
          if FormTicketVta.comBuscadorLote.rOk Then
            DatosVentasTicket.CDSVentaLoteID_LOTESetText(DatosVentasTicket.CDSVentaLoteID_LOTE,intToStr(comBuscadorLote.Id));
      end
    end;
  DatosVentasTicket.CDSBuscaLotes.Close;
end;

procedure TFormTicketVta.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='V';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='TK' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
      else
        if FormBuscarPorNroReferenica.Tipo='FC' then
          begin
            if Not(Assigned(FormCpbte_2)) then
              FormCpbte_2:=TFormCpbte_2.Create(Application);
            FormCpbte_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
            FormCpbte_2.TipoCpbte:=FormBuscarPorNroReferenica.Tipo;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
          end
        else
          if FormBuscarPorNroReferenica.Tipo='FO' then
            begin
              if Not(Assigned(FormCpbteCtdo_2)) then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
              FormCpbteCtdo_2.DatoNew   :=IntToStr(FormBuscarPorNroReferenica.id);
              FormCpbteCtdo_2.TipoCpbte :=FormBuscarPorNroReferenica.Tipo;
              FormCpbteCtdo_2.Recuperar.Execute;
              FormCpbteCtdo_2.Show;
            end;

     end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormTicketVta.BuscarRecepcionDetalleExecute(Sender: TObject);
begin
  inherited;
  DatosVentasTicket.CDSBuscaRecepDetalle.Close;
  DatosVentasTicket.CDSBuscaRecepDetalle.Params.ParamByName('Proveedor').Value:=DatosVentasTicket.CDSVentaCabPROVEEDOR.Value;
  DatosVentasTicket.CDSBuscaRecepDetalle.Params.ParamByName('Codigo').Value   :=DatosVentasTicket.CDSVtaDetConsigCODIGO.Value;
  DatosVentasTicket.CDSBuscaRecepDetalle.Open;
  comBuscadorRecepciones.Execute;
  if comBuscadorRecepciones.rOk then
    DatosVentasTicket.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(DatosVentasTicket.CDSVtaDetConsigID_MOV_RECEPCION_DET,IntToStr(comBuscadorRecepciones.Id));
  DatosVentasTicket.CDSBuscaRecepDetalle.Close;
end;

end.


