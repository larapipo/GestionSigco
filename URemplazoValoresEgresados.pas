unit URemplazoValoresEgresados;

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
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, Vcl.StdCtrls,
  Vcl.Buttons, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls,
  UMovValoresEgresos;

type
  TForm1 = class(TForm)
    pnValoresActuales: TPanel;
    Label1: TLabel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1MODOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    pnCabecera: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
  private
    { Private declarations }
    FId_Comprobante  : Integer;
    FTipoComprob     : String;
    FClaseComprob    : String;
    FImporteOriginal : Double;
    FId_Caja         : Integer;
    FId_Cta_Caja     : Integer;

    FNroComprobante  : String;
    FFechaOperacion  : TDateTime;
  public
    { Public declarations }
  published
    property Id_Comprobante :Integer read FId_Comprobante write FId_Comprobante;
    property TipoComprobante:String read FTipoComprob write FTipoComprob;
    property ClaseComprob:String read FClaseComprob write FClaseComprob;
    property ImporteOriginal:Double read FImporteOriginal write FImporteOriginal;
    property Id_Caja:Integer read FId_Caja write FId_Caja;
    property Id_Cta_Caja:Integer read FId_Cta_Caja write FId_Cta_Caja;
    property NroComprobante:String read FNroComprobante write FNroComprobante;
    property FechaOperacion:TDateTime read FFechaOperacion write FFechaOperacion;
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
