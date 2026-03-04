unit ULibroIvaCompra_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ULibroIvaBase, Db, DBClient, Provider, frxExportXLS, frxExportRTF, frxClass,
  frxDBSet, ActnList, ComCtrls, Buttons,
  ToolWin, StdCtrls, Grids, DBGrids, ExtCtrls, Mask,
  IniFiles, ImgList, frxCross, JvExControls, JvGradient,
  JvComponentBase, DataExport, DataToXLS, frxExportPDF, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvToolEdit, JvExMask,
  JvBaseEdits, JvExDBGrids, JvDBGrid, CheckLst, System.Actions, JvAppStorage,
  JvAppIniStorage,VirtualUI_sdk, CompBuscador, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  AdvPageControl, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, Vcl.Menus, dxPSCore, dxPScxCommon,
  dxPScxPivotGridLnk,cxGridExportLink, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinBlack, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, dxPScxVGridLnk, System.StrUtils, System.AnsiStrings,
  JvExComCtrls, JvProgressBar, JvDBProgressBar, AdvCircularProgress,
  dxPSStdGrLnk, frxExportBaseDialog, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  JvExExtCtrls, JvExtComponent, JvPanel, AdvUtil, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, dxSkinWXI, frCoreClasses;

type
  TFormLibroIvaCompra_2 = class(TFormLibroIvaBase)
    ChangeSucursal: TAction;
    frxDBListado: TfrxDBDataset;
    frDBTotales: TfrxDBDataset;
    frDBTitulos: TfrxDBDataset;
    OpenDialog: TOpenDialog;
    frxCrossObject1: TfrxCrossObject;
    DataToXLS: TDataToXLS;
    BitBtn3: TBitBtn;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    frDBCreditos: TfrxDBDataset;
    frDBDebitos: TfrxDBDataset;
    frxDBDetealleMercad: TfrxDBDataset;
    ToolButton1: TToolButton;
    frDBSucursal: TfrxDBDataset;
    frxDBPercIIBB: TfrxDBDataset;
    chDetallePercIIBB: TCheckBox;
    CITI3685: TAction;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    bt3685: TBitBtn;
    ToolButton2: TToolButton;
    chbResumeTC: TCheckBox;
    chbGastosBco: TCheckBox;
    chbLiqTC: TCheckBox;
    DSPDespacho: TDataSetProvider;
    DSPDetalle: TDataSetProvider;
    CDSDespacho: TClientDataSet;
    CDSDespachoID: TIntegerField;
    CDSDespachoNRO: TStringField;
    CDSDespachoFECHA: TSQLTimeStampField;
    CDSDespachoFECHA_FISCAL: TSQLTimeStampField;
    CDSDespachoFOB_DIVISA: TIntegerField;
    CDSDespachoFLETE_DIVISA: TIntegerField;
    CDSDespachoSEGURO_DIVISA: TIntegerField;
    CDSDespachoVENDEDOR: TStringField;
    CDSDetalle: TClientDataSet;
    CDSDetalleID: TIntegerField;
    CDSDetalleID_CAB: TIntegerField;
    CDSDetalleCODIGO: TIntegerField;
    CDSDetalleDETALLE: TStringField;
    CDSDetalleMUESTRADETALLE: TStringField;
    DSDespacho: TDataSource;
    frDBDespacho: TfrxDBDataset;
    frDBDetalleDesp: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxDBEmpresa: TfrxDBDataset;
    pcDetalles: TAdvPageControl;
    pagImpuesto: TAdvTabSheet;
    pgArticulos: TAdvTabSheet;
    cxGArticulosDBTableView1: TcxGridDBTableView;
    cxGArticulosLevel1: TcxGridLevel;
    cxGArticulos: TcxGrid;
    frDBComposicionCred: TfrxDBDataset;
    frDBComposicionDeb: TfrxDBDataset;
    pagLibroIva: TAdvTabSheet;
    cxGridListadoDBTableView1: TcxGridDBTableView;
    cxGridListadoLevel1: TcxGridLevel;
    cxGridListado: TcxGrid;
    dxComponentPrinter1: TdxComponentPrinter;
    PopupMenu1: TPopupMenu;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    ImiprimirArt1: TMenuItem;
    N1: TMenuItem;
    ExportaraExcelArticulos1: TMenuItem;
    PopupMenu2: TPopupMenu;
    Imprimir1: TMenuItem;
    DSPGastosFcCompra: TDataSetProvider;
    CDSGastosFCCompra: TClientDataSet;
    CDSGastosFCCompraCODIGOARTICULO: TStringField;
    CDSGastosFCCompraDETALLE_STK: TStringField;
    CDSGastosFCCompraSUCURSALCOMPRA: TIntegerField;
    CDSGastosFCCompraCTA_CONTABLE: TStringField;
    CDSGastosFCCompraCTA_CONTABLE_COD: TStringField;
    DSGastosFcCompra: TDataSource;
    CDSGastosFCCompraFECHACOMPRA: TSQLTimeStampField;
    CDSGastosFCCompraFECHAFISCAL: TSQLTimeStampField;
    pagContable: TAdvTabSheet;
    cxGContable: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridDBTableView1CTA_CONTABLE: TcxGridDBColumn;
    cxGridDBTableView1CTA_CONTABLE_COD: TcxGridDBColumn;
    btMercaderia: TButton;
    btGastos: TButton;
    dxComponentPrinter1Link3: TdxGridReportLink;
    PopupMenu3: TPopupMenu;
    MenuItem1: TMenuItem;
    ExportarExcel1: TMenuItem;
    ExporarExcel1: TMenuItem;
    chbFechaFc: TCheckBox;
    cxGridListadoDBTableView1MUESTRA_IVA: TcxGridDBColumn;
    cxGridListadoDBTableView1TIPO_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1CLASE_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1NRO_CPBTE: TcxGridDBColumn;
    cxGridListadoDBTableView1FECHA: TcxGridDBColumn;
    cxGridListadoDBTableView1RAZON_SOCIAL: TcxGridDBColumn;
    cxGridListadoDBTableView1CONDICION_IVA: TcxGridDBColumn;
    cxGridListadoDBTableView1CUIT: TcxGridDBColumn;
    cxGridListadoDBTableView1SUCURSALCOMPRA: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_EXCLUIDO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_EXENTO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_GRAVADO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1NETO_MONOTRIBUTO_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1TOTAL_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL1_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL2_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL3_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL4_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL5_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL6_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1COL7_REC: TcxGridDBColumn;
    cxGridListadoDBTableView1CODIGO_AFIP: TcxGridDBColumn;
    cxGridListadoDBTableView1FECHA_FACTURA: TcxGridDBColumn;
    cxGArticulosDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGArticulosDBTableView1DETALLE: TcxGridDBColumn;
    cxGArticulosDBTableView1CLASE_ARTICULO: TcxGridDBColumn;
    cxGArticulosDBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGArticulosDBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGArticulosDBTableView1IMPORTE_REC: TcxGridDBColumn;
    cxGArticulosDBTableView1CANTIDAD_REC: TcxGridDBColumn;
    cxGArticulosDBTableView1CANTIDAD: TcxGridDBColumn;
    cxGArticulosDBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_IVA: TcxGridDBColumn;
    cxGrid1DBTableView1IVA_DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_1: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_2: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_3: TcxGridDBColumn;
    cxGrid1DBTableView1TASA_4: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_MONOTRIBUTO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_EXCLUIDO: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_1: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_2: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_3: TcxGridDBColumn;
    cxGrid1DBTableView1PORCTASA_4: TcxGridDBColumn;
    cxGrid1DBTableView1IIBB: TcxGridDBColumn;
    cxGrid1DBTableView1PERIVA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1TOTALCALCULADO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_1: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_2: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_3: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_4: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pnPieArt: TPanel;
    pnPieContable: TPanel;
    N2: TMenuItem;
    LimpiarIIBHuerfanos: TAction;
    LimpiarIIBVacios1: TMenuItem;
    btLibroIvaDigital: TButton;
    LibroIvaDigital: TAction;
    pnPie: TPanel;
    Label5: TLabel;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    QDespacho: TFDQuery;
    CDSDespachoCOTIZACION: TFloatField;
    CDSDespachoFOB: TFloatField;
    CDSDespachoVALOR_ADUANA_DOLAR: TFloatField;
    CDSDespachoTOTAL: TFloatField;
    CDSDespachoTOTAL_PESOS: TFloatField;
    CDSDespachoFLETE: TFloatField;
    CDSDespachoSEGURO: TFloatField;
    CDSDespachoBASEIVA_GANC: TFloatField;
    QDetalle: TFDQuery;
    CDSDetalleBASE_IMPONIBLE: TFloatField;
    CDSDetalleTASA: TFloatField;
    CDSDetalleIMPORTE: TFloatField;
    CDSDetalleIMPORTE_PESOS: TFloatField;
    QGastosFcCompra: TFDQuery;
    CDSGastosFCCompraTOTAL: TFloatField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    pnProveedores: TJvPanel;
    Panel2: TPanel;
    Label7: TLabel;
    lbProveedores: TCheckListBox;
    btSelec: TBitBtn;
    btUnSelec: TBitBtn;
    BitBtn4: TBitBtn;
    spClintes: TSpeedButton;
    pagAsiento: TAdvTabSheet;
    QBorradorAsiento: TFDQuery;
    DSBorradorAsiento: TDataSource;
    dbgAsientosDBTableView1: TcxGridDBTableView;
    dbgAsientosLevel1: TcxGridLevel;
    dbgAsientos: TcxGrid;
    QBorradorAsientoDETALLE: TStringField;
    QBorradorAsientoDEBE: TFloatField;
    QBorradorAsientoHABER: TFloatField;
    dbgAsientosDBTableView1DETALLE: TcxGridDBColumn;
    dbgAsientosDBTableView1DEBE: TcxGridDBColumn;
    dbgAsientosDBTableView1HABER: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    PopupMenu4: TPopupMenu;
    ExportaraExcel1: TMenuItem;
    cxGridListadoDBTableView1LOTEAFIP: TcxGridDBColumn;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CierreFiscalExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure cbSucursalesChange(Sender: TObject);
    procedure CITI3685Execute(Sender: TObject);
    procedure ImiprimirArt1Click(Sender: TObject);
    procedure ExportaraExcelArticulos1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure chMovimientosContableClick(Sender: TObject);
    procedure btMercaderiaClick(Sender: TObject);
    procedure btGastosClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure ExportarExcel1Click(Sender: TObject);
    procedure ExporarExcel1Click(Sender: TObject);
    procedure cxGridListadoDBTableView1CellDblClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGridListadoDBTableView1DblClick(Sender: TObject);
    procedure LimpiarIIBHuerfanosExecute(Sender: TObject);
    procedure LibroIvaDigitalExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure spClintesClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure btSelecClick(Sender: TObject);
    procedure btUnSelecClick(Sender: TObject);
    procedure lbProveedoresClick(Sender: TObject);
    procedure ExportaraExcel1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    LibroIvaComp:TIniFile;
    Filtro:String;

    procedure RegInfo_Cabecera;
    procedure IniciaLibroCompra(FDesde,FHasta: TDateTime; Sucursal:string);
    function  GeneraLibroIvaDigital(Path:string; EsDigital:Boolean):boolean;
    procedure CierraLibroCompra;
end;
var
  FormLibroIvaCompra_2: TFormLibroIvaCompra_2;

implementation

uses  UExportarLibroIvaComp_excel, DMLiborIvaCompra, UCompra_2,UCompraCtdo_2,
      UTiketVta,UDMain_FD, ULibroIvaVenta_2, DMLiborIvaVta;

{$R *.DFM}

procedure TFormLibroIvaCompra_2.RegInfo_Cabecera;
var
  ArchiTxt: TextFile;

  Cuit,Periodo,Secuencia,S_Mov,Prorratea,CredFiscalGlobal_Computable,
  ImpCreditoFiscalGlobal,ImpCreditoComputableDirecto,ImpCreditoFiscalProrrateo,
  ImpCreditoNoCompGlobal,ImpCredtioSeg_Soc_otros,ImpCreditoFiscalComp_Seg_Otros:String;
begin
   SaveDialog1.FileName   := 'REGINFO_CV_COMPRAS_CBTE';
   SaveDialog1.DefaultExt := 'TXT';

   if SaveDialog1.Execute Then
    begin
      AssignFile(ArchiTxt, SaveDialog1.FileName);
      Rewrite(ArchiTxt);
      if CDSEmpresaCUIT.Value='' Then
        Cuit:='00000000000'
      else
        Cuit:=copy(CDSEmpresaCUIT.Value,1,2)+copy(CDSEmpresaCUIT.Value,4,8)+ copy(CDSEmpresaCUIT.Value,13,1);

      Periodo                        := FormatDateTime('YYYYMM',Desde.Date);
      Secuencia                      := '00';
      S_Mov                          := 'N';
      Prorratea                      := 'N';
      CredFiscalGlobal_Computable    := '2';
      ImpCreditoFiscalGlobal         := '000000000000000';
      ImpCreditoComputableDirecto    := '000000000000000';
      ImpCreditoFiscalProrrateo      := '000000000000000';
      ImpCreditoNoCompGlobal         := '000000000000000';
      ImpCredtioSeg_Soc_otros        := '000000000000000';
      ImpCreditoFiscalComp_Seg_Otros := '000000000000000';
      WriteLn(ArchiTxt,  cuit,     Periodo  ,   Secuencia,    S_Mov,  Prorratea,
                         CredFiscalGlobal_Computable,
                         ImpCreditoFiscalGlobal,
                         ImpCreditoComputableDirecto,
                         ImpCreditoFiscalProrrateo,
                         ImpCreditoNoCompGlobal,
                         ImpCredtioSeg_Soc_otros,
                         ImpCreditoFiscalComp_Seg_Otros);

    end;
  CloseFile(ArchiTxt);
end;

procedure TFormLibroIvaCompra_2.IniciaLibroCompra(FDesde,FHasta: TDateTime; Sucursal:string);
begin
  if not Assigned(DatosLibroIvaCompra) then
    DatosLibroIvaCompra :=  TDatosLibroIvaCompra.Create(Self);


  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('SET GENERATOR ID_GENERICO TO 0');
  Query4_FD.ExecSQL;

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('delete from libro_iva_compra');
  Query4_FD.ExecSQL;
  Query4_FD.Close;

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('delete from libro_iva_compra_det');
  Query4_FD.ExecSQL;

  Query4_FD.Close;
  Query4_FD.SQL.Clear;
  Query4_FD.SQL.Add('delete from libro_iva_compra_titulos');
  Query4_FD.ExecSQL;
  Query4_FD.Close;

  Desde.Date  :=  FDesde;
  Hasta.Date  :=  FHasta;
  cbSucursales.KeyValue := Sucursal;

  spGeneraLibro_FD.Active := false;
  spGeneraLibro_FD.Params.ParamByName('FECHAINICIAL').AsDate := FDesde;
  spGeneraLibro_FD.Params.ParamByName('FechaFinal').AsDate   := FHasta;
  spGeneraLibro_FD.Params.ParamByName('sucursal').Value      := Sucursal;
  spGeneraLibro_FD.Params.ParamByName('LiquidacionTC').Value := 1;
  spGeneraLibro_FD.Params.ParamByName('ResumenTC').Value     := 1;
  spGeneraLibro_FD.Params.ParamByName('ResumenBco').Value    := 1;

  if Not(chbLiqTC.Checked) then
    spGeneraLibro_FD.Params.ParamByName('LiquidacionTC').Value := 0;
  if Not(chbResumeTC.Checked) then
    spGeneraLibro_FD.Params.ParamByName('ResumenTC').Value     := 0;
  if Not(chbGastosBco.Checked) then
    spGeneraLibro_FD.Params.ParamByName('ResumenBco').Value    := 0;

  spGeneraLibro_FD.ExecProc;


  DatosLibroIvaCompra.CDSListado.Close;
  DatosLibroIvaCompra.CDSListado.AfterScroll:=nil;

  DatosLibroIvaCompra.CDSListado.Open;

  DatosLibroIvaCompra.CDSTotales.Close;
  DatosLibroIvaCompra.CDSTotales.Params.ParamByName('sucursal').Value:=Sucursal;
  DatosLibroIvaCompra.CDSTotales.Open;

  DatosLibroIvaCompra.CDSTitulos.Close;
  DatosLibroIvaCompra.CDSTitulos.Open;

  DatosLibroIvaCompra.CDSDebitos.Close;
  DatosLibroIvaCompra.CDSDebitos.Params.ParamByName('sucursal').Value:=Sucursal;
  DatosLibroIvaCompra.CDSDebitos.Open;

  DatosLibroIvaCompra.CDSCreditos.Close;
  DatosLibroIvaCompra.CDSCreditos.Params.ParamByName('sucursal').Value:=Sucursal;
  DatosLibroIvaCompra.CDSCreditos.Open;


  DatosLibroIvaCompra.CDSCompIVADeb.Close;
  DatosLibroIvaCompra.CDSCompIVADeb.Open;


  DatosLibroIvaCompra.CDSCompIVACre.Close;
  DatosLibroIvaCompra.CDSCompIVACre.Open;


  DatosLibroIvaCompra.CDSCompIvaDebCredito.Close;
  DatosLibroIvaCompra.CDSCompIvaDebCredito.Open;



  DatosLibroIvaCompra.CDSListado.AfterScroll:=DatosLibroIvaCompra.CDSListadoAfterScroll;

end;

procedure TFormLibroIvaCompra_2.lbProveedoresClick(Sender: TObject);
var Cadena:String;
I:Integer;
begin
  inherited;
  DatosLibroIvaCompra.CDSListado.OnCalcFields:= nil;
  DatosLibroIvaCompra.CDSListado.AfterScroll := nil;
  DatosLibroIvaCompra.CDSListado.Filtered := False;

  filtro:='';   Cadena:='';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      if lbProveedores.Checked[I] Then
        begin
          Cadena:='';
          Cadena:=''''+Trim(copy(lbProveedores.Items[I],1,35))+'''';
          if Filtro='' then
            filtro:=Cadena
          else
            filtro:=Filtro+','+Cadena;
        end;
    end;
  DatosLibroIvaCompra.CDSListado.Filter   := 'RAZON_SOCIAL in ('+Filtro+')';
  if Filtro<>'' then
    DatosLibroIvaCompra.CDSListado.Filtered := True;

  DatosLibroIvaCompra.CDSListado.OnCalcFields:=DatosLibroIvaCompra.CDSListadoCalcFields;
  DatosLibroIvaCompra.CDSListado.AfterScroll:=DatosLibroIvaCompra.CDSListadoAfterScroll;

end;

procedure TFormLibroIvaCompra_2.CierraLibroCompra;
begin
  FreeAndNil(DatosLibroIvaCompra);
end;

procedure TFormLibroIvaCompra_2.BuscarExecute(Sender: TObject);
var I: Integer;
begin

  Screen.Cursor:=crHourGlass;
  sbEstado.SimpleText:='Iniciando querys....';
  Application.ProcessMessages;
  Sleep(1);
  IniciaLibroCompra(Desde.Date,Hasta.Date,cbSucursales.KeyValue);

  sbEstado.SimpleText := 'Terminado...';

  sbEstado.SimpleText := 'Abriendo Listado..';
  Application.ProcessMessages;


  CDSDespacho.Close;
  CDSDespacho.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSDespacho.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSDespacho.Open;


  for I := 0 to DataToXLS.Columns.Count - 1 do
    begin
      if (DatosLibroIvaCompra.CDSListado.FindField(DataToXLS.Columns[I].DataField).DisplayLabel<>'') then
        DataToXLS.Columns[I].Title:=DatosLibroIvaCompra.CDSListado.FindField(DataToXLS.Columns[I].DataField).DisplayLabel
      else
        DataToXLS.Columns[I].Title:='--';
    end;

  FormExportarLibroIvaExcel.chklstColumnas.Clear;
  for I := 0 to DataToXLS.Columns.Count-1 do
    begin
      FormExportarLibroIvaExcel.chklstColumnas.Items.Add(DataToXLS.Columns[i].Title);
      FormExportarLibroIvaExcel.chklstColumnas.Checked[i]:= DataToXLS.Columns[i].Save;
    end;

  sbEstado.SimpleText := '..';
  Application.ProcessMessages;
  Sleep(1);

  cxGrid1DBTableView1.ViewData.Expand(True);
  Imprimir.Enabled            := True;
  rgOrden.Enabled             := True;
  cbSucursales.Enabled        := True;

  lbProveedores.Items.Clear;

  DatosLibroIvaCompra.QlistadoProveedores.Close;
  DatosLibroIvaCompra.QlistadoProveedores.Open;
//
  while not(DatosLibroIvaCompra.QlistadoProveedores.Eof) do
    begin
      lbProveedores.Items.Add(DatosLibroIvaCompra.QlistadoProveedores.fields[0].AsString );
      DatosLibroIvaCompra.QlistadoProveedores.Next;
    end;
  DatosLibroIvaCompra.QlistadoProveedores.Close;



  sbEstado.SimpleText := 'Generando Asiento Borrador..';
  Application.ProcessMessages;

  QBorradorAsiento.Close;
  QBorradorAsiento.ParamByName('desde').AsDateTime:=Desde.Date;
  QBorradorAsiento.ParamByName('hasta').AsDateTime:=Hasta.Date;
  QBorradorAsiento.Open;

  sbEstado.SimpleText := 'Terminado...';
  Application.ProcessMessages;

  rgOrden.OnClick(sender);
  Screen.Cursor:=crDefault;

end;


procedure TFormLibroIvaCompra_2.ImiprimirArt1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormLibroIvaCompra_2.Imprimir1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link2.Preview(True);
end;

procedure TFormLibroIvaCompra_2.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frLibroIva.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
  if chDetallePercIIBB.Checked then
    frLibroIva.Variables['DetalleIIBB']:= '''S'''
  else
    frLibroIva.Variables['DetalleIIBB']:= '''N''';

  frLibroIva.PrepareReport;
  frLibroIva.ShowReport;
end;

procedure TFormLibroIvaCompra_2.LibroIvaDigitalExecute(Sender: TObject);
var Periodo, PVent:string;
begin

  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  Periodo:=FormatDateTime('yyyymm',Desde.Date);
  SaveDialog1.DefaultExt:='TXT';
  SaveDialog1.FileName  :='LIBRO_IVA_DIGITAL_COMPRAS_CBTE_'+Periodo+'.txt';

  if SaveDialog1.Execute then
    begin
      if GeneraLibroIvaDigital(SaveDialog1.FileName,True) then       //////////////////////   VENTAS
        if MessageDlg('Continua con el de Ventas...???',mtConfirmation,mbYesNo,0,mbNo)=mrYes Then
        begin
          if not Assigned(FormLibroIvaVenta_2) then
            FormLibroIvaVenta_2  :=  TFormLibroIvaVenta_2.Create(Self,True);
          FormLibroIvaVenta_2.IniciaLibroVenta(Desde.Date,Hasta.Date,cbSucursales.KeyValue);
          FormLibroIvaVenta_2.GeneraLibroIvaDigital(StringReplace(SaveDialog1.FileName,'COMPRAS','VENTAS',[]),True);
          FormLibroIvaVenta_2.Close;
        end;
    end;

end;


procedure TFormLibroIvaCompra_2.LimpiarIIBHuerfanosExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText := 'Ordenando Listado .....';
  Application.ProcessMessages;
  DatosLibroIvaCompra.QLimpiaIIBHuerfanos.Close;
  DatosLibroIvaCompra.QLimpiaIIBHuerfanos.ExecSQL;
  DatosLibroIvaCompra.QLimpiaIIBHuerfanos.Close;

  DatosLibroIvaCompra.QLimpiaIIBCero.Close;
  DatosLibroIvaCompra.QLimpiaIIBCero.ExecSQL;
  DatosLibroIvaCompra.QLimpiaIIBCero.Close;
  sbEstado.SimpleText := '';
  Application.ProcessMessages;

end;

procedure TFormLibroIvaCompra_2.MenuItem1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link3.Preview(True);
end;

procedure TFormLibroIvaCompra_2.RadioGroup1Click(Sender: TObject);
begin
  inherited;
  DatosLibroIvaCompra.CDSListado.OnCalcFields:=nil;
  sbEstado.SimpleText := 'Ordenando Listado .....';
  Application.ProcessMessages;
  IF rgOrden.ItemIndex = 0 THEN
    DatosLibroIvaCompra.CDSListado.IndexFieldNames := 'fecha;nro_cpbte'
  ELSE IF rgOrden.ItemIndex = 1 THEN
    DatosLibroIvaCompra.CDSListado.IndexFieldNames := 'Razon_social;nro_cpbte';
  sbEstado.SimpleText := '';
  DatosLibroIvaCompra.CDSListado.OnCalcFields:=DatosLibroIvaCompra.CDSListadoCalcFields;

end;

procedure TFormLibroIvaCompra_2.btMercaderiaClick(Sender: TObject);
begin
  inherited;
  if (DatosLibroIvaCompra.CDSDetalleMercaderia.IsEmpty) Then
   begin
      Screen.Cursor:=crHourGlass;
      DatosLibroIvaCompra.CDSDetalleMercaderia.Close;
      DatosLibroIvaCompra.CDSDetalleMercaderia.Params.ParamByName('desde').Value:=Desde.Date;
      DatosLibroIvaCompra.CDSDetalleMercaderia.Params.ParamByName('hasta').Value:=Hasta.Date;
      DatosLibroIvaCompra.CDSDetalleMercaderia.Open;

      DatosLibroIvaCompra.CDSListado.IndexFieldNames := 'fecha;nro_cpbte';
      Screen.Cursor:=crDefault;
    end;

   cxGArticulosDBTableView1.ViewData.Expand(True);
end;

procedure TFormLibroIvaCompra_2.btSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  DatosLibroIvaCompra.CDSListado.OnCalcFields:= nil;
  DatosLibroIvaCompra.CDSListado.AfterScroll := nil;
  Filtro:='';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      lbProveedores.Checked[I]:=True;
      Cadena:='';
      Cadena:=''''+Trim(copy(lbProveedores.Items[I],1,35))+'''';
      if Filtro='' then
        filtro:=Cadena
      else
       filtro:=Filtro+','+Cadena;
    end;
  DatosLibroIvaCompra.CDSListado.Filtered := False;
  DatosLibroIvaCompra.CDSListado.Filter   := 'RAZON_SOCIAL in ('+Filtro+')';
  if Filtro<>'' then
    DatosLibroIvaCompra.CDSListado.Filtered := True;

  DatosLibroIvaCompra.CDSListado.OnCalcFields:=DatosLibroIvaCompra.CDSListadoCalcFields;
  DatosLibroIvaCompra.CDSListado.AfterScroll:=DatosLibroIvaCompra.CDSListadoAfterScroll;

 // pnClientes.Visible:=False;
end;

procedure TFormLibroIvaCompra_2.btUnSelecClick(Sender: TObject);
var i:Integer;
Cadena:String;
begin
  inherited;
  DatosLibroIvaCompra.CDSListado.OnCalcFields:= nil;
  DatosLibroIvaCompra.CDSListado.AfterScroll := nil;
  Filtro:='';
  for i := 0 to lbProveedores.Items.Count - 1 do
    begin
      lbProveedores.Checked[I]:=False;
    end;
  DatosLibroIvaCompra.CDSListado.Filtered := False;
  DatosLibroIvaCompra.CDSListado.Filter   := 'RAZON_SOCIAL in ('+Filtro+')';
  if Filtro<>'' then
    DatosLibroIvaCompra.CDSListado.Filtered := True;

  DatosLibroIvaCompra.CDSListado.OnCalcFields:=DatosLibroIvaCompra.CDSListadoCalcFields;
  DatosLibroIvaCompra.CDSListado.AfterScroll:=DatosLibroIvaCompra.CDSListadoAfterScroll;

  //pnClientes.Visible:=False;
end;

procedure TFormLibroIvaCompra_2.BitBtn4Click(Sender: TObject);
begin
  inherited;
  pnProveedores.Visible:=False;
end;

procedure TFormLibroIvaCompra_2.btGastosClick(Sender: TObject);
begin
  inherited;
  DatosLibroIvaCompra.CDSCtaContable.Close;
  CDSGastosFCCompra.Close;
  CDSGastosFCCompra.Params.ParamByName('Desde').AsDate   :=Desde.Date;
  CDSGastosFCCompra.Params.ParamByName('Hasta').AsDate   :=Hasta.Date;
  CDSGastosFCCompra.Params.ParamByName('Sucursal').Value :=cbSucursales.KeyValue;
  DatosLibroIvaCompra.CDSCtaContable.Open;
  CDSGastosFCCompra.Open;

end;

procedure TFormLibroIvaCompra_2.cbSucursalesChange(Sender: TObject);
begin
  inherited;

//  FormLibroIvaCompra_2.Cursor:=crHourGlass;
//  sbEstado.SimpleText:=' re iniciando consultas...';
//  Application.ProcessMessages;
//  CDSTotales.Close;
//  CDSTotales.Params.ParamByName('sucursal').Value:=cbSucursales.KeyValue;
//  CDSTotales.Open;
//
//  sbEstado.SimpleText:=' Generando debitos y creditos...';
//  Application.ProcessMessages;
//
//  CDSDebitos.Close;
//  CDSDebitos.Params.ParamByName('sucursal').Value:=cbSucursales.KeyValue;
//  CDSDebitos.Open;
//
//  CDSCreditos.Close;
//  CDSCreditos.Params.ParamByName('sucursal').Value:=cbSucursales.KeyValue;
//  CDSCreditos.Open;
//
//  sbEstado.SimpleText:='Mercaderias compradas...';
//  Application.ProcessMessages;
//
//
//  CDSDetalleMercaderia.Close;
//  CDSDetalleMercaderia.Params.ParamByName('desde').Value:=Desde.Date;
//  CDSDetalleMercaderia.Params.ParamByName('hasta').Value:=Hasta.Date;
//  CDSDetalleMercaderia.Params.ParamByName('Sucursal').Value:=cbSucursales.KeyValue;
//  CDSDetalleMercaderia.Open;
//
//  sbEstado.SimpleText:='...';
//  Application.ProcessMessages;
//
//
//  IF cbSucursales.keyValue <> -1 THEN
//    BEGIN
//      CDSListado.Filtered := False;
//      CDSListado.Filter   := 'sucursalcompra=' + cbSucursales.KeyValue;
//      CDSListado.Filtered := True;
//    END
//  ELSE
//    begin
//      CDSListado.Filtered := False;
//    end;
//  FormLibroIvaCompra_2.Cursor:=crDefault;
   Buscar.Execute;
end;


procedure TFormLibroIvaCompra_2.chMovimientosContableClick(Sender: TObject);
begin
  inherited;
  DatosLibroIvaCompra.CDSCtaContable.Close;
  CDSGastosFCCompra.Close;
  CDSGastosFCCompra.Params.ParamByName('Desde').AsDate   :=Desde.Date;
  CDSGastosFCCompra.Params.ParamByName('Hasta').AsDate   :=Hasta.Date;
  CDSGastosFCCompra.Params.ParamByName('Sucursal').Value :=cbSucursales.KeyValue;
  DatosLibroIvaCompra.CDSCtaContable.Open;
  CDSGastosFCCompra.Open;

end;

procedure TFormLibroIvaCompra_2.CierreFiscalExecute(Sender: TObject);
begin
  inherited;
  if MessageDlg('Esta por hacer un cierre Fiscal de este período, ... esta seguro??',mtConfirmation,mbYesNo,0,mbYes)=mrYes then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        spCierreFiscal_FD.Close;
        spCierreFiscal_FD.ParamByName('mes').Value      := m;
        spCierreFiscal_FD.ParamByName('anio').Value     := y;
        spCierreFiscal_FD.ParamByName('compra_venta').Value:='C';
        spCierreFiscal_FD.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spCierreFiscal_FD.Close;
        SHowMessage('Cierre Fiscal echo Periodo:'+IntToStr(m)+'/'+IntToStr(y))
      Except
        DMMain_FD.fdcGestion.Rollback;
        SHowMessage('No se realizo el cierre Fiscal Periodo:'+IntToStr(m)+'/'+IntToStr(y));
      End;
    end;
end;

procedure TFormLibroIvaCompra_2.Citi3685Execute(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  RegInfo_Cabecera;
  if SaveDialog1.FileName<>'' then
    GeneraLibroIvaDigital(SaveDialog1.FileName,False);
end;

function TFormLibroIvaCompra_2.GeneraLibroIvaDigital(Path:string; EsDigital:Boolean):Boolean;
Var
  ArchiTxt,ArchiTxtImpuestos: TextFile;
  SaveDialog1               : TSaveDialog;
  tipo,fecha,tipocomprob,puntoVta,nrocpbte,DespImportacion,
  Cod_Documento,Nro_Identificacion,Nombre,
  Imp_Total,Imp_Exluidos,Imp_Exentos,Percep_IVA,Percep_Otros,
  Perc_IIBB,Perc_Municipales,Impuest_Internos,CodigoMoneda,TipoCambio,
  cantlicuotasIva,CodigiOperacion,CreditoFiscalComputable,
  OtroTributos, CuitEmisor,DenominacionEmisor,IvaComision,
  PathComprobantes,PathAlicuotas,
  gravado,alicuota,tasa,impuesto,Directorio,NombreCorto: String;
  Posicion:Integer;
  TotalImpuestos:Extended;
  Periodo:String;
begin

  Result  := False;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if DatosLibroIvaCompra.CDSListado.IsEmpty then
    Raise Exception.Create('No hay datos para procesar.....');

  DatosLibroIvaCompra.CDSListado.First;
  Periodo           :=  Copy(Path,Length(Path)-9,6);
  PathComprobantes  :=  Path;
  Directorio        :=  ExtractFilePath(PathComprobantes);
  NombreCorto       :=  Copy(PathComprobantes,Length(Directorio)+1,AnsiPos('COMPRAS',PathComprobantes)-Length(Directorio)+7);
  PathAlicuotas     :=  Directorio+NombreCorto+'ALICUOTAS_'+Periodo+'.TXT';

  AssignFile(ArchiTxt, PathComprobantes);
  Rewrite(ArchiTxt);
  AssignFile(ArchiTxtImpuestos,  PathAlicuotas);
  Rewrite(ArchiTxtImpuestos);

  while not (DatosLibroIvaCompra.CDSListado.Eof) do
    begin

      Tipo  :='1';
      Fecha :=FormatDateTime('yyyymmdd',DatosLibroIvaCompra.CDSListadoFECHA.AsDateTime);
      if chbFechaFc.Checked then
        Fecha :=FormatDateTime('yyyymmdd',DatosLibroIvaCompra.CDSListadoFECHA_FACTURA.AsDateTime);

      if DatosLibroIvaCompra.CDSListadoCODIGO_AFIP.AsString='' then
            begin
              ErrorAfip(GetidTipoCpbte('C',
                                      DatosLibroIvaCompra.CDSListadoSUCURSALCOMPRA.AsInteger,
                                      DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString,
                                      DatosLibroIvaCompra.CDSListadoCLASE_CPBTE.AsString,
                                      DatosLibroIvaCompra.CDSListadoLETRA.AsString ));


              CloseFile(ArchiTxt);
              if FileExists(PathComprobantes) then DeleteFile(PathComprobantes);
              CloseFile(ArchiTxtImpuestos);
              if FileExists(PathAlicuotas) then DeleteFile(PathAlicuotas);

              Exit;
            end
      else
        tipocomprob:=DatosLibroIvaCompra.CDSLiSTADOCODIGO_AFIP.AsString;

      puntoVta      :='0'+copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,2,4);

      if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='LQ') Then
        puntoVta      :='00002';
      if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='GX') Then
        puntoVta      :='00001';

      if puntoVta='00000' Then PuntoVta:='00001';
      nrocpbte      :=Copy('00000000000000000000',1,12)+copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,6,8); // son de 20 caraceres

      DespImportacion:=Copy('0000000000000000000000',1,16);

      Cod_Documento:='99';
      if DatosLibroIvaCompra.CDSListadoCONDICION_IVA.Value=1 Then Cod_Documento:='80';
      if DatosLibroIvaCompra.CDSListadoCONDICION_IVA.Value=4 Then Cod_Documento:='80';
      if DatosLibroIvaCompra.CDSListadoCONDICION_IVA.Value=2 Then Cod_Documento:='80';
      if DatosLibroIvaCompra.CDSListadoCONDICION_IVA.Value=5 Then Cod_Documento:='80';

      if DatosLibroIvaCompra.CDSListadoCONDICION_IVA.Value=6 Then Cod_Documento:='80';

      if DatosLibroIvaCompra.CDSListadoCUIT.Value='' Then
        Nro_Identificacion:='00000000000'
      else
        Nro_Identificacion:=copy(DatosLibroIvaCompra.CDSListadoCUIT.Value,1,2)+copy(DatosLibroIvaCompra.CDSListadoCUIT.Value,4,8)+ copy(DatosLibroIvaCompra.CDSListadoCUIT.Value,13,1);

      if Nro_Identificacion='99' Then
        Nro_Identificacion:='00000000000';

      Nro_Identificacion:='000000000'+Nro_Identificacion;

      Nombre:=Copy(Trim(DatosLibroIvaCompra.CDSListadoRAZON_SOCIAL.Value),1,30)+
                   copy('                                              ',1,30-Length(Trim(DatosLibroIvaCompra.CDSListadoRAZON_SOCIAL.Value)));

      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        Imp_Total:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSListadoTOTAL.AsFloat)
      else
        Imp_Total:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSListadoTOTAL.AsFloat);
      delete(Imp_Total,14,1);

      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        Imp_Exentos:=FormatFloat('0000000000000,00',Abs(DatosLibroIvaCompra.CDSListadoNETO_EXENTO.AsFloat))
      else
        Imp_Exentos:=FormatFloat('0000000000000.00',Abs(DatosLibroIvaCompra.CDSListadoNETO_EXENTO.AsFloat));
      if DatosLibroIvaCompra.CDSListadoNETO_EXENTO.AsFloat<0 then
        Imp_Exentos[1]:='-';

      delete(Imp_Exentos,14,1);

      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        Imp_Exluidos:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSListadoNETO_EXCLUIDO.AsFloat)
      else
        Imp_Exluidos:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSListadoNETO_EXCLUIDO.AsFloat);
      if DatosLibroIvaCompra.CDSListadoNETO_EXCLUIDO.AsFloat<0 then
        Imp_Exluidos[1]:='-';
      delete(Imp_Exluidos,14,1);


      if ((DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='FC') or (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='FO') ) and
         ((DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString[1]='B') or (DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString[1]='C') ) Then
        begin
          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            Imp_Exentos:=FormatFloat('0000000000000,00',0)
          else
            Imp_Exentos:=FormatFloat('0000000000000.00',0);
          delete(Imp_Exentos,14,1);

          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            Imp_Exluidos:=FormatFloat('0000000000000,00',0)
          else
            Imp_Exluidos:=FormatFloat('0000000000000.00',0);
          delete(Imp_Exluidos,14,1);
        end;


      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        Perc_IIBB:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSListadoCOL6.AsFloat)
      else
        Perc_IIBB:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSListadoCOL6.AsFloat);
      delete(Perc_IIBB,14,1);

      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        Percep_IVA:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSListadoCOL5.AsFloat)
      else
        Percep_IVA:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSListadoCOL5.AsFloat);
      delete(Percep_IVA,14,1);


      Perc_Municipales  :='000000000000000';
      Percep_Otros      :='000000000000000';

      CuitEmisor        :='00000000000';
      // Modificacion para AgroPaz 07/11/2017 *****
      if ((tipocomprob='063') or (tipocomprob='064')) then
        CuitEmisor        := CDSEmpresaCUIT.AsString;

      while Pos('-',CuitEmisor)>0 do
        delete(CuitEmisor,Pos('-',CuitEmisor),1);

      DenominacionEmisor:=Copy('                                                                                    ',1,30);
      // Modificacion para AgroPaz 07/11/2017 *****
      if ((tipocomprob='063') or (tipocomprob='064')) then
        DenominacionEmisor:=CDSEmpresaNOMBRE.ASString+Copy('                                                                                    ',1,30-Length(CDSEmpresaNOMBRE.AsString));

      IvaComision       :='000000000000000';

      if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='LQ') Then  // liquicion de TC
        begin
          tipocomprob:=DatosLibroIvaCompra.CDSListadoCODIGO_AFIP.AsString;//'099';
          if trim(tipocomprob)='' then tipocomprob:='099'

        end
      else
        if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.Value='GX') Then  // Mov Bancos
          begin
            tipocomprob:=DatosLibroIvaCompra.CDSListadoCODIGO_AFIP.AsString;//'099';
            if trim(tipocomprob)='' then tipocomprob:='099';
          end;

      DatosLibroIvaCompra.CDSLibroIvaDet.Filtered:=False;
      DatosLibroIvaCompra.CDSLibroIvaDet.Filter:= '(Tasa > 0 )and (tasa <> 13.5)';
      DatosLibroIvaCompra.CDSLibroIvaDet.Filtered:=True;
      DatosLibroIvaCompra.CDSLibroIvaDet.First;

      //******************************************************************************
      cantlicuotasIva:=IntToStr(DatosLibroIvaCompra.CDSLibroIvaDet.RecordCount);
      if DatosLibroIvaCompra.CDSLibroIvaDet.RecordCount<=0 then
        cantlicuotasIva:='1';

      if (copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,1,1)='B') or (copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,1,1)='C') then
        cantlicuotasIva:='0';

      TotalImpuestos:=0;
      if (DatosLibroIvaCompra.CDSLibroIvaDet.RecordCount<=0) and ((copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,1,1)='A') or (copy(DatosLibroIvaCompra.CDSListadoNRO_CPBTE.AsString,1,1)='0'))  then
        begin
          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            gravado:=FormatFloat('0000000000000,00',0)
          else
            gravado:=FormatFloat('0000000000000.00',0);
          delete(gravado,14,1);

          if SysUtils.FormatSettings.DecimalSeparator=',' Then
            impuesto:=FormatFloat('0000000000000,00',0)
          else
            impuesto:=FormatFloat('0000000000000.00',0);
          delete(impuesto,14,1);

          Tasa:=FormatFloat('00.00',0);

          if Tasa='00.00' then Alicuota:='0003';

          WriteLn(ArchiTxtImpuestos,   tipocomprob,
                                          puntoVta,
                                          nrocpbte,
                                     Cod_Documento,
                                Nro_Identificacion,
                                           gravado,
                                          alicuota,
                                          impuesto);

        end
      else
        while Not(DatosLibroIvaCompra.CDSLibroIvaDet.Eof) do
          begin
            if SysUtils.FormatSettings.DecimalSeparator=',' Then
              gravado:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSLibroIvaDetNETO.AsFloat)
            else
              gravado:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSLibroIvaDetNETO.AsFloat);
            delete(gravado,14,1);

            if SysUtils.FormatSettings.DecimalSeparator=',' Then
              impuesto:=FormatFloat('0000000000000,00',DatosLibroIvaCompra.CDSLibroIvaDetIMPORTE.AsFloat)
            else
              impuesto:=FormatFloat('0000000000000.00',DatosLibroIvaCompra.CDSLibroIvaDetIMPORTE.AsFloat);
            delete(impuesto,14,1);

            TotalImpuestos:=TotalImpuestos+DatosLibroIvaCompra.CDSLibroIvaDetIMPORTE.AsFloat;

            Tasa:=FormatFloat('00.00',DatosLibroIvaCompra.CDSLibroIvaDetTASA.AsFloat);

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

            WriteLn(ArchiTxtImpuestos,   tipocomprob,
                                            puntoVta,
                                            nrocpbte,
                                       Cod_Documento,
                                  Nro_Identificacion,
                                             gravado,
                                            alicuota,
                                            impuesto);

            DatosLibroIvaCompra.CDSLibroIvaDet.Next;
          end;
    //******************************************************************************
    //  Imp_Percep_Nacionales :='000000000000000';
      CreditoFiscalComputable:='000000000000000';
      if SysUtils.FormatSettings.DecimalSeparator=',' Then
        CreditoFiscalComputable:=FormatFloat('0000000000000,00',TotalImpuestos)
      else
        CreditoFiscalComputable:=FormatFloat('0000000000000.00',TotalImpuestos);
      delete(CreditoFiscalComputable,14,1);

  //     CreditoFiscalComputable:=TotalImpuestos;// '000000000000000'; MODIFICADO 30/06/2017

      DespImportacion        :='                ';
      Impuest_Internos       :='000000000000000';

      CodigoMoneda           :='PES';
      TipoCambio             :='0001000000';

      if EsDigital then
        CodigiOperacion        :=' '
      else
        CodigiOperacion        :='0';
         // antes era un espacio vacio le puse 0 y ahora es de nuevo vacio

      if DatosLibroIvaCompra.CDSLibroIvaDet.RecordCount<=0 then
        CodigiOperacion      :='E';

      OtroTributos           :='000000000000000';
      DatosLibroIvaCompra.CDSLibroIvaDet.Filtered:=False;

      WriteLn(ArchiTxt,    fecha,             tipocomprob,           puntoVta,
                        nrocpbte,         DespImportacion,      Cod_Documento,
              Nro_Identificacion,                  Nombre,          Imp_Total,
                    Imp_Exluidos,             Imp_Exentos,         Percep_IVA,
                    Percep_Otros,               Perc_IIBB,   Perc_Municipales,
                Impuest_Internos,            CodigoMoneda,         TipoCambio,
                 cantlicuotasIva,         CodigiOperacion, CreditoFiscalComputable,
                    OtroTributos,              CuitEmisor, DenominacionEmisor,
                    IvaComision);

      DatosLibroIvaCompra.CDSListado.Next;
    end;
  CloseFile(ArchiTxt);
  CloseFile(ArchiTxtImpuestos);
  if Not(VirtualUI.Active) then
    ShowMessage('Archivo Generado Exitosamente en .....'+Path+'..... ');
  if VirtualUI.Active then
    begin
      VirtualUI.StdDialogs:=False;
      VirtualUI.DownloadFile(PathAlicuotas);
      VirtualUI.DownloadFile(PathComprobantes);
    END;
      //ShowMessage('Archivo Generado Exitosamente en .....'+'REGINFO_CV_COMPRAS_ALICUOTAS'+'..... ');

  Result  :=  True;

end;

procedure TFormLibroIvaCompra_2.cxGridListadoDBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='FC') or
     (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='NC') or
     (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='ND') then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  :=DatosLibroIvaCompra.CDSListadoID_CPBTE.AsString;
      FormCompra_2.TipoCpbte:=DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='FO' then
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
          FormCompraCtdo_2 := TFormCompraCtdo_2.Create(Self);
        FormCompraCtdo_2.DatoNew  :=DatosLibroIvaCompra.CDSListadoID_CPBTE.AsString;
        FormCompraCtdo_2.TipoCpbte:=DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
    end;
end;

procedure TFormLibroIvaCompra_2.cxGridListadoDBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  if (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='FC') or
     (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='NC') or
     (DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='ND') then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  :=DatosLibroIvaCompra.CDSListadoID_CPBTE.AsString;
      FormCompra_2.TipoCpbte:=DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString='FO' then
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
          FormCompraCtdo_2 := TFormCompraCtdo_2.Create(Self);
        FormCompraCtdo_2.DatoNew  :=DatosLibroIvaCompra.CDSListadoID_CPBTE.AsString;
        FormCompraCtdo_2.TipoCpbte:=DatosLibroIvaCompra.CDSListadoTIPO_CPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
    end;
end;

procedure TFormLibroIvaCompra_2.ExporarExcel1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='Contable';
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGContable)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGContable);

       if VirtualUI.Active then
           VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormLibroIvaCompra_2.ExportaraExcel1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='AsientoContable';
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , dbgAsientos)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , dbgAsientos);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormLibroIvaCompra_2.ExportaraExcelArticulos1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='ArticulosComprados';
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGArticulos)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGArticulos);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormLibroIvaCompra_2.ExportarExcel1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  SaveDialog1.FileName:='LibroIVA_Compra_Periodo_'+FormatDateTime('MMYYYY',Desde.Date);
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
   if SaveDialog1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGridListado)
       else
         cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName , cxGridListado);

       if VirtualUI.Active then
         VirtualUI.DownloadFile(SaveDialog1.FileName);
     end;
end;

procedure TFormLibroIvaCompra_2.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  FormExportarLibroIvaExcel.Visible:=True;
  FormExportarLibroIvaExcel.BringToFront;
end;

procedure TFormLibroIvaCompra_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  LibroIvaComp   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LibroIva_Compra.ini');
  //*************************************************************
  LibroIvaComp.WriteString('Reporte', 'File', edReporte.Text);
  LibroIvaComp.Free;
  if Assigned(FormExportarLibroIvaExcel) Then
    FreeAndNil(FormExportarLibroIvaExcel);

  CierraLibroCompra;

  Action:=caFree;
end;

procedure TFormLibroIvaCompra_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLibroIvaCompra_2:=nil;
end;

procedure TFormLibroIvaCompra_2.FormShow(Sender: TObject);
begin
  inherited;
  LibroIvaComp   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'LibroIva_compra.ini');
  //*************************************************************
  edReporte.Text := LibroIvaComp.ReadString('Reporte', 'File', 'sin archivo');
  LibroIvaComp.Free;

end;

procedure TFormLibroIvaCompra_2.sbEstadoDblClick(Sender: TObject);
begin
 // inherited;
  frLibroIva.DesignReport;
end;

procedure TFormLibroIvaCompra_2.sbReporteClick(Sender: TObject);
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

procedure TFormLibroIvaCompra_2.spClintesClick(Sender: TObject);
begin
  inherited;
  pnProveedores.Visible:=Not(pnProveedores.Visible);
end;

procedure TFormLibroIvaCompra_2.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  AutoSize:=False;
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SDECIMAL, '.');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_STHOUSAND, ',');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONDECIMALSEP, '.');
  SetLocaleInfo(LOCALE_USER_DEFAULT, LOCALE_SMONTHOUSANDSEP, ',');
    // establezco los separadores de miles y decimales
  FormatSettings.DecimalSeparator := '.';
  FormatSettings.ThousandSeparator := ',';

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  OpenDialog.InitialDir        :=DMMain_FD.PathReportesLst;

  IF NOT (Assigned(DatosLibroIvaCompra)) THEN
    DatosLibroIvaCompra := TDatosLibroIvaCompra.Create(Self);

  if Not(Assigned(FormExportarLibroIvaExcel)) then
    FormExportarLibroIvaExcel:=TFormExportarLibroIvaExcel.Create(Self);
  FormExportarLibroIvaExcel.Visible:=False;

  pcDetalles.ActivePageIndex:=0;
  CDSEmpresa.Close;
  CDSEmpresa.Open;

  pagContable.TabVisible   := DMMain_FD.GetUsaContabilidad;

  VirtualUI.OnDownloadEnd  := VirtualUIDownloadEnd;
  VirtualUI.OnGetUploadDir := VirtualUIGetUploadDir;
end;


end.