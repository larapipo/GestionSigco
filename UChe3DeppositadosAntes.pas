unit UChe3DeppositadosAntes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask,
    Grids, DBGrids,Librerias, frxClass, frxDBSet, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr,
  Provider, DBClient, DataExport, DataToXLS, frxExportRTF,
  frxExportPDF, frxExportCSV, Spin,DateUtils, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView,
  cxGrid, dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  System.Actions, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  JvAppStorage, JvAppIniStorage,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList;

type
  TFormChe3DepositadoAntes = class(TFormABMBase)
    DSChe3: TDataSource;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frxDBChe3: TfrxDBDataset;
    CDSChe3: TClientDataSet;
    DSPChe3: TDataSetProvider;
    CDSChe3FECHA_COBRO: TSQLTimeStampField;
    CDSChe3FECHA_EMISION: TSQLTimeStampField;
    CDSChe3FECHA_SALIDA: TSQLTimeStampField;
    CDSChe3DESTINO: TStringField;
    CDSChe3FIRMANTE: TStringField;
    CDSChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    CDSChe3NUMERO: TIntegerField;
    CDSChe3ORIGEN: TStringField;
    CDSChe3NOMBRE: TStringField;
    CDSChe3MUESTRABANCO: TStringField;
    frxCSVExport1: TfrxCSVExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    btExportarXLS: TBitBtn;
    ToolButton1: TToolButton;
    CDSChe3FECHA_COBRO_MAS_CLE: TDateField;
    pcDetalle: TPageControl;
    pag1: TTabSheet;
    DBGrid1: TDBGrid;
    pag2: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA_COBRO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_EMISION: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_SALIDA: TcxGridDBColumn;
    cxGrid1DBTableView1DESTINO: TcxGridDBColumn;
    cxGrid1DBTableView1FIRMANTE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CUENTA_BCO_DEPOSITADO: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1ORIGEN: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRABANCO: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_COBRO_MAS_CLE: TcxGridDBColumn;
    QChe3: TFDQuery;
    CDSChe3IMPORTE: TFloatField;
    Panel2: TPanel;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    Label1: TLabel;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    FechaActual: TJvDateEdit;
    spClearing: TSpinEdit;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure CDSChe3CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormChe3DepositadoAntes: TFormChe3DepositadoAntes;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormChe3DepositadoAntes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSChe3.Close;
  CDSChe3.Params.ParamByName('desde').AsDate :=Desde.Date;
  CDSChe3.Params.ParamByName('hasta').AsDate :=Hasta.Date;
  CDSChe3.Params.ParamByName('Fecha').AsDate :=FechaActual.Date;
  CDSChe3.OPen;

end;

procedure TFormChe3DepositadoAntes.CDSChe3CalcFields(DataSet: TDataSet);
begin
  inherited;
  if DayOfWeek(CDSChe3FECHA_COBRO.AsDateTime)=1 then
    CDSChe3FECHA_COBRO_MAS_CLE.AsDateTime:=IncDay(CDSChe3FECHA_COBRO.AsDateTime,3)
  else
    if DayOfWeek(CDSChe3FECHA_COBRO.AsDateTime)=5 then
      CDSChe3FECHA_COBRO_MAS_CLE.AsDateTime:=IncDay(CDSChe3FECHA_COBRO.AsDateTime,4)
    else
      if DayOfWeek(CDSChe3FECHA_COBRO.AsDateTime)=6 then
        CDSChe3FECHA_COBRO_MAS_CLE.AsDateTime:=IncDay(CDSChe3FECHA_COBRO.AsDateTime,4)
      else
        if DayOfWeek(CDSChe3FECHA_COBRO.AsDateTime)=7 then
          CDSChe3FECHA_COBRO_MAS_CLE.AsDateTime:=IncDay(CDSChe3FECHA_COBRO.AsDateTime,4)
        else
          CDSChe3FECHA_COBRO_MAS_CLE.AsDateTime:=IncDay(CDSChe3FECHA_COBRO.AsDateTime,spClearing.Value);



end;

procedure TFormChe3DepositadoAntes.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.FileName  :='ChequesDepositados';
  SaveDialog1.DefaultExt:='xls';
  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if Not(CDSChe3.IsEmpty) then
    if SaveDialog1.Execute then
      if SaveDialog1.FileName<>'' then
         begin
           DataToXLS.SaveToFile(SaveDialog1.FileName);

           if VirtualUI.Active then
             VirtualUI.DownloadFile(SaveDialog1.FileName);
         end;

end;

procedure TFormChe3DepositadoAntes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormChe3DepositadoAntes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  pcDetalle.ActivePageIndex:=0;
end;

procedure TFormChe3DepositadoAntes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormChe3DepositadoAntes:=nil;
end;

procedure TFormChe3DepositadoAntes.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  FechaActual.Date:=Date;
  Buscar.Execute;
end;


procedure TFormChe3DepositadoAntes.ImprimirExecute(Sender: TObject);
begin
  inherited;
inherited;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoCheAntesDepositado.fr3');
  frxReport.Variables['Desde']:=''''+Desde.Text+'''';
  frxReport.Variables['Hasta']:=''''+hasta.Text+'''';
  frxReport.ShowReport;
end;

procedure TFormChe3DepositadoAntes.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormChe3DepositadoAntes.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
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