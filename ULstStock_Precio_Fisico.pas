unit ULstStock_Precio_Fisico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy,
  dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky,
  dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid,
  DBClient, Provider, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,cxGridExportLink,
  JvDBLookup, dxSkinsDefaultPainters, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  cxNavigator, JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormLstStock_Precio_Fisico = class(TFormABMBase)
    DSPListaPrecioStk: TDataSetProvider;
    CDSListaPrecioStk: TClientDataSet;
    CDSListaPrecioStkCODIGO_STK: TStringField;
    CDSListaPrecioStkDETALLE_STK: TStringField;
    CDSListaPrecioStkRUBRO_STK: TStringField;
    CDSListaPrecioStkSUBRUBRO_STK: TStringField;
    CDSListaPrecioStkMARCA_STK: TStringField;
    CDSListaPrecioStkDETALLE_RUBRO: TStringField;
    CDSListaPrecioStkDETALLE_SUBRUBRO: TStringField;
    CDSListaPrecioStkDESCRIPCION_MARCA: TStringField;
    CDSListaPrecioStkFECHA_ALTA: TSQLTimeStampField;
    CDSListaPrecioStkFUAP: TSQLTimeStampField;
    CDSListaPrecioStkNUMEROLISTA: TIntegerField;
    CDSListaPrecioStkMONEDA: TStringField;
    DSListaPrecioStk: TDataSource;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid1DBTableView1DESCRIPCION_MARCA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_ALTA: TcxGridDBColumn;
    cxGrid1DBTableView1FUAP: TcxGridDBColumn;
    cxGrid1DBTableView1NUMEROLISTA: TcxGridDBColumn;
    cxGrid1DBTableView1MONEDA: TcxGridDBColumn;
    cxGrid1DBTableView1COTIZACION: TcxGridDBColumn;
    cxGrid1DBTableView1EXISTENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1COSTO: TcxGridDBColumn;
    cxGrid1DBTableView1PRECIO: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    btExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
    lb1: TLabel;
    dbclistaPrecios: TJvDBLookupCombo;
    DSlistaprecios: TDataSource;
    Label1: TLabel;
    RxCDepositos: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    CDSListaPrecioStkCLASE_ARTICULO: TIntegerField;
    QListaPrecios: TFDQuery;
    QListaPreciosID_LISTA: TIntegerField;
    QListaPreciosNOMBRE: TStringField;
    QDepositos: TFDQuery;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QListaPrecioStk: TFDQuery;
    CDSListaPrecioStkCOTIZACION: TFloatField;
    CDSListaPrecioStkEXISTENCIA: TFloatField;
    CDSListaPrecioStkCOSTO: TFloatField;
    CDSListaPrecioStkPRECIO: TFloatField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbclistaPreciosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstStockPrecio_Fisico: TFormLstStock_Precio_Fisico;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormLstStock_Precio_Fisico.BitBtn1Click(Sender: TObject);
begin
  inherited;
 SaveDialog1.FileName:='Lista_precios';
  SaveDialog1.DefaultExt:='XML';
  if SaveDialog1.Execute Then
    CDSListaPrecioStk.SaveToFile(SaveDialog1.FileName);
end;

procedure TFormLstStock_Precio_Fisico.btExcelClick(Sender: TObject);
begin
  inherited;
  SaveDialog1.FileName:='Lista_precios';
  SaveDialog1.DefaultExt:='XLS';
  if SaveDialog1.Execute Then
    cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, cxGrid1)
end;

procedure TFormLstStock_Precio_Fisico.BuscarExecute(Sender: TObject);
begin
  inherited;
  Screen.Cursor:=HourGlassCursor;
  CDSListaPrecioStk.Close;
  CDSListaPrecioStk.Params.ParamByName('lista').Value    := dbclistaPrecios.KeyValue;
  CDSListaPrecioStk.Params.ParamByName('deposito').Value := RxCDepositos.KeyValue;
  CDSListaPrecioStk.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
  Screen.Cursor:=DefaultCursor;

end;

procedure TFormLstStock_Precio_Fisico.dbclistaPreciosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormLstStock_Precio_Fisico.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormLstStock_Precio_Fisico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSListaPrecioStk.Close;
  QDepositos.Close;
  Action:=caFree;
end;

procedure TFormLstStock_Precio_Fisico.FormCreate(Sender: TObject);
begin
  inherited;
  QListaPrecios.Close;
  QDepositos.Close;
  QListaPrecios.Open;
  QDepositos.Open;

  AutoSize:=False;
end;

procedure TFormLstStock_Precio_Fisico.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLstStockPrecio_Fisico:=nil;
end;

end.
