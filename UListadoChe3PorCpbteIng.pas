unit UListadoChe3PorCpbteIng;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, ComCtrls, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvLabel, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, Provider, DBClient, Grids, DBGrids, JvExDBGrids, JvDBGrid,DateUtils,
  DataExport, DataToXLS, frxClass, frxDBSet, frxExportPDF, JvAppStorage,
  JvAppIniStorage, System.Actions,VirtualUI_SDK, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
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
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,StrUtils,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList;

type
  TFormListadoChe3PorCpbte = class(TFormABMBase)
    RxLabel1: TJvLabel;
    Desde: TJvDateEdit;
    RxLabel3: TJvLabel;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    CDSChe: TClientDataSet;
    DSPChe: TDataSetProvider;
    DSChe: TDataSource;
    CDSCheID_CHEQUE_TER: TIntegerField;
    CDSCheNUMERO: TIntegerField;
    CDSCheFIRMANTE: TStringField;
    CDSCheDESTINO: TStringField;
    CDSCheTIPO_COMPROB: TStringField;
    CDSCheCLASE_COMPROB: TStringField;
    CDSCheLETRA: TStringField;
    CDSCheSUCURSAL: TIntegerField;
    CDSCheNRO_COMPROBANTE: TStringField;
    CDSCheID_COMPROBANTE: TIntegerField;
    CDSCheCTACAJAINGRESO: TIntegerField;
    CDSCheCAJAINGRESO: TStringField;
    CDSCheID_TIPOCOMPROB: TIntegerField;
    CDSCheCOMPROBANTE: TStringField;
    CDSCheDISPONIBLE: TStringField;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    Imprimir: TAction;
    frxPDFExport1: TfrxPDFExport;
    frChe: TfrxDBDataset;
    frxReport: TfrxReport;
    CDSCheBANCO: TStringField;
    CDSCheNOMBRESUCURSAL: TStringField;
    Label1: TLabel;
    QChe: TFDQuery;
    QCheID_CHEQUE_TER: TIntegerField;
    QCheNUMERO: TIntegerField;
    QCheIMPORTE: TFloatField;
    QCheFIRMANTE: TStringField;
    QCheDESTINO: TStringField;
    QCheTIPO_COMPROB: TStringField;
    QCheCLASE_COMPROB: TStringField;
    QCheLETRA: TStringField;
    QCheSUCURSAL: TIntegerField;
    QCheNRO_COMPROBANTE: TStringField;
    QCheID_COMPROBANTE: TIntegerField;
    QCheCTACAJAINGRESO: TIntegerField;
    QCheCAJAINGRESO: TStringField;
    QCheID_TIPOCOMPROB: TIntegerField;
    QCheCOMPROBANTE: TStringField;
    QCheDISPONIBLE: TStringField;
    QCheBANCO: TStringField;
    QCheNOMBRESUCURSAL: TStringField;
    CDSCheIMPORTE: TFloatField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_ENTRADA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1FIRMANTE: TcxGridDBColumn;
    cxGrid1DBTableView1DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1LETRA: TcxGridDBColumn;
    cxGrid1DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1CTACAJAINGRESO: TcxGridDBColumn;
    cxGrid1DBTableView1CAJAINGRESO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_TIPOCOMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1DISPONIBLE: TcxGridDBColumn;
    cxGrid1DBTableView1BANCO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRESUCURSAL: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CHEQUE_TER: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label2: TLabel;
    QCheFECHA_EMISION: TSQLTimeStampField;
    QCheFECHA_ENTRADA: TSQLTimeStampField;
    QCheFECHA_SALIDA: TSQLTimeStampField;
    QCheFECHA_COBRO: TSQLTimeStampField;
    CDSCheFECHA_EMISION: TSQLTimeStampField;
    CDSCheFECHA_ENTRADA: TSQLTimeStampField;
    CDSCheFECHA_SALIDA: TSQLTimeStampField;
    CDSCheFECHA_COBRO: TSQLTimeStampField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoChe3PorCpbte: TFormListadoChe3PorCpbte;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoChe3PorCpbte.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(CDSChe.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='Cheques';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog1.FileName);
            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
          end;
    end;
end;


procedure TFormListadoChe3PorCpbte.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSChe.Close;
  CDSChe.Params.ParamByName('desde').Value:=Desde.Date;
  CDSChe.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSChe.Open;

  cxGrid1DBTableView1.ViewData.Expand(True);

end;

procedure TFormListadoChe3PorCpbte.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoChe3PorCpbte.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
end;


procedure TFormListadoChe3PorCpbte.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoChe3PorCpbte:=nil;
end;

procedure TFormListadoChe3PorCpbte.ImprimirExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSChe.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoChe3porCpbte.fr3');
      frxReport.Variables['Desde']   :=''''+DateToStr(Desde.Date)+'''';
      frxReport.Variables['Hasta']   :=''''+DateToStr(Hasta.Date)+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoChe3PorCpbte.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoChe3PorCpbte.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  inherited;
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
  //  Desde.SetFocus;

end;

end.
