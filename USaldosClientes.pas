UNIT USaldosClientes;

INTERFACE

USES

  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBClient,
  Provider, ExtCtrls, StdCtrls, Buttons, DBGrids,
  frxDBSet, frxClass, ActnList, Spin, Mask, DBCtrls, ImgList,IniFiles,Printers,
  FMTBcd, SqlExpr, IBGenerator, Menus, frxExportText,
  frxExportXLS, frxExportPDF, DB, DataExport, DataToXLS, frxExportRTF, JvExMask,
  JvToolEdit, JvBaseEdits, JvGradient, JvExControls, JvDBLookup,
  JvLabel, Librerias, DBXCommon, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, JvExDBGrids, JvDBGrid, System.Actions, JvFormPlacement,
  JvComponentBase, JvAppStorage, JvAppIniStorage,VirtualUI_sdk, dxSkinsCore,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinscxPCPainter, cxNavigator, cxCheckBox, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList, JvDBControls, frCoreClasses;

TYPE

  TFormSaldosClientes = CLASS(TForm)
    pnSaldos: TPanel;
    frSaldos: TfrxReport;
    frDBSaldos: TfrxDBDataset;
    pnPendientes: TPanel;
    BitBtn1: TBitBtn;
    frDetalles: TfrxReport;
    frDBDetalles: TfrxDBDataset;
    ActionList1: TActionList;
    Imprimir: TAction;
    ImprimirDetalle: TAction;
    TraeSaldos: TAction;
    MuestraDetalle: TAction;
    SellAll: TAction;
    btSeleccion: TButton;
    cbEstado: TComboBox;
    DSSucursales: TDataSource;
    Salir: TAction;
    ImageList1: TImageList;
    DSCobrador: TDataSource;
    SpeedButton3: TSpeedButton;
    EnviarCorreo: TAction;
    XLSSaldo: TDataToXLS;
    frDBDSEmpresa: TfrxDBDataset;
    DSZona: TDataSource;
    dbcGrupo: TJvDBLookupCombo;
    chFiltro: TCheckBox;
    frDBAplicaciones: TfrxDBDataset;
    frDBMovACta: TfrxDBDataset;
    chbCero: TCheckBox;
    frxPDFExport1: TfrxPDFExport;
    SpeedButton1: TSpeedButton;
    EnviarCorreoDetalles: TAction;
    ExportaSaldosXLS: TAction;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    ExportarSaldosXLS1: TMenuItem;
    BitBtn4: TBitBtn;
    DSCPostal: TDataSource;
    DSCategorias: TDataSource;
    btn1: TSpeedButton;
    Incidencias: TAction;
    ibgId: TIBGenerator;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    dbcVendedor: TJvDBLookupCombo;
    dbcZonas: TJvDBLookupCombo;
    dbcPostal: TJvDBLookupCombo;
    dbcCategorias: TJvDBLookupCombo;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel13: TJvLabel;
    RxLabel14: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel11: TJvLabel;
    RxLabel12: TJvLabel;
    pnBotones: TPanel;
    btTraerSaldos: TBitBtn;
    btImprimir: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    btMuestraDetalle: TButton;
    dbcSucursal: TJvDBLookupCombo;
    cbTipoVta: TComboBox;
    JvLabel: TJvLabel;
    lbEstado: TLabel;
    VerComprobante: TAction;
    BitBtn3: TBitBtn;
    LimpiarTemporales: TAction;
    Maximo: TJvCalcEdit;
    Minimo: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    Hasta: TJvDateEdit;
    lbPrinter: TLabel;
    JvLabel3: TJvLabel;
    SpeedButton2: TSpeedButton;
    OpenDialog: TOpenDialog;
    edArchivoReporte: TEdit;
    N1: TMenuItem;
    ConsolidarDeuda: TAction;
    ConsolidarDeuda1: TMenuItem;
    Label2: TLabel;
    cxDBTextEdit1: TDBText;
    DBText1: TDBText;
    JvLabel4: TJvLabel;
    dbcCobrador: TJvDBLookupCombo;
    DSVendedor: TDataSource;
    VerCtaCte: TAction;
    VerCtaCte1: TMenuItem;
    AplicacionesCtaCte: TAction;
    AplicacionesCtaCte1: TMenuItem;
    N2: TMenuItem;
    JvLabel5: TJvLabel;
    edfechaVto: TJvDateEdit;
    chFiltroVto: TCheckBox;
    RadioGroup1: TRadioGroup;
    chInteresBorrar: TCheckBox;
    chbDireccion: TCheckBox;
    dbgMovACta: TJvDBGrid;
    dbgFiltros: TJvDBGrid;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    cxGSaldosDBTableView1: TcxGridDBTableView;
    cxGSaldosLevel1: TcxGridLevel;
    cxGSaldos: TcxGrid;
    btExcel: TButton;
    frDBGarantes: TfrxDBDataset;
    Desde: TJvDateEdit;
    chbDesde: TCheckBox;
    cxGSaldosDBTableView1CODIGO: TcxGridDBColumn;
    cxGSaldosDBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGSaldosDBTableView1NOMBRE: TcxGridDBColumn;
    cxGSaldosDBTableView1DIRECCION_COMERCIAL: TcxGridDBColumn;
    cxGSaldosDBTableView1TELEFONO_COMERCIAL_1: TcxGridDBColumn;
    cxGSaldosDBTableView1CPOSTAL: TcxGridDBColumn;
    cxGSaldosDBTableView1LOCALIDAD: TcxGridDBColumn;
    cxGSaldosDBTableView1ULTIMOPAGO: TcxGridDBColumn;
    cxGSaldosDBTableView1FECHAULTIMACOMPRA: TcxGridDBColumn;
    cxGSaldosDBTableView1SALDO: TcxGridDBColumn;
    cxGSaldosDBTableView1Seleccion: TcxGridDBColumn;
    cxGSaldosDBTableView1NOMBRE_COMPLETO: TcxGridDBColumn;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_VTA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOV: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView2CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2CONCILIADO: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    JvDBStatusLabel1: TJvDBStatusLabel;
    eSaldoCC: TDBEdit;
    eSaldoACta: TDBEdit;
    eSaldoTotal: TDBEdit;
    JvLabel6: TJvLabel;
    cxGSaldosDBTableView1NOMBREVENDEDOR: TcxGridDBColumn;
    cxGSaldosDBTableView1COND_PAGO: TcxGridDBColumn;
    CNombreVendedores: TCheckBox;
    PROCEDURE FormCreate(Sender: TObject);
    PROCEDURE FormClose(Sender: TObject; VAR Action: TCloseAction);
    PROCEDURE pnPendientesDblClick(Sender: TObject);
    PROCEDURE ImprimirExecute(Sender: TObject);
    PROCEDURE ImprimirDetalleExecute(Sender: TObject);
    PROCEDURE TraeSaldosExecute(Sender: TObject);
    PROCEDURE MuestraDetalleExecute(Sender: TObject);
    PROCEDURE SellAllExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgSaldosTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure SalirExecute(Sender: TObject);
    procedure pnSaldosDblClick(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
//    procedure dbgPendientesDrawDataCell(Sender: TObject; const Rect: TRect;
//      Field: TField; State: TGridDrawState);
    procedure dbcGrupoChange(Sender: TObject);
    procedure chbCeroClick(Sender: TObject);
    procedure EnviarCorreoDetallesExecute(Sender: TObject);
    procedure ExportaSaldosXLSExecute(Sender: TObject);
//    procedure dbgSaldosTitleClick(Column: TColumn);
    procedure dbgSaldosDblClick(Sender: TObject);
    procedure IncidenciasExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure LimpiarTemporalesExecute(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ConsolidarDeudaExecute(Sender: TObject);
    procedure VerCtaCteExecute(Sender: TObject);
    procedure AplicacionesCtaCteExecute(Sender: TObject);
    procedure chFiltroVtoClick(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure chbDireccionClick(Sender: TObject);
    procedure cxGSaldosDBTableView1DblClick(Sender: TObject);
    procedure cxGSaldosDBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure btExcelClick(Sender: TObject);
    procedure chbDesdeClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure edfechaVtoAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure edfechaVtoChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CNombreVendedoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    PrListados,PrDefault:Integer;
    Condiciones:String;
    // Variables de Correo ******
    DirCorreo,NombreCuenta,
    AsuntoCorreo,NombreServidor,
    PrNomListados,PrListadoDefecto,
    Clave,Autotenticacion,Remitente:String;
    Puerto:Integer;

    //***************************
    procedure ArmarCondiciones;
  //  procedure Sumar;
    { Public declarations }
  END;

VAR
  FormSaldosClientes: TFormSaldosClientes;
  ID_MovTemporales:Integer;

IMPLEMENTATION

uses UCorreo, UClientesIncidencias, UDMain_FD,
     UMuestraCpbteCtaCteVta, URecibo_2, UAjustesCCClientes_2, UAnulacionRecibos,
     UConsolidacionDeudaClientes, UCtaCteVta, UAplicacionesCCVta_2,
     USaldosClientesXLS, DMSaldosClientes;

{$R *.DFM}

//procedure TFormSaldosClientes.Sumar;
//var aux:Real;
//begin
//  aux:=0;
//  CDSSaldosCliente.First;
//  CDSSaldosCliente.DisableControls;
//  while not(CDSSaldosCliente.Eof) do
//    begin
//      aux:=aux+CDSSaldosClienteSALDO.Value;
//      CDSSaldosCliente.Next;
//    end;
//  CDSSaldosCliente.First;
//  CDSSaldosCliente.EnableControls;
//  lbSaldo.Caption:=FormatFloat(',0.00',aux);
//end;


procedure TFormSaldosClientes.AplicacionesCtaCteExecute(Sender: TObject);
var Enter:Char;
begin
 enter:=#13;
  if Not(Assigned(FormAplicacionesCCVta_2)) then
    FormAplicacionesCCVta_2:=TFormAplicacionesCCVta_2.Create(Self);
  FormAplicacionesCCVta_2.edCodigo.Text:=DatosSaldoClientes.CDSSaldosClienteCODIGO.Value;
  FormAplicacionesCCVta_2.edCodigoKeyPress(Sender,Enter);
  FormAplicacionesCCVta_2.Show;
end;

procedure TFormSaldosClientes.ArmarCondiciones;
begin
  Condiciones:='';
  if Not( DatosSaldoClientes.CDSFiltroDet.IsEmpty) then
  begin
    DatosSaldoClientes.CDSFiltroDet.First;
    while not(DatosSaldoClientes.CDSFiltroDet.Eof) do
      begin
        if Condiciones='' Then
          condiciones:='(m.id_comprobante='+''+DatosSaldoClientes.CDSFiltroDetID_CPBTE.AsString+''+') '
        else
          condiciones:=Condiciones+' or (m.id_comprobante='+''+DatosSaldoClientes.CDSFiltroDetID_CPBTE.AsString+''+') ';
        DatosSaldoClientes.CDSFiltroDet.Next;
      end;
    Condiciones:=' and ('+condiciones+')';
  end;
end;

procedure TFormSaldosClientes.btExcelClick(Sender: TObject);
begin
  case cbTipoVta.ItemIndex of
    0:  FormSaldosClientesXLS.TipoVta  := '*';
    1:  FormSaldosClientesXLS.TipoVta  := 'M';
    2:  FormSaldosClientesXLS.TipoVta  := 'S';
  end;
  FormSaldosClientesXLS.Hasta          := Hasta.Date;
  FormSaldosClientesXLS.Minimo         := Minimo.Value;
  FormSaldosClientesXLS.Maximo         := Maximo.Value;
  FormSaldosClientesXLS.Condiciones    := Condiciones;


  FormSaldosClientesXLS.Visible:=Not(FormSaldosClientesXLS.Visible);

  IF FormSaldosClientesXLS.Visible=True Then
    FormSaldosClientesXLS.BringToFront;
end;

PROCEDURE TFormSaldosClientes.FormCreate(Sender: TObject);
Var
ArchivoIni        :TIniFile;
I:Integer;
ClaveAux:String;
BEGIN
  AutoSize := False;

  IF NOT (Assigned(DatosSaldoClientes)) THEN
    DatosSaldoClientes := TDatosSaldoClientes.Create(Self);

  DatosSaldoClientes.CDSSucursal.Open;
  DatosSaldoClientes.CDSVendedor.Open;
  DatosSaldoClientes.CDSCobrador.Open;
  DatosSaldoClientes.CDSZona.Open;
  DatosSaldoClientes.CDSCpostal.Open;
  DatosSaldoClientes.CDSCategorias.Open;
  cbEstado.ItemIndex:=0;
  dbcSucursal.LookupSource.DataSet.First;
  dbcVendedor.LookupSource.DataSet.First;
  dbcZonas.LookupSource.DataSet.First;
  dbcPostal.LookupSource.DataSet.First;
  dbcCategorias.LookupSource.DataSet.First;
  //lbSaldo.Caption:='0.00';
  Hasta.Date:=Date;

  ArchivoIni            := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  //Impresoras
  PrListados            :=ArchivoIni.ReadInteger('Impresoras', 'Listados', printer.PrinterIndex);
  PrNomListados         :=ArchivoIni.ReadString('Impresoras', 'Listados', '');
  PrListadoDefecto      :=ArchivoIni.ReadString('Impresoras', 'ListadoDefecto','N');
  edArchivoReporte.Text :=ArchivoIni.ReadString('LstSaldo', 'Archivo','LstSaldoClienteDetalles.fr3');
  Minimo.Value          := ArchivoIni.ReadFloat('SaldoCC', 'Minimo', 0);
  Maximo.Value          := ArchivoIni.ReadFloat('SaldoCC', 'Maximo', 100000);
  // Sucursal
  dbcSucursal.KeyValue  :=ArchivoIni.ReadInteger('sucursal', 'sucursal', -1);
  // Tomo la Impresora por defecto.
  prDefault             :=printer.PrinterIndex;
  // Opciones de Correo ***********
  DirCorreo             := ArchivoIni.ReadString('Correo', 'DirCorreo', '');
  NombreCuenta          := ArchivoIni.ReadString('Correo', 'NombreCuenat', '');
  AsuntoCorreo          := ArchivoIni.ReadString('Correo', 'AsuntoCorreo', '');
  NombreServidor        := ArchivoIni.ReadString('Correo', 'NombreServido', '');
  Clave                 := ArchivoIni.ReadString('Correo', 'Clave', '');
  Autotenticacion       := ArchivoIni.ReadString('Correo', 'Autenticacion', 'S');
  Remitente             := ArchivoIni.ReadString('Correo', 'Remitente', '');
  Puerto                := ArchivoIni.ReadInteger('Correo', 'puerto', 25);
// Desencripto la clave
// claveAux:='';
//  if clave<>'' Then
//  for I :=2 to length(Clave) do
//    begin
//      ClaveAux:=ClaveAux+Chr(255-Ord(clave[i]));
//    end;
//  Clave:=ClaveAux;
  DatosSaldoClientes.CDSSaldosCliente.IndexDefs.Clear;

  ArchivoIni.Free;

  DatosSaldoClientes.CDSEmpresa.Open;

  DatosSaldoClientes.CDSFiltroCab.Close;
  DatosSaldoClientes.CDSFiltroCab.Open;
  DatosSaldoClientes.CDSFiltroCab.First;

  ID_MovTemporales  := -1; // para saber que no se hizo ninguna consulta

  lbEstado.Caption  := 'Estado';
  DatosSaldoClientes.Punitorio := DatosSaldoClientes.CDSEmpresaPUNITORIOS.ASFLoat;

  if Not(Assigned(FormSaldosClientesXLS)) then
    FormSaldosClientesXLS:=TFormSaldosClientesXLS.Create(self);
  FormSaldosClientesXLS.Visible:=False;

  pnPendientes.Visible     := False;
  if FormSaldosClientes<>nil then
    FormSaldosClientes.Width := 740;
  Width:=740;
  OpenDialog.InitialDir    := DMMain_FD.PathReportesLst;

  AutoSize:=False;
END;

procedure TFormSaldosClientes.FormActivate(Sender: TObject);
begin
  if FormSaldosClientes<>nil then
    if pnPendientes.Visible=False then
      FormSaldosClientes.Width := 720;
end;

PROCEDURE TFormSaldosClientes.FormClose(Sender: TObject;
  VAR Action: TCloseAction);
var ArchivoIni        :TIniFile;
BEGIN
  // BEGIN
//      FormSaldosClientes.Width    := 740;
//      pnPendientes.Visible        := False;
//      btMuestraDetalle.Caption    := '>>';
//      FormSaldosClientes.Position := poDesktopCenter;
//      Label1.Caption              :='Detalle';
//    END;


  if ID_MovTemporales<>-1 then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosSaldoClientes.spBorrarTemporales.Close;
        DatosSaldoClientes.spBorrarTemporales.ParamByName('id').Value:=ID_MovTemporales;
        DatosSaldoClientes.spBorrarTemporales.ExecProc;
        DatosSaldoClientes.spBorrarTemporales.Close;
        DMMain_FD.fdcGestion.Commit;

      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo borrar los temporales...');
      end;
    end;
  DatosSaldoClientes.CDSSaldosCliente.Close;
  DatosSaldoClientes.CDSMovCC.Close;
  DatosSaldoClientes.CDSEmpresa.Close;
  DatosSaldoClientes.CDSSucursal.Close;
  DatosSaldoClientes.CDSVendedor.Close;
  DatosSaldoClientes.CDSCobrador.Close;
  DatosSaldoClientes.CDSCpostal.Close;
  DatosSaldoClientes.CDSCategorias.Close;
  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  ArchivoIni.WriteString('LstSaldo', 'Archivo',edArchivoReporte.Text);
  FreeAndNil(DatosSaldoClientes);
  Action := caFree;
END;

PROCEDURE TFormSaldosClientes.pnPendientesDblClick(Sender: TObject);
BEGIN
  frDetalles.DesignReport;
END;

PROCEDURE TFormSaldosClientes.ImprimirExecute(Sender: TObject);
BEGIN

  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      DatosSaldoClientes.CDSSaldosCliente.DisableControls;

      frSaldos.PrintOptions.Printer:=PrNomListados;
      frSaldos.SelectPrinter;

      frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\SaldosCCVta.fr3');

      frSaldos.PrintOptions.Printer:=PrNomListados;
      frSaldos.SelectPrinter;
      lbPrinter.Caption:=PrNomListados;

      frSaldos.Variables['hasta']   :=''''+Hasta.Text+'''';
      frSaldos.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
      frSaldos.Variables['Zona']    :=''''+dbcZonas.Text+'''';
      frSaldos.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
      frSaldos.Variables['Grupo']   :=''''+dbcGrupo.Text+'''';
      frSaldos.Variables['Ver_x']   :=''''+IntToStr(RadioGroup1.ItemIndex)+'''';
     // frSaldos.PrepareReport();
      frSaldos.ShowReport;
      DatosSaldoClientes.CDSSaldosCliente.First;
      DatosSaldoClientes.CDSSaldosCliente.EnableControls;
    END
  ELSE
    ShowMessage('No hay datos a listar');

END;

procedure TFormSaldosClientes.IncidenciasExecute(Sender: TObject);
begin
  if Not(Assigned(formClientesIncidencias)) then
    FormClientesIncidencias:=TFormClientesIncidencias.Create(Self);
  FormClientesIncidencias.Codigo:=DatosSaldoClientes.CDSSaldosClienteCODIGO.Value;
  FormClientesIncidencias.Show;
end;


procedure TFormSaldosClientes.LimpiarTemporalesExecute(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosSaldoClientes.spBorrarTemporales.Close;
    DatosSaldoClientes.spBorrarTemporales.ParamByName('id').Value:= -1;
    DatosSaldoClientes.spBorrarTemporales.ExecProc;
    DatosSaldoClientes.spBorrarTemporales.Close;
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo borrar los temporales...');
  end;

end;

PROCEDURE TFormSaldosClientes.ImprimirDetalleExecute(Sender: TObject);
BEGIN
//  if CDSSaldosCliente.IsEmpty then
//    Raise Exception.Create('No hay de atos para imprimir...');

//  DatosSaldoClientes.CDSMovCC.Filter:='FEFECHAVTO<='+DateToStr(Hasta.Date);
 // DatosSaldoClientes.CDSMovCC.Filtered:=True;

  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      DatosSaldoClientes.CDSSaldosCliente.First;
      DatosSaldoClientes.CDSMovCC.FindFirst;

      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
      frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edArchivoReporte.Text);

      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;

      frDetalles.Variables['Vendedor'] :=''''+dbcVendedor.Text+'''';
      frDetalles.Variables['Zona']     :=''''+dbcZonas.Text+'''';
      frDetalles.Variables['Sucursal'] :=''''+dbcSucursal.Text+'''';
      frDetalles.Variables['Grupo']    :=''''+dbcGrupo.Text+'''';
      frDetalles.Variables['Localidad']:=''''+dbcPostal.Text+'''';
      frDetalles.Variables['Ver_x']:=''''+IntToStr(RadioGroup1.ItemIndex)+'''';

      frDetalles.ShowReport;
      DatosSaldoClientes.CDSSaldosCliente.First;
      DatosSaldoClientes.CDSMovCC.EnableControls;
    END
  ELSE
    ShowMessage('No hay datos a listar');

//  wwCDSSaldosCliente.EnableControls;
END;

PROCEDURE TFormSaldosClientes.TraeSaldosExecute(Sender: TObject);
var
ArchivoIni        :TIniFile;
Campo:String;
BEGIN
   DatosSaldoClientes.CDSSaldosCliente.IndexDefs.Clear;
   DatosSaldoClientes.CDSSaldosCliente.IndexFieldNames:='';
   DatosSaldoClientes.CDSSaldosCliente.IndexName:='';
  If DatosSaldoClientes.CDSMovCC.Active then
    DatosSaldoClientes.CDSMovCC.Close;
  if DatosSaldoClientes.CDSSaldosCliente.Active Then
    DatosSaldoClientes.CDSSaldosCliente.Close;
  if DatosSaldoClientes.CDSMovACta.Active then
    DatosSaldoClientes.CDSMovACta.Close;
  if DatosSaldoClientes.CDSMovAplicacion.Active then
    DatosSaldoClientes.CDSMovAplicacion.Close;

  DatosSaldoClientes.QUltimoMovTemporal.Close;
  DatosSaldoClientes.QUltimoMovTemporal.Open;
  if DatosSaldoClientes.QUltimoMovTemporal.Fields[0].AsInteger>0 then
    ID_MovTemporales:=DatosSaldoClientes.QUltimoMovTemporal.Fields[0].AsInteger
  else
    ID_MovTemporales:= -1;
  DatosSaldoClientes.QUltimoMovTemporal.Close;

  if Not(chbDesde.Checked) then
    Desde.Date:=encodeDate(1900,1,1);

  lbEstado.Caption:='Limpiando tabla Temporal....';
  Sleep(1);
  Application.ProcessMessages;
  if (ID_MovTemporales <> -1 ) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosSaldoClientes.spBorrarTemporales.Close;
        DatosSaldoClientes.spBorrarTemporales.ParamByName('id').Value:=ID_MovTemporales;
        DatosSaldoClientes.spBorrarTemporales.ExecProc;
        DatosSaldoClientes.spBorrarTemporales.Close;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo borrar los temporales...');
      end;
    end;

  ID_MovTemporales:=ibgId.IncrementFD(1);

  Sleep(1);
  lbEstado.Caption:='Preparando Tabla de Consulta....';
  Application.ProcessMessages;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosSaldoClientes.spGeneraMov.Close;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_id').Value        :=ID_MovTemporales;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_sucursal').Value  :=dbcSucursal.Value;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_zona').Value      :=dbcZonas.Value;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_vendedor').Value  :=dbcVendedor.Value;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_cpostal').Value   :=dbcPostal.Value;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_categoria').Value :=dbcCategorias.Value;
    DatosSaldoClientes.spGeneraMov.ParamByName('p_cobrador').Value  :=dbcCobrador.Value;

    if cbEstado.ItemIndex=0 Then
      DatosSaldoClientes.spGeneraMov.ParamByName('p_activo').Value  := '*'
    else
      if cbEstado.ItemIndex=1 Then
        DatosSaldoClientes.spGeneraMov.ParamByName('p_activo').Value  := 'S'
      else
        if cbEstado.ItemIndex=2 Then
          DatosSaldoClientes.spGeneraMov.ParamByName('p_activo').Value  := 'N'
        else
          if cbEstado.ItemIndex=3 Then
            DatosSaldoClientes.spGeneraMov.ParamByName('p_activo').Value  := 'G'
          else
            if cbEstado.ItemIndex=4 Then
              DatosSaldoClientes.spGeneraMov.ParamByName('p_activo').Value  := 'I';
    DatosSaldoClientes.spGeneraMov.ExecProc;
    DatosSaldoClientes.spGeneraMov.Close;
    DMMain_FD.fdcGestion.Commit;
   except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('Fallo la preparacion de las tablas para la consulta');
  end;

  Condiciones:='';
  if chFiltro.Checked then
    ArmarCondiciones;

  lbEstado.Caption:='Generando Consulta....';
  Sleep(1);

  Application.ProcessMessages;

  DatosSaldoClientes.CDSMovCC.Close;
  DatosSaldoClientes.CDSMovCC.IndexDefs.Clear;
  DatosSaldoClientes.CDSMovCC.CommandText   :='';
  DatosSaldoClientes.CDSMovCC.IndexName     :='';


  DatosSaldoClientes.CDSMovCC_2.Close;
  DatosSaldoClientes.CDSMovCC_2.IndexDefs.Clear;
  DatosSaldoClientes.CDSMovCC_2.IndexName   :='';
  DatosSaldoClientes.CDSMovCC_2.CommandText :='';


//  DatosSaldoClientes.CDSMovCC.CommandText:= 'select m.codigo,m.fechavta,m.fechavto,m.detalle,m.debe,m.haber,'+
//                                            'm.saldo,m.tipo_vta, m.id_movccvta,m.tipocpbte,m.clasecpbte,m.id_cpbte,m.razon_social,m.nombre,m.cuota from MOVCCVTA_TEMPORAL  m '+
//                                            'where ( m.tipo_vta = :tipovta  or  :tipovta = ''*'' ) and '+
//                                            '( m.saldo>0 ) and M.fechavta <= :Hasta and m.id =:id '+Condiciones +
//                                            ' order by m.fechavta ';
//
//  DatosSaldoClientes.CDSMovCC_2.CommandText:= 'select m.codigo ,m.razon_social,m.nombre, sum(m.saldo) as Saldo from MOVCCVTA_TEMPORAL  m '+
//                                              'where ( m.tipo_vta = :tipovta  or  :tipovta = ''*'' ) and '+
//                                              '( m.saldo>0 ) and M.fechavta <= :Hasta and m.id =:id '+Condiciones +
//                                              ' group by m.codigo ,m.razon_social,m.nombre '+
//                                              ' order by m.codigo ';
//************************************************************************************************
//   if chbDesde.Checked then
     begin
       DatosSaldoClientes.CDSMovCC.CommandText  := 'select m.codigo,m.fechavta,m.fechavto,m.detalle,m.debe,m.haber,'+
                                                   'm.saldo,m.tipo_vta, m.id_movccvta,m.tipocpbte,m.clasecpbte,m.id_cpbte,m.razon_social,m.nombre,m.cuota from MOVCCVTA_TEMPORAL  m '+
                                                   'where ( m.tipo_vta = :tipovta  or  :tipovta = ''*'' ) and '+
                                                   '( m.saldo>0 ) and (M.fechavta <= :Hasta  and M.fechavta >= :Desde) and m.id =:id '+Condiciones +
                                                   ' order by m.codigo,m.fechavta desc ';

       DatosSaldoClientes.CDSMovCC_2.CommandText:= 'select m.codigo ,m.razon_social,m.nombre, sum(m.saldo) as Saldo from MOVCCVTA_TEMPORAL  m '+
                                                   'where ( m.tipo_vta = :tipovta  or  :tipovta = ''*'' ) and '+
                                                   '( m.saldo>0 ) and (M.fechavta <= :Hasta  and M.fechavta >= :Desde) and m.id =:id '+Condiciones +
                                                   ' group by m.codigo ,m.razon_social,m.nombre '+
                                                   ' order by m.codigo desc ';
     end;
//************************************************************************************************

  DatosSaldoClientes.CDSSaldosCliente.Close;
  DatosSaldoClientes.CDSSaldosCliente.CommandText:='';
  DatosSaldoClientes.CDSSaldosCliente.Params.Clear;
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftFixedChar,'tipovta',ptInput);
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftDate,'hasta',ptInput);
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftDate,'Desde',ptInput);
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftInteger,'id',ptInput);
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftFloat,'menor',ptInput);
  DatosSaldoClientes.CDSSaldosCliente.Params.CreateParam(ftFloat,'mayor',ptInput);

  // a continuacion query adaptada para traer condicion de pago por defecto/ o primer cond de pago registrada

  DatosSaldoClientes.CDSSaldosCliente.CommandText:=

           ' with addressesXclients as ( ' +
           ' SELECT ' +
               ' c.codigo as client_code, ' +
               ' fp.detalle as direccion, ' +
               ' cv.por_defecto as Xdefecto ' +
             ' FROM ' +
               ' clientes c ' +
             ' LEFT JOIN condventa cv ON cv.codigocliente = c.codigo '  +
             ' LEFT JOIN f_pago fp ON fp.codigo = cv.codigopago), '  +
           ' clienteXcondP as( ' +
               ' SELECT ' +
               ' c.codigo AS codigo_cliente, '  +
               ' c.nombre AS nombre_cliente, '  +
               ' COALESCE( ' +
                   ' (SELECT a.direccion '  +
                    ' FROM addressesXclients a '  +
                    ' WHERE a.client_code = c.codigo AND a.Xdefecto = ''S'' ' +
                    ' FETCH FIRST 1 ROW ONLY), ' +
                   ' (SELECT a.direccion ' +
                    ' FROM addressesXclients a '  +
                    ' WHERE a.client_code = c.codigo ' +
                    ' FETCH FIRST 1 ROW ONLY), ' +
                    ' ''-'') AS cond_pago ' +
           ' FROM ' +
               ' clientes c) ' +
          'select m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad, '+
                'm.TELEFONO_COMERCIAL_2, m.VENDEDOR, v.nombre as nombreVendedor, m.ZONA, m.CORREOELECTRONICO, m.ULTIMOPAGO, m.ACTIVO,'+
                'm.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,(SUM(m.DEBE)-SUM(m.HABER)) AS saldo,m.cuit,m.telediscado,m.celular,m.nombre,cl.nombre_completo ,cond_pago from movccvta_temporal m '+
           ' left join clientes cl on cl.codigo=m.codigo '+
           ' left join personal v on v.codigo = m.vendedor ' +
           ' left join clienteXcondP tp on tp.codigo_cliente=cl.codigo ' +
           ' WHERE (m.tipo_vta = :tipovta or :tipovta = ''*'' ) and (M.fechavta <= :Hasta  and M.fechavta >= :Desde) and  m.id=:id '+Condiciones+
           ' group by '+
             ' m.CODIGO, m.RAZON_SOCIAL, m.DIRECCION_COMERCIAL, m.TELEFONO_COMERCIAL_1,m.cpostal,m.localidad, '+
             ' m.TELEFONO_COMERCIAL_2, m.VENDEDOR, m.ZONA, m.CORREOELECTRONICO, m.ULTIMOPAGO, m.ACTIVO,'+
             ' m.LIMITE_CREDITO, m.FECHAULTIMACOMPRA,m.CUIT,m.telediscado,m.celular,m.nombre,cl.nombre_completo ,v.nombre , cond_pago '+
           ' having ((SUM(m.DEBE)-SUM(m.HABER))>= :menor) and ((SUM(m.DEBE)-SUM(m.HABER))<=:mayor) and ((SUM(m.DEBE)-SUM(m.HABER))<> 0) ';


  case cbTipoVta.ItemIndex of
    0:  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('tipoVta').Value  :='*';
    1:  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('tipoVta').Value  :='M';
    2:  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('tipoVta').Value  :='S';
  end;
  // Traigo todo los movimientos, y filtro solo las facturas , echo el 25/09/2015

  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('hasta').Value :=Hasta.Date;
  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('Desde').Value :=Desde.Date;

  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('id').Value    :=ID_MovTemporales;
  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('menor').Value :=Minimo.Value;
  DatosSaldoClientes.CDSSaldosCliente.Params.ParamByName('mayor').Value :=Maximo.Value;
  DatosSaldoClientes.CDSSaldosCliente.IndexDefs.Clear;
  DatosSaldoClientes.CDSSaldosCliente.Open;

  DatosSaldoClientes.CDSMovCC.Close;
  DatosSaldoClientes.CDSMovCC.MasterFields   :='';
  DatosSaldoClientes.CDSMovCC.IndexFieldNames:='';

  case cbTipoVta.ItemIndex of
    0:  DatosSaldoClientes.CDSMovCC.Params.ParamByName('tipovta').Value  :='*';
    1:  DatosSaldoClientes.CDSMovCC.Params.ParamByName('tipovta').Value  :='M';
    2:  DatosSaldoClientes.CDSMovCC.Params.ParamByName('tipovta').Value  :='S';
  end;

  DatosSaldoClientes.CDSMovCC.Params.ParamByName('id').AsInteger     := ID_MovTemporales;
  DatosSaldoClientes.CDSMovCC.Params.ParamByName('hasta').AsDate     := Hasta.Date;
  DatosSaldoClientes.CDSMovCC.Params.ParamByName('Desde').AsDate     := Desde.Date;


  DatosSaldoClientes.CDSMovCC.MasterSource   := DatosSaldoClientes.DSSaldosClientes;
  DatosSaldoClientes.CDSMovCC.MasterFields   :='codigo';
  DatosSaldoClientes.CDSMovCC.IndexFieldNames:='codigo;fechavta;tipocpbte;detalle';

  DatosSaldoClientes.CDSMovCC.Open;

  case cbTipoVta.ItemIndex of
    0:  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('tipovta').Value  :='*';
    1:  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('tipovta').Value  :='M';
    2:  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('tipovta').Value  :='S';
  end;

  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('id').AsInteger     := ID_MovTemporales;
  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('hasta').AsDate     := Hasta.Date;
  DatosSaldoClientes.CDSMovCC_2.Params.ParamByName('Desde').AsDate     := Desde.Date;

  DatosSaldoClientes.CDSMovCC_2.Open;


  DatosSaldoClientes.CDSMovAplicacion.MasterSource   := nil;
  DatosSaldoClientes.CDSMovAplicacion.MasterFields   := '';
  DatosSaldoClientes.CDSMovAplicacion.IndexFieldNames:= '';


  DatosSaldoClientes.CDSMovAplicacion.Close;
//  DatosSaldoClientes.CDSMovAplicacion.Params.ParamByName('Id').Value := DatosSaldoClientes.CDSMovCCID_MOVCCVTA.Value;


  DatosSaldoClientes.CDSMovAplicacion.MasterSource   := DatosSaldoClientes.DSMovCC;
  DatosSaldoClientes.CDSMovAplicacion.MasterFields   := 'ID_MOVCCVTA';
  DatosSaldoClientes.CDSMovAplicacion.IndexFieldNames:= 'ID_MOVCCVTA';

  DatosSaldoClientes.CDSMovAplicacion.Open;

  DatosSaldoClientes.CDSMovACta.Close;
  DatosSaldoClientes.CDSMovACta.MasterFields    := '';
  DatosSaldoClientes.CDSMovACta.IndexFieldNames := '';
  DatosSaldoClientes.CDSMovACta.CommandText     := '';

  if Condiciones<>'' then
    DatosSaldoClientes.CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal m where  m.id='+
                                                 IntToStr(ID_MovTemporales)+' and m.Importe<>0 '+
                                                 Condiciones +' order by m.fecha,m.numerocpbte '
  else
    DatosSaldoClientes.CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal m where m.id='+IntToStr(ID_MovTemporales)+
                                                 ' and m.Importe<>0 '+
                                                 ' order by m.fecha,m.numerocpbte ';

//  if chbDesde.Checked then
//    begin
//      DatosSaldoClientes.CDSMovACta.Params.CreateParam(ftDate,'Desde',ptInput);
//
//      if Condiciones<>'' then
//        DatosSaldoClientes.CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal m where m.cliente=:codigo and m.fecha >= :desde and m.id='+IntToStr(ID_MovTemporales)+' and m.Importe<>0 '+
//                                                     Condiciones +
//                                                     ' order by m.fecha,m.numerocpbte '
//      else
//        DatosSaldoClientes.CDSMovACta.CommandText:=  ' select m.* from MovACtaCCVta_temporal m where m.cliente=:codigo and m.fecha >= :desde and m.id='+IntToStr(ID_MovTemporales)+' and m.Importe<>0 '+
//                                                     ' order by m.fecha,m.numerocpbte ';
//
//    end;

//  DatosSaldoClientes.CDSMovACta.Params.ParamByName('codigo').AsString  := ''+DatosSaldoClientes.CDSSaldosClienteCODIGO.AsString+'';
//  if chbDesde.Checked then
//    DatosSaldoClientes.CDSMovACta.Params.ParamByName('Desde').AsDate     := Desde.Date;

  DatosSaldoClientes.CDSMovACta.MasterSource   := DatosSaldoClientes.DSSaldosClientes;
  DatosSaldoClientes.CDSMovACta.MasterFields   :='Codigo';
  DatosSaldoClientes.CDSMovACta.IndexFieldNames:='Cliente;Fecha';
  DatosSaldoClientes.CDSMovACta.Open;

  DatosSaldoClientes.CDSGarantes.MasterSource   := DatosSaldoClientes.DSSaldosClientes;
  DatosSaldoClientes.CDSGarantes.MasterFields   := 'Codigo';
  DatosSaldoClientes.CDSGarantes.IndexFieldNames:= 'Codigocliente';
  DatosSaldoClientes.CDSGarantes.Open;
 // Sumar;

  btSeleccion.Tag     := 0;
  btSeleccion.Caption := 'Selccionar';

  DatosSaldoClientes.CDSSaldosCliente.AddIndex('SALDO', 'SALDO', [], 'SALDO'); // Descendente
  DatosSaldoClientes.CDSSaldosCliente.IndexName := 'SALDO';

  lbEstado.Caption:='';

  btSeleccion.Click;

  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
  campo            := ArchivoIni.ReadString('Orden', 'Orden', '');
//  ArchivoIni.Free;
//  if campo<>'' then
//    begin
//      with dbgSaldos.DataSource.DataSet as TClientDataSet do
//        if IndexFieldNames <> Campo then
//          IndexFieldNames := Campo // Ascendente
//        else
//        begin
//          AddIndex(Campo, Campo, [], Campo); // Descendente
//          IndexName := Campo;
//        end;
//    end;

  cxGSaldosDBTableView1RAZON_SOCIAL.Visible   :=RadioGroup1.ItemIndex=0;
  cxGSaldosDBTableView1NOMBRE.Visible         :=RadioGroup1.ItemIndex=1;
  cxGSaldosDBTableView1NOMBRE_COMPLETO.Visible:=RadioGroup1.ItemIndex=2;
  DatosSaldoClientes.CDSSaldosCliente.Next;
  DatosSaldoClientes.CDSSaldosCliente.Prior;
END;

procedure TFormSaldosClientes.VerComprobanteExecute(Sender: TObject);
begin
  if (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='FC') or
     (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='NC') or
     (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
        FormMuestraCpbteCtaCteVta    := TFormMuestraCpbteCtaCteVta.Create(self);
      FormMuestraCpbteCtaCteVta.id   := DatosSaldoClientes.CDSMovCCID_CPBTE.Value;
      FormMuestraCpbteCtaCteVta.Tipo := DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString;
      FormMuestraCpbteCtaCteVta.ShowModal;
    end
  else
    if (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='RC') Then
      begin
       IF NOT (Assigned(FormRecibo_2)) THEN
          FormRecibo_2:= TFormRecibo_2.Create(self);
        FormRecibo_2.DatoNew    := DatosSaldoClientes.CDSMovCCID_CPBTE.AsString;
        FormRecibo_2.TipoCpbte  := DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString;
        FormRecibo_2.Recuperar.Execute;
        FormRecibo_2.Show;
      end
    else
      if (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjustesCCVenta_2)) THEN
            FormAjustesCCVenta_2:= TFormAjustesCCVenta_2.Create(Application);
          FormAjustesCCVenta_2.DatoNew  := DatosSaldoClientes.CDSMovCCID_CPBTE.AsString;
          FormAjustesCCVenta_2.TipoCpbte:= DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString;
          FormAjustesCCVenta_2.Recuperar.Execute;
          FormAjustesCCVenta_2.Show;
        end
      else
        if (DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString='XR') Then
          begin
            IF NOT (Assigned(FormAnulacionRecibos)) THEN
              FormAnulacionRecibos:= TFormAnulacionRecibos.Create(Application);
            FormAnulacionRecibos.DatoNew  := DatosSaldoClientes.CDSMovCCID_CPBTE.AsString;
            FormAnulacionRecibos.TipoCpbte:= DatosSaldoClientes.CDSMovCCTIPOCPBTE.AsString;
            FormAnulacionRecibos.Recuperar.Execute;
            FormAnulacionRecibos.Show;
        end;

end;

procedure TFormSaldosClientes.VerCtaCteExecute(Sender: TObject);
var enter:char;
begin
  enter:=#13;
  if Not(Assigned(FormCtaCteVta)) then
    FormCtaCteVta:=TFormCtaCteVta.Create(Self);
  FormCtaCteVta.ceCliente.Text:=DatosSaldoClientes.CDSSaldosClienteCODIGO.Value;
  FormCtaCteVta.ceClienteKeyPress(Sender,Enter);
  FormCtaCteVta.Show;

end;


procedure TFormSaldosClientes.dbcGrupoChange(Sender: TObject);
begin
  DatosSaldoClientes.CDSFiltroDet.Close;
  DatosSaldoClientes.CDSFiltroDet.Params.ParamByName('id').Value:=dbcGrupo.KeyValue;
  DatosSaldoClientes.CDSFiltroDet.Open;
end;

//procedure TFormSaldosClientes.dbgPendientesDrawDataCell(Sender: TObject;
//  const Rect: TRect; Field: TField; State: TGridDrawState);
//begin
//  if Moneda3D(' ','0.00', DatosSaldoClientes.CDSMovCCSALDO.AsFloat)<>Moneda3d(' ','0.00',DatosSaldoClientes.CDSMovCCDEBE.AsFloat) then
//    dbgPendientes.Canvas.Font.Style:=[fsBold]
//  else
//    dbgPendientes.Canvas.Font.Style:=[];
//
// dbgPendientes.DefaultDrawDataCell(Rect,Field,[]);
//
//
//end;

PROCEDURE TFormSaldosClientes.MuestraDetalleExecute(Sender: TObject);
BEGIN
  IF pnPendientes.Visible = False THEN
    BEGIN
      FormSaldosClientes.Width    := FormSaldosClientes.Width+470;
      pnPendientes.Visible        := True;
      btMuestraDetalle.Caption    := '<<';
      FormSaldosClientes.Position := poDesktopCenter;
      Label1.Caption              :='Atras';
    END
  ELSE
    BEGIN
      FormSaldosClientes.Width    := 740;
      pnPendientes.Visible        := False;
      btMuestraDetalle.Caption    := '>>';
      FormSaldosClientes.Position := poDesktopCenter;
      Label1.Caption              :='Detalle';
    END;
END;

PROCEDURE TFormSaldosClientes.SellAllExecute(Sender: TObject);
BEGIN
  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      IF btSeleccion.tag = 0 THEN
        BEGIN
          btSeleccion.Tag := 1;
          btSeleccion.Caption := 'Deseleccionar';
        END
      ELSE
        BEGIN
          btSeleccion.Tag := 0;
          btSeleccion.Caption := 'Seleccionar';
        END;
    //  DatosSaldoClientes.CDSSaldosCliente.AfterScroll :=nil;
      DatosSaldoClientes.CDSSaldosCliente.First;
      DatosSaldoClientes.CDSSaldosCliente.DisableControls;
      WHILE NOT (DatosSaldoClientes.CDSSaldosCliente.Eof) DO
        BEGIN
          DatosSaldoClientes.CDSSaldosCliente.Edit;
          DatosSaldoClientes.CDSSaldosClienteSeleccion.Value := 1=btSeleccion.Tag;
          DatosSaldoClientes.CDSSaldosCliente.Next;
        END;
    //  DatosSaldoClientes.CDSSaldosCliente.AfterScroll := DatosSaldoClientes.CDSSaldosClienteAfterScroll;
      DatosSaldoClientes.CDSSaldosCliente.EnableControls;
      DatosSaldoClientes.CDSSaldosCliente.First;

    END
  ELSE
    ShowMessage('No hay datos a Seleccionar');
END;

procedure TFormSaldosClientes.SpeedButton2Click(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edArchivoReporte.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edArchivoReporte.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edArchivoReporte.Text:='Sin Archivo';
end;

//procedure TFormSaldosClientes.dbgSaldosTitleClick(Column: TColumn);
//var campo:string;
//ArchivoIni        :TIniFile;
//begin
//  try
//    Campo := Column.FieldName;
//    with dbgSaldos.DataSource.DataSet as TClientDataSet do
//      if IndexFieldNames <> Campo then
//        IndexFieldNames := Campo // Ascendente
//      else
//      begin
//        AddIndex(Campo, Campo, [], Campo); // Descendente
//        IndexName := Campo;
//      end;
//  except // Para que no salte una excepción si la columna es un campo calculado.
//  end;
//  ArchivoIni       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.NombreIni);
//  ArchivoIni.Free;
//end;

procedure TFormSaldosClientes.FormDestroy(Sender: TObject);
begin
  FormSaldosClientes:=nil;
end;

procedure TFormSaldosClientes.FormResize(Sender: TObject);
begin
  if FormSaldosClientes<>nil then
    if FormSaldosClientes.Width>1200 then
      FormSaldosClientes.Width:=1200;
end;

procedure TFormSaldosClientes.dbgSaldosTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  DatosSaldoClientes.CDSSaldosCliente.IndexFieldNames:=AFieldName;
  if AFieldName='SALDO' Then
    DatosSaldoClientes.CDSSaldosCliente.IndexName:='SaldoNdx';
end;

procedure TFormSaldosClientes.edfechaVtoAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  ShowMessage('Cambio de Fecha')
end;

procedure TFormSaldosClientes.edfechaVtoChange(Sender: TObject);
begin
  DatosSaldoClientes.CDSMovCC.Filtered:=False;
  DatosSaldoClientes.CDSMovCC.Filter:='FECHAVTO <= '+''''+DateToStr(edfechaVto.Date)+'''';
  DatosSaldoClientes.CDSMovCC.Filtered:=chFiltroVto.Checked;
end;

procedure TFormSaldosClientes.SalirExecute(Sender: TObject);
begin
  Close;
end;

procedure TFormSaldosClientes.pnSaldosDblClick(Sender: TObject);
begin
  frSaldos.DesignReport;
end;

procedure TFormSaldosClientes.RadioGroup1Click(Sender: TObject);
begin
  cxGSaldosDBTableView1RAZON_SOCIAL.Visible    := RadioGroup1.ItemIndex=0;
  cxGSaldosDBTableView1NOMBRE.Visible          := RadioGroup1.ItemIndex=1;
  cxGSaldosDBTableView1NOMBRE_COMPLETO.Visible := RadioGroup1.ItemIndex=2;
end;


procedure TFormSaldosClientes.chbCeroClick(Sender: TObject);
begin
  if chbcero.Checked then
    begin
      DatosSaldoClientes.CDSSaldosCliente.Filtered:=False;
      DatosSaldoClientes.CDSSaldosCliente.Filter:='';
    end
  else
    begin
      DatosSaldoClientes.CDSSaldosCliente.Filtered:=False;
      DatosSaldoClientes.CDSSaldosCliente.Filter  :='SALDO > 0.01 or SALDO < -0.01 ';
      DatosSaldoClientes.CDSSaldosCliente.Filtered:=True;
     end
end;

procedure TFormSaldosClientes.chbDireccionClick(Sender: TObject);
var i,i2:Integer;
begin
//  for i:= 0 to dbgSaldos.FieldCount -1 do
//    if dbgSaldos.Fields[i].FieldName='DIRECCION_COMERCIAL' then
//    begin
//      i2:= i;
//    end;

  cxGSaldosDBTableView1DIRECCION_COMERCIAL.Visible:=Not(chbDireccion.Checked);
end;

procedure TFormSaldosClientes.chbDesdeClick(Sender: TObject);
begin
  Desde.Enabled:=chbDesde.Checked;
end;

procedure TFormSaldosClientes.chFiltroVtoClick(Sender: TObject);
begin
  DatosSaldoClientes.CDSMovCC.Filtered:=False;
  DatosSaldoClientes.CDSMovCC.Filter:='FECHAVTO <= '+''''+DateToStr(edfechaVto.Date)+'''';
  DatosSaldoClientes.CDSMovCC.Filtered:=chFiltroVto.Checked;
end;

procedure TFormSaldosClientes.CNombreVendedoresClick(Sender: TObject);
begin
  If CNombreVendedores.Checked then
  begin

  cxGSaldosDBTableView1NOMBREVENDEDOR.visible:=false
  end
  else
  cxGSaldosDBTableView1NOMBREVENDEDOR.visible:=true
end;

procedure TFormSaldosClientes.ConsolidarDeudaExecute(Sender: TObject);
begin
  if Not(Assigned(FormConsolidacionDeudaCliente)) then
    FormConsolidacionDeudaCliente    :=TFormConsolidacionDeudaCliente.Create(Self);
  FormConsolidacionDeudaCliente.Data :=DatosSaldoClientes.CDSSaldosCliente;

  FormConsolidacionDeudaCliente.ShowModal;
  DatosSaldoClientes.CDSSaldosCliente.Close;
  DatosSaldoClientes.CDSMovCC.Close;
  DatosSaldoClientes.CDSMovACta.Close;
  DatosSaldoClientes.CDSMovAplicacion.Close;
end;

procedure TFormSaldosClientes.cxGSaldosDBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var campo:string;
begin
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

procedure TFormSaldosClientes.cxGSaldosDBTableView1DblClick(Sender: TObject);
begin
  Incidencias.Execute;
end;

procedure TFormSaldosClientes.dbgSaldosDblClick(Sender: TObject);
begin
  Incidencias.Execute;
end;

procedure TFormSaldosClientes.EnviarCorreoDetallesExecute(Sender: TObject);
begin
  DatosSaldoClientes.CDSSaldosCliente.First;
  DatosSaldoClientes.CDSMovCC.FindFirst;
  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      frDetalles.PrintOptions.Printer:=PrNomListados;
      frDetalles.SelectPrinter;
      frDetalles.LoadFromFile(DMMain_FD.PathReportesLst+'\LstSaldoClienteDetalles.fr3');
      frDetalles.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
      frDetalles.Variables['Zona']    :=''''+dbcZonas.Text+'''';
      frDetalles.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
      frDetalles.Variables['Grupo']   :=''''+dbcGrupo.Text+'''';
      frDetalles.PrepareReport;
    END
  ELSE
    ShowMessage('No hay datos a listar');
  DatosSaldoClientes.CDSSaldosCliente.First;
  DatosSaldoClientes.CDSMovCC.EnableControls;

  frxPDFExport1.ShowDialog    := False;
  frxPDFExport1.FileName      := ExtractFilePath(ParamStr(0))+'Archivos Temporales\SaldosResumen.pdf';
  frxPDFExport1.EmbeddedFonts := True;
  frDetalles.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog :=True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);

  begin
    FormCorreo.CorreoDestino:='';
    FormCorreo.CorreoOrigen        :=DirCorreo;
    FormCorreo.Remitente           :=Remitente;
    FormCorreo.Destinatario        :='';
    FormCorreo.Puerto              :=Puerto;
    FormCorreo.NombreServidorCorreo:=NombreServidor;
    FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
    FormCorreo.Clave               :=Clave;
    FormCorreo.Autenticacion       :=Autotenticacion;
    FormCorreo.Asunto              :='Saldos Cta.Cte - al '+ FormatDateTime('dd-mm-yy',hasta.Date);
    FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\SaldosResumen.pdf');
    FormCorreo.Show;
  end;
end;

procedure TFormSaldosClientes.EnviarCorreoExecute(Sender: TObject);
begin

  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    BEGIN
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
        CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
      XLSSaldo.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Saldos_'+dbcSucursal.Text+'.xls');

       if Not(Assigned(FormCorreo)) Then
         FormCorreo:=TFormCorreo.Create(Application);
       FormCorreo.CorreoOrigen        :=DirCorreo;
       FormCorreo.Remitente           :=Remitente;
       FormCorreo.Destinatario        :=dbcSucursal.Text;
       FormCorreo.Puerto              :=Puerto;
       FormCorreo.CorreoDestino       :='';
       FormCorreo.NombreServidorCorreo:=NombreServidor;
       FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
       FormCorreo.Clave               :=Clave;
       FormCorreo.Autenticacion       :=Autotenticacion;
       FormCorreo.Asunto              :='Saldos - '+ dbcSucursal.Text;
       FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Saldos_'+dbcSucursal.Text+'.XLS');
       FormCorreo.Show;
    END
  ELSE
    ShowMessage('No hay datos para enviar....');
end;

procedure TFormSaldosClientes.ExportaSaldosXLSExecute(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (DatosSaldoClientes.CDSSaldosCliente.IsEmpty) THEN
    begin
      SaveDialog1.FileName  :='SaldosClientes';
      SaveDialog1.DefaultExt:='xls';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
            if VirtualUI.Active then
              XLSSaldo.SaveToFile(SaveDialog1.FileName)
            else
              XLSSaldo.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;
  end
   ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormSaldosClientes.FormShow(Sender: TObject);
begin
  dbcSucursal.Enabled:=DMMain_FD.ModificaSucursal;
  if FormSaldosClientes<>nil then
    if pnPendientes.Visible=False then
      FormSaldosClientes.Width := 740;

  //AutoSize := True;
//      pnPendientes.Visible        := False;
//      btMuestraDetalle.Caption    := '>>';
//      FormSaldosClientes.Position := poDesktopCenter;
//      Label1.Caption              :='Detalle';
//    END;

  end;

END.