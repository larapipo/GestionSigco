unit UListadoGralCCtePersonal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGrid, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Buttons,DateUtils,
  Vcl.ComCtrls,cxGridExportLink,VirtualUI_SDK, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormListadoCCtaPersonal = class(TForm)
    pnCabecera: TPanel;
    pnBase: TPanel;
    pnPie: TPanel;
    QCtaCTes: TFDQuery;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QCtaCTesID: TIntegerField;
    QCtaCTesIDADELANTO: TIntegerField;
    QCtaCTesCODIGO: TStringField;
    QCtaCTesNOMBRE: TStringField;
    QCtaCTesFECHA: TSQLTimeStampField;
    QCtaCTesCLASECOMP: TStringField;
    QCtaCTesNROCPBTE: TStringField;
    QCtaCTesDETALLE: TStringField;
    QCtaCTesDEBE: TFloatField;
    QCtaCTesHABER: TFloatField;
    DSCtaCtes: TDataSource;
    QCtaCTesCODIGONOMBRE: TStringField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1IDADELANTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECOMP: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGONOMBRE: TcxGridDBColumn;
    edDesde: TJvDateEdit;
    edHasta: TJvDateEdit;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    btExcel: TBitBtn;
    dlgSave1: TSaveDialog;
    Label3: TLabel;
    procedure QCtaCTesCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
    TFecha:TDate;
  public
    { Public declarations }
  published
    property Desde:TDate read TFecha write TFecha;
    property Hasta:TDate read TFecha write TFecha;
  end;

var
  FormListadoCCtaPersonal: TFormListadoCCtaPersonal;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoCCtaPersonal.BitBtn1Click(Sender: TObject);
begin
  QCtaCTes.Close;
  QCtaCTes.ParamByName('Desde').AsDate:=edDesde.Date;
  QCtaCTes.ParamByName('Hasta').AsDate:=edHasta.Date;
  QCtaCTes.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormListadoCCtaPersonal.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  dlgSave1.FileName:='SaldosClientes';
  dlgSave1.DefaultExt:='xls';

  if VirtualUI.Active then
    dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

  if dlgSave1.Execute Then
   if dlgSave1.FileName<>'' Then
     begin
       if VirtualUI.Active then
         dlgSave1.FileName:=dlgSave1.FileName+'.'+dlgSave1.DefaultExt;

       if VirtualUI.Active then
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1)
       else
         cxGridExportLink.ExportGridToExcel(dlgSave1.FileName , cxGrid1);

       if VirtualUI.Active then
         begin
           VirtualUI.StdDialogs:=False;
           VirtualUI.DownloadFile(dlgSave1.FileName);
         end;
     end;
end;

procedure TFormListadoCCtaPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormListadoCCtaPersonal.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormListadoCCtaPersonal.FormDestroy(Sender: TObject);
begin
  FormListadoCCtaPersonal:=nil ;
end;

procedure TFormListadoCCtaPersonal.FormResize(Sender: TObject);
begin
  if FormListadoCCtaPersonal<>nil then
    if FormListadoCCtaPersonal.Width<>865 then
      FormListadoCCtaPersonal.Width:=865;
end;

procedure TFormListadoCCtaPersonal.FormShow(Sender: TObject);
begin
  edHasta.Date := Desde;
  edDesde.Date := Hasta;

  QCtaCTes.Close;
  QCtaCTes.ParamByName('Desde').AsDate:=edDesde.Date;
  QCtaCTes.ParamByName('Hasta').AsDate:=edHasta.Date;
  QCtaCTes.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormListadoCCtaPersonal.QCtaCTesCalcFields(DataSet: TDataSet);
begin
  QCtaCTesCODIGONOMBRE.AsString:=QCtaCTesCODIGO.AsString+'-'+QCtaCTesNOMBRE.AsString;
end;

procedure TFormListadoCCtaPersonal.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(edDesde.Date,y,m,d);
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

  edDesde.Date:=EncodeDate(y,m,1);
  edHasta.Date:=EncodeDate(y,m,DaysInMonth(edDesde.Date));

  QCtaCTes.Close;
  QCtaCTes.ParamByName('Desde').AsDate:=edDesde.Date;
  QCtaCTes.ParamByName('Hasta').AsDate:=edHasta.Date;
  QCtaCTes.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

end.
