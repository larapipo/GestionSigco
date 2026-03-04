unit UOrdenProduccion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, IBGenerator, DBClient,  Provider, Db, Grids,
  DBGrids, DBCtrls, StdCtrls, Mask,System.StrUtils,
  ActnList, ComCtrls, Buttons, ToolWin, ExtCtrls,  frxDBSet,
  frxClass, ImgList, JvComponentBase, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador,
  frxExportPDF, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  JvExDBGrids, JvDBGrid,Variants, Vcl.Menus,IniFiles, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  frxExportBaseDialog, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  cxCheckBox, dxSkinWXI, frCoreClasses, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCCustomControl,
  VCL.TMSFNCPanel;

type
  TFormOrdenProduccion = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText1: TDBText;
    dbtMuestraComprobante: TDBText;
    dbeOrigen: TDBEdit;
    dbeDestino: TDBEdit;
    dbePrefijo: TDBEdit;
    dbeNum: TDBEdit;
    dbeSucursal: TDBEdit;
    pnDetalle: TPanel;
    DBEdit1: TDBEdit;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    BuscarArticuloProduccion: TAction;
    BuscarDeposito: TAction;
    Label1: TLabel;
    dbeProductor: TDBEdit;
    BitBtn1: TBitBtn;
    AProduccion: TAction;
    lbEstado: TLabel;
    Imprimir: TAction;
    spProduccion: TSpeedButton;
    sbRecepcion: TSpeedButton;
    RecepcionProducto: TAction;
    frOProd: TfrxReport;
    frDSDetalle: TfrxDBDataset;
    frDSMovimientos: TfrxDBDataset;
    frDSObs: TfrxDBDataset;
    RxCOrigen: TJvDBComboEdit;
    RxCDestino: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    dbeFecha: TJvDBDateEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel8: TJvLabel;
    DBText2: TDBText;
    JvLabel1: TJvLabel;
    frCabecera: TfrxDBDataset;
    PageControl1: TPageControl;
    pag1: TTabSheet;
    pagNovedades: TTabSheet;
    dbgObs: TDBGrid;
    JvLabel2: TJvLabel;
    RxCCodigo: TJvDBComboEdit;
    dbeNombre: TDBEdit;
    BuscarCliente: TAction;
    pcProduccion: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgMovimientos: TDBGrid;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDepositos: TComBuscador;
    ComBuscadorStockProd: TComBuscador;
    ComBuscadorComprobante: TComBuscador;
    btImpRtos: TBitBtn;
    ImprimeEtiquetas: TAction;
    TabSheet3: TTabSheet;
    DBRichEdit1: TDBRichEdit;
    frxPDFExport1: TfrxPDFExport;
    QBuscaTpFcVta: TFDQuery;
    QBuscaTpFcVtaTIPOCPBTE: TStringField;
    JvLabel3: TJvLabel;
    DBText3: TDBText;
    JvLabel4: TJvLabel;
    edFechaInicioProducc: TJvDBDateEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    JvLabel5: TJvLabel;
    QBuscaDeposito: TFDQuery;
    QBuscaDepositoID: TIntegerField;
    QBuscaDepositoNOMBRE: TStringField;
    QBuscaDepositoSUCURSAL: TIntegerField;
    QBuscaDepositoCENTRALIZA_STOCK: TStringField;
    QBuscaSucursal: TFDQuery;
    QBuscaSucursalCODIGO: TIntegerField;
    QBuscaSucursalDETALLE: TStringField;
    dbgDetalle: TJvDBGrid;
    pmDetalle: TPopupMenu;
    VerCodigoAlternativo1: TMenuItem;
    QBuscadorStockPro_: TFDQuery;
    TabSheet4: TTabSheet;
    dbgTroqueles: TDBGrid;
    JvLabel6: TJvLabel;
    edFechaEntrega: TJvDBDateEdit;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pcModoDetalle: TPageControl;
    pagDetalle: TTabSheet;
    pagAgrupado: TTabSheet;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1ESTADO: TcxGridDBColumn;
    cxGrid1DBTableView1EN_PLANIFICACION: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASIGLAS: TcxGridDBColumn;
    cxGrid1DBTableView1PARTICION: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOALTERNATIVO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASALDO: TcxGridDBColumn;
    cxGrid1DBTableView1ESPECIFICACION: TcxGridDBColumn;
    cxGrid1DBTableView1ITEM_DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_ENTREGA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_INIC_PRODUCC: TcxGridDBColumn;
    ModoDetalle1: TMenuItem;
    ModoAgrupado1: TMenuItem;
    N1: TMenuItem;
    DSPBuscadorStockPro: TDataSetProvider;
    CDSBuscadorStockPro: TClientDataSet;
    CDSBuscadorStockProCODIGO: TStringField;
    CDSBuscadorStockProDETALLE: TStringField;
    CDSBuscadorStockProID: TIntegerField;
    CDSBuscadorStockProCOD_ALTERNATIVO: TStringField;
    DBText4: TDBText;
    DBText5: TDBText;
    JvLabel8: TJvLabel;
    DBText7: TDBText;
    JvLabel9: TJvLabel;
    DBText8: TDBText;
    JvLabel10: TJvLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label3: TLabel;
    DBText11: TDBText;
    Label4: TLabel;
    DBText12: TDBText;
    DBText13: TDBText;
    JvLabel11: TJvLabel;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    DBText6: TDBText;
    TabSheet5: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid2DBTableView1ESPECIFICACION: TcxGridDBColumn;
    cxGrid2DBTableView1ITEM_DETALLE: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_ENTREGA: TcxGridDBColumn;
    cxGrid2DBTableView1FECHA_INIC_PRODUCC: TcxGridDBColumn;
    Incidencias: TAction;
    spIncidencias: TSpeedButton;
    ToolButton1: TToolButton;
    Anular: TAction;
    BtAnular: TSpeedButton;
    ToolButton2: TToolButton;
    PonerenProduccion1: TMenuItem;
    RearmarProduccion: TAction;
    CargarLote: TAction;
    frDetalleConsumibles: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Panel3: TPanel;
    BitBtn2: TBitBtn;
    ImprimirConsumibles: TAction;
    GenerarParteDiario: TAction;
    N2: TMenuItem;
    GenerarParte1: TMenuItem;
    pagPartesDiarios: TTabSheet;
    dbgPartesDiarios: TDBGrid;
    LeerPresupuesto: TAction;
    ToolButton3: TToolButton;
    btBuscarPresupuestos: TBitBtn;
    PasarIdPresupuestoDet: TAction;
    dbtSub: TDBText;
    GenerarRevision: TAction;
    N3: TMenuItem;
    spRehacerPresupuestos: TSpeedButton;
    DBText15: TDBText;
    HacerRevision: TAction;
    HacerRevision1: TMenuItem;
    pnAdicionales: TTMSFNCPanel;
    dbgAnexos: TDBGrid;
    CambiarCliente: TAction;
    CambiarCliente1: TMenuItem;
    Panel4: TPanel;
    JvLabel7: TJvLabel;
    DBText14: TDBText;
    DBText16: TDBText;
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarArticuloProduccionExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RxCOrigenButtonClick(Sender: TObject);
    procedure RxCDestinoButtonClick(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMovimientosColEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AProduccionExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecepcionProductoExecute(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure ToolBar1DblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure JvLabel1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure ImprimeEtiquetasExecute(Sender: TObject);
    procedure JvLabel3Click(Sender: TObject);
    procedure RxCSucursalButtonClick(Sender: TObject);
    function dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ModoDetalle1Click(Sender: TObject);
    procedure ModoAgrupado1Click(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure IncidenciasExecute(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure RearmarProduccionExecute(Sender: TObject);
    procedure CargarLoteExecute(Sender: TObject);
    procedure ImprimirConsumiblesExecute(Sender: TObject);
    procedure GenerarParteDiarioExecute(Sender: TObject);
    procedure dbgPartesDiariosDblClick(Sender: TObject);
    procedure LeerPresupuestoExecute(Sender: TObject);
    procedure PasarIdPresupuestoDetExecute(Sender: TObject);
    procedure GenerarRevisionExecute(Sender: TObject);
    procedure HacerRevisionExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgAnexosEnter(Sender: TObject);
    procedure dbgAnexosColEnter(Sender: TObject);
    procedure dbgAnexosKeyPress(Sender: TObject; var Key: Char);
    procedure pnAdicionalesExit(Sender: TObject);
    procedure CambiarClienteExecute(Sender: TObject);
    procedure DBText16Click(Sender: TObject);
    procedure DBText14Click(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    procedure InsertarDetalle(Codigo: STRING; Cantidad, Unitario, Descuento: double; Detalle: STRING; Id_cab, Id_Det:Integer );
  end;

var
  FormOrdenProduccion: TFormOrdenProduccion;
  copias,Origen:integer;
  Imprime:String;

PROCEDURE UltimoComprobante;

implementation

uses UDMain_FD, DMBuscadoresForm, DMOrdenProduccion, UBuscadorCpbte,UPresupuesto_2,
  DMStoreProcedureForm, UFactura_2, UFacturaCtdo_2, UBuscadorClientes,
  UEtiquetas_2, UStock_2, UOProduccionIncidencias, UAnulacionOProduccion,
  ULoteProduccion, UGeneradorPartesDiarios, UProduccion_PDiario,
  UBuscarPresupuestos, DMVenta, UCambioClienteFactura;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,DatosOProduccion DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF ( CDSOProdCabLETRAOP.AsString <> '') AND (CDSOProdCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSOProdCabLETRAOP.AsString;
           spNumeroCpbte.ParamByName('Sucursal').Value    := CDSOProdCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSOProdCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').Value    := CDSOProdCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSOProdCabSUCOPSetText(CDSOProdCabSUCOP,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSOProdCabNUMEROOPSetText(CDSOProdCabNUMEROOP,IntToStr(Numero));
             END;
           CDSOProdCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSOProdCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSOProdCabNroCpbte.AsString := CDSOProdCabLETRAOP.AsString +
                                       CDSOProdCabSUCOP.AsString +
                                       CDSOProdCabNUMEROOP.AsString;
    end;
END;

PROCEDURE TFormOrdenProduccion.InsertarDetalle(Codigo: STRING; Cantidad: double; Unitario:double; Descuento: double; Detalle: STRING; Id_cab,Id_Det:Integer);
begin
  dbgDetalle.DataSource.DataSet.Append;
  DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO, Codigo);
  DatosOProduccion.CDSOProdDetDETALLE.Value := Detalle;
  DatosOProduccion.CDSOProdDetCANTIDADSetText(DatosOProduccion.CDSOProdDetCANTIDAD,FloatToStr(Cantidad));
  DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value   := Id_cab;
  DatosOProduccion.CDSOProdDetID_PRESU_DET.Value   := Id_Det;
  DatosOProduccion.CDSOProdCabID_PRESUPUESTO.Value := Id_cab;
  DBGDetalle.DataSource.DataSet.Post;
end;

procedure TFormOrdenProduccion.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosOProduccion.QBuscaComprob.Close;
  DatosOProduccion.QBuscaComprob.Open;
  IF NOT (DatosOProduccion.QBuscaComprob.IsEmpty) THEN
    BEGIN
      ComBuscadorComprobante.Execute;
      if ComBuscadorComprobante.rOk Then
        DatosOProduccion.CDSOProdCabID_TIPOCOMPROBANTESetText(DatosOProduccion.CDSOProdCabID_TIPOCOMPROBANTE, IntToStr(ComBuscadorComprobante.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DatosOProduccion.QBuscaComprob.Close;

end;

procedure TFormOrdenProduccion.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  QBuscaSucursal.Close;
  QBuscaSucursal.Open;
  ComBuscadorSucursal.Execute;
  IF comBuscadorSucursal.rOk THEN
    DatosOProduccion.CDSOProdCabSUCURSALSetText(DatosOProduccion.CDSOProdCabSUCURSAL, IntToStr(comBuscadorSucursal.id));
  QBuscaSucursal.Close;

end;

procedure TFormOrdenProduccion.BorrarExecute(Sender: TObject);
begin
  if DatosOProduccion.DSPartesDiarios.DataSet.IsEmpty then
    if (DatosOProduccion.CDSOProdCabID_FCVTA.AsString='') or (DatosOProduccion.CDSOProdCabID_FCVTA.Value<=0) then
      begin
         if ((DatosOProduccion.CDSOProdCabESTADO.Value<>'F') or (DatosOProduccion.CDSOProdCabESTADO.Value<>'R')) and (DMMain_FD.UsuarioAdministrador) Then
          begin
            if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
              inherited;
          end
        else
          if ((DatosOProduccion.CDSOProdCabESTADO.Value='I') or (DatosOProduccion.CDSOProdCabESTADO.Value='P')) then
            begin
              if (MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes) Then
                inherited;
             end;
      end
    else
      ShowMessage('Hay una factura asociada a la orden...')
  else
    ShowMessage('No esta permitido en una orden con movimientos....')

end;

procedure TFormOrdenProduccion.BuscarArticuloProduccionExecute(Sender: TObject);
begin
  inherited;
  CDSBuscadorStockPro.IndexDefs.Clear;
  CDSBuscadorStockPro.Close;
  CDSBuscadorStockPro.Open;
  ComBuscadorStockProd.Execute;
  if ComBuscadorStockProd.rOk Then
    BEGIN
      IF DatosOProduccion.CDSOProdDet.State = dsBrowse THEN
        DatosOProduccion.CDSOProdDet.Edit;
      DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO, ComBuscadorStockProd.Id);
    END;
  CDSBuscadorStockPro.Close;
end;

procedure TFormOrdenProduccion.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State in [dsInsert,dsEdit] then
    begin
      IF Not(Assigned(FormBuscadorClientes)) THEN
         FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
       FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
       FormBuscadorClientes.PopupMode:=pmAuto;
       FormBuscadorClientes.ShowModal;
       if FormBuscadorClientes.Codigo<>'' Then
         DatosOProduccion.CDSOProdCabCLIENTESetText(DatosOProduccion.CDSOProdCabCLIENTE,FormBuscadorClientes.Codigo);
    end;
end;


procedure TFormOrdenProduccion.BuscarDepositoExecute(Sender: TObject);
begin
  QBuscaDeposito.Close;
  QBuscaDeposito.Open;
  ComBuscadorDepositos.Execute;
  begin
    if Origen=0 Then
      DatosOProduccion.CDSOProdCabDEPOSITO_ORIGENSetText(DatosOProduccion.CDSOProdCabDEPOSITO_ORIGEN,IntToStr(ComBuscadorDepositos.id))
    else
      if Origen=1 Then
        DatosOProduccion.CDSOProdCabDEPOSITO_DESTINOSetText(DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO,IntToStr(ComBuscadorDepositos.Id));
  end;
  QBuscaDeposito.Close;
end;

procedure TFormOrdenProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  if Not(Assigned(FormEtiquetaOP)) then
    FormEtiquetaOP:=TFormEtiquetaOP.Create(self);

  if Not(Assigned(DatosOProduccion)) then
    DatosOProduccion:=TDatosOProduccion.Create(self);


  AddClientDataSet(DatosOProduccion.CDSOProdCab,DatosOProduccion.DSPOProdCab);
  AddClientDataSet(DatosOProduccion.CDSOProdDet,DatosOProduccion.DSPOProdDet);
  AddClientDataSet(DatosOProduccion.CDSOProdMov,DatosOProduccion.DSPOProdMov);
  AddClientDataSet(DatosOProduccion.CDSOProdobs,DatosOProduccion.DSPOProdObs);

  DatosOProduccion.CDSOProdCab.Open;
  DatosOProduccion.CDSOProdDet.Open;
  DatosOProduccion.CDSOProdMov.OPen;
  DatosOProduccion.CDSOProdobs.Open;

  TFloatField(dbgMovimientos.Fields[2]).DisplayFormat :=',0.000';
  TFloatField(dbgMovimientos.Fields[3]).DisplayFormat :=',0.000';
  TFloatField(dbgMovimientos.Fields[4]).DisplayFormat :=',0.000';

  TFloatField(dbgMovimientos.Fields[2]).EditFormat    :=',0.000';
  TFloatField(dbgMovimientos.Fields[3]).EditFormat    :=',0.000';
  TFloatField(dbgMovimientos.Fields[4]).EditFormat    :=',0.000';

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'O_Produccion.ini');
  VerCodigoAlternativo1.Checked := ArchivoIni.ReadBool('Dato', 'Cod', False);
  pcModoDetalle.ActivePageIndex := ArchivoIni.ReadInteger('Modo','pagina',0);
  ArchivoIni.Free;

  pcProduccion.ActivePageIndex:=0;

  if pcModoDetalle.ActivePageIndex=0 then
    begin
      ModoDetalle1.Checked :=True;
      ModoAgrupado1.Checked:=False;
    end
  else
    if pcModoDetalle.ActivePageIndex=1 then
      begin
        ModoDetalle1.Checked :=False;
        ModoAgrupado1.Checked:=True;
      end;


  dbgDetalle.Refresh;

  Tabla:='ordenproduccion_cab';
  campo:='id';
  cxGrid1DBTableView1.OptionsView.GroupByBox:=False;
end;

procedure TFormOrdenProduccion.FormActivate(Sender: TObject);
begin
  inherited;
  if FormOrdenProduccion<>nil then
    if ((DSBase.DataSet.IsEmpty=False) and (DSBase.DataSet.State=dsBrowse)) Then
      Recuperar.execute;
end;

procedure TFormOrdenProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'O_Produccion.ini');
  ArchivoIni.WriteBool('Dato', 'Cod', VerCodigoAlternativo1.Checked);
  ArchivoIni.WriteInteger('Modo','pagina',pcModoDetalle.ActivePageIndex);

  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormOrdenProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOrdenProduccion:=nil;
end;

procedure TFormOrdenProduccion.FormResize(Sender: TObject);
begin
  inherited;
  if FormOrdenProduccion<>nil then
    if FormOrdenProduccion.Width<1103 then
      FormOrdenProduccion.Width:=1103;

end;

procedure TFormOrdenProduccion.RxCOrigenButtonClick(Sender: TObject);
begin
  inherited;
  Origen:=0;
  BuscarDeposito.Execute;
end;

procedure TFormOrdenProduccion.RxCSucursalButtonClick(Sender: TObject);
begin
  inherited;
  QBuscaSucursal.Close;
  QBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosOProduccion.CDSOProdCabSUCURSALSetText(DatosOProduccion.CDSOProdCabSUCURSAL, IntToStr(comBuscadorSucursal.id));
  QBuscaSucursal.Close;
end;

procedure TFormOrdenProduccion.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frOProd.DesignReport();
end;

procedure TFormOrdenProduccion.RxCDestinoButtonClick(Sender: TObject);
begin
  inherited;
  Origen:=1;
  BuscarDeposito.Execute;
end;

procedure TFormOrdenProduccion.dbgAnexosColEnter(Sender: TObject);
begin
  inherited;
  if dbgAnexos.SelectedIndex=0 then
    dbgAnexos.SelectedIndex:=1;

end;

procedure TFormOrdenProduccion.dbgAnexosEnter(Sender: TObject);
begin
  inherited;
  if dbgAnexos.SelectedIndex=0 then
    dbgAnexos.SelectedIndex:=1;

end;

procedure TFormOrdenProduccion.dbgAnexosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key=#13) Then
    begin
      Key:=#0;
      if (dbgAnexos.SelectedIndex<dbganexos.Columns.Count-1) then
        dbgAnexos.SelectedIndex:=dbgAnexos.SelectedIndex+1
      else
        begin
          if Not(dbgAnexos.DataSource.DataSet.Eof) then
            dbgAnexos.DataSource.DataSet.Next;
          dbgAnexos.SelectedIndex:=1;
        end;
    end;
end;

function TFormOrdenProduccion.dbgDetalleCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result   := Field =DatosOProduccion.CDSOProdDetEN_PLANIFICACION;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormOrdenProduccion.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
 IF DBGDetalle.SelectedIndex = 1 THEN   // no entrar en el detalle
    DBGDetalle.SelectedIndex := 2;
 IF DBGDetalle.SelectedIndex = 3 THEN  // no entrar en las unidades
    DBGDetalle.SelectedIndex := 4;
 IF (DBGDetalle.SelectedIndex >= 5) and (DBGDetalle.SelectedIndex <= 8) THEN   // no entrar en el detalle
    DBGDetalle.SelectedIndex := 4;

end;

procedure TFormOrdenProduccion.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  if dsbase.State in [dsInsert,dsEdit] then
    pnAdicionales.Visible:=True;

{  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=dbgDetalle.DataSource.DataSet.FieldByName('codigo').AsString;
  FormStock_2.Recuperar.Execute;
  formStock_2.Show;}
end;

procedure TFormOrdenProduccion.dbgDetalleDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Rect2_width :Integer;
    P           :Integer;
    S:String;
    Realizados:Real;
begin
  inherited;
  if (VarIsNull(DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat) or VarIsNull(DatosOProduccion.CDSOProdDetMUESTRASALDO.AsFloat)) then
    Exit;

  if Column.FieldName='Progreso' then
    begin
      with dbgDetalle.Canvas do
        begin
          // Rectandulo 1
          Brush.Color:=clWindow;
          Pen.Color  :=clGreen;
          Rectangle(Rect.Left+2,rect.Top+2,Rect.Left+Column.Width-2,rect.Top+15);

          // Rectandulo 2
          Realizados := DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat-DatosOProduccion.CDSOProdDetMUESTRASALDO.AsFloat;
          if DatosOProduccion.CDSOProdDetMUESTRASALDO.AsFloat<=0 then
            Realizados := 0;//DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat;

          if Trunc(DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat*100)>0 then
            p:=Trunc((Realizados/DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat)*100)
          else
           p:=0;


          Rect2_width:=Trunc((Column.Width*P)/100);
          if Rect2_width>Column.Width then
            Rect2_width:=Column.Width;

          Brush.Color := clMoneyGreen;
          Pen.Color   := clGreen;
          Rectangle(Rect.Left+2,rect.Top+2,Rect.Left+Rect2_width,rect.Top+15);

          Brush.Style := bsClear;
          S           := IntToStr(p)+'%';
          TextOut((Rect.Left+Column.Width div 2)-TextWidth(S) div 2, rect.Top+2,s);
        end;


    end;

end;

procedure TFormOrdenProduccion.dbgDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    BuscarArticuloProduccion.Execute;

end;

procedure TFormOrdenProduccion.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGDetalle.SelectedIndex < 3) THEN
        DBGDetalle.SelectedIndex := DBGDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGDetalle.DataSource.DataSet.Eof THEN
            DBGDetalle.DataSource.DataSet.Append;
          DBGDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      IF DBGDetalle.SelectedField = DatosOProduccion.CDSOProdDetCODIGO
        THEN
        BuscarArticuloProduccion.Execute;
    END;

end;

procedure TFormOrdenProduccion.dbgMovimientosColEnter(Sender: TObject);
begin
  inherited;
 IF dbgMovimientos.SelectedIndex = 0 THEN
    dbgMovimientos.SelectedIndex := 1;
 IF (dbgMovimientos.SelectedIndex = 3 ) or ( dbgMovimientos.SelectedIndex = 2 ) THEN
    dbgMovimientos.SelectedIndex := 1;

end;


procedure TFormOrdenProduccion.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=dbgMovimientos.DataSource.DataSet.FieldByName('codigo').AsString;
  FormStock_2.Recuperar.Execute;
  formStock_2.Show;
end;

procedure TFormOrdenProduccion.dbgPartesDiariosDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormProducc_Diario)) then
    FormProducc_Diario:=TFormProducc_Diario.Create(self);
  FormProducc_Diario.DatoNew:=DatosOProduccion.QPartesDiariosID.AsString;
  FormProducc_Diario.Recuperar.Execute;
  FormProducc_Diario.Show;
  
end;

procedure TFormOrdenProduccion.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 17;
  FormBuscaCpbte.TipoCpbte1:='OR';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
    //  Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
    //  TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormOrdenProduccion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  pnAdicionales.Visible     :=False;
  DatosOProduccion.CDSOProdCab.Close;
  DatosOProduccion.CDSOProdCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOProduccion.CDSOProdCab.Open;

  DatosOProduccion.CDSOProdDet.Close;
  DatosOProduccion.CDSOProdDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosOProduccion.CDSOProdDet.Open;

  DatosOProduccion.CDSOProdMov.Close;
  DatosOProduccion.CDSOProdMov.Params.ParamByName('id').Value := DatosOProduccion.CDSOProdDetID.Value;
  DatosOProduccion.CDSOProdMov.Open;

  DatosOProduccion.CDSOProdObs.Close;
  DatosOProduccion.CDSOProdObs.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosOProduccion.CDSOProdObs.Open;

  DatosOProduccion.QTroqueles.Close;
  DatosOProduccion.QTroqueles.ParamByName('id_op').Value    := StrToInt(DatoNew);
  DatosOProduccion.QTroqueles.Open;

  DatosOProduccion.QPartesDiarios.Close;
  DatosOProduccion.QPartesDiarios.ParamByName('id_op').Value := StrToInt(DatoNew);
  DatosOProduccion.QPartesDiarios.Open;

  dbgTroqueles.Width:=dbgTroqueles.Width+1;
  dbgTroqueles.Width:=dbgTroqueles.Width-1;

  dbgDetalle.Width:=dbgDetalle.Width+1;
  dbgDetalle.Width:=dbgDetalle.Width-1;

  pnPrincipal.Enabled:=True;

  if DatosOProduccion.CDSOProdCabESTADO.Value='I' Then
    lbEstado.Caption:='Iniciada'
  else
    if DatosOProduccion.CDSOProdCabESTADO.Value='P' Then
      lbEstado.Caption:='En Producción'
    else
      if DatosOProduccion.CDSOProdCabESTADO.Value='F' Then
        lbEstado.Caption:='Finalizada'
      else
        if DatosOProduccion.CDSOProdCabESTADO.Value='A' Then
          lbEstado.Caption:='Anulada'
        else
          if DatosOProduccion.CDSOProdCabESTADO.Value='R' Then
            lbEstado.Caption:='Pasa A Revision'
          else
            lbEstado.Caption:='--';


  DatoNew:=''+DatoNew+'';
  if DatosOProduccion.CDSOProdCabESTADO.Value='I' Then
    begin
      Borrar.Enabled   :=True;
      Modificar.Enabled:=True;
    end
  else
    if DatosOProduccion.CDSOProdCabESTADO.Value='P' Then
      begin
        Borrar.Enabled   :=True;
        Modificar.Enabled:=True;
      end
    else
      if DatosOProduccion.CDSOProdCabESTADO.Value='F' Then
        begin
          Borrar.Enabled   :=True;
          Modificar.Enabled:=False;
        end
      else
        if DatosOProduccion.CDSOProdCabESTADO.Value='A' Then
          begin
//            Borrar.Enabled   :=False;
            Modificar.Enabled:=False;
          end;
   Self.Caption:='Orden de Produccion -- '+DatosOProduccion.CDSOProdCabFECHA_HORA.AsString+'//'+Copy(DatosOProduccion.CDSOProdCabUSUARIO.AsString,1,15);

   cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGridend;
   cxGrid2DBTableView1.DataController.Groups.FullExpand;
end;

procedure TFormOrdenProduccion.ConfirmaExecute(Sender: TObject);
var i:integer;
begin
  if (Trim(DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO.AsString)='') and
     (Trim(DatosOProduccion.CDSOProdCabNOMBRE_DEPOSITO_DESTINO.ASString)='') then
    begin
      DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO.AsString       :=DatosOProduccion.CDSOProdCabDEPOSITO_ORIGEN.AsString;
      DatosOProduccion.CDSOProdCabNOMBRE_DEPOSITO_DESTINO.AsString:=DatosOProduccion.CDSOProdCabNOMBRE_DEPOSITO_ORIGEN.AsString;

    end;
  DatoNew := DatosOProduccion.CDSOProdCabID.AsString;

  if DSBase.DataSet.State<>dsBrowse then DSBase.DataSet.Post;

  inherited;
  Recuperar.Execute;
  if (FormOrdenProduccion<>nil) and
     (FormOrdenProduccion.Visible) and
     (btNuevo.Visible) and
     (btNuevo.Enabled) then
    btNuevo.SetFocus;

end;


procedure TFormOrdenProduccion.FormShow(Sender: TObject);
begin
  inherited;
  if (FormOrdenProduccion<>nil) and
     (FormOrdenProduccion.Visible) and
     (btNuevo.Visible) and
     (btNuevo.Enabled) then
    btNuevo.SetFocus;
end;

procedure TFormOrdenProduccion.GenerarParteDiarioExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormGeneradorParteDiarios)) then
    FormGeneradorParteDiarios:=TFormGeneradorParteDiarios.Create(self);
  FormGeneradorParteDiarios.Id_op := DSBase.DataSet.FieldByName('id').AsInteger;
  FormGeneradorParteDiarios.showModal;
end;

procedure TFormOrdenProduccion.GenerarRevisionExecute(Sender: TObject);
var id_presu,id_presuNew:Integer;
  Q: TFDQuery;
begin
  if (DatosOProduccion.CDSOProdCabID_PRESUPUESTO.Value>0) and (DatosOProduccion.CDSOProdCabESTADO.Value<>'R') Then
    begin
      id_presuNew  := -1;
      Q            := TFDQuery.Create(nil);
      Q.Connection := DMMain_FD.fdcGestion;
      id_presu     := -1;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosOProduccion.CDSOProdDet.First;
        while not(DatosOProduccion.CDSOProdDet.Eof) do
          begin
            if id_presu<>DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value then
              begin
                id_presu   := DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value;
                Q.SQL.Text := 'EXECUTE PROCEDURE DUPLICAR_PRESUPUESTO(:ID_ORIG,:USUARIO)';
                Q.ParamByName('ID_ORIG').AsInteger := id_presu;
                Q.ParamByName('USUARIO').AsString  := DMMain_FD.UsuarioActivo;
                Q.Open;
                id_presuNew:=Q.Fields[0].Value;
                Q.Close;
              end;
            DatosOProduccion.CDSOProdDet.Next;
          end;
        Q.Close;
        q.SQL.Text:='update ordenproduccion_cab o set o.estado=''R'', o.obs1=:obs where o.id=:id ';
        Q.ParamByName('ID').AsInteger  := DSBase.DataSet.FieldByName('ID').Value;
        Q.ParamByName('obs').AsString  := 'Pasa a Revision';
        Q.ExecSQL;

        DMMain_FD.fdcGestion.commit
      except
        DMMain_FD.fdcGestion.Rollback;
      end;
      Q.Close;
      FreeAndNil(Q);

      if id_presuNew>-1 then
        begin
          if Not(Assigned(FormPresupuesto_2)) then
            FormPresupuesto_2:=TFormPresupuesto_2.Create(Application); // le puse application por si es llamado desde Presupuesto
          FormPresupuesto_2.DatoNew   := IntToStr(id_presuNew);
          FormPresupuesto_2.Recuperar.Execute;
          FormPresupuesto_2.Show;
        end;
    end;
end;

procedure TFormOrdenProduccion.HacerRevisionExecute(Sender: TObject);
var Sub,Cliente,Productor:String;
Num,Id_Anterior:Integer;
FECHA_INICIADA ,
FECHA_INCIO_PROD,
FECHA_FINALIZADA,
FECHA_ENTREGA_PREV,
FECHA_INGENIERIA  : TDateTime;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.FieldByName('ESTADO').AsString='R') then
    begin
      Sub               := DSBase.DataSet.FieldByName('SUB_NRO').AsString;
      Num               := StrToInt(Sub)+1;
      Sub               := RightStr('00'+IntToStr(Num),2);
      Id_Anterior       := DSBase.DataSet.FieldByName('ID').Value;
      Cliente           := DSBase.DataSet.FieldByName('CLIENTE').AsString;
      FECHA_INICIADA    := DSBase.DataSet.FieldByName('FECHA_INICIADA').AsDateTime;
      FECHA_INCIO_PROD  := DSBase.DataSet.FieldByName('FECHA_INCIO_PROD').AsDateTime;
      FECHA_FINALIZADA  := DSBase.DataSet.FieldByName('FECHA_FINALIZADA').AsDateTime;
      FECHA_ENTREGA_PREV:= DSBase.DataSet.FieldByName('FECHA_ENTREGA_PREV').AsDateTime;
      FECHA_INGENIERIA  := DSBase.DataSet.FieldByName('FECHA_INGENIERIA').AsDateTime;
      Productor         := DSBase.DataSet.FieldByName('PRODUCTOR').AsString;

      Agregar.Execute;

      DSBase.DataSet.FieldByName('SUB_NRO').AsString              := Sub;
      DSBase.DataSet.FieldByName('ID_OP_PREV').AsInteger          := Id_Anterior;
      DSBase.DataSet.FieldByName('CLIENTE').Text                  := Cliente;
      DSBase.DataSet.FieldByName('FECHA_INICIADA').AsDateTime     := FECHA_INICIADA;
      DSBase.DataSet.FieldByName('FECHA_INCIO_PROD').AsDateTime   := FECHA_INCIO_PROD;
      DSBase.DataSet.FieldByName('FECHA_FINALIZADA').AsDateTime   := FECHA_FINALIZADA;
      DSBase.DataSet.FieldByName('FECHA_ENTREGA_PREV').AsDateTime := FECHA_ENTREGA_PREV;
      DSBase.DataSet.FieldByName('FECHA_INGENIERIA').AsDateTime   := FECHA_INGENIERIA;
      DSBase.DataSet.FieldByName('PRODUCTOR').AsString            := Productor;

      dbgDetalle.SetFocus;


    end
  else
    ShowMessage('NO es Una revision...');
end;

procedure TFormOrdenProduccion.AnularExecute(Sender: TObject);
begin
  inherited;
  DatoNew:= DSBase.DataSet.FieldByName('id').AsString;
  if Not(Assigned(FormAnulacionOProduccion)) then
    FormAnulacionOProduccion:=TFormAnulacionOProduccion.Create(self);
  FormAnulacionOProduccion.id := DSBase.DataSet.FieldByName('id').AsInteger;
  FormAnulacionOProduccion.showModal;
  Recuperar.Execute;

end;

procedure TFormOrdenProduccion.AProduccionExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  DatosOProduccion.CDSOProdCabESTADO.Value:='P';
  DatosOProduccion.CDSOProdCabFECHA_INCIO_PROD.AsDateTime:=Date;
  DatosOProduccion.CDSOProdDet.First;
  while Not(DatosOProduccion.CDSOProdDet.Eof) Do
    begin
      DatosOProduccion.CDSOProdDet.Edit;
      DatosOProduccion.CDSOProdDetESTADO.Value:='P';
      DatosOProduccion.CDSOProdMov.First;
      while Not(DatosOProduccion.CDSOProdMov.Eof) do
        begin
          DatosOProduccion.CDSOProdMov.edit;
          DatosOProduccion.CDSOProdMovESTADO.Value:='P';
          DatosOProduccion.CDSOProdMov.Next;
        end;
      DatosOProduccion.CDSOProdDet.Next;
    end;
  Confirma.Execute;
end;


procedure TFormOrdenProduccion.ImprimeEtiquetasExecute(Sender: TObject);
begin
  inherited;
  FormEtiquetaOP.CDSEtiquetas.CloneCursor(DatosOProduccion.CDSOProdDet,True);
  FormEtiquetaOP.ShowModal;
  FormEtiquetaOP.BringToFront;
end;

procedure TFormOrdenProduccion.ImprimirConsumiblesExecute(Sender: TObject);
begin
  inherited;

  if pcProduccion.ActivePageIndex=1 then
    frOProd.LoadFromFile(DMMain_FD.PathReportesCpbte+'\DetalleProduccion.fr3');


 // frTransferencia.PrepareReport;
  frOProd.ShowReport;

end;

procedure TFormOrdenProduccion.ImprimirExecute(Sender: TObject);
begin
  inherited;

  DatosOProduccion.QComprob.Close;
  DatosOProduccion.QComprob.ParamByName('id').Value  := DatosOProduccion.CDSOProdCabID_TIPOCOMPROBANTE.Value;
  DatosOProduccion.QComprob.ParamByName('suc').Value := DatosOProduccion.CDSOProdCabSUCURSAL.Value;
  DatosOProduccion.QComprob.Open;

  frOProd.PrintOptions.Printer:=PrNomCpbte;
  frOProd.SelectPrinter;

  if pcModoDetalle.ActivePageIndex=0 then
    frOProd.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOProduccion.QComprobREPORTE.AsString)
  else
    if pcModoDetalle.ActivePageIndex=1 then
      frOProd.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Agrupado_'+DatosOProduccion.QComprobREPORTE.AsString);

  frOProd.PrintOptions.Copies := DatosOProduccion.QComprobCOPIAS.AsInteger;

  DatosOProduccion.QComprob.Close;
 // frTransferencia.PrepareReport;
  frOProd.ShowReport;

end;

procedure TFormOrdenProduccion.IncidenciasExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) then
    begin
      if Not(Assigned(FormOProduccionIncidencias)) then
       FormOProduccionIncidencias := TFormOProduccionIncidencias.Create(Self);
      FormOProduccionIncidencias.id     := DSBase.DataSet.FieldByName('ID').Value;
      if DSBase.DataSet.FieldByName('CLIENTE').AsString<>'' Then
        FormOProduccionIncidencias.Codigo := DSBase.DataSet.FieldByName('CLIENTE').AsString
      else
        FormOProduccionIncidencias.Codigo := '';

      FormOProduccionIncidencias.Recuperar.Execute;
      FormOProduccionIncidencias.Show;
    end;
end;

procedure TFormOrdenProduccion.JvLabel1Click(Sender: TObject);
begin
  inherited;
  if (DatosOProduccion.CDSOProdCabID_FCVTA.Value > -1) then
    begin
       QBuscaTpFcVta.Close;
       QBuscaTpFcVta.ParamByName('id').Value:=DatosOProduccion.CDSOProdCabID_FCVTA.Value;
       QBuscaTpFcVta.Open;
       if QBuscaTpFcVta.Fields[0].ASString<>'FO' Then
         begin
           if Not(Assigned(FormCpbte_2)) then
             FormCpbte_2:=TFormCpbte_2.Create(self);
           FormCpbte_2.DatoNew   := DatosOProduccion.CDSOProdCabID_FCVTA.AsString;
           FormCpbte_2.TipoCpbte := QBuscaTpFcVta.Fields[0].ASString;
           FormCpbte_2.Recuperar.Execute;
           FormCpbte_2.Show;
         end
       else
         if QBuscaTpFcVta.Fields[0].ASString='FO' Then
           begin
             if Not(Assigned(FormCpbteCtdo_2)) then
               FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
             FormCpbteCtdo_2.DatoNew   := DatosOProduccion.CDSOProdCabID_FCVTA.AsString;
             FormCpbteCtdo_2.TipoCpbte := QBuscaTpFcVta.Fields[0].ASString;
             FormCpbteCtdo_2.Recuperar.Execute;
             FormCpbteCtdo_2.Show;
           end;
   end;
end;

procedure TFormOrdenProduccion.JvLabel3Click(Sender: TObject);
begin
  inherited;
  if (DatosOProduccion.CDSOProdDetID_PRESU_CAB.Value > -1) then
    begin
      if Not(Assigned(FormPresupuesto_2)) then
        FormPresupuesto_2:=TFormPresupuesto_2.Create(Application); // le puse application por si es llamado desde Presupuesto
      FormPresupuesto_2.DatoNew   := DatosOProduccion.CDSOProdDetID_PRESU_CAB.AsString;
      FormPresupuesto_2.Recuperar.Execute;
      FormPresupuesto_2.Show;
    end
end;

procedure TFormOrdenProduccion.LeerPresupuestoExecute(Sender: TObject);
begin
  inherited;
  if (DatosOProduccion.CDSOProdCabCLIENTE.AsString<>'') then
    begin
      IF NOT (Assigned(FormBuscarPresupuestos)) THEN
        FormBuscarPresupuestos := TFormBuscarPresupuestos.Create(Self,InsertarDetalle);
      FormBuscarPresupuestos.Origen  := 'OR';
      FormBuscarPresupuestos.Cliente := DatosOProduccion.CDSOProdCabCLIENTE.Value;
      FormBuscarPresupuestos.ShowModal;
    end
  else
    ShowMessage('Falta Cliente...');
end;

procedure TFormOrdenProduccion.ModoAgrupado1Click(Sender: TObject);
begin
  inherited;
  ModoAgrupado1.Checked:=not(ModoAgrupado1.Checked);
  if ModoAgrupado1.Checked then
    ModoDetalle1.Checked:=False;
  if ModoDetalle1.Checked Then pcModoDetalle.ActivePage:=pagDetalle
  else pcModoDetalle.ActivePage:=pagAgrupado;

end;

procedure TFormOrdenProduccion.ModoDetalle1Click(Sender: TObject);
begin
  inherited;
  ModoDetalle1.Checked:=not(ModoDetalle1.Checked);
  if ModoDetalle1.Checked then
    ModoAgrupado1.Checked:=False;
  if ModoDetalle1.Checked Then pcModoDetalle.ActivePage:=pagDetalle
  else pcModoDetalle.ActivePage:=pagAgrupado;


end;

procedure TFormOrdenProduccion.CambiarClienteExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaClienteFactura)) then
    FormCambiaClienteFactura:=TFormCambiaClienteFactura.Create(FormOrdenProduccion);
  FormCambiaClienteFactura.codigo       :=DSBase.DataSet.FieldByName('cliente').AsString;
  FormCambiaClienteFactura.reazonsocial :=DSBase.DataSet.FieldByName('MUESTRACLIENTE').AsString;
  FormCambiaClienteFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaClienteFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id').Value;
  FormCambiaClienteFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormOrdenProduccion.CancelarExecute(Sender: TObject);
begin
  if MessageDlg('Cancela los cambios???',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
  begin
    inherited;
    DatosOProduccion.CDSOProdCab.Close;
    DatosOProduccion.CDSOProdCab.Params.ParamByName('id').Clear;
    DatosOProduccion.CDSOProdCab.Open;

    DatosOProduccion.CDSOProdDet.Close;
    DatosOProduccion.CDSOProdDet.Params.ParamByName('id').Clear;
    DatosOProduccion.CDSOProdDet.Open;

    DatosOProduccion.CDSOProdMov.Close;
    DatosOProduccion.CDSOProdMov.Params.ParamByName('id').Clear;
    DatosOProduccion.CDSOProdMov.Open;

    DatosOProduccion.CDSOProdObs.Close;
    DatosOProduccion.CDSOProdObs.Params.ParamByName('id').Clear;
    DatosOProduccion.CDSOProdObs.Open;
    lbEstado.Caption:='--';
    pnAdicionales.Visible     :=False;
  end;
end;

procedure TFormOrdenProduccion.CargarLoteExecute(Sender: TObject);
begin
  inherited;
  if FormLoteProduccion=nil then
    formLoteProduccion:=TFormLoteProduccion.Create(self);
  FormLoteProduccion.Codigo      := DatosOProduccion.CDSOProdDetCODIGO.Value;
  FormLoteProduccion.ID_op       := DatosOProduccion.CDSOProdDetID_OPCAB.Value;
  FormLoteProduccion.ID_Det      := DatosOProduccion.CDSOProdDetID.Value;
  FormLoteProduccion.TipoComprob := DatosOProduccion.CDSOProdCabTIPOCPBTE.Value;
  FormLoteProduccion.Deposito    := DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO.Value;
  FormLoteProduccion.ShowModal;
  if FormLoteProduccion<>nil Then
    FreeAndNil(FormLoteProduccion);

end;

procedure TFormOrdenProduccion.DBText14Click(Sender: TObject);
begin
  inherited;
  DatoNew:=DSBase.DataSet.FieldByName('ID_OP_PREV').AsString;
  if (DatoNew<>'') and (StrToInt(DatoNew)>0) then
    Recuperar.Execute;
end;

procedure TFormOrdenProduccion.DBText16Click(Sender: TObject);
begin
  inherited;
  DatoNew:=DSBase.DataSet.FieldByName('ID_OP_NEXT').AsString;
  if (DatoNew<>'') and (StrToInt(DatoNew)>0) then
    Recuperar.Execute;
end;

procedure TFormOrdenProduccion.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  ImprimeEtiquetas.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  CambiarCliente.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  AProduccion.Enabled       := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOProduccion.CDSOProdCabESTADO.Value='I');
  RecepcionProducto.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOProduccion.CDSOProdCabESTADO.Value='P');
  BuscarCliente.Enabled     := DSBase.DataSet.State in [dsInsert,dsEdit];
  Incidencias.Enabled       := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Anular.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOProduccion.CDSOProdCabESTADO.Value<>'F') and (DatosOProduccion.CDSOProdCabESTADO.Value<>'A');
 // dbgDetalle.ReadOnly       := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Borrar.Enabled            := (DMMain_FD.UsuarioAdministrador)  and (Not(DSBase.DataSet.FieldByName('ESTADO').AsString='A'));
  GenerarRevision.Enabled   := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (DatosOProduccion.CDSOProdCabESTADO.Value<>'R');
  LeerPresupuesto.Enabled   := (DSBase.DataSet.State IN [dsEdit,dsInsert]);
  borrar.Enabled            := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  //  pnAdicionales.Visible     := Not(DSBase.DataSet.State in [dsBrowse]);
end;

procedure TFormOrdenProduccion.PasarIdPresupuestoDetExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DMMain_FD.fdcGestion.ExecSQL('''
                                  update ordenproduccion_det d set d.id_presu_cab = coalesce ((select coalesce(c.id_cabpres,-1) from presdet c where c.id=d.id_presu_det ),-1)
                                 ''');
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
  end;


end;

procedure TFormOrdenProduccion.pnAdicionalesExit(Sender: TObject);
begin
  inherited;
  pnAdicionales.Visible     :=False;
end;

procedure TFormOrdenProduccion.AgregarExecute(Sender: TObject);
begin
  DatosOProduccion.CDSOProdCab.Close;
  DatosOProduccion.CDSOProdCab.Params.ParamByName('id').Clear;
  DatosOProduccion.CDSOProdCab.Open;

  DatosOProduccion.CDSOProdDet.Close;
  DatosOProduccion.CDSOProdDet.Params.ParamByName('id').Clear;
  DatosOProduccion.CDSOProdDet.Open;

  DatosOProduccion.CDSOProdMov.Close;
  DatosOProduccion.CDSOProdMov.Params.ParamByName('id').Clear;
  DatosOProduccion.CDSOProdMov.Open;

  DatosOProduccion.CDSOProdObs.Close;
  DatosOProduccion.CDSOProdObs.Params.ParamByName('id').Clear;
  DatosOProduccion.CDSOProdObs.Open;

  lbEstado.Caption:='--';

  inherited;
  pnAdicionales.Visible     :=False;
end;

procedure TFormOrdenProduccion.RearmarProduccionExecute(Sender: TObject);
begin
  inherited;
  Modificar.enabled:=True;
  Modificar.Execute;
  DatosOProduccion.CDSOProdCabESTADO.Value:='P';
  DatosOProduccion.CDSOProdCabFECHA_INCIO_PROD.AsDateTime:=Date;
  DatosOProduccion.CDSOProdDet.First;
  while Not(DatosOProduccion.CDSOProdDet.Eof) Do
    begin
      DatosOProduccion.CDSOProdDet.Edit;
      DatosOProduccion.CDSOProdDetESTADO.Value:='P';
      DatosOProduccion.CDSOProdMov.First;
      while Not(DatosOProduccion.CDSOProdMov.Eof) do
        begin
          DatosOProduccion.CDSOProdMov.edit;
          DatosOProduccion.CDSOProdMovESTADO.Value:='P';
          DatosOProduccion.CDSOProdMov.Next;
        end;
      DatosOProduccion.CDSOProdDet.Next;
    end;
  Confirma.Execute;

end;

procedure TFormOrdenProduccion.RecepcionProductoExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  DatosOProduccion.CDSOProdCabESTADO.Value:='F';
  DatosOProduccion.CDSOProdCabFECHA_FINALIZADA.AsDateTime := Date;
  DatosOProduccion.CDSOProdDet.First;
  while Not(DatosOProduccion.CDSOProdDet.Eof) Do
    begin
      DatosOProduccion.CDSOProdDet.Edit;
      DatosOProduccion.CDSOProdDetESTADO.Value:='F';
      DatosOProduccion.CDSOProdMov.First;
      while Not(DatosOProduccion.CDSOProdMov.Eof) do
        begin
          DatosOProduccion.CDSOProdMov.edit;
          DatosOProduccion.CDSOProdMovESTADO.Value:='F';
          DatosOProduccion.CDSOProdMov.Next;
        end;
      DatosOProduccion.CDSOProdDet.Next;
    end;
  Confirma.Execute;
end;

procedure TFormOrdenProduccion.Panel1DblClick(Sender: TObject);
begin
  inherited;
  frOProd.DesignReport;
end;

procedure TFormOrdenProduccion.ToolBar1DblClick(Sender: TObject);
begin
  inherited;
   frOProd.DesignReport;
end;

procedure TFormOrdenProduccion.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  dbgDetalle.Refresh;
  cxGrid1DBTableView1.DataController.Refresh;
end;

end.
