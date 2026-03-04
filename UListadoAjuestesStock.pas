unit UListadoAjuestesStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask,
  Librerias, Provider, DBClient, DataExport, DataToXLS, frxClass,
  frxDBSet, frxExportPDF,
  Grids, DBGrids, JvExDBGrids, JvDBGrid, JvDBLookup, DBCtrls,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  System.Actions, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  JvAppStorage, JvAppIniStorage,VirtualUI_SDK, cxGraphics, cxControls,
  JvBaseEdits, JvToolEdit, Data.SqlExpr, CompBuscador, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,cxGridExportLink,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  frxExportBaseDialog, System.ImageList, frCoreClasses, dxBarBuiltInMenu,
  cxCustomPivotGrid, cxDBPivotGrid, Vcl.Menus,cxExportPivotGridLink, cxCalc,
  cxLabel, Vcl.CheckLst, JvExExtCtrls, JvExtComponent, JvPanel, cxCurrencyEdit;

type
  TFormListadoAjustesStock = class(TFormABMBase)
    UpDown1: TUpDown;
    DSAjustes: TDataSource;
    frxPDFExport1: TfrxPDFExport;
    frAjustes: TfrxDBDataset;
    frxReport: TfrxReport;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    CDSAjustes: TClientDataSet;
    DSPAjustes: TDataSetProvider;
    DSDepositos: TDataSource;
    CDSAjustesID_RTO_DET: TIntegerField;
    CDSAjustesID_RTO_CAB: TIntegerField;
    CDSAjustesCODIGO: TStringField;
    CDSAjustesDETALLE: TStringField;
    CDSAjustesUNIDAD: TStringField;
    CDSAjustesNROCPBTE: TStringField;
    CDSAjustesDEPOSITO: TIntegerField;
    CDSAjustesCLASECPBTE: TStringField;
    CDSAjustesTIPOCPBTE: TStringField;
    CDSAjustesAFECTASTOCK: TStringField;
    CDSAjustesCON_NRO_SERIE: TStringField;
    CDSAjustesMUESTRADEPOSITO: TStringField;
    edDetalle: TEdit;
    dbcDeposito: TJvDBLookupCombo;
    BucarArticulo: TAction;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    ExportarXLS: TAction;
    BitBtn4: TBitBtn;
    CDSAjustesOBS: TStringField;
    Sumar: TAction;
    ceCodigo: TJvComboEdit;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesPRECIO_UNITARIO: TFloatField;
    CDSAjustesPRECIO_TOTAL: TFloatField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBText1: TDBText;
    RxLabel6: TJvLabel;
    JvDBGrid1: TJvDBGrid;
    pn1: TPanel;
    edTotal: TJvCalcEdit;
    TabSheet2: TTabSheet;
    CDSAjustesDETALLEMOTIVO: TStringField;
    DSPBuscadorMov: TDataSetProvider;
    CDSBuscadorMov: TClientDataSet;
    CDSBuscadorMovDETALLE: TStringField;
    CDSBuscadorMovID: TIntegerField;
    TabSheet3: TTabSheet;
    CDSRtoAjustes: TClientDataSet;
    DSPRtoAjustes: TDataSetProvider;
    CDSRtoAjustesID_RTO: TIntegerField;
    CDSRtoAjustesFECHA: TSQLTimeStampField;
    CDSRtoAjustesLETRA: TStringField;
    CDSRtoAjustesSUCRTO: TStringField;
    CDSRtoAjustesNUMRTO: TStringField;
    CDSRtoAjustesSUCURSAL: TIntegerField;
    CDSRtoAjustesNROCPBTE: TStringField;
    CDSRtoAjustesTIPOCPBTE: TStringField;
    CDSRtoAjustesCLASECPBTE: TStringField;
    CDSRtoAjustesOBS: TStringField;
    CDSRtoAjustesDEPOSITO: TIntegerField;
    CDSRtoAjustesAJUSTE_CERO_STOCK: TStringField;
    CDSRtoAjustesUSUARIO: TStringField;
    CDSRtoAjustesFECHA_HORA: TSQLTimeStampField;
    CDSRtoAjustesLISTAPRECIO: TIntegerField;
    CDSRtoAjustesMOTIVO: TIntegerField;
    CDSRtoAjustesMUESTRAMOTIVO: TStringField;
    DBGrid1: TDBGrid;
    DSRtoAjustes: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDSAjustesCODIGO_DETALLE: TStringField;
    QArticulos: TFDQuery;
    QRtoAjustes: TFDQuery;
    QBuscadorMov: TFDQuery;
    QDepositos: TFDQuery;
    QAjustes: TFDQuery;
    CDSAjustesCOSTO_UNITARIO: TFloatField;
    CDSAjustesCOSTO_TOTAL: TFloatField;
    CDSAjustesCANTIDAD: TFloatField;
    CDSAjustesSTOCK_ACTUAL_COMPRA: TFloatField;
    CDSAjustesSTOCK_ACTUAL_VTA: TFloatField;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QBuscadorMovID: TIntegerField;
    QBuscadorMovDETALLE: TStringField;
    CDSRtoAjustesTOTAL: TFloatField;
    CDSRtoAjustesTOTAL_VTA: TFloatField;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    pnCabecera: TPanel;
    CDSAjustesMUESTRAEMPLEADO: TStringField;
    chbPorArticulo: TAdvOfficeCheckBox;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CODIGO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid1UNIDAD: TcxDBPivotGridField;
    cxDBPivotGrid1NROCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1DEPOSITO: TcxDBPivotGridField;
    cxDBPivotGrid1CLASECPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1TIPOCPBTE: TcxDBPivotGridField;
    cxDBPivotGrid1MUESTRADEPOSITO: TcxDBPivotGridField;
    cxDBPivotGrid1OBS: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1PRECIO_UNITARIO: TcxDBPivotGridField;
    cxDBPivotGrid1PRECIO_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid1FECHACAB: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLEMOTIVO: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGO_DETALLE: TcxDBPivotGridField;
    cxDBPivotGrid1COSTO_UNITARIO: TcxDBPivotGridField;
    cxDBPivotGrid1COSTO_TOTAL: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField;
    cxDBPivotGrid1MUESTRAEMPLEADO: TcxDBPivotGridField;
    CDSAjustesDETALLE_RUBRO: TStringField;
    CDSAjustesDETALLE_SUBRUBRO: TStringField;
    CDSAjustesFECHACAB: TSQLTimeStampField;
    cxDBPivotGrid1DETALLE_RUBRO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField;
    pnPie: TPanel;
    Label2: TLabel;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    pnTotales: TJvPanel;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label5: TLabel;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BucarArticuloExecute(Sender: TObject);
    procedure chbPorArticuloClick(Sender: TObject);
    procedure ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure SumarExecute(Sender: TObject);
    procedure CDSRtoAjustesAfterPost(DataSet: TDataSet);
    procedure CDSRtoAjustesAfterInsert(DataSet: TDataSet);
    procedure SalirExecute(Sender: TObject);
    procedure CDSAjustesCalcFields(DataSet: TDataSet);
    procedure Label2Click(Sender: TObject);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoAjustesStock: TFormListadoAjustesStock;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UBuscadorArticulos, UDMain_FD;

{$R *.dfm}

procedure TFormListadoAjustesStock.BucarArticuloExecute(Sender: TObject);
begin
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
 // FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then

//  QBuscaArticulos.Close;
//  QBuscaArticulos.Open;
//  if wwBuscaArticulo.Execute Then
//    if wwBuscaArticulo.LookupTable.FieldByName('Codigo_stk').AsString<>'' Then
      begin
        QArticulos.Close;
        QArticulos.ParamByName('Codigo').Value:=FormBuscadorArticulos.Codigo;
        QArticulos.Open;
        edDetalle.Text:=QArticulosDETALLE_STK.Value;
        ceCodigo.Text :=QArticulosCODIGO_STK.Value;
        QArticulos.Close;
      end
    else
      begin
        edDetalle.Text:='';
        ceCodigo.Text :='';
      end;

//  QBuscaArticulos.Close;

end;

procedure TFormListadoAjustesStock.BuscarExecute(Sender: TObject);
begin
  inherited;

  CDSAjustes.Close;
  CDSAjustes.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSAjustes.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSAjustes.Params.ParamByName('deposito').Value:= dbcDeposito.KeyValue;
  if ( chbPorArticulo.Checked ) then
    CDSAjustes.Params.ParamByName('codigo').Value:=ceCodigo.Text
  else
    CDSAjustes.Params.ParamByName('codigo').Value:='********';
  CDSAjustes.Open;

  CDSRtoAjustes.Close;
  CDSRtoAjustes.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSRtoAjustes.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSRtoAjustes.Open;

  Sumar.Execute;
  var c:Integer;
  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;

 // cxGrid1DBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir
end;

procedure TFormListadoAjustesStock.CDSAjustesCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSAjustesCODIGO_DETALLE.Value:=CDSAjustesCODIGO.AsString+':'+CDSAjustesDETALLE.AsString;
end;

procedure TFormListadoAjustesStock.CDSRtoAjustesAfterInsert(DataSet: TDataSet);
begin
  inherited;
  CDSRtoAjustes.Cancel;
end;

procedure TFormListadoAjustesStock.CDSRtoAjustesAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSRtoAjustes.ApplyUpdates(0)
end;

procedure TFormListadoAjustesStock.ceCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var dato:String;
begin
  inherited;
  IF Key = Vk_return THEN
    BEGIN
      Dato := Copy('00000000', 1, 8 - (Length(ceCodigo.Text))) + ceCodigo.Text;
      ceCodigo.Text := Dato;

      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=Dato;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
    END;
end;

procedure TFormListadoAjustesStock.chbPorArticuloClick(Sender: TObject);
begin
  inherited;
  if chbPorArticulo.Checked Then
    begin
      ceCodigo.Color:=clWindow;
      ceCodigo.Enabled:=True;
    end
  else
    begin
      ceCodigo.Color:=clBtnFace;
      ceCodigo.Enabled:=False;
    end;
  if ceCodigo.Text<>'' Then
    Buscar.Execute;

end;

procedure TFormListadoAjustesStock.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormListadoAjustesStock.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormListadoAjustesStock.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoAjustesStock.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormListadoAjustesStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex<>2 then
    begin
      if VirtualUI.Active then
        VirtualUI.StdDialogs:=False;

      if Not(CDSAjustes.IsEmpty) then
        begin
          SaveDialog1.FileName:='AjustesStock';
          SaveDialog1.DefaultExt:='xls';

          SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          if SaveDialog1.Execute Then
            if SaveDialog1.FileName<>'' Then
              begin
                DataToXLS.SaveToFile(SaveDialog1.FileName);

                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
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

          if SaveDialog1.Execute Then
            if SaveDialog1.FileName<>'' Then
              begin
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
                cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
                if VirtualUI.Active then
                  VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          cxDBPivotGrid1.OptionsView.DataFields     :=True;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
          cxDBPivotGrid1.OptionsView.RowFields      :=True;
          cxDBPivotGrid1.OptionsView.FilterFields   :=True;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
       end;

end;

procedure TFormListadoAjustesStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaAjustes');

  QDepositos.Close;
  CDSAjustes.Close;
  Action:=caFree;
end;

procedure TFormListadoAjustesStock.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  QDepositos.Open;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaAjustes');

  PageControl1.ActivePageIndex:=0;
  AutoSize:=False;
end;

procedure TFormListadoAjustesStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoAjustesStock:=nil;
end;

procedure TFormListadoAjustesStock.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSAjustes.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoAjustesStock.fr3');
      frxReport.Variables['Deposito'] :=''''+dbcDeposito.Text+'''';
      frxReport.Variables['Desde']    :=''''+DateToStr(Desde.Date)+'''';
      frxReport.Variables['Hasta']    :=''''+DateToStr(Hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoAjustesStock.Label2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoAjustesStock.Label5Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListadoAjustesStock.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if PageControl1.ActivePageIndex=2 then
     APivot:=cxDBPivotGrid1;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
     APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListadoAjustesStock.SalirExecute(Sender: TObject);
begin
  if CDSRtoAjustes.State=dsEdit then CDSRtoAjustes.Post;
  inherited;

end;

procedure TFormListadoAjustesStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoAjustesStock.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

procedure TFormListadoAjustesStock.SumarExecute(Sender: TObject);
var p:TBookmark;
aux:Real;
begin
  inherited;
  aux:=0;
  p:=CDSAjustes.GetBookmark;
  CDSAjustes.First;
  CDSAjustes.DisableControls;
  while not(CDSAjustes.Eof) do
    begin
      aux:=aux+CDSAjustesCOSTO_TOTAL.AsFloat;
      CDSAjustes.Next;
    end;
  CDSAjustes.GotoBookmark(p);
  CDSAjustes.FreeBookmark(p);
  CDSAjustes.EnableControls;
  edTotal.Text:=FormatFloat(',0.00',aux);
end;

procedure TFormListadoAjustesStock.UpDown1Click(Sender: TObject;
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

end.