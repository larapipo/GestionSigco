unit URevisionVencimientos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider, cxCheckBox,
  Vcl.StdCtrls, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, Vcl.Buttons;

type
  TFormRevisionVencimientos = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    pnBase: TPanel;
    QVencimientos: TFDQuery;
    QDetalles: TFDQuery;
    QVencimientosID: TIntegerField;
    QVencimientosFECHA_INCIO: TSQLTimeStampField;
    QVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    QVencimientosASUNTO: TStringField;
    QVencimientosASUNTO_2: TStringField;
    QVencimientosASUNTO_3: TStringField;
    QVencimientosAVISAR: TStringField;
    QVencimientosFRECUENCIA: TStringField;
    QVencimientosIMPORTE: TFloatField;
    QVencimientosID_CPBTE: TIntegerField;
    QVencimientosTIPO_CPBTE: TStringField;
    QVencimientosCLASE_CPBTE: TStringField;
    QVencimientosNROCPBTE: TStringField;
    QVencimientosESTADO: TIntegerField;
    QVencimientosCOLOR: TIntegerField;
    QVencimientosAVISA_INICIO: TSQLTimeStampField;
    QVencimientosAVISA_TERMINA: TSQLTimeStampField;
    QVencimientosFINALIZADO: TStringField;
    QVencimientosTIPO: TIntegerField;
    QVencimientosFECHA_CUMPLIDO: TSQLTimeStampField;
    QVencimientosPARENT_ID: TIntegerField;
    QVencimientosOPCION: TIntegerField;
    QVencimientosCUOTA_NRO: TSmallintField;
    QVencimientosLOTE: TIntegerField;
    QDetallesID_CAB: TIntegerField;
    QDetallesID: TIntegerField;
    QDetallesGASTO_RUBRO: TStringField;
    QDetallesDETALLE: TStringField;
    QDetallesIMPORTE: TFloatField;
    DSVencimientos: TDataSource;
    DSDetalles: TDataSource;
    QDetallesDETALLECTA: TStringField;
    QDetallesGASTO_CTA: TStringField;
    DSPDetalles: TDataSetProvider;
    CDSDetalles: TClientDataSet;
    CDSDetallesID_CAB: TIntegerField;
    CDSDetallesID: TIntegerField;
    CDSDetallesGASTO_RUBRO: TStringField;
    CDSDetallesDETALLE: TStringField;
    CDSDetallesGASTO_CTA: TStringField;
    CDSDetallesDETALLECTA: TStringField;
    CDSDetallesIMPORTE: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2GASTO_RUBRO1: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE1: TcxGridDBColumn;
    cxGrid1DBTableView2GASTO_CTA1: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLECTA1: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE1: TcxGridDBColumn;
    DSPVencimientos: TDataSetProvider;
    CDSVencimientos: TClientDataSet;
    CDSVencimientosID: TIntegerField;
    CDSVencimientosFECHA_INCIO: TSQLTimeStampField;
    CDSVencimientosFECHA_FINALIZACION: TSQLTimeStampField;
    CDSVencimientosASUNTO: TStringField;
    CDSVencimientosIMPORTE: TFloatField;
    CDSVencimientosID_CPBTE: TIntegerField;
    CDSVencimientosTIPO_CPBTE: TStringField;
    CDSVencimientosCLASE_CPBTE: TStringField;
    CDSVencimientosNROCPBTE: TStringField;
    CDSVencimientosPARENT_ID: TIntegerField;
    CDSVencimientosOPCION: TIntegerField;
    CDSVencimientosCUOTA_NRO: TSmallintField;
    CDSVencimientosLOTE: TIntegerField;
    cxGrid1DBTableView1FECHA_INCIO: TcxGridDBColumn;
    cxGrid1DBTableView1ASUNTO: TcxGridDBColumn;
    cxGrid1DBTableView1CUOTA_NRO: TcxGridDBColumn;
    CDSVencimientosAVISAR: TStringField;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QDetallesID_CPBTE: TIntegerField;
    QDetallesFINALIZADO: TStringField;
    CDSDetallesID_CPBTE: TIntegerField;
    CDSDetallesFINALIZADO: TStringField;
    cxGrid1DBTableView2FINALIZADO: TcxGridDBColumn;
    Label1: TLabel;
    btSAlir: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSDetallesAfterPost(DataSet: TDataSet);
    procedure CDSDetallesBeforeEdit(DataSet: TDataSet);
    procedure btSAlirClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    FLote:Integer;
  public
    { Public declarations }
  published
    property Lote:Integer read FLote write FLote;
  end;

var
  FormRevisionVencimientos:TFormRevisionVencimientos;

implementation

USes UDMain_FD;
{$R *.dfm}

procedure TFormRevisionVencimientos.btSAlirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRevisionVencimientos.CDSDetallesAfterPost(DataSet: TDataSet);
begin
  CDSDetalles.ApplyUpdates(-1);
end;

procedure TFormRevisionVencimientos.CDSDetallesBeforeEdit(DataSet: TDataSet);
begin
  if CDSDetallesFINALIZADO.AsString<>'S' then
    CDSDetalles.Cancel;
end;

procedure TFormRevisionVencimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRevisionVencimientos.FormCreate(Sender: TObject);
begin
  CDSVencimientos.Close;
  CDSVencimientos.Params.ParamByName('Lote').Value := FLote;
  CDSVencimientos.Open;

  CDSDetalles.Close;
  CDSDetalles.Params.ParamByName('lote').Value     := FLote;
  CDSDetalles.Open;

end;

procedure TFormRevisionVencimientos.FormDestroy(Sender: TObject);
begin
  FormRevisionVencimientos:=nil;
end;

procedure TFormRevisionVencimientos.FormResize(Sender: TObject);
begin
  if FormRevisionVencimientos<>nil then
    if FormRevisionVencimientos.Width<>844 then
      FormRevisionVencimientos.Width:=844;
end;

procedure TFormRevisionVencimientos.FormShow(Sender: TObject);
begin
  CDSVencimientos.Close;
  CDSVencimientos.Params.ParamByName('Lote').Value := FLote;
  CDSVencimientos.Open;

  CDSDetalles.Close;
  CDSDetalles.Params.ParamByName('lote').Value     := FLote;
  CDSDetalles.Open;

  FormRevisionVencimientos.BringToFront;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

end.
