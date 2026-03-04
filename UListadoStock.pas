unit UListadoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, ImgList,
  ActnList, ComCtrls, JvExControls,StrUtils,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, frxClass,
  frxDBSet, DataExport, DataToXLS,   JvComponentBase, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvDBLookup, SqlExpr,
  JvDBGrid, Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, JvExDBGrids, CompBuscador,
  Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCheckComboBox, cxDBCheckComboBox,
  cxStyles, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxClasses, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid,cxGridExportLink,
  cxTL, cxTLdxBarBuiltInMenu, cxInplaceContainer, cxTLData, cxDBTL,
  JvExComCtrls, JvDBTreeView, cxCheckBox, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCProgressBar, frCoreClasses;

type
  TFormListadoStock = class(TFormABMBase)
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    DSStock: TDataSource;
    bt1: TBitBtn;
    Imprimir: TAction;
    frListado: TfrxReport;
    frDBStock: TfrxDBDataset;
    bt2: TBitBtn;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    DSSubRubro: TDataSource;
    lb1: TLabel;
    lb2: TLabel;
    lb3: TLabel;
    RxDBLookupCombo1: TJvDBLookupCombo;
    RxDBLookupCombo2: TJvDBLookupCombo;
    RxDBLookupCombo3: TJvDBLookupCombo;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockDESCRIPCION_MARCA: TStringField;
    CDSStockDETALLE_RUBRO: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSStockREEMPLAZO_STK: TStringField;
    chMarca: TCheckBox;
    ToolButton1: TToolButton;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    ActivarArt: TAction;
    JvDBFindEdit1: TJvDBFindEdit;
    JvDBFindEdit2: TJvDBFindEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    ToolButton2: TToolButton;
    PopupMenu1: TPopupMenu;
    VerCodigoAlternativo: TMenuItem;
    CDSStockPLU: TStringField;
    QRubro: TFDQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    QSubRubro: TFDQuery;
    QStock: TFDQuery;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION_UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1REEMPLAZO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1MARCA_STK: TcxGridDBColumn;
    cxGrid1DBTableView1RUBRO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1SUBRUBRO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION_MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1FUAP: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_ARTICULO: TcxGridDBColumn;
    cxGrid1DBTableView1PLU: TcxGridDBColumn;
    cxGrid1DBTableView1PRESENTACION_CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_EXENTO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_GRAVADO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1FIJACION_PRECIO_EXENTO: TcxGridDBColumn;
    cxGrid1DBTableView1FIJACION_PRECIO_GRAVADO: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    QMarca: TFDQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    QSubRubroCODIGO_RUBRO: TStringField;
    pcListado: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    QLstRubro: TFDQuery;
    QLstSubRubro: TFDQuery;
    QLstRubroCODIGO_RUBRO: TStringField;
    QLstRubroDETALLE_RUBRO: TStringField;
    QLstRubroCONTROL_RUBRO: TStringField;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    DSLstRubro: TDataSource;
    DSLstSubRubro: TDataSource;
    cxGrid2DBTableView1CODIGO_RUBRO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid2DBTableView1CONTROL_RUBRO: TcxGridDBColumn;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBTableView2: TcxGridDBTableView;
    QLstSubRubroCODIGO_RUBRO: TStringField;
    QLstSubRubroCODIGO_SUBRUBRO: TStringField;
    QLstSubRubroDETALLE_SUBRUBRO: TStringField;
    QLstSubRubroCONTROL_SUBRUBRO: TStringField;
    cxGrid2DBTableView2CODIGO_RUBRO: TcxGridDBColumn;
    cxGrid2DBTableView2CODIGO_SUBRUBRO: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid2DBTableView2CONTROL_SUBRUBRO: TcxGridDBColumn;
    cxStyle3: TcxStyle;
    cxStyle4: TcxStyle;
    spAll: TSpeedButton;
    spDesAll: TSpeedButton;
    JvDBStatusLabel1: TJvDBStatusLabel;
    N1: TMenuItem;
    GrupoFiltro1: TMenuItem;
    ExpandColapse1: TMenuItem;
    Colapsar1: TMenuItem;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    cxGrid1DBTableView1DETALLE_STK_ADICIONAL: TcxGridDBColumn;
    QActualizaEstado: TFDQuery;
    Panel2: TPanel;
    Label4: TLabel;
    pnPieListado: TPanel;
    cxGrid1DBTableView1CON_MOVIMIENTO: TcxGridDBColumn;
    CDSStockCON_MOV: TStringField;
    QBorrarArticulo: TFDQuery;
    Label5: TLabel;
    CDSStockTASA_IVA: TIntegerField;
    cxGrid1DBTableView1TASA_IVA: TcxGridDBColumn;
    CDSStockCODIGO_ALTERNATIVO_MODIFCADO: TStringField;
    N2: TMenuItem;
    N3: TMenuItem;
    BorrarSinMovimientos: TAction;
    pbBorrado: TTMSFNCProgressBar;
    ToolButton3: TToolButton;
    CDSStockCODIGO_BARRA: TStringField;
    cxGrid1DBTableView1CODIGO_BARRA: TcxGridDBColumn;
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure RxDBLookupCombo2Click(Sender: TObject);
    procedure RxDBLookupCombo1Click(Sender: TObject);
    procedure RxDBLookupCombo3Click(Sender: TObject);
    procedure ActivarArtExecute(Sender: TObject);
    procedure dbgStockDblClick(Sender: TObject);
    procedure CDSStockCODIGO_STKGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure VerCodigoAlternativoClick(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
    procedure cxGrid1DBTableView1CellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid1DBTableView1CustomDrawCell(Sender: TcxCustomGridTableView;
      ACanvas: TcxCanvas; AViewInfo: TcxGridTableDataCellViewInfo;
      var ADone: Boolean);
    procedure QLstRubroAfterPost(DataSet: TDataSet);
    procedure QLstSubRubroAfterPost(DataSet: TDataSet);
    procedure QLstRubroCONTROL_RUBROSetText(Sender: TField; const Text: string);
    procedure spAllClick(Sender: TObject);
    procedure pcListadoChange(Sender: TObject);
    procedure GrupoFiltro1Click(Sender: TObject);
    procedure ExpandColapse1Click(Sender: TObject);
    procedure Colapsar1Click(Sender: TObject);
    procedure cxGrid1DBTableView1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSStockCalcFields(DataSet: TDataSet);
    procedure BorrarSinMovimientosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Modifico:Boolean;
  end;

var
  FormListadoStock: TFormListadoStock;

implementation

uses UStock_2,UDMain_FD;

{$R *.dfm}

procedure TFormListadoStock.ActivarArtExecute(Sender: TObject);
begin
  inherited;
//
  QActualizaEstado.Close;
  QActualizaEstado.ParamByName('codigo').Value:=CDSStockCODIGO_STK.Value;
  if CDSStockCLASE_ARTICULO.Value=0 then
    QActualizaEstado.ParamByName('estado').Value:=3
  else
    if CDSStockCLASE_ARTICULO.Value>0 then
      QActualizaEstado.ParamByName('estado').Value:=0;
  QActualizaEstado.ExecSQL;
  QActualizaEstado.Close;

  CDSStock.Edit;
  if CDSStockCLASE_ARTICULO.Value=0 then
    CDSStockCLASE_ARTICULO.Value:=3
  else
    if CDSStockCLASE_ARTICULO.Value>0 then
      CDSStockCLASE_ARTICULO.Value:=0;
  CDSStock.Post;    

end;

procedure TFormListadoStock.BorrarSinMovimientosExecute(Sender: TObject);
begin
  inherited;
  pbBorrado.Value   := 0;
  pbBorrado.Minimum := 0;
  pbBorrado.Maximum := CDSStock.RecordCount-1;
  CDSStock.First;
  //CDSStock.IndexFieldNames:='CON_MOV';
 // CDSStock.DisableControls;
  while Not(CDSStock.Eof) do
    begin
      pbBorrado.Value:=pbBorrado.Value+1;
      Application.ProcessMessages;
      if Trim(CDSStockCON_MOV.Value)='N' then
        begin
          QBorrarArticulo.Close;
          QBorrarArticulo.ParamByName('codigo').Value:=CDSStockCODIGO_STK.Value;
          QBorrarArticulo.ExecSQL;
          QBorrarArticulo.Close;
        end;
      CDSStock.Next;
    end;
  pbBorrado.Value   := 0;
  pbBorrado.Minimum := 0;
  pbBorrado.Maximum := CDSStock.RecordCount-1;
  Application.ProcessMessages;
  CDSStock.Close;
  CDSStock.IndexFieldNames:='';
  CDSStock.IndexDefs.Clear;
  CDSStock.Params.ParamByName('marca').Value   :=RxDBLookupCombo1.KeyValue;
  CDSStock.Params.ParamByName('rubro').Value   :=RxDBLookupCombo2.KeyValue;
  CDSStock.Params.ParamByName('subrubro').Value:=RxDBLookupCombo3.KeyValue;
  CDSStock.Open;
  CDSStock.EnableControls;
end;

procedure TFormListadoStock.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSStock.Close;
  CDSStock.IndexFieldNames:='';
  CDSStock.IndexDefs.Clear;
  CDSStock.Params.ParamByName('marca').Value   :=RxDBLookupCombo1.KeyValue;
  CDSStock.Params.ParamByName('rubro').Value   :=RxDBLookupCombo2.KeyValue;
  CDSStock.Params.ParamByName('subrubro').Value:=RxDBLookupCombo3.KeyValue;
  CDSStock.Open;
//  CDSStock.IndexFieldNames:='RUBRO_STK;SUBRUBRO_STK;CODIGO_STK';
  cxGrid1DBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir
 // cxGrid2DBTableView1.ViewData.Expand(True);// <<<<<<<<  para expandir

end;

procedure TFormListadoStock.CDSStockCalcFields(DataSet: TDataSet);
begin
  inherited;
//  CDSStockCODIGO_ALTERNATIVO_MODIFCADO.AsString:=Trim(edPrefijoCodAlt.Text)+CDSStockREEMPLAZO_STK.AsString;
end;

procedure TFormListadoStock.CDSStockCODIGO_STKGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
    Text:=Trim(CDSStockCODIGO_STK.Value);
  if VerCodigoAlternativo.Checked then
    Text:= Trim(CDSStockREEMPLAZO_STK.AsString);
end;

procedure TFormListadoStock.Colapsar1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.ViewData.Collapse(True);
end;

procedure TFormListadoStock.cxGrid1DBTableView1CellDblClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TformStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormListadoStock.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
 var campo:string;
begin
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

procedure TFormListadoStock.cxGrid1DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
    colIndex: integer;
    enDegas: boolean;
begin
  inherited;
// Para Dibujar renglon en cxGrid
  colIndex := cxGrid1DBTableView1CLASE_ARTICULO.Index;
  enDegas := AviewInfo.GridRecord.Values[colIndex]='0';

  if enDegas THEN
    ACanvas.Font.Style := [fsBold,fsStrikeout]
   else
     ACanvas.Font.Style := [];
end;

procedure TFormListadoStock.cxGrid1DBTableView1KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    begin
      if CDSStockCON_MOV.Value='N' then
        begin
          QBorrarArticulo.Close;
          QBorrarArticulo.ParamByName('codigo').Value:=CDSStockCODIGO_STK.Value;
          QBorrarArticulo.ExecSQL;
          QBorrarArticulo.Close;
          CDSStock.Delete;
        end;
    end;
end;

procedure TFormListadoStock.dbgStockDblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TformStock_2.Create(Self);
  FormStock_2.DatoNew:=CDSStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

//procedure TFormListadoStock.dbgStockDrawColumnCell(Sender: TObject;
//  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
//begin
//  inherited;
 // if CDSStockCLASE_ARTICULO.Value=0 then
//    dbgStock.Canvas.Font.Style:=[fsStrikeOut]
//  else
//    dbgStock.Canvas.Font.Style:=[];
//
//    dbgStock.DefaultDrawColumnCell(Rect,DataCol,Column,State);
//end;

//procedure TFormListadoStock.dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
//  Field: TField);
//var campo:string;
//begin
//try
//    Campo := Field.FieldName;
//    with dbgStock.DataSource.DataSet as TClientDataSet do
//      if IndexFieldNames <> Campo then
//        IndexFieldNames := Campo // Ascendente
//      else
//      begin
//        AddIndex(Campo, Campo, [], Campo); // Descendente
//        IndexName := Campo;
//      end;
//  except // Para que no salte una excepción si la columna es un campo calculado.
//  end;
//end;

procedure TFormListadoStock.ExpandColapse1Click(Sender: TObject);
begin
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormListadoStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSStock.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Stock';
      SaveDialog1.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1)
            else
              cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1);

            Sleep(100);
            if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cxGrid1DBTableView1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'ListadoStock.ini');
  QMarca.Close;
  QRubro.Close;
  QSubRubro.Close;
  QLstSubRubro.Close;
  QLstRubro.Close;

  Action:=caFree;
end;

procedure TFormListadoStock.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcListado.ActivePageIndex:=0;
  QMarca.Open;
  QRubro.Open;
  QSubRubro.Open;
  QLstRubro.Open;
  QLstSubRubro.Open;
  cxGrid1DBTableView1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'ListadoStock.ini');

end;

procedure TFormListadoStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoStock:=nil;
end;

procedure TFormListadoStock.GrupoFiltro1Click(Sender: TObject);
begin
  inherited;
  cxGrid1DBTableView1.OptionsView.GroupByBox:=Not(cxGrid1DBTableView1.OptionsView.GroupByBox);
end;

procedure TFormListadoStock.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSStock.IsEmpty) Then
    begin
      CDSStock.IndexFieldNames:='RUBRO_STK;SUBRUBRO_STK;CODIGO_STK';
      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaStock.fr3');
      frListado.Variables['Marca']   :=chMarca.Checked;// ''''+Desde.Text+'''';
//      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
//      frListado.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
//      frListado.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
//      frListado.Variables['Zona']:=''''+dbcZona.Text+'''';
      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoStock.pcListadoChange(Sender: TObject);
begin
  inherited;
  if pcListado.ActivePageIndex=0 then
    begin
      if Modifico then
        Buscar.Execute;
      Modifico:=False;
    end
  else
    if pcListado.ActivePageIndex=1 then
      Modifico:=False;

end;

procedure TFormListadoStock.QLstRubroAfterPost(DataSet: TDataSet);
begin
  inherited;
   QLstSubRubro.AfterPost:=nil;
   QLstSubRubro.Filtered := False;
   QLstSubRubro.Filter   := 'CODIGO_RUBRO = ' +''''+QLstRubroCODIGO_RUBRO.Value+'''';
   QLstSubRubro.Filtered := True;
//   stEstado.Panels[0].Text:='Procesando Rubros...';
   Application.ProcessMessages;
   QLstSubRubro.First;
   while Not(QLstSubRubro.Eof) do
      begin
        QLstSubRubro.Edit;
        if QLstRubroCONTROL_RUBRO.Value='S' then
          QLstSubRubroCONTROL_SUBRUBRO.Value:= 'S'
        else
          if QLstRubroCONTROL_RUBRO.Value='N' then
            QLstSubRubroCONTROL_SUBRUBRO.Value:= 'N';


        QLstSubRubro.Next;
      end;
   Application.ProcessMessages;
   QLstSubRubro.Filtered :=False;
   QLstSubRubro.Filter   :='';
   QLstSubRubro.First;
   QLstRubro.ApplyUpdates(0);
   QLstSubRubro.ApplyUpdates(0);
   Modifico:=True;
   QLstSubRubro.AfterPost:= QLstSubRubroAfterPost;

end;

procedure TFormListadoStock.QLstRubroCONTROL_RUBROSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TFormListadoStock.QLstSubRubroAfterPost(DataSet: TDataSet);
begin
  inherited;
  QLstSubRubro.ApplyUpdates(0);
end;

procedure TFormListadoStock.RxDBLookupCombo1Click(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoStock.RxDBLookupCombo2Click(Sender: TObject);
begin
  inherited;
  QSubRubro.Close;
  QSubRubro.ParamByName('rubro').Value:= RxDBLookupCombo2.KeyValue;
  QSubRubro.Open;
  Buscar.Execute;

end;

procedure TFormListadoStock.RxDBLookupCombo3Click(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormListadoStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

procedure TFormListadoStock.spAllClick(Sender: TObject);
begin
  inherited;
  QLstRubro.First;
  while Not(QLstRubro.Eof) do
    begin
      QLstRubro.Edit;
      QLstRubroCONTROL_RUBRO.Value:='S';
      QLstRubro.Next;
    end;
  QLstRubro.First;
end;

procedure TFormListadoStock.VerCodigoAlternativoClick(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo.Checked:=Not(VerCodigoAlternativo.Checked);
//  dbgStock.Refresh;
  cxGrid1DBTableView1.DataController.Refresh;
end;

end.