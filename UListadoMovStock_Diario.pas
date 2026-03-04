unit UListadoMovStock_Diario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr,VirtualUI_SDK,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,StrUtils,IniFiles,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit, Grids, AdvObj, BaseGrid,
  AdvGrid, tmsAdvGridExcel, asgprev, JvDBLookup, DBAdvGrid, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData,
  cxFilter, cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid,cxGridExportLink, JvFormMagnet, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, dxPScxExtComCtrlsLnk,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage,
  System.Actions, dxPScxVGridLnk, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, Vcl.Menus;

type
  TFormListadoMovStockDiario = class(TFormABMBase)
    Panel2: TPanel;
    CDSMovimientos: TClientDataSet;
    DSMovimientos: TDataSource;
    DSPMovimientos: TDataSetProvider;
    edFecha: TJvDateEdit;
    UpDown1: TUpDown;
    Label1: TLabel;
    CDSMovimientosID_MOV: TIntegerField;
    CDSMovimientosCODIGO_ARTICULO: TStringField;
    CDSMovimientosDEPOSITO: TIntegerField;
    CDSMovimientosFECHA: TSQLTimeStampField;
    CDSMovimientosTIPOOPERACION: TStringField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosID_CPBTE: TIntegerField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosID_DETALLE_CPBTE: TIntegerField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    CDSMovimientosDETALLE_STK: TStringField;
    CDSMovimientosRUBRO_STK: TStringField;
    CDSMovimientosSUBRUBRO_STK: TStringField;
    CDSMovimientosDETALLE_RUBRO: TStringField;
    CDSMovimientosDETALLE_SUBRUBRO: TStringField;
    DSPDepositos: TDataSetProvider;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSDepositos: TDataSource;
    dbcDeposito: TJvDBLookupCombo;
    DSRubro: TDataSource;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    DSSubRubro: TDataSource;
    Label2: TLabel;
    dbcRubro: TJvDBLookupCombo;
    Label3: TLabel;
    dbcSubRubro: TJvDBLookupCombo;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ENTRA: TcxGridDBColumn;
    cxGrid1DBTableView1SALE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QDepositos: TFDQuery;
    QMovimientos: TFDQuery;
    CDSMovimientosENTRA: TFloatField;
    CDSMovimientosSALE: TFloatField;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    PopupMenu1: TPopupMenu;
    VerCodAlternativo: TMenuItem;
    CDSMovimientosUNIDADES: TFloatField;
    CDSMovimientosCODALTERNATIVO: TStringField;
    Label4: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbcRubroChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure VerCodAlternativoClick(Sender: TObject);
    procedure CDSMovimientosCODIGO_ARTICULOGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure edFechaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoMovStockDiario: TFormListadoMovStockDiario;

implementation

uses UDMain_FD;

{$R *.dfm}


procedure TFormListadoMovStockDiario.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoMovStockDiario.BitBtn2Click(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName  :='StockDiario';
  SaveDialog1.DefaultExt:='xls';

  if VirtualUI.Active then
    SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
  if Not(CDSMovimientos.IsEmpty) Then
    if SaveDialog1.Execute Then
      if SaveDialog1.FileName<>'' Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          if VirtualUI.Active then
            cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1)
          else
            cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

end;

procedure TFormListadoMovStockDiario.BuscarExecute(Sender: TObject);
begin
  inherited;

  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('desde').AsDate      := edFecha.Date;
  CDSMovimientos.Params.ParamByName('Hasta').AsDate      := edFecha.Date;
  CDSMovimientos.Params.ParamByName('rubro').AsString    := dbcRubro.KeyValue;
  CDSMovimientos.Params.ParamByName('subrubro').AsString := dbcSubRubro.KeyValue;
  CDSMovimientos.Params.ParamByName('deposito').AsString := dbcDeposito.KeyValue;
  CDSMovimientos.Open;

  CDSMovimientos.IndexFieldNames:='CODIGO_ARTICULO';
  CDSMovimientos.First;

//  sgMovimientos.RowCount:=CDSMovimientos.RecordCount+1;
//
//  for I := 1 to sgMovimientos.RowCount - 1 do
//    begin
//      sgMovimientos.Alignments[4,I]:=taRightJustify;
//      sgMovimientos.Alignments[5,I]:=taRightJustify;
//    end;
//  i:=1;
//  while Not(CDSMovimientos.Eof) do
//    begin
//      sgMovimientos.Cells[0,I]:=CDSMovimientosCODIGO_ARTICULO.Value;
//      sgMovimientos.Cells[1,I]:=CDSMovimientosDETALLE_STK.AsString;
//      sgMovimientos.Cells[2,I]:=CDSMovimientosDETALLE.Value;
//      sgMovimientos.Cells[3,i]:=CDSMovimientosTIPOCPBTE.Value+'-'+CDSMovimientosCLASECPBTE.Value+'-'+CDSMovimientosNROCPBTE.AsString;
//      sgMovimientos.Cells[4,I]:=FormatBcd(',0.00;,0.00;---',CDSMovimientosENTRA.Value);
//      sgMovimientos.Cells[5,i]:=FormatBcd(',0.00;,0.00;---',CDSMovimientosSALE.Value);
//      CDSMovimientos.Next;
//      i:=i+1;
//    end;
//  sgMovimientos.MergeColumnCells(0,True);
//  sgMovimientos.MergeColumnCells(1,True);

  //DBAdvGrid1.MergeColumnCells(0,True);
  //DBAdvGrid1.MergeColumnCells(1,True);
 // sgMovimientos.Group(0);


end;

procedure TFormListadoMovStockDiario.CDSMovimientosCODIGO_ARTICULOGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
  inherited;
  if  VerCodAlternativo.Checked then
    Text:=CDSMovimientosCODALTERNATIVO.Value
  else
    Text:=CDSMovimientosCODIGO_ARTICULO.Value;
  CDSMovimientos.Refresh;
end;

procedure TFormListadoMovStockDiario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'MovimientosStock.Ini');
  ArchivoIni.WriteBool('Modo', 'codigo', VerCodAlternativo.Checked);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormListadoMovStockDiario.FormCreate(Sender: TObject);
begin
  inherited;
  CDSDepositos.Open;
  CDSRubro.Open;
  CDSSubRubro.Open;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'MovimientosStock.Ini');
  VerCodAlternativo.Checked := ArchivoIni.ReadBool('Modo', 'codigo', false);
  ArchivoIni.Free;
end;

procedure TFormListadoMovStockDiario.FormDestroy(Sender: TObject);
begin
  inherited;
   FormListadoMovStockDiario:=nil;
end;

procedure TFormListadoMovStockDiario.FormResize(Sender: TObject);
begin
  inherited;
  if (Width > 1079) or (Width<1079) then Width:=1079;

end;

procedure TFormListadoMovStockDiario.dbcRubroChange(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:=CDSRubroCODIGO_RUBRO.Value;
  CDSSubRubro.Open;
  dbcSubRubro.KeyValue:='';
end;


procedure TFormListadoMovStockDiario.edFechaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  edFecha.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoMovStockDiario.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
   if Button=btNext then
    edFecha.Date:=edFecha.Date+1
  else
  if Button=btPrev then
    edFecha.Date:=edFecha.Date-1;
  Buscar.Execute;
end;

procedure TFormListadoMovStockDiario.VerCodAlternativoClick(Sender: TObject);
begin
  inherited;
  VerCodAlternativo.Checked:=Not(VerCodAlternativo.Checked);
  CDSMovimientos.Refresh;

end;

end.
