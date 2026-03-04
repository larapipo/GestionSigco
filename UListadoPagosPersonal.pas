unit UListadoPagosPersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, DB, SqlExpr,StrUtils,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,DateUtils,
  Mask, JvExMask, JvToolEdit,cxGridExportLink, dxSkinsCore, dxSkinBlue,
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
  dxSkinscxPCPainter, cxNavigator, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,VirtualUI_SDK,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormListadoPagoPersonal = class(TFormABMBase)
    CDSMovimientos: TClientDataSet;
    DSPMovimientos: TDataSetProvider;
    DSmovimientos: TDataSource;
    CDSMovimientosFECHA: TSQLTimeStampField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosCLASECPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosCODIGO: TStringField;
    CDSMovimientosNOMBRE: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosID_MOV_CAJA: TIntegerField;
    CDSMovimientosID_FPAGO: TIntegerField;
    CDSMovimientosID_TPAGO: TIntegerField;
    CDSMovimientosMUESTRATIPOPAGO: TStringField;
    CDSMovimientosMUESTRAFPAGO: TStringField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1MUESTRAFPAGO: TcxGridDBColumn;
    pnCabecera: TPanel;
    CDSMovimientosEMPLEADO: TStringField;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    SaveDialog1: TSaveDialog;
    CDSMovimientosMUESTRAMOTIVO: TStringField;
    cxGrid1DBTableView1MOTIVO: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    QMovimientos: TFDQuery;
    CDSMovimientosIMPORTE: TFloatField;
    CDSMovimientosDEBE: TFloatField;
    CDSMovimientosHABER: TFloatField;
    Label1: TLabel;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    desde: TJvDateEdit;
    Label3: TLabel;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoPagoPersonal: TFormListadoPagoPersonal;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormListadoPagoPersonal.btExcelClick(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSMovimientos.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Movimientos';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        begin
          if VirtualUI.Active then
            if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
              SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

          ExportGridToExcel(SaveDialog1.FileName, cxGrid1);
          Sleep(1000);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog1.FileName);
        end;

    END
  end;

procedure TFormListadoPagoPersonal.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSMovimientos.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSMovimientos.Open;
  cxGrid1DBTableView1.ViewData.Expand(True);
end;

procedure TFormListadoPagoPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoPagoPersonal.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=False;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
end;

procedure TFormListadoPagoPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoPagoPersonal:=nil;
end;

procedure TFormListadoPagoPersonal.FormResize(Sender: TObject);
begin
  inherited;
  if FormListadoPagoPersonal<>nil then
    if FormListadoPagoPersonal.Width<>1107 then
      FormListadoPagoPersonal.Width:=1107;
end;

procedure TFormListadoPagoPersonal.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
