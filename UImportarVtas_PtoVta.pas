unit UImportarVtas_PtoVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvDBControls, JvExControls, JvGradient, Buttons,
  Provider, DBClient, JvBaseEdits, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExComCtrls, JvComCtrls, JvDBLookup, Mask, JvExMask, JvToolEdit,IniFiles,Math,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, Data.DB,
  Vcl.StdCtrls, Vcl.ComCtrls, JvLabel, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, Vcl.ActnList,
  Vcl.ToolWin, Vcl.ExtCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvExExtCtrls, JvExtComponent, JvPanel,
  JvExStdCtrls, JvCombobox, Vcl.DBCtrls, UBuscadorClientes, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, cxCurrencyEdit,
  AdvPanel, AdvSmoothExpanderGroup, AdvSmoothPanel, AdvSmoothExpanderPanel,
  AdvMetroPanel, ToolPanels, AdvSmoothTabPager,StrUtils,Librerias,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdCmdTCPClient,
  IdRawBase, IdRawClient, IdIcmpClient, dxSkinWXI;

type
  TFormImportarVtas_PtoVtaMorphi = class(TFormABMBase)
    Label3: TLabel;
    RxLabel1: TJvLabel;
    DSComprobante: TDataSource;
    DSCajas: TDataSource;
    DSDeposito: TDataSource;
    DSSucursal: TDataSource;
    LeerArchivosXML: TAction;
    edFecha: TJvDateEdit;
    QCajas_: TFDQuery;
    QSucursal_: TFDQuery;
    QComprobantes_: TFDQuery;
    QDepositos_: TFDQuery;
    pcOpciones: TPageControl;
    tbImportacionDataSnap: TTabSheet;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    spConectar: TSpeedButton;
    imConectado: TImage;
    imDesconectado: TImage;
    lbEstadoConeccion: TLabel;
    cbPathBases: TJvComboBox;
    pnHost: TJvPanel;
    Label1: TLabel;
    SpeedButton4: TSpeedButton;
    edHost: TEdit;
    dbcSucursalMorphi: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    Panel3: TPanel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    JvLabel1: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    dbcDeposito: TJvDBLookupCombo;
    dbcCtas: TJvDBLookupCombo;
    btFacturar: TBitBtn;
    Label2: TLabel;
    ceCodigoCero: TJvComboEdit;
    Label4: TLabel;
    ceCodigo: TJvComboEdit;
    Label5: TLabel;
    ceCodigo105: TJvComboEdit;
    edDetalleCero: TEdit;
    edDetalle: TEdit;
    edDetalle2: TEdit;
    BuscarArticulo: TAction;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    Label6: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    Facturar_2: TAction;
    QTablaRelTC_: TFDQuery;
    DSTablaReTC: TDataSource;
    BuscaTCredito: TAction;
    ComBuscadorTCredito: TComBuscador;
    QBuscaTCredito: TFDQuery;
    QTCredito: TFDQuery;
    QTablaRelTC_ID_TC: TIntegerField;
    QTablaRelTC_MUESTRATARJETA: TStringField;
    QTablaRelTC_ID_TC_MORPHI: TStringField;
    QTCreditoID_TC: TIntegerField;
    QTCreditoDESCRIPCION: TStringField;
    QTCreditoMONEDA: TIntegerField;
    QTCreditoCODIGOARTICULO: TStringField;
    QTCreditoID_CUENTA_BANCO: TIntegerField;
    QTCreditoDIAS_ACREDITACION: TSmallintField;
    QTCreditoCUIT: TStringField;
    QTCreditoRAZONSOCIAL: TStringField;
    QBuscaTCreditoID_TC: TIntegerField;
    QBuscaTCreditoDESCRIPCION: TStringField;
    QRelacionTipoPago_: TFDQuery;
    DSRelacionTPago: TDataSource;
    QBuscaFormaPago_: TFDQuery;
    QFormaPago_: TFDQuery;
    ComBuscadorFPago: TComBuscador;
    BuscaFormaPago: TAction;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    pnCabecera: TPanel;
    chNotasCredito: TCheckBox;
    CDSTablaRelTC: TClientDataSet;
    DSPTablaRelTC: TDataSetProvider;
    CDSTablaRelTCID_TC: TIntegerField;
    CDSTablaRelTCMUESTRATARJETA: TStringField;
    CDSTablaRelTCID_TC_MORPHI: TStringField;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSCajas: TClientDataSet;
    DSPCajas: TDataSetProvider;
    CDSCajasID_CAJA: TIntegerField;
    CDSCajasNUMEROCAJA: TIntegerField;
    CDSCajasFECHA_INCIO: TSQLTimeStampField;
    CDSCajasFECHA_CIERRE: TSQLTimeStampField;
    CDSCajasID_CUENTA_CAJA: TIntegerField;
    CDSCajasNOMBRE: TStringField;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSRelacionTipoPago: TClientDataSet;
    DSPRelacionTipoPago: TDataSetProvider;
    CDSRelacionTipoPagoCOD_FPAGO_M: TStringField;
    CDSBuscaFormaPago: TClientDataSet;
    DSPBuscaFormaPago: TDataSetProvider;
    CDSBuscaFormaPagoID_FPAGO: TIntegerField;
    CDSBuscaFormaPagoDESCRIPCION: TStringField;
    CDSBuscaFormaPagoID_TPAGO: TIntegerField;
    CDSFormaPago: TClientDataSet;
    DSPFormaPago: TDataSetProvider;
    CDSFormaPagoID_TPAGO: TIntegerField;
    ConsultaREST: TAction;
    edApikey: TEdit;
    JvLabel5: TJvLabel;
    QRelacionGastos: TFDQuery;
    QRelacionGastosCOD_GESTION: TStringField;
    QRelacionGastosMUESTRAGASTOS: TStringField;
    QRelacionGastosCOD_MORPHI: TStringField;
    DSPRelacionGastos: TDataSetProvider;
    CDSRelacionGastos: TClientDataSet;
    DSRelacionGastos: TDataSource;
    CDSRelacionGastosCOD_GESTION: TStringField;
    CDSRelacionGastosMUESTRAGASTOS: TStringField;
    CDSRelacionGastosCOD_MORPHI: TStringField;
    AdvSmoothTabPager1: TAdvSmoothTabPager;
    tabRelacionTC: TAdvSmoothTabPage;
    tabRelacionFPago: TAdvSmoothTabPage;
    tabRelacionGastos: TAdvSmoothTabPage;
    dbgTipoPago: TDBGrid;
    dbgRelacionGastos: TDBGrid;
    dbgFPago: TDBGrid;
    pnCaja: TPanel;
    Splitter2: TSplitter;
    Splitter3: TSplitter;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1INDICE: TcxGridDBColumn;
    cxGrid2DBTableView1CTE_CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_APERTURA: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_CIERRE: TcxGridDBColumn;
    cxGrid2DBTableView1INFORME: TcxGridDBColumn;
    cxGrid2DBTableView1PREFIJO: TcxGridDBColumn;
    cxGrid2DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid2DBTableView1FAC_MONTO: TcxGridDBColumn;
    cxGrid2DBTableView1FAC_IVA: TcxGridDBColumn;
    cxGrid2DBTableView1FAC_II: TcxGridDBColumn;
    cxGrid2DBTableView1FAC_PERCEP: TcxGridDBColumn;
    cxGrid2DBTableView1NC_MONTO: TcxGridDBColumn;
    cxGrid2DBTableView1NC_IVA: TcxGridDBColumn;
    cxGrid2DBTableView1NC_II: TcxGridDBColumn;
    cxGrid2DBTableView1NC_PERCEP: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_NETO_F: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_EGRESOS: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_INGRESOS: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL_CAJA: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    Panel2: TPanel;
    Splitter4: TSplitter;
    Splitter5: TSplitter;
    Panel4: TPanel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1COD_PAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESC_FORMAPAGO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    Panel5: TPanel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTIPO: TcxGridDBColumn;
    cxGridDBCTE_CODIGO: TcxGridDBColumn;
    cxGridDBRUBRO_CAJA: TcxGridDBColumn;
    cxGridDBRUBRO: TcxGridDBColumn;
    cxGridDBDESCRIPCION: TcxGridDBColumn;
    cxGridDBIMPORTE: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    Panel6: TPanel;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    dbgCtasGastos: TDBGrid;
    BuscarCtaGasto: TAction;
    IngresarGastos: TAction;
    btEgresos: TBitBtn;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    CDSRelacionTipoPagoID_FPAGO: TIntegerField;
    CDSFormaPagoID_FPAGO: TIntegerField;
    CDSFormaPagoDESCRIPCION: TStringField;
    CDSRelacionTipoPagoMUESTRAFORMAPAGO: TStringField;
    QRelacionTipoPago_COD_FPAGO_M: TStringField;
    QRelacionTipoPago_ID_FPAGO: TIntegerField;
    QRelacionTipoPago_MUESTRAFORMAPAGO: TStringField;
    QRelacionTipoPago_ID_TPAGO: TIntegerField;
    CDSRelacionTipoPagoID_TPAGO: TIntegerField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    chDiaCompeto: TCheckBox;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    edDiferenciaSaldo: TEdit;
    Label7: TLabel;
    Label8: TLabel;
    ceCtaGasto: TJvComboEdit;
    edCtaGasto: TEdit;
    AplicarDifCaja: TAction;
    spAplicaDif: TSpeedButton;
    chAplicarDireferencia: TCheckBox;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    lbUltimaA: TLabel;
    lbUltimaB: TLabel;
    lbUltimaNC_A: TLabel;
    lbUltimaNC_B: TLabel;
    advTPParametros: TAdvToolPanelTab;
    avdpParametros: TAdvToolPanel;
    Label9: TLabel;
    edFaltante: TEdit;
    Conectar: TAction;
    IdIcmpClient: TIdIcmpClient;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure lbArchivosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbcSucursalMorphiClick(Sender: TObject);
    procedure edFechaChange(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure dbcDepositoEnter(Sender: TObject);
    procedure dbcComprobanteOldEnter(Sender: TObject);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure Facturar_2Execute(Sender: TObject);
    procedure BuscaTCreditoExecute(Sender: TObject);
    procedure dbgFPagoColEnter(Sender: TObject);
    procedure dbgFPagoKeyPress(Sender: TObject; var Key: Char);
    procedure BuscaFormaPagoExecute(Sender: TObject);
    procedure dbgFPagoTitleClick(Column: TColumn);
    procedure CDSTablaRelTCAfterDelete(DataSet: TDataSet);
    procedure CDSTablaRelTCAfterPost(DataSet: TDataSet);
    procedure CDSTablaRelTCID_TCSetText(Sender: TField; const Text: string);
    procedure CDSRelacionTipoPagoAfterDelete(DataSet: TDataSet);
    procedure CDSRelacionTipoPagoAfterPost(DataSet: TDataSet);
    procedure ConsultaRESTExecute(Sender: TObject);
    procedure BuscarCtaGastoExecute(Sender: TObject);
    procedure dbgRelacionGastosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRelacionGastosColEnter(Sender: TObject);
    procedure CDSRelacionGastosAfterPost(DataSet: TDataSet);
    procedure CDSRelacionGastosAfterDelete(DataSet: TDataSet);
    procedure IngresarGastosExecute(Sender: TObject);
    procedure CDSRelacionTipoPagoID_FPAGOSetText(Sender: TField;
      const Text: string);
    procedure dbgTipoPagoKeyPress(Sender: TObject; var Key: Char);
    procedure chDiaCompetoClick(Sender: TObject);
    procedure AplicarDifCajaExecute(Sender: TObject);
    procedure ConectarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IdIcmpClientReply(ASender: TComponent;
      const AReplyStatus: TReplyStatus);
  private
    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante       :Integer;
    IDComprobante             :Integer;
    Deposito,CtaCaja          :Integer;
    ArchivoIni                :TIniFile;
    sDirectorio,CtaCajaNombre :String;
    HayInternet:Boolean;
    procedure AgregarCabecera;
    procedure AgregaDetalle;
    procedure VerificarCtasGastos;
  end;

var
  FormImportarVtas_PtoVtaMorphi: TFormImportarVtas_PtoVtaMorphi;

implementation

uses UBuscaDirectorio, DMVentaCtdo, UFacturaCtdo_2, UDMAin_FD,DMPtoVtaMorphi,
     UBuscadorArticulos, UBuscadorTipoCpbte, UBuscadorDepositos, UEleccionCaja,
     UBuscadorCuentaGastos;

{$R *.dfm}


procedure TFormImportarVtas_PtoVtaMorphi.AgregarCabecera;
var En:word;
FechaStr:String;
begin
  en:=13;
  with DatosVentasCtdo DO
  begin
    FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
    FormCpbteCtdo_2.DepositoPorDefecto := Deposito;
  //  FormCpbteCtdo_2.CajaPorDefecto     := CtaCaja;
  //  FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja.Text       := IntToStr(CtaCaja);
  //  FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja,En,[]);

    FechaStr:=AnsiReplaceStr( DatosImportaPtoVtaMorphi.MTCajasFECHA_APERTURA.Value,'-','');
    FechaStr:=copy(FechaStr,7,2)+'/'+copy(FechaStr,5,2)+'/'+copy(FechaStr,1,4);
    CDSVentaCabCAJA_POR_DEFECTO.Value  := CtaCaja;
    CDSVentaCabFECHAVTA.AsDateTime     := StrToDate(FechaStr);//  DatosImportaPtoVtaMorphi.MTCajasFECHA_APERTURA.AsDateTime;
    CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr( SucursalComprobante));
    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,ceCliente.Text);
    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(idComprobante));
    CDSVentaCabCPTE_MANUAL.Value   :='N';
    CDSVentaCabSUCFACSetText(CDSVentaCabSUCFAC, DatosImportaPtoVtaMorphi.MTCajasPREFIJO.AsString);
    CDSVentaCabNUMEROFACSetText(CDSVentaCabNUMEROFAC,DatosImportaPtoVtaMorphi.MTCajasNUMERO.AsString);
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));
    CDSVentaCabANULADO.Value       :='N';
    CDSVentaCabDSTO.AsFloat        := 0;
    CDSVentaCabIMPRESO.Value       :='N';
    CDSVentaCabREDUCIDA.Value      :='N';

    CDSVentaCabLISTAPRECIO.Clear;
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_FD.UsuarioActivo;
    FormCpbteCtdo_2.DiscriminaIva      :='S';
  end;

end;

procedure TFormImportarVtas_PtoVtaMorphi.AplicarDifCajaExecute(Sender: TObject);
var FechaStr:String;
Valor:Extended;
begin
  inherited;
    if  trim((ReplaceStr(edFaltante.Text,',','')))='' then
      raise Exception.Create('No Hay Valor Para Aplicar...');

   FechaStr:=AnsiReplaceStr( DatosImportaPtoVtaMorphi.MTCajasFECHA_APERTURA.Value,'-','');
   FechaStr:=copy(FechaStr,7,2)+'/'+copy(FechaStr,5,2)+'/'+copy(FechaStr,1,4);
   if Trim(ceCtaGasto.Text)<>'' then
     begin
       Valor := StrToFloat(ReplaceStr(edFaltante.Text,',',''));
       if  Valor<0 then
         begin
           if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
           FormBuscadorTipoCpbte.TipoCpbte1    := 'EC';
           FormBuscadorTipoCpbte.TipoCpbte2    := '';
           FormBuscadorTipoCpbte.TipoCpbte3    := '';
           FormBuscadorTipoCpbte.CV            := 'C';
           FormBuscadorTipoCpbte.Sucursal      := dbcSucursal.keyValue;
           FormBuscadorTipoCpbte.DiscriminaIVA := 'N';
           FormBuscadorTipoCpbte.ShowModal;
           if FormBuscadorTipoCpbte.ModalResult=mrOk then
             begin
               SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
               IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;

               if Not(Assigned(FormEleccionCaja)) Then
                 FormEleccionCaja:=TFormEleccionCaja.Create(Self);
               FormEleccionCaja.Caja :=dbcCtas.KeyValue;
               FormEleccionCaja.ShowModal;
               if FormEleccionCaja.ModalResult=mrOk then
                 begin
                   if FormEleccionCaja.Caja>-1 Then
                     begin
                       CtaCaja       := FormEleccionCaja.Caja;
                       CtaCajaNombre := FormEleccionCaja.CajaNombre;
                     end
                   else
                     begin
                       CtaCaja       := dbcCtas.KeyValue;
                       CtaCajaNombre := dbcCtas.Text;
                     end;

                   DMMain_FD.fdcGestion.StartTransaction;
                   try
                     with DatosImportaPtoVtaMorphi do
                       begin
                         if Abs( StrToFloat(MTEgresosIMPORTE.Value))>0 then
                           begin
                             spAgregarGasto.Close;
                             spAgregarGasto.ParamByName('ID_COMPROBANTE').Value   := IDComprobante;
                             spAgregarGasto.ParamByName('FECHA').Value            := StrToDate(FechaStr);
                             spAgregarGasto.ParamByName('IMPORTE').AsFloat        := Abs(Valor);
                             spAgregarGasto.ParamByName('USUARIO').Value          := DMMain_FD.UsuarioActivo;
                             spAgregarGasto.ParamByName('CODIGOGASTO').Value      := ceCtaGasto.Text;
                             spAgregarGasto.ParamByName('ID_CUENTA_CAJA').Value   := CtaCaja;
                             spAgregarGasto.ExecProc;
                           end;
                         DMMain_FD.fdcGestion.Commit;
                       end;
                   except
                     DMMain_FD.fdcGestion.Rollback;
                   end;
                end;
            end;
         end
       else
         if  Valor>0 then
         begin
            if Not(Assigned(FormBuscadorTipoCpbte)) then
             FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
           FormBuscadorTipoCpbte.TipoCpbte1    := 'IC';
           FormBuscadorTipoCpbte.TipoCpbte2    := '';
           FormBuscadorTipoCpbte.TipoCpbte3    := '';
           FormBuscadorTipoCpbte.CV            := 'V';
           FormBuscadorTipoCpbte.Sucursal      := dbcSucursal.keyValue;
           FormBuscadorTipoCpbte.DiscriminaIVA := 'N';
           FormBuscadorTipoCpbte.ShowModal;
           if FormBuscadorTipoCpbte.ModalResult=mrOk then
             begin
               SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
               IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;

               if Not(Assigned(FormEleccionCaja)) Then
                 FormEleccionCaja:=TFormEleccionCaja.Create(Self);
               FormEleccionCaja.Caja :=dbcCtas.KeyValue;
               FormEleccionCaja.ShowModal;
               if FormEleccionCaja.ModalResult=mrOk then
                 begin
                   if FormEleccionCaja.Caja>-1 Then
                     begin
                       CtaCaja       := FormEleccionCaja.Caja;
                       CtaCajaNombre := FormEleccionCaja.CajaNombre;
                     end
                   else
                     begin
                       CtaCaja       := dbcCtas.KeyValue;
                       CtaCajaNombre := dbcCtas.Text;
                     end;

                   DMMain_FD.fdcGestion.StartTransaction;
                   try
                     with DatosImportaPtoVtaMorphi do
                       begin
                         if Abs( Valor)>0 then
                           begin
                             spAgregarGasto.Close;
                             spAgregarGasto.ParamByName('ID_COMPROBANTE').Value   := IDComprobante;
                             spAgregarGasto.ParamByName('FECHA').Value            := StrToDate(FechaStr);
                             spAgregarGasto.ParamByName('IMPORTE').AsFloat        := Abs(Valor);
                             spAgregarGasto.ParamByName('USUARIO').Value          := DMMain_FD.UsuarioActivo;
                             spAgregarGasto.ParamByName('CODIGOGASTO').Value      := Trim(ceCtaGasto.Text);
                             spAgregarGasto.ParamByName('ID_CUENTA_CAJA').Value   := CtaCaja;
                             spAgregarGasto.ExecProc;
                           end;
                         DMMain_FD.fdcGestion.Commit;
                       end;
                   except
                     DMMain_FD.fdcGestion.Rollback;
                   end;
                end;
            end;
         end;
     end
   else
     ShowMessage('Falta Codigo de Cta. Diferencias...');
end;

procedure TFormImportarVtas_PtoVtaMorphi.BorrarExecute(Sender: TObject);
Var ArchivoXML,ArchivoNEW:String;
begin
 // inherited;
  ArchivoNew:=ArchivoXML;
  Delete(ArchivoNEW,length(ArchivoXML),1);
  ArchivoNEW:=ArchivoNEW+'_';
  RenameFile(ArchivoXML,ArchivoNEW);
end;

procedure TFormImportarVtas_PtoVtaMorphi.BuscaTCreditoExecute(Sender: TObject);
begin
  inherited;
  QBuscaTCredito.Close;
  QBuscaTCredito.Open;
  ComBuscadorTCredito.Execute;
  if ComBuscadorTCredito.rOk Then
      BEGIN
        IF CDSTablaRelTC.State = dsBrowse THEN
          CDSTablaRelTC.Edit;
        CDSTablaRelTCID_TCSetText(CDSTablaRelTCID_TC, IntToStr(ComBuscadorTCredito.Id));
       END;
   QBuscaTCredito.Close;
end;

procedure TFormImportarVtas_PtoVtaMorphi.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
 IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       QStock.Close;
       QStock.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       QStock.Open;
       if not(QStock.IsEmpty) then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:=QStockDETALLE_STK.AsString;
               ceCodigo.Text :=QStockCODIGO_STK.AsString;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :=QStockDETALLE_STK.AsString;
                 ceCodigo105.Text :=QStockCODIGO_STK.AsString;
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :=QStockDETALLE_STK.AsString;
                   ceCodigoCero.Text  :=QStockCODIGO_STK.AsString;
                 end
         end
       else
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:='';
               ceCodigo.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :='';
                 ceCodigo105.Text :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :='';
                   ceCodigoCero.Text  :='';
                 end
         end;
       QStock.Close;

    end;

end;

procedure TFormImportarVtas_PtoVtaMorphi.BuscarCtaGastoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCuentaGastos)) Then
    FormBuscadorCuentaGastos:=TFormBuscadorCuentaGastos.Create(self);
  FormBuscadorCuentaGastos.ShowModal;
  if FormBuscadorCuentaGastos.ModalResult=mrOk then
    begin
      if (Sender is TJvComboEdit) and ((Sender as TJvComboEdit).Name='ceCtaGasto') then
        begin
          ceCtaGasto.Text := FormBuscadorCuentaGastos.Cuenta;
          edCtaGasto.Text := FormBuscadorCuentaGastos.DetalleCuenta;
        end
      else
        begin
          if CDSRelacionGastos.State=dsBrowse then
            CDSRelacionGastos.Edit;
          CDSRelacionGastosCOD_GESTION.AsString   := FormBuscadorCuentaGastos.Cuenta;
          CDSRelacionGastosMUESTRAGASTOS.AsString := FormBuscadorCuentaGastos.DetalleCuenta;
        end;
    end;
  FreeAndNil(FormBuscadorCuentaGastos);
end;

procedure TFormImportarVtas_PtoVtaMorphi.BuscaFormaPagoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaFormaPago.Close;
  CDSBuscaFormaPago.Open;
  ComBuscadorFPago.Execute;
  if comBuscadorFPago.rOk Then
      BEGIN
        IF CDSRelacionTipoPago.State = dsBrowse THEN
          CDSRelacionTipoPago.Edit;
        CDSRelacionTipoPagoID_FPAGOSetText(CDSRelacionTipoPagoID_FPAGO,IntToStr(comBuscadorFPago.Id));
       END;
   CDSBuscaFormaPago.Close;
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSRelacionGastosAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacionGastos.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSRelacionGastosAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacionGastos.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSRelacionTipoPagoAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
 CDSRelacionTipoPago.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSRelacionTipoPagoAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSRelacionTipoPago.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSRelacionTipoPagoID_FPAGOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := Text;
  CDSFormaPago.Close;
  CDSFormaPago.Params.ParamByName('id').Value:= StrToInt(Trim(Text));
  CDSFormaPago.Open;
  if Not(CDSFormaPago.IsEmpty) then
    begin
      CDSRelacionTipoPagoMUESTRAFORMAPAGO.Value:= CDSFormaPagoDESCRIPCION.Value;
      CDSRelacionTipoPagoID_TPAGO.Value        := CDSFormaPagoID_TPAGO.Value;
    end
  else
    begin
      CDSRelacionTipoPagoMUESTRAFORMAPAGO.Value:='';
      Sender.AsString:='';
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSTablaRelTCAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  CDSTablaRelTC.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSTablaRelTCAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  CDSTablaRelTC.ApplyUpdates(0);
end;

procedure TFormImportarVtas_PtoVtaMorphi.CDSTablaRelTCID_TCSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString := Text;
  QTCredito.Close;
  QTCredito.ParamByName('id').Value:= StrToInt(Trim(Text));
  QTCredito.Open;
  if Not(QTCredito.IsEmpty) then
    CDSTablaRelTCMUESTRATARJETA.Value:=QTCreditoDESCRIPCION.Value
  else
    begin
      CDSTablaRelTCMUESTRATARJETA.Value:='';
      Sender.AsString:='';
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       QClientes.Close;
       QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       QClientes.Open;
       IF NOT (QClientes.eof) THEN
         BEGIN
           edNombreCliente.Text := QClientesNOMBRE.AsString;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END
       else
         BEGIN
           edNombreCliente.Clear;
           ceCliente.Clear;
         END

     END;
end;

procedure TFormImportarVtas_PtoVtaMorphi.chDiaCompetoClick(Sender: TObject);
begin
  inherited;
  DatosImportaPtoVtaMorphi.DiaCompleto:='False';
  if chDiaCompeto.Checked then
    DatosImportaPtoVtaMorphi.DiaCompleto:='True'
  else
    DatosImportaPtoVtaMorphi.DiaCompleto:='False';
end;

procedure TFormImportarVtas_PtoVtaMorphi.ConectarExecute(Sender: TObject);
var Host,Puerto:String;
begin
  //IdIcmpClient.Ping;
  HayInternet:=True;
  if HayInternet then
  begin
    DatosImportaPtoVtaMorphi.RESTClientSucursal.BaseURL := 'http://'+cbPathBases.Text+'/morphi/api1/sistema/sucursales';
    DatosImportaPtoVtaMorphi.RESTRequestSucursal.Params.ParameterByName('apikey').Value  :=edApikey.Text;// '682A596A206CACED5937';//TokenWispro;//  'ac268ab1-6924-4b53-92b1-7ec37dd27fbb';
    DatosImportaPtoVtaMorphi.RESTRequestSucursal.Execute;
    DatosImportaPtoVtaMorphi.MTSucursal.First;
    DatosImportaPtoVtaMorphi.DSSucursal.DataSet   := DatosImportaPtoVtaMorphi.MTSucursal;

  if DatosImportaPtoVtaMorphi.RESTRequestSucursal.Response.StatusCode=200 then
    begin
      lbEstadoConeccion.Caption     := 'Estado Conectado..';
      lbEstadoConeccion.Font.Color  := clGreen;
      imDesconectado.Visible        := False;
      imConectado.Visible           := True;
    end
  else
    begin
      lbEstadoConeccion.Caption     := 'Desconectado del Host';
      lbEstadoConeccion.Font.Color  := clRed;
      imDesconectado.Visible        := True;
      imConectado.Visible           := False;

    end;
  end
  else SHowMessage('No hay Coneccioin con el Servicio o no Hay Internet....');
end;

procedure TFormImportarVtas_PtoVtaMorphi.ConsultaRESTExecute(Sender: TObject);
Var StrFecha:String;
begin
  inherited;
  DatosImportaPtoVtaMorphi.MTCajas.AfterScroll:=nil;
  if dbcSucursalMorphi.KeyValue>-1 then
    begin
      with DatosImportaPtoVtaMorphi do
        begin
          StrFecha                 := FormatDateTime('mm/dd/yyyy', edFecha.Date);
          DSCajas.DataSet          := MTCajas;
          RESTClientCajas.BaseURL  := 'http://'+cbPathBases.Text+'/morphi/api1/sistema/listadocajas/';
          RESTRequestCajas.Params.ParameterByName('apikey').Value    := edApikey.Text;//'682A596A206CACED5937';
          RESTRequestCajas.Params.ParameterByName('sucursal').Value  := dbcSucursalMorphi.LookupSource.DataSet.FieldByName('COD_SUCURSAL').Value;//  MTSucursalCOD_SUCURSAL.AsString;// '1';
          RESTRequestCajas.Params.ParameterByName('desde').Value     := StrFecha;// '01/07/2021';// QuotedStr(DateToStr(edFecha.Date));// edFecha.Text;
          try
            RESTRequestCajas.Execute;
            sbEstado.Panels[1].Text := IntToStr(RESTRequestCajas.Response.StatusCode);
           except
             ShowMessage('Error de Consulta Cajas');
          end;

          if RESTRequestCajas.Response.StatusCode=200 then
            begin
              DSCtasGastos.DataSet          := MTCtasGastos;
              RESTClientCtasGastos.BaseURL  := 'http://'+cbPathBases.Text+'/morphi/api1/sistema/rubroscaja/';
              RESTRequestCtasGastos.Params.ParameterByName('apikey').Value    := edApikey.Text;//'682A596A206CACED5937';
              try
                 RESTRequestCtasGastos.Execute;
               except
                 ShowMessage('Error de Consulta Ctas de Gasto');
              end;
              VerificarCtasGastos;
            end;
        end;
    end;
  DatosImportaPtoVtaMorphi.MTCajas.IndexFieldNames := 'NUMERO'+':DN';
  DatosImportaPtoVtaMorphi.MTCajas.AfterScroll     := DatosImportaPtoVtaMorphi.MTCajasAfterScroll;

  if (DatosImportaPtoVtaMorphi.MTCajas.Active) and (DatosImportaPtoVtaMorphi.MTCajas.IsEmpty=False) Then
    begin
      DatosImportaPtoVtaMorphi.MTCajas.Next;
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  Facturar_2.Execute;
end;


procedure TFormImportarVtas_PtoVtaMorphi.AgregaDetalle;
Var UnitarioTotal,Precio:Extended;
begin
  with DatosVentasCtdo DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,ceCodigo.Text);
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(DatosImportaPtoVtaMorphi.MTCajasFAC_MONTO.AsFloat/1.21));
      // Aca se integra la NC al detalle....
      if not(chNotasCredito.Checked) then
        if DatosImportaPtoVtaMorphi.MTCajasNC_MONTO.ASFloat>0 then
          begin
            CDSVentaDet.Append;
            CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,ceCodigo.Text);
            CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
            CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
            CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
            CDSVentaDetTIPOCPBTE.Value        :=CDSVentaCabTIPOCPBTE.Value;
            CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr((DatosImportaPtoVtaMorphi.MTCajasNC_MONTO.AsFloat/1.21) * -1) );
          end;
      if CDSVentaDet.State<>dsBrowse then
        CDSVentaDet.Post;
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  cbPathBases.Items.Add(edHost.Text);
  pnHost.Visible:=False;
end;


procedure TFormImportarVtas_PtoVtaMorphi.VerificarCtasGastos;
begin
  if Not( DatosImportaPtoVtaMorphi.MTCtasGastos.IsEmpty ) then
    begin
      DatosImportaPtoVtaMorphi.MTCtasGastos.First;
      while not(DatosImportaPtoVtaMorphi.MTCtasGastos.eof) do
        begin
          if Not(CDSRelacionGastos.Locate('COD_MORPHI',DatosImportaPtoVtaMorphi.MTCtasGastosCODIGO.AsString,[])) Then
            begin
              CDSRelacionGastos.Append;
              CDSRelacionGastosCOD_GESTION.Value:='00000';
              CDSRelacionGastosMUESTRAGASTOS.Value:='';
              CDSRelacionGastosCOD_MORPHI.Value:=DatosImportaPtoVtaMorphi.MTCtasGastosCODIGO.Value;
              CDSRelacionGastos.Post;
            end;
          DatosImportaPtoVtaMorphi.MTCtasGastos.Next;
        end;
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbcComprobanteOldEnter(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbcDepositoEnter(Sender: TObject);
begin
  inherited;
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSDepositos.Open;

end;

procedure TFormImportarVtas_PtoVtaMorphi.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value:= dbcSucursal.KeyValue;
  CDSDepositos.Open;

end;


procedure TFormImportarVtas_PtoVtaMorphi.Facturar_2Execute(Sender: TObject);
var Cont,Renglones,TipoMov:Integer;
   En:word;
   DiferenciaCaja:Extended;
begin
  inherited;
  en:=13;
  if Not(Assigned(FormBuscadorTipoCpbte)) then
    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
  FormBuscadorTipoCpbte.TipoCpbte1   :='FO';
  FormBuscadorTipoCpbte.TipoCpbte2   :='';
  FormBuscadorTipoCpbte.TipoCpbte3   :='';
  FormBuscadorTipoCpbte.CV           :='V';
  FormBuscadorTipoCpbte.Sucursal     := dbcSucursal.keyValue;
  FormBuscadorTipoCpbte.DiscriminaIVA:= 'S';
  FormBuscadorTipoCpbte.ShowModal;
  Renglones:=FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
  SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
  IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;
  if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
    begin
      if Not(Assigned(FormBuscadorDepositos)) then
        FormBuscadorDepositos        := TFormBuscadorDepositos.Create(Self);
      FormBuscadorDepositos.Deposito := dbcDeposito.KeyValue;
      FormBuscadorDepositos.ShowModal;
      if (FormBuscadorDepositos.ModalResult=mrok) Then
        begin
          Deposito    := FormBuscadorDepositos.Deposito;
          if Not(Assigned(FormCpbteCtdo_2)) Then
            FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
          FormCpbteCtdo_2.SucursalPorDefecto := SucursalComprobante;
          FormCpbteCtdo_2.DepositoPorDefecto := Deposito;
          Cont:=1;
          begin
            if Not(Assigned(FormEleccionCaja)) Then
              FormEleccionCaja:=TFormEleccionCaja.Create(Self);
            FormEleccionCaja.Caja :=dbcCtas.KeyValue;
            FormEleccionCaja.ShowModal;
            if FormEleccionCaja.ModalResult=mrOk then
              begin
                if FormEleccionCaja.Caja>-1 Then
                  begin
                    CtaCaja       := FormEleccionCaja.Caja;
                    CtaCajaNombre := FormEleccionCaja.CajaNombre;
                  end
                else
                  begin
                    CtaCaja       := dbcCtas.KeyValue;
                    CtaCajaNombre := dbcCtas.Text;
                  end;
                FormCpbteCtdo_2.CajaPorDefecto :=CtaCaja;
                FormCpbteCtdo_2.Agregar.Execute;
                AgregarCabecera;
                begin
                   Application.ProcessMessages;
                   if (Trunc(DatosImportaPtoVtaMorphi.MTCajasFAC_MONTO.Asfloat*100)>0)  then
                     AgregaDetalle;
                end;
                FormCpbteCtdo_2.pcDetalleFactura.ActivePageIndex       := 2;
                FormCpbteCtdo_2.CajaPorDefecto                         := CtaCaja;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja.Text    := IntToStr(CtaCaja);
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja,En,[]);
                FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoOperacion  := 'I';
                FormCpbteCtdo_2.FrameMovValoresIngreso1.ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.Value;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
                FormCpbteCtdo_2.FrameMovValoresIngreso1.Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value;

                // aca manejo la diferencia de caja----
                if chAplicarDireferencia.Checked then
                  begin
                    DiferenciaCaja:=StrToFloat(ReplaceStr(edDiferenciaSaldo.Text,',',''));
                  end
                else
                  DiferenciaCaja:=0;

                if DatosImportaPtoVtaMorphi.MTFPago.RecordCount>0 then
                  begin
                    DatosImportaPtoVtaMorphi.MTFPago.First;
                    while Not(DatosImportaPtoVtaMorphi.MTFPago.Eof) do
                      begin
                        if Not(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.State=dsInsert) and (Trim(DatosImportaPtoVtaMorphi.MTFPagoCOD_PAGO.AsString) <>'') then
                          FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                         if FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.State=dsInsert then
                           begin
                             TipoMov:=-1;
                             if CDSRelacionTipoPago.Locate('COD_FPAGO_M',DatosImportaPtoVtaMorphi.MTFPagoCOD_PAGO.AsString,[]) Then
                               TipoMov:=CDSRelacionTipoPagoID_TPAGO.AsInteger;

                             if (TipoMov=1) Then
                               begin
                                 if DatosImportaPtoVtaMorphi.MTFPagoIMPORTE.AsFloat>0 then
                                   begin
                                     FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,CDSRelacionTipoPagoID_FPAGO.AsString);
                                     FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADESSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES,FloatToStr(DatosImportaPtoVtaMorphi.MTFPagoIMPORTE.AsFloat-DiferenciaCaja));
                                     FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Post;
                                     DiferenciaCaja:=0;// vacio por si hay mas movimentos de efectivo
                                   end;
                               end
                             else
                               begin
                                 if CDSTablaRelTC.Locate('ID_TC_MORPHI',DatosImportaPtoVtaMorphi.MTFPagoCOD_PAGO.AsString,[]) Then
                                   begin
                                     if DatosImportaPtoVtaMorphi.MTFPagoIMPORTE.AsFloat>0 then
                                       begin
                                         FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,CDSRelacionTipoPagoID_FPAGO.AsString);
                                         FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TCSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC,CDSTablaRelTCID_TC.AsString);
                                         FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETOSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO,DatosImportaPtoVtaMorphi.MTFPagoIMPORTE.AsString);
                                         FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoLOTESetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoLOTE,DatosImportaPtoVtaMorphi.MTFPagoLOTE_CCARD.AsString);
                                         FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCredito.Post;
                                       end;
                                   end;
                               end;
                           end;
                        DatosImportaPtoVtaMorphi.MTFPago.Next;
                      end;

                  end
                else
                  begin
                    if Not(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.State=dsInsert) then
                      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
                     FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGOSetText(formCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO,'1' );
                    if chNotasCredito.Checked=False then
                      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADESSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES,FloatToStr(DatosImportaPtoVtaMorphi.MTCajasTOTAL_NETO_F.AsFloat))
                    else
                      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADESSetText(FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES,FloatToStr(DatosImportaPtoVtaMorphi.MTCajasFAC_MONTO.AsFloat));
                    FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Post;
                  end;

                Application.ProcessMessages;
                if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                  DatosVentasCtdo.CDSVentaDet.Post;
                FormCpbteCtdo_2.WindowState  :=wsNormal;
              end;
          end;
        end;
      if DatosImportaPtoVtaMorphi.MTEgresos.RecordCount>0 then
        begin
          if MessageDlg('Procesar los Gastos.....?',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
            IngresarGastos.Execute;
        end;
    end;

end;

procedure TFormImportarVtas_PtoVtaMorphi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_PtoVtaMorphi.ini');
  //*************************************************************
  if FileExists(ExtractFilePath(ParamStr(0))+'ListaHostMorphi.txt') then
    cbPathBases.Items.SaveToFile(ExtractFilePath(ParamStr(0))+'ListaHostMorphi.txt');


  ArchivoIni.WriteInteger('Archivo', 'Sucursal', dbcSucursal.KeyValue);
 // ArchivoIni.WriteInteger('Archivo', 'Comprobante', dbcComprobante.KeyValue);
  ArchivoIni.WriteInteger('Archivo', 'Deposito', dbcDeposito.KeyValue);
  ArchivoIni.WriteInteger('Archivo', 'Caja', dbcCtas.KeyValue);
  ArchivoIni.WriteInteger('base', 'host',cbPathBases.ItemIndex);

  ArchivoIni.WriteString('Dato', 'codigo', ceCliente.Text);
  ArchivoIni.WriteString('Dato', 'Nombre', edNombreCliente.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo0',ceCodigoCero.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo0',edDetalleCero.Text);
  ArchivoIni.WriteString('Dato', 'ApiKey',edApikey.Text);
  ArchivoIni.WriteString('Dato', 'CodigoCtaGasto',ceCtaGasto.Text);
  ArchivoIni.WriteString('Dato', 'CtaGasto',edCtaGasto.Text);
  ArchivoIni.WriteBool('Dato', 'CtaGasto',chAplicarDireferencia.Checked);


  ArchivoIni.Free;
  Action:=caFree;

  CDSSucursal.Close;
  CDSComprobantes.Close;
  CDSDepositos.Close;
  CDSCajas.Close;
  CDSTablaRelTC.Close;
  CDSRelacionTipoPago.Close;
  CDSRelacionGastos.Close;
 
end;

procedure TFormImportarVtas_PtoVtaMorphi.FormCreate(Sender: TObject);
var
F:Integer;
begin
  inherited;
  AutoSize:=False;

  IF NOT (Assigned(DatosImportaPtoVtaMorphi)) THEN
    DatosImportaPtoVtaMorphi := TDatosImportaPtoVtaMorphi.Create(self);

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Configuracion_PtoVtaMorphi.ini');
  //*************************************************************
  dbcSucursal.KeyValue      := ArchivoIni.ReadInteger('Archivo', 'Sucursal', -1);
//  dbcComprobante.KeyValue   := ArchivoIni.ReadInteger('Archivo', 'Comprobante', -1);
  dbcDeposito.KeyValue      := ArchivoIni.ReadInteger('Archivo', 'Deposito', -1);
  dbcCtas.KeyValue          := ArchivoIni.ReadInteger('Archivo', 'Caja', -1);

  ceCliente.Text            := ArchivoIni.ReadString('Dato', 'codigo', '');
  edNombreCliente.Text      := ArchivoIni.ReadString('Dato', 'Nombre', '');
  ceCodigo.Text             := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text            := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text          := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text           := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCodigoCero.Text         := ArchivoIni.ReadString('Dato', 'CodArticulo0','');
  edDetalleCero.Text        := ArchivoIni.ReadString('Dato', 'DetArticulo0','');
  edApikey.Text             := ArchivoIni.ReadString('Dato', 'ApiKey','');
  ceCtaGasto.Text           := ArchivoIni.ReadString('Dato', 'CodigoCtaGasto','');
  edCtaGasto.Text           := ArchivoIni.ReadString('Dato', 'CtaGasto','');
  chAplicarDireferencia.Checked := ArchivoIni.ReadBool('Dato', 'CtaGasto',False);
  if not FileExists(ExtractFilePath(ParamStr(0))+'ListaHostMorphi.txt') then
    begin
      F:=FileCreate(ExtractFilePath(ParamStr(0))+'ListaHostMorphi.txt');
      FileClose(F);
    end;
  cbPathBases.Style := csOwnerDrawFixed;
  cbPathBases.Clear;
  cbPathBases.Items.LoadFromFile(ExtractFilePath(ParamStr(0))+'ListaHostMorphi.txt');

  if ArchivoIni.ReadInteger('base', 'host',-1 )>-1 then
    cbPathBases.ItemIndex := ArchivoIni.ReadInteger('base', 'host',-1 );

  DatosImportaPtoVtaMorphi.FPathBase := cbPathBases.Text;
  DatosImportaPtoVtaMorphi.FApiKey   := edApikey.Text;

  ArchivoIni.Free;

  CDSSucursal.Open;

  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('Sucursal').Value := dbcSucursal.KeyValue;
  CDSComprobantes.Open;

  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Sucursal').Value    := dbcSucursal.KeyValue;
  CDSDepositos.Open;

  CDSCajas.Open;

  CDSTablaRelTC.Open;
  CDSRelacionTipoPago.Open;
  CDSRelacionGastos.Open;

  pcOpciones.ActivePageIndex:=0;

  edFecha.Date:=Date - 10;

end;

procedure TFormImportarVtas_PtoVtaMorphi.FormDestroy(Sender: TObject);
begin
  inherited;
  FreeAndNil(DatosImportaPtoVtaMorphi);
  FreeAndNil(DatosImportaPtoVtaMorphi);

  FormImportarVtas_PtoVtaMorphi:=nil;
end;

procedure TFormImportarVtas_PtoVtaMorphi.FormShow(Sender: TObject);
begin
  inherited;
  Conectar.Execute;
end;


procedure TFormImportarVtas_PtoVtaMorphi.IdIcmpClientReply(ASender: TComponent;
  const AReplyStatus: TReplyStatus);
begin
  inherited;
  IdIcmpClient.Host:='lafonte.dyndns.tv';
  if IdIcmpClient.ReplyStatus.BytesReceived = 0 then
    HayInternet:=False
  else
    HayInternet:=True;
end;

procedure TFormImportarVtas_PtoVtaMorphi.IngresarGastosExecute(Sender: TObject);
var FechaStr:String;
begin
  inherited;
   FechaStr:=AnsiReplaceStr( DatosImportaPtoVtaMorphi.MTCajasFECHA_APERTURA.Value,'-','');
   FechaStr:=copy(FechaStr,7,2)+'/'+copy(FechaStr,5,2)+'/'+copy(FechaStr,1,4);
  if DatosImportaPtoVtaMorphi.MTEgresos.RecordCount>0 then
    begin
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
      FormBuscadorTipoCpbte.TipoCpbte1    := 'EC';
      FormBuscadorTipoCpbte.TipoCpbte2    := '';
      FormBuscadorTipoCpbte.TipoCpbte3    := '';
      FormBuscadorTipoCpbte.CV            := 'C';
      FormBuscadorTipoCpbte.Sucursal      := dbcSucursal.keyValue;
      FormBuscadorTipoCpbte.DiscriminaIVA := 'N';
      FormBuscadorTipoCpbte.ShowModal;
      if FormBuscadorTipoCpbte.ModalResult=mrOk then
        begin
          SucursalComprobante  := FormBuscadorTipoCpbte.Sucursal;
          IDComprobante        := FormBuscadorTipoCpbte.Id_Cpbte;

          if Not(Assigned(FormEleccionCaja)) Then
            FormEleccionCaja:=TFormEleccionCaja.Create(Self);
          FormEleccionCaja.Caja :=dbcCtas.KeyValue;
          FormEleccionCaja.ShowModal;
          if FormEleccionCaja.ModalResult=mrOk then
            begin
              if FormEleccionCaja.Caja>-1 Then
                begin
                  CtaCaja       := FormEleccionCaja.Caja;
                  CtaCajaNombre := FormEleccionCaja.CajaNombre;
                end
              else
                begin
                  CtaCaja       := dbcCtas.KeyValue;
                  CtaCajaNombre := dbcCtas.Text;
                end;

              DMMain_FD.fdcGestion.StartTransaction;
                try
                  with DatosImportaPtoVtaMorphi do
                    begin
                      MTEgresos.First;
                      while not(MTEgresos.Eof) do
                        begin
                          if Abs( StrToFloat(MTEgresosIMPORTE.Value))>0 then
                            begin
                              spAgregarGasto.Close;
                              spAgregarGasto.ParamByName('ID_COMPROBANTE').Value   := IDComprobante;
                              spAgregarGasto.ParamByName('FECHA').Value            := StrToDate(FechaStr);
                              spAgregarGasto.ParamByName('IMPORTE').AsFloat        := Abs( StrToFloat(MTEgresosIMPORTE.Value));
                              spAgregarGasto.ParamByName('USUARIO').Value          := DMMain_FD.UsuarioActivo;
                              if CDSRelacionGastos.Locate('COD_MORPHI',MTEgresosRUBRO_CAJA.AsString,[]) then
                                spAgregarGasto.ParamByName('CODIGOGASTO').Value    := CDSRelacionGastosCOD_GESTION.AsString;
                              spAgregarGasto.ParamByName('ID_CUENTA_CAJA').Value   := CtaCaja;
                              spAgregarGasto.ParamByName('DETALLE').AsString       := MTEgresosDESCRIPCION.Value;

                              spAgregarGasto.ExecProc;
                            end;
                          MTEgresos.Next;
                        end;
                      DMMain_FD.fdcGestion.Commit;
                    end;
                except
                  DMMain_FD.fdcGestion.Rollback;
                end;
            end;
        end;
    end;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbcSucursalMorphiClick(Sender: TObject);
begin
  inherited;
  ConsultaREST.Execute;

end;

procedure TFormImportarVtas_PtoVtaMorphi.dbgFPagoColEnter(Sender: TObject);
begin
  inherited;
  if dbgFPago.SelectedIndex=2 then
    dbgFPago.SelectedIndex:=1;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbgFPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgFPago.SelectedIndex < 1) THEN
        dbgFPago.SelectedIndex := dbgFPago.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgFPago.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgFPago.DataSource.DataSet.Append;
          dbgFPago.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        begin
          IF dbgFPago.SelectedField = CDSTablaRelTCID_TC THEN
             BuscaFormaPago.Execute
        end;
      END;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbgFPagoTitleClick(Column: TColumn);
var Campo:String;
begin
  inherited;
  try
    Campo := Column.FieldName;
    with dbgFPago.DataSource.DataSet as TClientDataSet do
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

procedure TFormImportarVtas_PtoVtaMorphi.dbgRelacionGastosColEnter(
  Sender: TObject);
begin
  inherited;
  if dbgRelacionGastos.SelectedIndex=1 then
    dbgRelacionGastos.SelectedIndex:=dbgRelacionGastos.SelectedIndex+1;
end;

procedure TFormImportarVtas_PtoVtaMorphi.dbgRelacionGastosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    begin
      Key:=#0;
      if dbgRelacionGastos.SelectedIndex<2 then
        dbgRelacionGastos.SelectedIndex:=dbgRelacionGastos.SelectedIndex+1
      else
        begin
          dbgRelacionGastos.DataSource.DataSet.Append;
          dbgRelacionGastos.SelectedIndex:=0;
        end;
    end
  else
     if Key=#10 then
       begin
         key:=#10;
         BuscarCtaGasto.Execute;
       end;

end;

procedure TFormImportarVtas_PtoVtaMorphi.dbgTipoPagoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgTipoPago.SelectedIndex < 1) THEN
        dbgTipoPago.SelectedIndex := dbgFPago.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgTipoPago.DataSource.DataSet.Eof) and (Not(DSRelacionTPago.State in [dsBrowse])) THEN
            dbgTipoPago.DataSource.DataSet.Append;
          dbgTipoPago.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        begin
          IF dbgTipoPago.SelectedField = CDSRelacionTipoPagoID_FPAGO THEN
             BuscaFormaPago.Execute
        end;
      END;
end;

procedure TFormImportarVtas_PtoVtaMorphi.edFechaChange(Sender: TObject);
begin
  inherited;
 // if DatosImportaPtoVtaMorphi.FDConectionMorphi.Connected=True then
//    begin
//      if (Not( varIsNull(dbcSucursalMorphi.KeyValue))) and (dbcSucursalMorphi.KeyValue>-1)  then
//        begin
//          DatosImportaPtoVtaMorphi.QCajas.AfterScroll:=nil;
//
//          DatosImportaPtoVtaMorphi.QCajas.Close;
//          DatosImportaPtoVtaMorphi.QCajas.ParamByName('suc').Value:=dbcSucursalMorphi.KeyValue;
//          DatosImportaPtoVtaMorphi.QCajas.ParamByName('Desde').Value := edFecha.Date;
//          DatosImportaPtoVtaMorphi.QCajas.Open;
//
//          DatosImportaPtoVtaMorphi.QCajas.AfterScroll:=DatosImportaPtoVtaMorphi.QCajasAfterScroll;

        //  DatosImportaPtoVtaMorphi.QCierresZ.Close;
        //  DatosImportaPtoVtaMorphi.QCierresZ.Open;

        //  DatosImportaPtoVtaMorphi.QFPago.Close;
        //  DatosImportaPtoVtaMorphi.QFPago.Open;
//        end;

//    end;
  ConsultaREST.Execute;
end;

procedure TFormImportarVtas_PtoVtaMorphi.lbArchivosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    Borrar.Execute;
end;




procedure TFormImportarVtas_PtoVtaMorphi.SpeedButton2Click(Sender: TObject);
begin
  inherited;
  pnHost.Visible:=True;
end;

procedure TFormImportarVtas_PtoVtaMorphi.SpeedButton3Click(Sender: TObject);
begin
  inherited;
 cbPathBases.DeleteSelected;
end;

end.
