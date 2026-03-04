unit UHistorialPreciosProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
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
  dxSkinXmas2008Blue, cxClasses, cxCustomData, cxStyles, cxEdit,
  dxBarBuiltInMenu, cxCurrencyEdit, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, cxCustomPivotGrid, cxDBPivotGrid, Datasnap.Provider,
  VirtualUI_SDK, Datasnap.DBClient,System.StrUtils,cxExportPivotGridLink,
  Vcl.Grids, Vcl.DBGrids,DateUtils;

type
  TFormHistorialPreciosProduccion = class(TFormABMBase)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edDesde: TDateTimePicker;
    edHasta: TDateTimePicker;
    UpDown1: TUpDown;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1CODIGO_STK: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1FPRECIO_OLD: TcxDBPivotGridField;
    cxDBPivotGrid1FPRECIO_NEW: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO_MES: TcxDBPivotGridField;
    cxDBPivotGrid1ID: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1VARIACION: TcxDBPivotGridField;
    Panel3: TPanel;
    JvDBFindEdit1: TJvDBFindEdit;
    DSPrecios: TDataSource;
    CDSPrecios: TClientDataSet;
    CDSPreciosDETALLE_STK: TStringField;
    CDSPreciosANIO: TSmallintField;
    CDSPreciosMES: TSmallintField;
    CDSPreciosFECHA: TSQLTimeStampField;
    CDSPreciosANIO_MES: TStringField;
    CDSPreciosVARIACION: TFloatField;
    CDSPreciosDETALLE_RUBRO: TStringField;
    CDSPreciosDETALLE_SUBRUBRO: TStringField;
    CDSPreciosFECHA_SINHORA: TSQLTimeStampField;
    CDSPreciosPORCENTAJE: TFloatField;
    CDSPreciosPRECIO_VIEJO: TFloatField;
    CDSPreciosPRECIO_NUEVO: TFloatField;
    CDSPreciosCODIGO_STK: TStringField;
    DSPPrecios: TDataSetProvider;
    QPrecios: TFDQuery;
    btExcel: TBitBtn;
    SaveDialog1: TSaveDialog;
    UpDown2: TUpDown;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    QPrecios_ORIGINAL: TFDQuery;
    CDSPreciosMAXIMO: TFloatField;
    CDSPreciosMINIMO: TFloatField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    CDSPreciosVARIACION_GRAL: TFloatField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    procedure CDSPreciosCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown2Click(Sender: TObject; Button: TUDBtnType);
    procedure cxDBPivotGrid1VARIACIONCalculateCustomSummary(
      Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormHistorialPreciosProduccion: TFormHistorialPreciosProduccion;

implementation

{$R *.dfm}

procedure TFormHistorialPreciosProduccion.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSPrecios.IsEmpty) THEN
    BEGIN
      SaveDialog1.FileName:='Historico';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute then
        if SaveDialog1.FileName<>'' then
          begin
            cxDBPivotGrid1.OptionsView.DataFields     :=False;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
            cxDBPivotGrid1.OptionsView.RowFields      :=False;
            cxDBPivotGrid1.OptionsView.FilterFields   :=False;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
            cxDBPivotGrid1.OptionsView.DataFields     :=True;
            cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
            cxDBPivotGrid1.OptionsView.RowFields      :=True;
            cxDBPivotGrid1.OptionsView.FilterFields   :=True;
            cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
          end;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormHistorialPreciosProduccion.BuscarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  CDSPrecios.Close;
  CDSPrecios.ParamByName('Codigo').Value:='********';
  CDSPrecios.ParamByName('Desde').AsDate:=edDesde.Date;
  CDSPrecios.ParamByName('hasta').AsDate :=edHasta.Date;//'********';

  CDSPrecios.Open;
   begin
      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
    end;
end;

procedure TFormHistorialPreciosProduccion.CDSPreciosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSPreciosANIO_MES.Value           := FormatDateTime('YYYY - mmmm', CDSPreciosFECHA.AsDateTime);
  CDSPreciosFECHA_SINHORA.AsDateTime := Trunc(CDSPreciosFECHA.AsDateTime);
  if (CDSPreciosPRECIO_VIEJO.Value>0) then
    CDSPreciosPORCENTAJE.Value         := ((CDSPreciosPRECIO_NUEVO.Value/CDSPreciosPRECIO_VIEJO.Value)-1)*100
  else
    CDSPreciosPORCENTAJE.Value:=0;

  if (CDSPreciosMINIMO.Value>0) then
    CDSPreciosVARIACION_GRAL.Value         := ((CDSPreciosMAXIMO.Value/CDSPreciosMINIMO.Value)-1)*100
  else
    CDSPreciosVARIACION_GRAL.Value:=0;

end;

procedure TFormHistorialPreciosProduccion.cxDBPivotGrid1VARIACIONCalculateCustomSummary(
  Sender: TcxPivotGridField; ASummary: TcxPivotGridCrossCellSummary);
var c:Integer;Valor1,Valor2:Variant;
begin
  inherited;
 // with ASummary do
//    begin
//      ASummary.GetSummaryByType()
//       Valor1:=Min;
//       Valor1:=Max;
//       Custom:=((Valor2/valor1)-1)*100;
//    end;
end;

procedure TFormHistorialPreciosProduccion.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_HistorialPreciosProduccion');
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormHistorialPreciosProduccion.FormCreate(Sender: TObject);
begin
  inherited;
 AutoSize:=False;
end;

procedure TFormHistorialPreciosProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
   FormHistorialPreciosProduccion:=nil;
end;

procedure TFormHistorialPreciosProduccion.FormShow(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_HistorialPreciosProduccion');
  edHasta.Date:=Date;
  edDesde.Date:=IncDay(Date,-15);
end;

procedure TFormHistorialPreciosProduccion.UpDown2Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
 if Button=btnext Then
    edDesde.Date := IncMonth(edDesde.Date,(1))
  else
    if Button=btPrev Then
      edDesde.Date := IncMonth(edDesde.Date,(-1));
  edHasta.Date:=IncMonth(edDesde.Date,(1));
  buscar.Execute;
end;

end.
