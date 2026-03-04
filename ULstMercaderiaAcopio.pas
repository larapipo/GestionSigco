unit ULstMercaderiaAcopio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, JvExControls, JvGradient,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, StdCtrls, Buttons,cxGridExportLink,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxPivotGridLnk, ComCtrls, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  dxSkinscxPCPainter, cxNavigator, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxPSStdGrLnk, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormLstMercaderiaAcopio = class(TForm)
    QMercaAcopio: TFDQuery;
    DSPMercaAcopio: TDataSetProvider;
    CDSMercaAcopio: TClientDataSet;
    CDSMercaAcopioCLIENTE: TStringField;
    CDSMercaAcopioNOMBRE: TStringField;
    CDSMercaAcopioDIRECCION: TStringField;
    CDSMercaAcopioID_FACTURA: TIntegerField;
    CDSMercaAcopioID: TIntegerField;
    CDSMercaAcopioNROCPBTE: TStringField;
    CDSMercaAcopioCODIGO: TStringField;
    CDSMercaAcopioDETALLE: TStringField;
    CDSMercaAcopioCANTIDAD: TFloatField;
    CDSMercaAcopioENTREGADO: TFloatField;
    CDSMercaAcopioSALDO: TFloatField;
    DSMercaAcopio: TDataSource;
    SaveDialog1: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnCabecera: TPanel;
    JvGradient1: TJvGradient;
    pnPie: TPanel;
    JvGradient2: TJvGradient;
    btBuscar: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    dbgDetalle: TcxGrid;
    dbgDetalleDBTableView1: TcxGridDBTableView;
    dbgDetalleDBTableView1CLIENTE: TcxGridDBColumn;
    dbgDetalleDBTableView1NOMBRE: TcxGridDBColumn;
    dbgDetalleDBTableView1DIRECCION: TcxGridDBColumn;
    dbgDetalleDBTableView1ID: TcxGridDBColumn;
    dbgDetalleDBTableView1ID_FACTURA: TcxGridDBColumn;
    dbgDetalleDBTableView1CODIGO: TcxGridDBColumn;
    dbgDetalleDBTableView1DETALLE: TcxGridDBColumn;
    dbgDetalleDBTableView1NROCPBTE: TcxGridDBColumn;
    dbgDetalleDBTableView1CANTIDAD: TcxGridDBColumn;
    dbgDetalleDBTableView1ENTREGADO: TcxGridDBColumn;
    dbgDetalleDBTableView1SALDO: TcxGridDBColumn;
    dbgDetalleLevel1: TcxGridLevel;
    TabSheet2: TTabSheet;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btBuscarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormLstMercaderiaAcopio: TFormLstMercaderiaAcopio;

implementation

{$R *.dfm}

procedure TFormLstMercaderiaAcopio.BitBtn1Click(Sender: TObject);
begin
 if Not(CDSMercaAcopio.IsEmpty) Then
   if SaveDialog1.Execute then
     cxGridExportLink.ExportGridToExcel(SaveDialog1.FileName, dbgDetalle)

end;

procedure TFormLstMercaderiaAcopio.BitBtn2Click(Sender: TObject);
begin
  dxComponentPrinter1.Preview(True);
end;

procedure TFormLstMercaderiaAcopio.btBuscarClick(Sender: TObject);
begin
  CDSMercaAcopio.Close;
  CDSMercaAcopio.Open;
  dbgDetalleDBTableView1.ViewData.Expand(True);
end;

procedure TFormLstMercaderiaAcopio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormLstMercaderiaAcopio.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormLstMercaderiaAcopio.FormDestroy(Sender: TObject);
begin
  FormLstMercaderiaAcopio:=nil;
end;

end.
