unit UVtasRubro_Subrubro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, VCL.Forms, Dialogs,
  UABMBase,   Grids, DBGrids, ComCtrls, StdCtrls, Mask,StrUtils,
  Buttons, ToolWin, ExtCtrls,Librerias, Menus,  frxDBSet,
  frxClass,   ImgList, JvExControls, JvGradient, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExMask, JvToolEdit, JvDBLookup, Provider, DBClient, JvExDBGrids, JvDBGrid,
  JvDBGridExport, JvBaseDlg, JvProgressDialog, JvExComCtrls, JvProgressBar,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, VclTee.TeeGDIPlus, dxSkinsCore,
  dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator, VCLTee.TeEngine,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, System.Actions,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Samples.Spin, JvAppStorage,
  JvAppIniStorage, Data.DB, Vcl.ActnList, CompBuscador,VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, dxBarBuiltInMenu,
  cxCustomPivotGrid, cxDBPivotGrid, cxGridChartView, cxGridDBChartView,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPScxCommon, dxPSCore,cxExportPivotGridLink, dxPScxVGridLnk, frCoreClasses,
  AdvSmoothButton;

type
  TFormVtaRubro_SubRubro = class(TFormABMBase)
    DSVta: TDataSource;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frxReporte: TfrxReport;
    frDSVta: TfrxDBDataset;
    DSBuscaRubros: TDataSource;
    dbcRubro: TJvDBLookupCombo;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroCODIGO_RUBRO: TStringField;
    CDSBuscaRubroDETALLE_RUBRO: TStringField;
    CDSVta: TClientDataSet;
    DSPVta: TDataSetProvider;
    CDSVtaRUBRO: TStringField;
    CDSVtaSUBRUBRO: TStringField;
    JvDBGridExcelExport1: TJvDBGridExcelExport;
    ExportarExcel: TAction;
    SaveDialog1: TSaveDialog;
    btExcel: TBitBtn;
    JvProgressBar1: TJvProgressBar;
    Label1: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    Label2: TLabel;
    pcVentas: TPageControl;
    TabSheet1: TTabSheet;
    dbgDetalle: TJvDBGrid;
    TabSheet2: TTabSheet;
    dbgGrafico: TDBChart;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    BitBtn1: TBitBtn;
    CDSVtaMUESTRARUBRO: TStringField;
    CDSVtaMUESTRASUBRUBRO: TStringField;
    TabSheet3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    SpinButton1: TSpinButton;
    pnCabecera: TPanel;
    QVta: TFDQuery;
    CDSVtaCANTIDAD: TFloatField;
    CDSVtaTOTAL: TFloatField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    pnPieGrafico: TPanel;
    QProyecionVtas: TFDQuery;
    DSProyecionVtas: TDataSource;
    CDSProyecionVtas: TClientDataSet;
    DSPProyecionVtas: TDataSetProvider;
    ProyeccionVtas: TTabSheet;
    CDSProyecionVtasSUCURSAL: TIntegerField;
    CDSProyecionVtasFECHAVTA: TSQLTimeStampField;
    CDSProyecionVtasMES: TSmallintField;
    CDSProyecionVtasANIO: TSmallintField;
    CDSProyecionVtasCODIGOARTICULO: TStringField;
    CDSProyecionVtasDETALLE_STK: TStringField;
    CDSProyecionVtasRUBRO_STK: TStringField;
    CDSProyecionVtasSUBRUBRO_STK: TStringField;
    CDSProyecionVtasDETALLE_RUBRO: TStringField;
    CDSProyecionVtasDETALLE_SUBRUBRO: TStringField;
    CDSProyecionVtasCANTIDAD: TFloatField;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1SUCURSAL: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAVTA: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1CODIGOARTICULO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1RUBRO_STK: TcxDBPivotGridField;
    cxDBPivotGrid1SUBRUBRO_STK: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_RUBRO: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_SUBRUBRO: TcxDBPivotGridField;
    cxDBPivotGrid1CANTIDAD: TcxDBPivotGridField;
    TabSheet4: TTabSheet;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1SUCURSAL: TcxGridDBColumn;
    cxGrid2DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid2DBTableView1MES: TcxGridDBColumn;
    cxGrid2DBTableView1ANIO: TcxGridDBColumn;
    cxGrid2DBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGrid2DBTableView1RUBRO_STK: TcxGridDBColumn;
    cxGrid2DBTableView1SUBRUBRO_STK: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid2DBTableView1DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid2DBTableView1CANTIDAD: TcxGridDBColumn;
    cxGrid2TableView1: TcxGridTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2DBTableView2: TcxGridDBTableView;
    cxGrid2DBTableView2MES: TcxGridDBColumn;
    cxGrid2DBTableView2ANIO: TcxGridDBColumn;
    cxGrid2DBTableView2CODIGOARTICULO: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE_STK: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE_RUBRO: TcxGridDBColumn;
    cxGrid2DBTableView2DETALLE_SUBRUBRO: TcxGridDBColumn;
    cxGrid2DBTableView2CANTIDAD: TcxGridDBColumn;
    cxGrid2DBChartView1: TcxGridDBChartView;
    CDSProyecionVtasMESSTR: TStringField;
    PopupMenu1: TPopupMenu;
    MostrarCampos1: TMenuItem;
    Columnas1: TMenuItem;
    N1: TMenuItem;
    LimpiarFiltros1: TMenuItem;
    cxGrid2Level2: TcxGridLevel;
    cxGrid2DBChartView2: TcxGridDBChartView;
    cxGrid2DBChartView2Series1: TcxGridDBChartSeries;
    cxGrid2DBChartView2Series2: TcxGridDBChartSeries;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    SaveDialog: TSaveDialog;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    Panel3: TPanel;
    QBuscaRubro: TFDQuery;
    Series1: TPieSeries;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure JvDBGridExcelExport1Progress(Sender: TObject; Min, Max,
      Position: Cardinal; const AText: string; var AContinue: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure dbgDetalleTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure CDSProyecionVtasCalcFields(DataSet: TDataSet);
    procedure MostrarCampos1Click(Sender: TObject);
    procedure Columnas1Click(Sender: TObject);
    procedure LimpiarFiltros1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    TotalGral:Real;
  end;

var
  FormVtaRubro_SubRubro: TFormVtaRubro_SubRubro;

implementation

uses DMBuscadoresForm, UFiltroComprobantesVenta,UDMain_FD;
{$R *.DFM}

procedure TFormVtaRubro_SubRubro.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

procedure TFormVtaRubro_SubRubro.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  sbEstado.SimpleText:='';
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormVtaRubro_SubRubro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dbgGrafico.Print;
end;

procedure TFormVtaRubro_SubRubro.BitBtn2Click(Sender: TObject);
begin
  inherited;
  if pcVentas.ActivePageIndex=3 then
    dxComponentPrinter1Link1.Preview(True)

end;

procedure TFormVtaRubro_SubRubro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSProyecionVtas.IsEmpty) THEN
    BEGIN
      if pcVentas.ActivePageIndex=3 then
        begin
          cxDBPivotGrid1.OptionsView.DataFields     :=False;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
          cxDBPivotGrid1.OptionsView.RowFields      :=False;
          cxDBPivotGrid1.OptionsView.FilterFields   :=False;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
          SaveDialog.FileName:='MovimientosArt';
          SaveDialog.DefaultExt:='XLS';
          if VirtualUI.Active then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          if SaveDialog.Execute Then
            begin
              if VirtualUI.Active then
               if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                 SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
              if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName);
            end;

          cxDBPivotGrid1.OptionsView.DataFields     :=True;
          cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
          cxDBPivotGrid1.OptionsView.RowFields      :=True;
          cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
        end;
     // else
//        if PageControl1.ActivePageIndex=3 then
//          begin
//            //cxDBPivotGridVtaVendor.OptionsView.DataFields     :=False;
////            cxDBPivotGridVtaVendor.OptionsView.ColumnFields   :=False;
////            cxDBPivotGridVtaVendor.OptionsView.RowFields      :=False;
////            cxDBPivotGridVtaVendor.OptionsView.FilterFields   :=False;
////            cxDBPivotGridVtaVendor.OptionsView.FilterSeparator:=False;
//            SaveDialog.FileName:='MovimientosArtVdor';
//            SaveDialog.DefaultExt:='XLS';
//            if VirtualUI.Active then
//               SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
//            if SaveDialog.Execute Then
//              begin
//                if VirtualUI.Active then
//                 if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
//                   SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
//
//                cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGridVtaVendor,False);
//                if VirtualUI.Active then
//                  VirtualUI.DownloadFile(SaveDialog.FileName);
//              end;

           // cxDBPivotGridVtaVendor.OptionsView.DataFields     :=True;
           // cxDBPivotGridVtaVendor.OptionsView.ColumnFields   :=True;
           // cxDBPivotGridVtaVendor.OptionsView.RowFields      :=True;
           // cxDBPivotGridVtaVendor.OptionsView.FilterSeparator:=True;
 //         end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormVtaRubro_SubRubro.BuscarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  TotalGral:=0;
  sbEstado.SimpleText:='Iniciando Consulta....';
  Screen.Cursor:=crHourGlass;
  CDSVta.Close;
  CDSVta.IndexDefs.Clear;
  CDSVta.Params.ParamByName('Desde').Value:=Desde.Date;
  CDSVta.Params.ParamByName('Hasta').Value:=Hasta.Date;
  CDSVta.Params.ParamByName('codigo_rubro').AsString:=dbcRubro.Value;
  CDSVta.Params.ParamByName('sucursal').AsInteger   :=dbcSucursal.KeyValue;

  CDSVta.OPen;
  sbEstado.SimpleText:='Sumando....';

  CDSvta.First;
  CDSVta.DisableControls;
  while Not(CDSVta.Eof) do
    begin
      TOTALGRAL:=TotalGral+CDSVtaTOTAL.AsFloat;
      CDSVta.Next;
    end;
  sbEstado.SimpleText:='';
  Screen.Cursor:=crDefault;

  dbgGrafico.Title.Caption:= 'Ventas por Rubro '+dbcSucursal.Text;
  dbgGrafico.SubTitle.Caption:=dbcRubro.Text;

  CDSProyecionVtas.Close;
  CDSProyecionVtas.Params.ParamByName('Desde').Value        :=Desde.Date;
  CDSProyecionVtas.Params.ParamByName('Hasta').Value        :=Hasta.Date;
  CDSProyecionVtas.Params.ParamByName('sucursal').AsInteger :=dbcSucursal.KeyValue;
  CDSProyecionVtas.OPen;
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;

  CDSVta.EnableControls;
  cxGrid1DBTableView1. ViewData.Expand(true);
end;

procedure TFormVtaRubro_SubRubro.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
 // ShowMessage(FormFiltroCpbtes.Ids.Text);

end;

procedure TFormVtaRubro_SubRubro.Button2Click(Sender: TObject);
begin
  inherited;
  if dbgGrafico.Page>0 then
    dbgGrafico.PreviousPage;
end;

procedure TFormVtaRubro_SubRubro.Button3Click(Sender: TObject);
begin
  inherited;
  dbgGrafico.NextPage;
end;

procedure TFormVtaRubro_SubRubro.CDSProyecionVtasCalcFields(DataSet: TDataSet);
var Text:String;
begin
  inherited;
  case CDSProyecionVtasMES.Value of
    1:Text :='01-Enero';
    2:Text :='02-Febrero';
    3:Text :='03-Marzo';
    4:Text :='04-Abril';
    5:Text :='05-Mayo';
    6:Text :='06-Junio';
    7:Text :='07-Julio';
    8:Text :='08-Agosto';
    9:Text :='09-Septiembre';
    10:Text:='10-Octubre';
    11:Text:='11-Novimebre';
    12:Text:='12-Diciembre';
  end;
  CDSProyecionVtasMESSTR.Value:=Text;
end;


procedure TFormVtaRubro_SubRubro.Columnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.RowFields:=Not(cxDBPivotGrid1.OptionsView.RowFields);
end;

procedure TFormVtaRubro_SubRubro.dbgDetalleTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormVtaRubro_SubRubro.ExportarExcelExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.DefaultExt := 'xls';
  SaveDialog1.FileName   := 'VtasRub_Sub';

  SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

  if SaveDialog1.Execute Then
    if SaveDialog1.FileName<>'' Then
      begin
        if VirtualUI.Active then
          if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
             SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;
        JvDBGridExcelExport1.FileName         := SaveDialog1.FileName;
        jvDBGridExcelExport1.UseFieldGetText  := true;
        jvDBGridExcelExport1.Grid             := dbgDetalle;
        JvProgressBar1.Position := 0;
        JvProgressBar1.Min      := 0;
        JvProgressBar1.Max      := dbgDetalle.DataSource.DataSet.RecordCount-1;
        jvProgressBar1.Position:=0;

        if VirtualUI.Active then
          VirtualUI.DownloadFile(SaveDialog1.FileName);


        begin
          if VirtualUI.Active=False then
            jvDBGridExcelExport1.ExportGrid
          else
           jvDBGridExcelExport1.ExportGrid;
;//+'.'+SaveDialog1.DefaultExt);

          if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);//+'.'+SaveDialog1.DefaultExt);
        end;

      end;
   jvProgressBar1.Position:=0;

end;

procedure TFormVtaRubro_SubRubro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSBuscaRubro.Close;
  QSucursal.Close;
  Action:=caFree;
end;

procedure TFormVtaRubro_SubRubro.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVtaRubro_SubRubro:=nil;
end;

procedure TFormVtaRubro_SubRubro.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcVentas.ActivePageIndex:=0;
  CDSBuscaRubro.Open;
  QSucursal.Open;
  dbcSucursal.KeyValue := SucursalPorDefecto;
  dbcSucursal.Enabled  := DMMain_FD.ModificaSucursal;
end;

procedure TFormVtaRubro_SubRubro.ImprimirExecute(Sender: TObject);
begin
  inherited;
  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;
  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtaRubroSubRubro.fr3');
  frxReporte.Variables['Desde']:= ''''+DateToStr(Desde.Date)+'''';
  frxReporte.Variables['Hasta']:= ''''+DateToStr(Hasta.Date)+'''';
  frxReporte.Variables['Total']:= ''''+FloatToStr(TotalGral)+'''';
  frxReporte.Variables['Rubro']:= ''''+dbcRubro.Text+'''';
  frxReporte.PrintOptions.Copies := 1;
  frxReporte.ShowReport;
end;

procedure TFormVtaRubro_SubRubro.JvDBGridExcelExport1Progress(Sender: TObject;
  Min, Max, Position: Cardinal; const AText: string; var AContinue: Boolean);
begin
  inherited;
   JvProgressBar1.Position:=JvProgressBar1.Position+1;
end;

procedure TFormVtaRubro_SubRubro.LimpiarFiltros1Click(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormVtaRubro_SubRubro.MostrarCampos1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);

end;

procedure TFormVtaRubro_SubRubro.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
    frxReporte.DesignReport;
end;

procedure TFormVtaRubro_SubRubro.SpinButton1DownClick(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;
end;

procedure TFormVtaRubro_SubRubro.SpinButton1UpClick(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1;
   Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.