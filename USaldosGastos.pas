unit USaldosGastos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids,  Provider, DBClient,IniFiles,
  StdCtrls, Mask, StrUtils, Db, ActnList, ImgList,System.Variants,
  Buttons, ToolWin, ComCtrls, ExtCtrls,  frxDBSet, frxClass,Librerias,
  JvGradient, DBCtrls, frxExportRTF, frxExportXLS, frxExportHTML, frxExportPDF,
  DataExport, DataToXLS, CheckLst, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvDBLookup, JvExMask, JvToolEdit, DBGrids, JvExDBGrids,
  JvDBGrid, JvBaseEdits, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
  cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink, dxPScxCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, JvExControls,
  JvExExtCtrls, JvExtComponent, JvPanel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  JvComponentBase, System.Actions,VirtualUI_SDK, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxBarBuiltInMenu, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, Vcl.Menus, frxExportBaseDialog, System.ImageList,
  dxPScxExtComCtrlsLnk, frCoreClasses;

type
  TFormSaldoGastos = class(TFormABMBase)
    DSSaldosGastos: TDataSource;
    frListaGastos: TfrxReport;
    frDBGastos: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    DSRubros: TDataSource;
    DSCuentas: TDataSource;
    DSSucursal: TDataSource;
    frDBEmpresa: TfrxDBDataset;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    DSCajas: TDataSource;
    DataToXLS: TDataToXLS;
    frxPDFExport1: TfrxPDFExport;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    Filtrar: TAction;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSComprobantes: TClientDataSet;
    DSPComprobantes: TDataSetProvider;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    VerCpbte: TAction;
    Sumar: TAction;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgSaldos: TJvDBGrid;
    edTotal: TJvCalcEdit;
    chDetalle: TCheckBox;
    ToolButton2: TToolButton;
    Agrupado: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    pnPie: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DSGasto_Compra: TDataSource;
    TabSheet2: TTabSheet;
    dbgGastoCompra: TJvDBGrid;
    TabSheet3: TTabSheet;
    frDBGastoCompra: TfrxDBDataset;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGridField1: TcxDBPivotGridField;
    cxDBPivotGridField2: TcxDBPivotGridField;
    cxDBPivotGridField3: TcxDBPivotGridField;
    cxDBPivotGridField4: TcxDBPivotGridField;
    cxDBPivotGridField5: TcxDBPivotGridField;
    cxDBPivotGridField6: TcxDBPivotGridField;
    cxDBPivotGridField7: TcxDBPivotGridField;
    cxDBPivotGridField8: TcxDBPivotGridField;
    cxDBPivotGrid2Field1: TcxDBPivotGridField;
    cxDBPivotGrid2Field2: TcxDBPivotGridField;
    chlComprob: TCheckListBox;
    pnTotales: TJvPanel;
    Label13: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    cxDBPivotGrid2Field3: TcxDBPivotGridField;
    cxDBPivotGrid2Field4: TcxDBPivotGridField;
    cxDBPivotGrid2Field5: TcxDBPivotGridField;
    pnTotales_2: TJvPanel;
    Label16: TLabel;
    SpeedButton2: TSpeedButton;
    chOpSumas_2: TCheckListBox;
    QComprobantes: TFDQuery;
    QSaldoGastos: TFDQuery;
    QCajas: TFDQuery;
    QCuentas: TFDQuery;
    QRubros: TFDQuery;
    QRubrosCODIGO: TStringField;
    QRubrosDETALLE: TStringField;
    QCuentasCODIGO: TStringField;
    QCuentasCODIGO_RUBRO: TStringField;
    QCuentasDETALLE: TStringField;
    QCuentasEXCLUYE: TStringField;
    QCajasID_CUENTA: TIntegerField;
    QCajasID_TIPO_CTA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QCajasNRO_CUENTA: TStringField;
    QCajasID_BANCO: TIntegerField;
    QCajasCUIT: TStringField;
    QCajasRAZONSOCIAL: TStringField;
    QGasto_Compra: TFDQuery;
    QGasto_CompraNROCPBTE: TStringField;
    QGasto_CompraID_EGRESO: TIntegerField;
    QGasto_CompraTIPOCPBTE: TStringField;
    QGasto_CompraCLASECPBTE: TStringField;
    QGasto_CompraRUBROGASTO: TStringField;
    QGasto_CompraCODIGOGASTO: TStringField;
    QGasto_CompraDETALLE: TStringField;
    QGasto_CompraMUESTRARUBRO: TStringField;
    QGasto_CompraMUESTRAIDCOMPROBANTE: TIntegerField;
    QGasto_CompraMUESTRACTA: TStringField;
    QGasto_CompraIMPORTE: TFloatField;
    QGasto_CompraID_CUENTA_CAJA: TIntegerField;
    QGasto_CompraNOMBRE: TStringField;
    QGasto_CompraCTRO_COSTO_ID: TIntegerField;
    QGasto_CompraCTRO_COSTO_NOM: TStringField;
    QGasto_CompraCTRO_COSTO_IMPUT: TFloatField;
    QGasto_CompraCTRO_COSTO_PORCEN: TFloatField;
    QGasto_CompraMES: TStringField;
    QGasto_CompraANIO: TStringField;
    QSaldoGastosNROCPBTE: TStringField;
    QSaldoGastosID_EGRESO: TIntegerField;
    QSaldoGastosTIPOCPBTE: TStringField;
    QSaldoGastosCLASECPBTE: TStringField;
    QSaldoGastosRUBROGASTO: TStringField;
    QSaldoGastosCODIGOGASTO: TStringField;
    QSaldoGastosDETALLE: TStringField;
    QSaldoGastosMUESTRARUBRO: TStringField;
    QSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField;
    QSaldoGastosMUESTRACTA: TStringField;
    QSaldoGastosIMPORTE: TFloatField;
    QSaldoGastosFECHAGASTO: TSQLTimeStampField;
    QSaldoGastosID_CUENTA_CAJA: TIntegerField;
    QSaldoGastosNOMBRE: TStringField;
    QSaldoGastosID: TIntegerField;
    QSaldoGastosMES: TStringField;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QSaldoGastosMUESTRASUCURSAL: TStringField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    QGasto_CompraSUCURSAL: TStringField;
    cxDBPivotGrid2Field6: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    dxComponentPrinter1Link2: TcxPivotGridReportLink;
    pnPie2: TPanel;
    Label11: TLabel;
    Label14: TLabel;
    btExcelGastos: TBitBtn;
    Panel2: TPanel;
    Label12: TLabel;
    Label15: TLabel;
    btExcelGastoCompra: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    lcRubros: TJvDBLookupCombo;
    lcCuentas: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    dbcCaja: TJvDBLookupCombo;
    QGasto_CompraFECHAGASTO: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    cxDBPivotGrid2Field7: TcxDBPivotGridField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure lcCuentasEnter(Sender: TObject);
    procedure lcRubrosEnter(Sender: TObject);
    procedure lcRubrosClick(Sender: TObject);
    procedure lcCuentasClick(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure chlComprobClick(Sender: TObject);
    procedure FiltrarExecute(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure VerCpbteExecute(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure dbgGastoCompraTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btExcelGastoCompraClick(Sender: TObject);
    procedure btExcelGastosClick(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Label15Click(Sender: TObject);
    procedure chOpSumas_2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure QGasto_CompraCalcFields(DataSet: TDataSet);
    procedure QSaldoGastosCalcFields(DataSet: TDataSet);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    Filtro:String;
    procedure ArmarFiltro;
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormSaldoGastos: TFormSaldoGastos;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses DMBuscadoresForm, UEgresoCaja,UDMain_FD;

{$R *.DFM}

procedure TFormSaldoGastos.ArmarFiltro;
var i:Integer;
dato:String;
begin
  filtro:='';
  for i:= 0 to chlComprob.Items.Count-1 do
    begin
       if chlComprob.Checked[i]=True then
         begin
           Dato:=copy(chlComprob.Items[i],1,pos('#',chlComprob.items[i])-1);
           dato:=IntToStr(StrToInt(trim(dato)));
           if Filtro='' then
             Filtro:='MUESTRAIDCOMPROBANTE='+Dato
           else
             Filtro:=Filtro+' or MUESTRAIDCOMPROBANTE='+Dato;
         end;
    end;
end;


procedure TFormSaldoGastos.btExcelGastosClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (QSaldoGastos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='Gastos';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
      if SaveDialog.Execute Then
        begin
          if Not(AnsiEndsText('.xls', SaveDialog.FileName )) Then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
        end;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog.FileName);
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormSaldoGastos.btExcelGastoCompraClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (QGasto_Compra.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid2.OptionsView.DataFields     :=False;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid2.OptionsView.RowFields      :=False;
      cxDBPivotGrid2.OptionsView.FilterFields   :=False;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='GastosCompras';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
      if SaveDialog.Execute Then
        begin
          if Not(AnsiEndsText('.xls', SaveDialog.FileName )) Then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid2);
        end;
      cxDBPivotGrid2.OptionsView.DataFields     :=True;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid2.OptionsView.RowFields      :=True;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=True;
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog.FileName);
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormSaldoGastos.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (QSaldoGastos.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName  :='SaldoGastos';
      SaveDialog.DefaultExt:='xls';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if Not(AnsiEndsText('.xls', SaveDialog.FileName )) Then
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
//  ceCliente.SetFocus;
//  ceCliente.SelectAll;

end;

procedure TFormSaldoGastos.BuscarExecute(Sender: TObject);
var AGroupItem: TcxPivotGridGroupItem;
i:Integer;
begin
 // inherited;
  if (PageControl1.ActivePageIndex<=1) then
    begin
      QSaldoGastos.IndexName:='';
      QSaldoGastos.IndexDefs.Clear;
      if (copy(Desde.Text,1,2)='  ') or (copy(Hasta.Text,1,2)='  ') Then
        ShowMessage('Fechas Incorrectas... verifique...')
      else
        begin
          QSaldoGastos.Close;
          QSaldoGastos.ParamByName('Desde').AsDate :=Desde.Date;
          QSaldoGastos.ParamByName('Hasta').AsDate :=Hasta.Date;
          if VarIsNull(dbcSucursal.KeyValue) Then
            QSaldoGastos.ParamByName('suc').AsInteger:=-1
          else
            QSaldoGastos.ParamByName('suc').AsInteger:= dbcSucursal.KeyValue;
          QSaldoGastos.ParamByName('caja').AsInteger := dbcCaja.KeyValue;
          QSaldoGastos.ParamByName('rubro').AsString := lcRubros.KeyValue;
          QSaldoGastos.ParamByName('codigo').AsString:= lcCuentas.KeyValue;
          QSaldoGastos.Open;
          Filtrar.Execute;
          Sumar.Execute;

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

        end;
    end
  else
    if PageControl1.ActivePageIndex>=2 then
      begin
        Screen.Cursor:=crHourGlass;
        QGasto_Compra.Close;
        QGasto_Compra.IndexFieldNames:='';
        QGasto_Compra.IndexDefs.Clear;
        QGasto_Compra.ParamByName('Desde').AsDate :=Desde.Date;
        QGasto_Compra.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
        if VarIsNull(dbcSucursal.KeyValue) Then
          QGasto_Compra.ParamByName('suc').AsInteger:=-1
        else
          QGasto_Compra.ParamByName('suc').AsInteger:= dbcSucursal.KeyValue;
        QGasto_Compra.ParamByName('caja').AsInteger := dbcCaja.KeyValue;
        QGasto_Compra.ParamByName('rubro').AsString := lcRubros.KeyValue;
        QGasto_Compra.ParamByName('codigo').AsString:= lcCuentas.KeyValue;
        QGasto_Compra.Open;
        QGasto_Compra.IndexFieldNames:='RUBROGASTO;CODIGOGASTO;FECHAGASTO';
        Screen.Cursor:=crDefault;

        cxDBPivotGrid2.BeginUpdate;
        with cxDBPivotGrid2.ViewData do
          begin
            for I := 0 to RowCount - 1 do
            begin
              AGroupItem:=cxDBPivotGrid2.ViewData.Rows[i].GroupItem;
              AGroupItem.Expanded:=True;
            end;
          end;
        cxDBPivotGrid2.EndUpdate;
      end;
  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;

end;

procedure TFormSaldoGastos.chOpSumas_2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.ColumnGrandTotals := chOpSumas_2.Checked[0];
  cxDBPivotGrid2.OptionsView.ColumnTotals      := chOpSumas_2.Checked[1];
  cxDBPivotGrid2.OptionsView.RowGrandTotals    := chOpSumas_2.Checked[2];
  cxDBPivotGrid2.OptionsView.RowTotals         := chOpSumas_2.Checked[3];
end;

procedure TFormSaldoGastos.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormSaldoGastos.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormSaldoGastos.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormSaldoGastos.chlComprobClick(Sender: TObject);
begin
  inherited;
  QSaldoGastos.Filtered:=False;
  ArmarFiltro;
  QSaldoGastos.Filter  :=Filtro;
  QSaldoGastos.Filtered:=True;
  Sumar.Execute;
end;

procedure TFormSaldoGastos.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormSaldoGastos.FiltrarExecute(Sender: TObject);
begin
  inherited;
  QSaldoGastos.Filtered:=False;
  ArmarFiltro;
  QSaldoGastos.Filter  :=Filtro;
  QSaldoGastos.Filtered:=True;
end;

procedure TFormSaldoGastos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastos');
  cxDBPivotGrid2.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaCompGas');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGastos.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);

  ArchivoIni.WriteBool('Suma2', 'CGranTotal', cxDBPivotGrid2.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma2', 'CTotal', cxDBPivotGrid2.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma2', 'RGranTotal', cxDBPivotGrid2.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma2', 'RTotal', cxDBPivotGrid2.OptionsView.RowTotals);

  ArchivoIni.Free;

  QSaldoGastos.Close;
  QRubros.Close;
  QCuentas.Close;
  CDSSucursal.Close;
  QCajas.Close;

  inherited;

  Action:=caFree;
end;

procedure TFormSaldoGastos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoGastos:=nil;
end;

procedure TFormSaldoGastos.ImprimirExecute(Sender: TObject);
BEGIN
  CDSEmpresa.Open;

  frListaGastos.PrintOptions.Printer:=PrNomListados;
  frListaGastos.SelectPrinter;

  if PageControl1.ActivePageIndex=0 then
    begin
      if chDetalle.Checked Then
        frListaGastos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstGastos.fr3')
      else
        frListaGastos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstGastos_sinDetalle.fr3');
      frListaGastos.Variables['Desde']:=''''+Desde.Text+'''';
      frListaGastos.Variables['Hasta']:=''''+Hasta.Text+'''';
      frListaGastos.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
      frListaGastos.Variables['Caja']:=''''+dbcCaja.Text+'''';
      frListaGastos.ShowReport;
    end
  else
    if PageControl1.ActivePageIndex=1 then
      begin
        dxComponentPrinter1.PrintTitle:='Saldos de Gastos';
        dxComponentPrinter1Link1.Preview(True);
      end
   else
    if PageControl1.ActivePageIndex=2 then
      begin
        frListaGastos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstGastosCompra.fr3');
        frListaGastos.Variables['Desde']:=''''+Desde.Text+'''';
        frListaGastos.Variables['Hasta']:=''''+Hasta.Text+'''';
        frListaGastos.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
        frListaGastos.Variables['Caja']:=''''+dbcCaja.Text+'''';
        frListaGastos.ShowReport;
      end
    else
    if PageControl1.ActivePageIndex=3 then
      begin
        dxComponentPrinter1.PrintTitle:='Saldos de Gastos/Compras';
        dxComponentPrinter1Link2.Preview(True);
      end;

  CDSEmpresa.Close;
end;

procedure TFormSaldoGastos.Label11Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormSaldoGastos.Label12Click(Sender: TObject);
begin
  inherited;
 cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormSaldoGastos.Label14Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormSaldoGastos.Label15Click(Sender: TObject);
begin
  inherited;
  pnTotales_2.Visible:=Not(pnTotales_2.Visible);
end;

procedure TFormSaldoGastos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListaGastos.DesignReport;
end;

procedure TFormSaldoGastos.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormSaldoGastos.SpeedButton2Click(Sender: TObject);
begin
  inherited;
   pnTotales_2.Visible:=False;
end;

procedure TFormSaldoGastos.SumarExecute(Sender: TObject);
var  CDSClone:TClientDataSet;
P:TBookmark;
begin
  inherited;
  edTotal.Value:=0;
  P:=QSaldoGastos.GetBookmark;
  QSaldoGastos.First;
  QSaldoGastos.DisableControls;

  while not(QSaldoGastos.Eof) do
    begin
      edTotal.Value:=edTotal.Value+QSaldoGastos.FieldByName('Importe').AsFloat;
      QSaldoGastos.Next;
    end;
 QSaldoGastos.GotoBookmark(p);
 QSaldoGastos.FreeBookmark(p);
 QSaldoGastos.EnableControls;

    //  CDSClone.Free;

  //  CDSClone:=TClientDataSet.Create(self);
//  CDSClone.CloneCursor(CDSSaldoGastos,True);
//  CDSClone.First;
//  while not(CDSClone.Eof) do
//    begin
//      edTotal.Value:=edTotal.Value+CDSClone.FieldByName('Importe').AsFloat;
//      CDSClone.Next;
//    end;
//  CDSClone.Free;
end;

procedure TFormSaldoGastos.FormShow(Sender: TObject);
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
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
  cxDBPivotGrid2.OptionsView.FilterFields   := False;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaGastos');
  cxDBPivotGrid2.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaCompGas');
  //*************************************************************

  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormSaldoGastos.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute; 
  //  Desde.SetFocus;

end;

procedure TFormSaldoGastos.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  if (QSaldoGastosID_EGRESO.AsString<>'') and (QSaldoGastosID_EGRESO.AsInteger>0) then
    begin
      if Not(Assigned(FormEgresoCaja)) then
        FormEgresoCaja:=TFormEgresoCaja.Create(Self);
      formEgresoCaja.DatoNew  :=QSaldoGastosID_EGRESO.AsString;
      FormEgresoCaja.TipoCpbte:='EC';
      FormEgresoCaja.Recuperar.Execute;
      FormEgresoCaja.Show;
    end;

end;

procedure TFormSaldoGastos.FormCreate(Sender: TObject);
VAr i:Integer;
begin
  inherited;
  AutoSize:=False;
  QRubros.Open;
  QCuentas.OPen;
  CDSSucursal.OpeN;
  QCajas.Open;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  CDSComprobantes.Close;
  CDSComprobantes.Open;
  CDSComprobantes.First;
  for i:= 0 to CDSComprobantes.RecordCount-1 do
    begin
      chlComprob.Items.Add(CDSComprobantesID_COMPROBANTE.AsString+' # '+
                           CDSComprobantesTIPO_COMPROB.Value + '-'+
                           CDSComprobantesCLASE_COMPROB.Value + '...'+
                           CDSComprobantesDENOMINACION.Value  );
      chlComprob.Checked[i]:=true ;
      CDSComprobantes.Next;
    end;
  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;    
  PageControl1.ActivePageIndex:=0;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumGastos.ini');
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);

  cxDBPivotGrid2.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma2', 'CGranTotal', True);
  cxDBPivotGrid2.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma2', 'CTotal', True);
  cxDBPivotGrid2.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma2', 'RGranTotal', True);
  cxDBPivotGrid2.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma2', 'RTotal', True);

  ArchivoIni.Free;

  chOpSumas.Checked[0]  := cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]  := cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]  := cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]  := cxDBPivotGrid1.OptionsView.RowTotals;

  chOpSumas_2.Checked[0]:= cxDBPivotGrid2.OptionsView.ColumnGrandTotals;
  chOpSumas_2.Checked[1]:= cxDBPivotGrid2.OptionsView.ColumnTotals;
  chOpSumas_2.Checked[2]:= cxDBPivotGrid2.OptionsView.RowGrandTotals;
  chOpSumas_2.Checked[3]:= cxDBPivotGrid2.OptionsView.RowTotals;

end;

procedure TFormSaldoGastos.lcCuentasEnter(Sender: TObject);
begin
  inherited;
  QCuentas.close;
  QCuentas.Params.ParamByName('rubro').Value:=lcRubros.KeyValue;
  QCuentas.Open;
end;

procedure TFormSaldoGastos.lcRubrosEnter(Sender: TObject);
begin
  inherited;
  lcCuentas.KeyValue:='*';
end;

procedure TFormSaldoGastos.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if PageControl1.ActivePageIndex=1 then
     APivot:=cxDBPivotGrid1
   else
     if PageControl1.ActivePageIndex=3 then
       APivot:=cxDBPivotGrid2;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;


end;

procedure TFormSaldoGastos.QGasto_CompraCalcFields(DataSet: TDataSet);
begin
  inherited;
  QGasto_CompraMES.Value:=FormatDateTime('mm-MMMMMM',QGasto_CompraFECHAGASTO.AsDateTime);
end;

procedure TFormSaldoGastos.QSaldoGastosCalcFields(DataSet: TDataSet);
begin
  inherited;
  QSaldoGastosMES.Value:=FormatDateTime('mm-MMMMMM',QSaldoGastosFECHAGASTO.AsDateTime);

end;

procedure TFormSaldoGastos.lcRubrosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormSaldoGastos.lcCuentasClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormSaldoGastos.dbcSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormSaldoGastos.dbgGastoCompraTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
 if QGasto_Compra.IndexFieldNames=Field.FieldName then
    QGasto_Compra.IndexFieldNames:= Field.FieldName +':D'
  else
    QGasto_Compra.IndexFieldNames:= Field.FieldName;

end;

procedure TFormSaldoGastos.dbgSaldosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  if QSaldoGastos.IndexFieldNames=Field.FieldName then
    QSaldoGastos.IndexFieldNames:= Field.FieldName +':D'
  else
    QSaldoGastos.IndexFieldNames:= Field.FieldName;
end;

end.
