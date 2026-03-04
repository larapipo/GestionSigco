unit ULstOProduccionDetalle;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPScxCommon,
  dxPScxPivotGridLnk;

type
  TFormListadoPedidosPI = class(TFormABMBase)
    QLstProducc: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    DSLstProducc: TDataSource;
    QLstProduccID: TIntegerField;
    QLstProduccNUMEROPI: TStringField;
    QLstProduccFECHA_INICIADA: TSQLTimeStampField;
    QLstProduccFECHA_INCIO_PROD: TSQLTimeStampField;
    QLstProduccFECHA_FINALIZADA: TSQLTimeStampField;
    QLstProduccRAZONSOCIAL: TStringField;
    QLstProduccREFERENCIA: TStringField;
    QLstProduccNROPRESUPUESTO: TStringField;
    QLstProduccCODIGO: TStringField;
    QLstProduccCODIGOALT: TStringField;
    QLstProduccDETALLE_PEDIDO: TStringField;
    QLstProduccCANTIDADPEDIDO: TFloatField;
    QLstProduccEN_PLANIFICACION: TStringField;
    QLstProduccDETALLLE_PLANIF: TStringField;
    QLstProduccCANTIDA_PLANIF: TFloatField;
    QLstProduccCANTSADO_PLANIF: TFloatField;
    cxGrid1DBTableView1NUMEROPI: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_INICIADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_INCIO_PROD: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_FINALIZADA: TcxGridDBColumn;
    cxGrid1DBTableView1RAZONSOCIAL: TcxGridDBColumn;
    cxGrid1DBTableView1REFERENCIA: TcxGridDBColumn;
    cxGrid1DBTableView1NROPRESUPUESTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGOALT: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_PEDIDO: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDADPEDIDO: TcxGridDBColumn;
    cxGrid1DBTableView1EN_PLANIFICACION: TcxGridDBColumn;
    cxGrid1DBTableView1CANTIDA_PLANIF: TcxGridDBColumn;
    cxGrid1DBTableView1CANTSADO_PLANIF: TcxGridDBColumn;
    QLstProduccFECHAENTREGA: TSQLTimeStampField;
    Panel2: TPanel;
    Label1: TLabel;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    Imprimir: TAction;
    BitBtn1: TBitBtn;
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoPedidosPI: TFormListadoPedidosPI;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoPedidosPI.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link2.Preview(True);


end;

procedure TFormListadoPedidosPI.BuscarExecute(Sender: TObject);
begin
 // inherited;
  QLstProducc.Close;
  QLstProducc.Open;
end;

procedure TFormListadoPedidosPI.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
//
end;

procedure TFormListadoPedidosPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormListadoPedidosPI.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormListadoPedidosPI.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoPedidosPI:=nil;
end;

procedure TFormListadoPedidosPI.ImprimirExecute(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(True)
end;

end.
