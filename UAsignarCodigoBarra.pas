unit UAsignarCodigoBarra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, IBGenerator,
  Variants, JvComponentBase, ImgList,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvDBLookup, SqlExpr, Datasnap.Provider, Datasnap.DBClient, JvAppStorage,
  JvAppIniStorage, System.Actions, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlue,
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
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit,
  cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, JvExDBGrids,
  JvDBGrid, frxClass, frxDBSet, frxDesgn, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, System.ImageList,
  frCoreClasses;

type
  TFormAsignaCodigoBarra = class(TFormABMBase)
    DSCodigoBarra: TDataSource;
    ibgIdCodBarra: TIBGenerator;
    QPresentacion: TFDQuery;
    QPresentacionID: TIntegerField;
    QPresentacionDETALLE: TStringField;
    edBuscador: TJvDBFindEdit;
    Label4: TLabel;
    DSStock: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    frxReport: TfrxReport;
    frDSCodigoBarra: TfrxDBDataset;
    frDSStock: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QStock: TFDQuery;
    QCodBarra: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockREEMPLAZO_STK: TStringField;
    QStockUSA_CODIGOBARRA: TStringField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QCodBarraCODIGO_STK: TStringField;
    QCodBarraCODIGOBARRA: TStringField;
    QCodBarraPRESENTACION: TIntegerField;
    QCodBarraPRESENTACION_CANTIDAD: TFloatField;
    QCodBarraID: TIntegerField;
    dbgCodigos: TDBGrid;
    cxGrid1DBTableView1CODIGO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid1DBTableView1REEMPLAZO_STK: TcxGridDBColumn;
    cxGrid1DBTableView1USA_CODIGOBARRA: TcxGridDBColumn;
    QRub: TFDQuery;
    QSubRub: TFDQuery;
    QRubCODIGO_RUBRO: TStringField;
    QRubDETALLE_RUBRO: TStringField;
    QRubCONTROL_RUBRO: TStringField;
    QRubFUERA_PROMO: TStringField;
    QRubORDEN: TIntegerField;
    QSubRubCODIGO_SUBRUBRO: TStringField;
    QSubRubDETALLE_SUBRUBRO: TStringField;
    QSubRubCODIGO_RUBRO: TStringField;
    QSubRubCONTROL_SUBRUBRO: TStringField;
    QSubRubFUERA_PROMO: TStringField;
    dbcRubro: TJvDBLookupCombo;
    dbcSubRubro: TJvDBLookupCombo;
    DSRub: TDataSource;
    DSSubRub: TDataSource;
    Filtrar: TAction;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure cbSubRubroClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure cxGStockDBTableView1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure QCodBarraAfterPost(DataSet: TDataSet);
    procedure QCodBarraBeforePost(DataSet: TDataSet);
    procedure QStockAfterPost(DataSet: TDataSet);
    procedure QCodBarraNewRecord(DataSet: TDataSet);
    procedure QCodBarraAfterDelete(DataSet: TDataSet);
    procedure FiltrarExecute(Sender: TObject);
    procedure dbcRubroClick(Sender: TObject);
    procedure dbcSubRubroClick(Sender: TObject);
    procedure cxGrid1DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignaCodigoBarra: TFormAsignaCodigoBarra;

implementation

uses UDMain_FD, UStock_2;

{$R *.DFM}

procedure TFormAsignaCodigoBarra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  cxGStockDBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid
  if QCodBarra.State <> dsBrowse then
    QCodBarra.Post;

  if QStock.State <> dsBrowse then
    QStock.Post;

  QCodBarra.Close;
  QStock.Close;
  inherited;
  QPresentacion.Close;
  Action:=caFree;
end;

procedure TFormAsignaCodigoBarra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignaCodigoBarra:=nil;
end;

procedure TFormAsignaCodigoBarra.FormResize(Sender: TObject);
begin
  inherited;
  if FormAsignaCodigoBarra<>nil then
    if FormAsignaCodigoBarra.Width<>1066 then
      FormAsignaCodigoBarra.Width:=1066;

end;

procedure TFormAsignaCodigoBarra.QCodBarraAfterDelete(DataSet: TDataSet);
begin
  inherited;
  QCodBarra.ApplyUpdates(-1)
end;

procedure TFormAsignaCodigoBarra.QCodBarraAfterPost(DataSet: TDataSet);
begin
  inherited;
   QCodBarra.ApplyUpdates(-1)
end;



procedure TFormAsignaCodigoBarra.QCodBarraBeforePost(DataSet: TDataSet);
begin
  inherited;
  if QStockUSA_CODIGOBARRA.Value<>'S' Then
    begin
      QCodBarra.Cancel;
      sysUtils.Abort;
    end;
end;

procedure TFormAsignaCodigoBarra.QCodBarraNewRecord(DataSet: TDataSet);
begin
  inherited;
  QCodBarraID.Value                    := ibgIdCodBarra.IncrementFD(1);
  QCodBarraPRESENTACION_CANTIDAD.Value := 1;
  QCodBarraPRESENTACION.Value          := QPresentacionID.Value;
end;

procedure TFormAsignaCodigoBarra.QStockAfterPost(DataSet: TDataSet);
begin
  inherited;
  QStock.ApplyUpdates(0);
end;

procedure TFormAsignaCodigoBarra.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormAsignaCodigoBarra.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize     := False;
  QPresentacion.Close;
  QPresentacion.Open;
  QRub.Close;
  QSubRub.Close;
  QRub.open;
  QSubRub.Open;
  Buscar.Execute;
end;

procedure TFormAsignaCodigoBarra.FiltrarExecute(Sender: TObject);
begin
  inherited;
  if QCodBarra.State <> dsBrowse then
    QCodBarra.Post;

  if QStock.State <> dsBrowse then
    QStock.Post;

  QStock.Close;
  QStock.ParamByName('RUBRO').AsString  := dbcRubro.KeyValue;
  QStock.ParamByName('SUBRUB').AsString := dbcSubRubro.KeyValue;
  QStock.Open;
  edBuscador.Text := '';
end;

procedure TFormAsignaCodigoBarra.btImprimirClick(Sender: TObject);
begin
  inherited;
  if Not(QStock.IsEmpty) then
    begin
      QStock.IndexFieldNames         := 'MUESTRARUBRO';
      frxReport.PrintOptions.Printer := PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\Stock_CodBarra.fr3');
      frxReport.ShowReport;
      QStock.IndexFieldNames:='CODIGO_STK';
    end;
end;

procedure TFormAsignaCodigoBarra.BuscarExecute(Sender: TObject);
begin
//  inherited;
  QStock.Close;
  QStock.ParamByName('RUBRO').AsString  := dbcRubro.KeyValue;
  QStock.ParamByName('SUBRUB').AsString := dbcSubRubro.KeyValue;
  QStock.Open;

  QCodBarra.Close;
  QCodBarra.Open;
 // if cxGrid1<>nil then
 //   cxGrid1.SetFocus;
  //cxGStockDBTableView1.ViewData.Expand(True); //<<<<<<<<  para expandir cxGrid

end;

procedure TFormAsignaCodigoBarra.cbSubRubroClick(Sender: TObject);
begin
  inherited;
 // Buscar.Execute;
end;

procedure TFormAsignaCodigoBarra.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
  pnPrincipal.Enabled:=True;
end;


procedure TFormAsignaCodigoBarra.ConfirmaExecute(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormAsignaCodigoBarra.cxGrid1DBTableView1CellClick(
  Sender: TcxCustomGridTableView; ACellViewInfo: TcxGridTableDataCellViewInfo;
  AButton: TMouseButton; AShift: TShiftState; var AHandled: Boolean);
begin
  inherited;
 // dbgCodigos.SetFocus;
end;

procedure TFormAsignaCodigoBarra.cxGStockDBTableView1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormStock_2)) then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=QStockCODIGO_STK.Value;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormAsignaCodigoBarra.dbcRubroClick(Sender: TObject);
begin
  inherited;
  dbcSubRubro.KeyValue:='*****';
  Filtrar.Execute;
end;

procedure TFormAsignaCodigoBarra.dbcSubRubroClick(Sender: TObject);
begin
  inherited;
  Filtrar.Execute;
end;

end.
