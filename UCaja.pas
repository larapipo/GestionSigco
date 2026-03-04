UNIT UCaja;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Grids, Db, DBClient, Provider, StdCtrls,Vcl.Dialogs,
  Mask, DBCtrls, ActnList, ImgList,System.UITypes,
  ExtCtrls,  frxDBSet, frxClass, Buttons, ComCtrls,
  DBGrids, Menus, UBuscaCajasCerradas,DateUtils,System.Variants,
  IniFiles, JvExControls, JvGradient, JvExMask, JvToolEdit, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlueprint, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, Data.FMTBcd, cxClasses, CompBuscador, JvFormPlacement, JvComponentBase,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, frxExportBaseDialog, frxExportPDF, System.Actions, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridCustomView, cxGrid, JvLabel, JvBaseEdits,
  JvExDBGrids, JvDBGrid, Vcl.Samples.Gauges, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client,cxGridExportLink, JvExStdCtrls, JvCombobox, JvDBCombobox,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinXmas2008Blue, dxDateRanges, dxScrollbarAnnotations, System.ImageList,VirtualUI_SDK, StrUtils,
  dxSkinWXI, frCoreClasses;

TYPE
  TFormCaja = CLASS(TForm)
    ActionList1: TActionList;
    BuscarCaja: TAction;
    ImageList1: TImageList;
    frCaja: TfrxReport;
    frDBDSaldoInicial: TfrxDBDataset;
    frDBDSaldoFinal: TfrxDBDataset;
    frDBDCajaCab: TfrxDBDataset;
    frDBDCajaDetEgreso: TfrxDBDataset;
    Imprimir: TAction;
    CerrarCaja: TAction;
    frDBDCajaDetIngreso: TfrxDBDataset;
    pcCaja: TPageControl;
    tsMovimientos: TTabSheet;
    tsCheques: TTabSheet;
    Label4: TLabel;
    frDBDChe3Rec: TfrxDBDataset;
    frDBDCheques: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Disenoreporte: TAction;
    DiseoReporte1: TMenuItem;
    pnPie: TPanel;
    ts: TTabSheet;
    CalcularValores: TAction;
    tsCheEmitidos: TTabSheet;
    Label5: TLabel;
    DBGCheEmitidos: TDBGrid;
    Label7: TLabel;
    TabSheet1: TTabSheet;
    dbgTxGeneradas: TDBGrid;
    dbgTxRecibidas: TDBGrid;
    Label9: TLabel;
    Label10: TLabel;
    dbgDebitos: TDBGrid;
    Label11: TLabel;
    frDBDChe3Ent: TfrxDBDataset;
    frDBDTxGenerada: TfrxDBDataset;
    frDBDTxRecibidas: TfrxDBDataset;
    frDBDDebitos: TfrxDBDataset;
    tsRetenciones: TTabSheet;
    frDBDRetenciones: TfrxDBDataset;
    TabSheet2: TTabSheet;
    frDBDDepositos: TfrxDBDataset;
    frDBDEfectivo: TfrxDBDataset;
    tsEfectivo: TTabSheet;
    dbgEfectivo: TDBGrid;
    Label12: TLabel;
    Refresh: TAction;
    pcMovimientos: TPageControl;
    pagIngresos: TTabSheet;
    Egresos: TTabSheet;
    BitBtn1: TBitBtn;
    btAbiertas: TBitBtn;
    btSalir: TBitBtn;
    btRefresh: TBitBtn;
    btCerradas: TBitBtn;
    BitBtn3: TBitBtn;
    frxDBSaldoTC: TfrxDBDataset;
    tstarjetas: TTabSheet;
    Label13: TLabel;
    frxDBMovTCCompra: TfrxDBDataset;
    frxDBMovTCVenta: TfrxDBDataset;
    Label14: TLabel;
    frxPDFExport1: TfrxPDFExport;
    VerPendientes: TAction;
    bt1: TBitBtn;
    VerComprobante: TAction;
    dbgIngresos: TJvDBGrid;
    Anuladas: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    frxDBAnuladas: TfrxDBDataset;
    edtIngresos: TJvCalcEdit;
    edtEgresos: TJvCalcEdit;
    CambiarDeCaja: TAction;
    CambiarDeCaja1: TMenuItem;
    N1: TMenuItem;
    CambiarCajaLote: TAction;
    N2: TMenuItem;
    CambiarCajaaunLote1: TMenuItem;
    pgResumen: TTabSheet;
    edTotalVentas: TJvCalcEdit;
    btResumenVta: TButton;
    chbCompVtas: TCheckBox;
    InformarArticulosVtas: TAction;
    Button1: TButton;
    ListarArtiVendidos: TAction;
    dbgMovTCVenta: TJvDBGrid;
    dbgMovTCCompra: TJvDBGrid;
    N3: TMenuItem;
    GenerarInformXML1: TMenuItem;
    ListarArt1: TMenuItem;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    dbgChRecibidos: TJvDBGrid;
    dbgChEntregados: TJvDBGrid;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    dbgRetenciones: TDBGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1SIGNO: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu2: TPopupMenu;
    ExportarXLS1: TMenuItem;
    pnCab: TPanel;
    RxLabel8: TJvLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label6: TLabel;
    dbcValores: TDBLookupComboBox;
    ComBuscadorCaja: TComBuscador;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1FECHA_OPERACION: TcxGridDBColumn;
    cxGrid2DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid2DBTableView1HABER: TcxGridDBColumn;
    cxGrid2DBTableView1DEBE: TcxGridDBColumn;
    cxGrid2DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid2DBTableView1EFEC_CHEQ: TcxGridDBColumn;
    cxGrid2DBTableView1MUESTRACTA: TcxGridDBColumn;
    cxGrid2DBTableView1NUEMROCHE: TcxGridDBColumn;
    cxGrid2DBTableView1MUESTRAORIGEN: TcxGridDBColumn;
    ExportarConsulta: TAction;
    LeerCajas: TAction;
    pnPieDetalle: TPanel;
    RxLabel9: TJvLabel;
    dbgSaldosFianles: TJvDBGrid;
    Label2: TLabel;
    dbeComprasTC: TDBEdit;
    chbConDetalle: TCheckBox;
    dbeVentasTC: TDBEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    edtSaldo: TJvCalcEdit;
    Label8: TLabel;
    pnCabecera: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    lbFechaApertura: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel10: TJvLabel;
    btPrev: TSpeedButton;
    btNext: TSpeedButton;
    dbeMuestraCaja: TDBEdit;
    dbeCaja: TDBEdit;
    Panel2: TPanel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    chFiltraFecha: TCheckBox;
    dbgCabecera: TJvDBGrid;
    chRef: TCheckBox;
    N4: TMenuItem;
    GenerarAuditoria: TMenuItem;
    Arqueos: TTabSheet;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1ID: TcxGridDBColumn;
    cxGrid3DBTableView1ID_CAJA: TcxGridDBColumn;
    cxGrid3DBTableView1ID_CTA_CAJA: TcxGridDBColumn;
    cxGrid3DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA_HORA: TcxGridDBColumn;
    cxGrid3DBTableView1SALDO_EFECTIVO: TcxGridDBColumn;
    cxGrid3DBTableView1SALDO_OTROS: TcxGridDBColumn;
    cxGrid3DBTableView1TOTAL_ARQUEO: TcxGridDBColumn;
    cxGrid3Level2: TcxGridLevel;
    cxGrid3DBTableView2: TcxGridDBTableView;
    cxGrid3DBTableView2ID_CAJA: TcxGridDBColumn;
    cxGrid3DBTableView2ID: TcxGridDBColumn;
    cxGrid3DBTableView2ID_CAB: TcxGridDBColumn;
    cxGrid3DBTableView2ID_TPAGO: TcxGridDBColumn;
    cxGrid3DBTableView2DENOMINACIO: TcxGridDBColumn;
    cxGrid3DBTableView2CANTIDAD: TcxGridDBColumn;
    cxGrid3DBTableView2IMPORTE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    Label15: TLabel;
    OpenDialog: TOpenDialog;
    chbUsarReporte: TCheckBox;
    chOrdenPantalla: TCheckBox;
    Button2: TButton;
    Button3: TButton;
    Progress: TGauge;
    QCambiarFecha: TFDQuery;
    lbCerrada: TLabel;
    CpbtEmitidos: TTabSheet;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1FECHA_OPERACION: TcxGridDBColumn;
    cxGrid4DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid4DBTableView1CLASE_COMPROB: TcxGridDBColumn;
    cxGrid4DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid4DBTableView1DEBE: TcxGridDBColumn;
    cxGrid4DBTableView1HABER: TcxGridDBColumn;
    cxGrid4DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid4DBTableView1NETO: TcxGridDBColumn;
    frxDBCpbteEmitidos: TfrxDBDataset;
    cxGrid4DBTableView1Column1: TcxGridDBColumn;
    IngresoGastos: TAction;
    Button5: TButton;
    TabSheet3: TTabSheet;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1FECHA: TcxGridDBColumn;
    cxGrid5DBTableView1NRO_CPBTE: TcxGridDBColumn;
    cxGrid5DBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGrid5DBTableView1CLASE_CPBTE: TcxGridDBColumn;
    cxGrid5DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid5DBTableView1DEBE: TcxGridDBColumn;
    cxGrid5DBTableView1HABER: TcxGridDBColumn;
    cxGrid5DBTableView1NOMBRE_VC: TcxGridDBColumn;
    frDBRecibos: TfrxDBDataset;
    BorrarMovCpbte_Ing: TAction;
    N5: TMenuItem;
    BorrarMovCpbteIng1: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    BorrarCaja: TAction;
    cxGrid6DBTableView1: TcxGridDBTableView;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6: TcxGrid;
    cxGrid6DBTableView1TOTAL_CIVA: TcxGridDBColumn;
    cxGrid6DBTableView1TOTAL_REC: TcxGridDBColumn;
    cxGrid6DBTableView1CANTIDAD_REC: TcxGridDBColumn;
    cxGrid6DBTableView1TOTALCIVA_REC: TcxGridDBColumn;
    cxGrid6DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid6DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid6DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid6DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid6DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid6DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid6DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    frxDBResumenVta: TfrxDBDataset;
    Memo1: TMemo;
    FactVsCobro: TTabSheet;
    dbgFc_vs_cobro: TDBGrid;
    dbgEgresos: TJvDBGrid;
    pagPresupuestos: TTabSheet;
    Panel1: TPanel;
    Label16: TLabel;
    Label17: TLabel;
    DesdePres: TJvDateEdit;
    HastaPres: TJvDateEdit;
    Panel3: TPanel;
    BbuscarPresus: TButton;
    dbgPresacobrar: TDBGrid;
    btPrevPres: TSpeedButton;
    btNextPres: TSpeedButton;
    BuscarPresu: TAction;
    PROCEDURE BuscarCajaExecute(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE RxDBComboEdit1ButtonClick(Sender: TObject);
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE ImprimirExecute(Sender: TObject);
    PROCEDURE FormDestroy(Sender: TObject);
    PROCEDURE CerrarCajaExecute(Sender: TObject);
    PROCEDURE btAbiertasClick(Sender: TObject);
    PROCEDURE btCerradasClick(Sender: TObject);
    procedure DisenoreporteExecute(Sender: TObject);
    procedure pnPieDblClick(Sender: TObject);
    procedure CalcularValoresExecute(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure RefreshExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure VerPendientesExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure dbgIngresosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgEgresosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure CambiarDeCajaExecute(Sender: TObject);
    procedure CambiarCajaLoteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure chFiltraFechaClick(Sender: TObject);
    procedure chbCompVtasClick(Sender: TObject);
    procedure InformarArticulosVtasExecute(Sender: TObject);
    procedure ListarArtiVendidosExecute(Sender: TObject);
    procedure lbFechaAperturaClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ExportarConsultaExecute(Sender: TObject);
    procedure LeerCajasExecute(Sender: TObject);
    procedure btPrevClick(Sender: TObject);
    procedure btNextClick(Sender: TObject);
    procedure GenerarAuditoriaClick(Sender: TObject);
    procedure dbgIngresosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgEgresosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormResize(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure IngresoGastosExecute(Sender: TObject);
    procedure BorrarMovCpbte_IngExecute(Sender: TObject);
    procedure BorrarCajaExecute(Sender: TObject);
    procedure dbgPresacobrarDblClick(Sender: TObject);
    procedure dbgPresacobrarDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btPrevPresClick(Sender: TObject);
    procedure btNextPresClick(Sender: TObject);
    procedure BuscarPresuExecute(Sender: TObject);
    procedure DesdePresAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaPresAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    Aux:Real;
    id_Caja:Integer;
    ArchivoIni        :TIniFile;
    CajaPorDefecto    :Integer;
    Procedure Recuperar(Dato:integer);
    procedure SumaIngresos_Egresos;
    procedure SumarEfectivo;
    procedure CargaLoteTC;
    { Public declarations }
  END;

VAR
  FormCaja: TFormCaja;


IMPLEMENTATION

uses UAperturaCaja, UTxCajaPendientes, URecibo_2, UFacturaCtdo_2, UFactura_2,UEgresos,
     UOPago_2, UCompraCtdo_2, UTransferenciaEfectivo, UTransferenciaCh3,
     UAnulacionOPago, DMCaja, UDMain_FD, UMontoATransferir, UAdelantosSueldos,
     UEgresoCaja, UTiketVta, UDepositosBancarios, UIngresoCaja, UCambioCajaMov,
     UChequesACaja, URemplazoChequesTercero, URemplazoCheques, UFecha,
     UResumenCaja, UHistorialCajas,UCargarLoteTC,DMStoreProcedureForm,URemplazoValoresIngresados,
     UCheCompartidos, ULogin, UPresupuesto_2;

{$R *.DFM}

procedure TFormcaja.SumaIngresos_Egresos;
var CDSClone:TClientDataSet;
Aux:Extended;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(DatosCaja.CDSCajaDetIngresos,True);
  CDSClone.First;

  Aux := 0;
  WHILE NOT (CDSClone.Eof) DO
    BEGIN
      Aux := Aux + CDSClone.FieldByName('Debe').AsFloat;
      CDSClone.Next;
    END;
  edtIngresos.Value := Aux;

  FreeAndNil(CDSClone);

  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(DatosCaja.CDSCajaDetEgresos,True);
  CDSClone.First;

  Aux := 0;
  WHILE NOT (CDSClone.Eof) DO
    BEGIN
      Aux := Aux + CDSClone.FieldByName('Haber').AsFloat;
      CDSClone.Next;
    END;
  edtEgresos.Value := Aux;

  FreeAndNil(CDSClone);

end;

procedure TFormcaja.SumarEfectivo;
var CDSClone:TClientDataSet;
begin
  edDebe.Value :=0;
  edHaber.Value:=0;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(DatosCaja.CDSEfectivo,True);
  CDSClone.First;

  WHILE NOT (CDSClone.Eof) DO
    BEGIN
      edDebe.Value  := edDebe.Value + CDSClone.FieldByName('Debe').AsFloat;
      edHaber.Value := edHaber.Value + CDSClone.FieldByName('Haber').AsFloat;
      CDSClone.Next;
    END;

  FreeAndNil(CDSClone);
end;


procedure TFormcaja.Recuperar(dato:Integer);
begin
  id_Caja:=Dato;
  Progress.Visible :=True;
  Progress.Progress:=1;

  DatosCaja.CDSCajaCab.Close;
  DatosCaja.CDSCajaCab.Params.ParamByName('id').Value         := Dato;
  DatosCaja.CDSCajaCab.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSSaldoInicial.Close;
  DatosCaja.CDSSaldoInicial.Params.ParamByName('id').Value    := Dato;
  DatosCaja.CDSSaldoInicial.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSCajaDetIngresos.Close;
  DatosCaja.CDSCajaDetIngresos.IndexDefs.Clear;
  DatosCaja.CDSCajaDetIngresos.IndexName:='';

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSCajaDetIngresos.Params.ParamByName('id').Value := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSCajaDetIngresos.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSCajaDetIngresos.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSCajaDetIngresos.Params.ParamByName('desde').clear;
      DatosCaja.CDSCajaDetIngresos.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSCajaDetIngresos.Open;


  DatosCaja.CDSRecibos.Close;
  DatosCaja.CDSRecibos.IndexDefs.Clear;
  DatosCaja.CDSRecibos.IndexName:='';
  DatosCaja.CDSRecibos.Params.ParamByName('id').Value := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSRecibos.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSRecibos.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSRecibos.Params.ParamByName('desde').clear;
      DatosCaja.CDSRecibos.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSRecibos.Open;

  cxGrid5DBTableView1.ViewData.Expand(True);

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSCajaDetEgresos.Close;
  DatosCaja.CDSCajaDetEgresos.IndexDefs.Clear;
  DatosCaja.CDSCajaDetEgresos.IndexName:='';

  DatosCaja.CDSCajaDetEgresos.Params.ParamByName('id').Value  := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSCajaDetEgresos.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSCajaDetEgresos.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSCajaDetEgresos.Params.ParamByName('desde').clear;
      DatosCaja.CDSCajaDetEgresos.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSCajaDetEgresos.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSSaldoFinal.Close;
  DatosCaja.CDSSaldoFinal.Params.ParamByName('id').Value := Dato;
  DatosCaja.CDSSAldoFinal.Open;
  // esto es agregado nuevo del 28/09/2008
  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSSaldosTC.Close;
  DatosCaja.CDSsaldosTC.Params.ParamByName('id').Value   := Dato;
  DatosCaja.CDSsaldosTC.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSFPago.Close;
  DatosCaja.CDSFPago.Open;
  DatosCaja.CDSFPago.First;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSValores.close;
  DatosCaja.CDSValores.Params.ParamByName('id').Value      := Dato;
  DatosCaja.CDSValores.Params.ParamByName('id_fpago').Value:= DatosCaja.CDSFPago.Fields[1].Value;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSValores.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSValores.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSValores.Params.ParamByName('desde').clear;
      DatosCaja.CDSValores.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSValores.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSChe3Recibidos.Close;
  DatosCaja.CDSChe3Recibidos.Params.ParamByName('id_caja').value:= Dato;
  if (chFiltraFecha.Checked=True) then
    begin
      DatosCaja.CDSChe3Recibidos.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSChe3Recibidos.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSChe3Recibidos.Params.ParamByName('desde').Value:= EncodeDate(1900,1,1);
      DatosCaja.CDSChe3Recibidos.Params.ParamByName('Hasta').Value:= EncodeDate(9999,1,1);
    end;
  DatosCaja.CDSChe3Recibidos.Open;

  Progress.Progress:=Progress.Progress+1;

  TFLOATField(dbgChRecibidos.Fields[4]).DisplayFormat := ',0.00';
  TStringField(dbgChRecibidos.Fields[0]).Alignment    := taRightJustify;

  DatosCaja.CDSChe3Entrgado.Close;
  DatosCaja.CDSChe3Entrgado.Params.ParamByName('id_caja').value:= Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSChe3Entrgado.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSChe3Entrgado.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSChe3Entrgado.Params.ParamByName('desde').AsDate:= EncodeDate(1900,01,01);
      DatosCaja.CDSChe3Entrgado.Params.ParamByName('hasta').AsDate:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSChe3Entrgado.OPen;

  TFLOATField(dbgChEntregados.Fields[4]).DisplayFormat  := ',0.00';
  TStringField(dbgChEntregados.Fields[0]).Alignment     := taRightJustify;

  DatosCaja.CDSCheques.Close;
  DatosCaja.CDSCheques.Params.ParamByName('id_caja').value:= Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSCheques.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSCheques.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSCheques.Params.ParamByName('desde').clear;
      DatosCaja.CDSCheques.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSCheques.OPen;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSTxGeneradas.Close;
  DatosCaja.CDSTxGeneradas.Params.ParamByName('id_caja').Value:= Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSTxGeneradas.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSTxGeneradas.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSTxGeneradas.Params.ParamByName('desde').AsDate:= EncodeDate(1900,01,01);
      DatosCaja.CDSTxGeneradas.Params.ParamByName('hasta').AsDate:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSTxGeneradas.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSTxRecibidas.Close;
  DatosCaja.CDSTxRecibidas.Params.ParamByName('id_caja').Value:= Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSTxRecibidas.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSTxRecibidas.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSTxRecibidas.Params.ParamByName('desde').AsDate:= EncodeDate(1900,01,01);
      DatosCaja.CDSTxRecibidas.Params.ParamByName('hasta').AsDate:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSTxRecibidas.Open;

  Progress.Progress  :=  Progress.Progress+1;

  DatosCaja.CDSDebitos.Close;
  DatosCaja.CDSDebitos.Params.ParamByName('id_caja').Value  := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSDebitos.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSDebitos.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSDebitos.Params.ParamByName('desde').AsDate:= EncodeDate(1900,01,01);
      DatosCaja.CDSDebitos.Params.ParamByName('hasta').AsDate:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSDebitos.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSRetenciones.Close;
  DatosCaja.CDSRetenciones.Params.ParamByName('idcaja').Value:= Dato;
  DatosCaja.CDSRetenciones.Open;

  Progress.Progress  :=  Progress.Progress+1;

  DatosCaja.CDSDepositos.Close;
  DatosCaja.CDSDepositos.Params.ParamByName('idcaja').Value:= Dato;
  DatosCaja.CDSDepositos.Open;

  Progress.Progress  := Progress.Progress+1;

  DatosCaja.CDSEfectivo.Close;
  DatosCaja.CDSEfectivo.Params.ParamByName('idcaja').Value := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSEfectivo.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSEfectivo.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSEfectivo.Params.ParamByName('desde').clear;
      DatosCaja.CDSEfectivo.Params.ParamByName('Hasta').clear;
    end;
  DatosCaja.CDSEfectivo.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSMovTCCompra.Close;
  DatosCaja.CDSMovTCCompra.Params.ParamByName('id').Value := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSMovTCCompra.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSMovTCCompra.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSMovTCCompra.Params.ParamByName('desde').Value:= EncodeDate(1900,01,01);
      DatosCaja.CDSMovTCCompra.Params.ParamByName('hasta').Value:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSMovTCCompra.Open;

  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSMovTCVenta.Close;
  DatosCaja.CDSMovTCVenta.Params.ParamByName('id').Value := Dato;
  if chFiltraFecha.Checked then
    begin
      DatosCaja.CDSMovTCVenta.Params.ParamByName('desde').Value:=Desde.Date;
      DatosCaja.CDSMovTCVenta.Params.ParamByName('Hasta').Value:=Hasta.Date;
    end
  else
    begin
      DatosCaja.CDSMovTCVenta.Params.ParamByName('desde').Value:= EncodeDate(1900,01,01);
      DatosCaja.CDSMovTCVenta.Params.ParamByName('hasta').Value:= EncodeDate(9999,01,01);
    end;
  DatosCaja.CDSMovTCVenta.Open;


  DatosCaja.CDSEmitidosVta.Close;
  DatosCaja.CDSEmitidosVta.Params.ParamByName('id').Value:= Dato;
  DatosCaja.CDSEmitidosVta.Open;

  SumaIngresos_Egresos;
  SumarEfectivo;


  DatosCaja.QFacturasVsCobro.Close;
  DatosCaja.QFacturasVsCobro.ParamByName('desde').Value:=DatosCaja.CDSCajaCabFECHA_INCIO.AsDateTime;
  DatosCaja.QFacturasVsCobro.ParamByName('Hasta').Value:=DatosCaja.CDSCajaCabFECHA_CIERRE.AsDateTime;
  DatosCaja.QFacturasVsCobro.Open;



  Progress.Progress:=Progress.Progress+1;

  DatosCaja.CDSAnuladas.Close;
  DatosCaja.CDSAnuladas.Params.ParamByName('id').Value := Dato;
  DatosCaja.CDSAnuladas.Open;

  Progress.Progress:=Progress.Progress+1;

  ListarArtiVendidos.Execute;

  TFLOATField(dbgTxGeneradas.Fields[4]).DisplayFormat := ',0.00';
  TFLOATField(dbgTxRecibidas.Fields[4]).DisplayFormat := ',0.00';
  TFLOATField(dbgDebitos.Fields[4]).DisplayFormat     := ',0.00';

  TFLOATField(dbgEfectivo.Fields[6]).DisplayFormat    := ',0.00';
  TFLOATField(dbgEfectivo.Fields[5]).DisplayFormat    := ',0.00';

  TFLOATField(DBGCheEmitidos.Fields[3]).DisplayFormat := ',0.00';

  TStringField(DBGCheEmitidos.Fields[0]).Alignment :=taRightJustify;
  CerrarCaja.Enabled := (DatosCaja.CDSCajaCabESTADO.Value = 0) and (Dato<>0); ;
  edtSaldo.Value     := edtIngresos.Value-edtEgresos.Value;

  //lbCerrada.Visible  := (DatosCaja.CDSCajaCabESTADO.Value = 1);
  case  DatosCaja.CDSCajaCabESTADO.Value of
    1:begin
        lbCerrada.Font.Color := clRed;
        lbCerrada.Caption    := 'Cerrada';
      end;
    0:begin
        lbCerrada.Font.Color := clGreen;
        lbCerrada.Caption    := 'Abierta';
        if DatosCaja.CDSCajaCabID_CAJA.AsString='' then
          lbCerrada.Caption:='';
      end
    else
     lbCerrada.Caption:='';
  end;


  Progress.Progress := Progress.Progress+1;

  dbgIngresos.Width := dbgIngresos.Width-1;
  dbgIngresos.Width := dbgIngresos.Width+1;

  dbgEgresos.Width  := dbgEgresos.Width-1;
  dbgEgresos.Width  := dbgEgresos.Width+1;
  if GenerarAuditoria.Checked then
    ExportarConsulta.Execute;

  DatosCaja.CDSArqueoCab.Close;
  DatosCaja.CDSArqueoCab.Params.ParamByName('id').Value:=id_Caja;
  DatosCaja.CDSArqueoCab.Open;

  DatosCaja.CDSArqueoDet.Close;
  DatosCaja.CDSArqueoDet.Params.ParamByName('id').Value:=id_Caja;
  DatosCaja.CDSArqueoDet.Open;
  Progress.Visible := False;

  DesdePres.Date := DatosCaja.CDSCajaCabFECHA_INCIO.AsDateTime;
  if DatosCaja.CDSCajaCabFECHA_CIERRE.IsNull then
    HastaPres.Date := date
  else
    HastaPres.Date := DatosCaja.CDSCajaCabFECHA_CIERRE.AsDateTime;

  BuscarPresu.Execute;

end;

PROCEDURE TFormCaja.BuscarCajaExecute(Sender: TObject);
BEGIN
  comBuscadorCaja.Execute;
  IF comBuscadorCaja.rOk THEN
    Recuperar(comBuscadorCaja.id);
END;

procedure TFormCaja.BuscarPresuExecute(Sender: TObject);
begin
  DatosCaja.CDSpresuACobrar.close;
  DatosCaja.CDSpresuACobrar.Params.ParamByName('desde').AsDate:=DesdePres.Date;
  DatosCaja.CDSpresuACobrar.Params.ParamByName('hasta').AsDate:=HastaPres.Date;
  DatosCaja.CDSpresuAcobrar.open;
end;

procedure TFormCaja.Button2Click(Sender: TObject);
begin
  CargaLoteTC;
end;

procedure TFormCaja.Button3Click(Sender: TObject);
begin
  if (Trunc(datoscaja.CDSSaldoFinalSALDO.ASFloat*100)>0) Then
    if (Vcl.Dialogs.MessageDlg('Transfiere el efectivo a otra caja..... ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) THEN
      begin
        if Not(Assigned(FormMontoATransferir)) then
          FormMontoATransferir:=TFormMontoATransferir.Create(Self);
        FormMontoATransferir.CajaOrigen    := DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
        DatosCaja.CDSSaldoFinal.Locate('TPago;FPago',VarArrayOf(['1','1']),[]);
        FormMontoATransferir.ImporteOrigen := datoscaja.CDSSaldoFinalSALDO.ASFloat;
        FormMontoATransferir.ShowModal;
        Refresh.Execute;
      end
    else ShowMessage('No Hay Saldo para Transferir...');
end;

procedure TFormCaja.Button4Click(Sender: TObject);
begin
  if MessageDlg('Generar Informe de Art.Vendidos..(se puede realizar en forma posterior)..... ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
      ListarArtiVendidos.Execute;
      InformarArticulosVtas.Execute;
    end;
end;

PROCEDURE TFormCaja.FormClose(Sender: TObject; VAR Action: TCloseAction);
BEGIN
  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'CajaOp.ini');
  ArchivoIni.WriteBool('Caja', 'Auditoria',GenerarAuditoria.Checked);
  ArchivoIni.WriteString('Reporte', 'File', edReporte.Text);
  ArchivoIni.WriteBool('Reporte', 'Opcion',chbUsarReporte.Checked);

  ArchivoIni.Free;
  if Assigned(FormCargaLoteTC) then
    begin
      FormCargaLoteTC.Close;
      FreeAndNil(FormCargaLoteTC);
    end;

  if DatosCaja<>nil then
    FreeAndNil(DatosCaja);
  Action := caFree;
END;

PROCEDURE TFormCaja.RxDBComboEdit1ButtonClick(Sender: TObject);
BEGIN
  BuscarCaja.Execute;
END;

procedure TFormCaja.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edReporte.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
end;

procedure TFormCaja.lbFechaAperturaClick(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      FormFecha.dbcCtaBco.Visible  :=False;
      FormFecha.dbcSucursal.Visible:=False;
      FormFecha.lbCta.Visible      :=False;
      FormFecha.Label1.Visible     :=False;
      FormFecha.fecha:=DatosCaja.CDSCajaCabFECHA_INCIO.AsDateTime;
      FormFecha.ShowModal;
      if FormFecha.ModalResult=mrOk then
        begin
           DMMain_FD.fdcGestion.StartTransaction;
          try
            QCambiarFecha.Close;
            QCambiarFecha.ParamByName('FechaNueva').Value  := FormFecha.fecha;
            QCambiarFecha.ParamByName('id').Value          := DatosCaja.CDSCajaCabID_CAJA.Value;
            QCambiarFecha.ExecSQL;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('NO se Modifico la fecha....!');
          end;
        end;
      FreeAndNil(FormFecha);
      Refresh.Execute;
    end;
end;

procedure TFormCaja.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
// if Button=btnext Then
//    Desde.Date := IncDay(Desde.Date,(1))
//  else
//    if Button=btPrev Then
//      Desde.Date := IncDay(Desde.Date,(-1));
//  Hasta.Date:=desde.Date;
//  if chRef.Checked then
//    Refresh.Execute;
//  btAbiertas.SetFocus;
end;

procedure TFormCaja.VerComprobanteExecute(Sender: TObject);
begin
  if ((Sender as TJvDBGrid).Name = 'dbgIngresos') then
    begin
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='RC' then
        begin
          IF NOT (Assigned(FormRecibo_2)) THEN
            FormRecibo_2:= TFormRecibo_2.Create(self);
          FormRecibo_2.DatoNew    := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormRecibo_2.TipoCpbte  := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormRecibo_2.Recuperar.Execute;
          FormRecibo_2.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='FO' then
        begin
          IF NOT (Assigned(FormCpbteCtdo_2)) THEN
            FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormCpbteCtdo_2.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCpbteCtdo_2.Recuperar.Execute;
          FormCpbteCtdo_2.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='TK' then
        begin
          IF NOT (Assigned(FormTicketVta)) THEN
            FormTicketVta   := TFormTicketVta.Create(self);
          FormTicketVta.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTicketVta.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormCpbte_2.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='CX' then
        begin
          IF NOT (Assigned(FormTransferenciaEfectivo)) THEN
            FormTransferenciaEfectivo   := TFormTransferenciaEfectivo.Create(self);
          FormTransferenciaEfectivo.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTransferenciaEfectivo.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTransferenciaEfectivo.Recuperar.Execute;
          FormTransferenciaEfectivo.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='QX' then
        begin
          IF NOT (Assigned(FormTransferenciaChe3)) THEN
            FormTransferenciaChe3   := TFormTransferenciaChe3.Create(self);
          FormTransferenciaChe3.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormTransferenciaChe3.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormTransferenciaChe3.Recuperar.Execute;
          FormTransferenciaChe3.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='XP' then
        begin
          IF NOT (Assigned(FormAnulacionOPago)) THEN
            FormAnulacionOPago   := TFormAnulacionOPago.Create(self);
          FormAnulacionOPago.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormAnulacionOPago.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormAnulacionOPago.Recuperar.Execute;
          FormAnulacionOPago.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='IC' then
        begin
          IF NOT (Assigned(FormIngresoCaja)) THEN
            FormIngresoCaja   := TFormIngresoCaja.Create(self);
          FormIngresoCaja.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormIngresoCaja.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormIngresoCaja.Recuperar.Execute;
          FormIngresoCaja.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='CC' then
        begin
          IF NOT (Assigned(FormCheACaja)) THEN
            FormCheACaja   := TFormCheACaja.Create(self);
          FormCheACaja.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormCheACaja.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCheACaja.Recuperar.Execute;
          FormCheACaja.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='ZI' then
        begin
          IF NOT (Assigned(FormReemplazoValoresIng)) THEN
            FormReemplazoValoresIng   := TFormReemplazoValoresIng.Create(self);
          FormReemplazoValoresIng.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormReemplazoValoresIng.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormReemplazoValoresIng.Recuperar.Execute;
          FormReemplazoValoresIng.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='QT' then
        begin
          IF NOT (Assigned(FormRemplazoChequesTerceros)) THEN
            FormRemplazoChequesTerceros         := TFormRemplazoChequesTerceros.Create(self);
          FormRemplazoChequesTerceros.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormRemplazoChequesTerceros.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormRemplazoChequesTerceros.Recuperar.Execute;
          FormRemplazoChequesTerceros.Show;
        end
      else
      if DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.Value='CO' then
        begin
          IF NOT (Assigned(FormCheCompartidos)) THEN
            FormCheCompartidos   := TFormCheCompartidos.Create(self);
          FormCheCompartidos.DatoNew   := DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsString;
          FormCheCompartidos.TipoCpbte := DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCheCompartidos.Recuperar.Execute;
          FormCheCompartidos.Show;
        end;

    end
  else
    if ((Sender as TJvDBGrid).Name = 'dbgEgresos') then
      begin
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='OP' then
          begin
            IF NOT (Assigned(FormOPago_2)) THEN
              FormOPago_2:= TFormOPago_2.Create(self);
            FormOPago_2.DatoNew    := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormOPago_2.TipoCpbte  := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormOPago_2.Recuperar.Execute;
            FormOPago_2.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='FO' then
          begin
            IF NOT (Assigned(FormCompraCtdo_2)) THEN
              FormCompraCtdo_2   := TFormCompraCtdo_2.Create(self);
            FormCompraCtdo_2.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormCompraCtdo_2.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='VA' then
          begin
            IF NOT (Assigned(FormAdelantosSueldo)) THEN
              FormAdelantosSueldo   := TFormAdelantosSueldo.Create(self);
            FormAdelantosSueldo.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormAdelantosSueldo.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormAdelantosSueldo.Recuperar.Execute;
            FormAdelantosSueldo.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='EC' then
          begin
            IF NOT (Assigned(FormEgresoCaja)) THEN
              FormEgresoCaja   := TFormEgresoCaja.Create(self);
            FormEgresoCaja.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormEgresoCaja.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormEgresoCaja.Recuperar.Execute;
            FormEgresoCaja.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='CX' then
          begin
            IF NOT (Assigned(FormTransferenciaEfectivo)) THEN
              FormTransferenciaEfectivo   := TFormTransferenciaEfectivo.Create(self);
            FormTransferenciaEfectivo.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormTransferenciaEfectivo.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormTransferenciaEfectivo.Recuperar.Execute;
            FormTransferenciaEfectivo.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='QX' then
          begin
            IF NOT (Assigned(FormTransferenciaChe3)) THEN
              FormTransferenciaChe3   := TFormTransferenciaChe3.Create(self);
            FormTransferenciaChe3.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormTransferenciaChe3.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormTransferenciaChe3.Recuperar.Execute;
            FormTransferenciaChe3.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='DP' then
          begin
            IF NOT (Assigned(FormDepositosBancarios)) THEN
              FormDepositosBancarios   := TFormDepositosBancarios.Create(self);
            FormDepositosBancarios.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormDepositosBancarios.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormDepositosBancarios.Recuperar.Execute;
            FormDepositosBancarios.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='QT' then
          begin
            IF NOT (Assigned(FormRemplazoChequesTerceros)) THEN
              FormRemplazoChequesTerceros   := TFormRemplazoChequesTerceros.Create(self);
            FormRemplazoChequesTerceros.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormRemplazoChequesTerceros.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormRemplazoChequesTerceros.Recuperar.Execute;
            FormRemplazoChequesTerceros.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='QR' then
          begin
            IF NOT (Assigned(FormRemplazoCheques)) THEN
              FormRemplazoCheques   := TFormRemplazoCheques.Create(self);
            FormRemplazoCheques.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormRemplazoCheques.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormRemplazoCheques.Recuperar.Execute;
            FormRemplazoCheques.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='NC' then
          begin
            IF NOT (Assigned(FormCpbte_2)) THEN
              FormCpbte_2   := TFormCpbte_2.Create(self);
            FormCpbte_2.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormCpbte_2.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormCpbte_2.Recuperar.Execute;
            FormCpbte_2.Show;
          end
        else
        if DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.Value='ZI' then
          begin
            IF NOT (Assigned(FormReemplazoValoresIng)) THEN
              FormReemplazoValoresIng   := TFormReemplazoValoresIng.Create(self);
            FormReemplazoValoresIng.DatoNew   := DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.AsString;
            FormReemplazoValoresIng.TipoCpbte := DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormReemplazoValoresIng.Recuperar.Execute;
            FormReemplazoValoresIng.Show;
          end;
      end
    else
    if ((Sender as TJvDBGrid).Name = 'dbgMovTCVenta') then
      begin
        if DatosCaja.CDSMovTCVentaTIPO_COMPROB.Value='FO' then
          begin
            IF NOT (Assigned(FormCpbteCtdo_2)) THEN
              FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
            FormCpbteCtdo_2.DatoNew   := DatosCaja.CDSMovTCVentaID_COMPROBANTE.AsString;
            FormCpbteCtdo_2.TipoCpbte := DatosCaja.CDSMovTCVentaTIPO_COMPROB.AsString;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;
        if DatosCaja.CDSMovTCVentaTIPO_COMPROB.Value='TK' then
          begin
            IF NOT (Assigned(FormTicketVta)) THEN
              FormTicketVta   := TFormTicketVta.Create(self);
            FormTicketVta.DatoNew   := DatosCaja.CDSMovTCVentaID_COMPROBANTE.AsString;
            FormTicketVta.TipoCpbte := DatosCaja.CDSMovTCVentaTIPO_COMPROB.AsString;
            FormTicketVta.Recuperar.Execute;
            FormTicketVta.Show;
          end;
        if DatosCaja.CDSMovTCVentaTIPO_COMPROB.Value='RC' then
          begin
            IF NOT (Assigned(FormRecibo_2)) THEN
              FormRecibo_2:= TFormRecibo_2.Create(self);
            FormRecibo_2.DatoNew    := DatosCaja.CDSMovTCVentaID_COMPROBANTE.AsString;
            FormRecibo_2.TipoCpbte  := DatosCaja.CDSMovTCVentaTIPO_COMPROB.AsString;
            FormRecibo_2.Recuperar.Execute;
            FormRecibo_2.Show;
          end;

      end;

end;

procedure TFormCaja.VerPendientesExecute(Sender: TObject);
begin
  if not(Assigned(FormTxPendientes)) then
    FormTxPendientes:=TFormTxPendientes.Create(Self);
  FormTxPendientes.ShowModal;

end;

PROCEDURE TFormCaja.FormCreate(Sender: TObject);
BEGIN
  AutoSize        := False;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  IF NOT (Assigned(DatosCaja)) THEN
    DatosCaja := TDatosCaja.Create(Self);
  // no lo saco pero no se si anda , debo controlar... 07-06-2005
  ArchivoIni      := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  CajaPorDefecto  := StrToInt(ArchivoIni.ReadString('Caja', 'caja','1'));
  ArchivoIni.Free;

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'CajaOp.ini');
  GenerarAuditoria.Checked  := ArchivoIni.ReadBool('Caja', 'Auditoria',False);
  edReporte.Text            := ArchivoIni.ReadString('Reporte', 'File', edReporte.Text);
  chbUsarReporte.Checked    := ArchivoIni.ReadBool('Reporte', 'Opcion',False);
  ArchivoIni.Free;

  OpenDialog.InitialDir := DMMain_FD.PathReportesLst;

  CajaPorDefecto        := DMMain_FD.CajaSeleccionada;

  // Esta linea reemplazaria lo del INI, si no es administrador no cambia la caja
  DatosCaja.QCajaPorDefecto.Close;
  DatosCaja.QCajaPorDefecto.ParamByName('id_cta_caja').Value:=CajaPorDefecto;
  DatosCaja.QCajaPorDefecto.Open;
  pcCaja.ActivePageIndex:=0;
{*} id_Caja:=DatosCaja.QCajaPorDefecto.Fields[0].asInteger;
//  Recuperar(QCajaPorDefecto.Fields[0].asInteger);
  if (TForm(Self.Owner).Name<>'FrameMovValoresIngreso1') and
     (TForm(Self.Owner).Name<>'FrameMovValoresIngreso2') then
    Recuperar(Id_Caja);
  pcMovimientos.ActivePageIndex:=0;
  // este combo antes lo habilitaba segun el tipo de User (administrador o no)
  // ahora lo controlo por la opcion del menu.
  btAbiertas.Enabled  := DMMain_FD.ModificaCaja;

  DatosCaja.QTxPendientes.Close;
  DatosCaja.QTxPendientes.Open;
  if DatosCaja.QTxPendientes.Fields[0].Value>0 then
    VerPendientes.Enabled:=True
  else
    VerPendientes.Enabled:=False;

  CambiarDeCaja.Enabled      := DMMain_FD.UsuarioAdministrador and DMMain_FD.ModificaCaja;// ='master';
  CambiarCajaLote.Enabled    := CambiarDeCaja.Enabled;//DMMain_FD.UsuarioActivo='master';
  BorrarMovCpbte_Ing.Enabled := CambiarDeCaja.Enabled;//DMMain_FD.UsuarioActivo='master';
  BorrarCaja.Enabled         := CambiarDeCaja.Enabled;//DMMain_FD.UsuarioActivo='master';

  DatosCaja.QCajaPorDefecto.Close;

END;

PROCEDURE TFormCaja.ImprimirExecute(Sender: TObject);
var  AIndex: integer;
     AValue: variant;
Cantidad,Total,Promedio:Extended;
begin
  Cantidad:=0;
  Total:=0;
  Promedio:=0;
  if Not(varIsNull(cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[2])) then
    Cantidad := cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[2];
  if Not(varIsNull(cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[0])) then
    Total    := cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[0];
  if Not(varIsNull(cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[1])) then
    Promedio := cxGrid4DBTableView1.DataController.Summary.FooterSummaryValues[1];
//               cxGrid1DBTableView1.DataController.Summary.FooterSummaryValues ​​[0]



  if not(chOrdenPantalla.Checked) then
    DatosCaja.CDSCajaDetIngresos.IndexFieldNames:='TIPO_CPBTE;CLASE_CPBTE;NRO_CPBTE';
  If Not(DatosCaja.CDSCajaCab.IsEmpty) Then
    begin
      DatosCaja.CDSCajaDetEgresos.DisableControls;
      DatosCaja.CDSCajaDetIngresos.DisableControls;

      frCaja.Variables['Detalle']:='''N''';

      if chbConDetalle.Checked Then
        begin
          if chbUsarReporte.Checked=False then
            frcaja.LoadFromFile(DMMain_FD.PathReportesLst+'\Caja.fr3')
          else
            frcaja.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
           frCaja.Variables['Detalle']:='''S''';
        end
      else
        begin
          if chbUsarReporte.Checked=False then
            frcaja.LoadFromFile(DMMain_FD.PathReportesLst+'\Caja_sindetalle.fr3')
          else
            frcaja.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
           frCaja.Variables['Detalle']:='''N''';
        end;


      // DMMain_FD.QOpciones.Close;
      // frCtaCte.PrepareReport;
      frCaja.Variables['Saldo']    :=''''+edtSaldo.Text+'''';

      frCaja.Variables['Cantidad'] :=''''+FormatFloat(',0.00',Cantidad)+'''';
      frCaja.Variables['Total']    :=''''+FormatFloat(',0.00',Total)+'''';
      frCaja.Variables['Promedio'] :=''''+FormatFloat(',0.00',Promedio)+'''';

      frcaja.ShowReport;
      DatosCaja.CDSCajaDetEgresos.EnableControls;
      DatosCaja.CDSCajaDetIngresos.EnableControls;
    end
  else
    ShowMessage('No Hay datos para imprimir....');

END;

procedure TFormCaja.InformarArticulosVtasExecute(Sender: TObject);
begin
  if Not(DatosCaja.CDSResumentVta.IsEmpty) then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Detalles Vtas') then
        CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Detalles Vtas');
      if Not(DatosCaja.CDSResumentVta.IsEmpty)  Then
        begin
          DatosCaja.CDSResumentVta.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Detalles Vtas\'+'Caja_'+DatosCaja.CDSCajaCabID_CUENTA_CAJA.AsString+'_Nro_'+DatosCaja.CDSCajaCabNUMEROCAJA.AsString+'.XML');
        end
      else
        ShowMessage('No Hay datos para exportar....');
      ShowMessage('Datos exportados....');
    end;

end;

procedure TFormCaja.IngresoGastosExecute(Sender: TObject);
begin
  if NOT(Assigned(FormEgresos)) then
    FormEgresos :=TFormEgresos.Create(self);
  FormEgresos.IdCtaCaja     := DatosCaja.CDSCajaCabID_CUENTA_CAJA.AsInteger;;
  FormEgresos.ShowModal;
  if (Assigned(FormEgresos)) then
    FreeAndNil(FormEgresos);
  Refresh.Execute;

  Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);
end;



procedure TFormCaja.LeerCajasExecute(Sender: TObject);
var PathCajas:String;
begin
  if DMMain_FD.UsuarioActivo='master' then
    begin
      PathCajas:=(ExtractFilePath(ParamStr(0))+'HistorialConsultasCajas');
      if Not(Assigned(FormHistorialCajas)) then
        FormHistorialCajas:=TFormHistorialCajas.Create(self);
      FormHistorialCajas.IDCaja   := DatosCaja.CDSCajaCabID_CAJA.Value;
      FormHistorialCajas.Directorio:=PathCajas;
      FormHistorialCajas.ShowModal;
    end;
end;

procedure TFormCaja.ListarArtiVendidosExecute(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;

  DatosCaja.CDSResumentVta.Close;
  DatosCaja.CDSResumentVta.Params.ParamByName('id_caja').Value:=id_Caja;
  DatosCaja.CDSResumentVta.IndexDefs.Clear;
  DatosCaja.CDSResumentVta.IndexFieldNames := '';
  DatosCaja.CDSResumentVta.Open;

  DatosCaja.CDSResumentVta.Filtered:=False;
  if chFiltraFecha.Checked then
    DatosCaja.CDSResumentVta.Filter:= ' FECHAVTA >= '+ QuotedStr(DateToStr(desde.Date))+' and '+' FECHAVTA <= '+QuotedStr(DateToStr(Hasta.Date))
  else
     DatosCaja.CDSResumentVta.Filter := '';
  DatosCaja.CDSResumentVta.Filtered  := chFiltraFecha.Checked;

  DatosCaja.CDSResumentVta.First;
  DatosCaja.CDSResumentVta.DisableControls;

  edTotalVentas.Value:=0;
  while not(DatosCaja.CDSResumentVta.Eof) do
    begin
      edTotalVentas.Value:=edTotalVentas.Value+DatosCaja.CDSResumentVtaTOTALCIVA_REC.AsFloat;
      DatosCaja.CDSResumentVta.Next;
    end;
  DatosCaja.CDSResumentVta.First;
  DatosCaja.CDSResumentVta.EnableControls;
  DatosCaja.CDSResumentVta.IndexFieldNames:='DETALLE_RUBRO;DETALLE';
  Screen.Cursor:=crDefault;
end;

PROCEDURE TFormCaja.FormDestroy(Sender: TObject);
BEGIN
  FormCaja := NIL;
END;

procedure TFormCaja.FormResize(Sender: TObject);
begin
 if (Width>891)
    then width:=891;
  if (Width<891)
    then width:=891;
end;

procedure TFormCaja.FormShow(Sender: TObject);
begin
  desde.Date:=Date;
  hasta.Date:=Date;

  DesdePres.Date:=Date;
  HastaPres.Date:=Date;
end;

procedure TFormCaja.GenerarAuditoriaClick(Sender: TObject);
begin
  GenerarAuditoria.Checked:= Not(GenerarAuditoria.Checked);
end;

procedure TFormCaja.HastaPresAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  HastaPres.Date := ADate;
  BuscarPresu.Execute;
end;

PROCEDURE TFormCaja.CerrarCajaExecute(Sender: TObject);
var id:Integer;
SaldoEfectivo:Extended;
BEGIN
  //guardar los saldos de caja..
  IF
    MessageDlg('Esta por hacer una operacion de cierre de caja, lo que hará que no se permitan más operaciones de'
    + #13 +
    'movimientos de fondos, hasta que no haga una nueva apertura. Esta seguro de hacerlo?',
      mtWarning, [mbYes, mbNo], 0) = mrYes THEN
    BEGIN
      IF DatosCaja.CDSCajaCabESTADO.Value = 0 THEN
        BEGIN
          if DatosCaja.CDSSaldoFinal.Locate('TPAGO',1,[]) then
            SaldoEfectivo:=DatosCaja.CDSSaldoFinalSALDO.AsFloat;

          if (Trunc(SaldoEfectivo*100)>0) Then
            if MessageDlg('Cargar Lote de Tarjetas... ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
              CargaLoteTC;
          Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);

          if DatosCaja.CDSSaldoFinal.Locate('TPAGO',1,[]) then
            SaldoEfectivo:=DatosCaja.CDSSaldoFinalSALDO.AsFloat;

          if (Trunc(SaldoEfectivo*100)>0) Then
            if (Vcl.Dialogs.MessageDlg('Antes de Cerrar Transfiere el efectivo a otra caja..... ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) THEN
              begin
                if Not(Assigned(FormMontoATransferir)) then
                  FormMontoATransferir:=TFormMontoATransferir.Create(Self);
                FormMontoATransferir.CajaOrigen    := DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
                DatosCaja.CDSSaldoFinal.Locate('TPago;FPago',VarArrayOf(['1','1']),[]);
                FormMontoATransferir.ImporteOrigen := datoscaja.CDSSaldoFinalSALDO.ASFloat;
                FormMontoATransferir.ShowModal;

              end
            else ShowMessage('Sin Transferir ...');


          if MessageDlg('Continua con el cierre ...? ', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
            begin
              DMMain_FD.fdcGestion.StartTransaction;
              try
                id:=DatosCaja.CDSCajaCabID_CAJA.AsInteger;
                DatosCaja.spCerrar_Caja.Close;
                DatosCaja.spCerrar_Caja.ParamByName('id_caja').Value := DatosCaja.CDSCajaCabID_CAJA.AsInteger;
                DatosCaja.spCerrar_Caja.ParamByName('fecha').Value   := Date;
                DatosCaja.spCerrar_Caja.ExecProc;
                DMMain_FD.LogFileFD(0,2,'Cierre de Caja Cta.:'+DatosCaja.CDSCajaCabID_CUENTA_CAJA.AsString+'-'+DatosCaja.CDSCajaCabMUESTRACTACAJA.AsString+'-'+
                                        'Fecha Inicio:'+DatosCaja.CDSCajaCabFECHA_INCIO.AsString+
                                        'Cierre :'+DateToStr(date),
                                        'CAJACAB');
                DMMain_FD.fdcGestion.Commit;
                DatosCaja.spCerrar_Caja.Close;
              except
                DMMain_FD.fdcGestion.Rollback;
                ShowMessage('No se pudo hacer el cierre...');
              end;
              DatosCaja.spCerrar_Caja.Close;
                // traigo la caja devuelta
              BEGIN
                DatosCaja.CDSCajaCab.Close;
                DatosCaja.CDSCajaDetEgresos.Close;
                DatosCaja.CDSCajaDetIngresos.Close;

                Recuperar(id);
                CerrarCaja.Enabled := DatosCaja.CDSCajaCabESTADO.Value = 0;
                edtSaldo.Value     := edtIngresos.Value-edtEgresos.Value;

              end;
              if MessageDlg('Imprime Caja.....?',mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
                Imprimir.Execute;
              // si la quiere abrir de nuevo
              if MessageDlg('Abre una Nueva caja.....?',mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
                begin
                  if not (Assigned(FormAperturaCaja)) then
                    FormAperturaCaja := TFormAperturaCaja.Create(Application);
                  FormAperturaCaja.Agregar.Execute;
                  FormAperturaCaja.CDSCajaCabID_CUENTA_CAJASetText(FormAperturaCaja.CDSCajaCabID_CUENTA_CAJA,DatosCaja.CDSCajaCabID_CUENTA_CAJA.AsString);
                  FormAperturaCaja.Show;

                end;
              DatosCaja.CDSCajaCab.Close;
              DatosCaja.CDSCajaDetEgresos.Close;
              DatosCaja.CDSCajaDetIngresos.Close;
            END;
        END
          ELSE
            BEGIN
              ShowMessage('Esta caja ya fue cerrada....!!!!');
            END;
        END;
END;



procedure TFormCaja.chbCompVtasClick(Sender: TObject);
begin
  DatosCaja.CDSCajaDetIngresos.Filtered:=False;
  if chbCompVtas.Checked then
     DatosCaja.CDSCajaDetIngresos.Filter:= DatosCaja.CDSCajaDetIngresos.Filter+ ' and ( tipo_cpbte in (''FC'',''FO'',''TK'',''NC'') )'
  else
     DatosCaja.CDSCajaDetIngresos.Filter:= 'Tipo_Operacion=''I'' ';
  DatosCaja.CDSCajaDetIngresos.Filtered:=True;

  DatosCaja.CDSCajaDetEgresos.Filtered:=False;
  if chbCompVtas.Checked then
     DatosCaja.CDSCajaDetEgresos.Filter:= DatosCaja.CDSCajaDetEgresos.Filter+ ' and ( tipo_cpbte in (''NC'',) )'
  else
     DatosCaja.CDSCajaDetEgresos.Filter:= 'Tipo_Operacion=''E'' ';
  DatosCaja.CDSCajaDetEgresos.Filtered:=True;

  DatosCaja.CDSResumentVta.Filtered:=False;
  if chFiltraFecha.Checked then
     DatosCaja.CDSResumentVta.Filter:= DatosCaja.CDSResumentVta.Filter+ ' FECHAVTA >= '+''''+DateToStr(desde.Date)+''''+' and '+' FECHAVTA <= '+''''+DateToStr(Hasta.Date)+''''
  else
     DatosCaja.CDSResumentVta.Filter:= '';
  DatosCaja.CDSResumentVta.Filtered:=chFiltraFecha.Checked;

  // recalculo los Ingresos
  DatosCaja.CDSCajaDetIngresos.First;
  DatosCaja.CDSCajaDetIngresos.DisableControls;
  edtIngresos.Value := 0;
  WHILE NOT (DatosCaja.CDSCajaDetIngresos.Eof) DO
    BEGIN
      edtIngresos.Value := edtIngresos.Value + DatosCaja.CDSCajaDetIngresos.FieldByName('Debe').AsFloat;
      DatosCaja.CDSCajaDetIngresos.Next;
    END;
  DatosCaja.CDSCajaDetIngresos.First;
  DatosCaja.CDSCajaDetIngresos.EnableControls;

  // recalculo los egresos
  DatosCaja.CDSCajaDetEgresos.First;
  DatosCaja.CDSCajaDetEgresos.DisableControls;
  edtEgresos.Value := 0;
  WHILE NOT (DatosCaja.CDSCajaDetEgresos.Eof) DO
    BEGIN
      edtEgresos.Value := edtEgresos.Value + DatosCaja.CDSCajaDetEgresos.FieldByName('Haber').AsFloat;
      DatosCaja.CDSCajaDetEgresos.Next;
    END;

  DatosCaja.CDSCajaDetEgresos.First;
  DatosCaja.CDSCajaDetEgresos.EnableControls;

end;

procedure TFormCaja.chFiltraFechaClick(Sender: TObject);
begin
  Refresh.Execute;
end;

procedure TFormCaja.dbgEgresosDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  dbgEgresos.Canvas.Brush.Color:= clWhite;

  if (DatosCaja.CDSCajaDetEgresosID_ARQUEO_CAJA.Value>0) then
    dbgEgresos.Canvas.Brush.Color:= clSkyBlue;
  
  if gdSelected	in state Then
    begin
      dbgEgresos.Canvas.brush.Color :=clBlue;
      dbgEgresos.Canvas.Font.Color  :=clWhite;
    end;

  dbgEgresos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormCaja.dbgEgresosTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
var Campo:String;
begin
  try
    Campo := Field.FieldName;
    with dbgEgresos.DataSource.DataSet as TClientDataSet do
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

procedure TFormCaja.dbgIngresosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  dbgIngresos.Canvas.Brush.Color:= clWhite;

  if (DatosCaja.CDSCajaDetIngresosID_ARQUEO_CAJA.Value>0) then
    dbgIngresos.Canvas.Brush.Color := clSkyBlue;


  if gdSelected	in state Then
    begin
      dbgIngresos.Canvas.brush.Color :=clBlue;
      dbgIngresos.Canvas.Font.Color  :=clWhite;
    end;

  dbgIngresos.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormCaja.dbgIngresosTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
Var Campo:String;
begin
 try
    Campo := Field.FieldName;
    with dbgIngresos.DataSource.DataSet as TClientDataSet do
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

procedure TFormCaja.BitBtn2Click(Sender: TObject);
begin
  if Not(Assigned(FormResumenCaja)) then
    FormResumenCaja:=TFormResumenCaja.Create(Self);
  FormResumenCaja.IDCaja:=DatosCaja.CDSCajaCabID_CAJA.Value;
  FormResumenCaja.ShowModal;
end;

procedure TFormCaja.BorrarCajaExecute(Sender: TObject);
begin
  if (DatosCaja.CDSCajaDetEgresos.IsEmpty) and (DatosCaja.CDSCajaDetIngresos.IsEmpty) then
    begin
      if not (Assigned(FormLogin)) then
        FormLogin := TFormLogin.Create(Self);
      FormLogin.ShowModal;
      if (FormLogin.Tag=1) Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosCaja.QBorrarCaja.close;
            DatosCaja.QBorrarCaja.ParambyName('ID').Value     :=DatosCaja.CDSCajaCabID_CAJA.Value;
            DatosCaja.QBorrarCaja.ExecSQL;
            DMMain_FD.fdcGestion.Commit;
            DatosCaja.QBorrarCaja.close;
          except
            DMMain_FD.fdcGestion.Rollback;
            DatosCaja.QBorrarCaja.close;
          end;
        end
      else
        ShowMessage('Operacion cancelada....');
    end
  else
    ShowMessage('Hay Movimientos.... no se puede borrar...')
end;


procedure TFormCaja.BorrarMovCpbte_IngExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosCaja.spBorrarMov_Cpbte.close;
    DatosCaja.spBorrarMov_Cpbte.ParamByName('TIPOCOMPROB').AsString     :=DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
    DatosCaja.spBorrarMov_Cpbte.ParamByName('ID_COMPROBANTE').AsInteger :=DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.AsInteger;
    DatosCaja.spborrarMov_cpbte.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DatosCaja.spBorrarMov_Cpbte.close;
  except
    DMMain_FD.fdcGestion.Rollback;
    DatosCaja.spBorrarMov_Cpbte.close;
   end;
end;

PROCEDURE TFormCaja.btAbiertasClick(Sender: TObject);
BEGIN
  DatosCaja.CDSCajas.CommandText := 'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc '+
                                    'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja '+
                                    'where cc.estado=:estado '+
                                    'order by  cta.nombre,cc.estado,cc.fecha_incio desc';
  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      DatosCaja.CDSCajas.CommandText:= 'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc '+
                                       'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja '+
                                       'where cc.estado=:estado and (cc.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) '+
                                       'order by  cta.nombre,cc.estado,cc.fecha_incio desc';
      DatosCaja.CDSCajas.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;
  DatosCaja.CDSCajas.Close;
  DatosCaja.CDSCajas.Params.ParamByName('Estado').Value := 0;
  DatosCaja.CDSCajas.Open;
  DatosCaja.QTxPendientes.Close;
  DatosCaja.QTxPendientes.Open;
  if DatosCaja.QTxPendientes.IsEmpty then
    VerPendientes.Enabled:=False
  else
    VerPendientes.Enabled:=True;
  BuscarCaja.Execute;
END;

PROCEDURE TFormCaja.btCerradasClick(Sender: TObject);
BEGIN
  if Not(Assigned(FormBuscaCajasCerradas)) Then
    FormBuscaCajasCerradas:=TFormBuscaCajasCerradas.Create(self);
// Agregue esta linea para que inicie en la caja actual selecionada
// luego habilito el combo de seleccion de cta de caja segun si puede o no cambiar de caja
  if dbeCaja.Text<>'' Then
    FormBuscaCajasCerradas.dbcCtas.KeyValue:=StrToInt(dbeCaja.Text)
  else
    FormBuscaCajasCerradas.dbcCtas.KeyValue:=CajaPorDefecto;
  FormBuscaCajasCerradas.dbcCtas.OnClick(sender);
  FormBuscaCajasCerradas.dbcCtas.Enabled:=DMMain_FD.ModificaCaja;
  FormBuscaCajasCerradas.ShowModal;
  if FormBuscaCajasCerradas.ModalResult=mrok Then
    BEGIN
      Recuperar(FormBuscaCajasCerradas.idCaja);
   end;
  DatosCaja.QTxPendientes.Close;
  DatosCaja.QTxPendientes.Open;
  if DatosCaja.QTxPendientes.IsEmpty then
    VerPendientes.Enabled:=False
  else
    VerPendientes.Enabled:=True;
//  QCaja.Close;
//  QCaja.ParamByName('Estado').Value := 1;
//  QCaja.Open;
//  BuscarCaja.Execute;
END;

procedure TFormCaja.btNextClick(Sender: TObject);
begin
  Desde.Date := IncDay(Desde.Date,(1));
  Hasta.Date:=desde.Date;
  if chRef.Checked then
    Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);
end;

procedure TFormCaja.btNextPresClick(Sender: TObject);
begin
  DesdePres.Date := IncDay(DesdePres.Date,(1));
  HastaPres.Date := DesdePres.Date;
  BuscarPresu.Execute;
end;

procedure TFormCaja.btPrevClick(Sender: TObject);
begin
  Desde.Date := IncDay(Desde.Date,(-1));
  Hasta.Date := desde.Date;
  if chRef.Checked then
     Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);
end;

procedure TFormCaja.btPrevPresClick(Sender: TObject);
begin
  DesdePres.Date := IncDay(DesdePres.Date,(-1));
  HastaPres.Date := DesdePres.Date;
  BuscarPresu.Execute;
end;

procedure TFormCaja.dbgPresacobrarDblClick(Sender: TObject);
begin
 IF NOT (Assigned(FormPresupuesto_2)) THEN
  FormPresupuesto_2:= TFormPresupuesto_2.Create(self);
          FormPresupuesto_2.DatoNew:= DatosCaja.CDSpresuACobrarID_PR.AsString;
          FormPresupuesto_2.TipoCpbte  := DatosCaja.CDSpresuACobrarTIPOCPBTE.AsString;
          FormPresupuesto_2.Recuperar.Execute;
          FormPresupuesto_2.Show;
end;

procedure TFormCaja.dbgPresacobrarDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  if DatosCaja.CDSpresuACobrarANULADO.AsString = 'S' then
    dbgPresacobrar.Font.Style := [TFontStyle.fsStrikeOut]
  else
    if DatosCaja.CDSpresuACobrarANULADO.AsString = 'V' then
      dbgPresacobrar.Canvas.Brush.Color := clGray
    else
      if (DatosCaja.CDSpresuACobrarANULADO.AsString = 'A') and (not DatosCaja.CDSpresuACobrarFACTURANRO.IsNull) then
        dbgPresacobrar.Canvas.Brush.Color := clLime
      else
        if (DatosCaja.CDSpresuACobrarANULADO.AsString = 'R') then
          dbgPresacobrar.Canvas.Brush.Color := clYellow
        else
          if (DatosCaja.CDSpresuACobrarANULADO.AsString = 'C') then
            dbgPresacobrar.Canvas.Brush.Color := clAqua;



  if gdSelected in state Then
    begin
      dbgPresacobrar.Canvas.brush.Color := clHighlight;
      dbgPresacobrar.Canvas.Font.Color  := clWhite;
    end;

  DBGPresacobrar.DefaultDrawColumnCell(Rect, DataCol, Column, State);
end;

procedure TFormCaja.DesdePresAcceptDate(Sender: TObject; var ADate: TDateTime;
  var Action: Boolean);
begin
  DesdePres.Date:=ADate;
  BuscarPresu.Execute;
end;

procedure TFormCaja.DisenoreporteExecute(Sender: TObject);
begin
  frCaja.DesignReport;
end;

procedure TFormCaja.ExportarConsultaExecute(Sender: TObject);
VAR Nombre,Version,Path:String;
VersionN:Integer;
begin
  if DatosCaja.CDSCajaCabESTADO.Value=0 then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'HistorialConsultasCajas') then
        CreateDir(ExtractFilePath(ParamStr(0))+'HistorialConsultasCajas');
      Path:=ExtractFilePath(ParamStr(0))+'HistorialConsultasCajas\';
      if Not(DatosCaja.CDSCajaCab.IsEmpty)  Then
        begin
          Version:='(000)';
          Nombre:= DatosCaja.CDSCajaCabID_CAJA.AsString+Version+'_'+'Caja_'+dbeMuestraCaja.Text+'_Nro_'+DatosCaja.CDSCajaCabNUMEROCAJA.AsString+'.XML';

          if FileExists(path+Nombre) then
            begin
              while FileExists(path+Nombre) do
                begin
                  Version  := Copy(Version,2,3);
                  VersionN := StrToInt(Version);
                  Version  := IntToStr(VersionN+1);
                  Version  := '('+Copy('000',1,3-Length(Version))+Version+')';
                  Nombre:= DatosCaja.CDSCajaCabID_CAJA.AsString+Version+'_'+'Caja_'+dbeMuestraCaja.Text+'_Nro_'+DatosCaja.CDSCajaCabNUMEROCAJA.AsString+'.XML';
                end;
            end;

          DatosCaja.CDSCajaCab.SaveToFile(Path+NOmbre);
          DatosCaja.CDSCajaDetEgresos.SaveToFile(Path+DatosCaja.CDSCajaCabID_CAJA.AsString+Version+'_ING.XM_');
          DatosCaja.CDSCajaDetIngresos.SaveToFile(Path+DatosCaja.CDSCajaCabID_CAJA.AsString+Version+'_EGR.XM_');
        end;
    end;
end;

procedure TFormCaja.ExportarXLSExecute(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='Movimientos';
  SaveDialog1.DefaultExt:='xls';

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
           cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1)
         else
           cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGrid1);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormCaja.pnPieDblClick(Sender: TObject);
begin
  frCaja.DesignReport;
end;

procedure TFormCaja.CalcularValoresExecute(Sender: TObject);
begin
   DatosCaja.CDSValores.close;
   if DatosCaja.CDSCajaCabESTADO.Value=0 Then
     DatosCaja.CDSValores.Params.ParamByName('id').Value:=id_Caja

   else
     DatosCaja.CDSValores.Params.ParamByName('id').Value:=id_Caja;
   DatosCaja.CDSValores.Params.ParamByName('id_fpago').Value:=dbcValores.KeyValue;
   DatosCaja.CDSValores.Open;
end;

procedure TFormCaja.CambiarCajaLoteExecute(Sender: TObject);
var i:integer;
begin
  if Not(Assigned(FormCambioCajaMov)) then
    FormCambioCajaMov:=TFormCambioCajaMov.Create(self);
  FormCambioCajaMov.IDCaja   :=DatosCaja.CDSCajaCabID_CAJA.Value;
  FormCambioCajaMov.IDCtaCaja:=DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
  FormCambioCajaMov.btTransferir.Visible:=False;
  FormCambioCajaMov.ShowModal;
  if FormCambioCajaMov.ModalResult=mrOk then
    begin
      if pcMovimientos.ActivePageIndex=0 then
        begin
          for I := 0 to dbgIngresos.SelectedRows.Count - 1 do
            begin
             {$IF CompilerVersion < 24}
                dbgIngresos.DataSource.DataSet.GotoBookmark(Pointer(dbgIngresos.SelectedRows.Items[i]));
             {$ELSE}
                dbgIngresos.DataSource.DataSet.GotoBookmark((dbgIngresos.SelectedRows.Items[i]));
             {$ENDIF}
              FormCambioCajaMov.ID_Cpbte  :=DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.Value;
              FormCambioCajaMov.ClaseCpbte:=DatosCaja.CDSCajaDetIngresosCLASE_CPBTE.AsString;
              FormCambioCajaMov.TipoCpbte :=DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
              FormCambioCajaMov.TipoOp    :='I';
              FormCambioCajaMov.Transferir;
            end;
        end;
    end;
  Refresh.Execute;
   
end;

procedure TFormCaja.CambiarDeCajaExecute(Sender: TObject);
begin
 // if pcMovimientos.ActivePageIndex=0 then
    begin
      if Not(Assigned(FormCambioCajaMov)) then
        FormCambioCajaMov:=TFormCambioCajaMov.Create(self);
      FormCambioCajaMov.IDCaja   :=DatosCaja.CDSCajaCabID_CAJA.Value;
      FormCambioCajaMov.IDCtaCaja:=DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
      FormCambioCajaMov.btOk.Visible:=False;
      if pcMovimientos.ActivePageIndex=0 then
        begin
          FormCambioCajaMov.ID_Cpbte  :=DatosCaja.CDSCajaDetIngresosID_COMPROBANTE.Value;
          FormCambioCajaMov.ClaseCpbte:=DatosCaja.CDSCajaDetIngresosCLASE_CPBTE.AsString;
          FormCambioCajaMov.TipoCpbte :=DatosCaja.CDSCajaDetIngresosTIPO_CPBTE.AsString;
          FormCambioCajaMov.TipoOp    :='I';
          FormCambioCajaMov.Detalle   :=DatosCaja.CDSCajaDetIngresosNRO_CPBTE.AsString;
        end
      else
        if pcMovimientos.ActivePageIndex=1 then
          begin
            FormCambioCajaMov.ID_Cpbte  :=DatosCaja.CDSCajaDetEgresosID_COMPROBANTE.Value;
            FormCambioCajaMov.ClaseCpbte:=DatosCaja.CDSCajaDetEgresosCLASE_CPBTE.AsString;
            FormCambioCajaMov.TipoCpbte :=DatosCaja.CDSCajaDetEgresosTIPO_CPBTE.AsString;
            FormCambioCajaMov.TipoOp    :='E';
            FormCambioCajaMov.Detalle   :=DatosCaja.CDSCajaDetEgresosNRO_CPBTE.AsString;
        end;
       FormCambioCajaMov.ShowModal;
    end;
  Refresh.Execute;
end;

procedure TFormCaja.CargaLoteTC;
var Ix:Integer;
begin
  if not(Assigned(FormCargaLoteTC)) then
    FormCargaLoteTC:=TFormCargaLoteTC.Create(Self);
  FormCargaLoteTC.ShowModal;
  if ((FormCargaLoteTC.ModalResult=mrOk) and (FormCargaLoteTC.Importe>0)) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spIngresaReempValores.Close;
        DMStoreProcedure.spIngresaReempValores.ParamByName('ID_COMPROBANTE').AsInteger :=FormCargaLoteTC.idcomprobante;
        DMStoreProcedure.spIngresaReempValores.ParamByName('IMPORTE').Value            :=FormCargaLoteTC.Importe;
        DMStoreProcedure.spIngresaReempValores.ParamByName('fecha').Value              :=Date;
        DMStoreProcedure.spIngresaReempValores.ParamByName('usuario').Value            :=DMMain_FD.UsuarioActivo;
        DMStoreProcedure.spIngresaReempValores.ExecProc;
        DMStoreProcedure.spIngresaReempValores.Close;
        for Ix := 1 to 30 do
          begin
            if FormCargaLoteTC.lstMov[Ix].Importe>0 then
              begin
                DMStoreProcedure.spIngresarMovTC.Close;
                DMStoreProcedure.spIngresarMovTC.ParamByName('ID_CPBTE').Value         := DMStoreProcedure.spIngresaReempValores.ParamByName('ID_REEMPLAZO').Value;
                DMStoreProcedure.spIngresarMovTC.ParamByName('TIPO_COMPROB').Value     := DMStoreProcedure.spIngresaReempValores.ParamByName('TIPO_CPBTE').Value;
                DMStoreProcedure.spIngresarMovTC.ParamByName('CLASE_COMPROB').Value    := DMStoreProcedure.spIngresaReempValores.ParamByName('CLASE_CPBTE').Value;
                DMStoreProcedure.spIngresarMovTC.ParamByName('NROCPBTE').Value         := DMStoreProcedure.spIngresaReempValores.ParamByName('NROCPBTE').Value;
                DMStoreProcedure.spIngresarMovTC.ParamByName('ID_CUENTA_CAJA').Value   := DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
                DMStoreProcedure.spIngresarMovTC.ParamByName('FECHA_MOVIMIENTO').Value := Date;
                DMStoreProcedure.spIngresarMovTC.ParamByName('DEBE').Value             := FormCargaLoteTC.lstMov[Ix].Importe;
                DMStoreProcedure.spIngresarMovTC.ParamByName('HABER').Value            := 0;
                DMStoreProcedure.spIngresarMovTC.ParamByName('TIPOOPERACION').Value    := 'I';
                DMStoreProcedure.spIngresarMovTC.ParamByName('IDTC').Value             := FormCargaLoteTC.lstMov[Ix].id;
                DMStoreProcedure.spIngresarMovTC.ParamByName('TITULAR').Value          := '';
                DMStoreProcedure.spIngresarMovTC.ParamByName('CUOTAS').Value           := 1;
                DMStoreProcedure.spIngresarMovTC.ParamByName('DOCUMENTO').Value        := '';
                DMStoreProcedure.spIngresarMovTC.ParamByName('UNIDADES').Value         := FormCargaLoteTC.lstMov[Ix].Importe;

                DMStoreProcedure.spIngresarMovTC.ParamByName('COTIZACION').Value       := 1;
                DMStoreProcedure.spIngresarMovTC.ParamByName('MONEDA').Value           := 1;
                DMStoreProcedure.spIngresarMovTC.ParamByName('UNIDADESNETO').Value     := FormCargaLoteTC.lstMov[Ix].Importe;
                DMStoreProcedure.spIngresarMovTC.ParamByName('IMPORTENETO').Value      := FormCargaLoteTC.lstMov[Ix].Importe;
                DMStoreProcedure.spIngresarMovTC.ParamByName('COEFICIENTE').Value      := 1;
                DMStoreProcedure.spIngresarMovTC.ParamByName('VALORCUOTA').Value       := FormCargaLoteTC.lstMov[Ix].Importe;
                DMStoreProcedure.spIngresarMovTC.ParamByName('IMPORTERECARGO').Value   := 0;
                DMStoreProcedure.spIngresarMovTC.ParamByName('NROCUPON').Value          := FormCargaLoteTC.lstMov[Ix].NroCupon;
                DMStoreProcedure.spIngresarMovTC.ParamByName('LOTE').Value             := FormCargaLoteTC.lstMov[Ix].Lote;
                DMStoreProcedure.spIngresarMovTC.ParamByName('TERMINAL').Value         := FormCargaLoteTC.lstMov[Ix].Terminal;

                DMStoreProcedure.spIngresarMovTC.ExecProc;
              end;
          end;
        DMStoreProcedure.spIngresarMovTC.Close;

        DMStoreProcedure.spEgresoMovEfectivo.Close;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('id_cpbte').Value         := DMStoreProcedure.spIngresaReempValores.ParamByName('ID_REEMPLAZO').Value;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('Tipo_Comprob').Value     := DMStoreProcedure.spIngresaReempValores.ParamByName('TIPO_CPBTE').AsString;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('Clase_Comprob').Value    := DMStoreProcedure.spIngresaReempValores.ParamByName('CLASE_CPBTE').AsString;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('NroCpbte').Value         := DMStoreProcedure.spIngresaReempValores.ParamByName('NROCPBTE').AsString;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('id_cuenta_Caja').Value   := DatosCaja.CDSCajaCabID_CUENTA_CAJA.Value;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('fecha_movimiento').Value := Date;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('debe').Value             := 0;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('haber').Value            := FormCargaLoteTC.Importe;
        DMStoreProcedure.spEgresoMovEfectivo.ParamByName('tipooperacion').Value    := 'E';
        DMStoreProcedure.spEgresoMovEfectivo.ExecProc;
        DMStoreProcedure.spEgresoMovEfectivo.Close;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.RollBack;
        ShowMessage('No se Ingreasr la TC..');
      end;
      Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);
      if Assigned(FormCargaLoteTC) then
        FreeAndNil(FormCargaLoteTC);
    end;

end;

procedure TFormCaja.btSalirClick(Sender: TObject);
begin
  DatosCaja.CDSCajas.Close;
  DatosCaja.QTxPendientes.Close;
  Close;
end;

procedure TFormCaja.RefreshExecute(Sender: TObject);
begin
  pcCaja.ActivePageIndex :=0;
  Recuperar(DatosCaja.CDSCajaCabID_CAJA.asInteger);
  DatosCaja.QTxPendientes.Close;
  DatosCaja.QTxPendientes.Open;
  if DatosCaja.QTxPendientes.IsEmpty then
    VerPendientes.Enabled:=False
  else
    VerPendientes.Enabled:=True;
end;

END.
