unit UListaCheRemplazados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,Librerias,DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,VirtualUI_SDK, System.StrUtils,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls, Vcl.Mask,
  JvExMask, JvToolEdit, Vcl.ComCtrls, JvLabel, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvDBControls, JvExControls, JvGradient, cxExportPivotGridLink,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient,cxVariants,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,cxGridExportLink,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  dxPScxPivotGridLnk, System.ImageList;

type
  TFormListadoCheRemp = class(TFormABMBase)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    pnCab: TPanel;
    Label1: TLabel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    UpDown1: TUpDown;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    QListaCheqes: TFDQuery;
    CDSListaCheques: TClientDataSet;
    DSPListaCheques: TDataSetProvider;
    CDSListaChequesID: TIntegerField;
    CDSListaChequesFECHA: TSQLTimeStampField;
    CDSListaChequesDETALLE: TStringField;
    CDSListaChequesTIPOCPBTE: TStringField;
    CDSListaChequesCLASECPBTE: TStringField;
    CDSListaChequesLETRA: TStringField;
    CDSListaChequesSUC: TStringField;
    CDSListaChequesNUMERO: TStringField;
    CDSListaChequesSUCURSAL: TIntegerField;
    CDSListaChequesNROCPBTE: TStringField;
    CDSListaChequesID_CHE_REMPLAZADO: TIntegerField;
    CDSListaChequesIMPORTE: TFloatField;
    CDSListaChequesOBSERVACIONES: TStringField;
    CDSListaChequesDEDUCIONES: TFloatField;
    CDSListaChequesMUESTRASUCURSAL: TStringField;
    CDSListaChequesMUESTRACOMPROBANTE: TStringField;
    CDSListaChequesID_TIPOCOMPROBANTE: TIntegerField;
    CDSListaChequesMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    CDSListaChequesMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    CDSListaChequesMUESTRACHEIMPORTE: TFloatField;
    CDSListaChequesMUESTRACHEORDENDE: TStringField;
    CDSListaChequesMUESTRACHEIDBANCO: TIntegerField;
    CDSListaChequesMUESTRACHENUMERO: TIntegerField;
    CDSListaChequesMUESTRAUNIDADES: TFloatField;
    CDSListaChequesMUESTRACTABANCO: TStringField;
    CDSListaChequesID_CAJA_MOV: TIntegerField;
    CDSListaChequesID_TPAGO: TIntegerField;
    CDSListaChequesID_FPAGO: TIntegerField;
    CDSListaChequesDESCRIPCION: TStringField;
    CDSListaChequesBANCO: TStringField;
    CDSListaChequesNRO_CHEQUE: TStringField;
    CDSListaChequesPROPIO_TERCERO: TStringField;
    CDSListaChequesDEBE: TFloatField;
    CDSListaChequesHABER: TFloatField;
    CDSListaChequesID_CHE: TIntegerField;
    CDSListaChequesID_CHE3: TIntegerField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1LETRA: TcxGridDBColumn;
    cxGrid1DBTableView1SUC: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHE_REMPLAZADO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1DEDUCIONES: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRASUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACOMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TIPOCOMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEFECHAEMISION: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEFECHACOBRO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHEORDENDE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACHENUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRACTABANCO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CAJA_MOV: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION: TcxGridDBColumn;
    cxGrid1DBTableView1BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_CHEQUE: TcxGridDBColumn;
    cxGrid1DBTableView1PROPIO_TERCERO: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHE3: TcxGridDBColumn;
    dxComponentPrinter1: TdxComponentPrinter;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    btExportarXLS: TBitBtn;
    ToolButton1: TToolButton;
    SaveDialog: TSaveDialog;
    dxComponentPrinter1Link1: TdxGridReportLink;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure cxGrid1DBTableView1FECHACompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1MUESTRACHEORDENDECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1MUESTRACHENUMEROCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1MUESTRACHEFECHAEMISIONCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1MUESTRACHEFECHACOBROCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1MUESTRACTABANCOCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1DEDUCIONESCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure cxGrid1DBTableView1IMPORTECompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);
    procedure ImprimirExecute(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoCheRemp: TFormListadoCheRemp;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormListadoCheRemp.btExportarXLSClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSListaCheques.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='ListaCheques';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

             cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);

            Sleep(1000);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');


  cxGridExportLink.ExportGridToExcel(SaveDialog.FileName , cxGrid1);
end;

procedure TFormListadoCheRemp.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSListaCheques.Close;
  CDSListaCheques.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSListaCheques.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSListaCheques.Open;
  cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1DEDUCIONESCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1FECHACompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1IMPORTECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1MUESTRACHEFECHACOBROCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1MUESTRACHEFECHAEMISIONCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1MUESTRACHENUMEROCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1MUESTRACHEORDENDECompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
 AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.cxGrid1DBTableView1MUESTRACTABANCOCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
var
  AIndex : Integer;
begin
  inherited;
  AIndex    := cxGrid1DBTableView1.GetColumnByFieldName('NROCPBTE').Index;
  AAreEqual := VarEquals(AValue1, AValue2) and VarEquals(ARow1.Values[AIndex], ARow2.Values[AIndex]);
end;

procedure TFormListadoCheRemp.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoCheRemp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoCheRemp.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormListadoCheRemp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoCheRemp:=nil;
end;

procedure TFormListadoCheRemp.ImprimirExecute(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True)
end;

procedure TFormListadoCheRemp.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

end.
