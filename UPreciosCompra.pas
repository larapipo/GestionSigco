unit UPreciosCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DBClient, Provider, DB, SqlExpr, StrUtils,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Mask, JvExMask, JvToolEdit, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid,DateUtils, cxCustomPivotGrid, cxDBPivotGrid, dxPSGlbl, dxPSUtl,
  dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,cxExportPivotGridLink,
  cxLabel, cxCurrencyEdit, dxSkinsCore, dxSkinOffice2007Blue,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxSkinsdxRibbonPainter, JvAppStorage,
  JvAppIniStorage, System.Actions, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, CompBuscador, cxCalendar, JvDBLookup,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,VirtualUI_Sdk,
  AdvOfficeButtons, cxMaskEdit, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, Vcl.Menus, System.ImageList,
  AdvSmoothButton, cxNavigator, dxDateRanges, dxScrollbarAnnotations;

type
  TFormTrazabilidadPreciosCompra = class(TFormABMBase)
    DSPCompras: TDataSetProvider;
    CDSCompras: TClientDataSet;
    DSCompras: TDataSource;
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel2: TJvLabel;
    UpDown1: TUpDown;
    CDSComprasCODIGOARTICULO: TStringField;
    CDSComprasDETALLE: TStringField;
    CDSComprasUNITARIO_TOTAL: TFloatField;
    CDSComprasCODIGO: TStringField;
    CDSComprasRAZONSOCIAL: TStringField;
    CDSComprasDIA: TSmallintField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    CDSComprasNROCPBTE: TStringField;
    CDSComprasTIPOCPBTE: TStringField;
    CDSComprasCLASECPBTE: TStringField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    CDSComprasDESCRIPCION: TStringField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    pnPie: TPanel;
    Label1: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    chAfectanStock: TAdvOfficeCheckBox;
    JvLabel1: TJvLabel;
    pnCabecera: TPanel;
    QCompras: TFDQuery;
    CDSComprasTOTAL: TFloatField;
    CDSComprasCANTIDAD: TFloatField;
    chbAgrupar: TAdvOfficeCheckBox;
    CDSComprasREEMPLAZO_STK: TStringField;
    CDSComprasDETALLE_RUBRO: TStringField;
    CDSComprasDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    CDSComprasUNIDAD: TStringField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    CDSComprasFECHACOMPRA: TSQLTimeStampField;
    PopupMenu1: TPopupMenu;
    LimiarFiltos1: TMenuItem;
    QVista: TFDQuery;
    QVistaID: TIntegerField;
    QVistaVISTA: TBlobField;
    QVistaDESCRIPCION: TStringField;
    QVistaDEFECTO: TStringField;
    QVistaORIGEN: TStringField;
    CDSComprasMES: TSmallintField;
    CDSComprasANIO: TSmallintField;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    CDSComprasANIO_MES: TStringField;
    cxDBPivotGrid1Field20: TcxDBPivotGridField;
    PageControl1: TPageControl;
    pagAgrupados: TTabSheet;
    pagGeneral: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QLstCompras: TFDQuery;
    DSPLstCompras: TDataSetProvider;
    CDSLstCompras: TClientDataSet;
    DSLstCompras: TDataSource;
    Label2: TLabel;
    rxcbRubro: TJvDBLookupCombo;
    Label3: TLabel;
    rxcbSubRubro: TJvDBLookupCombo;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    DSRubro: TDataSource;
    DSSubRubro: TDataSource;
    QSubRubro: TFDQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    pnRubros: TPanel;
    CDSLstComprasCODIGO: TStringField;
    CDSLstComprasDETALLE: TStringField;
    CDSLstComprasRUBRO: TStringField;
    CDSLstComprasSUBRUBRO: TStringField;
    CDSLstComprasCANTIDAD: TFloatField;
    CDSLstComprasPRECIO: TFloatField;
    CDSLstComprasFECHA: TSQLTimeStampField;
    CDSLstComprasPROVEEDOR: TStringField;
    CDSLstComprasID_FC: TIntegerField;
    CDSLstComprasNROCPBTE: TStringField;
    CDSLstComprasTIPOCPBTE: TStringField;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1PROVEEDOR: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FC: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    dxComponentPrinter1Link2: TdxGridReportLink;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
    procedure chbAgruparClick(Sender: TObject);
    procedure chAfectanStockClick(Sender: TObject);
    procedure LimiarFiltos1Click(Sender: TObject);
    procedure CDSComprasCalcFields(DataSet: TDataSet);
    procedure PageControl1Change(Sender: TObject);
    procedure rxcbRubroChange(Sender: TObject);
    procedure rxcbSubRubroChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);


var
  FormTrazabilidadPreciosCompra: TFormTrazabilidadPreciosCompra;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses  UVistasGrillas,UDMain_FD;
{$R *.dfm}

procedure TFormTrazabilidadPreciosCompra.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=0 then
    dxComponentPrinter1Link1.Preview(True)
  else
    dxComponentPrinter1Link2.Preview(True);
end;

procedure TFormTrazabilidadPreciosCompra.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog.FileName:='MovimientosArt';
  SaveDialog.DefaultExt:='XLS';

  if VirtualUI.Active then
    SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

  IF NOT (CDSCompras.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      if SaveDialog.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
              SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

          if VirtualUI.Active then
            cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1)
          else
           cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
          // Original cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
        end;
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormTrazabilidadPreciosCompra.BuscarExecute(Sender: TObject);
var c:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  if PageControl1.ActivePageIndex=0 then
    begin
      CDSCompras.Close;
      CDSCompras.Params.ParamByName('Desde').Value:=Desde.Date;
      CDSCompras.Params.ParamByName('Hasta').Value:=Hasta.Date;
      if chAfectanStock.Checked then
        CDSCompras.Params.ParamByName('afectastock').Value:='S'
      else
        CDSCompras.Params.ParamByName('afectastock').Value:='*';
      CDSCompras.Open;
    end
  else
    if PageControl1.ActivePageIndex=1 Then
      begin
         CDSLstCompras.Close;
         CDSLstCompras.Params.ParamByName('rubro').Value:=rxcbRubro.KeyValue;
         CDSLstCompras.Params.ParamByName('subrubro').Value:=rxcbSubRubro.KeyValue;
         CDSLstCompras.Open;
         cxGrid1DBTableView1.ViewData.Expand(True);
      end;

  Screen.Cursor:=crDefault;

  for c:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[c].ExpandAll;

end;

procedure TFormTrazabilidadPreciosCompra.CDSComprasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  CDSComprasANIO_MES.Value:=CDSComprasANIO.AsString+'-'+AnsiRightStr('00'+CDSComprasMES.AsString,2);
end;

procedure TFormTrazabilidadPreciosCompra.chAfectanStockClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormTrazabilidadPreciosCompra.chbAgruparClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=chbAgrupar.Checked;
end;

procedure TFormTrazabilidadPreciosCompra.cxDBPivotGrid1MouseDown(
  Sender: TObject; Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
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


procedure TFormTrazabilidadPreciosCompra.cxDBPivotGrid1MouseMove(
  Sender: TObject; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormTrazabilidadPreciosCompra.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormTrazabilidadPreciosCompra.dbcVistasChange(Sender: TObject);
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

procedure TFormTrazabilidadPreciosCompra.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  BUscar.Execute;
end;

procedure TFormTrazabilidadPreciosCompra.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormTrazabilidadPreciosCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QRubro.Close;
  QSubRubro.Close;

  Action:=caFree;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaTrazaCompra');
  //*************************************************************
end;

procedure TFormTrazabilidadPreciosCompra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  PageControl1.ActivePageIndex:=0;
  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='TRAZACOMPRA';
  CDSVista.Open;

  QRubro.Open;
  QSubRubro.Open;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaTrazaCompra');
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  //*************************************************************

end;

procedure TFormTrazabilidadPreciosCompra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTrazabilidadPreciosCompra:=nil;
end;

procedure TFormTrazabilidadPreciosCompra.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
end;

procedure TFormTrazabilidadPreciosCompra.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  BUscar.Execute;
end;

procedure TFormTrazabilidadPreciosCompra.LimiarFiltos1Click(Sender: TObject);
var
  APivot: TcxDBPivotGrid;
  I:Integer;
begin
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

procedure TFormTrazabilidadPreciosCompra.PageControl1Change(Sender: TObject);
begin
  inherited;
  pnRubros.Visible    := PageControl1.ActivePageIndex=1;
end;

procedure TFormTrazabilidadPreciosCompra.rxcbRubroChange(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.Params.ParamByName('rubro').Value:=QRubroCODIGO_RUBRO.Value;
  QSubRubro.Open;
  rxcbSubRubro.KeyValue:='';
end;

procedure TFormTrazabilidadPreciosCompra.rxcbSubRubroChange(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormTrazabilidadPreciosCompra.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='TRAZACOMPRA';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='TRAZACOMPRA';
  CDSVista.Open;
end;

procedure TFormTrazabilidadPreciosCompra.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
