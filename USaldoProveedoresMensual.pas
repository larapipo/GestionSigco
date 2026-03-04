unit USaldoProveedoresMensual;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, frxDBSet, frxClass, Provider, Db, DBClient, Grids,
  ActnList, StdCtrls, Buttons, ToolWin, ComCtrls,
  JvExControls, JvGradient, frxExportHTML, frxExportPDF,
  frxExportXLS, frxExportRTF, frxExportCSV, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvDBGridFooter, DBGrids,
  JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions,
  Vcl.Menus, DataExport, DataToXLS, JvComponentBase, Vcl.ImgList, Vcl.ExtCtrls,
  CompBuscador,VirtualUI_SDK, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormSaldoProveedorMensual = class(TFormABMBase)
    DSSaldos: TDataSource;
    frSaldos: TfrxReport;
    frDBSaldos: TfrxDBDataset;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    XLSSaldos: TDataToXLS;
    pMenu: TPopupMenu;
    ExportarXLS1: TMenuItem;
    ExportarXLS: TAction;
    SaveDialog: TSaveDialog;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    frxDBEmpresa: TfrxDBDataset;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1ULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTEULTIMOPAGO: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO30: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO60: TcxGridDBColumn;
    cxGrid1DBTableView1VENCIDO90: TcxGridDBColumn;
    cxGrid1DBTableView1MUYVENCIDO: TcxGridDBColumn;
    cxGrid1DBTableView1ANTICIPOS: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    QSaldos: TFDQuery;
    QSaldosCODIGO: TStringField;
    QSaldosNOMBRE: TStringField;
    QSaldosIMPORTEULTIMOPAGO: TFloatField;
    QSaldosVENCIDO30: TFloatField;
    QSaldosVENCIDO60: TFloatField;
    QSaldosVENCIDO90: TFloatField;
    QSaldosMUYVENCIDO: TFloatField;
    QSaldosANTICIPOS: TFloatField;
    QSaldosTOTAL: TFloatField;
    QSaldosSALDO: TFloatField;
    Panel2: TPanel;
    RxLabel8: TJvLabel;
    dbcSucursal: TJvDBLookupCombo;
    QSaldosULTIMOPAGO: TSQLTimeStampField;
    Panel3: TPanel;
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxGrid1DBTableView1ColumnHeaderClick(Sender: TcxGridTableView;
      AColumn: TcxGridColumn);
  private
    { Private declarations }
  public
    { Public declarations }
   Aux_0,Aux_1,Aux_2,Aux_3,Aux_4,Aux_5:Extended;
   Mascara:String;

  end;

var
  FormSaldoProveedorMensual: TFormSaldoProveedorMensual;

implementation

uses UDMain_FD;

{$R *.DFM}


procedure TFormSaldoProveedorMensual.BuscarExecute(Sender: TObject);
const
  meses: array[1..12] of string =('Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic');
var
  desde1,desde2,desde3:TDateTime;
  Titulo1,Titulo2,Titulo3:String;
  d,m,a:word;
begin
//  inherited;
  screen.Cursor:=crHourGlass;

  Mascara:= ',0.00;-,0.00;-';

  DecodeDate(date,a,m,d);
  desde1:=EncodeDate(a,m,1);
  desde2:=IncMonth(Desde1,-1);// encodedate(a,m-1,1);
  desde3:=IncMonth(Desde1,-2); // encodedate(a,m-2,1);

  QSaldos.Close;
  QSaldos.IndexDefs.Clear;
  QSaldos.IndexName:='';
  QSaldos.ParamByName('desde1').Value:=desde1;
  QSaldos.ParamByName('desde2').Value:=desde2;
  QSaldos.ParamByName('desde3').Value:=desde3;
  QSaldos.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  QSaldos.Open;


  QSaldosVENCIDO30.DisplayLabel:=meses[m];
  if m=2 Then
    begin
      QSaldosVENCIDO60.DisplayLabel:=meses[1];
      QSaldosVENCIDO90.DisplayLabel:=meses[12];
    end
  else
    if m=1 Then
      begin
        QSaldosVENCIDO60.DisplayLabel:=meses[12];
        QSaldosVENCIDO90.DisplayLabel:=meses[11];
      end
    else
      begin
        QSaldosVENCIDO60.DisplayLabel:=meses[m-1];
        QSaldosVENCIDO90.DisplayLabel:=meses[m-2];
      end;
  screen.Cursor:=crDefault;
  //Suma;
  //dbgSaldos.Refresh;

end;
procedure TFormSaldoProveedorMensual.ImprimirExecute(Sender: TObject);
begin
  inherited;

  CDSEmpresa.Close;
  CDSEmpresa.Open;

  frSaldos.PrintOptions.Printer:=PrNomListados;
  frSaldos.SelectPrinter;
  frSaldos.LoadFromFile(DMMain_FD.PathReportesLst+'\SaldosMensuales.fr3');
  frSaldos.Variables['Mascara']  :=''''+Mascara+'''';
  frSaldos.Variables['Sucursal'] :=''''+dbcSucursal.Text+'''';
  frSaldos.Variables['Mes1']     :=''''+QSaldosVENCIDO30.DisplayLabel+'''';
  frSaldos.Variables['Mes2']     :=''''+QSaldosVENCIDO60.DisplayLabel+'''';
  frSaldos.Variables['Mes3']     :=''''+QSaldosVENCIDO90.DisplayLabel+'''';
  frSaldos.Variables['Titulo']   :='''De Proveedores''';
  frSaldos.Variables['SubTitulo']:=''' ''';

  // frCtaCte.PrepareReport;
  frSaldos.ShowReport;
  CDSEmpresa.Close;

end;


procedure TFormSaldoProveedorMensual.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSEmpresa.Close;
  QSaldos.Close;
  CDSSucursal.Close;
  Action:=caFree;
end;

procedure TFormSaldoProveedorMensual.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSEmpresa.Open;
  CDSSucursal.Open;
end;

procedure TFormSaldoProveedorMensual.FormDestroy(Sender: TObject);
begin
  inherited;
  FormSaldoProveedorMensual:=nil;
end;

procedure TFormSaldoProveedorMensual.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frSaldos.DesignReport;
end;


procedure TFormSaldoProveedorMensual.cxGrid1DBTableView1ColumnHeaderClick(
  Sender: TcxGridTableView; AColumn: TcxGridColumn);
begin
  inherited;
  sbEstado.SimplePanel:=True;
  sbEstado.SimpleText:=AColumn.Caption;
  // ORDENAR EN FIREDAC
  // sincroniza cxGrid con Datos al ordenar
  if QSaldos.IndexFieldNames = TcxGridDBColumn(AColumn).DataBinding.FieldName then
    QSaldos.IndexFieldNames := TcxGridDBColumn(AColumn).DataBinding.FieldName + ':DN'
  Else
    QSaldos.IndexFieldNames := TcxGridDBColumn(AColumn).DataBinding.FieldName;

end;

procedure TFormSaldoProveedorMensual.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

 if Not(QSaldos.IsEmpty) then
     begin
      SaveDialog.DefaultExt:='XLS';
      SaveDialog.FileName:='SaldosCompras';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute then
          if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              XLSSaldos.SaveToFile(SaveDialog.FileName)
            else
              XLSSaldos.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog.FileName);
          end;
    end;
end;

end.