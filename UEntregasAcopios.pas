unit UEntregasAcopios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList,  ActnList, ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  DBClient, Provider, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Grids,
  DBGrids, cxGridChartView, cxGridDBChartView, frxClass, frxDBSet,
  cxCustomPivotGrid, cxDBPivotGrid, CheckLst, JvExExtCtrls, JvExtComponent,
  JvPanel, cxCurrencyEdit, cxMaskEdit, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxEditorProducers, dxPScxExtEditorProducers, dxPSCore, dxPScxPivotGridLnk,
  dxPScxCommon, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, cxCalc,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage,
  System.Actions, dxPScxGridLnk, dxPScxGridLayoutViewLnk, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu, System.ImageList,
  Vcl.Menus;

type
  TFormListadoEntregasAcopios = class(TFormABMBase)
    DSPAcopiosCab: TDataSetProvider;
    DSPAcopiosDet: TDataSetProvider;
    DSPDetalleEntregas: TDataSetProvider;
    CDSDetalleEntregas: TClientDataSet;
    CDSAcopioCab: TClientDataSet;
    CDSAcopioDet: TClientDataSet;
    CDSAcopioCabID: TIntegerField;
    CDSAcopioCabFECHA: TSQLTimeStampField;
    CDSAcopioCabCLIENTE: TStringField;
    CDSAcopioCabNOMBRE: TStringField;
    CDSAcopioCabDIRECCION: TStringField;
    CDSAcopioCabCPOSTAL: TStringField;
    CDSAcopioCabLOCALIDAD: TStringField;
    CDSAcopioCabNROCPBTE: TStringField;
    CDSAcopioCabID_FACTURA: TIntegerField;
    CDSAcopioCabCUMPLIDO: TStringField;
    CDSAcopioDetID: TIntegerField;
    CDSAcopioDetID_CAB: TIntegerField;
    CDSAcopioDetCODIGO: TStringField;
    CDSAcopioDetDETALLE: TStringField;
    CDSAcopioDetFECHA_ULTIMAENTREGA: TSQLTimeStampField;
    CDSAcopioDetCUMPLIDO: TStringField;
    CDSDetalleEntregasID: TIntegerField;
    CDSDetalleEntregasID_CAB: TIntegerField;
    CDSDetalleEntregasFECHA: TSQLTimeStampField;
    CDSDetalleEntregasTIPOCPBTE: TStringField;
    CDSDetalleEntregasCLASECPBTE: TStringField;
    CDSDetalleEntregasDEPOSITO: TIntegerField;
    CDSDetalleEntregasCODIGO: TStringField;
    CDSDetalleEntregasDETALLE: TStringField;
    CDSDetalleEntregasID_MERCA_ACOPIO_DET: TIntegerField;
    CDSDetalleEntregasNROCPBTE: TStringField;
    DSAcopioCab: TDataSource;
    DSAcopioDet: TDataSource;
    DSEntregas: TDataSource;
    BitBtn1: TBitBtn;
    frxReporte: TfrxReport;
    frxDBCab: TfrxDBDataset;
    frxDBDet: TfrxDBDataset;
    frxDBEntregas: TfrxDBDataset;
    Imprimir: TAction;
    DSPDetEntregas: TDataSetProvider;
    CDSDetEntregas: TClientDataSet;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1CLIENTE: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView2CANTIDAD: TcxGridDBColumn;
    cxGrid1DBTableView2ENTREGADO: TcxGridDBColumn;
    cxGrid1DBTableView2SALDO: TcxGridDBColumn;
    cxGrid1DBTableView3: TcxGridDBTableView;
    cxGrid1DBTableView3FECHA: TcxGridDBColumn;
    cxGrid1DBTableView3TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView3CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView3NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView3CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView3DETALLE: TcxGridDBColumn;
    cxGrid1DBTableView3CANTIDAD: TcxGridDBColumn;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1Level3: TcxGridLevel;
    rgEstado: TRadioGroup;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DSDetEntrega: TDataSource;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    CDSDetEntregasFECHA: TSQLTimeStampField;
    CDSDetEntregasCLIENTE: TStringField;
    CDSDetEntregasNOMBRE: TStringField;
    CDSDetEntregasDIRECCION: TStringField;
    CDSDetEntregasNROCPBTE: TStringField;
    CDSDetEntregasID_FACTURA: TIntegerField;
    CDSDetEntregasID: TIntegerField;
    CDSDetEntregasID_CAB: TIntegerField;
    CDSDetEntregasCODIGO: TStringField;
    CDSDetEntregasDETALLE: TStringField;
    CDSDetEntregasFECHAENTREGA: TSQLTimeStampField;
    CDSDetEntregasTPCPBTENTREGA: TStringField;
    CDSDetEntregasCLCPBTEENTREGA: TStringField;
    CDSDetEntregasNROCPBTEENTREGA: TStringField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label1: TLabel;
    SpeedButton1: TSpeedButton;
    chOpSumas: TCheckListBox;
    Label2: TLabel;
    Label3: TLabel;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    BitBtn2: TBitBtn;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    QAcopiosCab: TFDQuery;
    QAcopiosDet: TFDQuery;
    CDSAcopioDetCANTIDAD: TFloatField;
    CDSAcopioDetID_FCDET: TIntegerField;
    CDSAcopioDetENTREGADO: TFloatField;
    CDSAcopioDetSALDO: TFloatField;
    QDetalleEntregas: TFDQuery;
    CDSDetalleEntregasCANTIDAD: TFloatField;
    QDetEntregas: TFDQuery;
    CDSDetEntregasCANTIDAD: TFloatField;
    CDSDetEntregasENTREGADO: TFloatField;
    CDSDetEntregasSALDO: TFloatField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TAction;
    LimpiarFiltros1: TMenuItem;
    procedure BuscarExecute(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure LimpiarFiltrosExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoEntregasAcopios: TFormListadoEntregasAcopios;

implementation

{$R *.dfm}

uses UDMain_FD, UAcopio;

procedure TFormListadoEntregasAcopios.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoEntregasAcopios.BuscarExecute(Sender: TObject);
VAR Estado:String;
i:integer;
begin
  inherited;
  case rgEstado.ItemIndex of
    0:Estado:='S';
    1:Estado:='N';
    2:Estado:='*';
  end;
  CDSAcopioCab.Close;
  CDSAcopioCab.Params.ParamByName('Estado').Value:=Estado;
  CDSAcopioCab.Open;

  CDSAcopioDet.Close;
  CDSAcopioDet.Params.ParamByName('id').Value      := CDSAcopioCabID.AsInteger;
  CDSAcopioDet.Open;

  CDSDetalleEntregas.Close;
  CDSDetalleEntregas.Params.ParamByName('id').Value:= CDSAcopioDetID.AsInteger;
  CDSDetalleEntregas.Open;

  CDSDetEntregas.Close;
  CDSDetEntregas.Open;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

  end;

procedure TFormListadoEntregasAcopios.chOpSumasClick(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
end;

procedure TFormListadoEntregasAcopios.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
   if not (Assigned(FormAcopio)) then
    FormAcopio := TFormAcopio.Create(Self);
  FormAcopio.DatoNew:=CDSAcopioCabID.AsString;
  FormAcopio.Recuperar.Execute;
  FormAcopio.Show;

end;

procedure TFormListadoEntregasAcopios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaAcopios');
  Action:=caFree;
end;

procedure TFormListadoEntregasAcopios.FormCreate(Sender: TObject);
var i:Integer;
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields   := False;
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaAcopios');
  //*************************************************************
  PageControl1.ActivePageIndex:=0;
  for i := 0 to chOpSumas.Count - 1 do
    chOpSumas.Checked[i]:=True;

  AutoSize:=False;
end;

procedure TFormListadoEntregasAcopios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoEntregasAcopios:=nil;
end;

procedure TFormListadoEntregasAcopios.ImprimirExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSAcopioCab.IsEmpty) Then
    begin
      frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;
      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoEntregasAcopios.fr3');
      frxReporte.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoEntregasAcopios.Label2Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoEntregasAcopios.Label3Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormListadoEntregasAcopios.LimpiarFiltrosExecute(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if PageControl1.ActivePageIndex=1 then
     APivot:=cxDBPivotGrid1;

   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormListadoEntregasAcopios.sbEstadoClick(Sender: TObject);
begin
  inherited;
 frxReporte.DesignReport;
end;

procedure TFormListadoEntregasAcopios.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  pnTotales.Visible:=False;
end;

end.
