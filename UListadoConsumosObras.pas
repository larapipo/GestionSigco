unit UListadoConsumosObras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, ComCtrls, StdCtrls, Mask, ImgList, DB, ActnList, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls, Provider, DBClient,Librerias, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, DataExport, DataToXLS, frxClass, frxDBSet,
  frxExportText, frxExportCSV, frxExportRTF, frxExportXML,
  frxExportXLS, frxExportPDF, JvComponentBase, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  CheckLst, JvExExtCtrls, JvExtComponent, JvPanel, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore,
  dxPScxCommon, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, dxSkinsdxBarPainter,
  dxSkinsdxRibbonPainter, System.Actions, dxSkinBlue, dxSkinBlueprint,
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
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage,
  cxGraphics, JvToolEdit, JvExMask,VirtualUI_SDK, CompBuscador,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light,IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvOfficeButtons, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCChart, VCL.TMSFNCChartDatabaseAdapter,
  frCoreClasses;

type
  TFormListadoConsumosObras = class(TFormABMBase)
    CDSDetalle: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    DSDetalle: TDataSource;
    btImprimir: TBitBtn;
    btExcel: TBitBtn;
    btn1: TToolButton;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frxDBDetalle: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    PageControl1: TPageControl;
    tsPag1: TTabSheet;
    dbgDetalles: TJvDBGrid;
    tsPag2: TTabSheet;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    edNombreObra: TEdit;
    ceObra: TJvComboEdit;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    CDSDetalleCODIGO: TIntegerField;
    CDSDetalleFECHA: TSQLTimeStampField;
    CDSDetalleNOMBREOBRA: TStringField;
    CDSDetalleCODIGODETALLE: TStringField;
    CDSDetalleDETALLE: TStringField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    SaveDialog: TSaveDialog;
    pnTotales: TJvPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    CDSDetalleCOSTOTOTAL: TFloatField;
    CDSDetalleTOTAL: TFloatField;
    CDSDetalleNROCPBTE: TStringField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    QDetalle: TFDQuery;
    CDSDetalleCANTIDAD: TFloatField;
    CDSDetalleCOSTO_TOTAL: TFloatField;
    CDSDetalleUNITARIO_TOTAL: TFloatField;
    QObras: TFDQuery;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    QObrasFEHCHAINCIO: TSQLTimeStampField;
    QObrasFECHAFINAL: TSQLTimeStampField;
    QObrasESTADO: TStringField;
    QObrasRESPONSABLE: TStringField;
    QObrasDIREECION: TStringField;
    QObrasLISTAPRECIOS: TIntegerField;
    chbTodas: TAdvOfficeCheckBox;
    pnPieGrupo: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    btExcelGastos: TBitBtn;
    CDSDetallePRESENTACION_UNIDAD: TStringField;
    CDSDetallePRESENTACION_CANTIDAD: TFloatField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    CDSDetalleDETALLE_RUBRO: TStringField;
    CDSDetalleDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    procedure ceObraButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure chbTodasClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExcelGastosClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CDSDetalleCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoConsumosObras: TFormListadoConsumosObras;

implementation

uses UBuscadorObras, UDMain_FD;

{$R *.dfm}

procedure TFormListadoConsumosObras.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoConsumosObras.btExcelGastosClick(Sender: TObject);
begin
  inherited;
  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='Consumos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      //cxDBPivotGrid1.OptionsView.FilterFields   :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoConsumosObras.BuscarExecute(Sender: TObject);
var i:integer;
    AGroupItem: TcxPivotGridGroupItem;
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('desde').Value :=desde.Date;
  CDSDetalle.Params.ParamByName('hasta').Value :=hasta.Date;
  if (chbTodas.Checked=False) and (Trim(ceObra.Text)<>'') then
    CDSDetalle.Params.ParamByName('codigo').Value:= StrToInt(ceObra.Text)
  else
    CDSDetalle.Params.ParamByName('codigo').Value:= -1;
  CDSDetalle.Open;

  cxDBPivotGrid1.BeginUpdate;
  with cxDBPivotGrid1.ViewData do
  begin
    for I := 0 to RowCount - 1 do
    begin
      AGroupItem:=cxDBPivotGrid1.ViewData.Rows[i].GroupItem;
      AGroupItem.Expanded:=True;
    end;
  end;
  cxDBPivotGrid1.EndUpdate;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

  Screen.Cursor:=crDefault;

end;

procedure TFormListadoConsumosObras.CDSDetalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleCOSTOTOTAL.AsFloat:=CDSDetalleCANTIDAD.AsFloat*Abs(CDSDetalleCOSTO_TOTAL.AsFloat);
  CDSDetalleTOTAL.AsFloat     :=CDSDetalleCANTIDAD.AsFloat*Abs(CDSDetalleUNITARIO_TOTAL.AsFloat);
end;

procedure TFormListadoConsumosObras.ceObraButtonClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorObras)) Then
    FormBuscadorObras:=TFormBuscadorObras.Create(Application);
  FormBuscadorObras.ShowModal;
  if FormBuscadorObras.Codigo>-1 Then
    begin
      QObras.Close;
      QObras.ParamByName('codigo').Value:=FormBuscadorObras.Codigo;
      QObras.Open;
      edNombreObra.Text := QObrasDETALLE.Value;
      ceObra.Text       := IntToStr(FormBuscadorObras.Codigo);
      Buscar.Execute;
    end;

end;

procedure TFormListadoConsumosObras.chbTodasClick(Sender: TObject);
begin
  inherited;
  if chbTodas.Checked then
    begin
      ceObra.Enabled :=False;
      ceObra.Color   :=clBtnFace;
      edNombreObra.Clear;
    end
  else
    begin
      ceObra.Enabled :=True;
      ceObra.Color   :=clWhite;
    end;

end;

procedure TFormListadoConsumosObras.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];

end;

procedure TFormListadoConsumosObras.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=aDate;
  Buscar.Execute;
end;

procedure TFormListadoConsumosObras.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='DetalleObra';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
         if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            DataToXLS1.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoConsumosObras.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaObras');

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaObras.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;
end;

procedure TFormListadoConsumosObras.FormCreate(Sender: TObject);
var d,m,y:word;
var i:integer;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

 // cxDBPivotGrid1.BeginUpdate;
//  with cxDBPivotGrid1.ViewData do
//    begin
//      for I := 0 to RowCount - 1 do
//        begin
//          AGroupItem:=cxDBPivotGrid1.ViewData.Rows[i].GroupItem;
//          AGroupItem.Expanded:=True;
//        end;
//    end;
//  cxDBPivotGrid1.EndUpdate;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaObras.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);
  ArchivoIni.Free;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;


 PageControl1.ActivePageIndex:=0;
  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;


end;

procedure TFormListadoConsumosObras.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoConsumosObras:=nil;
end;

procedure TFormListadoConsumosObras.FormShow(Sender: TObject);
begin
  inherited;
 cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaObras');
end;

procedure TFormListadoConsumosObras.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoConsumosObras.ImprimirExecute(Sender: TObject);
begin
 inherited;
  if Not(CDSDetalle.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoConsumosObras.fr3');
      frxReport.Variables['desde']   :=''''+Desde.Text+'''';
      frxReport.Variables['hasta']   :=''''+Hasta.Text+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');//
end;

procedure TFormListadoConsumosObras.Label5Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoConsumosObras.Label6Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListadoConsumosObras.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoConsumosObras.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListadoConsumosObras.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  inherited;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
end;


end.