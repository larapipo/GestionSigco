unit UControlCpbteEmitidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, Grids, ComCtrls,
  ExtCtrls,Librerias, DBCtrls, frxClass,  frxDBSet,   ImgList,
  JvComponentBase, JvExControls, JvGradient, DBGrids, JvExDBGrids, JvDBGrid,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvDBLookup, SqlExpr, JvExMask,
  JvToolEdit, Menus,Math, DataExport, DataToXLS, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  cxCustomPivotGrid, cxDBPivotGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxPSCore, dxPScxCommon,cxExportPivotGridLink,
  JvExExtCtrls, JvExtComponent, JvPanel, Spin, cxFilter, cxData, cxDataStorage, cxDBData,
  cxGridChartView, cxGridDBChartView, cxGridBandedTableView,
  cxGridDBBandedTableView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, JvSpin, CheckLst,
  cxCalc, dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinsDefaultPainters,
  VclTee.TeeGDIPlus, dxSkinsdxRibbonPainter, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, System.Actions,
  dxSkinBlueprint, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinHighContrast, dxSkinMetropolis, dxSkinMetropolisDark,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010,
  dxSkinWhiteprint, JvAppStorage, JvAppIniStorage,VirtualUI_SDK, Vcl.StdCtrls,
  Vcl.Mask, Vcl.ActnList, Vcl.Buttons, Vcl.ToolWin,
  System.DateUtils,System.Variants, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, dxPScxVGridLnk, System.ImageList,
  AdvOfficeButtons, frCoreClasses;

type
  TFormControlCpbteEmitidos = class(TFormABMBase)
    DSPCpbteEmitidos: TDataSetProvider;
    DSCpbteEmitidos: TDataSource;
    DSSucursal: TDataSource;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frConsulta: TfrxReport;
    frDBDatos: TfrxDBDataset;
    DSComprobantes: TDataSource;
    CDSCpbteEmitidos: TClientDataSet;
    Sumar: TAction;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QComprobante: TSQLQuery;
    QComprobanteTIPO_COMPROB: TStringField;
    QComprobanteCLASE_COMPROB: TStringField;
    QComprobanteDENOMINACION: TStringField;
    QComprobanteSUCURSAL: TIntegerField;
    QComprobanteLETRA: TStringField;
    QComprobanteID_COMPROBANTE: TIntegerField;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CambiarNro_Fecha: TAction;
    QBuscaAplicaiones: TSQLQuery;
    PopupMenu1: TPopupMenu;
    CambiarNroFecha1: TMenuItem;
    QAnulados_old: TSQLQuery;
    DSPAnulados: TDataSetProvider;
    CDSAnulados: TClientDataSet;
    DSAnulados: TDataSource;
    PageControl1: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    dbgComprobantes: TJvDBGrid;
    dbgAnulados: TJvDBGrid;
    frAnulados: TfrxDBDataset;
    DataToXLS1: TDataToXLS;
    ToolButton2: TToolButton;
    btExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
    TabSheet1: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    chbNeto: TCheckBox;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    Label2: TLabel;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    CDSCpbteEmitidosID_FC: TIntegerField;
    CDSCpbteEmitidosTIPOCPBTE: TStringField;
    CDSCpbteEmitidosCLASECPBTE: TStringField;
    CDSCpbteEmitidosLETRAFAC: TStringField;
    CDSCpbteEmitidosSUCFAC: TStringField;
    CDSCpbteEmitidosNUMEROFAC: TStringField;
    CDSCpbteEmitidosNROCPBTE: TStringField;
    CDSCpbteEmitidosRAZONSOCIAL: TStringField;
    CDSCpbteEmitidosNOMBRE: TStringField;
    CDSCpbteEmitidosCUIT: TStringField;
    CDSCpbteEmitidosANULADO: TStringField;
    CDSCpbteEmitidosMUESTRACOMPROBANTE: TStringField;
    CDSCpbteEmitidosMUESTRASUCURSAL: TStringField;
    pnComprobantes: TJvPanel;
    lvComprobantes: TListView;
    Filtrar: TAction;
    CDSCpbteEmitidosID_COMPROBANTE: TIntegerField;
    Label4: TLabel;
    spCerrar: TSpeedButton;
    spFiltroAll: TSpeedButton;
    TabSheet2: TTabSheet;
    CDSCpbteEmitidosHORA: TStringField;
    CDSCpbteEmitidosVENDEDOR: TStringField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    dbGrafico: TDBChart;
    DSPCpbteEmitidosGraf: TDataSetProvider;
    CDSCpbteEmitidosGraf: TClientDataSet;
    CDSCpbteEmitidosGrafID_FC: TIntegerField;
    CDSCpbteEmitidosGrafTIPOCPBTE: TStringField;
    CDSCpbteEmitidosGrafCLASECPBTE: TStringField;
    CDSCpbteEmitidosGrafLETRAFAC: TStringField;
    CDSCpbteEmitidosGrafSUCFAC: TStringField;
    CDSCpbteEmitidosGrafNUMEROFAC: TStringField;
    CDSCpbteEmitidosGrafNROCPBTE: TStringField;
    CDSCpbteEmitidosGrafRAZONSOCIAL: TStringField;
    CDSCpbteEmitidosGrafNOMBRE: TStringField;
    CDSCpbteEmitidosGrafCUIT: TStringField;
    CDSCpbteEmitidosGrafANULADO: TStringField;
    CDSCpbteEmitidosGrafMUESTRACOMPROBANTE: TStringField;
    CDSCpbteEmitidosGrafMUESTRASUCURSAL: TStringField;
    CDSCpbteEmitidosGrafID_COMPROBANTE: TIntegerField;
    CDSCpbteEmitidosGrafVENDEDOR: TStringField;
    CDSCpbteEmitidosGrafHORA: TStringField;
    Series1: TBarSeries;
    CDSCpbteEmitidosHORA_STR: TStringField;
    CDSCpbteEmitidosGrafHORA_STR: TStringField;
    CDSCpbteEmitidosGrafHORA_INT: TIntegerField;
    pnTotales: TJvPanel;
    Label8: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    CDSCpbteEmitidosMES: TStringField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    CDSCpbteEmitidosSEMANA: TStringField;
    CDSCpbteEmitidosOBSERVACIONES1: TStringField;
    dbtObs: TDBText;
    QComprobanteFILTRO_COMPROBANTES: TStringField;
    CDSComprobantesFILTRO_COMPROBANTES: TStringField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    QVista: TSQLQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    QCpbteEmitidos: TFDQuery;
    CDSCpbteEmitidosNETOGRAV2: TFloatField;
    CDSCpbteEmitidosNETOEXENTO2: TFloatField;
    CDSCpbteEmitidosTASA1: TFloatField;
    CDSCpbteEmitidosTASA2: TFloatField;
    CDSCpbteEmitidosTASA3: TFloatField;
    CDSCpbteEmitidosIVA1: TFloatField;
    CDSCpbteEmitidosIVA2: TFloatField;
    CDSCpbteEmitidosIVA3: TFloatField;
    CDSCpbteEmitidosTOTAL: TFloatField;
    CDSCpbteEmitidosNETO1: TFloatField;
    CDSCpbteEmitidosNETO2: TFloatField;
    CDSCpbteEmitidosNETO3: TFloatField;
    CDSCpbteEmitidosHORA_INT: TIntegerField;
    CDSCpbteEmitidosPERCEPCION_IIBB: TFloatField;
    CDSCpbteEmitidosGrafNETOGRAV2: TFloatField;
    CDSCpbteEmitidosGrafNETOEXENTO2: TFloatField;
    CDSCpbteEmitidosGrafTASA1: TFloatField;
    CDSCpbteEmitidosGrafTASA2: TFloatField;
    CDSCpbteEmitidosGrafTASA3: TFloatField;
    CDSCpbteEmitidosGrafIVA1: TFloatField;
    CDSCpbteEmitidosGrafIVA2: TFloatField;
    CDSCpbteEmitidosGrafIVA3: TFloatField;
    CDSCpbteEmitidosGrafTOTAL: TFloatField;
    CDSCpbteEmitidosGrafOBSERVACIONES1: TStringField;
    CDSCpbteEmitidosGrafPERCEPCION_IIBB: TFloatField;
    CDSCpbteEmitidosGrafNETO1: TFloatField;
    CDSCpbteEmitidosGrafNETO2: TFloatField;
    CDSCpbteEmitidosGrafNETO3: TFloatField;
    QAnulados: TFDQuery;
    popMenuCpbte: TPopupMenu;
    GuardarCVS1: TMenuItem;
    CragraCVS1: TMenuItem;
    OpenDialog1: TOpenDialog;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    GuardarOpciones: TAction;
    CargarOpciones: TAction;
    pnPieComp: TPanel;
    lbl1: TLabel;
    lbTotal: TLabel;
    lbTotalNeto: TLabel;
    Label5: TLabel;
    lbPromedio: TLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbPromedioNeto: TLabel;
    chbUnificar: TCheckBox;
    Panel2: TPanel;
    Label1: TLabel;
    lbTotalAnulado: TLabel;
    Panel3: TPanel;
    Label3: TLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    Label9: TLabel;
    spVistas: TSpeedButton;
    Label10: TLabel;
    btImprimrCross: TBitBtn;
    tmDesde: TJvTimeEdit;
    tmHasta: TJvTimeEdit;
    chHora: TCheckBox;
    dbcVistas: TJvDBLookupCombo;
    Panel4: TPanel;
    Button1: TButton;
    Button2: TButton;
    CheckBox1: TCheckBox;
    btImprimirGraf: TBitBtn;
    SpinEdit1: TSpinEdit;
    CDSCpbteEmitidosFECHAVTA: TSQLTimeStampField;
    CDSCpbteEmitidosGrafFECHAVTA: TSQLTimeStampField;
    CDSCpbteEmitidosFECHA_HORA: TSQLTimeStampField;
    CDSCpbteEmitidosGrafFECHA_HORA: TSQLTimeStampField;
    CDSAnuladosID_FC: TIntegerField;
    CDSAnuladosFECHAVTA: TSQLTimeStampField;
    CDSAnuladosTIPOCPBTE: TStringField;
    CDSAnuladosCLASECPBTE: TStringField;
    CDSAnuladosNROCPBTE: TStringField;
    CDSAnuladosRAZONSOCIAL: TStringField;
    CDSAnuladosNOMBRE: TStringField;
    CDSAnuladosCUIT: TStringField;
    CDSAnuladosANULADO: TStringField;
    CDSAnuladosNETOGRAV2: TFloatField;
    CDSAnuladosLETRAFAC: TStringField;
    CDSAnuladosSUCFAC: TStringField;
    CDSAnuladosNUMEROFAC: TStringField;
    CDSAnuladosTOTAL: TFloatField;
    CDSAnuladosMUESTRACOMPROBANTE: TStringField;
    PopupMenu2: TPopupMenu;
    MenuItem1: TMenuItem;
    CDSCpbteEmitidosPERCEPCION_IVA: TFloatField;
    CDSCpbteEmitidosCONTROL: TFloatField;
    Panel5: TPanel;
    RxLabel3: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    spFiltroCpbte: TSpeedButton;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    dbcSucursal: TJvDBLookupCombo;
    dbcComprobantes: TJvDBLookupCombo;
    chbPorDia: TAdvOfficeCheckBox;
    chbRecibos: TAdvOfficeCheckBox;
    Label11: TLabel;
    CDSCpbteEmitidosFISCAL: TStringField;
    CDSCpbteEmitidosMODOIVA: TStringField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    CDSCpbteEmitidosUSUARIO: TStringField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgVentasTitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure dbcComprobantesClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure dbgComprobantesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure SumarExecute(Sender: TObject);
    procedure dbgComprobantesDblClick(Sender: TObject);
    procedure CambiarNro_FechaExecute(Sender: TObject);
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btExcelClick(Sender: TObject);
    procedure btImprimrCrossClick(Sender: TObject);
    procedure FiltrarExecute(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure lvComprobantesClick(Sender: TObject);
    procedure btImprimirGrafClick(Sender: TObject);
    procedure spCerrarClick(Sender: TObject);
    procedure PageControl1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure spFiltroAllClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CDSCpbteEmitidosCalcFields(DataSet: TDataSet);
    procedure PageControl1Changing(Sender: TObject; var AllowChange: Boolean);
    procedure SpinEdit1Change(Sender: TObject);
    procedure CDSCpbteEmitidosGrafCalcFields(DataSet: TDataSet);
    procedure chHoraClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure GuardarOpciones1Click(Sender: TObject);
    procedure cxDBPivotGrid1FilterChanged(Sender: TObject);
    procedure GuardarOpcionesExecute(Sender: TObject);
    procedure CargarOpcionesExecute(Sender: TObject);
    procedure chbRecibosClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
    procedure SaveListViewToFile(AListView: TListView; sFileName: string);
    procedure LoadListViewToFile(AListView: TListView; sFileName: string);
  public
    Filtro:String;
    Lista:TListItem;
    FDragDrop : Boolean;
    AMoved : Boolean;
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormControlCpbteEmitidos: TFormControlCpbteEmitidos;

const
  Msg1 = ';El archivo "%s" no existe!';
  Msg2 = ';"%s" este no es el archivo indicado!';


implementation

uses DMBuscadoresForm, UFacturaCtdo_2, UTiketVta,
     UFactura_2, UCambiaNumeroCpbte,URecibo_2,UVistasGrillas,UDMain_FD;
{$R *.DFM}

// rutina de carga ListView y Gravado de ListView
procedure TFormControlCpbteEmitidos.SaveListViewToFile(AListView: TListView; sFileName: string);
var
  idxItem, idxSub, IdxImage: Integer;
  F: TFileStream;
  pText: PChar;
  sText: string;
  W, ItemCount, SubCount: Word;
  MySignature: array [0..2] of Char;
begin
  // Inicio
  with AListView do
  begin
    ItemCount := 0;
    SubCount  := 0;
    //****
    MySignature := 'LVF';
    //  ListViewFile
    F := TFileStream.Create('NombredelArchivo.XXX', fmCreate or fmOpenWrite);
    F.Write(MySignature, SizeOf(MySignature));

    if Items.Count = 0 then
      // List is empty
      ItemCount := 0
    else
      ItemCount := Items.Count;
    F.Write(ItemCount, SizeOf(ItemCount));

    if Items.Count > 0 then
    begin
      for idxItem := 1 to ItemCount do
      begin
        with Items[idxItem - 1] do
        begin
          // Guardamos los SubItems
          if SubItems.Count = 0 then
            SubCount := 0
          else
            SubCount := Subitems.Count;
          F.Write(SubCount, SizeOf(SubCount));
          // Guardamos el Index
          IdxImage := ImageIndex;
          F.Write(IdxImage, SizeOf(IdxImage));
          // Guardamos la Caption
          sText := Caption;
          w     := Length(sText);
          pText := StrAlloc(Length(sText) + 1);
          StrPLCopy(pText, sText, Length(sText));
          F.Write(w, SizeOf(w));
          F.Write(pText^, w);
          StrDispose(pText);
          if SubCount > 0 then
          begin
            for idxSub := 0 to SubItems.Count - 1 do
            begin
              // Guardamos los Items y SubItems
              sText := SubItems[idxSub];
              w     := Length(sText);
              pText := StrAlloc(Length(sText) + 1);
              StrPLCopy(pText, sText, Length(sText));
              F.Write(w, SizeOf(w));
              F.Write(pText^, w);
              StrDispose(pText);
            end;
          end;
        end;
      end;
    end;
    F.Free;
  end;
end;


procedure TFormControlCpbteEmitidos.LoadListViewToFile(AListView: TListView; sFileName: string);
var
  F: TFileStream;
  IdxItem, IdxSubItem, IdxImage: Integer;
  W, ItemCount, SubCount: Word;
  pText: PChar;
  PTemp: PChar;
  MySignature: array [0..2] of Char;
  sExeName: string;
begin
  with AListView do
  begin
    ItemCount := 0;
    SubCount  := 0;

    sExeName := ExtractFileName('NombredelArchivo.XXX');

    if not FileExists('NombredelArchivo.XXX') then
    begin
      MessageBox(Handle, PChar(Format(Msg1, [sExeName])), 'I/O Error', MB_ICONERROR);
      Exit;
    end;

    F := TFileStream.Create('NombredelArchivo.XXX', fmOpenRead);
    F.Read(MySignature, SizeOf(MySignature));

    if MySignature <> 'LVF' then
    begin
      MessageBox(Handle, PChar(Format(Msg2, [sExeName])), 'I/O Error', MB_ICONERROR);
      Exit;
    end;

    F.Read(ItemCount, SizeOf(ItemCount));
    Items.Clear;

    for idxItem := 1 to ItemCount do
    begin
      with Items.Add do
      begin
        // Leemos el Index
        F.Read(SubCount, SizeOf(SubCount));
        // Re Leemos el Index
        F.Read(IdxImage, SizeOf(IdxImage));
        ImageIndex := IdxImage;
        // Leemos el Caption
        F.Read(w, SizeOf(w));
        pText := StrAlloc(w + 1);
        pTemp := StrAlloc(w + 1);
        F.Read(pTemp^, W);
        StrLCopy(pText, pTemp, W);
        Caption := StrPas(pText);
        StrDispose(pTemp);
        StrDispose(pText);
        if SubCount > 0 then
        begin
          for idxSubItem := 1 to SubCount do
          begin
            F.Read(w, SizeOf(w));
            pText := StrAlloc(w + 1);
            pTemp := StrAlloc(w + 1);
            F.Read(pTemp^, W);
            StrLCopy(pText, pTemp, W);
            Items[idxItem - 1].SubItems.Add(StrPas(pText));
            StrDispose(pTemp);
            StrDispose(pText);
          end;
        end;
      end;
    end;

    F.Free;
  end;
end;
//**********************************************


procedure TFormControlCpbteEmitidos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
 var d,m,y:word;
begin
  if chbPorDia.Checked=False then
    begin
      DecodeDate(Desde.Date,y,m,d);
      if Button=btnext Then
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1
      else
        if Button=btPrev Then
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;
      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,System.DateUtils.DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;  
  BUSCAR.Execute;
end;

procedure TFormControlCpbteEmitidos.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  if Not(CDSCpbteEmitidos.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName:='Comprobantes';

      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if PageControl1.ActivePageIndex=0 then
        begin
          if SaveDialog1.Execute Then
            if SaveDialog1.FileName<>'' Then
              begin
                DataToXLS1.SaveToFile(SaveDialog1.FileName);
                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
        end
      else
        if PageControl1.ActivePageIndex=2 then
          begin
            cxDBPivotGrid1.OptionsView.DataFields     :=False;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
            cxDBPivotGrid1.OptionsView.RowFields      :=False;
            cxDBPivotGrid1.OptionsView.FilterFields   :=False;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
            SaveDialog1.FileName:='Comprobantes';
            SaveDialog1.DefaultExt:='XLS';

            if VirtualUI.Active then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if SaveDialog1.Execute Then
              begin
                cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1,True,True, SaveDialog1.DefaultExt);
                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
            cxDBPivotGrid1.OptionsView.DataFields     :=True;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
            cxDBPivotGrid1.OptionsView.RowFields      :=True;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
          end;

    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormControlCpbteEmitidos.btImprimrCrossClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormControlCpbteEmitidos.btImprimirGrafClick(Sender: TObject);
begin
  inherited;
//  pnComprobantes.Visible:=False;
  dbGrafico.Print;
end;

procedure TFormControlCpbteEmitidos.BuscarExecute(Sender: TObject);
var i:integer;
begin
  CDSAnulados.Close;
  if dbcComprobantes.KeyValue<>null Then
    begin
      CDSAnulados.CommandText:='';
      CDSAnulados.CommandText:='select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.razonsocial,f.nombre,f.cuit,f.anulado,f.netograv2, f.letrafac,f.sucfac,f.numerofac,'+
                                    'f.total,c.denominacion as MuestraComprobante from fcvtacab f '+
                                    'left join comprobantes c on c.sucursal=f.sucursal and  c.letra=f.letrafac and c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'''+
                                    'where f.fechavta>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+' and f.Fechavta<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+
                                    ' and f.sucursal='+IntToStr(dbcSucursal.KeyValue)+
                                    ' and f.clasecpbte='+''''+ dbcComprobantes.LookupSource.DataSet.fieldbyName('Clase_comprob').AsString+''''+
                                    ' and f.letraFac='+ ''''+dbcComprobantes.LookupSource.DataSet.fieldbyName('letra').AsString+''''+
                                    ' and f.tipocpbte='+''''+dbcComprobantes.LookupSource.DataSet.fieldbyName('tipo_comprob').AsString+''''+
                                    ' and f.Anulado<> ''N'' '+
                                    ' order by f.tipocpbte,f.nrocpbte';
      CDSAnulados.Open;
    end
  else
    begin
      CDSAnulados.CommandText:='';
      CDSAnulados.CommandText:='select f.id_fc,f.fechavta,f.tipocpbte,f.clasecpbte,f.nrocpbte,f.razonsocial,f.nombre,f.cuit,f.anulado ,f.netograv2, f.letrafac,f.sucfac,f.numerofac, '+
                                    'f.total,c.denominacion as MuestraComprobante from fcvtacab f '+
                                    'left join comprobantes c on c.sucursal=f.sucursal and  c.letra=f.letrafac and c.tipo_comprob=f.tipocpbte and c.clase_comprob=f.clasecpbte and c.compra_venta=''V'''+
                                    'where f.fechavta>='+''''+FormatDateTime('mm/dd/yyyy',Desde.Date)+''''+' and f.Fechavta<='+''''+FormatDateTime('mm/dd/yyyy',hasta.Date)+''''+
                                    ' and f.sucursal='+IntToStr(dbcSucursal.KeyValue)+
                                    ' and f.Anulado<> ''N'' '+
                                    ' order by f.tipocpbte,f.nrocpbte';
      CDSAnulados.Open;

    end;

   CDSCpbteEmitidos.Close;
   CDSCpbteEmitidos.IndexDefs.Clear;
   CDSCpbteEmitidos.IndexFieldNames:='';
   CDSCpbteEmitidos.Params.ParamByName('desde').AsDate      := Desde.Date;
   CDSCpbteEmitidos.Params.ParamByName('hasta').AsDate      := Hasta.Date;
   CDSCpbteEmitidos.Params.ParamByName('sucursal').AsInteger:= dbcSucursal.KeyValue;
   if (dbcComprobantes.KeyValue>-1) then
     begin
       CDSCpbteEmitidos.Params.ParamByName('Tipo').AsString    := dbcComprobantes.LookupSource.DataSet.fieldbyName('Tipo_comprob').AsString;
       CDSCpbteEmitidos.Params.ParamByName('Clase').AsString   := dbcComprobantes.LookupSource.DataSet.fieldbyName('Clase_comprob').AsString;
       CDSCpbteEmitidos.Params.ParamByName('Letra').AsString   := dbcComprobantes.LookupSource.DataSet.fieldbyName('Letra').AsString;
     end
   else
     begin
       CDSCpbteEmitidos.Params.ParamByName('Tipo').AsString    := '**';
       CDSCpbteEmitidos.Params.ParamByName('Clase').AsString   := '**';
       CDSCpbteEmitidos.Params.ParamByName('Letra').AsString   := '*';
     end;
   if chbUnificar.Checked then
     CDSCpbteEmitidos.Params.ParamByName('UNIFICA').AsInteger  := 1
   else
     CDSCpbteEmitidos.Params.ParamByName('UNIFICA').AsInteger  := 0;

   if chbRecibos.Checked then
     CDSCpbteEmitidos.Params.ParamByName('LISTARTOS').AsString  := 'S'
   else
     CDSCpbteEmitidos.Params.ParamByName('LISTARTOS').AsString  := 'N';

   CDSCpbteEmitidos.Open;

   CDSCpbteEmitidosGraf.Close;
   CDSCpbteEmitidosGraf.Params.ParamByName('desde').AsDate       := Desde.Date;
   CDSCpbteEmitidosGraf.Params.ParamByName('hasta').AsDate       := Hasta.Date;
   CDSCpbteEmitidosGraf.Params.ParamByName('sucursal').AsInteger := dbcSucursal.KeyValue;
   if (dbcComprobantes.KeyValue>-1) then
     begin
       CDSCpbteEmitidosGraf.Params.ParamByName('Tipo').AsString    := dbcComprobantes.LookupSource.DataSet.fieldbyName('Tipo_comprob').AsString;
       CDSCpbteEmitidosGraf.Params.ParamByName('Clase').AsString   := dbcComprobantes.LookupSource.DataSet.fieldbyName('Clase_comprob').AsString;
       CDSCpbteEmitidosGraf.Params.ParamByName('Letra').AsString   := dbcComprobantes.LookupSource.DataSet.fieldbyName('Letra').AsString;
     end
   else
     begin
       CDSCpbteEmitidosGraf.Params.ParamByName('Tipo').AsString    := '**';
       CDSCpbteEmitidosGraf.Params.ParamByName('Clase').AsString   := '**';
       CDSCpbteEmitidosGraf.Params.ParamByName('Letra').AsString   := '*';
     end;

   CDSCpbteEmitidosGraf.Open;
   CDSCpbteEmitidosGraf.IndexName:='CDSCpbteEmitidosGrafIndex1';


   Sumar.Execute;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
 
   dbGrafico.RefreshData;
end;

procedure TFormControlCpbteEmitidos.Button1Click(Sender: TObject);
begin
  inherited;
  if dbGrafico.Page>0 Then
    dbGrafico.PreviousPage;
end;

procedure TFormControlCpbteEmitidos.Button2Click(Sender: TObject);
begin
  inherited;
 dbGrafico.NextPage;
end;

procedure TFormControlCpbteEmitidos.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,System.DateUtils.DaysInMonth(Desde.Date));
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
end;


procedure TFormControlCpbteEmitidos.GuardarOpciones1Click(Sender: TObject);
begin
  inherited;
 SaveListViewToFile(lvComprobantes, 'NombredelArchivo.XXX');
//  ListView1.Items.Clear;
end;

procedure TFormControlCpbteEmitidos.GuardarOpcionesExecute(Sender: TObject);
var
  i : Integer;
  saveDialog : TSaveDialog;
begin
  saveDialog := TSaveDialog.Create(self);
  saveDialog.Title := ';Guardar Archivo como CSV';;
  saveDialog.InitialDir := GetCurrentDir;
  saveDialog.Filter := ';CSV (Formato de texto separado por comas) (*.csv)|*.csv';;
  saveDialog.DefaultExt := ';csv';;
  saveDialog.FilterIndex := 1;
  if saveDialog.Execute then
  begin
     with TStringList.Create do
     try
        for i := 0 to lvComprobantes.Items.Count-1 do
           Add(BoolToStr(lvComprobantes.Items[i].Checked) +',' +
             //  lvComprobantes.Items[i].Caption +',' +
               lvComprobantes.Items[i].SubItems.CommaText);
           Text := StringReplace(Text,';',',',[rfReplaceAll]);
           try
              SaveToFile(SaveDialog.FileName);
           except
              ShowMessage('Error en la Generación del Archivo CSV');
           end;
     finally
        free;
     end;
  end;
  saveDialog.Free;
end;


procedure TFormControlCpbteEmitidos.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;

end;

procedure TFormControlCpbteEmitidos.dbgVentasTitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  inherited;
  CDSCpbteEmitidos.IndexFieldNames:=AFieldName;
end;

procedure TFormControlCpbteEmitidos.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;

end;

procedure TFormControlCpbteEmitidos.FormCreate(Sender: TObject);
var i:integer;
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Close;
  CDSSucursal.Open;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=SucursalPorDefecto;
  CDSComprobantes.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;
  dbcSucursal.Enabled :=DMMain_FD.ModificaSucursal;
  PageControl1.ActivePageIndex:=0;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='CPBTEEMITIDOS';
  CDSVista.Open;

  lvComprobantes.Clear;
  CDSComprobantes.First;
  while not(CDSComprobantes.Eof) DO
    begin
      Lista:=lvComprobantes.Items.Add;
      Lista.Checked:= True;//CDSComprobantesFILTRO_COMPROBANTES.AsString='S';//  True;
      Lista.SubItems.Add(CDSComprobantesID_COMPROBANTE.AsString);
      Lista.SubItems.Add(CDSComprobantesTIPO_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesCLASE_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesDENOMINACION.AsString);
      CDSComprobantes.Next;
    end;
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaCpbteEmitidos');
  //*************************************************************
  AutoSize:=False;

  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;
  tmDesde.Text:='08:00';
  tmHasta.Text:='20:00';

end;

procedure TFormControlCpbteEmitidos.FiltrarExecute(Sender: TObject);
begin
  inherited;
  if CDSCpbteEmitidos.Active=True then
    if Not(CDSCpbteEmitidos.IsEmpty) then
      pnComprobantes.Visible:=Not(pnComprobantes.Visible);
end;

procedure TFormControlCpbteEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaCpbteEmitidos');

  Action:=caFree;
end;

procedure TFormControlCpbteEmitidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCpbteEmitidos:=nil;
end;

procedure TFormControlCpbteEmitidos.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSCpbteEmitidos.IsEmpty) Then
    begin

      if PrListados<0 Then PrListados:=0;

      frConsulta.PrintOptions.Printer:=PrNomListados;
      frConsulta.SelectPrinter;

      frConsulta.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCpbteEmitidos.fr3');

      frConsulta.PrintOptions.Printer:=PrNomListados;
      frConsulta.SelectPrinter;

      frConsulta.Variables['desde']   :=''''+Desde.Text+'''';
      frConsulta.Variables['hasta']   :=''''+Hasta.Text+'''';
      frConsulta.Variables['sucursal']:=''''+dbcSucursal.Text+'''';
      if chbNeto.Checked then
        frConsulta.Variables['PorNeto']:='''S'''
      else
        frConsulta.Variables['PorNeto']:='''N''';

      frConsulta.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormControlCpbteEmitidos.Label3Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormControlCpbteEmitidos.Label9Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;



procedure TFormControlCpbteEmitidos.lvComprobantesClick(Sender: TObject);
var i:integer;
begin
  inherited;
  CDSCpbteEmitidos.Filtered:=False;
  CDSCpbteEmitidos.Filter  :='';

  Filtro:='';
  for I := 0 to lvComprobantes.Items.Count - 1 do
     begin
       lista:=lvComprobantes.Items[i];
       if lista.Checked then
         begin
           if Filtro='' then
             Filtro:='id_comprobante = '+ Lista.SubItems.Strings[0]
           else
            Filtro:=Filtro+' or id_comprobante = '+Lista.SubItems.Strings[0];
        end;
     end;
   if Filtro<>'' then
     begin
       CDSCpbteEmitidos.Filter  :=Filtro;
       CDSCpbteEmitidos.Filtered:=True;
     end
   else
     begin
       Filtro:='id_comprobante = -1';
       CDSCpbteEmitidos.Filter  :=Filtro;
       CDSCpbteEmitidos.Filtered:=True;
     end;
   Sumar.Execute;
end;

procedure TFormControlCpbteEmitidos.MenuItem1Click(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormControlCpbteEmitidos.PageControl1Change(Sender: TObject);
begin
  inherited;
  pnComprobantes.Visible:=False;
//  if PageControl1.ActivePageIndex=3 Then
//    CDSCpbteEmitidos.IndexFieldNames:='FECHA_HORA'
//  else
//    CDSCpbteEmitidos.IndexFieldNames:='tipocpbte;nrocpbte'
end;

procedure TFormControlCpbteEmitidos.PageControl1Changing(Sender: TObject;
  var AllowChange: Boolean);
begin
  inherited;
 // if PageControl1.ActivePageIndex=3 Then
//    CDSCpbteEmitidos.IndexFieldNames:='FECHA_HORA'
//  else
//    CDSCpbteEmitidos.IndexFieldNames:='tipocpbte;nrocpbte'
end;



procedure TFormControlCpbteEmitidos.dbgComprobantesDblClick(Sender: TObject);
begin
  inherited;
  if CDSCpbteEmitidosTIPOCPBTE.Value='FC' then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2   := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSCpbteEmitidosID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSCpbteEmitidosTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if CDSCpbteEmitidosTIPOCPBTE.Value='FO' then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew   := CDSCpbteEmitidosID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte := CDSCpbteEmitidosTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
  else
    if CDSCpbteEmitidosTIPOCPBTE.Value='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta   := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := CDSCpbteEmitidosID_FC.AsString;
        FormTicketVta.TipoCpbte := CDSCpbteEmitidosTIPOCPBTE.AsString;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if CDSCpbteEmitidosTIPOCPBTE.Value='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := CDSCpbteEmitidosID_FC.AsString;
          FormCpbte_2.TipoCpbte := CDSCpbteEmitidosTIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end;
end;

procedure TFormControlCpbteEmitidos.dbgComprobantesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if CDSCpbteEmitidosANULADO.Value='S' Then
    dbgComprobantes.Canvas.Font.Style :=[fsStrikeOut]
  else
    dbgComprobantes.Canvas.Font.Style :=[];

  IF not(IsZero(CDSCpbteEmitidosCONTROL.Value,0.3)) and (Column.FieldName='CONTROL') then
     begin
       dbgComprobantes.Canvas.Brush.Color:=clred;
       dbgComprobantes.Canvas.Font.Color :=clWhite;
     end;

  dbgComprobantes.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

procedure TFormControlCpbteEmitidos.dbgComprobantesTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgComprobantes.DataSource.DataSet as TClientDataSet do
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

procedure TFormControlCpbteEmitidos.CambiarNro_FechaExecute(Sender: TObject);
begin
  inherited;
  QBuscaAplicaiones.Close;
  QBuscaAplicaiones.ParamByName('id').Value  :=CDSCpbteEmitidosID_FC.Value;
  QBuscaAplicaiones.ParamByName('Tipo').Value:=CDSCpbteEmitidosTIPOCPBTE.Value;
  QBuscaAplicaiones.Open;
  if (QBuscaAplicaiones.Fields[0].Value>0) Then
    Raise Exception.Create (' Facturas con pagos asignados....');
  QBuscaAplicaiones.Close;


  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte:=TFormCambiaNroCpbte.Create(Self);
  FormCambiaNroCpbte.Id   :=CDSCpbteEmitidosID_FC.Value;
  FormCambiaNroCpbte.Num  :=CDSCpbteEmitidosNUMEROFAC.Value;
  FormCambiaNroCpbte.Suc  :=CDSCpbteEmitidosSUCFAC.Value;
  FormCambiaNroCpbte.Let  :=CDSCpbteEmitidosLETRAFAC.Value;
  FormCambiaNroCpbte.Tipo :=CDSCpbteEmitidosTIPOCPBTE.Value;
  FormCambiaNroCpbte.Fecha:=CDSCpbteEmitidosFECHAVTA.AsDateTime;
  FormCambiaNroCpbte.CV   :='V';
  FormCambiaNroCpbte.Showmodal;
end;


procedure TFormControlCpbteEmitidos.CargarOpcionesExecute(Sender: TObject);
var
  csv : TStringList;
  fila : TStringList;
  i, j : Integer;
begin
	try
    lvComprobantes.Clear;
		csv := TStringList.Create;
		// cargar a partir del fichero csv
    if OpenDialog1.Execute then
      if OpenDialog1.FileName<>'' then
        begin
          csv.LoadFromFile(OpenDialog1.FileName);
          fila := TStringList.Create;
      		// recorrer las filas
      		for i := 0 to csv.Count -1 do
        		begin
        			fila.CommaText := csv.Strings[i];
        			// recorrer las columnas
		        	//for j := 0 to fila.Count -1 do
              Lista:=lvComprobantes.Items.Add;
              Lista.Checked:=StrToBool(fila[0]);
              Lista.SubItems.Add(fila[1]);
              Lista.SubItems.Add(fila[2]);
              Lista.SubItems.Add(fila[3]);
              Lista.SubItems.Add(fila[4]);
//            CDSComprobantes.Next;
//			    	lista.Items.Add(fila[j]);111			end;
		        end;
          lvComprobantesClick(Sender);
        end;
		//MessageDlg('Lectura Exitosa..', mtInformation, [mbOK], 0);
  Except
	  on E : Exception do
  			MessageDlg('Ocurrio un Error: ' + E.Message, mtInformation, [mbOK], 0);
 	end;


	// liberar la memoria
	csv.Free;
end;

procedure TFormControlCpbteEmitidos.CDSCpbteEmitidosCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSCpbteEmitidosHORA.Value   :=FormatDateTime('HH:MM',CDSCpbteEmitidosFECHA_HORA.AsDateTime);
  CDSCpbteEmitidosMES.Value    :=FormatDateTime('mm',CDSCpbteEmitidosFECHAVTA.AsDateTime)+' - '+FormatDateTime('mmmm',CDSCpbteEmitidosFECHAVTA.AsDateTime);
  CDSCpbteEmitidosSEMANA.Value :='Semana - '+ FloatToStr(NthDayOfWeek(CDSCpbteEmitidosFECHAVTA.AsDateTime));
  CDSCpbteEmitidosCONTROL.Value:=(CDSCpbteEmitidosNETOGRAV2.Value+
                                  CDSCpbteEmitidosNETOEXENTO2.Value+
                                  CDSCpbteEmitidosIVA1.Value+
                                  CDSCpbteEmitidosIVA2.Value+
                                  CDSCpbteEmitidosIVA3.Value+
                                  CDSCpbteEmitidosPERCEPCION_IIBB.Value+
                                  CDSCpbteEmitidosPERCEPCION_IVA.Value)-CDSCpbteEmitidosTOTAL.Value;
  if CDSCpbteEmitidosFISCAL.Value='S' Then
    CDSCpbteEmitidosMODOIVA.Value:='Fiscal'
  else
    CDSCpbteEmitidosMODOIVA.Value:='No Fiscal';
end;

procedure TFormControlCpbteEmitidos.CDSCpbteEmitidosGrafCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSCpbteEmitidosGrafHORA.Value:=FormatDateTime('HH:MM',CDSCpbteEmitidosGrafFECHA_HORA.AsDateTime);
end;

procedure TFormControlCpbteEmitidos.chbRecibosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlCpbteEmitidos.CheckBox1Click(Sender: TObject);
var i:integer;
begin
  inherited;
//  CDSCpbteEmitidos.Filtered:=False;
//  CDSCpbteEmitidos.Filter:='';
//
//  Filtro:='';
//  for I := 0 to lvComprobantes.Items.Count - 1 do
//     begin
//       lista:=lvComprobantes.Items[i];
//       if lista.Checked then
//         begin
//           if Filtro='' then
//             Filtro:='id_comprobante= '+ Lista.SubItems.Strings[0]
//           else
//            Filtro:=Filtro+' or id_comprobante= '+Lista.SubItems.Strings[0];
//        end;
//     end;
//   if Filtro<>'' then
//     begin
//       CDSCpbteEmitidos.Filter:=Filtro;
//       CDSCpbteEmitidos.Filtered:=True;
//     end;
  dbGrafico.Legend.Visible:=CheckBox1.Checked;
end;

procedure TFormControlCpbteEmitidos.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;


procedure TFormControlCpbteEmitidos.cxDBPivotGrid1DblClick(Sender: TObject);
var
  FocusedRecordIndex : integer;
  tipo:String;
  Id:String;
begin
   // Busqueda en cdDBPivotGrid por referencia de lineas
   FocusedRecordIndex  := cxDBPivotGrid1.ViewData.Cells[cxDBPivotGrid1.ViewData.FocusedCell.Y,cxDBPivotGrid1.ViewData.FocusedCell.X].Owner.Row.RecordIndex;
   tipo:=VarToStr(cxDBPivotGrid1.ViewData.Cells[cxDBPivotGrid1.ViewData.FocusedCell.Y,cxDBPivotGrid1.ViewData.FocusedCell.X].Owner.Row.DataController.Values[FocusedRecordIndex,cxDBPivotGrid1Field3.Index]);
   Id  :=VarToStr(cxDBPivotGrid1.ViewData.Cells[cxDBPivotGrid1.ViewData.FocusedCell.Y,cxDBPivotGrid1.ViewData.FocusedCell.X].Owner.Row.DataController.Values[FocusedRecordIndex,cxDBPivotGrid1Field16.Index]);
   if Tipo='FC' then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2   := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := ID;
      FormCpbte_2.TipoCpbte := Tipo;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if Tipo='FO' then
      begin
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2   := TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew   := Id;
        FormCpbteCtdo_2.TipoCpbte := Tipo;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
  else
    if Tipo='TK' then
      begin
        IF NOT (Assigned(FormTicketVta)) THEN
          FormTicketVta   := TFormTicketVta.Create(self);
        FormTicketVta.DatoNew   := Id;
        FormTicketVta.TipoCpbte := Tipo;
        FormTicketVta.Recuperar.Execute;
        FormTicketVta.Show;
      end
    else
      if Tipo='NC' then
        begin
          IF NOT (Assigned(FormCpbte_2)) THEN
            FormCpbte_2   := TFormCpbte_2.Create(self);
          FormCpbte_2.DatoNew   := Id;
          FormCpbte_2.TipoCpbte := Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if Tipo='RC' then
          begin
            IF NOT (Assigned(FormRecibo_2)) THEN
              FormRecibo_2   := TFormRecibo_2.Create(self);
            FormRecibo_2.DatoNew   := Id;
            FormRecibo_2.TipoCpbte := Tipo;
            FormRecibo_2.Recuperar.Execute;
            FormRecibo_2.Show;
          end;

   //ShowMessage(VarToStr(cxDBPivotGrid1.ViewData.Cells[cxDBPivotGrid1.ViewData.FocusedCell.Y,cxDBPivotGrid1.ViewData.FocusedCell.X].Owner.Row.DataController.Values[FocusedRecordIndex,cxDBPivotGrid1Field16.Index]));

end;

procedure TFormControlCpbteEmitidos.cxDBPivotGrid1FilterChanged(
  Sender: TObject);
  var c:Integer;
begin
  inherited;
     begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
    end;

end;

procedure TFormControlCpbteEmitidos.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;


procedure TFormControlCpbteEmitidos.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormControlCpbteEmitidos.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormControlCpbteEmitidos.chHoraClick(Sender: TObject);
begin
  inherited;
  CDSCpbteEmitidos.Filtered    :=False;
  CDSCpbteEmitidosGraf.Filtered:=False;

  CDSCpbteEmitidos.Filter    := 'HORA_STR >= '+''''+(tmDesde.Text)+''''+' and  HORA_STR <= '+''''+(tmHasta.Text)+'''';
  CDSCpbteEmitidosGraf.Filter:= 'HORA_STR >= '+''''+(tmDesde.Text)+''''+' and  HORA_STR <= '+''''+(tmHasta.Text)+'''';

  CDSCpbteEmitidos.Filtered    :=chHora.Checked;
  CDSCpbteEmitidosGraf.Filtered:=chHora.Checked;
  dbGrafico.RefreshData;

end;

procedure TFormControlCpbteEmitidos.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  if dbcSucursal.Text<>'' Then
    begin
      CDSComprobantes.Close;
      CDSComprobantes.Params.ParamByName('Suc').Value:=dbcSucursal.KeyValue;
      CDSComprobantes.Open;

      lvComprobantes.Clear;
      CDSComprobantes.First;
      while not(CDSComprobantes.Eof) DO
        begin
          Lista:=lvComprobantes.Items.Add;
          Lista.Checked:=True;
          Lista.SubItems.Add(CDSComprobantesID_COMPROBANTE.AsString);
          Lista.SubItems.Add(CDSComprobantesTIPO_COMPROB.AsString);
          Lista.SubItems.Add(CDSComprobantesCLASE_COMPROB.AsString);
          Lista.SubItems.Add(CDSComprobantesDENOMINACION.AsString);
          CDSComprobantes.Next;
        end;
     Buscar.Execute;
    end;
end;

procedure TFormControlCpbteEmitidos.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  i:Integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormControlCpbteEmitidos.dbcComprobantesClick(
  Sender: TObject);
begin
  inherited;
  Buscar.Execute;
  lvComprobantes.Clear;
  CDSComprobantes.First;
  while not(CDSComprobantes.Eof) DO
    begin
      Lista:=lvComprobantes.Items.Add;
      Lista.Checked:=True;
      Lista.SubItems.Add(CDSComprobantesID_COMPROBANTE.AsString);
      Lista.SubItems.Add(CDSComprobantesTIPO_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesCLASE_COMPROB.AsString);
      Lista.SubItems.Add(CDSComprobantesDENOMINACION.AsString);
      CDSComprobantes.Next;
    end;
 
end;

procedure TFormControlCpbteEmitidos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frConsulta.DesignReport;
end;

procedure TFormControlCpbteEmitidos.spCerrarClick(Sender: TObject);
begin
  inherited;
  pnComprobantes.Visible:=False;
end;

procedure TFormControlCpbteEmitidos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormControlCpbteEmitidos.spFiltroAllClick(Sender: TObject);
var
  i: Integer;
  Estado:Boolean;
begin
  inherited;
  Estado:=lvComprobantes.Items[0].Checked;
  for i := 0 to lvComprobantes.Items.Count - 1 do
    lvComprobantes.Items[i].Checked:=Not(Estado);


  CDSCpbteEmitidos.Filtered:=False;
  CDSCpbteEmitidos.Filter  :='';

  Filtro:='';
  for I := 0 to lvComprobantes.Items.Count - 1 do
     begin
       lista:=lvComprobantes.Items[i];
       if lista.Checked then
         begin
           if Filtro='' then
             Filtro:='id_comprobante = '+ Lista.SubItems.Strings[0]
           else
            Filtro:=Filtro+' or id_comprobante = '+Lista.SubItems.Strings[0];
        end;
     end;
   if Filtro<>'' then
     begin
       CDSCpbteEmitidos.Filter  :=Filtro;
       CDSCpbteEmitidos.Filtered:=True;
     end
   else
     begin
       Filtro:='id_comprobante = -1';
       CDSCpbteEmitidos.Filter  :=Filtro;
       CDSCpbteEmitidos.Filtered:=True;
     end;

 Sumar.Execute;

end;

procedure TFormControlCpbteEmitidos.SpinEdit1Change(Sender: TObject);
begin
  inherited;
  dbGrafico.MaxPointsPerPage:=SpinEdit1.Value;
end;

procedure TFormControlCpbteEmitidos.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='CPBTEEMITIDOS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='VTAARTICULOS';
  CDSVista.Open;

end;

procedure TFormControlCpbteEmitidos.SumarExecute(Sender: TObject);
var p:TBookmark;
aux,aux2,Cantidad,Acumulado,Acumulado2:Extended;
begin
  inherited;
  aux :=0;
  aux2:=0;
  Cantidad:=0;

  p:=CDSCpbteEmitidos.GetBookmark;
  CDSCpbteEmitidos.First;
  CDSCpbteEmitidos.DisableControls;
  while Not(CDSCpbteEmitidos.Eof) do
    begin
      aux :=aux+RoundTo(CDSCpbteEmitidosTOTAL.AsFloat,-2);
      aux2:=aux2+RoundTo(CDSCpbteEmitidosNETOGRAV2.AsFloat,-2);
      CDSCpbteEmitidos.Next;
    end;
  CDSCpbteEmitidos.GotoBookmark(p);
  CDSCpbteEmitidos.EnableControls;
  CDSCpbteEmitidos.FreeBookmark(p);
  lbTotal.Caption    :=FormatFloat(',0.00',(aux));
  lbTotalNeto.Caption:=FormatFloat(',0.00',(aux2));

  Acumulado :=Aux;
  Acumulado2:=Aux2;

  aux :=0;
  aux2:=0;
  p:=CDSAnulados.GetBookmark;
  CDSAnulados.First;
  CDSAnulados.DisableControls;
  while Not(CDSAnulados.Eof) do
    begin
      aux := aux +RoundTo(CDSAnuladosTOTAL.AsFloat,-2);
      aux2:= aux2+RoundTo(CDSAnuladosNETOGRAV2.AsFloat,-2);
      CDSAnulados.Next;
    end;
  CDSAnulados.GotoBookmark(p);
  CDSAnulados.EnableControls;
  CDSAnulados.FreeBookmark(p);

  lbTotalAnulado.Caption:=FormatFloat(',0.00',(aux));

  Cantidad:=(CDSCpbteEmitidos.RecordCount)-(CDSAnulados.RecordCount);

  if Cantidad>0 then
    Acumulado:=RoundTo(((Acumulado-Aux)/Cantidad),-3)
  else
    Acumulado:=0;

  if Cantidad>0 then
    Acumulado2:=RoundTo(((Acumulado2-Aux2)/Cantidad),-3)
  else
    Acumulado2:=0;

  lbPromedio.Caption    :=FormatFloat(',0.000',(Acumulado));
  lbPromedioNeto.Caption:=FormatFloat(',0.000',(Acumulado2));
end;

end.
