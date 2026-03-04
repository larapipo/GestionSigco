unit UControlNetosOPago;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider, Vcl.DBCtrls, Vcl.StdCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGridExportLink;

type
  TFormControlNetosOPago = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    QControl: TFDQuery;
    DSControl: TDataSource;
    DSPControl: TDataSetProvider;
    CDSControl: TClientDataSet;
    QControlID_OP: TIntegerField;
    QControlTIPOCPBTE: TStringField;
    QControlCLASECPBTE: TStringField;
    QControlNROCPBTE: TStringField;
    QControlCODIGO: TStringField;
    QControlNOMBRE: TStringField;
    QControlTOTAL: TFloatField;
    QControlSALDO_APLICAR: TFloatField;
    QControlTOTAL_PAGOS_DEL_MES: TFloatField;
    QControlAPLICA_ID_CPBTE: TIntegerField;
    QControlAPLICA_TIPOCPBTE: TStringField;
    QControlAPLICA_CLASECPBTE: TStringField;
    QControlAPLICA_NROCPBTE: TStringField;
    QControlAPLICA_NETO: TFloatField;
    QControlAPLICA_IVA: TFloatField;
    QControlIMPORTE: TFloatField;
    CDSControlID_OP: TIntegerField;
    CDSControlTIPOCPBTE: TStringField;
    CDSControlCLASECPBTE: TStringField;
    CDSControlNROCPBTE: TStringField;
    CDSControlCODIGO: TStringField;
    CDSControlNOMBRE: TStringField;
    CDSControlTOTAL: TFloatField;
    CDSControlSALDO_APLICAR: TFloatField;
    CDSControlTOTAL_PAGOS_DEL_MES: TFloatField;
    CDSControlAPLICA_TIPOCPBTE: TStringField;
    CDSControlAPLICA_CLASECPBTE: TStringField;
    CDSControlAPLICA_NROCPBTE: TStringField;
    CDSControlAPLICA_NETO: TFloatField;
    CDSControlAPLICA_IVA: TFloatField;
    CDSControlIMPORTE: TFloatField;
    CDSControlAPLICA_ID_CPBTE: TIntegerField;
    Label1: TLabel;
    DBText1: TDBText;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_OP: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO_APLICAR: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL_PAGOS_DEL_MES: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_ID_CPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_NETO: TcxGridDBColumn;
    cxGrid1DBTableView1APLICA_IVA: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    Button1: TButton;
    SaveDialog: TSaveDialog;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSControlAfterPost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
    FFecha :TDateTime;
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property Fecha:TDateTime read FFecha write FFecha;

  end;

var
  FormControlNetosOPago: TFormControlNetosOPago;

implementation

{$R *.dfm}
uses UDMain_FD;
procedure TFormControlNetosOPago.Button1Click(Sender: TObject);
begin
  if SaveDialog.Execute then
    cxGridExportLink.ExportGridToExcel(SaveDialog.FileName, cxGrid1);
end;

procedure TFormControlNetosOPago.CDSControlAfterPost(DataSet: TDataSet);
begin
  CDSControl.ApplyUpdates(0);
end;

procedure TFormControlNetosOPago.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
 // CDSControl.Close;
//  CDSControl.Params.ParamByName('Codigo').AsString:=FCodigo;
//  CDSControl.Params.ParamByName('anio').AsString := FormatDateTime('yyyy',FFecha);
//  CDSControl.Params.ParamByName('mes').AsInteger := StrToInt(FormatDateTime('MM',FFecha));
//  CDSControl.Open;

end;

procedure TFormControlNetosOPago.FormDestroy(Sender: TObject);
begin
  FormControlNetosOPago:=nil;
end;

procedure TFormControlNetosOPago.FormShow(Sender: TObject);
begin
  CDSControl.Close;
  CDSControl.Params.ParamByName('Codigo').AsString:=FCodigo;
  CDSControl.Params.ParamByName('anio').AsString := FormatDateTime('yyyy',FFecha);
  CDSControl.Params.ParamByName('mes').AsInteger := StrToInt(FormatDateTime('MM',FFecha));
  CDSControl.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
  cxGrid1DBTableView1.OptionsView.GroupByBox:=False;
end;

end.
