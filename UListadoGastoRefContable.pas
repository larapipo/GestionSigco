unit UListadoGastoRefContable;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,  JvFormPlacement, ImgList,System.StrUtils,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBClient, Provider, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, JvExMask,
  JvToolEdit,Librerias, frxClass, frxDBSet,
  JvAppStorage, JvAppIniStorage, System.Actions, Data.FMTBcd, Data.DB,
  Vcl.ComCtrls, Data.SqlExpr, JvComponentBase, Vcl.ActnList, JvLabel,
  CompBuscador, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore, dxSkinBlue,
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
  Vcl.CheckLst, JvExExtCtrls, JvExtComponent, JvPanel, cxCustomPivotGrid,
  cxDBPivotGrid,IniFiles, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvOfficeButtons, dxPSStdGrLnk,
  cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.ImageList,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCChart, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid, JvDBLookup,
  AdvPageControl, FireDAC.Stan.StorageBin, DataExport, DataToXLS,VirtualUI_SDK,cxExportPivotGridLink,
  Vcl.Menus,cxGridExportLink, JvArrowButton, frCoreClasses, dxPScxExtComCtrlsLnk;

type
  TFormListadoGastoRefContable = class(TFormABMBase)
    Label1: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    DSTablaResumen: TDataSource;
    GenerarResumen: TAction;
    frxReport: TfrxReport;
    frGastosFc: TfrxDBDataset;
    frGastos: TfrxDBDataset;
    frResumen: TfrxDBDataset;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    Label4: TLabel;
    spMeses: TUpDown;
    edMeses: TEdit;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    chbSincro: TAdvOfficeCheckBox;
    Label8: TLabel;
    memTable: TFDMemTable;
    memTableCTACONTABLE: TStringField;
    memTableDETALLE: TStringField;
    memTableID_ORIGEN: TIntegerField;
    memTableTIPO_ORIGEN: TStringField;
    memTableCLASE_ORIGEN: TStringField;
    memTableFECHA: TDateField;
    memTableCOD_CTA: TStringField;
    memTableANIO: TIntegerField;
    memTableMES: TIntegerField;
    memTableDEBE: TFloatField;
    memTableHABER: TFloatField;
    memTGrafico: TFDMemTable;
    memTGraficoCOD_CTA: TStringField;
    memTGraficoDETALLE_CTA: TStringField;
    memTGraficoIMPORTE: TFloatField;
    spAsignaCtaContable: TFDStoredProc;
    BuscarCtaContable: TAction;
    DSTablaGrafico: TDataSource;
    memTGraficoTotal: TAggregateField;
    frPersonal: TfrxDBDataset;
    frGastosBco: TfrxDBDataset;
    pcResultados: TPageControl;
    pag1: TTabSheet;
    Label2: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1ANIO: TcxGridDBColumn;
    cxGrid1DBTableView1MES: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOGASTO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1CTA_CONTABLE: TcxGridDBColumn;
    cxGrid1DBTableView1CTA_CONTABLE_COD: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    pag2: TTabSheet;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ANIO: TcxGridDBColumn;
    cxGrid2DBTableView1MES: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid2DBTableView1CTA_CONTABLE: TcxGridDBColumn;
    cxGrid2DBTableView1CTA_CONTABLE_COD: TcxGridDBColumn;
    cxGrid2DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid2Level1: TcxGridLevel;
    pag7: TTabSheet;
    cxGrid5: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBTableView1ANIO: TcxGridDBColumn;
    cxGridDBTableView1MES: TcxGridDBColumn;
    cxGridDBTableView1CODIGO: TcxGridDBColumn;
    cxGridDBTableView1NOMBRE: TcxGridDBColumn;
    cxGridDBTableView1CTA_CONTABLE: TcxGridDBColumn;
    cxGridDBTableView1CTA_CONTABLE_COD: TcxGridDBColumn;
    cxGridDBTableView1TOTAL: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    TabSheet1: TTabSheet;
    cxGrid6: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBTableView2ANIO: TcxGridDBColumn;
    cxGridDBTableView2MES: TcxGridDBColumn;
    cxGridDBTableView2CODIGO_CONCEPTO: TcxGridDBColumn;
    cxGridDBTableView2DETALLE: TcxGridDBColumn;
    cxGridDBTableView2CTA_CONTABLE: TcxGridDBColumn;
    cxGridDBTableView2CTA_CONTABLE_COD: TcxGridDBColumn;
    cxGridDBTableView2TOTAL: TcxGridDBColumn;
    cxGridLevel2: TcxGridLevel;
    pag3: TTabSheet;
    pnPie2: TPanel;
    pbResultado: TProgressBar;
    btGeneraResumen: TBitBtn;
    cxGrid3: TcxGrid;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3DBTableView1ANIO: TcxGridDBColumn;
    cxGrid3DBTableView1MES: TcxGridDBColumn;
    cxGrid3DBTableView1COD_CTA: TcxGridDBColumn;
    cxGrid3DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid3DBTableView1CTACONTABLE: TcxGridDBColumn;
    cxGrid3DBTableView1DEBE: TcxGridDBColumn;
    cxGrid3DBTableView1HABER: TcxGridDBColumn;
    cxGrid3DBTableView1FECHA: TcxGridDBColumn;
    cxGrid3Level1: TcxGridLevel;
    Pag4: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CTACONTABLE: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid1DEBE: TcxDBPivotGridField;
    cxDBPivotGrid1HABER: TcxDBPivotGridField;
    cxDBPivotGrid1ID_ORIGEN: TcxDBPivotGridField;
    cxDBPivotGrid1TIPO_CPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1CLASE_CPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1COD_CTA: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    pnPie: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    btDatosCruzados: TBitBtn;
    btBuscarAnual: TBitBtn;
    btExcelAgrupado: TBitBtn;
    pag6: TTabSheet;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4DBTableView1COD_CTA: TcxGridDBColumn;
    cxGrid4DBTableView1DETALLE_CTA: TcxGridDBColumn;
    cxGrid4DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid4Level1: TcxGridLevel;
    pag5: TTabSheet;
    fncChartContable: TTMSFNCChart;
    TabSheet2: TTabSheet;
    cxGrid7: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    cxGridLevel3: TcxGridLevel;
    cxGridDBTableView3ANIO: TcxGridDBColumn;
    cxGridDBTableView3MES: TcxGridDBColumn;
    cxGridDBTableView3CODIGOINGRESO: TcxGridDBColumn;
    cxGridDBTableView3DETALLE: TcxGridDBColumn;
    cxGridDBTableView3IMPORTE: TcxGridDBColumn;
    cxGridDBTableView3CTA_CONTABLE: TcxGridDBColumn;
    cxGridDBTableView3CTA_CONTABLE_COD: TcxGridDBColumn;
    pag9: TTabSheet;
    cxGrid8DBTableView1: TcxGridDBTableView;
    cxGrid8Level1: TcxGridLevel;
    cxGrid8: TcxGrid;
    cxGrid9DBTableView1: TcxGridDBTableView;
    cxGrid9Level1: TcxGridLevel;
    cxGrid9: TcxGrid;
    pnPieTarjetas: TPanel;
    Splitter1: TSplitter;
    edCodCtaAranceles: TEdit;
    edCtaAranceles: TEdit;
    edCostoFinanciero: TEdit;
    edCodFinanciero: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    cxGrid8DBTableView1FECHA: TcxGridDBColumn;
    cxGrid8DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid8DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid8DBTableView1NUMEROCPBTE: TcxGridDBColumn;
    cxGrid8DBTableView1NRO_LIQUIDACION: TcxGridDBColumn;
    cxGrid8DBTableView1ARANCEL: TcxGridDBColumn;
    cxGrid8DBTableView1MES: TcxGridDBColumn;
    cxGrid8DBTableView1ANIO: TcxGridDBColumn;
    cxGrid9DBTableView1FECHA: TcxGridDBColumn;
    cxGrid9DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid9DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid9DBTableView1NUMEROCPBTE: TcxGridDBColumn;
    cxGrid9DBTableView1NRO_LIQUIDACION: TcxGridDBColumn;
    cxGrid9DBTableView1COSTO_FINANCIERO: TcxGridDBColumn;
    cxGrid9DBTableView1MES: TcxGridDBColumn;
    cxGrid9DBTableView1ANIO: TcxGridDBColumn;
    spAsignarCta: TBitBtn;
    spAsignaCta: TBitBtn;
    frAranceles: TfrxDBDataset;
    frFinancieros: TfrxDBDataset;
    frIngresos: TfrxDBDataset;
    memTableCENTROCOSTO: TStringField;
    memTGraficoCENTROCOSTO: TStringField;
    cbCtroCostoAranceles: TJvDBLookupCombo;
    cbCtroCostoFinanciero: TJvDBLookupCombo;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView3Column1: TcxGridDBColumn;
    cxGrid2DBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView1Column1: TcxGridDBColumn;
    cxGridDBTableView2Column1: TcxGridDBColumn;
    cxGrid3DBTableView1Column1: TcxGridDBColumn;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    pcGraficos: TAdvPageControl;
    pagContable: TAdvTabSheet;
    pagCtroCosto: TAdvTabSheet;
    fncChartCtroCosto: TTMSFNCChart;
    btExcel: TBitBtn;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    PopupMenu1: TPopupMenu;
    MostrarAgrupamiento1: TMenuItem;
    ExportarExcel: TAction;
    N1: TMenuItem;
    ExportaraExcelcx1: TMenuItem;
    Label3: TLabel;
    Label13: TLabel;
    Panel2: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    memTGraficoCtroCosto: TFDMemTable;
    AggregateField1: TAggregateField;
    DSGraficoCtroCosto: TDataSource;
    pnContable: TPanel;
    Panel3: TPanel;
    cxGrid10: TcxGrid;
    cxGridDBTableView4: TcxGridDBTableView;
    cxGridLevel4: TcxGridLevel;
    cxGridDBTableView4DETALLE_CTA: TcxGridDBColumn;
    cxGridDBTableView4IMPORTE: TcxGridDBColumn;
    cxGridDBTableView4CENTROCOSTO: TcxGridDBColumn;
    memTGraficoCtroCostoCENTROCOSTO: TStringField;
    memTGraficoCtroCostoIMPORTE: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GenerarResumenExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure spMesesClick(Sender: TObject; Button: TUDBtnType);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btDatosCruzadosClick(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure BuscarCtaContableExecute(Sender: TObject);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid2DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxGrid2DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure fncChartContableSerieSliceClick(Sender: TObject;
      APoint: TTMSFNCChartPoint);
    procedure spAsignarCtaClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure btExcelAgrupadoClick(Sender: TObject);
    procedure MostrarAgrupamiento1Click(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    procedure GenerarGrafico;
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoGastoRefContable: TFormListadoGastoRefContable;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

{$R *.dfm}
uses UDMain_FD, DMContableForm, UBuscadorCtaContables, DMLstRefContable;


procedure TFormListadoGastoRefContable.btExcelAgrupadoClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (memTable.IsEmpty) THEN
    BEGIN
      if pcResultados.ActivePageIndex=7 then
        begin
          cxDBPivotGrid1.OptionsView.DataFields     :=False;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
          cxDBPivotGrid1.OptionsView.RowFields      :=False;
          cxDBPivotGrid1.OptionsView.FilterFields   :=False;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
          SaveDialog.FileName:='MovimientosArt';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            begin
              if VirtualUI.Active then
               if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                 SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
              if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName);
            end;

          cxDBPivotGrid1.OptionsView.DataFields     :=True;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
          cxDBPivotGrid1.OptionsView.RowFields      :=True;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoGastoRefContable.btDatosCruzadosClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormListadoGastoRefContable.btExcelClick(Sender: TObject);
begin
  inherited;
 // Exportar en cxGrid  usar :cxGridExportLink
 //
  cxGridDBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir
  cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);
//
end;

procedure TFormListadoGastoRefContable.BuscarCtaContableExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  if Not(Assigned(FormBuscadorCtaContable)) then
    FormBuscadorCtaContable:=TFormBuscadorCtaContable.Create(Self);
  FormBuscadorCtaContable.ShowModal;
  if FormBuscadorCtaContable.ModalResult=mrOk then
    begin
      if pcResultados.ActivePageIndex=0 Then
        begin
           p:=DatosLstRefContable.CDSSaldoGastos.GetBookmark;

           spAsignaCtaContable.Close;
           spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= DatosLstRefContable.CDSSaldoGastosCODIGOGASTO.Value;
           spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= FormBuscadorCtaContable.id;
           spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 5;
           spAsignaCtaContable.ExecProc;
           spAsignaCtaContable.Close;

           DatosLstRefContable.CDSCtaContable.Close;
           DatosLstRefContable.CDSCtaContable.Open;
           DatosLstRefContable.CDSSaldoGastos.Close;
           DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Desde').AsDate :=Desde.Date;
           DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
           DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Suc').Value    :=-1;
           DatosLstRefContable.CDSSaldoGastos.Open;
           DatosLstRefContable.CDSSaldoGastos.GotoBookmark(P);
           DatosLstRefContable.CDSSaldoGastos.FreeBookmark(p);
        end
      else
        if pcResultados.ActivePageIndex=1 Then
          begin
            p:=DatosLstRefContable.CDSSaldoIng.GetBookmark;
            spAsignaCtaContable.Close;
            spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= DatosLstRefContable.CDSSaldoIngCODIGOINGRESO.Value;
            spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= FormBuscadorCtaContable.id;
            spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 5;
            spAsignaCtaContable.ExecProc;
            spAsignaCtaContable.Close;
            DatosLstRefContable.CDSCtaContableIng.Close;
            DatosLstRefContable.CDSCtaContableIng.Open;
            DatosLstRefContable.CDSSaldoIng.Close;
            DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Desde').AsDate :=Desde.Date;
            DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
            DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Suc').Value    :=-1;
            DatosLstRefContable.CDSSaldoIng.Open;
            DatosLstRefContable.CDSSaldoIng.GotoBookmark(P);
            DatosLstRefContable.CDSSaldoIng.FreeBookmark(p);
          end
        else
          if pcResultados.ActivePageIndex=2 Then
            begin
              p:=DatosLstRefContable.CDSGastosFCCompra.GetBookmark;
              spAsignaCtaContable.Close;
              spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= DatosLstRefContable.CDSGastosFCCompraCODIGOARTICULO.Value;
              spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= FormBuscadorCtaContable.id;
              spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 4;
              spAsignaCtaContable.ExecProc;
              spAsignaCtaContable.Close;
              DatosLstRefContable.CDSCtaContableFc.Close;
              DatosLstRefContable.CDSCtaContableFc.Open;
              DatosLstRefContable.CDSGastosFCCompra.Close;
              DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Desde').AsDate :=Desde.Date;
              DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
              DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Sucursal').Value:=-1;
              DatosLstRefContable.CDSGastosFCCompra.Open;
              DatosLstRefContable.CDSGastosFCCompra.GotoBookmark(P);
              DatosLstRefContable.CDSGastosFCCompra.FreeBookmark(p);

            end
        else
          if pcResultados.ActivePageIndex=3 Then
            begin
              p:=DatosLstRefContable.CDSPersonal.GetBookmark;
              spAsignaCtaContable.Close;
              spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= DatosLstRefContable.CDSPersonalCODIGO.Value;
              spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= FormBuscadorCtaContable.id;
              spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 13;
              spAsignaCtaContable.ExecProc;
              spAsignaCtaContable.Close;
              DatosLstRefContable.CDSCtaContablePersonal.Close;
              DatosLstRefContable.CDSCtaContablePersonal.Open;

              DatosLstRefContable.CDSPersonal.Close;
              DatosLstRefContable.CDSPersonal.Params.ParamByName('Desde').AsDate :=Desde.Date;
              DatosLstRefContable.CDSPersonal.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
              DatosLstRefContable.CDSPersonal.Params.ParamByName('Sucursal').Value:=-1;
              DatosLstRefContable.CDSPersonal.Open;
              DatosLstRefContable.CDSPersonal.GotoBookmark(P);
              DatosLstRefContable.CDSPersonal.FreeBookmark(p);

            end
          else
           if pcResultados.ActivePageIndex=4 Then
            begin
              p:=DatosLstRefContable.CDSGastosBco.GetBookmark;
              spAsignaCtaContable.Close;
              spAsignaCtaContable.Params.ParamByName('COD_ELEMENTO').Value:= DatosLstRefContable.CDSGastosBcoCODIGO_CONCEPTO.Value;
              spAsignaCtaContable.Params.ParamByName('CTA_CONTABLE').Value:= FormBuscadorCtaContable.id;
              spAsignaCtaContable.Params.ParamByName('TABLA').Value       := 16;
              spAsignaCtaContable.ExecProc;
              spAsignaCtaContable.Close;
              DatosLstRefContable.CDSCtaContableBco.Close;
              DatosLstRefContable.CDSCtaContableBco.Open;

              DatosLstRefContable.CDSGastosBco.Close;
              DatosLstRefContable.CDSGastosBco.Params.ParamByName('Desde').AsDate :=Desde.Date;
              DatosLstRefContable.CDSGastosBco.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
              DatosLstRefContable.CDSGastosBco.Params.ParamByName('Sucursal').Value:=-1;
              DatosLstRefContable.CDSGastosBco.Open;
              DatosLstRefContable.CDSGastosBco.GotoBookmark(P);
              DatosLstRefContable.CDSGastosBco.FreeBookmark(p);

            end; //  //  //

    end;

end;

procedure TFormListadoGastoRefContable.BuscarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;

  if DMMain_FD.GetUsaContabilidad then
    begin
      DatosLstRefContable.CDSCtaContable.Close;
      DatosLstRefContable.CDSCtaContable.Open;
      DatosLstRefContable.CDSCtaContableFc.Close;
      DatosLstRefContable.CDSCtaContableFc.Open;

      DatosLstRefContable.CDSSaldoGastos.Close;
      DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSSaldoGastos.Params.ParamByName('Suc').Value    :=-1;
      DatosLstRefContable.CDSSaldoGastos.Open;

      DatosLstRefContable.CDSSaldoIng.Close;
      DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSSaldoIng.Params.ParamByName('Suc').Value    :=-1;
      DatosLstRefContable.CDSSaldoIng.Open;

      DatosLstRefContable.CDSGastosFCCompra.Close;
      DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSGastosFCCompra.Params.ParamByName('Sucursal').Value:=-1;
      DatosLstRefContable.CDSGastosFCCompra.Open;

      DatosLstRefContable.CDSGastosBco.Close;
      DatosLstRefContable.CDSGastosBco.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSGastosBco.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSGastosBco.Params.ParamByName('Sucursal').Value:=-1;
      DatosLstRefContable.CDSGastosBco.Open;

      DatosLstRefContable.CDSPersonal.Close;
      DatosLstRefContable.CDSPersonal.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSPersonal.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSPersonal.Params.ParamByName('Sucursal').Value:=-1;
      DatosLstRefContable.CDSPersonal.Open;

      DatosLstRefContable.CDSTCGastoFinaciero.Close;
      DatosLstRefContable.CDSTCGastoFinaciero.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSTCGastoFinaciero.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSTCGastoFinaciero.Open;

      DatosLstRefContable.CDSGastoAranceles.Close;
      DatosLstRefContable.CDSGastoAranceles.Params.ParamByName('Desde').AsDate :=Desde.Date;
      DatosLstRefContable.CDSGastoAranceles.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      DatosLstRefContable.CDSGastoAranceles.Open;

    end
  else
    ShowMessage('Flata asignacion de base contable...');

  Screen.Cursor:=crDefault;

  //Sumar;

//  with cxDBPivotGrid1.ViewData do
//    cxDBPivotGrid1.EndUpdate;
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;


end;

procedure TFormListadoGastoRefContable.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormListadoGastoRefContable.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved    := False;
  if (Button = mbLeft) then
  begin
    P := Point(X,Y);
    if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
      FDragDrop := True;
  end;
end;

procedure TFormListadoGastoRefContable.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoGastoRefContable.cxDBPivotGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormListadoGastoRefContable.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  BuscarCtaContable.Execute;
end;

procedure TFormListadoGastoRefContable.cxGrid1DBTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#10 then
    BuscarCtaContable.Execute;
end;

procedure TFormListadoGastoRefContable.cxGrid2DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  BuscarCtaContable.Execute;
end;


procedure TFormListadoGastoRefContable.cxGrid2DBTableView1KeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if key=#10 then
    BuscarCtaContable.Execute;
end;



procedure TFormListadoGastoRefContable.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
     VirtualUI.StdDialogs:=False;
  IF NOT (memTGrafico.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='ResumenMovimientos';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
     END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormListadoGastoRefContable.fncChartContableSerieSliceClick(Sender: TObject;
  APoint: TTMSFNCChartPoint);
begin
  inherited;
 //  ShowMessage('Xvalue ' + (APoint.XValueText)+'... YValue: '+FloatToStr( APoint.YValue));

end;

procedure TFormListadoGastoRefContable.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaGstosContables');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaGastosContables.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.WriteBool('Fecha', 'Sincroniza', chbSincro.Checked);
  ArchivoIni.WriteString('Fecha', 'Intervalo', edMeses.Text);

  ArchivoIni.WriteString('Aranceles', 'Codigo', edCodCtaAranceles.Text);
  ArchivoIni.WriteString('Aranceles', 'Detalle', edCtaAranceles.Text);
  ArchivoIni.WriteString('Financiero', 'Codigo', edCodFinanciero.Text);
  ArchivoIni.WriteString('Financiero', 'Detalle', edCostoFinanciero.Text);
  ArchivoIni.WriteInteger('Aranceles', 'ctrcostoaranceles', cbCtroCostoAranceles.KeyValue);
  ArchivoIni.WriteInteger('Aranceles', 'ctrcostofinanciero', cbCtroCostoFinanciero.KeyValue);

  ArchivoIni.Free;
  IF (Assigned(DatosLstRefContable)) THEN
     FreeAndNil(DatosLstRefContable);

  Action:=caFree;

end;

procedure TFormListadoGastoRefContable.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize                     := False;
  sbEstado.SimpleText          := '...';
  pcResultados.ActivePageIndex := 0;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  IF NOT (Assigned(DatosLstRefContable)) THEN
    DatosLstRefContable := TDatosLstRefContable.Create(Self);

  DatosLstRefContable.CDSCtroCostoAranceles.Open;
  DatosLstRefContable.CDSCtroCostoFinanciero.Open;



  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaGastosContables.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  chbSincro.Checked                            := ArchivoIni.ReadBool('Fecha', 'Sincroniza', True);
  edMeses.Text                                 := ArchivoIni.ReadString('Fecha', 'Intervalo', '1');
  edCodCtaAranceles.Text                       := ArchivoIni.ReadString('Aranceles', 'Codigo', '');
  edCtaAranceles.Text                          := ArchivoIni.ReadString('Aranceles', 'Detalle', '');
  edCodFinanciero.Text                         := ArchivoIni.ReadString('Financiero', 'Codigo', '');
  edCostoFinanciero.Text                       := ArchivoIni.ReadString('Financiero', 'Detalle', '');
  cbCtroCostoAranceles.KeyValue                := ArchivoIni.ReadInteger('Aranceles', 'ctrcostoaranceles', -1);
  cbCtroCostoFinanciero.KeyValue               := ArchivoIni.ReadInteger('Aranceles', 'ctrcostofinanciero', -1);
  ArchivoIni.Free;


  pcResultados.ActivePageIndex:=0;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;


  //  DBAdvGrid1.FloatingFooter.Visible:=True;
//  DBAdvGrid1.FloatingFooter.ColumnCalc[3] := acSUM;


end;

procedure TFormListadoGastoRefContable.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoGastoRefContable:=nil;
end;

procedure TFormListadoGastoRefContable.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
//  Buscar.Execute;
  Desde.SetFocus;

 //*************************************************************
 cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaGstosContables');
 //*************************************************************

end;

procedure TFormListadoGastoRefContable.GenerarGrafico;
var
  Serie:TTMSFNCChartSerie;
  Point:TTMSFNCChartPoint;
begin
  fncChartContable.BeginUpdate;
  fncChartContable.Legend.Visible := False;
  fncChartContable.Series.Clear;
  Serie                := fncChartContable.Series.Add;
  Serie.ChartType      := ctPie;
  Serie.Pie.AutoSize   := True;
  //Serie.Pie.Size   := 450;
  Serie.Points.Clear;
  Serie.Legend.Visible := True;
  Serie.Stroke.Color   := gcBlack;
  Serie.Labels.Visible := True;
//  Serie.MaxX             := 11;;    //(xpTop, xpCenter, xpBottom);
//  serie.YValues.Positions := [ypCenter];    //(ypLeft, ypCenter, ypRight);
//  serie.XValues.Positions := [xpCenter];    //(xpTop, xpCenter, xpBottom);

  memTGrafico.First;

  if Not(memTGrafico.IsEmpty) Then
    begin
      while Not(memTGrafico.Eof) do
        begin
          point             := Serie.Points.Add;
          point.Color       := Random(150000);
          point.YValue      := (memTGraficoIMPORTE.AsFloat);
          Point.LegendText  := memTGraficoDETALLE_CTA.Value;
          Point.DisplayName := memTGraficoDETALLE_CTA.Value+'Dn';
          memTGrafico.Next;
        end;
    end;

  fncChartContable.EndUpdate;

  fncChartCtroCosto.BeginUpdate;
  fncChartCtroCosto.Legend.Visible := False;
  fncChartCtroCosto.Series.Clear;
  Serie                := fncChartCtroCosto.Series.Add;
  Serie.Points.Clear;
  Serie.Legend.Visible := True;
  Serie.Stroke.Color   := gcBlack;
  Serie.Labels.Visible := True;
  memTGraficoCtroCosto.First;

  if Not(memTGraficoCtroCosto.IsEmpty) Then
    begin
      while Not(memTGrafico.Eof) do
        begin
          point             := Serie.Points.Add;
          point.Color       := Random(150000);
          point.YValue      := (memTGraficoCtroCostoIMPORTE.AsFloat);
          Point.LegendText  := memTGraficoCtroCostoCENTROCOSTO.Value;
          Point.DisplayName := memTGraficoCtroCostoCENTROCOSTO.Value+'cc';
          memTGraficoCtroCosto.Next;
        end;
    end;

  fncChartCtroCosto.EndUpdate;


end;

procedure TFormListadoGastoRefContable.GenerarResumenExecute(Sender: TObject);
var i:integer;
  AIndex, ARowIndex: integer;
  AValue: variant;

begin
  inherited;
  if Not(DatosLstRefContable.CDSSaldoGastos.IsEmpty) and DMMain_FD.GetUsaContabilidad then
    begin

      memTable.Close;
      memTable.Open;
      memTGrafico.Close;
      memTGrafico.Open;
      memTGraficoCtroCosto.Close;
      memTGraficoCtroCosto.Open;

      //**********************************************
      DatosLstRefContable.CDSSaldoGastos.First;
      pbResultado.Min:=0;
      pbResultado.Max:=0;
      if DatosLstRefContable.CDSSaldoGastos.RecordCount>0 then
        pbResultado.Max:=DatosLstRefContable.CDSSaldoGastos.RecordCount-1;
      pbResultado.Position:=1;
      sbEstado.SimpleText:='';

      DatosLstRefContable.CDSSaldoGastos.first;
      while Not(DatosLstRefContable.CDSSaldoGastos.Eof) do
        begin
          if memTable.Locate('COD_CTA;ANIO;MES',VarArrayOf([DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE_COD.AsString,DatosLstRefContable.CDSSaldoGastosANIO.Value,DatosLstRefContable.CDSSaldoGastosMES.Value]),[]) then
            begin
              memTable.Edit;
              memTableDEBE.AsFloat := memTableDEBE.AsFloat+DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTable.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTable.Append;
              memTableCOD_CTA.AsString     := DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE_COD.AsString;
              memTableCTACONTABLE.AsString := DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE.AsString;
              memTableDETALLE.AsString     := DatosLstRefContable.CDSSaldoGastosDETALLE.AsString;
              memTableANIO.AsInteger       := DatosLstRefContable.CDSSaldoGastosANIO.AsInteger;
              memTableMES.AsInteger        := DatosLstRefContable.CDSSaldoGastosMES.AsInteger;
              memTableDEBE.AsFloat         := DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTableCENTROCOSTO.AsString := DatosLstRefContable.CDSSaldoGastosCENTROCOSTO.AsString;

              memTableHABER.AsFloat        := 0;
              memTable.Post;
            end;


          if memTGrafico.Locate('COD_CTA',DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE_COD.AsString,[]) then
            begin
              memTGrafico.Edit;
              memTGraficoIMPORTE.AsFloat := memTGraficoIMPORTE.AsFloat+DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTGrafico.Post;
            end
          else
            begin
              memTGrafico.Append;
              memTGraficoCOD_CTA.AsString     := DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE_COD.AsString;
              memTGraficoDETALLE_CTA.AsString := DatosLstRefContable.CDSSaldoGastosCTA_CONTABLE.AsString;
              memTGraficoIMPORTE.AsFloat      := DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTGraficoCENTROCOSTO.AsString := DatosLstRefContable.CDSSaldoGastosCENTROCOSTO.AsString;
              memTGrafico.Post;
            end;

           if memTGraficoCtroCosto.Locate('CENTROCOSTO',DatosLstRefContable.CDSSaldoGastosCENTROCOSTO.AsString,[]) then
            begin
              memTGraficoCtroCosto.Edit;
              memTGraficoCtroCostoIMPORTE.AsFloat := memTGraficoCtroCostoIMPORTE.AsFloat+DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTGraficoCtroCosto.Post;
            end
          else
            begin
              memTGraficoCtroCosto.Append;
              memTGraficoCtroCostoCENTROCOSTO.AsString   := DatosLstRefContable.CDSSaldoGastosCENTROCOSTO.AsString;
              memTGraficoCtroCostoIMPORTE.AsFloat        := DatosLstRefContable.CDSSaldoGastosIMPORTE.AsFloat;
              memTGraficoCtroCosto.Post;
            end;

          sbEstado.SimpleText:=DatosLstRefContable.CDSSaldoGastosCODIGOGASTO.Value+':'+DatosLstRefContable.CDSSaldoGastosDETALLE.AsString;
          DatosLstRefContable.CDSSaldoGastos.Next;
          pbResultado.Position:=pbResultado.Position+1;
          Application.ProcessMessages;
        end;
      //**********************************************************************************
      DatosLstRefContable.CDSSaldoIng.First;
      pbResultado.Min:=0;
      pbResultado.Max:=0;
      if DatosLstRefContable.CDSSaldoIng.RecordCount>0 then
        pbResultado.Max:=DatosLstRefContable.CDSSaldoIng.RecordCount-1;
      pbResultado.Position:=1;
      sbEstado.SimpleText  :='';
      while Not(DatosLstRefContable.CDSSaldoIng.Eof) do
        begin
          if memTable.Locate('COD_CTA;ANIO;MES',VarArrayOf([DatosLstRefContable.CDSSaldoIngCTA_CONTABLE_COD.AsString,DatosLstRefContable.CDSSaldoIngANIO.Value,DatosLstRefContable.CDSSaldoIngMES.Value]),[]) then
            begin
              memTable.Edit;
              memTableDEBE.AsFloat := memTableDEBE.AsFloat - DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTable.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTable.Append;
              memTableCOD_CTA.AsString     := DatosLstRefContable.CDSSaldoIngCTA_CONTABLE_COD.AsString;
              memTableCTACONTABLE.AsString := DatosLstRefContable.CDSSaldoIngCTA_CONTABLE.AsString;
              memTableDETALLE.AsString     := DatosLstRefContable.CDSSaldoIngDETALLE.AsString;
              memTableANIO.AsInteger       := DatosLstRefContable.CDSSaldoIngANIO.AsInteger;
              memTableMES.AsInteger        := DatosLstRefContable.CDSSaldoIngMES.AsInteger;
              memTableDEBE.AsFloat         := 0;//DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTableHABER.AsFloat        := DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTableCENTROCOSTO.AsString := DatosLstRefContable.CDSSaldoIngCENTROCOSTO.AsString;
              memTable.Post;
            end;


          if memTGrafico.Locate('COD_CTA',DatosLstRefContable.CDSSaldoIngCTA_CONTABLE_COD.AsString,[]) then
            begin
              memTGrafico.Edit;
              memTGraficoIMPORTE.AsFloat := memTGraficoIMPORTE.AsFloat-DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTGrafico.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTGrafico.Append;
              memTGraficoCOD_CTA.AsString     := DatosLstRefContable.CDSSaldoIngCTA_CONTABLE_COD.AsString;
              memTGraficoDETALLE_CTA.AsString := DatosLstRefContable.CDSSaldoIngCTA_CONTABLE.AsString;
              memTGraficoIMPORTE.AsFloat      := DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTGraficoCENTROCOSTO.AsString := DatosLstRefContable.CDSSaldoIngCENTROCOSTO.AsString;
              memTGrafico.Post;
            end;

           if memTGraficoCtroCosto.Locate('CENTROCOSTO',DatosLstRefContable.CDSSaldoIngCENTROCOSTO.AsString,[]) then
            begin
              memTGraficoCtroCosto.Edit;
              memTGraficoCtroCostoIMPORTE.AsFloat := memTGraficoCtroCostoIMPORTE.AsFloat+DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTGraficoCtroCosto.Post;
            end
          else
            begin
              memTGraficoCtroCosto.Append;
              memTGraficoCtroCostoCENTROCOSTO.AsString   := DatosLstRefContable.CDSSaldoIngCENTROCOSTO.AsString;
              memTGraficoCtroCostoIMPORTE.AsFloat        := DatosLstRefContable.CDSSaldoIngIMPORTE.AsFloat;
              memTGraficoCtroCosto.Post;
            end;



          sbEstado.SimpleText:=DatosLstRefContable.CDSSaldoIngCODIGOINGRESO.Value+':'+DatosLstRefContable.CDSSaldoIngDETALLE.AsString;
          DatosLstRefContable.CDSSaldoIng.Next;
          pbResultado.Position:=pbResultado.Position+1;
          Application.ProcessMessages;
        end;
      //**********************************************************************************

      //**********************************************************************************
      DatosLstRefContable.CDSPersonal.First;
      pbResultado.Min:=0;
      pbResultado.Max:=0;
      if DatosLstRefContable.CDSPersonal.RecordCount>0 then
        pbResultado.Max:=DatosLstRefContable.CDSPersonal.RecordCount-1;
      pbResultado.Position:=1;
      sbEstado.SimpleText:='';
      while Not(DatosLstRefContable.CDSPersonal.Eof) do
        begin
          if memTable.Locate('COD_CTA;ANIO;MES',VarArrayOf([DatosLstRefContable.CDSPersonalCTA_CONTABLE_COD.AsString,DatosLstRefContable.CDSPersonalANIO.Value,DatosLstRefContable.CDSPersonalMES.Value]),[]) then
            begin
              memTable.Edit;
              memTableDEBE.AsFloat := memTableDEBE.AsFloat+DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTable.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTable.Append;
              memTableCOD_CTA.AsString     := DatosLstRefContable.CDSPersonalCTA_CONTABLE_COD.AsString;
              memTableCTACONTABLE.AsString := DatosLstRefContable.CDSPersonalCTA_CONTABLE.AsString;
              memTableDETALLE.AsString     := DatosLstRefContable.CDSPersonalNOMBRE.AsString;
              memTableANIO.AsInteger       := DatosLstRefContable.CDSPersonalANIO.AsInteger;
              memTableMES.AsInteger        := DatosLstRefContable.CDSPersonalMES.AsInteger;
              memTableDEBE.AsFloat         := DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTableCENTROCOSTO.AsString := DatosLstRefContable.CDSPersonalCENTROCOSTO.AsString;
              memTableHABER.AsFloat        := 0;
              //memTableFECHA.AsDateTime:=cdssald
              memTable.Post;
            end;


          if memTGrafico.Locate('COD_CTA',DatosLstRefContable.CDSPersonalCTA_CONTABLE_COD.AsString,[]) then
            begin
              memTGrafico.Edit;
              memTGraficoIMPORTE.AsFloat := memTGraficoIMPORTE.AsFloat+DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTGrafico.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTGrafico.Append;
              memTGraficoCOD_CTA.AsString     := DatosLstRefContable.CDSPersonalCTA_CONTABLE_COD.AsString;
              memTGraficoDETALLE_CTA.AsString := DatosLstRefContable.CDSPersonalCTA_CONTABLE.AsString;
              memTGraficoCENTROCOSTO.AsString := DatosLstRefContable.CDSPersonalCENTROCOSTO.AsString;
              memTGraficoIMPORTE.AsFloat      := DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTGrafico.Post;
            end;

           if memTGraficoCtroCosto.Locate('CENTROCOSTO',DatosLstRefContable.CDSPersonalCENTROCOSTO.AsString,[]) then
            begin
              memTGraficoCtroCosto.Edit;
              memTGraficoCtroCostoIMPORTE.AsFloat := memTGraficoCtroCostoIMPORTE.AsFloat+DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end
          else
            begin
              memTGraficoCtroCosto.Append;
              memTGraficoCtroCostoCENTROCOSTO.AsString   := DatosLstRefContable.CDSPersonalCENTROCOSTO.AsString;
              memTGraficoCtroCostoIMPORTE.AsFloat        := DatosLstRefContable.CDSPersonalTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end;

          sbEstado.SimpleText:=DatosLstRefContable.CDSPersonalCODIGO.Value+':'+DatosLstRefContable.CDSPersonalNOMBRE.AsString;
          DatosLstRefContable.CDSPersonal.Next;
          pbResultado.Position:=pbResultado.Position+1;
          Application.ProcessMessages;
        end;
      //**********************************************************************************

      //**********************************************************************************
      DatosLstRefContable.CDSGastosBco.First;
      DatosLstRefContable.CDSGastosBco.First;
      pbResultado.Min:=0;
      pbResultado.Max:=0;
      if DatosLstRefContable.CDSGastosBco.RecordCount>0 then
        pbResultado.Max:=DatosLstRefContable.CDSGastosBco.RecordCount-1;
      pbResultado.Position:=1;
      sbEstado.SimpleText:='';
      while Not(DatosLstRefContable.CDSGastosBco.Eof) do
        begin
          if memTable.Locate('COD_CTA;ANIO;MES',VarArrayOf([DatosLstRefContable.CDSGastosBcoCTA_CONTABLE_COD.AsString,DatosLstRefContable.CDSGastosBcoANIO.Value,DatosLstRefContable.CDSGastosBcoMES.Value]),[]) then
            begin
              memTable.Edit;
              memTableDEBE.AsFloat := memTableDEBE.AsFloat+DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTable.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTable.Append;
              memTableCOD_CTA.AsString     := DatosLstRefContable.CDSGastosBcoCTA_CONTABLE_COD.AsString;
              memTableCTACONTABLE.AsString := DatosLstRefContable.CDSGastosBcoCTA_CONTABLE.AsString;
              memTableDETALLE.AsString     := DatosLstRefContable.CDSGastosBcoDETALLE.AsString;
              memTableCENTROCOSTO.AsString := DatosLstRefContable.CDSGastosBcoCENTROCOSTO.AsString;
              memTableANIO.AsInteger       := DatosLstRefContable.CDSGastosBcoANIO.AsInteger;
              memTableMES.AsInteger        := DatosLstRefContable.CDSGastosBcoMES.AsInteger;
              memTableDEBE.AsFloat         := DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTableHABER.AsFloat        := 0;
              //memTableFECHA.AsDateTime:=cdssald
              memTable.Post;
            end;


          if memTGrafico.Locate('COD_CTA',DatosLstRefContable.CDSGastosBcoCTA_CONTABLE_COD.AsString,[]) then
            begin
              memTGrafico.Edit;
              memTGraficoIMPORTE.AsFloat := memTGraficoIMPORTE.AsFloat+DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTGrafico.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTGrafico.Append;
              memTGraficoCOD_CTA.AsString     := DatosLstRefContable.CDSGastosBcoCTA_CONTABLE_COD.AsString;
              memTGraficoDETALLE_CTA.AsString := DatosLstRefContable.CDSGastosBcoCTA_CONTABLE.AsString;
              memTGraficoCENTROCOSTO.AsString := DatosLstRefContable.CDSGastosBcoCENTROCOSTO.AsString;
              memTGraficoIMPORTE.AsFloat      := DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTGrafico.Post;
            end;

           if memTGraficoCtroCosto.Locate('CENTROCOSTO',DatosLstRefContable.CDSGastosBcoCENTROCOSTO.AsString,[]) then
            begin
              memTGraficoCtroCosto.Edit;
              memTGraficoCtroCostoIMPORTE.AsFloat := memTGraficoCtroCostoIMPORTE.AsFloat+DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end
          else
            begin
              memTGraficoCtroCosto.Append;
              memTGraficoCtroCostoCENTROCOSTO.AsString   := DatosLstRefContable.CDSGastosBcoCENTROCOSTO.AsString;
              memTGraficoCtroCostoIMPORTE.AsFloat        := DatosLstRefContable.CDSGastosBcoTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end;


          sbEstado.SimpleText:=DatosLstRefContable.CDSGastosBcoCODIGO_CONCEPTO.Value+':'+DatosLstRefContable.CDSGastosBcoDETALLE.AsString;
          DatosLstRefContable.CDSGastosBco.Next;
          pbResultado.Position:=pbResultado.Position+1;
          Application.ProcessMessages;
        end;
      //**********************************************************************************

      DatosLstRefContable.CDSGastosFCCompra.First;
      pbResultado.Min:=0;
      pbResultado.Max:=0;
      if DatosLstRefContable.CDSGastosFCCompra.RecordCount>0 then
        pbResultado.Max:=DatosLstRefContable.CDSGastosFCCompra.RecordCount-1;
      pbResultado.Position:=1;
      while Not(DatosLstRefContable.CDSGastosFCCompra.Eof) do
        begin
          if memTable.Locate('COD_CTA;ANIO;MES',VarArrayOf([DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE.AsString,DatosLstRefContable.CDSGastosFCCompraANIO.AsString,DatosLstRefContable.CDSGastosFCCompraMES.AsString]),[]) then
            begin
              memTable.Edit;
              memTableDEBE.AsFloat := memTableDEBE.AsFloat+DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTable.Post;
            //edResumen.Value:=edResumen.Value+CDSGastosFCCompraTOTAL.AsFloat;
            end
          else
            begin
              memTable.Append;
              memTableCOD_CTA.AsString     := DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE_COD.AsString;
              memTableCTACONTABLE.AsString := DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE.AsString;
              memTableDETALLE.AsString     := DatosLstRefContable.CDSGastosFCCompraDETALLE_STK.AsString;
              memTableCENTROCOSTO.AsString := DatosLstRefContable.CDSGastosFCCompraCENTROCOSTO.AsString;

              memTableANIO.AsInteger       := DatosLstRefContable.CDSGastosFCCompraANIO.AsInteger;
              memTableMES.AsInteger        := DatosLstRefContable.CDSGastosFCCompraMES.AsInteger;
              memTableDEBE.AsFloat         := DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTableHABER.AsFloat        := 0;
             // edResumen.Value:=edResumen.Value+CDSGastosFCCompraTOTAL.AsFloat;
              memTable.Post;
            end;

          if memTGrafico.Locate('COD_CTA',DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE_COD.AsString,[]) then
            begin
              memTGrafico.Edit;
              memTGraficoIMPORTE.AsFloat := memTGraficoIMPORTE.AsFloat+DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTGrafico.Post;
           // edResumen.Value:=edResumen.Value+CDSSaldoGastosIMPORTE.AsFloat;
            end
          else
            begin
              memTGrafico.Append;
              memTGraficoCOD_CTA.AsString     := DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE_COD.AsString;
              memTGraficoDETALLE_CTA.AsString := DatosLstRefContable.CDSGastosFCCompraCTA_CONTABLE.AsString;
              memTGraficoCENTROCOSTO.AsString := DatosLstRefContable.CDSGastosFCCompraCENTROCOSTO.AsString;
              memTGraficoIMPORTE.AsFloat      := DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTGrafico.Post;
            end;

          if memTGraficoCtroCosto.Locate('CENTROCOSTO',DatosLstRefContable.CDSGastosFCCompraCENTROCOSTO.AsString,[]) then
            begin
              memTGraficoCtroCosto.Edit;
              memTGraficoCtroCostoIMPORTE.AsFloat := memTGraficoCtroCostoIMPORTE.AsFloat+DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end
          else
            begin
              memTGraficoCtroCosto.Append;
              memTGraficoCtroCostoCENTROCOSTO.AsString   := DatosLstRefContable.CDSGastosFCCompraCENTROCOSTO.AsString;
              memTGraficoCtroCostoIMPORTE.AsFloat        := DatosLstRefContable.CDSGastosFCCompraTOTAL.AsFloat;
              memTGraficoCtroCosto.Post;
            end;


          sbEstado.SimpleText:=DatosLstRefContable.CDSGastosFCCompraCODIGOARTICULO.Value+':'+DatosLstRefContable.CDSGastosFCCompraDETALLE_STK.AsString;
          DatosLstRefContable.CDSGastosFCCompra.Next;
          pbResultado.Position:=pbResultado.Position+1;
          Application.ProcessMessages;
        end;
    end;

    // Gastos Tarjeta de Credito Aranceles

   Begin
     with cxGrid8DBTableView1.DataController.Summary do
      begin
        AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid8DBTableView1ARANCEL);
        AValue :=  FooterSummaryValues[AIndex]
      end;
    end;
    if AValue>0 then
      begin
        memTable.Append;
        memTableCOD_CTA.AsString     := edCodCtaAranceles.Text;
        memTableCTACONTABLE.AsString := edCtaAranceles.Text;
        memTableDETALLE.AsString     := 'ARANCELES TC';
        memTableANIO.AsInteger       := DatosLstRefContable.CDSGastoArancelesANIO.AsInteger;
        memTableMES.AsInteger        := DatosLstRefContable.CDSGastoArancelesMES.AsInteger;
        memTableDEBE.AsFloat         := AValue;
        memTableHABER.AsFloat        := 0;
        memTableCENTROCOSTO.AsString := cbCtroCostoAranceles.Text;
        memTable.Post;

        memTGrafico.Append;
        memTGraficoCOD_CTA.AsString     := edCodCtaAranceles.Text;
        memTGraficoDETALLE_CTA.AsString := edCodCtaAranceles.Text;
        memTGraficoCENTROCOSTO.AsString := cbCtroCostoAranceles.Text;
        memTGraficoIMPORTE.AsFloat      := AValue;
        memTGrafico.Post;

        memTGraficoCtroCosto.Append;
        memTGraficoCtroCostoCENTROCOSTO.AsString     := cbCtroCostoAranceles.Text;
        memTGraficoCtroCostoIMPORTE.AsString         := AValue;
        memTGraficoCtroCosto.Post;


      end;
   ////////////////////////////////////
  Begin
     with cxGrid9DBTableView1.DataController.Summary do
      begin
        AIndex :=  FooterSummaryItems.IndexOfItemLink(cxGrid9DBTableView1COSTO_FINANCIERO);
        AValue :=  FooterSummaryValues[AIndex]
      end;
    end;

    if AValue>0 then
      begin
        memTable.Append;
        memTableCOD_CTA.AsString     := edCodFinanciero.Text;
        memTableCTACONTABLE.AsString := edCostoFinanciero.Text;
        memTableDETALLE.AsString     := 'COSTO FINANCIERO TC';
        memTableANIO.AsInteger       := DatosLstRefContable.CDSTCGastoFinacieroANIO.AsInteger;
        memTableMES.AsInteger        := DatosLstRefContable.CDSTCGastoFinacieroMES.AsInteger;
        memTableDEBE.AsFloat         := AValue;
        memTableHABER.AsFloat        := 0;
        memTableCENTROCOSTO.AsString := cbCtroCostoFinanciero.Text;

        memTable.Post;

        memTGrafico.Append;
        memTGraficoCOD_CTA.AsString     := edCodFinanciero.Text;
        memTGraficoDETALLE_CTA.AsString := edCostoFinanciero.Text;
        memTGraficoCENTROCOSTO.AsString := cbCtroCostoFinanciero.Text;

        memTGraficoIMPORTE.AsFloat      := AValue;
        memTGrafico.Post;

        memTGraficoCtroCosto.Append;
        memTGraficoCtroCostoCENTROCOSTO.AsString     := cbCtroCostoFinanciero.Text;
        memTGraficoCtroCostoIMPORTE.AsString         := AValue;
        memTGraficoCtroCosto.Post;


      end;

   /////////

   sbEstado.SimpleText:='...';
  pbResultado.Position:=0;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;

  GenerarGrafico;
end;

procedure TFormListadoGastoRefContable.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(memTable.IsEmpty) Then
    begin
      memTable.IndexFieldNames:='COD_CTA';
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoGastosRefContable.fr3');
      frxReport.Variables['desde']   :=''''+Desde.Text+'''';
      frxReport.Variables['hasta']   :=''''+Hasta.Text+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');//
end;

procedure TFormListadoGastoRefContable.Label6Click(Sender: TObject);
begin
  inherited;
   pnTotales.Visible:=Not(pnTotales.Visible);

end;

procedure TFormListadoGastoRefContable.Label7Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoGastoRefContable.MostrarAgrupamiento1Click(
  Sender: TObject);
begin
  inherited;
  MostrarAgrupamiento1.Checked:=not(MostrarAgrupamiento1.Checked);
  cxGrid4DBTableView1.OptionsView.GroupByBox:=MostrarAgrupamiento1.Checked;
end;

procedure TFormListadoGastoRefContable.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoGastoRefContable.spAsignarCtaClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCtaContable)) then
    FormBuscadorCtaContable:=TFormBuscadorCtaContable.Create(Self);
  FormBuscadorCtaContable.ShowModal;

  if FormBuscadorCtaContable.ModalResult=mrOk then
    begin
    if (Sender as TBitBtn).Name='spAsignarCta' then
        begin
          edCodCtaAranceles.Text := FormBuscadorCtaContable.Codigo;
          edCtaAranceles.Text    := FormBuscadorCtaContable.Detalle;
        end
      else
      if (Sender as TBitBtn).Name='spAsignaCta' then
          begin
            edCodFinanciero.Text   := FormBuscadorCtaContable.Codigo;
            edCostoFinanciero.Text := FormBuscadorCtaContable.Detalle;
          end


    end;
end;

procedure TFormListadoGastoRefContable.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListadoGastoRefContable.spMesesClick(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
 if (Button=btnext) then
    desde.Date:=IncMonth(desde.Date,-1)
  else
  if (Button=btprev) then
    desde.Date:=IncMonth(desde.Date,1);

end;



procedure TFormListadoGastoRefContable.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  if Button=btnext Then
    begin
      if chbSincro.Checked then
        begin
          Desde.Date := IncMonth(Desde.Date,1);
          Hasta.Date := IncMonth(Hasta.Date,1);
        end
      else
        Desde.Date := IncMonth(Desde.Date,1);
    end
  else
    if Button=btPrev Then
     begin
       if chbSincro.Checked then
         begin
           Desde.Date := IncMonth(Desde.Date,-1);
           Hasta.Date := IncMonth(Hasta.Date,-1);
         end
       else
         Desde.Date := IncMonth(Desde.Date,-1);
     end;
  Buscar.Execute;
end;

end.
