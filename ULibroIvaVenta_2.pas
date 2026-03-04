unit ULibroIvaVenta_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULibroIvaBase,  frxDBSet, Db, DBClient, Provider, frxExportXLS,
  ActnList, ComCtrls, Buttons,System.Variants,
  ToolWin, StdCtrls, Grids, DBGrids,   ExtCtrls, Mask,
  IniFiles, ImgList, JvExControls, JvGradient, JvComponentBase,
  DataExport, DataToXLS, frxExportPDF, JvDBLookup, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvBaseEdits, JvExDBGrids,
  JvDBGrid, DBCtrls, DBCGrids, JvExExtCtrls, JvExtComponent, JvPanel, CheckLst,
  Spin,StrUtils, JvgExportComponents, xmldom, XMLIntf, msxmldom, XMLDoc, Menus,
  System.Actions, JvAppStorage, JvAppIniStorage,VirtualUI_sdk, frxClass,
  CompBuscador, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,cxGridExportLink, cxCheckBox,
  dxPScxPivotGridLnk, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvDialogs, dxPScxVGridLnk,dxSpreadSheet,dxSpreadSheetCore,System.AnsiStrings, frxExportBaseDialog,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxPSStdGrLnk,
  dxSkinWXI, frCoreClasses,System.IOUtils;

type
  TFormLibroIvaVenta_2 = class(TFormLibroIvaBase)
    frDBTotales: TfrxDBDataset;
    frDBTitulos: TfrxDBDataset;
    frDBLibroIva: TfrxDBDataset;
    frDBTotalesPorCategoria: TfrxDBDataset;
    ExportarCiti: TAction;
    SaveDialog1: TSaveDialog;
    BitBtn3: TBitBtn;
    ExportarCitiMultiple: TAction;
    OpenDialog: TOpenDialog;
    BitBtn4: TBitBtn;
    ExortarXLS: TAction;
    DataToXLS: TDataToXLS;
    frDBDebitos: TfrxDBDataset;
    frDBCreditos: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    AgruparLibro: TAction;
    pnPie: TPanel;
    Label4: TLabel;
    cbTipoCpbte: TJvDBLookupCombo;
    BitBtn5: TBitBtn;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    btDetalles: TButton;
    rgPorCta: TRadioGroup;
    btFiltro: TBitBtn;
    edCoeficiente: TSpinEdit;
    Label7: TLabel;
    Citi3685: TAction;
    bt3685: TBitBtn;
    ToolButton1: TToolButton;
    PresentacionRICA: TAction;
    btRICA: TBitBtn;
    Button1: TButton;
    DataToXLSHolister: TDataToXLS;
    PopupMenu1: TPopupMenu;
    ExcelHolister1: TMenuItem;
    frxDBEmpresa: TfrxDBDataset;
    frDBDIIBBJuridicion: TfrxDBDataset;
    pcMovimientos: TPageControl;
    pagDebitosCredito: TTabSheet;
    pagLibro: TTabSheet;
    cxGridListado: TcxGrid;
    cxGridListadoDBTableView1: TcxGridDBTableView;
    cxGridListadoLevel1: TcxGridLevel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    PopupMenu2: TPopupMenu;
    ImiprimirArt1: TMenuItem;
    N1: TMenuItem;
    ExportaraExcelArticulos1: TMenuItem;
    cxGridListadoDBTableView1MUESTRA_IVA: TcxGridDBColumn;
    cxGridListadoDBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1CLASE_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1NRO_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1FECHA: TcxGridDBColumn;
    cxGridListadoDBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGridListadoDBTableView1CONDICION_IVA: TcxGridDBColumn;
    cxGridListadoDBTableView1CUIT: TcxGridDBColumn;
    cxGridListadoDBTableView1SUCURSALVENTA: TcxGridDBColumn;
    cxGridListadoDBTableView1ANULADO: TcxGridDBColumn;
    cxGridListadoDBTableView1TOTAL_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL1_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL2_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL3_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL4_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL5_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_EXENTO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_GRAVADO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1JURIDICION: TcxGridDBColumn;
    cxGridListadoDBTableView1JURIDICION_LOCALIDAD: TcxGridDBColumn;
    cxGridListadoDBTableView1JURIDICION_DETALLE: TcxGridDBColumn;
    cxGridListadoDBTableView1CODIGO_AFIP: TcxGridDBColumn;
    ListadoDetalles: TTabSheet;
    dbgCabecera: TDBGrid;
    dbgDetalle: TDBGrid;
    cxGridListadoDBTableView1PERC_IB_REC: TcxGridDBColumn;
    Categorias: TTabSheet;
    cxGCategoriasDBTableView1: TcxGridDBTableView;
    cxGCategoriasLevel1: TcxGridLevel;
    cxGCategorias: TcxGrid;
    cxGCategoriasDBTableView1MUESTRASUCURSAL: TcxGridDBColumn;
    cxGCategoriasDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGCategoriasDBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGCategoriasDBTableView1LETRAFAC: TcxGridDBColumn;
    cxGCategoriasDBTableView1TASA: TcxGridDBColumn;
    cxGCategoriasDBTableView1MUESTRACOMPROBANTE: TcxGridDBColumn;
    cxGCategoriasDBTableView1MUESTRAINSCRIPCION: TcxGridDBColumn;
    cxGCategoriasDBTableView1MUESTRANETO: TcxGridDBColumn;
    cxGCategoriasDBTableView1MUESTRAIMPUESTO: TcxGridDBColumn;
    cxGCategoriasDBTableView1TOTAL: TcxGridDBColumn;
    cxGCategoriasDBTableView1TOTALEXENTO: TcxGridDBColumn;
    cxGCategoriasDBTableView1TOTALIIBB: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    ExportaraExcelcon1: TMenuItem;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_IVA: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCALCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1IIBB: TcxGridDBColumn;
    cxGrid1DBTableView1NETO1: TcxGridDBColumn;
    cxGrid1DBTableView1NETO2: TcxGridDBColumn;
    cxGrid1DBTableView1NETO3: TcxGridDBColumn;
    cxGrid1DBTableView1NETO4: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_1: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_2: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_3: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_4: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_1: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_2: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_3: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_4: TcxGridDBColumn;
    JvDBStatusLabel1: TJvDBStatusLabel;
    LibroIvaDigital: TAction;
    btLibroIvaDigital: TButton;
    Label5: TLabel;
    frDBSucursal: TfrxDBDataset;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSSucursalGENERA_XML_COMUN: TStringField;
    CDSSucursalHOST: TStringField;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    CDSSucursalRAZONSOCIAL: TStringField;
    LeerTXT: TAction;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridListadoDBTableView1PERC_IVA_REC: TcxGridDBColumn;
    cxGCategoriasDBTableView1Column1: TcxGridDBColumn;
    procedure BuscarExecute(Sender: TObject);
    procedure rgPorCtaClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CierreFiscalExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
//    procedure ExportarCitiExecute(Sender: TObject);
    procedure ExportarCitiMultipleExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExortarXLSExecute(Sender: TObject);
    procedure cbSucursalesChange(Sender: TObject);
    procedure btDetallesClick(Sender: TObject);
    procedure JvThread1Execute(Sender: TObject; Params: Pointer);
    procedure AgruparLibroExecute(Sender: TObject);
    procedure btFiltroClick(Sender: TObject);
    procedure lvSucursalesClick(Sender: TObject);
    procedure Citi3685Execute(Sender: TObject);
    procedure PresentacionRICAExecute(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExcelHolister1Click(Sender: TObject);
    procedure ImiprimirArt1Click(Sender: TObject);
    procedure ExportaraExcelArticulos1Click(Sender: TObject);
    procedure cxGridListadoDBTableView1DblClick(Sender: TObject);
    procedure ExportaraExcelcon1Click(Sender: TObject);
    procedure LibroIvaDigitalExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure LeerTXTExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    LibroIvaVta:TIniFile;
    Filtro,PathCabecera:String;
    function RegInfo_Cabecera:Boolean;
    function GeneraLibroIvaDigital(Path: string; EsDigital:Boolean):Boolean;
    procedure IniciaLibroVenta(FDesde,FHasta: TDateTime; Sucursal:Integer);
    procedure CierraLibroVenta;
  end;

var
  FormLibroIvaVenta_2: TFormLibroIvaVenta_2;

implementation

uses UComposicionIvaVta, UExportarLibroIvaVta_excel,
     USucursalesExportacionIVA, DMLiborIvaVta, UFactura_2, UFacturaCtdo_2,
     UTiketVta,UDMain_FD, ULibroIvaCompra_2, DMLiborIvaCompra,ULectorLibroIvaDigital;

{$R *.DFM}

procedure TFormLibroIvaVenta_2.IniciaLibroVenta(FDesde,FHasta: TDateTime; Sucursal:Integer);
var ID_First,ID_Last:Integer;
begin
  DatosLibroIvaVta.CDSLibroIvaVenta.Close;
  DatosLibroIvaVta.CDSLibroIvaVenta.Open;

  DatosLibroIvaVta.QMinID.Close;
  DatosLibroIvaVta.QMinID.Open;
  if VarIsNull(DatosLibroIvaVta.QMinID.Fields[0].Value) then
    ID_First:=1
  else
    ID_First := DatosLibroIvaVta.QMinID.Fields[0].Value;

  DatosLibroIvaVta.QMaxID.Close;
  DatosLibroIvaVta.QMaxID.Open;
  if VarIsNull(DatosLibroIvaVta.QMAxID.Fields[0].Value) then
    ID_Last :=1
  else
    ID_Last := DatosLibroIvaVta.QMaxID.Fields[0].Value;

  DatosLibroIvaVta.QMinID.Close;
  DatosLibroIvaVta.QMaxID.Close;

  DatosLibroIvaVta.CDSLibroIvaDet.Close;
  DatosLibroIvaVta.CDSLibroIvaDet.MasterSource    := Nil;
  DatosLibroIvaVta.CDSLibroIvaDet.MasterFields    := '';
  DatosLibroIvaVta.CDSLibroIvaDet.IndexFieldNames := '';
  DatosLibroIvaVta.CDSLibroIvaDet.Params.ParamByName('id_desde').AsInteger := -1;
  DatosLibroIvaVta.CDSLibroIvaDet.Params.ParamByName('id_hasta').AsInteger := -1;
  DatosLibroIvaVta.CDSLibroIvaDet.Open;
  DatosLibroIvaVta.CDSLibroIvaDet.Close;

  DatosLibroIvaVta.CDSTitulos.OPen;

  DatosLibroIvaVta.CDSTotales.Close;
  DatosLibroIvaVta.CDSTotales.Params.ParamByName('desde').AsDate:=FDesde;
  DatosLibroIvaVta.CDSTotales.Params.ParamByName('hasta').AsDate:=FHasta;
  DatosLibroIvaVta.CDSTotales.Open;

  DatosLibroIvaVta.CDSTotalesPorCategoria.Close;
  DatosLibroIvaVta.CDSTotalesPorCategoria.Params.ParamByName('desde').AsDate :=FDesde;
  DatosLibroIvaVta.CDSTotalesPorCategoria.Params.ParamByName('hasta').AsDate :=FHasta;
  DatosLibroIvaVta.CDSTotalesPorCategoria.Params.ParamByName('SUC').AsInteger:=cbSucursales.KeyValue;
  DatosLibroIvaVta.CDSTotalesPorCategoria.Open;



  DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'fecha;nro_cpbte';

  sbEstado.SimpleText:='Abriendo Titulos....';
  Application.ProcessMessages;
  Sleep(1);

  DatosLibroIvaVta.CDSLibroIvaDet.Close;
  DatosLibroIvaVta.CDSLibroIvaDet.Params.ParamByName('id_desde').AsInteger := ID_First;
  DatosLibroIvaVta.CDSLibroIvaDet.Params.ParamByName('id_hasta').AsInteger := ID_Last;
  DatosLibroIvaVta.CDSLibroIvaDet.Open;


  DatosLibroIvaVta.CDSLibroIvaDet.MasterSource    := DatosLibroIvaVta.DSLibroIvaVenta;
  DatosLibroIvaVta.CDSLibroIvaDet.IndexFieldNames := 'ID_LIBRO_IVA';
  DatosLibroIvaVta.CDSLibroIvaDet.MasterFields    := 'ID';

  DatosLibroIvaVta.CDSTitulos.Close;
  DatosLibroIvaVta.CDSTitulos.OPen;

  DatosLibroIvaVta.CDSLibroIvaVenta.First;

  DatosLibroIvaVta.CDSDebitos.Close;
  if (Sucursal>-1) then
    DatosLibroIvaVta.CDSDebitos.Params.ParamByName('sucursal').Value:=Sucursal
  else
    DatosLibroIvaVta.CDSDebitos.Params.ParamByName('sucursal').Value:=-1;
  DatosLibroIvaVta.CDSDebitos.Open;

  DatosLibroIvaVta.CDSCreditos.Close;
  if (Sucursal>-1) then
    DatosLibroIvaVta.CDSCreditos.Params.ParamByName('sucursal').Value:= Sucursal
  else
    DatosLibroIvaVta.CDSCreditos.Params.ParamByName('sucursal').Value:=-1;

  DatosLibroIvaVta.CDSCreditos.Open;


  DatosLibroIvaVta.CDSCompIVADeb.Close;
  DatosLibroIvaVta.CDSCompIVADeb.Open;


  DatosLibroIvaVta.CDSCompIVACre.Close;
  DatosLibroIvaVta.CDSCompIVACre.Open;


  DatosLibroIvaVta.CDSCompIVADebCred.Close;
  DatosLibroIvaVta.CDSCompIVADebCred.Open;

  DatosLibroIvaVta.CDSVtaVizcay.Close;
  DatosLibroIvaVta.CDSVtaVizcay.Params.ParamByName('desde').AsDate :=FDesde;
  DatosLibroIvaVta.CDSVtaVizcay.Params.ParamByName('hasta').AsDate :=FHasta;
  DatosLibroIvaVta.CDSVtaVizcay.Open;

  //Holister
 // DatosLibroIvaVta.CDSIvaHolister.Close;
 // DatosLibroIvaVta.CDSIvaHolister.Open;
end;

procedure TFormLibroIvaVenta_2.CierraLibroVenta;
begin
  DatosLibroIvaVta.CDSTipoCpbte.Close;
  DatosLibroIvaVta.CDSEmpresa.Close;
  FreeAndNil(DatosLibroIvaVta);
end;


procedure TFormLibroIvaVenta_2.AgruparLibroExecute(Sender: TObject);
begin
  inherited;
  if (cbTipoCpbte.KeyValue<>'XX') then
  begin
  DatosLibroIvaVta.spAgruparLibroFD.Close;
  DatosLibroIvaVta.spAgruparLibroFD.ParamByName('Tipo').Value:=cbTipoCpbte.KeyValue;
  DatosLibroIvaVta.spAgruparLibroFD.ExecProc;

  IniciaLibroVenta(Desde.Date,Hasta.Date,cbSucursales.KeyValue);

  DatosLibroIvaVta.CDSLibroIvaVenta.Close;
  DatosLibroIvaVta.CDSLibroIvaVenta.Open;
  DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'fecha;nro_cpbte';

  sbEstado.SimpleText  := 'Fin';
  Imprimir.Enabled     := True;
  RgOrden.Enabled      := True;
  cbSucursales.Enabled := True;
  end;
end;

procedure TFormLibroIvaVenta_2.BuscarExecute(Sender: TObject);
var I: Integer;
ID_First,ID_Last:Integer;
Lista:TListItem;
begin
  inherited;
  Screen.Cursor:=crHourGlass;

  sbEstado.SimpleText:='Iniciando querys....';
  Application.ProcessMessages;
  Sleep(1);

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('SET GENERATOR ID_GENERICO TO 0');
  Query4_FD.ExecSQL;

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('delete from libro_iva_venta');
  Query4_FD.ExecSQL;

 // Query4_FD.Close;  hay un fk en la tabla que deberia hacer esto
 // Query4_FD.SQL.Clear;
 // Query4_FD.SQL.Add('delete from libro_iva_venta_det');
 // Query4_FD.ExecSQL;

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('delete from libro_iva_venta_titulos');
  Query4_FD.ExecSQL;

  Query4_FD.Close;


  sbEstado.SimpleText:='Iniciando Consultas....';
  Application.ProcessMessages;
  Sleep(1);


  spGeneraLibro_FD.Active := false;
  spGeneraLibro_FD.Params.ParamByName('FECHAINICIAL').AsDate := Desde.Date;
  spGeneraLibro_FD.Params.ParamByName('FechaFinal').AsDate   := Hasta.Date;
  spGeneraLibro_FD.Params.ParamByName('sucursal').AsInteger  := cbSucursales.KeyValue;
  spGeneraLibro_FD.Params.ParamByName('coeficiente').AsFloat := (100 - edCoeficiente.Value) * 0.01;

  case rgPorCta.ItemIndex of
    0:  spGeneraLibro_FD.Params.ParamByName('CTAORDEN').AsString  := '*';
    1:  spGeneraLibro_FD.Params.ParamByName('CTAORDEN').AsString  := 'S';
    2:  spGeneraLibro_FD.Params.ParamByName('CTAORDEN').AsString  := 'N';
  end;

  spGeneraLibro_FD.ExecProc;
  spGeneraLibro_FD.Close;

  sbEstado.SimpleText:='Abriendo Listados....';
  Application.ProcessMessages;
  Sleep(1);

  Imprimir.Enabled     := True;
  rgOrden.Enabled      := True;
  cbSucursales.Enabled := True;
  Screen.Cursor        := crDefault;


  sbEstado.SimpleText:='Armando Columnas Excel...';
  Application.ProcessMessages;
  Sleep(1);

  for I := 0 to DataToXLS.Columns.Count - 1 do
    begin
      if (DatosLibroIvaVta.CDSLibroIvaVenta.FindField(DataToXLS.Columns[I].DataField).DisplayLabel<>'') then
        DataToXLS.Columns[I].Title:=DatosLibroIvaVta.CDSLibroIvaVenta.FindField(DataToXLS.Columns[I].DataField).DisplayLabel
      else
        DataToXLS.Columns[I].Title:='--';
    end;
  FormExportarLibroIvaVtaExcel.chklstColumnas.Clear;
  for I := 0 to DataToXLS.Columns.Count-1 do
    begin
      FormExportarLibroIvaVtaExcel.chklstColumnas.Items.Add(DataToXLS.Columns[i].Title);
      FormExportarLibroIvaVtaExcel.chklstColumnas.Checked[i]:= DataToXLS.Columns[i].Save;
    end;

  sbEstado.SimpleText:='Aplicando Filtros...';
  Application.ProcessMessages;
  Sleep(1);

  DatosLibroIvaVta.CDSLibroIvaVenta.Filter   := '';
  DatosLibroIvaVta.CDSLibroIvaVenta.Filtered := False;

  Filtro:='';
  for I := 0 to FormSucursalesExportacion.lvSucursales.Items.Count - 1 do
    begin
      lista:=FormSucursalesExportacion.lvSucursales.Items[i];
      if lista.Checked then
        begin
          if Filtro='' then
            Filtro:='sucursalventa in ('+ Lista.SubItems.Strings[0]
          else
            Filtro:=Filtro+','+Lista.SubItems.Strings[0];
        end;
    end;

  if Filtro<>'' then
     begin
       Filtro:=Filtro+')';
       DatosLibroIvaVta.CDSLibroIvaVenta.Filter   := Filtro;
       DatosLibroIvaVta.CDSLibroIvaVenta.Filtered := True;
     end;



  /////  INICIA DatosLibroIva
  IniciaLibroVenta(Desde.Date,Hasta.Date,cbSucursales.KeyValue);

  sbEstado.SimpleText:='Abriendo Vizcay...';
  Application.ProcessMessages;
  Sleep(1);

  cxGCategoriasDBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
  cxGrid1DBTableView1.ViewData.Expand(True);
  // esto no lo borro por que no se si esta en uso.. creo que es viejo...
  // DatosLibroIvaVta.CDSLibroIvaVenta.AfterScroll := DatosLibroIvaVta.CDSLibroIvaVentaAfterScroll;

  rgPorCtaClick(Sender);
  dbgCabecera.Width := dbgCabecera.Width+1;
  dbgCabecera.Width := dbgCabecera.Width-1;

  dbgDetalle.Width  := dbgDetalle.Width+1;
  dbgDetalle.Width  := dbgDetalle.Width-1;

end;

procedure TFormLibroIvaVenta_2.Button1Click(Sender: TObject);
var
  i: integer;
  xml: TXMLDocument;
  iRoot,iNode,iNode2: IXMLNode;
  Cadena,Valor,TipoComprob:String;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;


  xml := TXMLDocument.Create(nil);
  try
    DatosLibroIvaVta.CDSVtaVizcay.First;

    xml.Active := True;
    iRoot      := xml.AddChild('Importacion');
    iNode      := iRoot.AddChild('Ventas');

    while not DatosLibroIvaVta.CDSVtaVizcay.Eof do
    begin

      iNode2:= iNode.AddChild('Venta');
      Cadena:='';
      TipoComprob:='';
      for i :=  DatosLibroIvaVta.CDSVtaVizcay.Fields.Count - 1 downto 0  do
      begin
        valor := DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DisplayText;

        if DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DisplayLabel='TipoComprobante' then
          TipoComprob:=Valor;

        if DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DisplayLabel='DocumentoReceptor' then
          begin
            while pos('-',Valor)>0 do delete(Valor,pos('-',Valor),1);
            while pos('.',Valor)>0 do delete(Valor,pos('.',Valor),1);
            if Valor='0000000000000' then Valor:='11111111';
          end;
        if (DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DataType=ftFloat) or
           (DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DataType=ftBCD) or
           (DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DataType=ftFMTBcd) then
        Valor:=AnsiReplaceText(Valor,'.',',');
        Cadena:= Cadena+DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DisplayLabel+'= "'+ Trim(Valor)+'" ';
   //     if (TipoCOmprob='1') or (TipoCOmprob='2') or (TipoCOmprob='3') or (TipoCOmprob='81')then


        iNode2.Attributes[DatosLibroIvaVta.CDSVtaVizcay.Fields[i].DisplayLabel]:=Trim(Valor);//CDSVtaVizcay.Fields[i].DisplayText;
      end;

      //campo.Text := Cadena;
     // iNode2:=iNode.CloneNode(True);
     // iNode.ChildNodes.Add(iNode2);

      DatosLibroIvaVta.CDSVtaVizcay.Next;
    end;
    xml.SaveToFile(TPath.GetDocumentsPath+'\ArchivoVtas.xml');
    SaveDialog1.FileName  :='ArchivoVtas.xml';
    SaveDialog1.DefaultExt:='xml';
    if VirtualUI.Active then
      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

    if SaveDialog1.Execute Then
      if SaveDialog1.FileName<>'' Then
        xml.SaveToFile(SaveDialog1.FileName);
    if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog1.FileName);
   finally
  //  xml.free;
  end;



end;

procedure TFormLibroIvaVenta_2.rgPorCtaClick(Sender: TObject);
begin
  inherited;
  IF rgorden.ItemIndex = 0 THEN
    DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'fecha;nro_cpbte'
  ELSE
    IF rgorden.ItemIndex = 1 THEN
      DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'Razon_social;nro_cpbte'
    ELSE
      IF rgOrden.ItemIndex = 2 THEN
        DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'tipo_cpbte;nro_cpbte'
      ELSE
        IF rgOrden.ItemIndex = 3 THEN
          DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'JURIDICION_LOCALIDAD;fecha;nro_cpbte'
        else
          IF rgOrden.ItemIndex = 4 THEN
            DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames := 'tipo_cpbte; JURIDICION_LOCALIDAD;fecha;nro_cpbte';

end;

procedure TFormLibroIvaVenta_2.SalirExecute(Sender: TObject);
begin
  if DatosLibroIvaVta<>NIl then
    begin
      DatosLibroIvaVta.CDSTitulos.Close;
      DatosLibroIvaVta.CDSTotales.Close;
      DatosLibroIvaVta.CDSDebitos.Close;
      DatosLibroIvaVta.CDSCreditos.Close;
      DatosLibroIvaVta.CDSLibroIvaDet.Close;
      DatosLibroIvaVta.CDSLibroIvaVenta.Close;
    end;
  inherited;
end;

procedure TFormLibroIvaVenta_2.ImiprimirArt1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormLibroIvaVenta_2.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosLibroIvaVta.DSLibroIvaVenta.DataSet.IsEmpty) then
    begin
      frLibroIva.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
      frLibroIva.PrintOptions.Printer:=PrNomListados;
      frLibroIva.SelectPrinter;

      if rgOrden.ItemIndex=3 Then
        frLibroIva.Variables['porjuri']:= '''J'''
      else
        frLibroIva.Variables['porjuri']:= '''''';

      frLibroIva.ShowReport;
    end
  else
    ShowMessage('No hay Datos para Imprimir....');

end;

procedure TFormLibroIvaVenta_2.JvThread1Execute(Sender: TObject;
  Params: Pointer);
begin
  inherited;
  Buscar.Execute;
end;


function TFormLibroIvaVenta_2.GeneraLibroIvaDigital(Path: string; EsDigital:Boolean) :Boolean;
Var
  ArchiTxt,ArchiTxtImpuestos,ArchiTxtAnulados: TextFile;
  tipo,fecha,FechaVto,tipocomprob,puntoVta,nrocpbte,nrocpbtehasta,
  cod_Identificador,Imp_Percep_Nacionales,Imp_Percep_Municipales,
  CodigoMoneda,TipoCambio,CodigiOperacion,OtroTributos,Perc_NoCategorizados,
  Cuit,razonsocial,importe,excluido,gravado,alicuota,tasa,impuesto,importeexento,cantlicuotasIva,
  ImportePercepIIBB,PathComprobantes,PathAlicuotas, PathAnulados,Directorio,Periodo, NombreCorto: String;
  Posicion:Integer;
  SaveDialog1 : TSaveDialog;
  ImpuestoAcumulado:Extended;
begin

  Result  := False;

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if DatosLibroIvaVta.CDSLibroIvaVenta.IsEmpty then
    Raise Exception.Create('No hay datos para procesar.....');

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  // REGINFO_CV_VENTAS_CPBTE ****************

  DatosLibroIvaVta.CDSLibroIvaVenta.First;

  Periodo           :=  Copy(Path,Length(Path)-9,6);
  PathComprobantes  :=  Path;
  Directorio        :=  ExtractFilePath(PathComprobantes);
  NombreCorto       :=  Copy(PathComprobantes,Length(Directorio)+1,AnsiPos('VENTAS',PathComprobantes)-Length(Directorio)+6);
  PathAlicuotas     :=  Directorio+NombreCorto+'ALICUOTAS_'+Periodo+'.TXT';

  if EsDigital then
    begin
      PathAnulados      :=  Directorio+'LIBRO_IVA_DIGITAL_CBTES_VENTAS_ANULADOS_'+Periodo+'.TXT';
      AssignFile(ArchiTxtAnulados, PathAnulados);
      Rewrite(ArchiTxtAnulados);
    end;


  AssignFile(ArchiTxt, PathComprobantes);
  Rewrite(ArchiTxt);
  AssignFile(ArchiTxtImpuestos,  PathAlicuotas);
  Rewrite(ArchiTxtImpuestos);



  while not(DatosLibroIvaVta.CDSLibroIvaVenta.Eof) do
    begin
      if DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat > 0.10 Then
        begin
          Tipo     := '1';
          Fecha    := FormatDateTime('yyyymmdd',DatosLibroIvaVta.CDSLibroIvaVentaFECHA.AsDateTime);
          FechaVto := Fecha;


          if DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.AsString='' then
            begin
              ErrorAfip(GetidTipoCpbte('V',
                                      DatosLibroIvaVta.CDSLibroIvaVentaSUCURSALVENTA.AsInteger,
                                      DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString,
                                      DatosLibroIvaVta.CDSLibroIvaVentaCLASE_CPBTE.AsString,
                                      DatosLibroIvaVta.CDSLibroIvaVentaLETRA.AsString ));


              CloseFile(ArchiTxt);
              if FileExists(PathComprobantes) then DeleteFile(PathComprobantes);
                CloseFile(ArchiTxtImpuestos);
              if FileExists(PathAlicuotas) then DeleteFile(PathAlicuotas);
                CloseFile(ArchiTxtAnulados);
              if FileExists(PathAnulados) then DeleteFile(PathAnulados);
                Exit;
            end
          else
             tipocomprob:=DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.AsString;

      //************************************************************

          if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') or
             (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='TK') or
             (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='E') then
               fechaVto:='00000000';

          // tipocomprob:='99';
          puntoVta      :='0'+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,2,4);
          if puntoVta='00000' Then PuntoVta:='00001';
          nrocpbte      :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8); // son de 20 caraceres
          nrocpbtehasta :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8);

          cod_Identificador:='99';
          if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=1 Then cod_Identificador:='80';
          if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=4 Then cod_Identificador:='80';
          if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=5 Then cod_Identificador:='80';
          if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=6 Then cod_Identificador:='80';
          if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=2 Then cod_Identificador:='80';


          if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString='' Then
            Cuit:='27000000006'
          else
            Cuit:=DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString;

          Cuit:=AnsiReplaceText(Cuit,'.','');
          Cuit:=AnsiReplaceText(Cuit,'-','');
          Cuit:=AnsiReplaceText(Cuit,',','');

          if (DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=3) and
             (DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat>DMMain_FD.LimiteFactB)  Then
               begin
                 cod_Identificador:='96';
                 if (StrToFloat(Cuit)<1) Then
                   Cuit:='27000000006';
                 //Cuit             := '0'
               end;


          if (cod_Identificador='96') and (Length(Trim(Cuit))<11) Then
            Cuit:='27000000006';

          if (DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=3) and (StrToFloat(Cuit)>10000) then
            begin
              cod_Identificador:='96';
              Cuit:='27000000006';
            end;

          if (DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=3) and
             (DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
             (StrToFloat(Cuit)<1000) then
            begin
              cod_Identificador:='99';
              Cuit:='00000000000';
            end;
          // revisar los codigo de identificacion...21/02/2022
          if (DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.Value='083') or
             (DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.Value='082') or
             (DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.Value='080') or
            (DatosLibroIvaVta.CDSLibroIvaVentaCODIGO_AFIP.Value='081') then
            begin
              Cuit             :='00000000000';
              cod_Identificador:='99';
            end;

          Cuit:=AnsiReplaceText(Cuit,'.','');
          Cuit:=AnsiReplaceText(Cuit,'-','');
          Cuit:=AnsiReplaceText(Cuit,',','');

          if (Length(Trim(Cuit))<11) and (cod_Identificador='99') then
            Cuit:=Copy('00000000000',1,11-Length(Trim(Cuit)))+Cuit;

          cuit       :='000000000'+Cuit;

          razonsocial:=Trim(DatosLibroIvaVta.CDSLibroIvaVentaRAZON_SOCIAL.Value)+'                                              ';

          razonsocial:= AnsiLeftStr(razonsocial,30);

          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            Importe:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat)
          else
            Importe:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat);
          delete(importe,14,1);

          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            importeexento:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat)
          else
            importeexento:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat);
          if DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat<0 then
            importeexento[1]:='-';
          delete(importeexento,14,1);

          excluido:='000000000000000';

          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            ImportePercepIIBB:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB.AsFloat)
          else
            ImportePercepIIBB:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaPERC_IB.AsFloat);
          delete(ImportePercepIIBB,14,1);


          //******************************************************************************

          if (DatosLibroIvaVta.CDSLibroIvaVentaANULADO.Value='N') then
            begin

              DatosLibroIvaVta.CDSLibroIvaDet.Filtered := False;
              DatosLibroIvaVta.CDSLibroIvaDet.Filter   := '( Tasa > 0 ) and (tasa <> 13.5 )';
               // DatosLibroIvaVta.CDSLibroIvaDet.Filtered := True;
              DatosLibroIvaVta.CDSLibroIvaDet.First;

              ImpuestoAcumulado:=0;
              cantlicuotasIva  :=IntToStr(DatosLibroIvaVta.CDSLibroIvaDet.RecordCount);

              if (DatosLibroIvaVta.CDSLibroIvaDet.RecordCount<=0) then
                begin
                  cantlicuotasIva:='1';

                  if SysUtils.FormatSettings.DecimalSeparator=',' Then
                    gravado:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaDetNETO.AsFloat)
                  else
                    gravado:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaDetNETO.AsFloat);
                  delete(gravado,14,1);

                  if SysUtils.FormatSettings.DecimalSeparator=',' Then
                    impuesto:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat)
                  else
                    impuesto:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat);
                  delete(impuesto,14,1);

                  Tasa:=FormatFloat('00.00',0);

                  if Tasa='00.00' then Alicuota:='0003';

                  if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString<>'SIN NRO CAE' then
                    WriteLn(ArchiTxtImpuestos,tipocomprob, puntoVta, nrocpbte,
                                              gravado,     alicuota, impuesto);

                end
              else
                while Not(DatosLibroIvaVta.CDSLibroIvaDet.Eof) do
                  begin
                    if SysUtils.FormatSettings.DecimalSeparator=',' Then
                      gravado:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaDetNETO.AsFloat)
                    else
                      gravado:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaDetNETO.AsFloat);
                    delete(gravado,14,1);

                    if SysUtils.FormatSettings.DecimalSeparator=',' Then
                      impuesto:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat)
                    else
                      impuesto:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat);
                    delete(impuesto,14,1);

                    Tasa:=FormatFloat('00.00',DatosLibroIvaVta.CDSLibroIvaDetTASA.AsFloat);
                    if Tasa='00.00' then Alicuota:='0003'
                    else
                    if Tasa='10.50' then Alicuota:='0004'
                    else
                    if Tasa='21.00' then Alicuota:='0005'
                    else
                    if Tasa='27.00' then Alicuota:='0006'
                    else
                    if Tasa='05.00' then Alicuota:='0008'
                    else
                    if Tasa='02.50' then Alicuota:='0009';

                    if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString<>'SIN NRO CAE' then
                      WriteLn(ArchiTxtImpuestos, tipocomprob, puntoVta, nrocpbte,
                                                     gravado,     alicuota, impuesto);
                    DatosLibroIvaVta.CDSLibroIvaDet.Next;
                  end;

              //******** Informe de Fecha de Vto.... //////////////////
              if FormatDateTime('yyyymmdd',DatosLibroIvaVta.CDSLibroIvaVentaFECHAVTO.AsDateTime)<>'' then
                FechaVto    := FormatDateTime('yyyymmdd',DatosLibroIvaVta.CDSLibroIvaVentaFECHAVTO.AsDateTime);
              if (tipocomprob ='201') or (tipocomprob ='011') or (tipocomprob ='206') or
                 (tipocomprob ='206') or (tipocomprob ='083') or (tipocomprob ='082') or
                 (tipocomprob ='211') or (tipocomprob ='081') or (tipocomprob ='080') or
                 (tipocomprob ='203') or (tipocomprob ='001') or (tipocomprob ='186') or
                 (tipocomprob ='208') or (tipocomprob ='006') or (tipocomprob ='180') or
                 (tipocomprob ='213')  then FechaVto:='00000000';


              //******************************************************************************
              if SysUtils.FormatSettings.DecimalSeparator=',' Then
                Imp_Percep_Nacionales:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA.AsFloat)
              else
                Imp_Percep_Nacionales:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaPERC_IVA.AsFloat);
              delete(Imp_Percep_Nacionales,14,1);

              //Imp_Percep_Nacionales :='000000000000000';

              Imp_Percep_Municipales:='000000000000000';
              Perc_NoCategorizados  :='000000000000000';
              CodigoMoneda          :='PES';
              TipoCambio            :='0001000000';
              CodigiOperacion       :='0';      // antes era un espacio vacio
              if DatosLibroIvaVta.CDSLibroIvaDet.RecordCount<=0 then
                CodigiOperacion       :='E';
              OtroTributos          :='000000000000000';
              DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=False;

              if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString<>'SIN NRO CAE' then

              WriteLn(ArchiTxt,    fecha,          tipocomprob,               puntoVta,
                                nrocpbte,        nrocpbtehasta,      cod_Identificador,
                                    Cuit,          razonsocial,                Importe,
                                excluido, Perc_NoCategorizados,          importeexento,
                   Imp_Percep_Nacionales,    ImportePercepIIBB, Imp_Percep_Municipales,
                                excluido,         CodigoMoneda,             TipoCambio,
                         cantlicuotasIva,      CodigiOperacion,           OtroTributos,
                                 FechaVto);
            end
          else
            if EsDigital then
              Writeln(ArchiTxtAnulados,     fecha,          tipocomprob,
                              puntoVta,  nrocpbte,          fecha);

        end;

      DatosLibroIvaVta.CDSLibroIvaVenta.Next;
    end;

  CloseFile(ArchiTxt);
  CloseFile(ArchiTxtImpuestos);
  if EsDigital then CloseFile(ArchiTxtAnulados);

  if Not(VirtualUI.Active) then
    ShowMessage('Archivo Generado en .....'+PathComprobantes+'. '+#13+
                 PathAlicuotas+'. ');

  if VirtualUI.Active then
    begin
     // VirtualUI.StdDialogs:=False;
      VirtualUI.DownloadFile(PathAlicuotas);
      VirtualUI.DownloadFile(PathComprobantes);
      if EsDigital then VirtualUI.DownloadFile(PathAnulados);
// No se usa lo saco   VirtualUI.DownloadFile(PathCabecera);
     END;


  Result  := True;
end;

procedure TFormLibroIvaVenta_2.LeerTXTExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormLectorLibroIvaDigital)) then
    FormLectorLibroIvaDigital:=TFormLectorLibroIvaDigital.Create(Self);
  FormLectorLibroIvaDigital.Show;

end;

procedure TFormLibroIvaVenta_2.LibroIvaDigitalExecute(Sender: TObject);
var Periodo,PComp :string; Pos: Integer;
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  Buscar.Execute;

  Periodo               := FormatDateTime('yyyymm',Desde.Date);
  SaveDialog1.DefaultExt:= 'TXT';
  SaveDialog1.FileName  := 'LIBRO_IVA_DIGITAL_VENTAS_CBTE_'+Periodo+'.txt';

  if SaveDialog1.Execute then
    begin

      if GeneraLibroIvaDigital(SaveDialog1.FileName,True) then
        if MessageDlg('Continua con el de Compras...???',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
          begin       //////////////////////   COMPRAS
            PComp := StringReplace(SaveDialog1.FileName,'VENTAS','COMPRAS',[]);
            if not Assigned(FormLibroIvaCompra_2) then
              FormLibroIvaCompra_2  :=  TFormLibroIvaCompra_2.Create(Self,True); //HIDE=TRUE
            FormLibroIvaCompra_2.IniciaLibroCompra(Desde.Date,Hasta.Date,cbSucursales.Value);
            FormLibroIvaCompra_2.GeneraLibroIvaDigital(PComp,TRUE);
            FormLibroIvaCompra_2.Close;
          end;
    end;


end;


procedure TFormLibroIvaVenta_2.lvSucursalesClick(Sender: TObject);
var i:integer;
Lista:TListItem;
begin
  inherited;
  DatosLibroIvaVta.CDSLibroIvaVenta.Filtered:=False;
  DatosLibroIvaVta.CDSLibroIvaVenta.Filter:='';

  Filtro:='';
  for I := 0 to FormSucursalesExportacion.lvSucursales.Items.Count - 1 do
    begin
      lista:=FormSucursalesExportacion.lvSucursales.Items[i];
      if lista.Checked then
        begin
          if Filtro='' then
            Filtro:='sucursalventa in ('+ Lista.SubItems.Strings[0]
          else
            Filtro:=Filtro+','+Lista.SubItems.Strings[0];
        end;
    end;
  if Filtro<>'' then
     begin
       Filtro:=Filtro+')';
       DatosLibroIvaVta.CDSLibroIvaVenta.Filter:=Filtro;
       DatosLibroIvaVta.CDSLibroIvaVenta.Filtered:=True;
     end;
end;


procedure TFormLibroIvaVenta_2.PresentacionRICAExecute(Sender: TObject);
Var
  ArchiTxt: TextFile;
  tipo,fecha,tipocomprob,puntoVta,nrocpbte,CuitReceptor,NroDocumento,NroFormularioF8001,
  CodigiOperacion,importe,gravado,alicuota,tasa,impuesto,cantlicuotasIva: String;
  Cantidad:Integer;
  Impuesto_Valor:Extended;

begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if DatosLibroIvaVta.CDSLibroIvaVenta.IsEmpty then
    Raise Exception.Create('No hay datos para procesar.....');
  // REGINFO_CV_VENTAS_CPBTE ****************
  DatosLibroIvaVta.CDSLibroIvaVenta.First;
  DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames:='';
//  CDSLibroIvaVenta.IndexFieldNames:='SUCURSALVENTA ;prefijo ;TIPO_CPBTE ;numero ;fecha';
  DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames:='TIPO_CPBTE ;prefijo ;numero';
  DatosLibroIvaVta.CDSLibroIvaVenta.IndexFieldNames:='TIPO_CPBTE ;NRO_CPBTE';

  DatosLibroIvaVta.CDSLibroIvaVenta.First;
  CuitReceptor:=DatosLibroIvaVta.CDSEmpresaCUIT.AsString;
  Delete(CuitReceptor,Pos('-',CuitReceptor),1);
  Delete(CuitReceptor,Pos('-',CuitReceptor),1);

  SaveDialog1.FileName  :='RICA_'+CuitReceptor+'_'+formatDateTime('yyyymm',Desde.Date)+'_00';
  SaveDialog1.DefaultExt:='TXT';
  if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (DatosLibroIvaVta.CDSLibroIvaVenta.Eof) do
        begin
          if (DatosLibroIvaVta.CDSLibroIvaVentaANULADO.Value='N') and (DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value<>'SIN NRO CAE') AND
             ((DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') or (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M'))  Then
            begin
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
                tipocomprob:='001';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
                tipocomprob:='001';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
                tipocomprob:='003';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
                tipocomprob:='002';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='TK') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
                tipocomprob:='081';

              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
                tipocomprob:='051';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
                tipocomprob:='051';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
                tipocomprob:='053';
              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
                tipocomprob:='052';


              puntoVta      :='0'+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,2,4);
              if puntoVta='00000' Then PuntoVta:='00001';
              nrocpbte      :=copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8); // son de 20 caraceres

              Fecha :=FormatDateTime('yyyymmdd',DatosLibroIvaVta.CDSLibroIvaVentaFECHA.AsDateTime);

              CuitReceptor:=DatosLibroIvaVta.CDSEmpresaCUIT.AsString;
              Delete(CuitReceptor,Pos('-',CuitReceptor),1);
              Delete(CuitReceptor,Pos('-',CuitReceptor),1);

              NroDocumento:=DatosLibroIvaVta.CDSLibroIvaVentaCUIT.AsString;
              Delete(NroDocumento,Pos('-',NroDocumento),1);
              Delete(NroDocumento,Pos('-',NroDocumento),1);
              NroDocumento:='000000000'+NroDocumento;

              if SysUtils.FormatSettings.DecimalSeparator=',' Then
                Importe:=FormatFloat('0,00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat)
              else
                Importe:=FormatFloat('0.00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat);

              if SysUtils.FormatSettings.DecimalSeparator=',' Then
                gravado:=FormatFloat('0,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat)
              else
                gravado:=FormatFloat('0.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat);

             DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=False;
             DatosLibroIvaVta.CDSLibroIvaDet.Filter:= '(Tasa > 0 )and (tasa <> 13.5)';
             DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=True;

             //******************************************************************************
             cantlicuotasIva:=IntToStr(DatosLibroIvaVta.CDSLibroIvaDet.RecordCount);
             if DatosLibroIvaVta.CDSLibroIvaDet.RecordCount<=0 then
               cantlicuotasIva:='1';
             //******************************************************************************

             NroFormularioF8001:='';//'0000000000'
             Cantidad      :=0;
             Impuesto_Valor:=0;
             if (StrToInt(cantlicuotasIva)>0) then
               begin
                 DatosLibroIvaVta.CDSLibroIvaDet.First;
                 while Not(DatosLibroIvaVta.CDSLibroIvaDet.Eof) do
                   begin
                     Cantidad:=Cantidad+1;
                     if (Cantidad<StrToInt(cantlicuotasIva)) then
                       Importe:='0,00';

                     Impuesto_Valor:=Impuesto_Valor+DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat;

                     if SysUtils.FormatSettings.DecimalSeparator=',' Then
                       tasa:=FormatFloat('00,00',DatosLibroIvaVta.CDSLibroIvaDetTASA.AsFloat)
                     else
                       tasa:=FormatFloat('00.00',DatosLibroIvaVta.CDSLibroIvaDetTASA.AsFloat);

                     if tasa='10.50' then alicuota:='4' else
                     if tasa='21.00' then alicuota:='5' else
                     if tasa='27.00' then alicuota:='6';

                     if StrToInt(cantlicuotasIva)>1 then
                       alicuota:='99';

                     DatosLibroIvaVta.CDSLibroIvaDet.Next;
                   end;

                 if SysUtils.FormatSettings.DecimalSeparator=',' Then
                   impuesto:=FormatFloat('0,00',Impuesto_Valor)
                 else
                   impuesto:=FormatFloat('0.00',Impuesto_Valor);

                 WriteLn(ArchiTxt, tipocomprob,';',
                                      puntoVta,';',
                                      nrocpbte,';',
                                         fecha,';',
                                  CuitReceptor,';',
                                       gravado,';',
                                      alicuota,';',
                                      impuesto,';',
                                       Importe,';',
                            NroFormularioF8001,';',
                                          '80',';',//<<< codigo del tipo de documento
                                  NroDocumento,';',
                                          '01',';',//<<<< codigo personeria 01:titular
                                          '01');//<<<< codigo de excepcion 01:locador/prestador
//                     CDSLibroIvaDet.Next;
//                   end;
               end
            end;
          DatosLibroIvaVta.CDSLibroIvaVenta.Next;
        end;
      DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=False;
      DatosLibroIvaVta.CDSLibroIvaDet.Filter:= '';
      CloseFile(ArchiTxt);
      if Not(VirtualUI.Active) then
        ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
      if VirtualUI.Active then
        begin
          VirtualUI.StdDialogs:=False;
          VirtualUI.DownloadFile(SaveDialog1.FileName);
        END;

    end;
end;

procedure TFormLibroIvaVenta_2.btDetallesClick(Sender: TObject);
begin
  if FormComposicionIvaVta.Visible=False then
    FormComposicionIvaVta.Visible:=True
  else
    FormComposicionIvaVta.Visible:=False;

end;

procedure TFormLibroIvaVenta_2.btFiltroClick(Sender: TObject);
begin
  inherited;
  if DatosLibroIvaVta.CDSLibroIvaVenta.IsEmpty then
    Raise Exception.Create('No hay datos para procesar.....');
  FormSucursalesExportacion.ShowModal;
end;

procedure TFormLibroIvaVenta_2.cbSucursalesChange(Sender: TObject);
begin
  Buscar.Execute;
end;


procedure TFormLibroIvaVenta_2.CierreFiscalExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    spCierreFiscal_FD.Close;
    spCierreFiscal_FD.ParamByName('mes').Value      := m;
    spCierreFiscal_FD.ParamByName('anio').Value     := y;
    spCierreFiscal_FD.ParamByName('compra_venta').Value:='V';
    spCierreFiscal_FD.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spCierreFiscal_FD.Close;
    SHowMessage('Cierre Fiscal echo Periodo:'+IntToStr(m)+'/'+IntToStr(y))
  except
    DMMain_FD.fdcGestion.Rollback;
    SHowMessage('No se realizo el cierre Fiscal Periodo:'+IntToStr(m)+'/'+IntToStr(y));
  End;

end;
{
001	FACTURAS A
002	NOTAS DE DEBITO A
003	NOTAS DE CREDITO A
004	RECIBOS A
005	NOTAS DE VENTA AL CONTADO A
006	FACTURAS B
007	NOTAS DE DEBITO B
008	NOTAS DE CREDITO B
009	RECIBOS B
010	NOTAS DE VENTA AL CONTADO B
011	FACTURAS C
012	NOTAS DE DEBITO C
013	NOTAS DE CREDITO C
014	DOCUMENTO ADUANERO
015	RECIBOS C
016	NOTAS DE VENTA AL CONTADO C
019	FACTURAS DE EXPORTACION
020	NOTAS DE DEBITO POR OPERACIONES CON EL EXTERIOR
021	NOTAS DE CREDITO POR OPERACIONES CON EL EXTERIOR
022	FACTURAS - PERMISO EXPORTACION SIMPLIFICADO - DTO. 855/97
030	COMPROBANTES DE COMPRA DE BIENES USADOS
031	MANDATO - CONSIGNACION
032	COMPROBANTES PARA RECICLAR MATERIALES
034	COMPROBANTES A DEL APARTADO A  INCISO F  R G  N  1415
035	COMPROBANTES B DEL ANEXO I, APARTADO A, INC. F), RG N° 1415
036	COMPROBANTES C DEL Anexo I, Apartado A, INC.F), R.G. N° 1415
037	NOTAS DE DEBITO O DOCUMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N° 1415
038	NOTAS DE CREDITO O DOCMENTO EQUIVALENTE QUE CUMPLAN CON LA R.G. N° 1415
039	OTROS COMPROBANTES A QUE CUMPLEN CON LA R G  1415
040	OTROS COMPROBANTES B QUE CUMPLAN CON LA R.G. N° 1415
041	OTROS COMPROBANTES C QUE CUMPLAN CON LA R.G. N° 1415
050	RECIBO FACTURA A  REGIMEN DE FACTURA DE CREDITO
051	FACTURAS M
052	NOTAS DE DEBITO M
053	NOTAS DE CREDITO M
054	RECIBOS M
055	NOTAS DE VENTA AL CONTADO M
056	COMPROBANTES M DEL ANEXO I  APARTADO A  INC F   R G  N  1415
057	OTROS COMPROBANTES M QUE CUMPLAN CON LA R G  N  1415
058	CUENTAS DE VENTA Y LIQUIDO PRODUCTO M
059	LIQUIDACIONES M
060	CUENTAS DE VENTA Y LIQUIDO PRODUCTO A
061	CUENTAS DE VENTA Y LIQUIDO PRODUCTO B
063	LIQUIDACIONES A
064	LIQUIDACIONES B
065	NOTAS DE CREDITO DE COMPROBANTES CON COD. 34, 39, 58, 59, 60, 63, 96, 97
066	DESPACHO DE IMPORTACION
067	IMPORTACION DE SERVICIOS
068	LIQUIDACION C
070	RECIBOS FACTURA DE CREDITO
071	CREDITO FISCAL POR CONTRIBUCIONES PATRONALES
073	FORMULARIO 1116 RT
074	CARTA DE PORTE PARA EL TRANSPORTE AUTOMOTOR PARA GRANOS
075	CARTA DE PORTE PARA EL TRANSPORTE FERROVIARIO PARA GRANOS
077
078
079
080	COMPROBANTE DIARIO DE CIERRE (ZETA)
081	TIQUE FACTURA A   CONTROLADORES FISCALES
082	TIQUE - FACTURA B
083	TIQUE
084	COMPROBANTE   FACTURA DE SERVICIOS PUBLICOS   INTERESES FINANCIEROS
085	NOTA DE CREDITO   SERVICIOS PUBLICOS   NOTA DE CREDITO CONTROLADORES FISCALES
086	NOTA DE DEBITO   SERVICIOS PUBLICOS
087	OTROS COMPROBANTES - SERVICIOS DEL EXTERIOR
088	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS / REMITO ELECTRONICO
089	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS - NOTAS DE DEBITO / RESUMEN DE DATOS
090	OTROS COMPROBANTES - DOCUMENTOS EXCEPTUADOS - NOTAS DE CREDITO
091	REMITOS R
092	AJUSTES CONTABLES QUE INCREMENTAN EL DEBITO FISCAL
093	AJUSTES CONTABLES QUE DISMINUYEN EL DEBITO FISCAL
094	AJUSTES CONTABLES QUE INCREMENTAN EL CREDITO FISCAL
095	AJUSTES CONTABLES QUE DISMINUYEN EL CREDITO FISCAL
096	FORMULARIO 1116 B
097	FORMULARIO 1116 C
099	OTROS COMP  QUE NO CUMPLEN CON LA R G  3419 Y SUS MODIF
101	AJUSTE ANUAL PROVENIENTE DE LA  D J  DEL IVA  POSITIVO
102	AJUSTE ANUAL PROVENIENTE DE LA  D J  DEL IVA  NEGATIVO
103	NOTA DE ASIGNACION
104	NOTA DE CREDITO DE ASIGNACION
}

function TFormLibroIvaVenta_2.RegInfo_Cabecera:Boolean;
var
  ArchiTxt: TextFile;

  Cuit,Periodo,Secuencia,S_Mov,Prorratea,CredFiscalGlobal_Computable,
  ImpCreditoFiscalGlobal,ImpCreditoComputableDirecto,ImpCreditoFiscalProrrateo,
  ImpCreditoNoCompGlobal,ImpCredtioSeg_Soc_otros,ImpCreditoFiscalComp_Seg_Otros:String;
begin
   Result:=False;

   Periodo               := FormatDateTime('YYYYMM',Desde.Date);
   SaveDialog1.FileName  :='REGINFO_CV_CABECERA_'+Periodo+'.TXT';
   SaveDialog1.DefaultExt:='TXT';

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

   if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);

      if DatosLibroIvaVta.CDSEmpresaCUIT.Value='' Then
        Cuit:='00000000000'
      else
        Cuit:=copy(DatosLibroIvaVta.CDSEmpresaCUIT.Value,1,2)+copy(DatosLibroIvaVta.CDSEmpresaCUIT.Value,4,8)+ copy(DatosLibroIvaVta.CDSEmpresaCUIT.Value,13,1);

      Periodo                    := FormatDateTime('YYYYMM',Desde.Date);
      Secuencia                  := '00';
      S_Mov                      := 'N';
      Prorratea                  := 'N';
      CredFiscalGlobal_Computable:= '2';
      ImpCreditoFiscalGlobal     := '000000000000000';
      ImpCreditoComputableDirecto:= '000000000000000';
      ImpCreditoFiscalProrrateo  := '000000000000000';
      ImpCreditoNoCompGlobal     := '000000000000000';
      ImpCredtioSeg_Soc_otros    := '000000000000000';
      ImpCreditoFiscalComp_Seg_Otros:='000000000000000';
      WriteLn(ArchiTxt,  cuit,     Periodo  ,   Secuencia,    S_Mov,  Prorratea,
                         CredFiscalGlobal_Computable,
                         ImpCreditoFiscalGlobal,
                         ImpCreditoComputableDirecto,
                         ImpCreditoFiscalProrrateo,
                         ImpCreditoNoCompGlobal,
                         ImpCredtioSeg_Soc_otros,
                         ImpCreditoFiscalComp_Seg_Otros);

      CloseFile(ArchiTxt);
      result:=True;
  end;


  PathCabecera:= SaveDialog1.FileName;

end;

procedure TFormLibroIvaVenta_2.Citi3685Execute(Sender: TObject);
var Periodo, directorio:string;
begin
  Periodo:=FormatDateTime('yyyymm',Desde.Date);
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.FileName  :='REGINFO_CV_VENTAS_CPBTE';
  SaveDialog1.DefaultExt:='TXT';
  if SaveDialog1.Execute Then
 // RegInfo_Cabecera;
    if SaveDialog1.FileName<>'' then
      begin
        directorio  := ExtractFilePath(SaveDialog1.FileName);
        GeneraLibroIvaDigital(directorio+'\REGINFO_CV_VENTAS_CPBTE.TXT',False);
      end;


end;


procedure TFormLibroIvaVenta_2.cxGridListadoDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString='FC') or
     (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString='NC') or
     (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString='ND') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew  :=DatosLibroIvaVta.CDSLibroIvaVentaID_CPBTE.AsString;
      FormCpbte_2.TipoCpbte:=DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
        FormCpbteCtdo_2.DatoNew  :=DatosLibroIvaVta.CDSLibroIvaVentaID_CPBTE.AsString;
        FormCpbteCtdo_2.TipoCpbte:=DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta := TFormTicketVta.Create(Self);
          FormTicketVta.DatoNew  :=DatosLibroIvaVta.CDSLibroIvaVentaID_CPBTE.AsString;
          FormTicketVta.TipoCpbte:=DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;

end;

procedure TFormLibroIvaVenta_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;

  LibroIvaVta   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LibroIva_venta.ini');
  //*************************************************************
  LibroIvaVta.WriteString('Reporte', 'File', edReporte.Text);
  LibroIvaVta.Free;
  FreeAndNil(FormComposicionIvaVta);
  FreeAndNil(FormSucursalesExportacion);
  FreeAndNil(FormExportarLibroIvaVtaExcel);
  CierraLibroVenta;
  Action:=caFree;
end;

procedure TFormLibroIvaVenta_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLibroIvaVenta_2:=nil;
end;

procedure TFormLibroIvaVenta_2.ExcelHolister1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  SaveDialog1.FileName  :='LibroIvaVta_'+FormatDateTime('yyyymmdd',Desde.Date)+'_'+FormatDateTime('yyyymmdd',Hasta.Date);
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
    if SaveDialog1.FileName<>'' Then
      begin
       if VirtualUI.Active then
          DataToXLS.SaveToFile(SaveDialog1.FileName)
        else
          DataToXLS.SaveToFile(SaveDialog1.FileName);

        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog1.FileName);
      end;
end;

procedure TFormLibroIvaVenta_2.ExortarXLSExecute(Sender: TObject);
begin
  inherited;
  FormExportarLibroIvaVtaExcel.Visible:=True;
  FormExportarLibroIvaVtaExcel.BringToFront;
end;

procedure TFormLibroIvaVenta_2.ExportaraExcelArticulos1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='LibroIVA_Venta_Periodo_'+FormatDateTime('MMYYYY',Desde.Date);
  SaveDialog1.DefaultExt:='xls';
  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
           SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGridListado)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGridListado);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormLibroIvaVenta_2.ExportaraExcelcon1Click(Sender: TObject);
var
  ASheet1, ASheet2: TdxSpreadSheet;
  AStream: TMemoryStream;
  ATable : TdxSpreadSheetTableView;
begin
  ExportGridToXLSX(ExtractFilePath(ParamStr(0))+'Temp1', cxGridListado);
  ExportGridToXLSX(ExtractFilePath(ParamStr(0))+'Temp2', cxGCategorias);

  ASheet1 := TdxSpreadSheet.Create(Self);
  ASheet1.LoadFromFile(ExtractFilePath(ParamStr(0))+'Temp1.xlsx');

  ASheet2 := TdxSpreadSheet.Create(Self);
  AStream := TMemoryStream.Create;
  ASheet1.ActiveSheetAsTable.CopyCellDataToStream(ASheet1.ActiveSheetAsTable.Dimensions, AStream);
  AStream.Position := 0;
  ASheet2.ActiveSheetAsTable.PasteCellDataFromStream(Point(0, 0), AStream);
  ASheet1.LoadFromFile(ExtractFilePath(ParamStr(0))+'Temp2.xlsx');
  AStream.Position := 0;
  ASheet1.ActiveSheetAsTable.CopyCellDataToStream(ASheet1.ActiveSheetAsTable.Dimensions, AStream);
  ATable := ASheet2.AddSheet('Catgorias', TdxSpreadSheetTableView) as TdxSpreadSheetTableView;
  AStream.Position := 0;
  ATable.PasteCellDataFromStream(Point(0, 0), AStream);

 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:= 'LibroIVA_Venta_Periodo_'+FormatDateTime('MMYYYY',Desde.Date);
  SaveDialog1.DefaultExt:='xls';
  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

       if VirtualUI.Active then
         ASheet2.SaveToFile(SaveDialog1.FileName)
       else
         ASheet2.SaveToFile(SaveDialog1.FileName);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
  AStream.Free;
  ASheet1.Free;
  ASheet2.Free;
end;

// REEMPLAZAD-O POR LIBRO DE IVA DIGITAL......
//procedure TFormLibroIvaVenta_2.ExportarCitiExecute(Sender: TObject);
//Var
//  ArchiTxt: TextFile;
//  tipo,fecha,tipocomprob,puntoVta,nrocpbte,nrocpbtehasta,cod_Identificador,
//  Cuit,razonsocial,importe,excluido,gravado,alicuota,impuesto,importeexento,cantlicuotasIva,
//  FechaRet,ImporteRet: String;
//  i,Cantidad:byte;
//begin
//  if VirtualUI.Active then
//    VirtualUI.StdDialogs:=False;
//
//  if DatosLibroIvaVta.CDSLibroIvaVenta.IsEmpty then
//    Raise Exception.Create('No hay datos para procesar.....');
//  DatosLibroIvaVta.CDSLibroIvaVenta.First;
//  if SaveDialog1.Execute Then
//    begin
//      AssignFile(ArchiTxt, SaveDialog1.FileName);
//      Rewrite(ArchiTxt);
//      while not (DatosLibroIvaVta.CDSLibroIvaVenta.Eof) do
//        begin
//          if DatosLibroIvaVta.CDSLibroIvaVentaANULADO.Value='N' Then
//            begin
//              Tipo  :='1';
//              Fecha :=FormatDateTime('yyyy/mm/dd',DatosLibroIvaVta.CDSLibroIvaVentaFECHA.AsDateTime);
//              delete(fecha,5,1);
//              delete(fecha,7,1);
//
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
//                tipocomprob:='01';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
//                tipocomprob:='01';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
//                tipocomprob:='03';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
//                tipocomprob:='02';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='TK') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
//                tipocomprob:='81';
//
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
//                tipocomprob:='06';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
//                tipocomprob:='06';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
//                tipocomprob:='08';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
//                tipocomprob:='07';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='TK') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
//                tipocomprob:='82';
//
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
//                tipocomprob:='80';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
//                tipocomprob:='80';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
//                tipocomprob:='80';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
//                tipocomprob:='80';
//
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
//                tipocomprob:='51';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
//                tipocomprob:='51';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
//                tipocomprob:='53';
//              if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='M') Then
//                tipocomprob:='52';
//
//           // tipocomprob:='99';
//
//              puntoVta      :=copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,2,4);
//              if puntoVta='0000' Then PuntoVta:='0001';
//              nrocpbte      :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8); // son de 20 caraceres
//              nrocpbtehasta :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8);
//
////            if CDSLibroIvaVentaCONDICION_IVA.Value='1' Then cod_Identificador:='80';
//              cod_Identificador:='99';
//              if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=1 Then cod_Identificador:='80';
//              if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=4 Then cod_Identificador:='80';
//
////            cod_Identificador:='80';
////            if (tipocomprob<>'01') and //fact A
////               (tipocomprob<>'02') and //NC A
////               (tipocomprob<>'03') Then //ND A
////              cod_Identificador:='99';
//
//              if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value='' Then
//                Cuit:='00000000000'
//              else
//                Cuit:=copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,1,2)+copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,4,8)+ copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,13,1);
//
//              if cod_Identificador='99' Then
//                Cuit:='00000000000';
//
//              razonsocial:=Copy(Trim(DatosLibroIvaVta.CDSLibroIvaVentaRAZON_SOCIAL.Value),1,30)+
//                           copy('                                              ',1,30-Length(Trim(DatosLibroIvaVta.CDSLibroIvaVentaRAZON_SOCIAL.Value)));
//
//              if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                Importe:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat)
//              else
//                Importe:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat);
//              delete(importe,14,1);
//
//              if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                importeexento:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat)
//              else
//                importeexento:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat);
//              delete(importeexento,14,1);
//
//              excluido:='000000000000000';
//
//              if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                gravado:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat)
//              else
//                gravado:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat);
//              delete(gravado,14,1);
//
//             DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=False;
//             DatosLibroIvaVta.CDSLibroIvaDet.Filter:= '(Tasa > 0 )and (tasa <> 13.5)';
//             DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=True;
//
//             //******************************************************************************
//             cantlicuotasIva:=IntToStr(DatosLibroIvaVta.CDSLibroIvaDet.RecordCount);
//             if DatosLibroIvaVta.CDSLibroIvaDet.RecordCount<=0 then
//               cantlicuotasIva:='1';
//             //******************************************************************************
//             alicuota:='0000';
//             impuesto:=FormatFloat('0000000000000.00',0);
//             delete(impuesto,14,1);
//
//             Cantidad:=0;
//             if (StrToInt(cantlicuotasIva)>0) then
//               begin
//                 DatosLibroIvaVta.CDSLibroIvaDet.First;
//                 while Not(DatosLibroIvaVta.CDSLibroIvaDet.Eof) do
//                   begin
//                     Cantidad:=Cantidad+1;
//                     if (Cantidad<StrToInt(cantlicuotasIva)) then
//                       Importe:='0000000000000,00'
//                     else
//                       begin
//                         if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                           Importe:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat)
//                         else
//                           Importe:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat);
//                       end;
//                     delete(importe,14,1);
//
//                     if (Cantidad<StrToInt(cantlicuotasIva)) then
//                       importeexento:='0000000000000,00'
//                     else
//                       begin
//                         if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                           importeexento:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat)
//                         else
//                           importeexento:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat);
//                       end;
//                     delete(importeexento,14,1);
//
//                     if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                       impuesto:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat)
//                     else
//                       impuesto:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaDetIMPORTE.AsFloat);
//                     delete(impuesto,14,1);
//
//                     if SysUtils.FormatSettings.DecimalSeparator=',' Then
//                       alicuota:=FormatFloat('00,00',DatosLibroIvaVta.CDSLibroIvaDetTASA.AsFloat)
//                     else
//                       alicuota:=FormatFloat('00.00',DatosLibroIvaVta.CDSLibroIvaDetTASA.AsFloat);
//                     delete(alicuota,3,1);
//
//
//
//                     FechaRet  :='00000000';
//                     ImporteRet:='000000000000000';
//
//                     WriteLn(ArchiTxt, tipo    ,     fecha,       tipocomprob, ' ',         //controlador fisal
//                                       puntoVta,  nrocpbte,     nrocpbtehasta,
//                              cod_Identificador,      Cuit,       razonsocial,
//                                        Importe,  excluido,           gravado,
//                                       alicuota,  impuesto, '000000000000000',
//                                  importeexento,
//                              '000000000000000', '000000000000000',
//                       {20}   '000000000000000', '000000000000000',
//                              '00',
//                              '000',
//                              '0000000000',
//                       {25}   cantlicuotasIva,
//                              '0',
//                              '00000000000000',
//                              '00000000',
//                              '00000000',
//                              '000000000000000000000000000000'+'000000000000000000000000000000'+'000000000000000',
//                              FechaRet,
//                              ImporteRet);
//                     DatosLibroIvaVta.CDSLibroIvaDet.Next;
//                   end;
//               end
//             else
//               begin
//                 FechaRet  :='00000000';
//                 ImporteRet:='000000000000000';
//
//                 WriteLn(ArchiTxt, tipo    ,     fecha,       tipocomprob, ' ',         //controlador fisal
//                                   puntoVta,  nrocpbte,     nrocpbtehasta,
//                          cod_Identificador,      Cuit,       razonsocial,
//                                    Importe,  excluido,           gravado,
//                                   alicuota,  impuesto, '000000000000000',
//                              importeexento,
//                          '000000000000000', '000000000000000',
//                   {20}   '000000000000000', '000000000000000',
//                          '00',
//                          '000',
//                          '0000000000',
//                   {25}   cantlicuotasIva,
//                          '0',
//                          '00000000000000',
//                          '00000000',
//                          '00000000',
//                          '000000000000000000000000000000'+'000000000000000000000000000000'+'000000000000000',
//                          FechaRet,
//                          ImporteRet);
//               end;
//
//            end;
//          DatosLibroIvaVta.CDSLibroIvaVenta.Next;
//        end;
//      DatosLibroIvaVta.CDSLibroIvaDet.Filtered:=False;
//      DatosLibroIvaVta.CDSLibroIvaDet.Filter:= '';
//      CloseFile(ArchiTxt);
//      if VirtualUI.Active then
//        begin
//          VirtualUI.StdDialogs:=False;
//          VirtualUI.DownloadFile(SaveDialog1.FileName);
//        END;
//      ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
//    end;
//end;

procedure TFormLibroIvaVenta_2.ExportarCitiMultipleExecute(
  Sender: TObject);
Var
  ArchiTxt: TextFile;
  tipo,fecha,tipocomprob,puntoVta,nrocpbte,nrocpbtehasta,cod_Identificador,
  Cuit,razonsocial,importe,excluido,gravado,alicuota,impuesto,importeexento,cantlicuotasIva,
  FechaRet,ImporteRet: String;
  i:byte;
begin
  DatosLibroIvaVta.CDSLibroIvaVenta.First;
  if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      while not (DatosLibroIvaVta.CDSLibroIvaVenta.Eof) do
        begin
          if DatosLibroIvaVta.CDSLibroIvaVentaANULADO.Value='N' Then
            begin
            Tipo  :='1';
            Fecha :=FormatDateTime('yyyy/mm/dd',DatosLibroIvaVta.CDSLibroIvaVentaFECHA.AsDateTime);
            delete(fecha,5,1);
            delete(fecha,7,1);

            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
              tipocomprob:='01';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
              tipocomprob:='01';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
              tipocomprob:='03';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='A') Then
              tipocomprob:='02';

            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
              tipocomprob:='06';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
              tipocomprob:='06';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
              tipocomprob:='08';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='B') Then
              tipocomprob:='07';

            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
              tipocomprob:='80';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='FO') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
              tipocomprob:='80';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='NC') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
              tipocomprob:='80';
            if (DatosLibroIvaVta.CDSLibroIvaVentaTIPO_CPBTE.Value='ND') and (DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString[1]='Z') Then
              tipocomprob:='80';


           // tipocomprob:='99';

            puntoVta      :=copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,2,4);
            if puntoVta='0000' Then PuntoVta:='0001';
            nrocpbte      :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8);
            nrocpbtehasta :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaVta.CDSLibroIvaVentaNRO_CPBTE.AsString,6,8);

//            if CDSLibroIvaVentaCONDICION_IVA.Value='1' Then cod_Identificador:='80';
            cod_Identificador:='99';
            if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=1 Then cod_Identificador:='80';
            if DatosLibroIvaVta.CDSLibroIvaVentaCONDICION_IVA.Value=4 Then cod_Identificador:='80';

//            cod_Identificador:='80';
//            if (tipocomprob<>'01') and //fact A
//               (tipocomprob<>'02') and //NC A
//               (tipocomprob<>'03') Then //ND A
//              cod_Identificador:='99';

            if DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value='' Then
              Cuit:='00000000000'
            else
              Cuit:=copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,1,2)+copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,4,8)+ copy(DatosLibroIvaVta.CDSLibroIvaVentaCUIT.Value,13,1);

            if cod_Identificador='99' Then
              Cuit:='00000000000';

            razonsocial:=Copy(Trim(DatosLibroIvaVta.CDSLibroIvaVentaRAZON_SOCIAL.Value),1,30)+
                         copy('                                              ',1,30-Length(Trim(DatosLibroIvaVta.CDSLibroIvaVentaRAZON_SOCIAL.Value)));

            if SysUtils.FormatSettings.DecimalSeparator=',' Then
              Importe:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat)
            else
              Importe:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaTOTAL.AsFloat);
            delete(importe,14,1);

            if SysUtils.FormatSettings.DecimalSeparator=',' Then
              importeexento:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat)
            else
              importeexento:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_EXENTO.AsFloat);
            delete(importeexento,14,1);

          // ***** Excluido
          //  if System.SysUtils.FormatSettings.DecimalSeparator=',' Then
          //    excluido:=FormatFloat('0000000000000,00',CDSLibroIvaVentaNETO_GRAVADO.Value)
          //  else
          //    gravado:=FormatFloat('0000000000000.00',CDSLibroIvaVentaNETO_GRAVADO.Value);
          //  delete(gravado,14,1);

            excluido:='000000000000000';

            if SysUtils.FormatSettings.DecimalSeparator=',' Then
              gravado:=FormatFloat('0000000000000,00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat)
            else
              gravado:=FormatFloat('0000000000000.00',DatosLibroIvaVta.CDSLibroIvaVentaNETO_GRAVADO.AsFloat);
            delete(gravado,14,1);


            //***********
            cantlicuotasIva:='1';

//            if CDSDetalle.RecordCount>0 Then
//              begin
//                alicuota:=FormatFloat('0000',CDSDetalleTASA.value*100);
//
//                if System.SysUtils.FormatSettings.DecimalSeparator=',' Then
//                  impuesto:=FormatFloat('0000000000000,00',CDSDetalleIMPORTE.Value)
//                else
//                  impuesto:=FormatFloat('0000000000000.00',CDSDetalleIMPORTE.Value);
//                delete(impuesto,14,1);

//              end;
            FechaRet:='00000000';
            ImporteRet:='000000000000000';

            WriteLn(ArchiTxt,
                         tipo,
                         fecha,
                         tipocomprob,
                         ' ',
                         puntoVta,
                         nrocpbte,
                         nrocpbtehasta,
                         cod_Identificador,
                         Cuit,
                         razonsocial,
                         Importe,
                         excluido,
                         gravado,
                         alicuota,
                         impuesto,
                         '000000000000000',
                         importeexento,
                         '000000000000000',
                         '000000000000000',
                         '000000000000000',
                         '000000000000000',
                         '00',
                         '000',
                         '0000000000',
                         cantlicuotasIva,
                         '0',
                         '00000000000000',
                         '00000000',
                         '00000000',
                         '000000000000000000000000000000'+
                         '000000000000000000000000000000'+
                         '000000000000000',
                         FechaRet,
                         ImporteRet);  //Importe con 2 digitos

            end;
          DatosLibroIvaVta.CDSLibroIvaVenta.Next;
        end;
      CloseFile(ArchiTxt);
      ShowMessage('Archivo Generado Exitosamente en .....'+SaveDialog1.FileName+'..... ');
    end;
end;

procedure TFormLibroIvaVenta_2.FormShow(Sender: TObject);
begin
  inherited;
  LibroIvaVta   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LibroIva_venta.ini');
  //*************************************************************
  edReporte.Text := LibroIvaVta.ReadString('Reporte', 'File', 'sin archivo');
  LibroIvaVta.Free;

 // VirtualUI.StdDialogs:=False;

end;

procedure TFormLibroIvaVenta_2.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text := OpenDialog.FileName;
        Lon1           := Length(OpenDialog.InitialDir);
        Lon2           := Length(OpenDialog.FileName);
        edReporte.Text := Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
 end;

procedure TFormLibroIvaVenta_2.FormCreate(Sender: TObject);
var i:integer;
Lista:TListItem;
begin
  inherited;
  AutoSize:=False;
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, '.');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, ',');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONDECIMALSEP, '.');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONTHOUSANDSEP, ',');
    // establezco los separadores de miles y decimales
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosLibroIvaVta)) THEN
    DatosLibroIvaVta := TDatosLibroIvaVta.Create(Self);

  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

  if Not(Assigned(FormExportarLibroIvaVtaExcel)) then
    FormExportarLibroIvaVtaExcel:=TFormExportarLibroIvaVtaExcel.Create(Self);
  FormExportarLibroIvaVtaExcel.Visible:=False;

  DatosLibroIvaVta.CDSTipoCpbte.Open;

  if Not(Assigned(FormComposicionIvaVta)) then
    FormComposicionIvaVta:=TFormComposicionIvaVta.Create(Self);

  if Not(Assigned(FormSucursalesExportacion)) then
    FormSucursalesExportacion:=TFormSucursalesExportacion.Create(Self);

  FormSucursalesExportacion.LvSucursales.Clear;

  CDSSucursal.First;
  while not(CDSSucursal.Eof) DO
    begin
      Lista:=FormSucursalesExportacion.lvSucursales.Items.Add;
      Lista.Checked:=False;
      Lista.SubItems.Add(CDSSucursal.FieldByName('Codigo').AsString);
      Lista.SubItems.Add(CDSSucursal.FieldByName('Detalle').AsString);
      CDSSucursal.Next;
    end;
  DatosLibroIvaVta.CDSEmpresa.Open;

  VirtualUI.OnDownloadEnd  := VirtualUIDownloadEnd;
  VirtualUI.OnGetUploadDir := VirtualUIGetUploadDir;
  pcMovimientos.ActivePageIndex:=0;
end;

end.