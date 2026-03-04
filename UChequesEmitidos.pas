unit UChequesEmitidos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, Grids, DBGrids, ComCtrls,Librerias, ExtCtrls,
  Menus, ActnList, DBCtrls,   ToolWin, frxClass,Winapi.ActiveX,System.Win.ComObj,
  Buttons, DBClient, Provider,Variants, frxDBSet, JvExControls, JvDBLookup,
  FMTBcd, SqlExpr, frxExportPDF, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvScrollBox, AdvUtil, AdvObj,
  BaseGrid, AdvGrid, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series,
  VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, frxExportBaseDialog,
  JvExExtCtrls, JvExtComponent, JvPanel, tmsAdvGridExcel, asgprev, asgprint,
  frCoreClasses, VCL.TMSFNCTypes,
  VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, VCL.TMSFNCCustomControl, VCL.TMSFNCDataGrid;

type
  TFormChequesEmitidos = class(TForm)
    ActionList1: TActionList;
    Listado: TAction;
    DSCtasBancarias: TDataSource;
    pcEmisiones: TPageControl;
    pgDetalles: TTabSheet;
    pgMovimientos: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label11: TLabel;
    dbgChe3: TDBGrid;
    dbgDepositados: TDBGrid;
    dbgCheques: TDBGrid;
    Label3: TLabel;
    dbgTransEmit: TDBGrid;
    frxReport: TfrxReport;
    frCol: TfrxUserDataset;
    frRow: TfrxUserDataset;
    pgEstadoSaldos: TTabSheet;
    dbgMovBco: TDBGrid;
    DSMovimientosBco: TDataSource;
    MovimientosBco: TAction;
    pgDebitados: TTabSheet;
    DSChequesDebitados: TDataSource;
    DSChequesNoDeb: TDataSource;
    CheDebitados: TAction;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    DSChequesEmitidos: TDataSource;
    DSTotalCheEmitidos: TDataSource;
    ListaCheEmitidos: TAction;
    frDBTotalCheEmitidos: TfrxDBDataset;
    frDBCheEmitidos: TfrxDBDataset;
    BitBtn1: TBitBtn;
    frxReport1: TfrxReport;
    BitBtn2: TBitBtn;
    DSTransferEmitidas: TDataSource;
    DSDepositos: TDataSource;
    DSChe3: TDataSource;
    DSCheques: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    DSVencimientos: TDataSource;
    StatusBar1: TStatusBar;
    QCheEmitidos: TFDQuery;
    QChequesNoDeb: TFDQuery;
    QChequesDebitados: TFDQuery;
    QCtasBancarias: TFDQuery;
    QCheques: TFDQuery;
    QVencimientos: TFDQuery;
    QMovimientosBco: TFDQuery;
    QMovimientosBcoDEBE: TFloatField;
    QMovimientosBcoHABER: TFloatField;
    QMovimientosBcoDETALLE: TStringField;
    QMovimientosBcoSALDO: TFloatField;
    QMovimientosBcoID_CTA_BCO: TIntegerField;
    QVencimientosSUM: TFloatField;
    QTransferEmitidas: TFDQuery;
    QDepositos: TFDQuery;
    QChe3: TFDQuery;
    QChe3SUM: TFloatField;
    QDepositosSUM: TFloatField;
    QTransferEmitidasSUM: TFloatField;
    QChequesDebitadosSUM: TFloatField;
    QChequesNoDebSUM: TFloatField;
    QTotalCheEmitidos: TFDQuery;
    QTransferRec: TFDQuery;
    QTotalCheEmitidosSUM: TFloatField;
    QTransferRecSUM: TFloatField;
    QChequesSUM: TFloatField;
    QSaldoAnterior: TFDQuery;
    QSaldoAnteriorSUMA: TFloatField;
    QMovTc: TFDQuery;
    DBGrid1: TDBGrid;
    DSMocTc: TDataSource;
    QMovTcSUM: TFloatField;
    pagDetalle: TTabSheet;
    sgCuadro: TAdvStringGrid;
    btNuevoDetalle: TButton;
    JvFormStorage: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    QMovimientosBcoFECHA_INGR: TSQLTimeStampField;
    QMovimientosBcoFECHA_COBRO: TSQLTimeStampField;
    QVencimientosFECHA_SH: TSQLTimeStampField;
    QChequesFECHA_COBRO: TSQLTimeStampField;
    QChe3FECHA_COBRO: TSQLTimeStampField;
    QDepositosFECHA: TSQLTimeStampField;
    QTransferEmitidasFECHA: TSQLTimeStampField;
    QChequesDebitadosFECHA_COBRO: TSQLTimeStampField;
    QTransferRecFECHA: TSQLTimeStampField;
    QMovTcFECHAACREDITACION_PROBABLE: TSQLTimeStampField;
    QTotalCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    QChequesNoDebFECHA_COBRO: TSQLTimeStampField;
    QCheEmitidosFECHA_EMISION: TSQLTimeStampField;
    QCheEmitidosFECHA_COBRO: TSQLTimeStampField;
    QCheEmitidosNUMERO: TIntegerField;
    QCheEmitidosORDEN_DE: TStringField;
    QCheEmitidosIMPORTE: TFloatField;
    QCheEmitidosMUESTRABANCO: TStringField;
    QCheEmitidosDEBITADO: TStringField;
    QCtasBancariasID_CUENTA: TIntegerField;
    QCtasBancariasNOMBRE: TStringField;
    QCtasBancariasNRO_CUENTA: TStringField;
    TabSheet1: TTabSheet;
    DBChart1: TDBChart;
    QChe3DIA: TSmallintField;
    QChequesDIA: TSmallintField;
    Series2: TBarSeries;
    Series1: TBarSeries;
    Button2: TButton;
    Button3: TButton;
    CheckBox1: TCheckBox;
    Label16: TLabel;
    QChe_x_Dia: TFDQuery;
    pnCheEmitidos: TJvPanel;
    DSChe_x_Dia: TDataSource;
    QChe_x_DiaNOMBRE: TStringField;
    QChe_x_DiaNUMERO: TIntegerField;
    QChe_x_DiaIMPORTE: TFloatField;
    Button4: TButton;
    lbPosicion: TLabel;
    FDQuery1: TFDQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    QChe_x_DiaORDEN_DE: TStringField;
    Exportar1: TAction;
    Exportar2: TAction;
    PopupMenu1: TPopupMenu;
    ExportarXLS11: TMenuItem;
    ExportarXLS21: TMenuItem;
    SaveDialog1: TSaveDialog;
    sgDebitados: TAdvStringGrid;
    Panel1: TPanel;
    Label12: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edAnio: TEdit;
    udAnio: TUpDown;
    lbMeses: TListBox;
    btImprimir: TBitBtn;
    rxcCuentas: TJvDBLookupCombo;
    Button1: TButton;
    Label17: TLabel;
    AdvScrollBox1: TAdvScrollBox;
    sgMes: TAdvStringGrid;
    AdvPreviewDialog: TAdvPreviewDialog;
    Series3: TBarSeries;
    Series4: TBarSeries;
    AdvGridExcelIO1: TAdvGridExcelIO;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    procedure FormCreate(Sender: TObject);
    procedure lbMesesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgChequesDblClick(Sender: TObject);
    procedure dbgChe3DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgDepositadosDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ListadoExecute(Sender: TObject);
    procedure rxcCuentasChange(Sender: TObject);
    procedure pcEmisionesChange(Sender: TObject);
    procedure frxReportGetValue(const ParName: String;
      var ParValue: Variant);
//    procedure sgMesDrawCell(Sender: TObject; ACol, ARow: Integer;
//      Rect: TRect; State: TGridDrawState);
    procedure Button2Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure Label7DblClick(Sender: TObject);
    procedure rxcCuentasClick(Sender: TObject);
    procedure MovimientosBcoExecute(Sender: TObject);
    procedure sgDebitadosDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure sgDebitadosGetEditText(Sender: TObject; ACol, ARow: Integer;
      var Value: string);
    procedure Label1DblClick(Sender: TObject);
    procedure ListaCheEmitidosExecute(Sender: TObject);
    procedure frxReport1GetValue(const VarName: string; var Value: Variant);
    procedure BitBtn2Click(Sender: TObject);
    procedure Label13DblClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure StatusBar1DblClick(Sender: TObject);
    procedure QTotalCheEmitidosAfterScroll(DataSet: TDataSet);
    procedure btNuevoDetalleClick(Sender: TObject);
    procedure ScrollBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure DBChart1ClickSeries(Sender: TCustomChart; Series: TChartSeries;
      ValueIndex: Integer; Button: TMouseButton; Shift: TShiftState; X,
      Y: Integer);
    procedure Button4Click(Sender: TObject);
    procedure DBChart1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnCheEmitidosResize(Sender: TObject);
    procedure Exportar1Execute(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure TMSFNCDataGrid1GetCellLayout(Sender: TObject;
      ACell: TTMSFNCDataGridCell);
//    procedure sgMesDrawCell(Sender: TObject; ACol, ARow: Integer;
//      Rect: TRect; State: TGridDrawState);
  private
    { Private declarations }
  public
   // PrDefault_:Integer;
    Contador,Contador2,DiasDeMes:Byte;
    M,D,A,Ds,Ds2:Word;
    TotalCheques,TotalChe3,TotalDepositado,TotalTxRec,TotalTxEmi,TotalVencimientos,TotalTc:Real;
    TotalDebitado,TotalSinDebitar:Real;
     { Public declarations }
    procedure ExportaExcel(pStringGrid : TstringGrid; c0,r0,c1,r1 : Integer);
    procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word; const AValue: string);
    function SaveAsExcelFile(AGrid: TStringGrid; AFileName: string): Boolean;
    procedure LlenarGrilla;
  end;
type
  Renglones =array [0..7] of string;

  var
    cuadro:array [0..7,0..5] of renglones;


const
  DSemana:array [0..7] of string=('Domingo','Lunes','Martes','Miercoles','Jueves','Viernes','Sabado','Totales');

var
  FormChequesEmitidos: TFormChequesEmitidos;

implementation

uses UMuestraCheEmitidos, UMuestraChe3, UMuestraDepositos,
UDMain_FD;

{$R *.DFM}
{$R-}
///////////////////////////////////////////////////////////////////////////////
procedure XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word;
  const AValue: string);
var
  L: Word;
const
  {$J+}
  CXlsLabel: array[0..5] of Word = ($204, 0, 0, 0, 0, 0);
  {$J-}
begin
  L := Length(AValue);
  CXlsLabel[1] := 8 + L;
  CXlsLabel[2] := ARow;
  CXlsLabel[3] := ACol;
  CXlsLabel[5] := L;
  XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
  XlsStream.WriteBuffer(Pointer(AValue)^, L);
end;


function  SaveAsExcelFile(AGrid: TStringGrid; AFileName: string): Boolean;
const
  {$J+} CXlsBof: array[0..5] of Word = ($809, 8, 00, $10, 0, 0); {$J-}
  CXlsEof: array[0..1] of Word = ($0A, 00);
var
  FStream: TFileStream;
  I, J: Integer;
begin
  FStream := TFileStream.Create(PChar(AFileName), fmCreate or fmOpenWrite);
  try
    CXlsBof[4] := 0;
    FStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
    for i := 0 to AGrid.ColCount - 1 do
      for j := 0 to AGrid.RowCount - 1 do
        XlsWriteCellLabel(FStream, I, J, AGrid.cells[i, j]);
    FStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
    Result := True;
  finally
    FStream.Free;
  end;
end;
///////////////////////////////////////////////////////////////////////////////


procedure  TFormChequesEmitidos.XlsWriteCellLabel(XlsStream: TStream; const ACol, ARow: Word; const AValue: string);
var
  L: Word;
const
  {$J+}
  CXlsLabel: array[0..15] of Word = ($204, 0, 0, 0, 0, 0,0,0,0,0,0,0,0,0,0,0);
  {$J-}
begin
  L := Length(AValue);
  CXlsLabel[1] := 8 + L;
  CXlsLabel[2] := ARow;
  CXlsLabel[3] := ACol;
  CXlsLabel[5] := L;
  XlsStream.WriteBuffer(CXlsLabel, SizeOf(CXlsLabel));
  XlsStream.WriteBuffer(Pointer(AValue)^, L);
end;
 
 
function  TFormChequesEmitidos.SaveAsExcelFile(AGrid: TStringGrid; AFileName: string): Boolean;
const
  {$J+} CXlsBof: array[0..15] of Word = ($809, 8, 00, $10, 0, 0,0,0,0,0,0,0,0,0,0,0); {$J-}
  CXlsEof: array[0..1] of Word = ($0A, 00);
var
  FStream: TFileStream;
  I, J: Integer;
begin
  FStream := TFileStream.Create(PChar(AFileName), fmCreate or fmOpenWrite);
  try
    CXlsBof[4] := 0;
    FStream.WriteBuffer(CXlsBof, SizeOf(CXlsBof));
    for i := 0 to AGrid.ColCount - 1 do
      for j := 0 to AGrid.RowCount - 1 do
        XlsWriteCellLabel(FStream, I, J, AGrid.cells[i, j]);
    FStream.WriteBuffer(CXlsEof, SizeOf(CXlsEof));
    Result := True;
  finally
    FStream.Free;
  end;
end;

procedure TFormChequesEmitidos.FormCreate(Sender: TObject);
begin
  // Tomo la Impresora por defecto.
  AutoSize := False;
  Contador := 0;
  Contador2:= 0;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pgEstadoSaldos.TabVisible:=False;
  DecodeDate(Date,A,M,D);
  DiasdeMes:=DaysInMonth(A,M);
  pcEmisiones.ActivePageIndex:=0;
  Ds             := DayOfWeek(EncodeDate(A,M,1));
  Ds2            := DayOfWeek(EncodeDate(A,M,1));
  top            := 0;
  Left           := 0;
  udAnio.Position:= A;
//  PrimerDia:=EncoDate( IntToStr(M)+'/01/'+IntToStr(A);
//  UltimoDia:=IntToStr(M)+'/'+IntToStr(DiasdeMes)+'/'+IntToStr(A);
  QCheques.Close;
  QCheques.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QCheques.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QCheques.ParamByName('ID').Value:=rxcCuentas.KeyValue;
  QCheques.Open;
  QCheques.First;

  QChequesDebitados.Close;
  QChequesDebitados.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QChequesDebitados.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QChequesDebitados.ParamByName('id').Value:=rxcCuentas.KeyValue;
  QChequesDebitados.Open;
  QChequesDebitados.First;

  QChequesNoDeb.Close;
  QChequesNoDeb.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QChequesNoDeb.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QChequesNoDeb.ParamByName('id').Value:=rxcCuentas.KeyValue;
  QChequesNoDeb.Open;
  QChequesNoDeb.First;

  QChe3.Close;
  QChe3.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QChe3.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QChe3.Open;
  QChe3.First;

  QVencimientos.Close;
  QVencimientos.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QVencimientos.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QVencimientos.Open;
  QVencimientos.First;

  QDepositos.Close;
  QDepositos.ParamByName('Desde').AsDate:=EncodeDate(a,m,1);
  QDepositos.ParamByName('Hasta').AsDate:=EncodeDate(a,m,DiasDeMes);
  QDepositos.ParamByName('id').Value:=rxcCuentas.KeyValue;
  QDepositos.Open;
  QDepositos.First;

  QTransferEmitidas.Close;
  QTransferEmitidas.ParamByName('Desde').AsDate := EncodeDate(a,m,1);
  QTransferEmitidas.ParamByName('Hasta').AsDate := EncodeDate(a,m,DiasDeMes);
  QTransferEmitidas.ParamByName('id').Value     := rxcCuentas.KeyValue;
  QTransferEmitidas.Open;
  QTransferEmitidas.First;

  QMovTc.Close;
  QMovTc.ParamByName('id_tarjeta').Value   := -1;
  QMovTc.ParamByName('Acred').AsString     := '*';
  QMovTc.ParamByName('desde').AsDate       := EncodeDate(a,m,1);
  QMovTc.ParamByName('hasta').AsDate       := EncodeDate(a,m,DiasDeMes);
  QMovTc.ParamByName('vta_acred').AsString := 'P';
  QMovTc.ParamByName('Lote').AsString      := '00000';
  QMovTc.ParamByName('Terminal').AsString  := '00000000';
  QMovTc.Open;
  QMovTc.First;

  TotalCheques    := 0; TotalChe3        := 0;
  TotalDepositado := 0; TotalTxRec       := 0;
  TotalTxEmi      := 0; TotalDebitado    := 0;
  TotalSinDebitar := 0; TotalVencimientos:= 0;
  TotalTc         := 0;

  QCtasBancarias.Open;

  lbMeses.ItemIndex:=M-1;
end;

procedure TFormChequesEmitidos.lbMesesClick(Sender: TObject);
begin
  DiasdeMes := DaysInMonth(StrToInt(edAnio.Text),(lbMeses.ItemIndex+1));
  Ds        := DayOfWeek(EncodeDate(StrToInt(edAnio.Text),(lbMeses.ItemIndex+1),1));
  Ds2       := DayOfWeek(EncodeDate(StrToInt(edAnio.Text),(lbMeses.ItemIndex+1),1));

  QCheques.Close;
  QCheques.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QCheques.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QCheques.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.keyValue);
  QCheques.Open;

  QChequesDebitados.Close;
  QChequesDebitados.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QChequesDebitados.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QChequesDebitados.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.keyValue);
  QChequesDebitados.Open;

  QChequesNoDeb.Close;
  QChequesNoDeb.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QChequesNoDeb.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QChequesNoDeb.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.keyValue);
  QChequesNoDeb.Open;

  QDepositos.Close;
  QDepositos.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.KeyValue);
  QDepositos.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QDepositos.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QDepositos.Open;

  QTransferEmitidas.Close;
  QTransferEmitidas.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.KeyValue);
  QTransferEmitidas.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QTransferEmitidas.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QTransferEmitidas.Open;

  QTransferRec.Close;
  QTransferRec.ParamByName('id').AsInteger:=StrToInt(rxcCuentas.KeyValue);
  QTransferRec.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QTransferRec.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QTransferRec.Open;

  QChe3.Close;
  QChe3.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QChe3.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QChe3.Open;

  QVencimientos.Close;
  QVencimientos.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QVencimientos.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QVencimientos.Open;

  QMovTc.Close;
  QMovTc.ParamByName('id_tarjeta').Value    := -1;
  QMovTc.ParamByName('Acred').AsString      := '*';
  QMovTc.ParamByName('desde').AsDate        := EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QMovTc.ParamByName('hasta').AsDate        := EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QMovTc.ParamByName('vta_acred').AsString  := 'P';
  QMovTc.ParamByName('Lote').AsString       := '00000';
  QMovTc.ParamByName('Terminal').AsString   := '00000000';
  QMovTc.Open;


  QCheques.First;
  QChequesDebitados.First;
  QChequesNoDeb.First;
  QDepositos.First;
  QTransferEmitidas.First;
  QTransferRec.First;
  QChe3.First;
  QVencimientos.First;
  QMovTc.First;

  QMovTc.EnableControls;

  TotalCheques      := 0;
  TotalChe3         := 0;
  TotalDepositado   := 0;
  TotalTxRec        := 0;
  TotalTxEmi        := 0;
  TotalDebitado     := 0;
  TotalSinDebitar   := 0;
  TotalVencimientos := 0;
  TotalTc           := 0;

  Contador          := 0;
  Contador2         := 0;

  LlenarGrilla;

  QCheques.First;
  sgDebitados.Repaint;

  MovimientosBco.Execute;
end;

procedure TFormChequesEmitidos.FormShow(Sender: TObject);
begin
  lbMeses.SetFocus;
end;

procedure TFormChequesEmitidos.dbgChequesDblClick(Sender: TObject);
begin
  IF Not(Assigned(FormMuestraCheEmitidos)) Then
    FormMuestraCheEmitidos:=TFormMuestraCheEmitidos.Create(Self);
  FormMuestraCheEmitidos.Fecha:=QChequesFECHA_COBRO.AsDateTime;
  FormMuestraCheEmitidos.ShowModal;
  FormChequesEmitidos.lbMeses.OnClick(sender);
{  TotalCheques:=0;
  TotalChe3:=0;
  Contador:=0;
  sgMes.Repaint;
  LMes.Caption  :=lbMeses.Items.Strings[lbMeses.ItemIndex];
  lAnio.Caption :=edAnio.Text;
 }
end;

procedure TFormChequesEmitidos.dbgChe3DblClick(Sender: TObject);
begin
  IF Not(Assigned(FormMuestraChe3)) Then
    FormMuestraChe3:=TFormMuestraChe3.Create(Self);
  FormMuestraChe3.Fecha:=QChe3FECHA_COBRO.AsDateTime;
  FormMuestraChe3.ShowModal;
  FormChequesEmitidos.lbMeses.OnClick(sender);

end;

procedure TFormChequesEmitidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QCheques.Close;
  QChe3.Close;
  QChequesDebitados.Close;
  QChequesNoDeb.Close;
  QCtasBancarias.Close;
  QMovimientosBco.Close;
  QSaldoAnterior.CLose;
  QMovTc.Close;
  If (Assigned(FormMuestraDepositos)) Then
    FormMuestraDepositos.Close;
  Action:=caFree;
end;

procedure TFormChequesEmitidos.FormDestroy(Sender: TObject);
begin
  FormChequesEmitidos:=nil;
end;

procedure TFormChequesEmitidos.dbgDepositadosDblClick(Sender: TObject);
begin
  IF Not(Assigned(FormMuestraDepositos)) Then
    FormMuestraDepositos:=TFormMuestraDepositos.Create(Self);
  FormMuestraDepositos.Fecha:=QDepositosFECHA.AsDateTime;
  FormMuestraDepositos.Show;
 // FormChequesEmitidos.lbMeses.OnClick(sender);

end;

procedure TFormChequesEmitidos.ExportaExcel(pStringGrid: TstringGrid; c0, r0,
  c1, r1: Integer);
var ExLin, ExCol, i, Linea, AuxInteger : Integer;
  AuxFloat : Extended;
  AuxFecha : tDatetime;
  c : TCursor;
Excel, ExcelDoc, WS : Variant;
  begin
    c := Screen.Cursor;
    Screen.Cursor := crHourGlass;
    with pStringGrid do
      begin
        try
          coinitialize(nil);
          Excel := CreateOleObject('Excel.Application');
          ExcelDoc := Excel.Workbooks.Add;
          WS := ExcelDoc.ActiveSheet;
          Excel.Visible := true;
          ExCol := 0;
          for i := c0 to c1 do
            begin
              inc(ExCol);
              ws.Cells.Item[1, ExCol]:= cells[i, 0];
            end;

          for linea := r0 to r1 do
            begin
              inc(ExLin);
              ExCol := 0;
              for i := c0 to c1 do
                begin
                  inc(ExCol);
                  if TryStrToInt(sgMes.Cells[i, linea-1], AuxInteger) then
                    ws.Cells.Item[ExLin, ExCol] := AuxInteger
                  else
                    if TryStrToFloat(sgMes.Cells[i, linea-1],AuxFloat) then
                      ws.Cells.Item[ExLin, ExCol]:= AuxFloat
                    else
                      ws.Cells.Item[ExLin, ExCol]:= sgMes.Cells[i,linea-1];
                   //showmessage(ws.Cells.Item[ExLin, ExCol]);
                end;
            end;
          ws.cells.entirecolumn.autofit;
        finally
          screen.Cursor := c;
        end;

     end;//del with
end;

procedure TFormChequesEmitidos.Exportar1Execute(Sender: TObject);
begin
  if SaveDialog1.Execute then
    if SaveDialog1.FileName<>'' then
      //SaveAsExcelFile(sgMes,SaveDialog1.FileName);
    //  begin
   //     sgMes.SaveToXLS(SaveDialog1.FileName+'.xls');
   //     sgMes.SaveToCSV(SaveDialog1.FileName+'.csv');
    //    sgMes.SaveToDOC(SaveDialog1.FileName+'.doc');
    //  end;
  //AdvGridExcelIO1.XLSExport(SaveDialog1.FileName);
  begin
//  sgMes.Multilinecells := true;
//  sgMes.Cells[1,1] := 'line1'+#13#10+'line2'+#13#10+'line3'+#13#10+'line4'+#13#10+'line5'+#13#10+'line6'+#13#10+'line7'+#13#10;

  AdvGridExcelIO1.XLSExport(SaveDialog1.FileName+'.xls')
  end;
end;

procedure TFormChequesEmitidos.FormActivate(Sender: TObject);
begin
  if FormChequesEmitidos<>nil Then
    FormChequesEmitidos.lbMeses.OnClick(sender);
end;

procedure TFormChequesEmitidos.ListaCheEmitidosExecute(Sender: TObject);
begin
  QTotalCheEmitidos.Close;
  QTotalCheEmitidos.ParamByName('Desde').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
  QTotalCheEmitidos.ParamByName('Hasta').AsDate:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
  QTotalCheEmitidos.ParamByName('id').AsInteger:=rxcCuentas.keyValue;
  QTotalCheEmitidos.Open;


  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCheEmitidos.fr3');
  frxReport.Variables['Mes']:=''''+ lbMeses.Items[lbMeses.ItemIndex]+'''';
  frxReport.Variables['Anio']:=''''+ edAnio.Text+'''';
  frxReport.ShowReport;
end;

procedure TFormChequesEmitidos.ListadoExecute(Sender: TObject);
begin
  ShowMessage('En preparación');
end;

procedure TFormChequesEmitidos.LlenarGrilla;
var
  col  : Integer;
  Row  : Integer;
  FirstDay:integer;
  Mes,Dia,Anio:Word;
  Cadena:String;
  Total:Extended;
  Fin:Boolean;
begin
  TotalCheques      := 0;
  TotalChe3         := 0;
  TotalDepositado   := 0;
  TotalTxRec        := 0;
  TotalTxEmi        := 0;
  TotalDebitado     := 0;
  TotalSinDebitar   := 0;
  TotalVencimientos := 0;
  TotalTc           := 0;

  Contador          := 0;
  Contador2         := 0;

  sgMes.ClearAll;
  sgMes.Multilinecells:=True;

  sgMes.MergeColumnCells(0,true);

  //Pongo los dias de semana
  for Col := 1 to sgMes.ColCount - 1 do
    begin
      if (col=1) or (Col=7) then
        sgMes.Cells[col,0]  := '<P align="center" <BODY bgcolor="clGreen"> <FONT face="Arial" size="12" color="clWhite"><B>'+dsemana[Col-1]+'</B></FONT></P>'
      else
        if (col=8) then
          sgMes.Cells[col,0]  := '<P align="center" <BODY bgcolor="clBlackGreen"> <FONT face="Arial" size="12" color="clWhite"><B>'+dsemana[Col-1]+'</B></FONT></P>'
        else
          sgMes.Cells[col,0]  := '<P align="center" <BODY bgcolor="clBlue"> <FONT face="Arial" size="12" color="clWhite"><B>'+dsemana[Col-1]+'</B></FONT></P>';
     end;
  //pinto todas las celdas de Verde
  for Row := 1 to sgMes.RowCount-1 do
    for Col := 1 to 6 do
      sgMes.Colors[Col,Row]  :=clMoneyGreen;

  FirstDay:=ds-1;
  for Row := 1 to sgMes.RowCount-1 do
    begin
      for Col := (1+FirstDay) to 8 do
        begin
          if (Col<=7) and (Contador<DiasDeMes)  Then
            begin
              Inc(Contador);
              sgMes.Cells[col,Row]  := '<P align="left" </P> <FONT face="Arial" size="10" color="clBlack"><B>'+IntToStr(Contador)+'</B></FONT>';
              sgMes.Colors[Col,Row]  :=clNone;
            end;
          if (col=7) then
            BEGIN
              sgMes.Colors[col,row]  :=clInfoBk;
              sgMes.Colors[col+1,row]:=clAqua;
            END;

          //Titulos
          if row=1 then
            sgMes.Cells[0,Row]:= '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+''+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Cheques '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Che.de 3º '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Depositos '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Tx.Enviadas '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Tx.Recibida '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'Vencimientos '+'</FONT>'+ #13#10+
                                 '<P align="right" </P> <FONT face="Arial" size="9" color="clWhite">'+'T.Credito '+'</FONT>';


        end;
      FirstDay:=0;
    end;
  sgMes.Colors[0,1]  :=clHighlight;


  Contador:=0;
  FirstDay:=Ds-1;

  for Row := 1 to sgMes.RowCount do
    begin
      for Col := (1+FirstDay) to 7 do
        begin
          Inc(Contador);
          //cheques propios
          if QCheques.Fields[0].AsString<>'' Then
            begin
           //   DecodeDate(QCheques.Fields[0].AsDateTime,Anio,Mes,Dia);
              If QChequesDIA.Value=Contador Then
                begin
                  sgMes.Cells[col,Row] := sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlue">'+FormatFloat(',0.00;-,0.00;-',QCheques.Fields[1].AsFloat)+'</FONT>';
                  TotalCheques         := TotalCheques + QCheques.Fields[1].AsFloat;
                  cuadro[Col][Row][1]  := FormatFloat(',0.00;-,0.00;-',QCheques.Fields[1].AsFloat);
                  if Not(QCheques.Eof) Then QCheques.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlue">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlue">'+'-'+'</FONT>';

          //cheques de Tercero
          if QChe3.Fields[0].AsString<>'' Then
            begin
      //        DecodeDate(QChe3.Fields[0].AsDateTime,Anio,Mes,Dia);
              If QChe3DIA.Value=Contador Then
                begin
                  sgMes.Cells[Col,Row]:=sgMes.Cells[Col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clGreen">'+FormatFloat(',0.00;-,0.00;-',QChe3.Fields[1].AsFloat)+'</FONT>';
                  TotalChe3 := TotalChe3 + QChe3.Fields[1].AsFloat;
                  cuadro[Col][Row][2]:=FormatFloat(',0.00;-,0.00;-',QChe3.Fields[1].AsFloat);
                  if Not(QChe3.Eof) Then QChe3.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clGreen">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clGreen">'+'-'+'</FONT>';

          //cheques Depositados
          if QDepositos.Fields[0].AsString<>'' Then
            begin
              DecodeDate(QDepositos.Fields[0].AsDateTime,Anio,Mes,Dia);
              If Dia=Contador Then
                begin
                  sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clFuchsia">'+FormatFloat(',0.00;-,0.00;-',QDepositos.Fields[1].AsFloat)+'</FONT>';
                  TotalDepositado := TotalDepositado + QDepositos.Fields[1].AsFloat;
                  cuadro[Col][Row][3]:=FormatFloat(',0.00;-,0.00;-',QDepositos.Fields[1].AsFloat);
                  if Not(QDepositos.Eof) Then QDepositos.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clFuchsia">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clFuchsia">'+'-'+'</FONT>';

          //Transfer emitidas
          if QTransferEmitidas.Fields[0].AsString<>'' Then
            begin
              DecodeDate(QTransferEmitidas.Fields[0].AsDateTime,Anio,Mes,Dia);
              If Dia=Contador Then
                begin
                  sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clPurple">'+FormatFloat(',0.00;-,0.00;-',QTransferEmitidas.Fields[1].AsFloat)+'</FONT>';
                  TotalTxEmi := TotalTxEmi + QTransferEmitidas.Fields[1].AsFloat;
                  cuadro[Col][Row][4]:=FormatFloat(',0.00;-,0.00;-',QTransferEmitidas.Fields[1].AsFloat);
                  if Not(QTransferEmitidas.Eof) Then  QTransferEmitidas.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clPurple">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clPurple">'+'-'+'</FONT>';

          //Transfer Recibidas
          if QTransferRec.Fields[0].AsString<>'' Then
            begin
              DecodeDate(QTransferRec.Fields[0].AsDateTime,Anio,Mes,Dia);
              If Dia=Contador Then
                begin
                  sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clRed">'+FormatFloat(',0.00;-,0.00;-',QTransferRec.Fields[1].AsFloat)+'</FONT>';
                  TotalTxRec:=TotalTxRec+QTransferRec.Fields[1].AsFloat;
                  cuadro[Col][Row][5]:=FormatFloat(',0.00;-,0.00;-',QTransferRec.Fields[1].AsFloat);
                  if Not(QTransferRec.Eof) Then QTransferRec.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clRed">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clRed">'+'-'+'</FONT>';

          //Vencimientos
          if QVencimientos.Fields[0].AsString<>'' Then
            begin
              DecodeDate(QVencimientos.Fields[0].AsDateTime,Anio,Mes,Dia);
              If Dia=Contador Then
                begin
                  sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clMaroon">'+FormatFloat(',0.00;-,0.00;-',QVencimientos.Fields[1].AsFloat)+'</FONT>';
                  TotalVencimientos := TotalVencimientos + QVencimientos.Fields[1].AsFloat;
                  cuadro[Col][Row][6]:=FormatFloat(',0.00;-,0.00;-',QVencimientos.Fields[1].AsFloat);
                  if Not(QVencimientos.Eof) Then QVencimientos.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clMaroon">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clMaroon">'+'-'+'</FONT>';

          //Tarjetas de Credito
          if (QMovTc.Fields[0].AsString<>'')  Then
            begin
              DecodeDate(QMovTc.Fields[0].AsDateTime,Anio,Mes,Dia);
              If Dia=Contador Then
                begin
                  sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlack">'+FormatFloat(',0.00;-,0.00;-',QMovTc.Fields[1].AsFloat)+'</FONT>';
                  TotalTc := TotalTc + QMovTc.Fields[1].AsFloat;
                  cuadro[Col][Row][7]:=FormatFloat(',0.00;-,0.00;-',QMovTc.Fields[1].AsFloat);
                  if Not(QMovTc.Eof) Then QMovTc.Next;
                end
              else
                sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlack">'+'-'+'</FONT>';
            end
          else
            sgMes.Cells[col,Row]:=sgMes.Cells[col,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlack">'+'-'+'</FONT>';

          FirstDay:=0;
        end;

      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clBlue">'+FormatFloat(',0.00;-,0.00;-',TotalCheques)+'</FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clGreen">'+FormatFloat(',0.00;-,0.00;-',TotalChe3)+'</FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clFuchsia">'+FormatFloat(',0.00;-,0.00;-',TotalDepositado)+'</B></FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clPurple">'+FormatFloat(',0.00;-,0.00;-',TotalTxEmi)+'</FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clRed">'+FormatFloat(',0.00;-,0.00;-',TotalTxRec)+'</FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clMaroon">'+FormatFloat(',0.00;-,0.00;-',TotalVencimientos)+'</B></FONT>';
      sgMes.Cells[8,Row]:=sgMes.Cells[8,Row]+ #13#10+ '<P align="right" </P> <FONT face="Arial" size="9" color="clTeal">'+FormatFloat(',0.00;-,0.00;-',TotalTc)+'</FONT>';


      TotalCheques      := 0;
      TotalChe3         := 0;
      TotalDepositado   := 0;
      TotalTxEmi        := 0;
      TotalTxRec        := 0;
      TotalVencimientos := 0;
      TotalTc           := 0;
    end;



  QCheques.EnableControls;
  QChe3.EnableControls;
  QDepositos.EnableControls;
  QMovTc.EnableControls;

end;



procedure TFormChequesEmitidos.rxcCuentasChange(Sender: TObject);
begin
  if FormChequesEmitidos<>nil Then
    FormChequesEmitidos.lbMeses.OnClick(sender);
end;

procedure TFormChequesEmitidos.pcEmisionesChange(Sender: TObject);
begin
  IF (pcEmisiones.ActivePageIndex=0) or (pcEmisiones.ActivePageIndex=3) tHEN
    lbMeses.OnClick(Sender);
end;

procedure TFormChequesEmitidos.pnCheEmitidosResize(Sender: TObject);
begin
  if pnCheEmitidos<>nil then
    if pnCheEmitidos.Width<>510 then
      pnCheEmitidos.Width:=510;

end;

procedure TFormChequesEmitidos.QTotalCheEmitidosAfterScroll(DataSet: TDataSet);
begin
  QCheEmitidos.Close;
  QCheEmitidos.ParamByName('Fecha').AsDate := QTotalCheEmitidosFECHA_COBRO.AsDateTime;
  QCheEmitidos.ParamByName('id').Value     := rxcCuentas.KeyValue;
  QCheEmitidos.Open;
end;

procedure TFormChequesEmitidos.frxReport1GetValue(const VarName: string;
  var Value: Variant);
begin
    if AnsiCompareText(VarName, 'Cell') = 0 then
      Value := cuadro[frCol.RecNo][frRow.RecNo][0]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][1]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][2]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][3]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][4]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][5]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][6]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][7];
end;

procedure TFormChequesEmitidos.frxReportGetValue(const ParName: String;
  var ParValue: Variant);
begin
  begin
    if AnsiCompareText(ParName, 'Cell') = 0 then
      ParValue := cuadro[frCol.RecNo][frRow.RecNo][0]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][1]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][2]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][3]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][4]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][5]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][6]+#13+
      cuadro[frCol.RecNo][frRow.RecNo][7];


  end;
 //   m:=sgMes.Canvas.GetTex(rect.ri
//  sgMes.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+64,Cadena);

 end;

procedure TFormChequesEmitidos.StatusBar1DblClick(Sender: TObject);
begin
  frxReport.DesignReport();
end;

procedure TFormChequesEmitidos.TMSFNCDataGrid1GetCellFormatting(Sender: TObject;
  ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  ACanFormat:=True;
  if (ACell.Column>=3) and (ACell.Row>0) Then
    begin
      AFormatting.Format                := '#,##0.00';  // Format salary with commas and decimals
      AFormatting.&Type                 := gdftFloat;   // Set type to Float
      AConvertSettings.DecimalSeparator := '.';         // Use '.' as the decimal separator
      AConvertSettings.ThousandSeparator:= ',';
    end;
end;

procedure TFormChequesEmitidos.TMSFNCDataGrid1GetCellLayout(Sender: TObject;
  ACell: TTMSFNCDataGridCell);
begin
  if ACell.Column = 3 then
    ACell.Layout.TextAlign := gtaTrailing;
end;

procedure TFormChequesEmitidos.sgDebitadosDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
var  Mes,Dia,Anio:Word;
Cadena:String;
begin
 { Con el Canvas.TextWithd tengo el largo del texo en Pixels}
  QChequesDebitados.DisableControls;
  QChequesNoDeb.DisableControls;
  QCheques.DisableControls;

  sgDebitados.Canvas.Font.Style:=[];
  sgDebitados.Canvas.Font.Color:=clBlue;
  sgDebitados.Canvas.Font.Size:=8;

  cuadro[ACol][ARow][0]:='';
  cuadro[ACol][ARow][1]:='';
  cuadro[ACol][ARow][2]:='';
  cuadro[ACol][ARow][3]:='';
  cuadro[ACol][ARow][4]:='';
  cuadro[ACol][ARow][5]:='';

  if ((ACol=0) or (ACol=6)) and (ARow>=0) Then
    begin
      sgDebitados.Canvas.Brush.Color:=clAqua;
      sgDebitados.Canvas.FillRect(rect);
    end
  else
    if ((ACol=7) and (ARow>=0)) Then
      begin
        sgDebitados.Canvas.Brush.Color:=clBlue;
        sgDebitados.Canvas.FillRect(rect);
      end
    else
      if ((ACol>0) and (ACol<6)) and (ARow>=0) Then
        begin
          sgDebitados.Canvas.Brush.Color:=clWhite;
          sgDebitados.Canvas.FillRect(rect);
        end;
    if (ARow=0) Then
      begin
        begin
          sgDebitados.Canvas.Font.Color:=clBlack;
          sgDebitados.Canvas.Font.Style:=[fsBold];
          sgDebitados.Canvas.TextOut(Rect.Left,Rect.Top,dsemana[ACol]);
          sgDebitados.Canvas.Font.Color:=clRed;
          sgDebitados.Canvas.Font.Style:=[];
        end;

        if (ACol>=ds2-1) and (ACol<=6)  Then
          begin
            Inc(Contador2);
            sgDebitados.Canvas.Font.Color:=clRed;
            sgDebitados.Canvas.Font.Style:=[fsBold];
            sgDebitados.Canvas.TextOut(Rect.Right-10,Rect.Top,IntToStr(Contador2));
            sgDebitados.Canvas.Font.Style:=[];
            cuadro[ACol][ARow][0]:=IntToStr(Contador2);
          end;

        //cheques debitados
        if QChequesDebitados.Fields[0].AsString<>'' Then
          DecodeDate(QChequesDebitados.Fields[0].AsDateTime,Anio,Mes,Dia);
        If Dia=Contador2 Then
          begin
            sgDebitados.Canvas.Font.Color:=clBlue;
            sgDebitados.Canvas.Font.Style:=[];
            if QChequesDebitados.Fields[1].AsString<>'' then
              cadena:=FormatFloat(',0.00',QChequesDebitados.Fields[1].AsFloat)
            else
              cadena:='';
            if QChequesDebitados.Fields[1].AsString<>'' Then
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+12,Cadena);
            //Acumulo el Total
            TotalDebitado:=TotalDebitado+QChequesDebitados.Fields[1].AsFloat;
            if Not(QChequesDebitados.Eof) Then
              QChequesDebitados.Next;
            cuadro[ACol][ARow][1]:=Cadena;
          end;

        //cheques de No debitados
        if QChequesNoDeb.Fields[0].AsString<>'' Then
          DecodeDate(QChequesNoDeb.Fields[0].AsDateTime,Anio,Mes,Dia);
        If Dia=Contador2 Then
          begin
            sgDebitados.Canvas.Font.Color:=clGreen;
            sgDebitados.Canvas.Font.Style:=[];
            if QChequesNoDeb.Fields[1].AsString<>'' then
              Cadena:=FormatFloat(',0.00',QChequesNoDeb.Fields[1].AsFloat)
            else
              cadena:='';
            if QChequesNoDeb.Fields[1].AsString<>'' Then
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+25,Cadena);
            //Acumulo el Total
            TotalSinDebitar:=TotalSinDebitar+QChequesNoDeb.Fields[1].AsFloat;
            if Not(QChequesNoDeb.Eof) Then
              QChequesNoDeb.Next;
            cuadro[ACol][ARow][2]:=Cadena;
          end;

        //cheques propios
        if QCheques.Fields[0].AsString<>'' Then
          DecodeDate(QCheques.Fields[0].AsDateTime,Anio,Mes,Dia);
        If Dia=Contador2 Then
          begin
            sgDebitados.Canvas.Font.Color:=clBlack;
            sgDebitados.Canvas.Font.Style:=[fsBold];
            if QCheques.Fields[1].AsString<>'' then
              cadena:=FormatFloat(',0.00',QCheques.Fields[1].AsFloat)
            else
              cadena:='';
            if QCheques.Fields[1].AsString<>'' Then
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' ')-6,Rect.Top+51,Cadena);
            //Acumulo el Total
            TotalCheques := TotalCheques+QCheques.Fields[1].AsFloat;
            if Not(QCheques.Eof) Then
              QCheques.Next;
            cuadro[ACol][ARow][4]:=Cadena;
          end;
      end
    else
      if (ARow>0) and (ACol<=6) Then
        begin
          inc(Contador2);
          sgDebitados.Canvas.Font.Color:=clRed;
          sgDebitados.Canvas.Font.Style:=[fsBold];
          if Contador2<=DiasDeMes Then
            begin
              sgDebitados.Canvas.TextOut(Rect.Right-13,Rect.Top,IntToStr(Contador2));
              cuadro[ACol][ARow][0]:=IntToStr(Contador2);
            end;
          sgDebitados.Canvas.Font.Style:=[];

          //CHeques Debitadoss
          if QChequesDebitados.Fields[0].AsString<>'' Then
            DecodeDate(QChequesDebitados.Fields[0].AsDateTime,Anio,Mes,Dia);
          If Dia=Contador2 Then
            begin
              sgDebitados.Canvas.Font.Color:=clBlue;
              sgDebitados.Canvas.Font.Style:=[];
              if QChequesDebitados.Fields[1].AsString<>'' then
                Cadena:=FormatFloat(',0.00',QChequesDebitados.Fields[1].AsFloat)
              else
                cadena:='';
              if QChequesDebitados.Fields[1].AsString<>'' Then
                sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+12,Cadena);
              //Acumulo el Total
              TotalDebitado := TotalDebitado + QChequesDebitados.Fields[1].AsFloat;
              if Not(QChequesDebitados.Eof) Then
                QChequesDebitados.Next;
              cuadro[ACol][ARow][1]:=Cadena;
            end;

          //cheques No debitados
          if QChequesNoDeb.Fields[0].AsString<>'' Then
            DecodeDate(QChequesNoDeb.Fields[0].AsDateTime,Anio,Mes,Dia);
          If Dia=Contador2 Then
            begin
              sgDebitados.Canvas.Font.Color:=clGreen;
              sgDebitados.Canvas.Font.Style:=[];
              if QChequesNoDeb.Fields[1].AsString<>'' then
                Cadena:=FormatFloat(',0.00',QChequesNoDeb.Fields[1].AsFloat)
              else
                cadena:='';
              if QChequesNoDeb.Fields[1].AsString<>'' Then
                sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+25,Cadena);
              //Acumulo el Total
              TotalSinDebitar := TotalSinDebitar+QChequesNoDeb.Fields[1].AsFloat;
              if Not(QChequesNoDeb.Eof) Then
                QChequesNoDeb.Next;
              cuadro[ACol][ARow][2]:=Cadena;
            end;

          //Cheques propios
          if QCheques.Fields[0].AsString<>'' Then
            DecodeDate(QCheques.Fields[0].AsDateTime,Anio,Mes,Dia);
          If Dia=Contador2 Then
            begin
              sgDebitados.Canvas.Font.Color:=clBlack;
              sgDebitados.Canvas.Font.Style:=[fsBold];
              if QCheques.Fields[1].AsString<>'' then
                Cadena:=FormatFloat(',0.00',QCheques.Fields[1].AsFloat)
              else
                cadena:='';
              if QCheques.Fields[1].AsString<>'' Then
                sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' ')-6,Rect.Top+51,Cadena);
              //Acumulo el Total
              TotalCheques := TotalCheques + QCheques.Fields[1].AsFloat;
              if Not(QCheques.Eof) Then
                QCheques.Next;
              cuadro[ACol][ARow][4]:=Cadena;
            end;

        end;
      if (ACol>6) and (ARow>=0) Then
        begin
          if TotalDebitado>0 Then
            begin
              sgDebitados.Canvas.Font.Color:=clWhite;
              Cadena:=FormatFloat(',0.00',TotalDebitado);
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+12,Cadena);
              cuadro[ACol][ARow][1]:=Cadena;
            end;
          if TotalSinDebitar>0 Then
            begin
              sgDebitados.Canvas.Font.Color:=clWhite;
              Cadena:=FormatFloat(',0.00',TotalSinDebitar);
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+25,Cadena);
              cuadro[ACol][ARow][2]:=Cadena;
            end;
          if TotalCheques>0 Then
            begin
              sgDebitados.Canvas.Font.Color:=clWhite;
              Cadena:=FormatFloat(',0.00',TotalCheques);
              sgDebitados.Canvas.TextOut(Rect.Right-Canvas.TextWidth(Cadena+' '),Rect.Top+51,Cadena);
              cuadro[ACol][ARow][4]:=Cadena;
            end;

          TotalDebitado   :=0;
          TotalSinDebitar :=0;
          TotalCheques:=0;
        end;
  QChequesDebitados.EnableControls;
  QChequesNoDeb.EnableControls;
  QCheques.EnableControls;

end;

procedure TFormChequesEmitidos.sgDebitadosGetEditText(Sender: TObject; ACol,
  ARow: Integer; var Value: string);
begin
  ShowMessage(Value);
end;



procedure TFormChequesEmitidos.Button1Click(Sender: TObject);
begin
  //SaveAsExcelFile(sgMes,ExtractFilePath(ParamStr(0))+ '\testxls.xls');
  if DBChart1.Page>0 Then
    DBChart1.PreviousPage;
end;

procedure TFormChequesEmitidos.Button2Click(Sender: TObject);
begin
  sgMes.col:=0;
  sgMes.Row:=0;

  sgMes.col:=2;
  sgMes.Row:=2;
end;

procedure TFormChequesEmitidos.Button3Click(Sender: TObject);
begin
   DBChart1.NextPage;
end;

procedure TFormChequesEmitidos.Button4Click(Sender: TObject);
begin
  pnCheEmitidos.Visible:=False;
end;

procedure TFormChequesEmitidos.CheckBox1Click(Sender: TObject);
begin
 DBChart1.Legend.Visible:=CheckBox1.Checked;
end;

procedure TFormChequesEmitidos.DBChart1ClickSeries(Sender: TCustomChart;
  Series: TChartSeries; ValueIndex: Integer; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var fecha:TDateTime;
begin
  Label16.Caption:=('Barra ')+IntToStr(ValueIndex)+ ' X '+Series.XLabel[valueindex]+'  '+ Series.LegendTitle;
//   Label16.Caption:=('Barra ')+IntToStr(ValueIndex)+ ' X '+FormatFloat('0.00',Series1.XLabel[valueindex]);
  fecha:=EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,strtoint(Series.XLabel[valueindex]));
  if Series.LegendTitle='Emitido' then
    begin
      QChe_x_Dia.Close;
      QChe_x_Dia.ParamByName('Desde').AsDateTime:=fecha;
      QChe_x_Dia.Open;
      pnCheEmitidos.Visible:=True;
    end;
end;

procedure TFormChequesEmitidos.DBChart1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  lbPosicion.Caption:='X='+IntToStr(X)+' Y='+IntToStr(Y);
end;

procedure TFormChequesEmitidos.BitBtn2Click(Sender: TObject);
begin
  frCol.RangeEnd      := reCount;
  frCol.RangeEndCount := sgMes.ColCount;
  frRow.RangeEnd      := reCount;
  frRow.RangeEndCount := sgMes.RowCount;

  frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\ControlCheDebitados.fr3');
  frxReport1.Variables['Mes']   :=''''+ lbMeses.Items[lbMeses.ItemIndex]+'''';
  frxReport1.Variables['Anio']  :=''''+ edAnio.Text+'''';
  frxReport1.Variables['cuenta']:=''''+ rxcCuentas.Text+'''';
  frxReport1.ShowReport;
  lbMeses.OnClick(sender);
end;

procedure TFormChequesEmitidos.btImprimirClick(Sender: TObject);
begin

//  frCol.RangeEnd      := reCount;
//  frCol.RangeEndCount := sgMes.ColCount;
//  frRow.RangeEnd      := reCount;
//  frRow.RangeEndCount := sgMes.RowCount;
//
//  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ControlCheEmitidos.fr3');
//
//  frxReport.Variables['Mes']   :=''''+ lbMeses.Items[lbMeses.ItemIndex]+'''';
//  frxReport.Variables['Anio']  :=''''+ edAnio.Text+'''';
//  frxReport.Variables['cuenta']:=''''+ rxcCuentas.Text+'''';
//
//  frxReport.ShowReport;
  sgMes.PrintSettings.TitleLines.Clear;
  sgMes.PrintSettings.TitleLines.Add('Listado de Compromisos'+#9+#9+'  Cuenta: '+rxcCuentas.Text);
  sgMes.PrintSettings.TitleLines.Add('Mes: '+lbMeses.Items[lbMeses.ItemIndex] + ' - Año: '+edAnio.Text);

//  sgMes.PrintSettings.Title :=ppTopLeft;
 // sgMes.PrintSettings.HeaderFont.Size:=12;

  sgMes.PrintSettings.Orientation    := TPrinterOrientation.poLandscape;
  sgMes.PrintSettings.FitToPage      := fpAlways;// TFitToPage.fpShrink;
  sgMes.PrintSettings.Centered       := True;
  sgMes.PrintSettings.UseFixedHeight := True;
  //sgMes.PrintSettings.
  AdvPreviewDialog.Grid := sgMes;
  AdvPreviewDialog.Execute;
 // lbMeses.OnClick(sender);
end;

procedure TFormChequesEmitidos.btNuevoDetalleClick(Sender: TObject);
begin
  QCheques.DisableControls;
  QChe3.DisableControls;
  QDepositos.DisableControls;

  sgCuadro.Canvas.Font.Style :=[];
  sgCuadro.Canvas.Font.Color :=clBlue;
  sgCuadro.Canvas.Font.Size  :=12;


end;

procedure TFormChequesEmitidos.Label13DblClick(Sender: TObject);
begin
  frxReport1.DesignReport;
end;

procedure TFormChequesEmitidos.Label1DblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormChequesEmitidos.Label7DblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

procedure TFormChequesEmitidos.rxcCuentasClick(Sender: TObject);
begin
  if Not(rxcCuentas.KeyValue=null) then
    begin
      pgEstadoSaldos.TabVisible:=true;
      MovimientosBco.Execute;
    end
  else pgEstadoSaldos.TabVisible:=false;
end;

procedure TFormChequesEmitidos.ScrollBox1Click(Sender: TObject);
begin
  sgMes.Repaint;
end;

procedure TFormChequesEmitidos.MovimientosBcoExecute(Sender: TObject);
VAR
  Debe,Haber:Real;
begin
  if Not(rxcCuentas.KeyValue = null) Then
    begin
      QSaldoAnterior.Close;
      QSaldoAnterior.ParamByName('desde').Value := EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
      QSaldoAnterior.ParamByName('id').Value    := StrToInt(rxcCuentas.KeyValue);
      QSaldoAnterior.Open;
      QMovimientosBco.Close;
      QMovimientosBco.ParamByName('id').Value     := StrToInt(rxcCuentas.KeyValue);
      QMovimientosBco.ParamByName('Desde').AsDate := EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,1);
      QMovimientosBco.ParamByName('Hasta').AsDate := EncodeDate(StrToInt(edAnio.Text),lbMeses.ItemIndex+1,DiasDeMes);
      QMovimientosBco.Open;
      if Not(QMovimientosBco.IsEmpty) Then
        begin
          TFMTBCDField(dbgMovBco.Fields[3]).DisplayFormat:=',0.00';
          TFMTBCDField(dbgMovBco.Fields[4]).DisplayFormat:=',0.00';
          TFMTBCDField(dbgMovBco.Fields[5]).DisplayFormat:=',0.00';
        end;
      if QSaldoAnterior.Fields[0].AsString<>'' Then
        Debe:=QSaldoAnterior.Fields[0].AsFloat
      else
        Debe:=0;
      Haber:=0;
      // Revisar
      QMovimientosBco.DisableControls;
      QMovimientosBco.First;
      while Not(QMovimientosBco.Eof) do
        begin
          Debe  := QMovimientosBcoDEBE.AsFloat + Debe;
          Haber := QMovimientosBcoHABER.AsFloat + Haber;
      //    QMovimientosBco.Edit;
      //    QMovimientosBcoSALDO.AsFloat := Debe - Haber;
          QMovimientosBco.Next;
        end;
      QMovimientosBco.First;
      QMovimientosBco.EnableControls;
    end;
end;

end.