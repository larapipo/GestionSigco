unit URecibo_2;

interface

uses
  Windows, Messages, SqlExpr, DBXCommon, UABMBase, FMTBcd, Menus,
  frxExportText, frxClass, frxExportPDF, frxDBSet,
  Controls, StdCtrls, JvExControls, JvxCheckListBox, JvExStdCtrls,
  JvEdit, JvValidateEdit, JvExExtCtrls, JvExtComponent, JvPanel, DBCtrls,
  Forms, UMovValoresIngreso, JvExDBGrids, JvDBGrid, Grids, DBGrids, ComCtrls, JvToolEdit, JvDBControls,
  JvExMask, Mask, DB, JvComponentBase,System.StrUtils,
  JvFormPlacement, ImgList, Classes, ActnList, JvLabel,
  JvGradient, Buttons, ToolWin, ExtCtrls, IniFiles, Graphics,Math,
  SysUtils, Dialogs, Librerias, Variants, Milib, JvBaseEdits,
  JvBaseDlg, JvCalc,DateUtils, System.Actions, JvAppStorage, JvAppIniStorage,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView,
  cxGrid, cxCalendar, frxExportBaseDialog, System.ImageList, Datasnap.DBClient,
  frCoreClasses,
  System.Messaging, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TViewAltCurrencyMessage = class(TMessage<Boolean>)
  end;
type
  TFormRecibo_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    pcDetalle: TPageControl;
    Pag1: TTabSheet;
    lbObs: TLabel;
    lbTotalAplicado: TLabel;
    dbgAplicaciones: TDBGrid;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    dbgMovCC: TDBGrid;
    Pag2: TTabSheet;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    Pag3: TTabSheet;
    Label1: TLabel;
    BuscarCliente: TAction;
    BuscarSucursal: TAction;
    BuscarPendientes: TAction;
    BuscarRetencion: TAction;
    BuscarTipoCpbte: TAction;
    BitBtn1: TBitBtn;
    btImprimir: TBitBtn;
    sbRefresh: TSpeedButton;
    Recalcular: TAction;
    Imprimir: TAction;
    frRecibo: TfrxReport;
    frDBAplicaciones: TfrxDBDataset;
    frDBMovCaja: TfrxDBDataset;
    frDBRecibo: TfrxDBDataset;
    frDBDRetenciones: TfrxDBDataset;
    BorrarAplicacion: TAction;
    BitBtn2: TBitBtn;
    AplicaAuto: TAction;
    fDBrEmpresa: TfrxDBDataset;
    frDBEfectivo: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBTx: TfrxDBDataset;
    frDBTC: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxSimpleTextExport1: TfrxSimpleTextExport;
    spEnviarCorreo: TSpeedButton;
    EnviarCorreo: TAction;
    dbeMuestraVendedor: TDBEdit;
    BuscarCobrador: TAction;
    Desaplicar: TAction;
    NroRec: TDBText;
    CambiarCodigoFecha: TAction;
    dbchkCPTE_MANUAL: TDBCheckBox;
    dbeDscto: TDBEdit;
    pnl1: TPanel;
    dbtNC_NROCOMPROB: TDBText;
    dbtNc: TDBText;
    dbtCuit: TDBText;
    dbtGrupo: TDBText;
    dbgMovACta: TJvDBGrid;
    btImputaciones: TBitBtn;
    Imputaciones: TAction;
    TraerSaldoActa: TAction;
    dbePorcentaje_DSCTO: TDBEdit;
    IniciarFoco: TAction;
    spSuma: TSpeedButton;
    dbtTotalNeto: TDBEdit;
    pnTotal: TPanel;
    dbeTotal: TDBEdit;
    pnAplicado: TPanel;
    dbtMUESTRAIVA: TDBText;
    pmAplicaciones: TPopupMenu;
    BorrarUnaAplicacion: TAction;
    BorrarTodasAplicaciones: TAction;
    BorrarAplicacin1: TMenuItem;
    BorrarTodas1: TMenuItem;
    spBorrarAplicaciones: TSpeedButton;
    CambiarClaseCpbte: TAction;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    dbeFecha: TJvDBDateEdit;
    RecalculoFrio: TAction;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel2: TJvLabel;
    pnSaldo: TPanel;
    RxLabel1: TJvLabel;
    dbeSaldo: TDBEdit;
    GravarNumeroOperacion: TAction;
    Label3: TLabel;
    edNumeroOP: TDBText;
    pmOtrasAcciones: TPopupMenu;
    BorrarTodaslasAplicaciones1: TMenuItem;
    BorrarunaAplicacin1: TMenuItem;
    CambiarClaseCpbte2: TMenuItem;
    CambiarCodigooFecha1: TMenuItem;
    GravarNumerodeOperacion2: TMenuItem;
    InicarFocoen1: TMenuItem;
    N2: TMenuItem;
    RecalculoFrio2: TMenuItem;
    ceTotalRetenciones: TJvCalcEdit;
    ceTotalAplicaciones: TJvCalcEdit;
    chbModo: TCheckBox;
    DBText3: TDBText;
    JvLabel1: TJvLabel;
    GravarNroInterno: TAction;
    spBuscaPorInterno: TSpeedButton;
    BuscarPorInterno: TAction;
    GravarNroInterno1: TMenuItem;
    BuscaPorNumeroInterno1: TMenuItem;
    N1: TMenuItem;
    lbGrupo: TLabel;
    BuscarPorReferencia: TAction;
    N3: TMenuItem;
    BuscarPorReferencia1: TMenuItem;
    DBText4: TDBText;
    dbtRecargo: TDBText;
    Label4: TLabel;
    DBText6: TDBText;
    JvLabel2: TJvLabel;
    IngresarEfectivo: TAction;
    N4: TMenuItem;
    IngresarEfectivo1: TMenuItem;
    VerComprobante: TAction;
    pmMovCC: TPopupMenu;
    VerComprobante1: TMenuItem;
    RevisionValoresIngresados: TAction;
    MainMenu: TMainMenu;
    OtrasOpciones1: TMenuItem;
    ToolBar2: TToolBar;
    RevisiondeValoresIngresados2: TMenuItem;
    BorrarAplicacion1: TMenuItem;
    N5: TMenuItem;
    BorrarTodasAplicaciones1: TMenuItem;
    CambiarClaseCpbte1: TMenuItem;
    CambiarCodigoFecha1: TMenuItem;
    dbgRetenciones: TJvDBGrid;
    DBText1: TDBText;
    DBText2: TDBText;
    ComBuscadorSucursal: TComBuscador;
    comBuscadorRetenciones: TComBuscador;
    comBuscadorCobrador: TComBuscador;
    VerCtaCte: TAction;
    sbVerCtaCte: TSpeedButton;
    ToolButton1: TToolButton;
    RcTemporales: TAction;
    spRecibosTemporales: TSpeedButton;
    AsignarObra: TAction;
    Label54: TLabel;
    DBText42: TDBText;
    dbtCotizacion: TDBText;
    dblMoneda: TDBLookupComboBox;
    JvLabel3: TJvLabel;
    spCotizacion: TToolButton;
    Cotizacion: TAction;
    ExportarXML: TAction;
    frDBAplicacionNC: TfrxDBDataset;
    N6: TMenuItem;
    VerMonedaAlternartiva: TMenuItem;
    AsignarObra1: TMenuItem;
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarPendientesExecute(Sender: TObject);
    procedure BuscarRetencionExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure dbgAplicacionesColEnter(Sender: TObject);
    procedure dbgAplicacionesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure dbgAplicacionesDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure pcDetalleChange(Sender: TObject);
    procedure pcDetalleEnter(Sender: TObject);
  //  procedure wwdbgretencionesColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure RecalcularExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ImprimirExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgMovCCTitleClick(Column: TColumn);
    procedure dbgMovCCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure BorrarAplicacionExecute(Sender: TObject);
    procedure dbgAplicacionesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbeFechaExit(Sender: TObject);
    procedure AplicaAutoExecute(Sender: TObject);
//    procedure wwdbFechaRetencionExit(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure BuscarCobradorExecute(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DesaplicarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure CambiarCodigoFechaExecute(Sender: TObject);
    procedure dbchkCPTE_MANUALClick(Sender: TObject);
    procedure pnl1DblClick(Sender: TObject);
    procedure dbgAplicacionesDblClick(Sender: TObject);
    procedure ImputacionesExecute(Sender: TObject);
    procedure TraerSaldoActaExecute(Sender: TObject);
    procedure dbtNC_NROCOMPROBClick(Sender: TObject);
    procedure dbtNcClick(Sender: TObject);
    procedure IniciarFocoExecute(Sender: TObject);
    procedure dbeDsctoEnter(Sender: TObject);
    procedure dbePorcentaje_DSCTOEnter(Sender: TObject);
    procedure spSumaClick(Sender: TObject);
    procedure dbgMovACtaDblClick(Sender: TObject);
    procedure BorrarUnaAplicacionExecute(Sender: TObject);
    procedure BorrarTodasAplicacionesExecute(Sender: TObject);
    procedure CambiarClaseCpbteExecute(Sender: TObject);
    procedure RecalculoFrioExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresIngreso1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure dbgMovCCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure chbModoClick(Sender: TObject);
    procedure GravarNroInternoExecute(Sender: TObject);
    procedure BuscarPorInternoExecute(Sender: TObject);
    procedure dbtTotalNetoEnter(Sender: TObject);
    procedure dbtTotalNetoExit(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure BorrarAplicacin1Click(Sender: TObject);
    procedure BorrarTodas1Click(Sender: TObject);
    procedure IngresarEfectivoExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure dbgMovCCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure RevisionValoresIngresadosExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRetencionesColEnter(Sender: TObject);
    procedure dbgRetencionesCellClick(Column: TColumn);
    procedure dbgMovCCDblClick(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure RcTemporalesExecute(Sender: TObject);
    procedure AsignarObraExecute(Sender: TObject);
    procedure dblMonedaClick(Sender: TObject);
    procedure CotizacionExecute(Sender: TObject);
    procedure ExportarXMLExecute(Sender: TObject);
    procedure FrameMovValoresIngreso1ImportarCheques1Click(Sender: TObject);
    procedure VerMonedaAlternartivaClick(Sender: TObject);
  private
    { Private declarations }
    FCliente: string;
    function  GetCliente: string;
    function  GetImporte: Extended;
    procedure SetCliente(Value: string);
    procedure SetImporte(Value: Extended);
    procedure SetObservaciones(Value: string);




  public
    ND_Generada,
    GenerarDebito,
    ReciboGenerado : Boolean;
    ND_Id       : Integer;
    Anulado     : Tpanel;
    CajaAbierta : Boolean;
    BorraAplicaciones:Boolean;
    ReciboIni   : TIniFile;
    CajaNro     : Integer;
    Saldo       : Real;
    Foco        : Integer; // 0:fecha - 1:Codigo Cliente
    AplicacionAutomatica:String;
    SucursalComprobante :Integer;
    IDComprobante       :Integer;
    GrupoRec,GrupoMov   :Integer;  // estos los uso para saber de que grupo es el recibo y luego
                                   // lo comparo con el de spMovCtaCte_Grupo
    UsarFiltrado   :Boolean;
    UsarGrupoFiltro:Boolean;
    CpbteNuevo  :Boolean; 
    procedure AgregarCabNC;
    procedure AgregarDetNC;
    procedure AgregarDetNC_Simplificado;

    procedure AgregarCabND;
    procedure AgregarDetND_Simplificado;

    Procedure Hacer_NDebito;
    procedure ReAsignaAplicaciones;

    function  GeneraAplicacion(const DSMov: TDataSet; Var Saldo: Extended): Boolean;  overload;
    function  GeneraAplicacion(const IdMov: integer)                      : Boolean;   overload;
    function  GeneraAplicacion(const DSMov: TDataSet)                     : Boolean;   overload;

  published
    property  Cliente: string           read GetCliente       write SetCliente;
    property  Importe: Extended         read GetImporte       write SetImporte;
    property  Observaciones: string                           write SetObservaciones;


    { Public declarations }
  end;

var
  FormRecibo_2: TFormRecibo_2;

PROCEDURE UltimoComprobante;

implementation

USES DMRecibos, UBuscadorCpbte, UBuscadorClientes, UCorreo,
  UCambiaClienteFecha_Recibo, UBuscadorTipoCpbte,
  UFactura_2, DMVenta, UAplicacionesCCVta_2, UMuestraCpbteCtaCteVta,
  UAjustesCCClientes_2, UCambiaClaseComprobante,
  DMStoreProcedureForm, UConfiguracionRecibo, DMBuscadoresForm,
  USumaAplicacionesRc, UNumeroOperacion, UIngresaNroOP, UNumeroInterno,
  UBuscadorReciboNroInt, UBuscadorCheCompartido, UBuscarPorNroReferencia,
  UBuscadorComprobantes, UAnulacionRecibos, URevisionValoresIngreso, UDMain_FD, UCtaCteVta,
  URecibosTemporales, UEleccionCaja, UAsignaObra, UIngresoCotizacion;

{$R *.DFM}

function  TFormRecibo_2.GeneraAplicacion(const DSMov: TDataSet; Var Saldo: Extended): Boolean;
var
  SaldoAct: Extended;
begin
  if not DSMov.IsEmpty then
    begin
      SaldoAct  :=  Saldo;
      DSMov.First;
      with DatosRecibos do
        while (not DSMov.Eof) and (SaldoAct >= 0.01) and (CDSReciboSALDO_APLICAR.AsFloat >= 0.01 ) do
          begin
            try
              if GeneraAplicacion(DSMov) then
                SaldoAct :=  SaldoAct -  CDSMovAplicaCCVtaIMPORTE.AsFloat;
            except
            end;

            DSMov.Next;
          end;

      if Saldo <> SaldoAct then
        begin
          Saldo   :=  SaldoAct;
          Result  :=  True;
        end
      else
        Result    :=  False;
    end
  else
    Result        :=  False;
end;


function  TFormRecibo_2.GeneraAplicacion(const DSMov: TDataSet): Boolean;
begin
  with DatosRecibos, DSMov do
    begin
      IF Moneda3d(' ',MascaraGral, CDSReciboSALDO_APLICAR.AsFloat) > 0 THEN
        IF Moneda3D(' ',MascaraGral, FieldByName('SALDO').Value) >= 0.01 THEN
          BEGIN
            if (DMMain_FD.HayFiltros=True) then
              begin
                if FieldByName('MUESTRAGRUPO').AsString<>'' then
                  GrupoMov  := FieldByName('MUESTRAGRUPO').AsInteger
                else
                  GrupoMov:=-1;
              end
            else
              GrupoMov := -1;

            // para igonrar los grupos ///**** para los pagos automaticos desde abonos u otro no se 11/07/2017
            if not UsarGrupoFiltro then
              begin
                GrupoRec:=-1;
                GrupoMov:=-1;
              end;

            if (GrupoRec=GrupoMov) then
                begin
                  CDSMovAplicaCCVta.Append;
                  CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value  := FieldByName('Id_Cpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value  := FieldByName('NroCpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.Value := FieldByName('TipoCpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_CLASECPBTE.Value:= FieldByName('ClaseCpbte').Value;
                  CDSMovAplicaCCVtaID_MOVCCVTA.Value      := FieldByName('Id_MovCCVta').Value;
                  CDSMovAplicaCCVtaCLIENTE.Value          := FieldByName('Cliente').Value;
                  IF Moneda3D(' ',MascaraGral, CDSReciboSALDO_APLICAR.AsFloat) >= Moneda3D(' ',MascaraGral, FieldByName('SALDO').Value) THEN
                    CDSMovAplicaCCVtaIMPORTE.AsFloat := FieldByName('SALDO').Value
                  ELSE
                    CDSMovAplicaCCVtaIMPORTE.AsFloat := CDSReciboSALDO_APLICAR.AsFloat;

                  IF Trunc(CDSReciboSALDO_APLICAR.AsFloat*1000) = 0 THEN
                    CDSReciboSALDO_APLICAR.AsFloat := 0;
                  CDSMovAplicaCCVtaMUESTRAMORA.Asinteger := Trunc(CDSReciboFECHA.AsDateTime) - Trunc(CDSMovCCVtaFECHAVTO.AsDateTime);   //DaysBetween(CDSReciboFECHA.AsDateTime,FieldByName('FECHAVTO').AsDateTime)+CDSMovAplicaCCVtaMUESTRAMORA.Asinteger;
                  if CDSMovAplicaCCVtaMUESTRAMORA.Asinteger<0 then
                    CDSMovAplicaCCVtaMUESTRAMORA.Asinteger:=0;

                  CDSMovAplicaCCVtaMUESTRAFECHACPBTE.AsDateTime := FieldByName('FechaVta').AsDateTime;
                  CDSMovAplicaCCVta.Post;
                  Result    :=  True;
                end
                else
                  begin
                    Result  :=  False;
                    raise Exception.Create('El comprobante no pertenecen al mismo grupo que está en el filtro... '+#13+'Verifique el filtro o el movimento... !!!');
                  end;
          END
        ELSE
          begin
            Result  :=  False;
            raise Exception.Create('Comprobante ya cancelado... Verifique!!!');
          end
      ELSE
        begin
          Result  :=  False;
          raise Exception.Create('No hay saldo para asignar pagos... Verifique!!!');
        end;
    end;
end;


function  TFormRecibo_2.GeneraAplicacion(const IdMov: integer): Boolean;
begin
  with DatosRecibos do
    begin
      if  (CDSMovCCVta.Active) and
          (not CDSMovCCVta.IsEmpty) and
          (CDSMovCCVta.Locate('ID_MOVCCVTA',IdMov,[]))
      then
        Result  :=  GeneraAplicacion((CDSMovCCVta as TDataSet))
      else
        Result  :=  False;
    end;
end;


function  TFormRecibo_2.GetCliente: string;
begin
  if (DSBase.State <> dsInactive) and (not DSBase.DataSet.IsEmpty) then
    Result  :=  DSBase.DataSet.FieldByName('CODIGO').AsString
  else
    Result  :=  FCliente;
end;

procedure TFormRecibo_2.SetCliente(Value: string);
begin
  if (DSBase.State in [dsInsert,dsEdit])  then
    begin
      DSBase.DataSet.FieldByName('CODIGO').Text :=  Value;
      FCliente  :=  DSBase.DataSet.FieldByName('CODIGO').AsString;
    end
  else
    FCliente    :=  Value;
end;

function  TFormRecibo_2.GetImporte: Extended;
begin
  if (DSBase.State <> dsInactive) and (not DSBase.DataSet.IsEmpty) then
    Result  :=  DSBase.DataSet.FieldByName('TOTAL').AsFloat
  else
    Result  :=  0;
end;

procedure TFormRecibo_2.SetImporte(Value: Extended);
begin
  if (DSBase.State in [dsInsert,dsEdit]) then
    DSBase.DataSet.FieldByName('TOTAL').Text :=  FloatToStr(Value);
end;


procedure TFormRecibo_2.SetObservaciones(Value: string);
begin
  if (DSBase.State in [dsInsert,dsEdit]) then
    DSBase.DataSet.FieldByName('OBSERVACION1').Text :=  Value;
end;

procedure TFormRecibo_2.AgregarCabNC;
begin
  with DatosVentas,DatosRecibos DO
    begin
      FormCpbte_2.SucursalPorDefecto:= SucursalComprobante;
      FormCpbte_2.DiscriminaIva     := 'S';
      DatosVentas.CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
      DatosVentas.CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSReciboCodigo.AsString);
      DatosVentas.CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      if DepositoPorDefecto>-1 then
        DatosVentas.CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(DepositoPorDefecto))
      else
        DatosVentas.CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(DMMain_FD.DepositoPorSucursal(SucursalComprobante)));
      DatosVentas.CDSVentaCabANULADO.Value      := 'N';
      DatosVentas.CDSVentaCabIMPRESO.Value      := 'N';
      DatosVentas.CDSVentaCabNC_CONTADO.Value   := 'N';
      DatosVentas.CDSVentaCabPERCIBE_IB.Value   := 'N';
      DatosVentas.CDSVentaCabOBSERVACION1.Value := 'N.C POR DESCTO. RECIBO '+DatosRecibos.CDSReciboNROCPBTE.Value;
      DatosVentas.CDSVentaCabOBSERVACION2.Value := '';
      DatosVentas.CDSVentaCabCPTE_MANUAL.Value  := 'N';
      DatosVentas.CDSVentaCabUSUARIO.Value      := DMMain_FD.UsuarioActivo;
      if Not(CDSMovAplicaCCVta.IsEmpty) then
        begin
          CDSMovAplicaCCVta.Last;
          DatosVentas.CDSVentaCabASOCIADO_ID_CPBTE.Value := CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value;
          DatosVentas.CDSVentaCabASOCIADO_TIPO.Value     := DMMain_FD.GetCodAfipCpbte(CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value);
          DatosVentas.CDSVentaCabASOCIADO_PTOVTA.Value   := StrToInt(Copy(CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value,2,4));
          DatosVentas.CDSVentaCabASOCIADO_NRO.Value      := StrToInt(Copy(CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value,6,8));
          DatosVentas.CDSVentaCabASOCIADO_CPTEFCH.Value  := FormatDateTime('YYYYMMDD',CDSMovAplicaCCVtaMUESTRAFECHACPBTE.AsDateTime);
        end;
    end;
end;

procedure TFormRecibo_2.AgregarDetNC;
var Aux,Porcentaje,Coeficiente:Real;
begin
  with DatosVentas,DatosRecibos DO
    begin
      Porcentaje:=(DatosRecibos.CDSReciboIMPORTE_DSCTO.AsFloat/DatosRecibos.CDSReciboTOTAL_NETO.AsFloat);
      // aca inicio la carga de los detalles desde la plantilla de NC
      CDSDetallesNc.Close;
      CDSDetallesNc.Open;
      CDSDetallesNc.First;
      while not(CDSDetallesNc.Eof) do
        begin
          CDSVentaDet.Append;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSDetallesNcCodigo.Value);
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
          CDSVentaDet.Post;
          CDSDetallesNc.Next;
        end;
      CDSDetallesNc.Close;
      // Final de Carga *******************************

      CDSMovAplicaCCVta.First;
      while not(CDSMovAplicaCCVta.Eof) and (CDSVentaCabTOTAL.AsFloat<=CDSReciboIMPORTE_DSCTO.AsFloat) do
        begin
          CDSImpuestosFac.Close;
          CDSImpuestosFac.Params.ParamByName('id').Value := CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value;
          CDSImpuestosFac.Open;
          CDSImpuestosFac.First;
          while Not(CDSImpuestosFac.eof) do
            begin
              {Aca llamo al Sp para que me calcule la parte proporciaonal del neto
               que le cobro , es por si tengo un pago parcial entonces tomo la parte
               proporcional ***************************************************}
              Coeficiente:=1;
              {*********************************************************************}
              QCalcular_PorcentajeFD.Close;
              QCalcular_PorcentajeFD.ParamByName('id').Value        := CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value;
              QCalcular_PorcentajeFD.ParamByName('a_pagar').Value   := CDSMovAplicaCCVtaIMPORTE.AsFloat;
              QCalcular_PorcentajeFD.Open;
              Coeficiente:=QCalcular_PorcentajeFD.Fields[0].AsFloat;
              QCalcular_PorcentajeFD.Close;

              if CDSImpuestosFac.Fields[0].AsString<>'' then
                begin
                  if CDSVentaDet.Locate('iva_tasa',FloatToStr(DatosRecibos.CDSImpuestosFacTASA.AsFloat),[]) then
                    begin
                      // esta linea solo la puse para saber cuanto era el neto... no tiene valor
                      Aux:=CDSImpuestosFacNETO.AsFloat;
                      Aux:=0;
                      if CDSVentaCabDESGLOZAIVA.Value='S' then
                        Aux := CDSImpuestosFacNETO.AsFloat * Coeficiente * Porcentaje
                      else
                        Aux := CDSImpuestosFacNETO.AsFloat * (1+CDSImpuestosFacTASA.AsFloat *0.01 ) * Coeficiente * Porcentaje;
                      CDSVentaDet.Edit;
                      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(DatosVentas.CDSVentaDetUnitario_Total.AsFloat+Aux));
{                     if CDSVentaCabDESGLOZAIVA.Value='S' then
                        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(CDSVentaDetUnitario_Total.AsFloat+Aux))
                      else
                        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FormatFloat('0.00',((CDSVentaDetUnitario_Total.AsFloat+Aux)) * (1+CDSImpuestosFacTASA.AsFloat*0.01 )));
}
                      CDSVentaDet.Post;
                    end;
                end
              else
                 begin
                   if CDSVentaDet.Locate('iva_tasa','0',[]) then
                     begin
                       Aux:=0;
                       Aux:=(CDSImpuestosFacNETO.AsFloat*Porcentaje);
                       CDSVentaDet.Edit;
                       CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(CDSVentaDetUnitario_Total.AsFloat+Aux));
                       CDSVentaDet.Post;
                     end;
                 end;
              CDSImpuestosFac.Next;
            end;

          // aca verifico los exentos
          QFacturaFD.Close;
          QFacturaFD.ParamByName('id').Value := CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value;
          QFacturaFD.Open;
          if QFacturaFD.Fields[0].AsString<>'' then
            begin
              if CDSVentaDet.Locate('iva_tasa','0',[]) then
                 begin
                   Aux:=0;
                   Aux:=(QFacturaFDNETOEXEN2.AsFloat*Porcentaje);
                   CDSVentaDet.Edit;
                   CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(CDSVentaDetUnitario_Total.AsFloat+Aux));
                   CDSVentaDet.Post;
                 end;
            end;
          CDSVentaCabOBSERVACION2.Value:=CDSVentaCabOBSERVACION2.Value+Copy(CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value,11,3)+'/';
          CDSMovAplicaCCVta.Next;
        end;
      CDSVentaCabOBSERVACION2.Value:='FC:'+CDSVentaCabOBSERVACION2.Value;

      CDSVentaDet.First;
      while Not(CDSVentaDet.Eof) do
        begin
          if (Trunc(CDSVentaDetTotal.AsFloat*10000) = 0) then
            begin
              CDSVentaDet.Delete;
              CDSVentaDet.First;
            end
          else
            CDSVentaDet.Next;
        end;

      if (Trunc(CDSVentaCabTOTAL.AsFloat*1000)) > (Trunc(CDSReciboIMPORTE_DSCTO.AsFloat*1000)) then
        begin
          if (CDSVentaDet.Locate('iva_tasa','0',[]))  then
            begin
              Aux:=CDSVentaCabTOTAL.AsFloat-CDSReciboIMPORTE_DSCTO.AsFloat;
              if (CDSVentaDetUnitario_Total.AsFloat-Aux>0) then
                begin
                  CDSVentaDet.Edit;
                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(CDSVentaDetUnitario_Total.AsFloat-Aux));
                  CDSVentaDet.Post;
                end
              else
                begin
                  CDSVentaDet.Delete;
                  if CDSVentaDet.Locate('iva_tasa','21',[]) then
                    begin
                      if CDSVentaCabPERCIBE_IB.Value='S' then
                        Aux:= CDSReciboIMPORTE_DSCTO.AsFloat / (1.21 + CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01 )
                      else
                        Aux:= CDSReciboIMPORTE_DSCTO.AsFloat/(1.21);
                      if CDSVentaCabDESGLOZAIVA.Value='N' then
                        aux:= aux * 1.21;
                      CDSVentaDet.Edit;
                      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(Aux));
                      CDSVentaDet.Post;
                    end;
                end;
            end
          else
           if CDSVentaDet.Locate('iva_tasa','10.5',[]) then
             begin
               if CDSVentaCabPERCIBE_IB.Value='S' then
                 Aux := CDSReciboIMPORTE_DSCTO.AsFloat / (1.105 + CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01)
               else
                 Aux := CDSReciboIMPORTE_DSCTO.AsFloat /(1.105);
               if CDSVentaCabDESGLOZAIVA.Value='N' then
                 aux:=aux*1.105;
               CDSVentaDet.Edit;
               CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(Aux));
               CDSVentaDet.Post;
             end
           else
             if CDSVentaDet.Locate('iva_tasa','21',[]) then
               begin
                 if CDSVentaCabPERCIBE_IB.Value='S' then
                   Aux := CDSReciboIMPORTE_DSCTO.AsFloat / (1.21 + CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01)
                 else
                   Aux := CDSReciboIMPORTE_DSCTO.AsFloat/(1.21);
                 if CDSVentaCabDESGLOZAIVA.Value='N' then
                   aux:=aux*1.21;
                 CDSVentaDet.Edit;
                 CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(Aux));
                 CDSVentaDet.Post;
               end;
        end;
    end;
 end;

procedure TFormRecibo_2.AgregarDetNC_Simplificado;
var Aux,Porcentaje,Coeficiente:Real;
begin
  with DatosVentas,DatosRecibos DO
    begin
      Porcentaje:=(DatosRecibos.CDSReciboIMPORTE_DSCTO.AsFloat/DatosRecibos.CDSReciboTOTAL_NETO.AsFloat);
      // aca inicio la carga de los detalles desde la plantilla de NC
      CDSDetallesNc.Close;
      CDSDetallesNc.Open;
      CDSDetallesNc.First;
      while not(CDSDetallesNc.Eof) do
        begin
          CDSVentaDet.Append;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSDetallesNcCodigo.Value);
          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,'0');
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
          CDSVentaDet.Post;
          CDSDetallesNc.Next;
        end;
      CDSDetallesNc.Close;
      begin
        if CDSVentaDet.Locate('TIPOIVA_TASA','1',[]) then
          begin
            Aux:=0;
            if CDSVentaCabDESGLOZAIVA.Value='S' then
              Aux := (CDSReciboIMPORTE_DSCTO.AsFloat / 1.21)
            else
              Aux := CDSReciboIMPORTE_DSCTO.AsFloat;
            CDSVentaDet.Edit;
            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(DatosVentas.CDSVentaDetUnitario_Total.AsFloat+Aux));
            CDSVentaDet.Post;
          end;
   //     CDSVentaCabOBSERVACION2.Value:=CDSVentaCabOBSERVACION2.Value+Copy(CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value,11,3)+'/';
      end;
  //    CDSVentaCabOBSERVACION2.Value:='FC:'+CDSVentaCabOBSERVACION2.Value;

      CDSVentaDet.First;
      while Not(CDSVentaDet.Eof) do
        begin
          if (Trunc(CDSVentaDetTotal.AsFloat*10000) = 0) then
            begin
              CDSVentaDet.Delete;
              CDSVentaDet.First;
            end
          else
            CDSVentaDet.Next;
        end;
    end;
 end;

procedure TFormRecibo_2.AgregarCabND;
begin
  with DatosVentas,DatosRecibos DO
    begin
      FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
     // FormCpbte_2.DepositoPorDefecto:=DepositoPorDefecto;
      FormCpbte_2.DiscriminaIva:='S';
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
      CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSReciboCodigo.AsString);
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(DepositoPorDefecto));
      CDSVentaCabANULADO.Value     :='N';

      CDSVentaCabIMPRESO.Value     :='N';
      CDSVentaCabOBSERVACION1.Value:='N.Deb.Pago Fuera de Termino.RECIBO '+DatosRecibos.CDSReciboNROCPBTE.Value;
      CDSVentaCabOBSERVACION2.Value:='';
      CDSVentaCabCPTE_MANUAL.Value :='N';

      CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    //  FormCpbte_2.DiscriminaIva:='S';
    end;
end;

procedure TFormRecibo_2.AgregarDetND_Simplificado;
var Aux,Porcentaje,Coeficiente:Real;
begin
  with DatosVentas,DatosRecibos DO
    begin
       // aca inicio la carga de los detalles desde la plantilla de NC
      CDSDetallesNc.Close;
      CDSDetallesNc.Open;
      CDSDetallesNc.First;
      while not(CDSDetallesNc.Eof) do
        begin
          CDSVentaDet.Append;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSDetallesNcCodigo.Value);
          CDSVentaDetDETALLE.Value:='RECARGO POR FUERA TERMINO';
          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,'0');
          CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
          CDSVentaDet.Post;
          CDSDetallesNc.Next;
        end;
      CDSDetallesNc.Close;
      begin
        if CDSVentaDet.Locate('iva_tasa','21',[]) then
          begin
            Aux:=0;
            if CDSVentaCabDESGLOZAIVA.Value='S' then
              Aux := RoundTo(CDSReciboIMPORTE_RECARGO.AsFloat / 1.21,-2)
            else
              Aux := CDSReciboIMPORTE_RECARGO.AsFloat;
            CDSVentaDet.Edit;
            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(DatosVentas.CDSVentaDetUnitario_Total.AsFloat+Aux));
            CDSVentaDet.Post;
          end;
        CDSVentaCabOBSERVACION2.Value:=CDSVentaCabOBSERVACION2.Value+Copy(CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value,11,3)+'/';
      end;
      CDSVentaCabOBSERVACION2.Value:='ND:'+CDSVentaCabOBSERVACION2.Value;

      CDSVentaDet.First;
      while Not(CDSVentaDet.Eof) do
        begin
          if (Trunc(CDSVentaDetTotal.AsFloat*10000) = 0) then
            begin
              CDSVentaDet.Delete;
              CDSVentaDet.First;
            end
          else
            CDSVentaDet.Next;
        end;
    end;
 end;

procedure TFormRecibo_2.Hacer_NDebito;
var opOk:Boolean;
begin
  ND_Generada := False;
  opOk        := False;
  //Busco si tiene un comprobante asignado por defecto el cliente
  //****************************************************************
  DatosRecibos.QNDPorDefecto.Close;
  DatosRecibos.QNDPorDefecto.ParamByName('codigo').Value:=DatosRecibos.CDSReciboCODIGO.Value;
  DatosRecibos.QNDPorDefecto.Open;
  if (DatosRecibos.QNDPorDefecto.Fields[0].AsString='') then
    begin
      DatosRecibos.CDSInscripcion.Close;
      DatosRecibos.CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosRecibos.CDSReciboTIPOIVA.AsInteger;
      DatosRecibos.CDSInscripcion.Open;
      IF NOT (DatosRecibos.CDSInscripcion.Eof) THEN
        begin
          if ( TryStrToInt( DMMain_FD.CpbtePorTipo( 'ND','V', DatosRecibos.CDSReciboSUCURSAL.AsInteger,
                                                    DatosRecibos.CDSInscripcionDISCRIMINAIVA.AsString ), IDComprobante))
             and ( IDComprobante > -1)
          then
            begin
              SucursalComprobante:= DatosRecibos.CDSReciboSUCURSAL.Value;
              opOk:=True;
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1:='ND';
              FormBuscadorTipoCpbte.TipoCpbte2:='';
              FormBuscadorTipoCpbte.TipoCpbte3:='';
              FormBuscadorTipoCpbte.CV        :='V';
              FormBuscadorTipoCpbte.Sucursal  :=DatosRecibos.CDSReciboSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA:= DatosRecibos.CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
              opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
            end;
        end;
    end
  else
    BEGIN
      if (MessageDlg('Comprobante por defecto ND '+DatosRecibos.QNCPorDefectoDENOMINACION.Value+' Confirma?',mtInformation,[mbYes, mbNo], 0, mbYes)=mrYes) then
        begin
          SucursalComprobante:=DatosRecibos.QNCPorDefectoSUCURSAL.Value;
          IDComprobante      :=DatosRecibos.QNCPorDefectoID_NOTACREDITOPORDEFECTO.Value;
          opOk:=True;
        end
      else
        begin
          if Not(Assigned(FormBuscadorTipoCpbte)) then
            FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
          FormBuscadorTipoCpbte.TipoCpbte1:='ND';
          FormBuscadorTipoCpbte.TipoCpbte2:='';
          FormBuscadorTipoCpbte.TipoCpbte3:='';
          FormBuscadorTipoCpbte.CV        :='V';
          FormBuscadorTipoCpbte.Sucursal  :=DatosRecibos.CDSReciboSUCURSAL.Value;
          FormBuscadorTipoCpbte.DiscriminaIVA:= DatosRecibos.CDSInscripcionDISCRIMINAIVA.AsString;
          FormBuscadorTipoCpbte.ShowModal;
          SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
          IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
          opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
        end;
    end;

  if (opOk) Then
    begin
      if Not(Assigned(FormCpbte_2)) Then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.show;
      FormCpbte_2.Agregar.Execute;
      AgregarCabND;
      AgregarDetND_Simplificado;
      FormCpbte_2.Confirma.Execute;
      ND_Generada := FormCpbte_2.Generado; // si se hizo o no el comprobante
      if ND_Generada then
        ND_Id:=FormCpbte_2.DSBase.DataSet.FieldByName('ID_FC').Value;
      FormCpbte_2.Close;
      FreeAndNil(FormCpbte_2);
    end;
  Application.ProcessMessages;  
end;

procedure TFormRecibo_2.RcTemporalesExecute(Sender: TObject);
var
  SucursalComprobante,IdComprobante :Integer;
  CtaCaja:Integer;
  CtaCajaNombre:string;
  En:word;
begin
  inherited;
  en:=13;
  if Not( Assigned(FormReciboTemporal)) then
    FormReciboTemporal:=TFormReciboTemporal.Create(Self);
  FormReciboTemporal.ShowModal;
  if (FormReciboTemporal.ModalResult=mrOk ) and (FormReciboTemporal.ID>-1) then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(self);
      FormBuscadorTipoCpbte.TipoCpbte1    :='RC';
      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'V';
      FormBuscadorTipoCpbte.Sucursal      := -1;
      FormBuscadorTipoCpbte.DiscriminaIVA := '*';
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante                 := FormBuscadorTipoCpbte.Sucursal;
      IDComprobante                       := FormBuscadorTipoCpbte.Id_Cpbte;
      if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
        begin
          DatosRecibos.CDSRcTempDet.Close;
          DatosRecibos.CDSRcTempDet.Params.ParamByName('id').Value:=FormReciboTemporal.ID;
          DatosRecibos.CDSRcTempDet.Open;
          DatosRecibos.CDSRcTempDet.First;
          Agregar.Execute;

          DatosRecibos.CDSReciboSUCURSALSetText(DatosRecibos.CDSReciboSUCURSAL,IntToStr(SucursalComprobante));
          DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE,IntToStr(IdComprobante));
          DatosRecibos.CDSReciboCODIGOSetText(DatosRecibos.CDSReciboCODIGO,FormReciboTemporal.Codigo);
          DatosRecibos.CDSReciboTOTALSetText(DatosRecibos.CDSReciboTOTAL,FormatFloat('0.00',FormReciboTemporal.Importe));


          if Not(Assigned(FormEleccionCaja)) Then
            FormEleccionCaja:=TFormEleccionCaja.Create(Self);
          FormEleccionCaja.Caja := FormRecibo_2.CajaPorDefecto;
          FormEleccionCaja.ShowModal;
          if FormEleccionCaja.ModalResult=mrOk then
            begin
              if FormEleccionCaja.Caja>-1 Then
                begin
                  CtaCaja       := FormEleccionCaja.Caja;
                  CtaCajaNombre := FormEleccionCaja.CajaNombre;
                  FormRecibo_2.pcDetalle.ActivePageIndex       := 1;
                  FormRecibo_2.CajaPorDefecto                         := CtaCaja;
                  FormRecibo_2.FrameMovValoresIngreso1.ceCaja.Text    := IntToStr(CtaCaja);
                  FormRecibo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormRecibo_2.FrameMovValoresIngreso1.ceCaja,En,[]);
                  FormRecibo_2.FrameMovValoresIngreso1.TipoCpbte      := DatosRecibos.CDSReciboTIPOCPBTE.Value;
                  FormRecibo_2.FrameMovValoresIngreso1.TipoOperacion  := 'I';
                  FormRecibo_2.FrameMovValoresIngreso1.ClaseCpbte     := DatosRecibos.CDSReciboCLASECPBTE.Value;
                  FormRecibo_2.FrameMovValoresIngreso1.NroCpbte       := DatosRecibos.CDSReciboNROCPBTE.Value;
                  FormRecibo_2.FrameMovValoresIngreso1.IdCpbte        := DatosRecibos.CDSReciboID_RC.Value;
                  FormRecibo_2.FrameMovValoresIngreso1.FechaOperacion := DatosRecibos.CDSReciboFECHA.AsDateTime;
                  FormRecibo_2.FrameMovValoresIngreso1.Origen         := DatosRecibos.CDSReciboRAZONSOCIAL.Value;

                  while not DatosRecibos.CDSRcTempDet.eof do
                    begin
                      FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                      if (DatosRecibos.CDSRcTempDetID_TPAGO.Value=1) Then
                        begin
                          FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,DatosRecibos.CDSRcTempDetID_FPAGO.AsString);
                          FormRecibo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADESSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES,FloatToStr(DatosRecibos.CDSRcTempDetIMPORTE.AsFloat));
                          FormRecibo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Post;
                        end
                      else
                        if (DatosRecibos.CDSRcTempDetID_TPAGO.Value=3) Then
                          begin
                            FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,DatosRecibos.CDSRcTempDetID_FPAGO.AsString);
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3ID_BANCOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSChe3ID_BANCO,DatosRecibos.CDSRcTempDetID_BANCO.AsString);
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3FECHA_ENTRADA.AsDateTime  := DatosRecibos.CDSRcTempDetFECHAPAGO.AsDateTime;
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3FECHA_COBRO.AsDateTime    := DatosRecibos.CDSRcTempDetFECHACOBRO.AsDateTime;
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3FECHA_EMISION.AsDateTime  := DatosRecibos.CDSRcTempDetFECHAEMISION.AsDateTime;
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3NUMERO.Value         := DatosRecibos.CDSRcTempDetNUMERO.Value;
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3UNIDADESSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSChe3UNIDADES,DatosRecibos.CDSRcTempDetIMPORTE.AsString);
                            FormRecibo_2.FrameMovValoresIngreso1.CDSChe3.Post;
                          end
                        else
                          if (DatosRecibos.CDSRcTempDetID_TPAGO.Value=5) Then
                            begin
                              FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,DatosRecibos.CDSRcTempDetID_FPAGO.AsString);
                              FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoID_CUENTA_BANCOSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoID_CUENTA_BANCO,DatosRecibos.CDSRcTempDetID_BANCO.AsString);
                              FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoNUMERO.Value          := DatosRecibos.CDSRcTempDetNUMERO.Value;
                              FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoUNIDADESSetText(FormRecibo_2.FrameMovValoresIngreso1.CDSTransBcoUNIDADES,DatosRecibos.CDSRcTempDetIMPORTE.AsString);
                              FormRecibo_2.FrameMovValoresIngreso1.CDSTransBco.Post;
                            end;


                      DatosRecibos.CDSRcTempDet.Next;
                    end;

                end;
            end;
        end;
    end;
end;

procedure TFormRecibo_2.ReAsignaAplicaciones;
begin
  // verifico y reasigo los mov de aplicaiones
  if Not(DatosRecibos.CDSMovAplicaCCVta.IsEmpty) Then
    begin
      DatosRecibos.CDSMovAplicaCCVta.First;
      while not DatosRecibos.CDSMovAplicaCCVta.Eof DO
        begin
          DatosRecibos.CDSMovAplicaCCVta.Edit;
          DatosRecibos.CDSMovAplicaCCVtaFECHA.Value       := DatosRecibos.CDSReciboFECHA.Value;
          DatosRecibos.CDSMovAplicaCCVtaDETALLE.Value     := DatosRecibos.CDSReciboCLASECPBTE.Value + '-' +
                                                             DatosRecibos.CDSReciboLETRARC.Value + '-' +
                                                             DatosRecibos.CDSReciboSUCRC.Value + '-' +
                                                             DatosRecibos.CDSReciboNUMERORC.Value;
          DatosRecibos.CDSMovAplicaCCVtaID_CPBTE.Value    := DatosRecibos.CDSReciboID_RC.Value;
          DatosRecibos.CDSMovAplicaCCVtaTIPOCPBTE.Value   := DatosRecibos.CDSReciboTIPOCPBTE.Value;
          DatosRecibos.CDSMovAplicaCCVtaCLASECPBTE.Value  := DatosRecibos.CDSReciboCLASECPBTE.Value;
          DatosRecibos.CDSMovAplicaCCVtaNUMEROCPBTE.Value := DatosRecibos.CDSReciboNROCPBTE.Value;
          DatosRecibos.CDSMovAplicaCCVta.Next;
       end;
    end;
end;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosRecibos,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSReciboLETRARC.AsString <> '') AND (CDSReciboCLASECPBTE.Value <>'') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSReciboLETRARC.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSReciboSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSReciboCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSReciboTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSReciboSUCRCSetText(CDSReciboSUCRC, IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
            end
          ELSE
            Numero:=99999999;
          CDSReciboNUMERORCSetText(CDSReciboNUMERORC, IntToStr(Numero));
          CDSReciboTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSReciboCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;

          FormRecibo_2.Imprime        := spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSReciboNROCPBTE.AsString := CDSReciboLETRARC.AsString + CDSReciboSUCRC.AsString +
                                    CDSReciboNUMERORC.AsString;
    END;
END;

procedure TFormRecibo_2.AgregarExecute(Sender: TObject);
begin
  //pnConfiguracion.Visible:=False;
  if FormSumaAplicacionesRc.Visible=True then
    FormSumaAplicacionesRc.Close;
  sbEstado.SimpleText:='';
  if Anulado<>nil Then FreeAndNil(Anulado);
  DatosRecibos.CDSRecibo.close;
  DatosRecibos.CDSRecibo.Params.ParamByName('id').Clear;
  DatosRecibos.CDSRecibo.Open;

  DatosRecibos.CDSMovAplicaCCVta.Close;
  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('id').Clear;
  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('Tipo').Clear;
  Datosrecibos.CDSMovAplicaCCVta.Open;

  DatosRecibos.CDSMovACta.Close;
  DatosRecibos.CDSMovACta.Params.ParamByName('Codigo').Clear;
  DatosRecibos.CDSMovACta.Open;


  DatosRecibos.CDSRetenciones.Close;
  DatosRecibos.CDSRetenciones.Params.ParamByName('Id').Clear;
  DatosRecibos.CDSRetenciones.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSTransBco.Close;

  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;
  inherited;
  FormBuscadoCheCompartido.CDSCheComp.Close;
  FormBuscadoCheCompartido.CDSCheComp.Open;
  DatosRecibos.CDSMovAplicaCCVta.EmptyDataSet;
  DatosRecibos.SumaAplicaciones := 0;
  DatosRecibos.SumaRetenciones  := 0;

  FrameMovValoresIngreso1.SumaValores            := 0;
  FrameMovValoresIngreso1.lbTotalValores.Caption := '0.000';
  ceTotalAplicaciones.Text                       := '0.000';
  ceTotalRetenciones.Text                        := '0.000';
  pcDetalle.ActivePageIndex                      := 0;
  if FormRecibo_2.Visible then
    begin
      if Foco=0 then
        dbeFecha.SetFocus
      else
        RxDBECodigo.SetFocus;
    end;
  CpbteNuevo  := True;  // para saber si es nuevo o es un comp. modificado lo uso en el Confirma

end;

procedure TFormRecibo_2.CambiarClaseCpbteExecute(Sender: TObject);
begin
  inherited;
  if dsBase.DataSet.IsEmpty then
    Raise Exception.Create('No hay datos para procesar.....');
 
  if not(Assigned(FormCambiarClaseCpbte)) then
    FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
  FormCambiarClaseCpbte.Tipo          := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormCambiarClaseCpbte.Clase         := DatosRecibos.CDSReciboCLASECPBTE.Value;
  FormCambiarClaseCpbte.Letra         := DatosRecibos.CDSReciboLETRARC.Value;
  FormCambiarClaseCpbte.Sucursal      := DatosRecibos.CDSReciboSUCURSAL.Value;
  FormCambiarClaseCpbte.NroCpbte      := DSBase.DataSet.FieldByName('NROCPBTE').Value;
  FormCambiarClaseCpbte.IdComprobante := DatosRecibos.CDSReciboID_RC.Value;
  FormCambiarClaseCpbte.ComproVenta   := 'V';
  FormCambiarClaseCpbte.ShowModal;
  DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
  TipoCpbte:=FormCambiarClaseCpbte.Tipo;
  Recuperar.Execute;
end;

procedure TFormRecibo_2.CambiarCodigoFechaExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.DataSet.IsEmpty) and (DSBase.State=dsBrowse) then
    begin
      BorrarAplicacion.Execute;
      if not(Assigned(FormCambioClienteFecha_RC)) then
        FormCambioClienteFecha_RC:=TFormCambioClienteFecha_RC.Create(Self);
      FormCambioClienteFecha_RC.Id      :=DatosRecibos.CDSReciboID_RC.Value;
      FormCambioClienteFecha_RC.Cliente :=DatosRecibos.CDSReciboCODIGO.Value;
      FormCambioClienteFecha_RC.Fecha   :=DatosRecibos.CDSReciboFECHA.AsDateTime;
      FormCambioClienteFecha_RC.Letra   :=DatosRecibos.CDSReciboLETRARC.Value;
      FormCambioClienteFecha_RC.Prefijo :=DatosRecibos.CDSReciboSUCRC.Value;
      FormCambioClienteFecha_RC.Numero  :=DatosRecibos.CDSReciboNUMERORC.Value;
      FormCambioClienteFecha_RC.ShowModal;
      Recuperar.Execute;
    end
end;

procedure TFormRecibo_2.CancelarExecute(Sender: TObject);
begin
//  pnConfiguracion.Visible:=False;
  if FormSumaAplicacionesRc.Visible=True Then
    FormSumaAplicacionesRc.Close;
  if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  if Anulado<>nil Then
    FreeAndNil(Anulado);
  FrameMovValoresIngreso1.CDSMovTCredito.Cancel;
  FrameMovValoresIngreso1.CDSMovEfectivo.Cancel;
  FrameMovValoresIngreso1.CDSChe3.Cancel;
  FrameMovValoresIngreso1.CDSTransBco.Cancel;
  FrameMovValoresIngreso1.CDSCajaMov.Cancel;
  DatosRecibos.CDSRecibo.Close;
  DatosRecibos.CDSRecibo.Params.ParamByName('id').Clear;
  DatosRecibos.CDSRecibo.Open;

  DatosRecibos.CDSMovAplicaCCVta.Close;
  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('id').Clear;
  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('Tipo').Clear;
  Datosrecibos.CDSMovAplicaCCVta.Open;

  DatosRecibos.CDSMovACta.Close;
  DatosRecibos.CDSMovACta.Params.ParamByName('Codigo').Clear;
  DatosRecibos.CDSMovACta.Open;

  DatosRecibos.CDSRetenciones.Close;
  DatosRecibos.CDSRetenciones.Params.ParamByName('Id').Clear;
  DatosRecibos.CDSRetenciones.Open;

  DatosRecibos.CDSMovCCVta.Filter:='';
  DatosRecibos.CDSMovCCVta.Filtered:=False;
  DatosRecibos.CDSMovCCVta.IndexDefs.Clear;
  DatosRecibos.CDSMovCCVta.Close;
  DatosRecibos.CDSMovCCVta.Params.ParamByName('Codigo').Clear;
  DatosRecibos.CDSMovCCVta.Open;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  FrameMovValoresIngreso1.Id_Caja           :=0;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSTransBco.Close;

  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSMovTCredito.Open;
  FrameMovValoresIngreso1.CDSTransBco.Open;
  inherited;
  ReciboGenerado  :=False; // ****** esto lo uso como Flag para la Cobranza de Abonos
  if (TForm(Self.Owner).Name='FormCajaResumen') or
     (TForm(Self.Owner).Name='FormReciboAbonos') then
    Salir.Execute;
  pcDetalle.ActivePageIndex := 0;
  ceTotalAplicaciones.Value := 0;
  if btNuevo.Enabled then
    btNuevo.Setfocus;
  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
end;

procedure TFormRecibo_2.chbModoClick(Sender: TObject);
begin
  inherited;
  if chbModo.Checked then
    chbModo.Caption:='Suma Pendiente'
  else
    if Not(chbModo.Checked) then
      chbModo.Caption:='No Suma Pendiente';
end;

procedure TFormRecibo_2.ConfirmaExecute(Sender: TObject);
var TotalIngresos:Real;
opOk,Aplicado,HayNC:Boolean;
CpbteDicriminaIva:String;
Detalle:string;
d,m,y:Word;
valor1,valor2:int64;
id_movcc:Integer;
begin
 // pnConfiguracion.Visible:=False;
  if FormSumaAplicacionesRc.Visible=True Then
    FormSumaAplicacionesRc.Close;
  IF Moneda3D(' ',DatosRecibos.MascaraGral,DatosRecibos.CDSReciboTOTAL.AsFloat)<= 0 THEN
    RAISE Exception.Create('Comprobante con importe 0(Cero)');
  IF (dbeFecha.Text ='') or (dbeSucursal.Text = '') or
    (dbeNumero.Text ='') or (dbeSuc.Text = '') or
    (dbeLetra.Text = '') or (RxDBECodigo.Text ='') or
    (RxDBESucursal.Text = '') or (dbeTotal.Text = '') Then
    RAISE Exception.Create('Falta algun dato en el encabezado...');


  Valor1:= Trunc(DatosRecibos.SumaAplicaciones * 100);
  Valor2:= Trunc((DatosRecibos.CDSReciboTOTAL.AsFloat + 0.01 )* 100);
  // if CompareValue(DatosRecibos.SumaAplicaciones,DatosRecibos.CDSReciboTOTAL.AsFloat)= 1 then
  if (Valor1 > Valor2) then
    RAISE Exception.Create('La suma de Aplicaciones es mayor del Importe del comprobante...(1)...' +#13+
                            IntToStr(Valor1)+'.>.'+
                            IntToStr(Valor2)  );
 // ***********************************************************
 // esto hace que me salgan mal las imputaciones *******
 // no lo borro para ver como corregir esto
 // ReAsignaAplicaciones;

  if (DatosRecibos.CDSReciboIMPORTE_DSCTO.AsFloat>0) and
     (DatosRecibos.SumaAplicaciones<=0) and (DSBase.DataSet.State=dsInsert) then
    RAISE Exception.Create('Debe aplicar el pago para tomar el Dscto otorgado...');

  if (FrameMovValoresIngreso1.SumaValores<=0) and (DatosRecibos.SumaRetenciones<=0) Then
    begin
      with FrameMovValoresIngreso1 do
        begin
          pcDetalle.ActivePageIndex:=1;
          IF (DSBase.State=dsInsert) THEN
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              if QCajaCab.Fields[0].AsString='' Then
                Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
              IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
                BEGIN
                  ceCaja.Text        := IntToStr(QCajaCabID_CUENTA_CAJA.AsInteger);
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
            end;
          TipoCpbte          := DatosRecibos.CDSReciboTIPOCPBTE.Value;
          TipoOperacion      := 'I';
          ClaseCpbte         := DatosRecibos.CDSReciboCLASECPBTE.Value;
          NroCpbte           := DatosRecibos.CDSReciboNROCPBTE.Value;
          IdCpbte            := DatosRecibos.CDSReciboID_RC.Value;
          FechaOperacion     := DatosRecibos.CDSReciboFECHA.AsDateTime;
          Origen             := DatosRecibos.CDSReciboRAZONSOCIAL.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat            := 0;
          CDSCajaMovDEBE.AsFloat             := DatosRecibos.CDSReciboTOTAL.AsFloat;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value           := 1;
          CDSCajaMovID_FPAGO.Value           := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat         := DatosRecibos.CDSReciboTOTAL.AsFloat;
          CDSCajaMovCOTIZACION.AsFloat       := CDSFormaPagoEfecCOTIZACION.AsFloat;
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
          CDSMovEfectivoUNIDADES.Value       := CDSCajaMovUNIDADES.Value;
          CDSMovEfectivoIMPORTE.AsFloat      := DatosRecibos.CDSReciboTOTAL.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          QCajaCab.Close;
          pcDetalle.ActivePageIndex:=0;
        end;
    end;
  IF FormatFloat(DatosRecibos.MascaraGral,FrameMovValoresIngreso1.SumaValores + DatosRecibos.SumaRetenciones) <>
     FormatFloat(DatosRecibos.MascaraGral, DatosRecibos.CDSReciboTOTAL.AsFloat) THEN
    RAISE Exception.Create('Hay diferencias entre lo percibido .....' + #13 +
                           'Ingresos por...:'+FormatFloat(DatosRecibos.MascaraGral,FrameMovValoresIngreso1.SumaValores + DatosRecibos.SumaRetenciones)+#13+
                           'Importe Cpbte..:'+FormatFloat(DatosRecibos.MascaraGral, DatosRecibos.CDSReciboTOTAL.AsFloat)+#13+
                           'Diferencia.....:'+FormatFloat(DatosRecibos.MascaraGral, DatosRecibos.CDSReciboTOTAL.AsFloat - (FrameMovValoresIngreso1.SumaValores + DatosRecibos.SumaRetenciones)));


  Valor1:= Trunc(DatosRecibos.SumaAplicaciones * 100);
  Valor2:= Trunc((DatosRecibos.CDSReciboTOTAL.AsFloat + 0.01 )* 100);


  IF (Valor1>Valor2) THEN
    RAISE Exception.Create('Lo imputado es mayor que el comprobantes....(2) '+#13+IntToStr(Valor1)+'..>..'+IntToStr(Valor2));

  DatoNew  := IntToStr(DatosRecibos.CDSReciboID_RC.Value);
  TipoCpbte:= DatosRecibos.CDSReciboTIPOCPBTE.Value;

  DatosRecibos.CDSReciboNROCPBTE.Value := DatosRecibos.CDSReciboLETRARC.Value +
                                          DatosRecibos.CDSReciboSUCRC.Value +
                                          DatosRecibos.CDSReciboNUMERORC.Value;
  //******************************************************************
  // Si el Valor de Descuento es mayo a cero hago la NC y el saldo a cta es = 0
  //******************************************************************
  if (Trunc(DatosRecibos.CDSReciboIMPORTE_DSCTO.AsFloat*100)>0) and
     (DSBase.DataSet.State=dsInsert) and
     (Trunc(DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat*100)>0) then
   Raise Exception.Create('Hay descuentos, pero el importe a cta. es mayor que 0(cero), por lo que no se raliza la NC.. Verifique..');

   HayNC:=False;
   // ********************************************************************************
   // ***** Creacion de Nota de Credito Para Los Descuentos **************************
   // ********************************************************************************
   if (DatosRecibos.CDSReciboIMPORTE_DSCTO.AsFloat>0) and (DSBase.DataSet.State=dsInsert) and
     (DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat<=0) then
    begin
      opOk:=False;
      //Busco si tiene un comprobante asignado por defecto el cliente
      //****************************************************************
      DatosRecibos.QNCPorDefecto.Close;
      DatosRecibos.QNCPorDefecto.ParamByName('codigo').Value:=DatosRecibos.CDSReciboCODIGO.Value;
      DatosRecibos.QNCPorDefecto.Open;
      if (DatosRecibos.QNCPorDefecto.Fields[0].AsString='') then
        begin
          DatosRecibos.CDSInscripcion.Close;
          DatosRecibos.CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosRecibos.CDSReciboTIPOIVA.AsInteger;
          DatosRecibos.CDSInscripcion.Open;
          IF NOT (DatosRecibos.CDSInscripcion.Eof) THEN
            begin
             if DMMain_FD.CpbtePorTipo('NC','V',DatosRecibos.CDSReciboSUCURSAL.Value,DatosRecibos.CDSInscripcionDISCRIMINAIVA.Value)<>'' then
               begin
                 IDComprobante      := strToInt(DMMain_FD.CpbtePorTipo('NC','V',DatosRecibos.CDSReciboSUCURSAL.Value,DatosRecibos.CDSInscripcionDISCRIMINAIVA.Value));// DMMain_FD.CDSCompPorTipo.Fields[0].AsInteger;
                 SucursalComprobante:= DatosRecibos.CDSReciboSUCURSAL.Value;
  //               opOk:=True;
               end;
 //            else
 //              begin
                 if Not(Assigned(FormBuscadorTipoCpbte)) then
                   FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                 FormBuscadorTipoCpbte.TipoCpbte1   := 'NC';
                 FormBuscadorTipoCpbte.TipoCpbte2   := '';
                 FormBuscadorTipoCpbte.TipoCpbte3   := '';
                 FormBuscadorTipoCpbte.CV           := 'V';
                 FormBuscadorTipoCpbte.Sucursal     := DatosRecibos.CDSReciboSUCURSAL.Value;
                 FormBuscadorTipoCpbte.DiscriminaIVA:= DatosRecibos.CDSInscripcionDISCRIMINAIVA.AsString;
                 FormBuscadorTipoCpbte.ShowModal;
                 opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
                 SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                 IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
              // end;
            end;
        end
      else
        BEGIN
          if (MessageDlg('Comprobante por defecto NC '+DatosRecibos.QNCPorDefectoDENOMINACION.Value+' Confirma?',mtInformation,[mbYes, mbNo], 0, mbYes)=mrYes) then
            begin
              SucursalComprobante:=DatosRecibos.QNCPorDefectoSUCURSAL.Value;
              IDComprobante      :=DatosRecibos.QNCPorDefectoID_NOTACREDITOPORDEFECTO.Value;
              opOk:=True;
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1    := 'NC';
              FormBuscadorTipoCpbte.TipoCpbte2    := '';
              FormBuscadorTipoCpbte.TipoCpbte3    := '';
              FormBuscadorTipoCpbte.CV            := 'V';
              FormBuscadorTipoCpbte.Sucursal      := DatosRecibos.CDSReciboSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA := DatosRecibos.CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
              SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
            end;
        end;
  // **** aca se Empieza hacer la NC de Descuento
      if (opOk) Then
        begin
          if (Assigned(FormCpbte_2)) Then
            FormCpbte_2.Close;

          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.Agregar.Execute;
          AgregarCabNC;
          AgregarDetNC_Simplificado;
          FormCpbte_2.Confirma.Execute;
          if FormCpbte_2.Generado then
            begin
              DatosRecibos.CDSReciboNC_ID.Value          :=DatosVentas.CDSVentaCabID_FC.Value;
              DatosRecibos.CDSReciboNC_TIPOCPBTE.Value   :=DatosVentas.CDSVentaCabTIPOCPBTE.Value;
              DatosRecibos.CDSReciboNC_CLASECPBTE.Value  :=DatosVentas.CDSVentaCabCLASECPBTE.Value;
              DatosRecibos.CDSReciboNC_NROCOMPROB.Value  :=DatosVentas.CDSVentaCabNROCPBTE.Value;
            end;
          FormCpbte_2.Close;
          if FormCpbte_2.Generado then
            begin
              //  ********** Indico que hay Nte de Credito
              HayNC:=True;
              // **** hago ingreso de numero Interno de Recibo ******
              if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroInterno) then
                begin
                  if Not(Assigned(FormNumeroInterno)) then
                    FormNumeroInterno:=TFormNumeroInterno.Create(Self);
                  FormNumeroInterno.id:= -1;
                  FormNumeroInterno.ShowModal;
                  if FormNumeroInterno.ModalResult=mrOk then
                    DatosRecibos.CDSReciboNRO_RECIBO_INTERMO.Value:=FormNumeroInterno.Numero
                  else
                    DatosRecibos.CDSReciboNRO_RECIBO_INTERMO.Clear;
                end;
              // ********************************************

              IF DSBase.State<>dsBrowse Then DSBase.DataSet.Post;
              inherited;
              ExportarXML.Execute;
              Recuperar.Execute;
              if Not(DSBase.DataSet.IsEmpty) then
                begin
                  Detalle:='Recibo Generado Con NC : '+
                            DatosRecibos.CDSReciboNROCPBTE.Value+'('+DatosRecibos.CDSReciboID_RC.ASString+')'+
                           ' Cliente: '+
                            DatosRecibos.CDSReciboRAZONSOCIAL.Value+
                           ' Importe: '+
                           FormatFloat('0.00',DatosRecibos.CDSReciboTOTAL.AsFloat);
                   DMMain_FD.LogFileFD(0,1,Detalle,'RECNC');
                end
              else
                begin
                  Detalle:='Error de Recibo No Generado Con NC : '+
                           DatosRecibos.CDSReciboNROCPBTE.Value+'('+DatosRecibos.CDSReciboID_RC.ASString+')'+
                           ' Cliente: '+
                           DatosRecibos.CDSReciboRAZONSOCIAL.Value+
                           ' Importe: '+
                           FormatFloat('0.00',DatosRecibos.CDSReciboTOTAL.AsFloat);
                    DMMain_FD.LogFileFD(0,1,Detalle,'RECNC');
                  ShowMessage('Recibo No guardado, no se pueo establecer motivo.....');
                end;

              if FormCpbte_2<>nil then
                FreeAndNil(FormCpbte_2);
              DatosRecibos.CDSMovAplicaCCVta.Last;
              // APliacion de la NC .....
              DMMain_FD.APlicarNC_Recibos(DSBase.DataSet.FieldByName('Codigo').AsString,DatosRecibos.CDSReciboNC_ID.Value,DatosRecibos.CDSMovAplicaCCVtaID_MOVCCVTA.Value);
            end;
        end;
    end
  else
    begin
      // **** hago ingreso de numero operacion ******
      if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroOp)
         and (TForm(Self.Owner).Name<>'FormCobranza_x_lote')
         and (TForm(Self.Owner).Name<>'FormCobrosRipsa')
         and (TForm(Self.Owner).Name<>'FormRecepRepartoExpress')
         and (TForm(Self.Owner).Name<>'FormImportarMercadoPago')
         and (TForm(Self.Owner).Name<>'FormLeerArchivoTCVisa') then
        begin
          if Not(Assigned(FormIngresaNroOP)) then
            FormIngresaNroOP:=TFormIngresaNroOP.Create(Self);
          DecodeDate(DatosRecibos.CDSReciboFECHA.AsDateTime,y,m,d);
          FormIngresaNroOP.Prefijo:= IntToStr(y);
          FormIngresaNroOP.ShowModal;
          if FormIngresaNroOP.ModalResult=mrOk then
            DatosRecibos.CDSReciboNUMERO_OPERACION.Value:=FormIngresaNroOP.Prefijo+FormIngresaNroOP.Numero
          else
            DatosRecibos.CDSReciboNUMERO_OPERACION.Value:='';
        end;
       // ********************************************

      // **** hago ingreso de numero Interno de Recibo ******
      if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroInterno) and
         (TForm(Self.Owner).Name<>'FormCobranza_x_lote') and
         (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
         (TForm(Self.Owner).Name<>'FormImportarMercadoPago') and
         (TForm(Self.Owner).Name<>'FormLeerArchivoTCVisa') and
         (TForm(Self.Owner).Name<>'FormCobrosRipsa') then
        begin
          if Not(Assigned(FormNumeroInterno)) then
            FormNumeroInterno:=TFormNumeroInterno.Create(Self);
          FormNumeroInterno.id:= -1;

          FormNumeroInterno.ShowModal;
          if FormNumeroInterno.ModalResult=mrOk then
            DatosRecibos.CDSReciboNRO_RECIBO_INTERMO.Value:=FormNumeroInterno.Numero
          else
            DatosRecibos.CDSReciboNRO_RECIBO_INTERMO.Clear;

          FreeAndNil(FormNumeroInterno);
        end;
       // ********************************************

      //******************************************************************
      // verifico el saldo del recibo antes de guardar....
      //******************************************************************

      DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat:= DatosRecibos.CDSReciboTOTAL.AsFloat - ceTotalAplicaciones.Value;
      //******************************************************************
      //******************************************************************

      IF DSBase.State<>dsBrowse Then DSBase.DataSet.Post;

      ExportarXML.Execute;

      inherited;

      Recuperar.Execute;
      ReciboGenerado  := True; // ****** esto lo uso como Flag para la Cobranza de Abonos
      if DSBase.DataSet.IsEmpty then
        ReciboGenerado  := False;

      if ReciboGenerado then
        begin
                       Detalle:='Recibo Generado : '+
                         DatosRecibos.CDSReciboNROCPBTE.Value+'('+DatosRecibos.CDSReciboID_RC.ASString+')'+
                         ' Cliente: '+
                         DatosRecibos.CDSReciboRAZONSOCIAL.Value+
                         ' Importe: '+
                         FormatFloat('0.00',DatosRecibos.CDSReciboTOTAL.AsFloat);

              DMMain_FD.LogFileFD(0,1,Detalle,'RECIBO');
        end
      else
        begin
                       Detalle:='Error de Recibo Generado : '+
                         DatosRecibos.CDSReciboNROCPBTE.Value+'('+DatosRecibos.CDSReciboID_RC.ASString+')'+
                         ' Cliente: '+
                         DatosRecibos.CDSReciboRAZONSOCIAL.Value+
                         ' Importe: '+
                         FormatFloat('0.00',DatosRecibos.CDSReciboTOTAL.AsFloat);

              DMMain_FD.LogFileFD(0,1,Detalle,'RECIBO');
        end;


      // Verificamos si Va Debitos                            //   FormCobroConTarjetasCredito
      if (DatosRecibos.CDSReciboIMPORTE_RECARGO.AsFloat>0) and (CpbteNuevo) and
         (TForm(Self.Owner).Name<>'FormCobrosRipsa') and
         (TForm(Self.Owner).Name<>'FormLeerArchivoTCVisa') and
         (TForm(Self.Owner).Name<>'FormCobroConTarjetasCredito') and
         (TForm(Self.Owner).Name<>'FormImportarMercadoPago') and
         (TForm(Self.Owner).Name<>'FormReciboAbonos') and
         (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
         (TForm(Self.Owner).Name<>'FormCobranza_x_lote') then
        begin
          if MessageDlg('Generar Debitos por pagos fuera de termino????', mtConfirmation,mbYesNo,0)=mrYes then
            begin
              Hacer_NDebito;
              if ND_Generada then
                begin
                  CpbteNuevo:=False;

                  while (DatosRecibos.CDSReciboSALDO_APLICAR.AsFloat<DatosRecibos.CDSReciboIMPORTE_RECARGO.AsFloat) and (Not(DatosRecibos.CDSMovAplicaCCVta.IsEmpty)) do
                    begin
                      DatosRecibos.CDSMovAplicaCCVta.Last;
                      id_movcc:=DatosRecibos.CDSMovAplicaCCVtaID_MOVCCVTA.Value;
                      BorrarUnaAplicacion.Execute;
                      Application.ProcessMessages;
                    end;

                  inherited;
                  Recuperar.Execute;
                  DatosRecibos.CDSMovCCVta.Filter:='';
                  DatosRecibos.CDSMovCCVta.Filtered:=False;
                  DatosRecibos.CDSMovCCVta.Close;
                  DatosRecibos.CDSMovCCVta.Params.ParamByName('Codigo').Value := DatosRecibos.CDSReciboCODIGO.Value;
                  DatosRecibos.CDSMovCCVta.Open;
                  // aca filtro los comproabnrtes por el grupo
                  // para poder separa negro de blanco y no mezcalr
                  if (UsarFiltrado) then
                    begin
                      DatosRecibos.CDSMovCCVta.Filter  :='MUESTRAGRUPO='+IntToStr(GrupoRec);
                      if GrupoRec>-1 then
                        DatosRecibos.CDSMovCCVta.Filtered:=True;
                    end;
                  DSBase.DataSet.Edit;
                  Application.ProcessMessages;
                  DatosRecibos.CDSMovCCVta.Locate('ID_CPBTE',IntToStr(ND_Id),[]);
                  dbgAplicacionesDragDrop( Sender, dbgMovCC,10,10);
                  Application.ProcessMessages;
                  DatosRecibos.CDSMovCCVta.Locate('ID_MOVCCVTA',IntToStr(id_movcc),[]);
                  dbgAplicacionesDragDrop( Sender, dbgMovCC,10,10);
                  Application.ProcessMessages;
                  //******************************************************************
                  IF DSBase.State<>dsBrowse Then DSBase.DataSet.Post;
                  inherited;
                  Recuperar.Execute;
                  //******************************************************************
                  //Confirma.Execute; vamos a probar con esto para no hacer dos veces lo mismo
                end;
            end;
        end;

      if (TForm(Self.Owner).Name='FormCobroConTarjetasCredito') or
         (TForm(Self.Owner).Name='FormCobrosRipsa') or
         (TForm(Self.Owner).Name='FormRecepRepartoExpress') or
         (TForm(Self.Owner).Name='FormImportarMercadoPago') or
         (TForm(Self.Owner).Name='FormLeerArchivoTCVisa') or
         (TForm(Self.Owner).Name='FormCobranza_x_lote') then
         Imprime:='N';

      if (TForm(Self.Owner).Name<>'FormCajaResumen')  then
        begin
          if (TForm(Self.Owner).Name<>'FormReciboAbonos') and
             (TForm(Self.Owner).Name<>'FormRecepRepartoExpress') and
             (TForm(Self.Owner).Name<>'FormImportarMercadoPago') and
             (TForm(Self.Owner).Name<>'FormCajaResumen')  then
            begin
              pnPrincipal.Enabled:=true;
              if DatosRecibos.CDSReciboANULADO.Value='S' Then Imprime:='N';
              if (Imprime='S') and (Not(DSBase.DataSet.IsEmpty)) Then
                IF (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) THEN
                  BEGIN
                    DatosRecibos.QComprob.Close;
                    DatosRecibos.QComprob.ParamByName('id').Value :=DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Value;
                    DatosRecibos.QComprob.ParamByName('suc').Value:=DatosRecibos.CDSReciboSUCURSAL.Value;
                    DatosRecibos.QComprob.Open;

                    frRecibo.PrintOptions.Printer:=PrNomCpbte;
                    frRecibo.SelectPrinter;

                    frRecibo.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRecibos.QComprobREPORTE.AsString);
                    frRecibo.Variables['importeletra']:=''''+numero2letras(DatosRecibos.CDSReciboTOTAL.AsFloat)+'''';
                    frRecibo.PrintOptions.Copies :=DatosRecibos.QComprobCOPIAS.Value;

                    DatosRecibos.QComprob.Close;
                    //DMMain_FD.QOpciones.Close;
                    frRecibo.PrepareReport;
                    frRecibo.ShowReport;
                  END;
            end
          else
            begin
              pnPrincipal.Enabled:=true;
              if DatosRecibos.CDSReciboANULADO.Value='S' Then Imprime:='N';
              if (Imprime='S') Then
                BEGIN
                  DatosRecibos.QComprob.Close;
                  DatosRecibos.QComprob.ParamByName('id').Value :=DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Value;
                  DatosRecibos.QComprob.ParamByName('suc').Value:=DatosRecibos.CDSReciboSUCURSAL.Value;
                  DatosRecibos.QComprob.Open;

                  frRecibo.PrintOptions.Printer:=PrNomCpbte;
                  frRecibo.SelectPrinter;

                  frRecibo.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRecibos.QComprobREPORTE.AsString);
                  frRecibo.Variables['importeletra']:=''''+numero2letras(DatosRecibos.CDSReciboTOTAL.AsFloat)+'''';
                  frRecibo.PrintOptions.Copies :=DatosRecibos.QComprobCOPIAS.Value;

                  DatosRecibos.QComprob.Close;
                  frRecibo.PrepareReport;
                  frRecibo.ShowReport;
                  salir.Execute;
                END;
            end;

          pcDetalle.ActivePageIndex := 0;
          IF (FormRecibo_2.Visible=True) and (btNuevo.Enabled = true) THEN btNuevo.SetFocus;
          if DatosRecibos<>nil then
            DatosRecibos.CDSInscripcion.Close;
          //DMMain_FD.CDSCompPorTipo.Close;
        end
      else
        salir.Execute;
    end;
  IF (btNuevo.Enabled = true) and
     (FormRecibo_2.Visible=True) THEN btNuevo.SetFocus;

//  if (DatosRecibos.CDSInscripcion.Active=True) then
//    DatosRecibos.CDSInscripcion.Close;
//  DMMain_FD.CDSCompPorTipo.Close;
end;

procedure TFormRecibo_2.CotizacionExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and (Not(DSBase.State=dsBrowse)) then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
      FormCotizacion.Moneda := DSBase.DataSet.FieldByName('moneda_alternativa').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        DSBase.DataSet.FieldByName('Cotizacion').AsFloat:=FormCotizacion.Cotizacion;
      FreeAndNil(FormCotizacion);
    end;
end;

procedure TFormRecibo_2.BorrarExecute(Sender: TObject);
VAR CheTx,CheUsado:Boolean;
Detalle:String;
HayNC:Boolean;
begin
  //pnConfiguracion.Visible:=False;
   // Verifico si estan los valores disponibles
  HayNC:=Not(DatosRecibos.CDSReciboNC_ID.AsString='');
  DMStoreProcedure.QControlFondos.Close;
  DMStoreProcedure.QControlFondos.ParamByName('id').Value  := DatosRecibos.CDSReciboID_RC.Value;
  DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:= 'RC';
  DMStoreProcedure.QControlFondos.Open;
  if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
    RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....');
  DMStoreProcedure.QControlFondos.Close;

  // Primero chqueo si el che. no fue transferido a otra caja

  CheTx:=False;
  FrameMovValoresIngreso1.CDSChe3.First;
  while Not(FrameMovValoresIngreso1.CDSChe3.Eof) and (CheTx=False) do
    begin
      DatosRecibos.QVerificaValoresTransferidos.Close;
      DatosRecibos.QVerificaValoresTransferidos.ParamByName('id_cheque').Value:=
        FrameMovValoresIngreso1.CDSChe3ID_CHEQUE_TER.Value;
      DatosRecibos.QVerificaValoresTransferidos.Open;
      CheTx:=Not(DatosRecibos.QVerificaValoresTransferidos.IsEmpty);
      FrameMovValoresIngreso1.CDSChe3.Next;
    end;
  if CheTx=True Then
    RAISE Exception.Create('Hay cheques que fueron transferidos a otras cuentas, no se puede hacer la operación....');
  //***************************************************************
  CheUsado:=False;
  FrameMovValoresIngreso1.CDSChe3.First;
  while Not(FrameMovValoresIngreso1.CDSChe3.Eof) and (CheUsado=False) do
    begin
      DatosRecibos.QCheUsado.Close;
      DatosRecibos.QCheUsado.ParamByName('id_cheque').Value:=
        FrameMovValoresIngreso1.CDSChe3ID_CHEQUE_TER.Value;
      DatosRecibos.QCheUsado.Open;
      CheUsado:=Not(DatosRecibos.QCheUsado.Fields.Fields[0].AsString='');
      FrameMovValoresIngreso1.CDSChe3.Next;
    end;
  if CheUsado=True Then
    RAISE Exception.Create('El cheques fue usado, no se puede hacer la operación....');
  //***************************************************************

  IF NOT (DatosRecibos.CDSRecibo.IsEmpty) and (CheTx=False) and (CheUsado=False) THEN
    BEGIN
      if DMMain_FD.BorrarRecibos Then
        begin
          IF MessageDlg('Atención está por hacer una operación de Borrado ,' + #13 +
            'Borra el Comprobante....?.', mtWarning, [mbYes, mbNo], 0) = mrYes  THEN
            BEGIN
             // inherited;
             DMMain_FD.fdcGestion.StartTransaction;
              try
               // **** Ingreso en el Log File  **************
                Detalle:= 'Borrado Recibo: '+
                           DatosRecibos.CDSReciboCLASECPBTE.Value+'-'+
                           DatosRecibos.CDSReciboLETRARC.Value+'-'+
                           DatosRecibos.CDSReciboSUCRC.Value+'-'+
                           DatosRecibos.CDSReciboNUMERORC.Value+'-'+
                           ' Cliente: '+ DatosRecibos.CDSReciboCODIGO.Value+'-'+DatosRecibos.CDSReciboNOMBRE.Value+
                           ' Importe: '+ FormatFloat('0.00',DatosRecibos.CDSReciboTOTAL.AsFloat);


                DMMain_FD.LogFileFD(0,4,Detalle,'RECIBOS');

  
              // ******************************************
              // ******* Pregunot si se borra la Nc que puede ver ascoiado al Recibo
              // ******************************************
              if HayNC then
                begin
                  IF MessageDlg('Hay un Nota de Credito Asociada.. la Nro:'+DatosRecibos.CDSReciboNC_NROCOMPROB.AsString+',' + #13 +
                     'Borra el Comprobante....?.', mtWarning, [mbYes, mbNo], 0) = mrYes  THEN
                   begin
                     DatosRecibos.QBorrarNc.Close;
                     DatosRecibos.QBorrarNc.ParamByName('id').Value  :=DatosRecibos.CDSReciboNC_ID.Value;
                     DatosRecibos.QBorrarNc.ParamByName('Tipo').Value:=DatosRecibos.CDSReciboNC_TIPOCPBTE.Value;
                     DatosRecibos.QBorrarNc.ExecSQL;
                     DatosRecibos.QBorrarNc.Close;
                   end;
                end;
              // ******************************************
              // ******************************************
                DatosRecibos.CDSRecibo.Delete;
                DatosRecibos.CDSRecibo.ApplyUpdates(0);
                DMMain_FD.fdcGestion.Commit;

                DatosRecibos.CDSRecibo.close;
                DatosRecibos.CDSRecibo.Params.ParamByName('id').Clear;
                DatosRecibos.CDSRecibo.Open;
                DatosRecibos.CDSMovAplicaCCVta.Close;
                DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('id').Clear;
                DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('Tipo').Clear;
                Datosrecibos.CDSMovAplicaCCVta.Open;

                DatosRecibos.CDSRetenciones.Close;
                DatosRecibos.CDSRetenciones.Params.ParamByName('Id').Clear;
                DatosRecibos.CDSRetenciones.Open;

                FrameMovValoresIngreso1.CDSCajaMov.Close;
                FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
                FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
                FrameMovValoresIngreso1.CDSCajaMov.Open;

                FrameMovValoresIngreso1.ceCaja.Text       :='';
                FrameMovValoresIngreso1.edMuestraCaja.Text:='';

                FrameMovValoresIngreso1.CDSChe3.Close;
                FrameMovValoresIngreso1.CDSMovEfectivo.Close;
                FrameMovValoresIngreso1.CDSMovTCredito.Close;
                FrameMovValoresIngreso1.CDSTransBco.Close;

                FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
                FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
                FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
                FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;

                FrameMovValoresIngreso1.CDSChe3.Open;
                FrameMovValoresIngreso1.CDSMovEfectivo.Open;
                FrameMovValoresIngreso1.CDSMovTCredito.Open;
                FrameMovValoresIngreso1.CDSTransBco.Open;
              Except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('Transaccion no finalizada....!');
              end;
            END
        end
      else
        ShowMessage('No est autorizado Para hacer una operación de Borrado,' + #13 +
                      'Consulte con el Administrador.....');
    END
  ELSE
    ShowMessage('No Hay registro activo para esta operación');
end;

procedure TFormRecibo_2.BorrarTodas1Click(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      BorrarTodasAplicaciones.Execute;
      Confirma.Execute;
    end;
  
end;

procedure TFormRecibo_2.BorrarTodasAplicacionesExecute(Sender: TObject);
begin
  inherited;
  while dbgAplicaciones.DataSource.DataSet.RecordCount>0 do
    begin
      dbgAplicaciones.DataSource.DataSet.First;
      dbgAplicaciones.DataSource.DataSet.Delete;
    end;
 // if DSBase.State<>dsbrowse then
 //   Confirma.Execute;
end;

procedure TFormRecibo_2.BorrarUnaAplicacionExecute(Sender: TObject);
begin
  inherited;
  if dbgAplicaciones.DataSource.DataSet.RecordCount>0 Then
    dbgAplicaciones.DataSource.DataSet.Delete;
end;

procedure TFormRecibo_2.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    DatosRecibos.CDSReciboCodigoSetText(DatosRecibos.CDSReciboCodigo,FormBuscadorClientes.Codigo);

end;

procedure TFormRecibo_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosRecibos.CDSBuscaSucursal.Close;
  DatosRecibos.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if  comBuscadorSucursal.rOk Then
    DatosRecibos.CDSReciboSucursalSetText(DatosRecibos.CDSReciboSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  DatosRecibos.CDSBuscaSucursal.Close;
end;

procedure TFormRecibo_2.BuscarPendientesExecute(Sender: TObject);
Var Aux:Real;
begin                                
  inherited;
  // inicio filtro de los movimientos
  DatosRecibos.CDSMovCCVta.Filter   := '';
  DatosRecibos.CDSMovCCVta.Filtered := False;
  DatosRecibos.CDSMovCCVta.Close;
  DatosRecibos.CDSMovCCVta.Params.ParamByName('Codigo').Value := DatosRecibos.CDSReciboCODIGO.Value;
  DatosRecibos.CDSMovCCVta.Open;
  // aca filtro los comproabnrtes por el grupo
  // para poder separa negro de blanco y no mezclar
  if (UsarFiltrado) then
    begin
      DatosRecibos.CDSMovCCVta.Filter  :='MUESTRAGRUPO = '+IntToStr(GrupoRec);
      if GrupoRec>-1 then
        DatosRecibos.CDSMovCCVta.Filtered:=True;
    end;
  TraerSaldoActa.Execute;  // aca traigo los movimientos a cta que hay para mostra en la grilla de abajo

  if chbModo.Checked=True Then
    begin
      Aux:=0;
      DatosRecibos.CDSMovCCVta.disableControls;
      DatosRecibos.CDSMovCCVta.First;
      while not(DatosRecibos.CDSMovCCVta.eof) do
        begin
          Aux:=DatosRecibos.CDSMovCCVtaSALDO.AsFloat+Aux;
          DatosRecibos.CDSMovCCVta.Next;
        end;
      DatosRecibos.CDSMovCCVta.EnableControls;
      DatosRecibos.CDSMovCCVta.First;
//      DatosRecibos.wwCDSReciboTOTALSetText(DatosRecibos.wwCDSReciboTOTAL,FloatToStr(Aux));
      DatosRecibos.CDSReciboTOTAL_NETOSetText(DatosRecibos.CDSReciboTOTAL_NETO,FloatToStr(Aux));
    end;

  BorrarTodasAplicaciones.Execute;
//  DatosRecibos.CDSMovAplicaCCVta.Close;
//  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('id').Clear;
//  DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('Tipo').Clear;
//  DatosRecibos.CDSMovAplicaCCVta.Open;

  if Not(DatosRecibos.CDSMovAplicaCCVta.IsEmpty) then
    DatosRecibos.CalcularAplicaciones;
  dbgMovCC.Width := dbgMovCC.Width + 1;
  dbgMovCC.Width := dbgMovCC.Width - 1;


end;

procedure TFormRecibo_2.BuscarPorInternoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorReciboNroInt)) then
    FormBuscadorReciboNroInt:=TFormBuscadorReciboNroInt.Create(self);
  FormBuscadorReciboNroInt.ShowModal;
  if FormBuscadorReciboNroInt.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorReciboNroInt.id);
      Recuperar.Execute;
    end;

  
end;

procedure TFormRecibo_2.BuscarPorReferenciaExecute(Sender: TObject);
begin
 inherited;
 IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='E';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
      DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
      Recuperar.Execute;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormRecibo_2.BuscarRetencionExecute(Sender: TObject);
begin
  inherited;
  DatosRecibos.CDSBuscaTRetencion.Close;
  DatosRecibos.CDSBuscaTRetencion.Open;
  comBuscadorRetenciones.Execute;
  IF comBuscadorRetenciones.rOk THEN
    DatosRecibos.CDSRetencionesID_RETENCIONSetText(DatosRecibos.CDSRetencionesID_RETENCION, IntToStr(comBuscadorRetenciones.Id));
  DatosRecibos.CDSBuscaTRetencion.Close;
end;

procedure TFormRecibo_2.BuscarTipoCpbteExecute(Sender: TObject);
var
  COMPUSER: boolean;
begin
  inherited;
  DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Clear;
  DatosRecibos.CDSReciboMUESTRACOMPROBANTE.Clear;
  DatosRecibos.CDSReciboLETRARC.Clear;
  DatosRecibos.CDSReciboSUCRC.Clear;
  DatosRecibos.CDSReciboNUMERORC.Clear;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COMPUSER';
//  DMMain_FD.QOpciones.Open;

//  if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='N') then

  COMPUSER  :=  DMMain_FD.DBOpciones('COMPUSER');
  if not COMPUSER then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.IndexFieldNames:='';

      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''V'' and '+
                                                '(tipo_comprob=''RC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosRecibos.CDSReciboSUCURSAL.Value;
    end
  else
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select cpbte.* from comprobantes_usuarios c '+
                                                'left join comprobantes cpbte on cpbte.id_comprobante=c.id_comprobante '+
                                                'where c.id_usuario=:usuario and cpbte.sucursal=:suc and cpbte.compra_venta=''V'' and '+
                                                '(cpbte.tipo_comprob=''RC'') order by cpbte.letra ';


      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value     := DatosRecibos.CDSReciboSUCURSAL.Value;
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('usuario').Value := DMMain_FD.UsuarioActivoId;
    end;

  DMBuscadores.CDSBuscaComprob.IndexFieldNames:='LETRA';

    // DMMain_FD.QOpciones.Close;

  FormBuscaComprobantes         := TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:= DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
end;

procedure TFormRecibo_2.BuscarCobradorExecute(Sender: TObject);
begin
  inherited;
  DatosRecibos.CDSBuscaCobrador.Close;
  DatosRecibos.CDSBuscaCobrador.Open;
  comBuscadorCobrador.Execute;
  if comBuscadorCobrador.rOk Then
    DatosRecibos.CDSReciboVENDEDORSetText(DatosRecibos.CDSReciboVENDEDOR,comBuscadorCobrador.Id);
  DatosRecibos.CDSBuscaCobrador.Close;
end;

procedure TFormRecibo_2.dbgAplicacionesColEnter(Sender: TObject);
begin
  inherited;
  IF dbgAplicaciones.SelectedIndex <> 2 THEN
    dbgAplicaciones.SelectedIndex := 2;

end;

procedure TFormRecibo_2.dbgAplicacionesDblClick(Sender: TObject);
begin
  inherited;
 if DatosRecibos.CDSMovAplicaCCVtaAPLICA_ID_CPBTE.AsString<>'' then
    begin
      if not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=DatosRecibos.CDSMovAplicaCCVtaAPLICA_ID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte:=DatosRecibos.CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
    end
end;

procedure TFormRecibo_2.dbgAplicacionesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  try
    GeneraAplicacion((Source AS TDBGrid).DataSource.DataSet);

  except on E:Exception do
    Showmessage(E.Message);
  end;

  // aca se verifica el grupo del movimiento si existen filtros.
 {  if (DMMain_FD.HayFiltros=True) then
    begin
//      DMStoreProcedure.spMovCtaCteVta_Grupo.Close;
//      DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('Id_Mov').Value:= (Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_MovCCVta').Value;
//      DMStoreProcedure.spMovCtaCteVta_Grupo.ExecProc;
//      if DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('id_grupo').AsString<>'' then
//        GrupoMov:=DMStoreProcedure.spMovCtaCteVta_Grupo.ParamByName('id_grupo').Value
//      else
//        GrupoMov:=-1;
//      DMStoreProcedure.spMovCtaCteVta_Grupo.Close;
      if  (Source AS TDBGrid).DataSource.DataSet.FieldByName('MUESTRAGRUPO').AsString<>'' then
        GrupoMov:=(Source AS TDBGrid).DataSource.DataSet.FieldByName('MUESTRAGRUPO').Value
      else
        GrupoMov:=-1;
    end
  else
    GrupoMov := -1;

  // para igonrar los grupos ///**** para los pagos automaticos desde abonos u otro no se 11/07/2017
  if UsarGrupoFiltro=False then
    begin
      GrupoRec:=-1;
      GrupoMov:=-1;
    end;

  //**************************************************************
 WITH DatosRecibos DO
    BEGIN
      if (GrupoRec=GrupoMov) then
        IF Moneda3d(' ',MascaraGral, CDSReciboSALDO_APLICAR.AsFloat) > 0 THEN
          IF Moneda3D(' ',MascaraGral, CDSMovCCVtaSALDO.AsFloat) > 0 THEN
            BEGIN
              CDSMovAplicaCCVta.Append;
              WITH (Source AS TDBGrid).DataSource.DataSet DO
                BEGIN
                  CDSMovAplicaCCVtaAPLICA_ID_CPBTE.Value  := FieldByName('Id_Cpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_NROCPBTE.Value  := FieldByName('NroCpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_TIPOCPBTE.Value := FieldByName('TipoCpbte').Value;
                  CDSMovAplicaCCVtaAPLICA_CLASECPBTE.Value:= FieldByName('ClaseCpbte').Value;
                  CDSMovAplicaCCVtaID_MOVCCVTA.Value      := FieldByName('Id_MovCCVta').Value;
                  CDSMovAplicaCCVtaCLIENTE.Value          := FieldByName('Cliente').Value;
                  IF Moneda3D(' ',MascaraGral, CDSReciboSALDO_APLICAR.AsFloat)>=Moneda3D(' ',MascaraGral, FieldByName('MuestraAPagar').Value) THEN
                    CDSMovAplicaCCVtaIMPORTE.AsFloat := FieldByName('MuestraAPagar').Value
                  ELSE
                    CDSMovAplicaCCVtaIMPORTE.AsFloat :=CDSReciboSALDO_APLICAR.AsFloat;
                  IF Trunc(CDSReciboSALDO_APLICAR.AsFloat*1000) = 0 THEN
                    CDSReciboSALDO_APLICAR.AsFloat := 0;
                  CDSMovAplicaCCVtaMUESTRAMORA.Asinteger := Trunc(CDSReciboFECHA.AsDateTime) - Trunc(CDSMovCCVtaFECHAVTO.AsDateTime);   //DaysBetween(CDSReciboFECHA.AsDateTime,FieldByName('FECHAVTO').AsDateTime)+CDSMovAplicaCCVtaMUESTRAMORA.Asinteger;
                  if CDSMovAplicaCCVtaMUESTRAMORA.Asinteger<0 then
                    CDSMovAplicaCCVtaMUESTRAMORA.Asinteger:=0;

                END;
              CDSMovAplicaCCVta.Post;
            END
          ELSE
            ShowMessage('Comprobante ya cancelado... Verifique!!!')
        ELSE
          ShowMessage('No hay saldo para asignar pagos... Verifique!!!')
      else
        ShowMessage('El comprobante no pertenecen al mismo grupo que está en el filtro... '+#13+
                    'Verifique el filtro o el movimento... !!!');
    END;                                                              }
end;


procedure TFormRecibo_2.dbgAplicacionesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgMovCC THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormRecibo_2.pcDetalleChange(Sender: TObject);
begin
  inherited;
  if DatosRecibos.DSRetenciones.State<>dsBrowse then
    DatosRecibos.DSRetenciones.DataSet.Post;

  if DSBase.State<>dsBrowse Then
    begin
      WITH FrameMovValoresIngreso1 DO
        BEGIN
          if ((DSBase.State=dsInsert) or (DSBase.State=dsEdit)) and (ceCaja.Text='') Then
            begin
              if (DSBase.State=dsEdit) and (Not(DSBase.DataSet.IsEmpty)) Then
                CajaPorDefecto:=QCajaCabID_CUENTA_CAJA.AsInteger;
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              IF NOT (QCajaCab.IsEmpty) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
                  Id_Caja            := QCajaCabID_CAJA.AsInteger;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
              QCajaCab.Close;
            end;
          TipoCpbte      := DatosRecibos.CDSReciboTIPOCPBTE.AsString;
          TipoOperacion  := 'I';
          ClaseCpbte     := DatosRecibos.CDSReciboCLASECPBTE.AsString;
          NroCpbte       := DatosRecibos.CDSReciboNROCPBTE.AsString;
          FechaOperacion := DatosRecibos.CDSReciboFECHA.AsDateTime;
          IdCpbte        := DatosRecibos.CDSReciboID_RC.AsInteger;
          Origen         := DatosRecibos.CDSReciboRAZONSOCIAL.AsString;
          Cuit           := DatosRecibos.CDSReciboCUIT.Value;
        END;
      pnCabecera.Enabled:=False;
    end;//  pnCabecera.Enabled := pcDetalle.ActivePageIndex = 0;
end;

procedure TFormRecibo_2.pcDetalleEnter(Sender: TObject);
begin
  inherited;
  IF (dbeFecha.Text <> '') AND (dbeSucursal.Text <> '') AND
    (dbeNumero.Text <> '') AND (dbeSuc.Text <> '') AND
    (dbeLetra.Text <> '') AND (RxDBECodigo.Text <> '') AND
    (RxDBESucursal.Text <> '') AND (dbeTotal.Text <> '')
    //and (StrToFloat(dbeTotal.Text)>0)
  THEN
    begin
      pcDetalle.Enabled := True;
     // pnCabecera.Enabled:=False;
    end
  ELSE
    BEGIN
      if DSBase.State<>dsBrowse Then
        begin
          ShowMessage('Faltan datos en la cabecera... Verifique..');
          pcDetalle.ActivePageIndex:=0;
          pnCabecera.Enabled:=True;
          dbeFecha.SetFocus;
        end;
    END;
end;

procedure TFormRecibo_2.pnl1DblClick(Sender: TObject);
begin
  inherited;
  if DatosRecibos.CDSReciboNC_ID.AsString<>'' then
    begin
      if not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew  :=DatosRecibos.CDSReciboNC_ID.AsString;
      FormCpbte_2.TipoCpbte:='NC';
      FormCpbte_2.Recuperar.Execute;
    end
end;

procedure TFormRecibo_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosRecibos.CDSReciboTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DatosRecibos.CDSReciboCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+DatosRecibos.CDSReciboSUCURSAL.AsString;
  inherited;
end;



//procedure TFormRecibo_2.wwdbgretencionesColEnter(Sender: TObject);
//begin
//  inherited;
//  if (wwdbgretenciones.SelectedIndex=1) and (Not(wwdbgretenciones.DataSource.DataSet.State in [dsInsert])) then
//    begin
//      DatosRecibos.CDSRegimen.Close;
//      DatosRecibos.CDSJuridicion.Close;
//      DatosRecibos.CDSTRetencion.Close;
//      DatosRecibos.CDSTRetencion.Params.ParamByName('Id').Value := DatosRecibos.CDSRetencionesID_RETENCION.Value;
//      DatosRecibos.CDSTRetencion.Open;
//      IF NOT (DatosRecibos.CDSTRetencion.IsEmpty) THEN
//        BEGIN
//          if DatosRecibos.CDSTRetencionTIPO.Value=1 Then
//            begin
//              DatosRecibos.DSJur_Reg.DataSet:=DatosRecibos.CDSRegimen;
//              DatosRecibos.CDSRegimen.Open;
//            end
//          else
//            if DatosRecibos.CDSTRetencionTIPO.Value=2 Then
//              begin
//                DatosRecibos.DSJur_Reg.DataSet:=DatosRecibos.CDSJuridicion;
//                DatosRecibos.CDSJuridicion.Open;
//             end;
//          FormRecibo_2.wwdbgretenciones.RedrawGrid;
//        end
//    end
//  else
//    IF wwdbgretenciones.SelectedIndex = 3 THEN
//      wwdbgRetenciones.SelectedIndex := 4;
//end;

procedure TFormRecibo_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde   := 2;
  AutoSize := true;
  BorraAplicaciones:=False;
  pcDetalle.ActivePageIndex := 0;
  FrameMovValoresIngreso1.tsCheques.TabVisible:=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible :=False;

  IF NOT (Assigned(FormBuscadoCheCompartido)) THEN
    FormBuscadoCheCompartido := TFormBuscadoCheCompartido.Create(Application);

  IF NOT (Assigned(DatosRecibos)) THEN
    DatosRecibos := TDatosRecibos.Create(Self);

  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosRecibos.CDSRecibo;
  WITH DatosRecibos DO
    BEGIN
      AddClientDataSet(CDSRecibo, DSPRecibo);
     // Aplico la misma tecnica que en compras
    //  AddClientDataSet(CDSMovCCVta, DSPMovCCVta);
      AddClientDataSet(CDSMovAplicaCCVta, DSPMovAplicaCCVta);
      AddClientDataSet(CDSRetenciones, DSPRetenciones);
      AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
      AddClientDataSet(FormBuscadoCheCompartido.CDSCheComp,FormBuscadoCheCompartido.DSPCheComp);
      AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);
      AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
      AddClientDataSet(FrameMovValoresIngreso1.CDSMovTCredito,FrameMovValoresIngreso1.DSPMovTCredito);
      AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);
      AddClientDataSet(FrameMovValoresIngreso1.CDSAjustes,FrameMovValoresIngreso1.DSPAjustes);
      AddClientDataSet(FrameMovValoresIngreso1.CDSMovValoresComp,FrameMovValoresIngreso1.DSPMovValoresComp);

      FormBuscadoCheCompartido.CDSCheComp.Open;
      CDSRecibo.Open;
      CDSMovAplicaCCVta.Open;
      CDSMovCCVta.Open;
      CDSMovACta.Open;
      CDSRetenciones.Open;
      CDSEmpresa.Close;
      CDSEmpresa.Open;
      CDSLstMonedas.Close;
      CDSLstMonedas.Open;

      FrameMovValoresIngreso1.CDSChe3.Open;
      FrameMovValoresIngreso1.CDSMovEfectivo.Open;
      FrameMovValoresIngreso1.CDSMovTCredito.Open;
      FrameMovValoresIngreso1.CDSCajaMov.Open;
      FrameMovValoresIngreso1.CDSTransBco.Open;
      FrameMovValoresIngreso1.CDSAjustes.Open;
      FrameMovValoresIngreso1.CDSMovValoresComp.Open;
      FrameMovValoresIngreso1.QCajaCab.Open;
      FrameMovValoresIngreso1.CDSCtasBancarias.Open;
      FrameMovValoresIngreso1.CDSCompAjuste.Open;

      CDSRecibo.EmptyDataSet;
      CDSMovAplicaCCVta.EmptyDataSet;
      CDSMovCCVta.EmptyDataSet;
      CDSMovACta.EmptyDataSet;
      CDSRetenciones.EmptyDataSet;
      FrameMovValoresIngreso1.CDSChe3.EmptyDataSet;
      FrameMovValoresIngreso1.CDSMovEfectivo.EmptyDataSet;
      FrameMovValoresIngreso1.CDSMovTCredito.EmptyDataSet;
      FrameMovValoresIngreso1.CDSMovValoresComp.EmptyDataSet;
      FrameMovValoresIngreso1.CDSAjustes.EmptyDataSet;
      FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
      FrameMovValoresIngreso1.CDSTransBco.EmptyDataSet;
      FrameMovValoresIngreso1.InicicalizaMascarasNumericas;
      AplicaMascaraNumerica;
   //   FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
      FrameMovValoresIngreso1.pcValores.ActivePageIndex:=0;
   END;
  if Not(Assigned(FormSumaAplicacionesRc)) then
    FormSumaAplicacionesRc:=TFormSumaAplicacionesRc.Create(Self);

  Tabla:='Recibos';
  Campo:='id_rc';

end;

procedure TFormRecibo_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    Recuperar.Execute;
end;

procedure TFormRecibo_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
   ReciboIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'_Recibo.ini')
  else
    ReciboIni := TIniFile.Create(DMMain_FD.MainPath+'general_Recibo.ini');
 //*************************************************************
  ReciboIni.WriteBool('Modo', 'Modo', chbModo.Checked);
  ReciboIni.WriteInteger('Foco','Foco',Foco);
  ReciboIni.WriteBool('Secuencia','Porcentaje',  dbePorcentaje_DSCTO.TabStop);
  ReciboIni.WriteBool('Secuencia','importe',dbeDscto.TabStop);
  ReciboIni.WriteBool('filtro','filtro',UsarFiltrado);
  ReciboIni.WriteBool('filtro','Usarfiltro',UsarGrupoFiltro);

  FreeAndNil(FormSumaAplicacionesRc);

  ReciboIni.Free;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovTCredito.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSAjustes.Close;
  FrameMovValoresIngreso1.CDSMovValoresComp.Close;
  FrameMovValoresIngreso1.QCajaCab.Close;
  FrameMovValoresIngreso1.CDSCtasBancarias.Close;
  FrameMovValoresIngreso1.CDSCompAjuste.Close;


  if (DatosRecibos<>nil) then
    begin
      WITH DatosRecibos DO
      BEGIN
        CDSRecibo.Close;
        CDSMovCCVta.Close;
        CDSMovAplicaCCVta.Close;
        CDSMovACta.Close;
        CDSClientes.Close;
        CDSSucursal.Close;
        CDSRetenciones.Close;
        CDSEmpresa.Close;
      END;
      FreeAndNil(DatosRecibos);
    end;
  Action := caFree;
  inherited;
end;

procedure TFormRecibo_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRecibo_2:=nil;
end;

procedure TFormRecibo_2.FormShow(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioActivo<>'' Then
    ReciboIni := TIniFile.Create(DMMain_FD.MainPath+DMMain_FD.UsuarioActivo+'_Recibo.ini')
  else
    ReciboIni := TIniFile.Create(DMMain_FD.MainPath+'general_Recibo.ini');
  //*************************************************************
  chbModo.Checked              := ReciboIni.ReadBool('Modo', 'Modo', False);
  AplicacionAutomatica         := ReciboIni.ReadString('Aplicacion', 'AplicaAuto', 'N');
  Foco                         := ReciboIni.ReadInteger('Foco', 'Foco', 0);
  dbePorcentaje_DSCTO.TabStop  := ReciboIni.ReadBool('Secuencia','Porcentaje',False);
  dbeDscto.TabStop             := ReciboIni.ReadBool('Secuencia','importe',False);
  UsarFiltrado                 := ReciboIni.ReadBool('filtro','filtro',False);
  UsarGrupoFiltro              := ReciboIni.ReadBool('filtro','Usarfiltro',True);
  ReciboIni.Free;

  FrameMovValoresIngreso1.tsCheques.TabVisible:=False;
  FrameMovValoresIngreso1.tsDebito.TabVisible :=False;

  btNuevo.SetFocus;
end;


procedure TFormRecibo_2.FrameMovValoresIngreso1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux: real;
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovAfterDelete(DataSet);
  aux:= DatosRecibos.CDSReciboTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores + DatosRecibos.SumaRetenciones);
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosRecibos.MascaraGral,aux);
end;

procedure TFormRecibo_2.FrameMovValoresIngreso1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux: real;
begin
  inherited;
//  FrameMovValoresIngreso1.lbResto:=FormatFloat(DatosRecibos.MascaraGral,
//                                              (FrameMovValoresIngreso1.SumaValores +
//                                               DatosRecibos.SumaRetenciones -
//                                               DatosRecibos.wwCDSReciboTOTAL.Value));
  FrameMovValoresIngreso1.CDSCajaMovAfterPost(DataSet);
 // FrameMovValoresIngreso1.CalcularValores;
  aux:= DatosRecibos.CDSReciboTOTAL.AsFloat -( FrameMovValoresIngreso1.SumaValores + DatosRecibos.SumaRetenciones);
  FrameMovValoresIngreso1.lbResto.Caption:= FormatFloat(DatosRecibos.MascaraGral,aux);
end;

procedure TFormRecibo_2.FrameMovValoresIngreso1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresIngreso1.CDSCajaMovBeforeDelete(DataSet);
end;


procedure TFormRecibo_2.FrameMovValoresIngreso1ImportarCheques1Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresIngreso1.ImportarChequesExecute(Sender);

end;

procedure TFormRecibo_2.GravarNroInternoExecute(Sender: TObject);
begin
  inherited;
 if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroInterno)) then
        FormNumeroInterno    :=TFormNumeroInterno.Create(Self);
      FormNumeroInterno.Numero :=DatosRecibos.CDSReciboNRO_RECIBO_INTERMO.Value;
      FormNumeroInterno.Id     :=DatosRecibos.CDSReciboID_RC.Value;
      FormNumeroInterno.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormRecibo_2.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=DatosRecibos.CDSReciboID_RC.AsInteger;
      FormNumeroOperacion.Tipo :=DatosRecibos.CDSReciboTIPOCPBTE.AsString;
      if (DatosRecibos.CDSReciboNUMERO_OPERACION.AsString='') or (length(DatosRecibos.CDSReciboNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(DatosRecibos.CDSReciboFECHA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(DatosRecibos.CDSReciboNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(DatosRecibos.CDSReciboNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormRecibo_2.DesaplicarExecute(Sender: TObject);
begin
  inherited;
  if (Not(DSBase.DataSet.IsEmpty)) and
     (DSBase.DataSet.State in [dsBrowse]) and
     (DMMain_FD.UsuarioAdministrador=True) Then
     begin
       DatosRecibos.CDSMovAplicaCCVta.First;
       while Not(DatosRecibos.CDSMovAplicaCCVta.eof) do
         begin
            BorrarAplicacion.Execute;
            DatosRecibos.CDSMovAplicaCCVta.First;
         end;
     end;

end;

procedure TFormRecibo_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled          := True;
  pnCabecera.Enabled           := DSBase.State IN [dsInsert];
  pcDetalle.Enabled            := True;
  Imputaciones.Enabled         := DSBase.State IN [dsInsert];
  BuscarPendientes.Enabled     := DSBase.State IN [dsInsert, dsEdit];
  dbgAplicaciones.ReadOnly     := DSBase.State IN [dsBrowse];
  dbgMovCC.Enabled             := DSBase.State IN [dsInsert, dsEdit];
  dbgretenciones.ReadOnly      := DSBase.State IN [dsBrowse];
  spBorrarAplicaciones.Enabled := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsEdit,dsInsert]);
  Modificar.Enabled            := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  Borrar.Enabled               := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]) and (DMMain_FD.BorrarRecibos=True);
  Imprimir.Enabled             := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  BuscarPorInterno.Enabled     := DSBase.State IN [dsBrowse];
  EnviarCorreo.Enabled         := Imprimir.Enabled;
  dbgAplicaciones.Refresh;
  dbgMovCC.Refresh;
  Recalcular.Enabled          := DSBase.State IN [dsInsert, dsEdit];
  FrameMovValoresIngreso1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
//  FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTCredito.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  BorrarTodas1.Enabled                            :=(NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  BorrarunaAplicacin1.Enabled                     :=(NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresIngreso1.ceCaja.Enabled          := DSBase.State IN [dsInsert];
  RxDBESucursal.Enabled     := DMMain_FD.ModificaSucursal;
  IngresarEfectivo1.Enabled := UpperCase(DMMain_FD.UsuarioActivo)='MASTER';
  RcTemporales.Enabled      := DSBase.State IN [dsBrowse];
  Cotizacion.Enabled        := Not(DSBase.DataSet.IsEmpty) and (Not(DSBase.State=dsBrowse));

end;

procedure TFormRecibo_2.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
 if not DirectoryExists(DMMain_FD.MainPath+'Archivos Temporales') then
    CreateDir(DMMain_FD.MainPath+'Archivos Temporales');

  frRecibo.PrintOptions.Printer:=PrNomCpbte;
  frRecibo.SelectPrinter;

  DatosRecibos.QComprob.Close;
  DatosRecibos.QComprob.ParamByName('id').Value :=DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Value;
  DatosRecibos.QComprob.ParamByName('suc').Value:=DatosRecibos.CDSReciboSUCURSAL.Value;

  DatosRecibos.QComprob.Open;


  frRecibo.PrintOptions.Printer:=PrNomCpbte;
  frRecibo.SelectPrinter;

  frRecibo.LoadFromFile(DMMain_FD.DBOpciones('CPBTES') + '\'+DatosRecibos.QComprobREPORTE.AsString);
  frRecibo.Variables['importeletra']:=''''+numero2letras(DatosRecibos.CDSReciboTOTAL.AsFloat)+'''';


  DatosRecibos.QComprob.Close;

  frRecibo.PrepareReport;

  frxPDFExport1.ShowDialog:=False;
  frxPDFExport1.FileName:=(DMMain_FD.MainPath+'Archivos Temporales\Recibo_'+DatosRecibos.CDSReciboNROCPBTE.AsString+'.pdf');
  frRecibo.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  if DatosRecibos.CorreoDestino='' Then
    DatosRecibos.CorreoDestino:=DMMain_FD.GetCorreoCliente_1(DSBase.DataSet.FieldByName('Codigo').AsString);

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := DatosRecibos.CDSReciboNOMBRE.AsString;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.CorreoDestino       := DatosRecibos.CorreoDestino;
  FormCorreo.CCopia              := DMMain_FD.GetCorreoCliente_2(DSBase.DataSet.FieldByName('Codigo').AsString);
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Recibo - '+ DatosRecibos.CDSReciboLETRARC.AsString+
                                    '-'+ DatosRecibos.CDSReciboSUCRC.AsString+
                                    '-'+ DatosRecibos.CDSReciboNUMERORC.AsString+
                                    ' del '+ FormatDateTime('dd-mm-yy',DatosRecibos.CDSReciboFECHA.AsDateTime);
  FormCorreo.Adjuntos.Add(DMMain_FD.MainPath+'Archivos Temporales\Recibo_'+DatosRecibos.CDSReciboNROCPBTE.AsString+'.pdf');
  FormCorreo.Show;
end;

procedure TFormRecibo_2.ExportarXMLExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(DMMain_FD.MainPath+'Papelera_RC') then
    CreateDir(DMMain_FD.MainPath+'Papelera_RC');
  if Not(DatosRecibos.CDSRecibo.IsEmpty)  Then
    begin
      DatosRecibos.CDSRecibo.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')Recibo.XML');
      FrameMovValoresIngreso1.CDSCajaMov.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')CajaMov.bin');
      FrameMovValoresIngreso1.CDSChe3.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')Che3.bin');
      FrameMovValoresIngreso1.CDSMovEfectivo.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')Efectivo.bin');
      FrameMovValoresIngreso1.CDSMovTCredito.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')TCredito.bin');
      FrameMovValoresIngreso1.CDSTransBco.SaveToFile(DMMain_FD.MainPath+'Papelera_RC\('+DatosRecibos.CDSReciboID_RC.AsString+')TXBanco.bin');
    end;
end;

procedure TFormRecibo_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  if FormSumaAplicacionesRc.Visible=True Then
    FormSumaAplicacionesRc.Close;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(self);
  FormBuscaCpbte.TipoCpbte1 := 'RC';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.Tag        := 2;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
end;

procedure TFormRecibo_2.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  // Ctr M  >>>>>>    Mostrar PopMenu por Codigo
  if (shift=[ssCtrl]) and ((Key=Ord(#77)) or (Key=Ord(#109))) and (DMMain_FD.UsuarioAdministrador) then
    pmOtrasAcciones.Popup(mouse.CursorPos.X, Mouse.CursorPos.Y);
end;

procedure TFormRecibo_2.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;
  IF (Key = #13) AND
    (NOT (ActiveControl IS Tbutton)) AND
    (NOT (ActiveControl IS TFrame)) AND
    (NOT (ActiveControl IS TcxGrid)) AND
    (NOT (ActiveControl IS TJvDBGrid)) AND
    (NOT (ActiveControl IS TDBGrid)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
  IF Key = #27 THEN
    Cancelar.Execute;

end;

procedure TFormRecibo_2.RecalcularExecute(Sender: TObject);
begin
  inherited;
  DatosRecibos.CalcularAplicaciones;
  DatosRecibos.calcularRetenciones;
end;

procedure TFormRecibo_2.RecalculoFrioExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  DatosRecibos.CalcularAplicaciones;
//  DatosRecibos.calcularRetenciones;
  Confirma.Execute;
end;

procedure TFormRecibo_2.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecibos.CDSReciboSUCURSAL.Clear;
      DatosRecibos.CDSReciboMUESTRASUCURSAL.Clear;
      DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Clear;
      DatosRecibos.CDSReciboMUESTRACOMPROBANTE.Clear;
      DatosRecibos.CDSReciboLETRARC.Clear;
      DatosRecibos.CDSReciboSUCRC.Clear;
      DatosRecibos.CDSReciboNUMERORC.Clear;
    end;
end;

procedure TFormRecibo_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frRecibo.DesignReport;
end;

procedure TFormRecibo_2.spSumaClick(Sender: TObject);
begin
  inherited;
  BorrarTodasAplicaciones.Execute;
  BuscarPendientes.Execute;
  if FormSumaAplicacionesRc.Visible=False Then
    FormSumaAplicacionesRc.ShowModal;
end;

procedure TFormRecibo_2.TraerSaldoActaExecute(Sender: TObject);
begin
  inherited;
  DatosRecibos.CDSMovACta.Close;
  DatosRecibos.CDSMovACta.Params.ParamByName('Codigo').Value := DatosRecibos.CDSReciboCODIGO.Value;
  DatosRecibos.CDSMovACta.Open;
end;

procedure TFormRecibo_2.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
 if (dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString='FC') or
    (dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString='NC') or
    (dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := dbgMovCC.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
      FormCpbte_2.TipoCpbte := dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString='AJ') Then
      begin
        IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
          FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Self);
        FormAjustesCCVenta_2.DatoNew  := dbgMovCC.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
        FormAjustesCCVenta_2.TipoCpbte:= dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString;
        FormAjustesCCVenta_2.Recuperar.Execute;
        FormAjustesCCVenta_2.Show;
      end
    else
      if (dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString='XR') Then
        begin
          IF NOT (Assigned(FormAnulacionRecibos)) THEN
            FormAnulacionRecibos:= TFormAnulacionRecibos.Create(Self);
          FormAnulacionRecibos.DatoNew  := dbgMovCC.DataSource.DataSet.FieldByName('ID_CPBTE').AsString;
          FormAnulacionRecibos.TipoCpbte:= dbgMovCC.DataSource.DataSet.FieldByName('TIPOCPBTE').AsString;
          FormAnulacionRecibos.Recuperar.Execute;
          FormAnulacionRecibos.Show;
      end;

end;

procedure TFormRecibo_2.VerCtaCteExecute(Sender: TObject);
var enter:char;
begin
  inherited;
  enter:=#13;
  if Not(Assigned(FormCtaCteVta)) then
    FormCtaCteVta:=TFormCtaCteVta.Create(Application);
  FormCtaCteVta.ceCliente.Text:=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCtaCteVta.ceClienteKeyPress(Sender,Enter);
  FormCtaCteVta.Show;
end;

procedure TFormRecibo_2.VerMonedaAlternartivaClick(Sender: TObject);
begin
  inherited;
  VerMonedaAlternartiva.Checked:=Not(VerMonedaAlternartiva.Checked);
  DSBase.DataSet.Refresh;
end;

procedure TFormRecibo_2.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Clear;
      DatosRecibos.CDSReciboMUESTRACOMPROBANTE.Clear;
      DatosRecibos.CDSReciboLETRARC.Clear;
      DatosRecibos.CDSReciboSUCRC.Clear;
      DatosRecibos.CDSReciboNUMERORC.Clear;
    end;
end;

procedure TFormRecibo_2.rxcVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if DMMain_FD.ModificaVendedor Then
    if (key=vk_delete) or (Key=VK_back) Then
      begin
        DatosRecibos.CDSReciboVENDEDOR.Clear;
        DatosRecibos.CDSReciboMUESTRAVENDEDOR.Clear;
      end;
end;

procedure TFormRecibo_2.RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecibos.CDSReciboCODIGO.Clear;
      DatosRecibos.CDSReciboNOMBRE.Clear;
    end;
end;

procedure TFormRecibo_2.ImprimirExecute(Sender: TObject);

begin
  inherited;
  DatosRecibos.QComprob.Close;
  DatosRecibos.QComprob.ParamByName('id').Value :=DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.Value;
  DatosRecibos.QComprob.ParamByName('suc').Value:=DatosRecibos.CDSReciboSUCURSAL.Value;
  DatosRecibos.QComprob.Open;

  frRecibo.PrintOptions.Printer:=PrNomCpbte;
  frRecibo.SelectPrinter;

  frRecibo.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRecibos.QComprobREPORTE.AsString);
  if Not(VerMonedaAlternartiva.Checked) then
    frRecibo.Variables['importeletra']:= QuotedStr('$ '+numero2letras(StrToFloat(AnsiReplaceStr(DatosRecibos.CDSReciboTOTAL.Text,',',''))))
  else
    frRecibo.Variables['importeletra']:= QuotedStr(dblMoneda.text+' '+numero2letras(StrToFloat(AnsiReplaceStr(DatosRecibos.CDSReciboTOTAL.Text,',',''))));

  frRecibo.Variables['sucursal']    :=''''+dbeSucursal.Text+'''';

  frRecibo.PrintOptions.Copies :=DatosRecibos.QComprobCOPIAS.Value;

  DatosRecibos.QComprob.Close;

  // frCtaCte.PrepareReport;
  frRecibo.ShowReport;
end;

procedure TFormRecibo_2.ImputacionesExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormAplicacionesCCVta_2)) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text:=RxDBECodigo.Text;
  FormAplicacionesCCVta_2.VerCCte.Execute;
  FormAplicacionesCCVta_2.BorderStyle:=bsSingle;
  FormAplicacionesCCVta_2.Show;
  BuscarPendientes.Execute;
end;

procedure TFormRecibo_2.IngresarEfectivoExecute(Sender: TObject);
begin
  inherited;
  if UpperCase(DMMain_FD.UsuarioActivo)='MASTER' then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spAgregarMovEfectivo.Close;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('id_cpbte').Value        :=DatosRecibos.CDSReciboID_RC.Value;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('Tipo_Comprob').Value    :=DatosRecibos.CDSReciboTIPOCPBTE.Value;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('Clase_Comprob').Value   :=DatosRecibos.CDSReciboCLASECPBTE.Value;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('NroCpbte').Value        :=DatosRecibos.CDSReciboNROCPBTE.Value;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('id_cuenta_Caja').Value  :=CajaPorDefecto;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('fecha_movimiento').Value:=DatosRecibos.CDSReciboFECHA.AsDateTime;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('debe').Value            :=DatosRecibos.CDSReciboTOTAL.AsFloat;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('haber').Value           :=0;
        DMStoreProcedure.spAgregarMovEfectivo.ParamByName('tipooperacion').Value   :='I';
        DMStoreProcedure.spAgregarMovEfectivo.ExecProc;
        DMStoreProcedure.spAgregarMovEfectivo.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Operacion No finalizada....!');
      end;
      Recuperar.Execute;
    end;
end;

procedure TFormRecibo_2.IniciarFocoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormConfiguracionRecibo)) Then
    FormConfiguracionRecibo:=TFormConfiguracionRecibo.Create(Self);
  FormConfiguracionRecibo.ShowModal;

  if DMMain_FD.UsuarioActivo<>'' Then
    ReciboIni := TIniFile.Create(DMMain_FD.MainPath+'general_Recibo.ini')
  else
    ReciboIni := TIniFile.Create(DMMain_FD.MainPath+'general_Recibo.ini');
  //*************************************************************
  chbModo.Checked              := ReciboIni.ReadBool('Modo', 'Modo', False);
  AplicacionAutomatica         := ReciboIni.ReadString('Aplicacion', 'AplicaAuto', 'N');
  Foco                         := ReciboIni.ReadInteger('Foco', 'Foco', 0);
  dbePorcentaje_DSCTO.TabStop  := ReciboIni.ReadBool('Secuencia','Porcentaje',False);
  dbeDscto.TabStop             := ReciboIni.ReadBool('Secuencia','importe',False);
  UsarFiltrado                 := ReciboIni.ReadBool('filtro','filtro',False);
  UsarGrupoFiltro              := ReciboIni.ReadBool('filtro','Usarfiltro',False);

  ReciboIni.Free;
  BuscarPendientes.Execute;
  //  chbFoco.Visible:=True;
end;



procedure TFormRecibo_2.ModificarExecute(Sender: TObject);
begin
  // Verifico si estan los valores disponibles
  if DMMain_FD.UsuarioAdministrador=True Then
    begin
      if Not(IsZero(DatosRecibos.SumaAplicaciones)) then
        raise Exception.Create('Hay Aplicaciones... Borrarlas antes de modficar...');
      DMStoreProcedure.QControlFondos.Close;
      DMStoreProcedure.QControlFondos.ParamByName('id').Value  := DatosRecibos.CDSReciboID_RC.Value;
      DMStoreProcedure.QControlFondos.ParamByName('Tipo').Value:= 'RC';
      DMStoreProcedure.QControlFondos.Open;

      if DMStoreProcedure.QControlFondos.Fields[0].Value='N' then
        if DMMain_FD.UsuarioAdministrador=False then
          RAISE Exception.Create('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no se pude hacer la operación....')
        else
          if DMMain_FD.UsuarioAdministrador=True then
            ShowMessage('Los cheques y/o tarjetas de Creditos han sido Usados para otras operaciones, no modificar valores....');

      DMStoreProcedure.QControlFondos.Close;
      inherited;
      pcDetalle.OnChange(self);
      CpbteNuevo  := False;  // para saber si es nuevo o es un comp. modificado lo uso en el Confirma

    end
  else
    ShowMessage('Debe Ser Administrador para esta operacion de Modificacion...');
end;

procedure TFormRecibo_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosRecibos.CDSReciboTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DatosRecibos.CDSReciboCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+DatosRecibos.CDSReciboSUCURSAL.AsString;
  inherited;

end;

procedure TFormRecibo_2.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frRecibo.DesignReport;
end;

procedure TFormRecibo_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';

  DatosRecibos.CDSRecibo.close;
  DatosRecibos.CDSRecibo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosRecibos.CDSRecibo.Open;

  if Not(DatosRecibos.CDSRecibo.IsEmpty) then
    begin
      condicion:=' and tipocpbte ='+AnsiQuotedStr(DatosRecibos.CDSReciboTIPOCPBTE.AsString,'''') +
                 ' and clasecpbte='+AnsiQuotedStr(DatosRecibos.CDSReciboCLASECPBTE.AsString,'''');

      // aca levanto las aplciaciones del recibo que estan echas...
      DatosRecibos.CDSMovAplicaCCVta.Close;
      DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('id').Value   := StrToInt(DatoNew);
      DatosRecibos.CDSMovAplicaCCVta.Params.ParamByName('Tipo').Value := TipoCpbte;
      Datosrecibos.CDSMovAplicaCCVta.Open;

      DatosRecibos.CDSMovCCVta.Filter:='';
      DatosRecibos.CDSMovCCVta.Filtered:=False;
      DatosRecibos.CDSMovCCVta.IndexDefs.Clear;
      DatosRecibos.CDSMovCCVta.Close;
      DatosRecibos.CDSMovCCVta.Params.ParamByName('Codigo').Clear;
      DatosRecibos.CDSMovCCVta.Open;


      DatosRecibos.CDSRetenciones.Close;
      DatosRecibos.CDSRetenciones.Params.ParamByName('Id').Value := StrToInt(DatoNew);
      DatosRecibos.CDSRetenciones.Open;

      DatosRecibos.QAPlicacionNC.Close;
      DatosRecibos.QAPlicacionNC.ParamByName('Id_nc').Value := DatosRecibos.CDSReciboNC_ID.Value;
      DatosRecibos.QAPlicacionNC.Open;


      if DatosRecibos.CDSReciboMUESTRACHEQUEs.AsString[1]='N' then
        FormRecibo_2. FrameMovValoresIngreso1.tsChe3.TabVisible:=False
      else
        FormRecibo_2. FrameMovValoresIngreso1.tsChe3.TabVisible:=True;

      if DatosRecibos.CDSReciboANULADO.Value='S' Then
        begin
           if Anulado=nil Then
              Anulado:=TPanel.Create(Self);
           Anulado.Parent:=Self;
           Anulado.Caption:='ANULADO';
           Anulado.Top:= Trunc(FormRecibo_2.Height*0.5)-30;
           Anulado.Left:=Trunc(FormRecibo_2.Width*0.5)-115;
           Anulado.Height:=40;
           Anulado.Width :=200;
           Anulado.Font.Size:=30;
           Anulado.Font.Color:=clRed;
           Anulado.Font.Name:='Arial';
           Anulado.Font.Style:=[fsBold];
           Anulado.Visible:=True;
           ANulado.BringToFront;
        end
      else
        if Anulado<>nil Then
          begin
            FreeAndNil(Anulado);
          end;

      FrameMovValoresIngreso1.TipoOperacion := 'I';

      FrameMovValoresIngreso1.CDSCajaMov.Close;
      FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
      FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
      FrameMovValoresIngreso1.CDSCajaMov.Open;

      FrameMovValoresIngreso1.ceCaja.Text         := FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
      FrameMovValoresIngreso1.edMuestraCaja.Text  := FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
      FrameMovValoresIngreso1.Id_Caja             := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
      FrameMovValoresIngreso1.id_Cuenta_caja      := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
      FrameMovValoresIngreso1.FechaCaja           := FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;

      FrameMovValoresIngreso1.CDSChe3.Close;
      FrameMovValoresIngreso1.CDSMovEfectivo.Close;
      FrameMovValoresIngreso1.CDSMovTCredito.Close;
      FrameMovValoresIngreso1.CDSTransBco.Close;
      FrameMovValoresIngreso1.CDSMovValoresComp.Close;
      FrameMovValoresIngreso1.CDSAjustes.Close;


      FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value           := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
      FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
      FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
      FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value       := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
      FrameMovValoresIngreso1.CDSMovValoresComp.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
      FrameMovValoresIngreso1.CDSAjustes.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;

      FrameMovValoresIngreso1.CDSChe3.Open;
      FrameMovValoresIngreso1.CDSMovEfectivo.Open;
      FrameMovValoresIngreso1.CDSMovTCredito.Open;
      FrameMovValoresIngreso1.CDSTransBco.Open;
      FrameMovValoresIngreso1.CDSMovValoresComp.Open;
      FrameMovValoresIngreso1.CDSAjustes.Open;

      DatosRecibos.SumarAplicaciones;
      FrameMovValoresIngreso1.CalcularValores;
      DatosRecibos.calcularRetenciones;

      IF DatosRecibos.CDSRecibo.State <> dsBrowse THEN
        DatosRecibos.CDSRecibo.Cancel;
     // DatosMovValoresRecibo.QCajaCab.Open;
      pnPrincipal.Enabled:=true;

      // VERIFICO SI LA CAJA ESTA CERRADA
      DatosRecibos.QCaja_Estado.Close;
      DatosRecibos.QCaja_Estado.ParamByName('id').Value:=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
      DatosRecibos.QCaja_Estado.Open;

      if DatosRecibos.QCaja_EstadoESTADO.Value=1 Then
        begin
          sbEstado.SimpleText               := 'La caja de está cerrada, no se puede modificar ni borrar';
          btModificar.Enabled               := False;
          btBorrar.Enabled                  := False;
          RevisionValoresIngresados.Enabled := False;
        end
      else
        begin
          btModificar.Enabled               := True;
          btBorrar.Enabled                  := True;
          RevisionValoresIngresados.Enabled := True;
          if (DatosRecibos.CDSReciboANULADO.Value='N') Then
            btBorrar.Enabled   :=True
          ELSE
            btBorrar.Enabled   :=fALSE;
        end;
      DatosRecibos.QCaja_Estado.Close;
      DatoNew:=''+DatoNew+'';
      // la primera linea la puse asi por que antes este dato no se guardaba y que aparezca completado
      // con la fecha del comprob,
      if DatosRecibos.CDSReciboFECHA_HORA.AsString='' then
        FormRecibo_2.Caption:='Recibo -- '+DatosRecibos.CDSReciboFECHA.AsString+'//'+Copy(DatosRecibos.CDSReciboUSUARIO.Value,1,15)
      else
        FormRecibo_2.Caption:='Recibo -- '+DatosRecibos.CDSReciboFECHA_HORA.AsString+'//'+Copy(DatosRecibos.CDSReciboUSUARIO.Value,1,15);

      if (DMMain_FD.UsuarioAdministrador=True) then
        sbEstado.SimpleText:=sbEstado.SimpleText+' - Ctr+D//Ctrl+Alt+A Desaplicar Todo';
      if btBorrar.Enabled=True  then
        btBorrar.Enabled:=DMMain_FD.BorrarRecibos;

      DatosRecibos.CDSMovACta.Close;
      DatosRecibos.CDSMovACta.Params.ParamByName('Codigo').Clear;
      DatosRecibos.CDSMovACta.Open;


      //*****************************************************************************
      // aca veo de que grupo de comprobantes es el recibo
      //*****************************************************************************
      FormRecibo_2.GrupoRec := -1;
      if DMMain_FD.HayFiltros then
        FormRecibo_2.GrupoRec  :=  DMMain_FD.GrupoCpbteVta(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE.AsInteger);

      //*****************************************************************************
      //*****************************************************************************
      FormRecibo_2.lbGrupo.Caption:= 'Grupo('+intToStr(FormRecibo_2.GrupoRec)+')';
      BorrarAplicacin1.Enabled    := (DSBase.DataSet.State=dsBrowse) and
                                     (DSBase.DataSet.IsEmpty=False) and
                                     (DatosRecibos.CDSMovAplicaCCVta.RecordCount>0) ;
      BorrarTodas1.Enabled                := BorrarAplicacin1.Enabled;
      BorrarTodaslasAplicaciones1.Enabled := BorrarunaAplicacin1.Enabled;
      BorrarunaAplicacin1.Enabled         := BorrarunaAplicacin1.Enabled;
      if RevisionValoresIngresados.Enabled then
        RevisionValoresIngresados.Enabled:= (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');
    end;
end;

procedure TFormRecibo_2.RevisionValoresIngresadosExecute(Sender: TObject);
var Aux:String;
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        Aux:= FrameMovValoresIngreso1.lbTotalValores.Caption;
        Aux:= AnsiReplaceText(Aux,',','');
        if Not(Assigned(FormRevisionValoresIngreso)) then
          FormRevisionValoresIngreso :=TFormRevisionValoresIngreso.Create(Self);
        FormRevisionValoresIngreso.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_Rc').Value;
        FormRevisionValoresIngreso.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresIngreso.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresIngreso.ImporteOriginal := StrToFloat(Aux);// DSBase.DataSet.FieldByName('Total').Value;
        FormRevisionValoresIngreso.Id_Caja         := FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresIngreso.Id_Cta_Caja     := FrameMovValoresIngreso1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresIngreso.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresIngreso.FechaOperacion  := DSBase.DataSet.FieldByName('Fecha').Value;
        FormRevisionValoresIngreso.Origen          := DSBase.DataSet.FieldByName('RAZONSOCIAL').Value;
        FormRevisionValoresIngreso.Cuit            := DSBase.DataSet.FieldByName('CUIT').Value;

        FormRevisionValoresIngreso.Show;
      end;
end;

procedure TFormRecibo_2.dbgMovCCTitleClick(Column: TColumn);
var i:Byte;
begin
  inherited;
  for i:=0 to dbgMovCC.Columns.Count-1 do
    begin
      dbgMovCC.Columns[i].Title.Font.Style:=[fsBold];
      dbgMovCC.Columns[i].Title.Font.Color:=clwhite;
    end;
  dbgMovCC.Columns[Column.Index].Title.Font.Style:=[];
  dbgMovCC.Columns[Column.Index].Title.Font.Color:=clYellow;
  DatosRecibos.CDSMovCCVta.IndexFieldNames:=Column.FieldName;
end;


procedure TFormRecibo_2.dbgRetencionesCellClick(Column: TColumn);
begin
  inherited;
  if (dbgretenciones.SelectedIndex=1) and (dbgretenciones.DataSource.DataSet.Active=True) then
    begin
      if dbgretenciones.DataSource.State=dsBrowse Then
        dbgretenciones.DataSource.Edit;

      DatosRecibos.CDSTRetencion.Close;
      DatosRecibos.CDSTRetencion.Params.ParamByName('Id').Value := DatosRecibos.CDSRetencionesID_RETENCION.Value;
      DatosRecibos.CDSTRetencion.Open;

      DatosRecibos.CDSJur_Reg.Close;
      IF NOT (DatosRecibos.CDSTRetencion.IsEmpty) THEN
        BEGIN
          dbgRetenciones.Columns[1].PickList.Clear;
          if DatosRecibos.CDSTRetencionTIPO.Value=1 Then // Retencion Iva
            begin
              DatosRecibos.CDSJur_Reg.CommandText:= 'select * from REGIMENRETENCIONIVA ';
              DatosRecibos.CDSJur_Reg.Open;
              DatosRecibos.CDSJur_Reg.First;
              while Not(DatosRecibos.CDSJur_Reg.Eof) do
                begin
                  dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
                  DatosRecibos.CDSJur_Reg.Next;
                end;
            end
          else
            if DatosRecibos.CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
              begin
                DatosRecibos.CDSJur_Reg.CommandText:= 'select * from juridiccion ';
                DatosRecibos.CDSJur_Reg.Open;
                DatosRecibos.CDSJur_Reg.First;
                while Not(DatosRecibos.CDSJur_Reg.Eof) do
                  begin
                    dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
                    DatosRecibos.CDSJur_Reg.Next;
                  end;
              end;
          DatosRecibos.CDSRetencionesDETALLE.Value := DatosRecibos.CDSTRetencionDETALLE.Value;
          //FormRecibo_2.wwdbgretenciones.RedrawGrid;
        END;

      DatosRecibos.CDSJur_Reg.Close;
    end;
end;

procedure TFormRecibo_2.dbgRetencionesColEnter(Sender: TObject);
begin
  inherited;
  if (dbgretenciones.SelectedIndex=1) and (dbgretenciones.DataSource.DataSet.Active=True) then
    begin
      if dbgretenciones.DataSource.State=dsBrowse Then
        dbgretenciones.DataSource.Edit;

      DatosRecibos.CDSTRetencion.Close;
      DatosRecibos.CDSTRetencion.Params.ParamByName('Id').Value := DatosRecibos.CDSRetencionesID_RETENCION.Value;
      DatosRecibos.CDSTRetencion.Open;

      DatosRecibos.CDSJur_Reg.Close;
      IF NOT (DatosRecibos.CDSTRetencion.IsEmpty) THEN
        BEGIN
          dbgRetenciones.Columns[1].PickList.Clear;
          if DatosRecibos.CDSTRetencionTIPO.Value=1 Then // Retencion Iva
            begin
              DatosRecibos.CDSJur_Reg.CommandText:= 'select * from REGIMENRETENCIONIVA ';
              DatosRecibos.CDSJur_Reg.Open;
              DatosRecibos.CDSJur_Reg.First;
              while Not(DatosRecibos.CDSJur_Reg.Eof) do
                begin
                  dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
                  DatosRecibos.CDSJur_Reg.Next;
                end;
            end
          else
            if DatosRecibos.CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
              begin
                DatosRecibos.CDSJur_Reg.CommandText:= 'select * from juridiccion ';
                DatosRecibos.CDSJur_Reg.Open;
                DatosRecibos.CDSJur_Reg.First;
                while Not(DatosRecibos.CDSJur_Reg.Eof) do
                  begin
                    dbgRetenciones.Columns[1].PickList.Add(DatosRecibos.CDSJur_Reg.FieldByName('codigo').AsString);
                    DatosRecibos.CDSJur_Reg.Next;
                  end;
              end;
          DatosRecibos.CDSRetencionesDETALLE.Value := DatosRecibos.CDSTRetencionDETALLE.Value;
          //FormRecibo_2.wwdbgretenciones.RedrawGrid;
        END;

      DatosRecibos.CDSJur_Reg.Close;
    end;
end;

procedure TFormRecibo_2.dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;

      IF (dbgRetenciones.SelectedIndex < 5) THEN
        dbgRetenciones.SelectedIndex := dbgRetenciones.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgRetenciones.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgRetenciones.DataSource.DataSet.Append;
          dbgRetenciones.SelectedIndex :=0;
        END;
    END
  else
    IF (Key = #10) AND (dbgretenciones.SelectedIndex = 0) THEN
      BEGIN
        Key := #0;
        BuscarRetencion.Execute;
      END;


end;

procedure TFormRecibo_2.dblMonedaClick(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then

  DSBase.DataSet.FieldByName('cotizacion').Value:=dblMoneda.ListSource.DataSet.FieldByName('cotizacion').Value;
end;

procedure TFormRecibo_2.dbtNcClick(Sender: TObject);
begin
  inherited;
if DatosRecibos.CDSReciboNC_ID.AsString<>'' then
    begin
      if not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew  :=DatosRecibos.CDSReciboNC_ID.AsString;
      FormCpbte_2.TipoCpbte:='NC';
      FormCpbte_2.Recuperar.Execute;
    end
end;

procedure TFormRecibo_2.dbtNC_NROCOMPROBClick(Sender: TObject);
begin
  inherited;
 if DatosRecibos.CDSReciboNC_ID.AsString<>'' then
    begin
      if not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew  :=DatosRecibos.CDSReciboNC_ID.AsString;
      FormCpbte_2.TipoCpbte:='NC';
      FormCpbte_2.Recuperar.Execute;
    end
end;


procedure TFormRecibo_2.dbtTotalNetoEnter(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='F-10:Calculadora';
end;

procedure TFormRecibo_2.dbtTotalNetoExit(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';

end;


procedure TFormRecibo_2.dbgMovACtaDblClick(Sender: TObject);
begin
  inherited;
    if (DatosRecibos.CDSMovACtaTIPOCPBTE.AsString='NC') Then
    begin
      IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
        FormMuestraCpbteCtaCteVta    := TFormMuestraCpbteCtaCteVta.Create(self);
      FormMuestraCpbteCtaCteVta.id   := DatosRecibos.CDSMovACtaID_CPBTE.Value;
      FormMuestraCpbteCtaCteVta.Tipo := DatosRecibos.CDSMovACtaTIPOCPBTE.AsString;
      FormMuestraCpbteCtaCteVta.ShowModal;
    end
  else
    if (DatosRecibos.CDSMovACtaTIPOCPBTE.Value='RC') Then
      begin
 //       IF NOT (Assigned(FormRecibo_2)) THEN
 //         FormRecibo_2:= TFormRecibo_2.Create(self);
 //       FormRecibo_2.DatoNew    := DatosRecibos.CDSMovACtaID_CPBTE.AsString;
 //       FormRecibo_2.TipoCpbte  := DatosRecibos.CDSMovACtaTIPOCPBTE.AsString;
 //       FormRecibo_2.Recuperar.Execute;
 //       FormRecibo_2.Show;
      end
    else
      if (DatosRecibos.CDSMovACtaTIPOCPBTE.Value='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := DatosRecibos.CDSMovACtaID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= DatosRecibos.CDSMovACtaTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
        end;

end;

procedure TFormRecibo_2.dbgMovCCDblClick(Sender: TObject);
begin
  inherited;
  try
    GeneraAplicacion((Sender as TDBGrid).DataSource.DataSet);
  except on E:Exception do
    Showmessage(E.Message);
  end;
end;

procedure TFormRecibo_2.dbgMovCCDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  inherited;
  if (dbgMovCC.DataSource.DataSet.FieldByName('MuestraTipoVta').Value='S') then
    dbgMovCC.Canvas.Font.Color :=clBlue;

  if gdSelected	in state Then
    begin
      dbgMovCC.Canvas.brush.Color :=clBlue;
      dbgMovCC.Canvas.Font.Color  :=clWhite;
    end;

  dbgMovCC.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormRecibo_2.dbgMovCCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;

  if (shift=[ssCtrl]) and (Key=Ord(#82)) and not(dbgMovCC.DataSource.DataSet.IsEmpty) then
    pmMovCC.Popup(mouse.CursorPos.X, Mouse.CursorPos.Y);

end;

procedure TFormRecibo_2.dbgMovCCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Y<=16 Then
    dbgMovCC.DragMode:=dmManual
  else
    dbgMovCC.DragMode:=dmAutomatic;
end;

procedure TFormRecibo_2.BorrarAplicacin1Click(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      BorrarUnaAplicacion.Execute;
      Confirma.Execute;
    end;
end;

procedure TFormRecibo_2.BorrarAplicacionExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DMStoreProcedure.spBorrarAplicacionesVta.Close;
    DMStoreProcedure.spBorrarAplicacionesVta.ParamByName('id').Value  :=DatosRecibos.CDSReciboID_RC.Value;
    DMStoreProcedure.spBorrarAplicacionesVta.ParamByName('tipo').Value:='RC';
    DMStoreProcedure.spBorrarAplicacionesVta.ExecProc;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la Operación');
  end;
   DMStoreProcedure.spBorrarAplicacionesVta.Close;
   Recuperar.Execute;
end;

procedure TFormRecibo_2.dbgAplicacionesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (Key=VK_F3) and (Shift=[ssCtrl])	Then
    BorrarAplicacion.Execute;
end;

procedure TFormRecibo_2.dbchkCPTE_MANUALClick(Sender: TObject);
begin
  inherited;
    begin
      dbeSuc.Enabled    := dbchkCPTE_MANUAL.Checked;
      dbeNumero.Enabled := dbchkCPTE_MANUAL.Checked;
      IF DatosRecibos.CDSRecibo.State IN [dsEdit, dsInsert] THEN
        BEGIN
          DatosRecibos.CDSReciboSUCRC.Value    := '0000';
          DatosRecibos.CDSReciboNUMERORC.Value := '00000000';
        END;
    end
end;

procedure TFormRecibo_2.dbeDsctoEnter(Sender: TObject);
begin
  inherited;
  dbeDscto.SelectAll;
end;

procedure TFormRecibo_2.dbeFechaExit(Sender: TObject);
begin
  inherited;
  if dbeFecha.EditText[1]=' ' Then
    if pnCabecera.Enabled Then dbeFecha.SetFocus;
  if ((dbeFecha.Date>Date) or (YearOf(dbeFecha.Date)<1900)) and (dsBase.State in [dsInsert,dsEdit]) Then
    begin
      if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
        begin
          dbeFecha.Clear;
          dbeFecha.SetFocus;
        end;
    end;
end;

procedure TFormRecibo_2.dbePorcentaje_DSCTOEnter(Sender: TObject);
begin
  inherited;
  dbePorcentaje_DSCTO.SelectAll;
end;

procedure TFormRecibo_2.AplicaAutoExecute(Sender: TObject);
var
  Saldo: Extended;
begin
  inherited;
  with DatosRecibos do
    if CDSMovCCVta.RecordCount>0 then
      begin
        Saldo   :=  CDSReciboSALDO_APLICAR.AsFloat;
        GeneraAplicacion(CDSMovCCVta,Saldo);
      end;
end;
procedure TFormRecibo_2.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_RC').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_RC').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;



end.