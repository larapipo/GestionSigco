unit UComposicionVtos_Compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit,DateUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon, cxCurrencyEdit, dxSkinsCore,
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
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPScxVGridLnk, CompBuscador,VirtualUI_SDK, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, Vcl.Menus, System.ImageList;

type
  TFormComposicionVtosComp = class(TFormABMBase)
    CDSCompras: TClientDataSet;
    DSPCompras: TDataSetProvider;
    DSCompras: TDataSource;
    pnCabecera: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    CDSComprasID_FC: TIntegerField;
    CDSComprasTIPOCPBTE: TStringField;
    CDSComprasCLASECPBTE: TStringField;
    CDSComprasNROCPBTE: TStringField;
    CDSComprasCODIGO: TStringField;
    CDSComprasNOMBRE: TStringField;
    CDSComprasID_MOVCCCOMPRA: TIntegerField;
    CDSComprasMESVTO: TSmallintField;
    CDSComprasANIOVTO: TSmallintField;
    CDSComprasMESCPR: TSmallintField;
    CDSComprasANIOCPR: TSmallintField;
    CDSComprasSEMANACPRA: TWordField;
    CDSComprasDIASMCPR: TSmallintField;
    CDSComprasDIASMVTO: TSmallintField;
    CDSComprasSEMANAVTO: TWordField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    Label1: TLabel;
    ExportarXLS: TAction;
    SaveDialog: TSaveDialog;
    btExcelGastoCompra: TBitBtn;
    btImprimir: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    Label4: TLabel;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    Label5: TLabel;
    QCompras: TFDQuery;
    CDSComprasTOTAL: TFloatField;
    CDSComprasHABER: TFloatField;
    CDSComprasSALDO: TFloatField;
    CDSComprasSALDO_ANTERIOR: TFloatField;
    CDSComprasDEBE: TFloatField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    CDSComprasFECHACOMPRA: TSQLTimeStampField;
    CDSComprasFECHAVTO: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSComprasCalcFields(DataSet: TDataSet);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label1Click(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure LimpiarFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionVtosComp: TFormComposicionVtosComp;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormComposicionVtosComp.btImprimirClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormComposicionVtosComp.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  CDSCompras.Close;
  CDSCompras.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSCompras.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSCompras.Open;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormComposicionVtosComp.CDSComprasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSComprasSEMANACPRA.Value:=NthDayOfWeek(CDSComprasFECHACOMPRA.AsDateTime);
  CDSComprasSEMANAVTO.Value :=NthDayOfWeek(CDSComprasFECHAVTO.AsDateTime);


end;

procedure TFormComposicionVtosComp.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSCompras.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='VencimientosCompras';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterFields   :=false;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormComposicionVtosComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtosCompra');
  //*************************************************************
end;

procedure TFormComposicionVtosComp.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
end;

procedure TFormComposicionVtosComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComposicionVtosComp:=nil;
end;

procedure TFormComposicionVtosComp.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtosCompra');
 //*************************************************************

end;

procedure TFormComposicionVtosComp.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormComposicionVtosComp.LimpiarFiltrosClick(Sender: TObject);
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

procedure TFormComposicionVtosComp.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.date));
  //if dbcCtas.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;

end.
