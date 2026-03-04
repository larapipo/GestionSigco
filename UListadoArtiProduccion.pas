unit UListadoArtiProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,VirtualUI_SDK,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,System.StrUtils,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlueprint,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData,
  Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.Provider, Datasnap.DBClient, AdvUtil,
  Vcl.Grids, AdvObj, BaseGrid, AdvGrid, AdvSprd, frxClass, frxExportBaseDialog, frxExportPDF, frxDBSet,
  cxGridExportLink, dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  frCoreClasses, Vcl.DBGrids, AdvOfficeButtons;

type
  TFormListadoArticulosProduccion = class(TFormABMBase)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    QStockProducc: TFDQuery;
    CDSStockProducc: TClientDataSet;
    DSPStockProducc: TDataSetProvider;
    DSStockProducc: TDataSource;
    Panel3: TPanel;
    Label2: TLabel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDSStockProduccID: TIntegerField;
    CDSStockProduccENCABEZADO: TStringField;
    CDSStockProduccCODIGO_STK: TStringField;
    CDSStockProduccDETALLE: TStringField;
    CDSStockProduccCOSTO_STK: TFloatField;
    CDSStockProduccCANTIDAD_REAL: TFloatField;
    CDSStockProduccUNIDAD: TStringField;
    CDSStockProduccCANTIDAD_FISICA: TFloatField;
    CDSStockProduccCOSTO: TFloatField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1ENCABEZADO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_REAL: TcxGridDBColumn;
    cxGrid1DBTableView1UNIDAD: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDAD_FISICA: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMO_COSTO: TcxGridDBColumn;
    CDSStockProduccULTIMO_COSTO: TSQLTimeStampField;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frListaMov: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    ExportarExcel: TAction;
    SaveDialog: TSaveDialog;
    BitBtn1: TBitBtn;
    CDSStockProduccCOSTO_CIVA: TFloatField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    CDSStockProduccUNITARIO: TFloatField;
    pcDatos: TPageControl;
    pagListado: TTabSheet;
    pagUltimoCosto: TTabSheet;
    dbgUltimosCostos: TDBGrid;
    QUltimoPrecio: TFDQuery;
    DSUltimoPrecio: TDataSource;
    CDSUltimoPrecio: TClientDataSet;
    DSPUltimoPrecio: TDataSetProvider;
    CDSUltimoPrecioCODIGO_STK: TStringField;
    CDSUltimoPrecioDETALLE_STK: TStringField;
    CDSUltimoPrecioCOSTO_OLD: TFloatField;
    CDSUltimoPrecioCOSTO_NEW: TFloatField;
    CDSUltimoPrecioFECHA: TSQLTimeStampField;
    CDSUltimoPrecioFIJACIONPRECIO_ACTUAL: TFloatField;
    CDSUltimoPrecioCOSTOSTK_ACTUAL: TFloatField;
    Panel4: TPanel;
    btBuscarPrecios: TBitBtn;
    QActualizaPrecio: TFDQuery;
    CambiarPrecio: TBitBtn;
    spActualiza: TFDStoredProc;
    chbDetalle: TAdvOfficeCheckBox;
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure btBuscarPreciosClick(Sender: TObject);
    procedure dbgUltimosCostosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure CambiarPrecioClick(Sender: TObject);
    procedure dbgUltimosCostosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoArticulosProduccion: TFormListadoArticulosProduccion;

implementation

{$R *.dfm}
uses UDMain_FD, UStock_2;
procedure TFormListadoArticulosProduccion.btBuscarPreciosClick(Sender: TObject);
begin
  inherited;
  CDSUltimoPrecio.Close;
  CDSUltimoPrecio.Open;
end;

procedure TFormListadoArticulosProduccion.BuscarExecute(Sender: TObject);
var Renglon:Integer;
Flag:Integer;
Titulo :Boolean;
begin
  inherited;
  CDSStockProducc.Close;
  CDSStockProducc.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);

end;

procedure TFormListadoArticulosProduccion.CambiarPrecioClick(Sender: TObject);
begin
  inherited;
//  QActualizaPrecio.Close;
//  QActualizaPrecio.Params.ParamByName('codigo_stk').AsString := CDSUltimoPrecioCODIGO_STK.ASString;// 'EL_VALOR_DEL_CODIGO_STK';
//  QActualizaPrecio.ExecSQL;
//  QActualizaPrecio.Close;

  spActualiza.Close;
  spActualiza.ParamByName('codigo').AsString := CDSUltimoPrecioCODIGO_STK.ASString;
  spActualiza.ParamByName('costo').Value     := CDSUltimoPrecioCOSTO_NEW.AsFloat;
  spActualiza.ParamByName('precio').Value    := 0;
  spActualiza.ParamByName('lista').Value     := 0;//   StrToInt(Edit1.Text);
  spActualiza.ParamByName('Fecha').AsDate    := CDSUltimoPrecioFECHA.AsDateTime;;//   StrToInt(Edit1.Text);
  spActualiza.ParamByName('codigo_reemplazo').Clear;
  spActualiza.ParamByName('lista').clear;
  spActualiza.ParamByName('codigo_reemplazo').Clear;
  spActualiza.ExecProc;
  spActualiza.Close;

end;

procedure TFormListadoArticulosProduccion.cxGrid1DBTableView1DblClick(
  Sender: TObject);
var Codigo_Stk:String;
PosicionGuion:Integer;
begin
  inherited;
  if Not(chbDetalle.Checked) then
    begin
      PosicionGuion := Pos('-',Trim(CDSStockProduccENCABEZADO.AsString));
      Codigo_Stk:=Trim(Copy(CDSStockProduccENCABEZADO.AsString, 1, (PosicionGuion - 1)));
    end
  else
    Codigo_Stk:=CDSStockProduccCODIGO_STK.AsString;

  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Application);
  FormStock_2.DatoNew:=codigo_stk;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;

end;

procedure TFormListadoArticulosProduccion.dbgUltimosCostosDblClick(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Application);
  FormStock_2.DatoNew:=CDSUltimoPrecioCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormListadoArticulosProduccion.dbgUltimosCostosDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  CostoNew, CostoTotalStk: Extended;
begin
  with (Sender as TDBGrid).DataSource.DataSet do
    begin
      // Obtener los valores de las celdas
      CostoNew      := FieldByName('costo_new').AsCurrency;
      CostoTotalStk := FieldByName('costostk_actual').AsCurrency;

      // Verificar si las columnas son las que queremos pintar
      if (DataCol = 3) or (DataCol = 6) then
        begin
          // Pintar las celdas de diferente color si los valores son diferentes
          if CostoNew <> CostoTotalStk then
            dbgUltimosCostos.Canvas.Brush.Color := clYellow
          else
            dbgUltimosCostos.Canvas.Brush.Color := clWhite;

          // Dibujar la celda con el nuevo color
        end;
    end;
  dbgUltimosCostos.DefaultDrawColumnCell(Rect, DataCol, Column, State);

end;

procedure TFormListadoArticulosProduccion.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;

procedure TFormListadoArticulosProduccion.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSStockProducc.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Articulos_produccion';
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
          end;
      Sleep(1000);
      if VirtualUI.Active then
        VirtualUI.DownloadFile(SaveDialog.FileName);
    end;
end;

procedure TFormListadoArticulosProduccion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoArticulosProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  pcDatos.ActivePageIndex:=0;
end;

procedure TFormListadoArticulosProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoArticulosProduccion:=nil;
end;

procedure TFormListadoArticulosProduccion.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoArticulosProduccion<>nil then
    if FormListadoArticulosProduccion.Width<>1126 then
      FormListadoArticulosProduccion.Width:=1126;
end;

procedure TFormListadoArticulosProduccion.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frListaMov.PrintOptions.Printer:=PrNomListados;
  frListaMov.SelectPrinter;
  frListaMov.LoadFromFile(DMMain_FD.PathReportesLst+ '\ListadoArticuloProduccion.fr3');
  frListaMov.ShowReport;
end;

procedure TFormListadoArticulosProduccion.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListaMov.DesignReport;
end;

end.
