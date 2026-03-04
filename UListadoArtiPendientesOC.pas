unit UListadoArtiPendientesOC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, cxCustomPivotGrid, cxDBPivotGrid, CheckLst, JvExExtCtrls,
  JvExtComponent, JvPanel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,
  cxExportPivotGridLink, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, System.ImageList;

type
  TFormArtPendientesOC = class(TFormABMBase)
    pnPie: TPanel;
    CDSArticulos: TClientDataSet;
    DSPArticulos: TDataSetProvider;
    CDSArticulosID_OC: TIntegerField;
    CDSArticulosTIPOCPBTE: TStringField;
    CDSArticulosCLASECPBTE: TStringField;
    CDSArticulosCODIGO: TStringField;
    CDSArticulosNOMBRE: TStringField;
    CDSArticulosCODIGOARTICULO: TStringField;
    CDSArticulosDETALLE: TStringField;
    CDSArticulosSUCURSAL: TIntegerField;
    CDSArticulosNOMBRESUCURSAL: TStringField;
    DSArticulos: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    CDSArticulosMESAUTO: TStringField;
    CDSArticulosMESPEDIDO: TStringField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    Label1: TLabel;
    Label2: TLabel;
    pnTotales: TJvPanel;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    btExcel: TBitBtn;
    btImprimir: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    Panel2: TPanel;
    QArticulos: TFDQuery;
    CDSArticulosNROCPBTE: TStringField;
    CDSArticulosFECHA: TSQLTimeStampField;
    CDSArticulosFECHAAUTORIZACION: TSQLTimeStampField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    CDSArticulosCANTIDADPEDIDA: TFloatField;
    CDSArticulosCANTIDADAUTORIZADA: TFloatField;
    CDSArticulosUNITARIO_TOTAL: TFloatField;
    Label4: TLabel;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSArticulosCalcFields(DataSet: TDataSet);
    procedure chOpSumasClick(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormArtPendientesOC: TFormArtPendientesOC;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormArtPendientesOC.btExcelClick(Sender: TObject);
begin
  inherited;
 IF NOT (CDSArticulos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='Pendientes';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormArtPendientesOC.btImprimirClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormArtPendientesOC.BuscarExecute(Sender: TObject);
var
  i: Integer;
begin
 // inherited;
  CDSArticulos.Close;
  CDSArticulos.Open;
  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormArtPendientesOC.CDSArticulosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSArticulosMESAUTO.Value  := FormatDateTime('mm',CDSArticulosFECHAAUTORIZACION.ASDateTime)+'-'+FormatDateTime('mmm',CDSArticulosFECHAAUTORIZACION.ASDateTime);
  CDSArticulosMESPEDIDO.Value:= FormatDateTime('mm',CDSArticulosFECHA.ASDateTime)+'-'+FormatDateTime('mmm',CDSArticulosFECHA.ASDateTime);
end;

procedure TFormArtPendientesOC.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormArtPendientesOC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaOCArticulos');
  //*************************************************************
  inherited;
  Action:=caFree;
end;

procedure TFormArtPendientesOC.FormCreate(Sender: TObject);
VAR I:Integer;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  for I := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaOCArticulos');
  //*************************************************************
  Buscar.Execute;
end;

procedure TFormArtPendientesOC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormArtPendientesOC:=nil;
end;

procedure TFormArtPendientesOC.FormShow(Sender: TObject);
begin
  inherited;
  //Buscar.Execute;
end;

procedure TFormArtPendientesOC.Label1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormArtPendientesOC.Label2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormArtPendientesOC.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

end.
