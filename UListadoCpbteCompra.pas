unit UListadoCpbteCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExControls, JvDBLookup, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvLabel, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvDBControls, JvGradient, Buttons, ToolWin,
  ExtCtrls, Provider, DBClient, DataExport, DataToXLS,DateUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, dxPSCore,cxExportPivotGridLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPScxCommon, CheckLst, JvExExtCtrls,
  JvExtComponent, JvPanel, cxCalc, cxCurrencyEdit, dxSkinsCore,
  dxSkinOffice2007Black, dxSkinscxPCPainter, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxSkinsdxBarPainter, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, CompBuscador,IniFiles,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinBlack,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, System.ImageList,
  dxPScxExtComCtrlsLnk, dxPScxVGridLnk;

type
  TFormListCpbteCompra = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxLabel2: TJvLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    cbTipoCpbte: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    SaveDialog: TSaveDialog;
    DataToXLS: TDataToXLS;
    DSDetalle: TDataSource;
    CDSDetalle: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    DSTipoCpbte: TDataSource;
    CDSTipoCpbte: TClientDataSet;
    CDSTipoCpbteID_TIPO: TIntegerField;
    CDSTipoCpbteDETALLE: TStringField;
    CDSTipoCpbteSIGLA: TStringField;
    DSPTipoCpbte: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    CDSDetalleTIPOCPBTE: TStringField;
    CDSDetalleCLASECPBTE: TStringField;
    CDSDetalleSUCURSAL: TIntegerField;
    CDSDetalleCODIGO: TStringField;
    CDSDetalleNOMBRE: TStringField;
    CDSDetalleLETRA: TStringField;
    CDSDetallePREFIJO: TStringField;
    CDSDetalleNUMERO: TStringField;
    CDSDetalleNUMEROCPBTE: TStringField;
    CDSDetalleID_FACTURA: TIntegerField;
    CDSDetalleNOMSUCURSAL: TStringField;
    CDSDetalleDETALLECPBTE: TStringField;
    CDSDetalleID_CPBTE: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    CDSDetalleMES: TStringField;
    CDSDetalleANIO: TStringField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    CDSDetalleCOD_RUBG: TStringField;
    CDSDetalleDET_RUBGAST: TStringField;
    CDSDetalleDET_CTAGAST: TStringField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    CDSDetalleCOD_CTAGAS: TStringField;
    cxDBPivotGrid1Field21: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    CDSDetalleRUBRO_PROVEEDOR: TStringField;
    pnTotales: TJvPanel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label7: TLabel;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    cxDBPivotGrid1Field22: TcxDBPivotGridField;
    cxDBPivotGrid1Field23: TcxDBPivotGridField;
    pnPie: TPanel;
    Label4: TLabel;
    Label6: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    QVista: TFDQuery;
    QDetalle: TFDQuery;
    CDSDetalleNETO_GRAVADO: TFloatField;
    CDSDetalleNETO_EXENTO: TFloatField;
    CDSDetalleIVA: TFloatField;
    CDSDetalleTOTAL: TFloatField;
    CDSDetalleIIBB: TFloatField;
    CDSDetallePERCEPIVA: TFloatField;
    QTipoCpbte: TFDQuery;
    CDSDetalleFECHACOMP: TSQLTimeStampField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHACOMP: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_GRAVADO: TcxGridDBColumn;
    cxGrid1DBTableView1NETO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1IVA: TcxGridDBColumn;
    cxGrid1DBTableView1IIBB: TcxGridDBColumn;
    cxGrid1DBTableView1PERCEPIVA: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1NOMSUCURSAL: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure btExcelClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure CDSDetalleCalcFields(DataSet: TDataSet);
    procedure Label6Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbgFcDblClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure hastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure desdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);


var
  FormListCpbteCompra: TFormListCpbteCompra;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UVistasGrillas, UCompra_2, UOPago_2, UCompraCtdo_2,UDMain_FD;

{$R *.dfm}

procedure TFormListCpbteCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListCpbteCompra.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='FacturasCompra';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        begin
          if VirtualUI.Active then
            cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt , cxDBPivotGrid1)
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
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListCpbteCompra.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSDetalle.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName  :='Comprobantes';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListCpbteCompra.BuscarExecute(Sender: TObject);
var c:integer;
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('desde').Value  :=desde.Date;
  CDSDetalle.Params.ParamByName('hasta').Value  :=hasta.Date;
  CDSDetalle.Params.ParamByName('tipo').Value   := cbTipoCpbte.KeyValue;
  CDSDetalle.Params.ParamByName('clase').Value  :='**';
  CDSDetalle.Params.ParamByName('codigo').Value :='******';
  CDSDetalle.Params.ParamByName('sucursal').Value :=dbcSucursal.KeyValue;
  CDSDetalle.Open;

  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;

end;

procedure TFormListCpbteCompra.CDSDetalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSDetalleMES.Value :=FormatDateTime('mm',CDSDetalleFECHACOMP.AsDateTime) + ' - ' + FormatDateTime('mmm',CDSDetalleFECHACOMP.AsDateTime);
  CDSDetalleANIO.Value:=FormatDateTime('yyyy',CDSDetalleFECHACOMP.AsDateTime);
end;

procedure TFormListCpbteCompra.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals :=chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      :=chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    :=chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         :=chOpSumas.Checked[3];
end;

procedure TFormListCpbteCompra.cxDBPivotGrid1MouseDown(Sender: TObject;
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


procedure TFormListCpbteCompra.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListCpbteCompra.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormListCpbteCompra.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if (CDSDetalleTIPOCPBTE.AsString='FC') or
     (CDSDetalleTIPOCPBTE.AsString='NC') or
     (CDSDetalleTIPOCPBTE.AsString='ND') then
    begin
      if Not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  :=CDSDetalleID_CPBTE.AsString;
      FormCompra_2.TipoCpbte:=CDSDetalleTIPOCPBTE.AsString;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
    end
  else
    if CDSDetalleTIPOCPBTE.AsString='FO' then
      begin
        if Not(Assigned(FormCompraCtdo_2)) then
          FormCompraCtdo_2 := TFormCompraCtdo_2.Create(Self);
        FormCompraCtdo_2.DatoNew  :=CDSDetalleID_CPBTE.AsString;
        FormCompraCtdo_2.TipoCpbte:=CDSDetalleTIPOCPBTE.AsString;
        FormCompraCtdo_2.Recuperar.Execute;
        FormCompraCtdo_2.Show;
    end;
end;

procedure TFormListCpbteCompra.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
var campo:String;
begin
  inherited;
   // Obtener nombre de campo en cxGrid
  campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
  try
    campo:=TcxGridDBColumn(AColumn).DataBinding.FieldName;
    with TcxGridDBTableView(sender).DataController.DataSource.DataSet  as TClientDataSet do
      begin
        DisableControls;
        if IndexFieldNames <> Campo then
          IndexFieldNames := Campo // Ascendente
        else
          begin
            AddIndex(Campo, Campo, [], Campo); // Descendente
            IndexName := Campo;
          end;
        EnableControls;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormListCpbteCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaFcCompras');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCpbteCompras.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);
  ArchivoIni.Free;

  CDSVista.Close;
  inherited;
  Action:=cafree;
end;

procedure TFormListCpbteCompra.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  CDSSucursal.Open;
  CDSTipoCpbte.Open;


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='CPBTECOMPRAS';
  CDSVista.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGrillaCpbteCompras.ini');
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
end;

procedure TFormListCpbteCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListCpbteCompra:=nil;
end;

procedure TFormListCpbteCompra.FormShow(Sender: TObject);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaFcCompras');
  //*************************************************************

end;

procedure TFormListCpbteCompra.hastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListCpbteCompra.Label4Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListCpbteCompra.Label6Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListCpbteCompra.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListCpbteCompra.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='CPBTECOMPRAS';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='CPBTECOMPRAS';
  CDSVista.Open;
end;

procedure TFormListCpbteCompra.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream)
end;

procedure TFormListCpbteCompra.dbgFcDblClick(Sender: TObject);
begin
  inherited;
  IF (CDSDetalleTIPOCPBTE.AsString='FC') or
     (CDSDetalleTIPOCPBTE.AsString='NC') or
     (CDSDetalleTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCompra_2)) THEN
        FormCompra_2        := TFormCompra_2.Create(Self);
      FormCompra_2.DatoNew  := CDSDetalleID_FACTURA.AsString;
      FormCompra_2.TipoCpbte:= CDSDetalleTIPOCPBTE.Value;
      FormCompra_2.Recuperar.Execute;
      FormCompra_2.Show;
      FormCompra_2.BringToFront;
    end
  else
    IF (CDSDetalleTIPOCPBTE.AsString='OP') Then
      begin
        IF NOT (Assigned(FormOPago_2)) THEN
          FormOPago_2:= TFormOPago_2.Create(self);
        FormOPago_2.DatoNew    := CDSDetalleID_FACTURA.AsString;
        FormOPago_2.TipoCpbte  := CDSDetalleTIPOCPBTE.Value;
        FormOPago_2.Recuperar.Execute;
        FormOPago_2.Show;
        FormOPago_2.BringToFront;
      end
    else
      IF (CDSDetalleTIPOCPBTE.Value='AJ') Then
        begin
          IF NOT (Assigned(FormCompraCtdo_2)) THEN
            FormCompraCtdo_2        := TFormCompraCtdo_2.Create(Self);
          FormCompraCtdo_2.DatoNew  := CDSDetalleID_FACTURA.AsString;
          FormCompraCtdo_2.TipoCpbte:= CDSDetalleTIPOCPBTE.Value;
          FormCompraCtdo_2.Recuperar.Execute;
          FormCompraCtdo_2.Show;
          FormCompraCtdo_2.BringToFront;
        end
      else
        IF (CDSDetalleTIPOCPBTE.AsString='FO') Then
          begin
            IF NOT (Assigned(FormCompraCtdo_2)) THEN
              FormCompraCtdo_2        := TFormCompraCtdo_2.Create(Self);
            FormCompraCtdo_2.DatoNew  := CDSDetalleID_FACTURA.AsString;
            FormCompraCtdo_2.TipoCpbte:= CDSDetalleTIPOCPBTE.Value;
            FormCompraCtdo_2.Recuperar.Execute;
            FormCompraCtdo_2.Show;
            FormCompraCtdo_2.BringToFront;
          end

end;


procedure TFormListCpbteCompra.desdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListCpbteCompra.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;

end;

end.
