unit ListadoHist_Precio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, cxExportPivotGridLink,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
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
  dxSkinXmas2008Blue, cxCustomPivotGrid, cxDBPivotGrid, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls,VirtualUI_SDK,StrUtils, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxBarBuiltInMenu, Datasnap.Provider,
  Datasnap.DBClient, System.ImageList, cxCurrencyEdit, Vcl.Samples.Spin,
  Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit, dxSkinWXI, Vcl.Menus;

type
  TFormListadoHistorialPrecio = class(TFormABMBase)
    cxDBPivotGrid1: TcxDBPivotGrid;
    QPrecios: TFDQuery;
    DSPrecios: TDataSource;
    cxDBPivotGrid1CODIGO_STK: TcxDBPivotGridField;
    cxDBPivotGrid1DETALLE_STK: TcxDBPivotGridField;
    cxDBPivotGrid1FPRECIO_OLD: TcxDBPivotGridField;
    cxDBPivotGrid1FPRECIO_NEW: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    cxDBPivotGrid1MOTIVO: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO_MES: TcxDBPivotGridField;
    cxDBPivotGrid1ID: TcxDBPivotGridField;
    ExportarExcel: TAction;
    SaveDialog1: TSaveDialog;
    btExcel: TBitBtn;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    CDSPrecios: TClientDataSet;
    DSPPrecios: TDataSetProvider;
    CDSPreciosCODIGO_STK: TStringField;
    CDSPreciosDETALLE_STK: TStringField;
    CDSPreciosFPRECIO_OLD: TFloatField;
    CDSPreciosFPRECIO_NEW: TFloatField;
    CDSPreciosANIO: TSmallintField;
    CDSPreciosMES: TSmallintField;
    CDSPreciosMOTIVO: TStringField;
    CDSPreciosFECHA: TSQLTimeStampField;
    CDSPreciosANIO_MES: TStringField;
    CDSPreciosVARIACION: TFloatField;
    CDSPreciosDETALLE_RUBRO: TStringField;
    CDSPreciosDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    CDSPreciosFECHA_SINHORA: TSQLTimeStampField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    UpDown1: TUpDown;
    CDSPreciosPORCENTAJE: TFloatField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    Panel3: TPanel;
    JvDBFindEdit1: TJvDBFindEdit;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    CDSPreciosVARIACION_GRAL: TFloatField;
    CDSPreciosMAXIMO: TFloatField;
    CDSPreciosMINIMO: TFloatField;
    Label3: TLabel;
    Label4: TLabel;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    cxStyle2: TcxStyle;
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ExportarExcelExecute(Sender: TObject);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSPreciosCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoHistorialPrecio: TFormListadoHistorialPrecio;

implementation

uses UDMain_FD, UStock_2;
{$R *.dfm}

procedure TFormListadoHistorialPrecio.BuscarExecute(Sender: TObject);
var i:integer;
begin
//  inherited;
  CDSPrecios.Close;
  CDSPrecios.ParamByName('Codigo').Value := '********';
  CDSPrecios.ParamByName('Desde').AsDate := Desde.Date;
  CDSPrecios.ParamByName('hasta').AsDate := Hasta.Date;//'********';

  CDSPrecios.Open;
   begin
      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
    end;
end;

procedure TFormListadoHistorialPrecio.CDSPreciosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSPreciosANIO_MES.Value           := FormatDateTime('YYYY - mmmm', CDSPreciosFECHA.AsDateTime);
  CDSPreciosFECHA_SINHORA.AsDateTime := Trunc(CDSPreciosFECHA.AsDateTime);
  if (CDSPreciosFPRECIO_OLD.Value>0) then
    CDSPreciosPORCENTAJE.Value         := ((CDSPreciosFPRECIO_NEW.Value-CDSPreciosFPRECIO_OLD.Value)/
                                           CDSPreciosFPRECIO_OLD.Value)*100
  else
    CDSPreciosPORCENTAJE.Value:=0;

   if (CDSPreciosMINIMO.Value>0) then
    CDSPreciosVARIACION_GRAL.Value         := ((CDSPreciosMAXIMO.Value/CDSPreciosMINIMO.Value)-1)*100
  else
    CDSPreciosVARIACION_GRAL.Value:=0;

end;

procedure TFormListadoHistorialPrecio.cxDBPivotGrid1DblClick(Sender: TObject);
var
  ARow,AColumn: TcxPivotGridViewDataItem;
  codigo,AValue: String;
begin
  // Leer el Valor de una celda en cxDBPivotGrid
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
    begin
      ARow    := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Row;
      Codigo  := ARow.GetGroupItemByField(cxDBPivotGrid1CODIGO_STK).DisplayText;
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=Codigo;
      FormStock_2.Recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormListadoHistorialPrecio.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoHistorialPrecio.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormListadoHistorialPrecio.ExportarExcelExecute(Sender: TObject);
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

procedure TFormListadoHistorialPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_HistorialPrecios');
  inherited;
  Action:=caFree;
end;

procedure TFormListadoHistorialPrecio.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  Desde.Date:=IncMonth(Date,-1);
  Hasta.Date:=Date;
end;

procedure TFormListadoHistorialPrecio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoHistorialPrecio:=nil;
end;

procedure TFormListadoHistorialPrecio.FormShow(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_HistorialPrecios');
end;

procedure TFormListadoHistorialPrecio.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;

   for I := 0 to APivot.FieldCount - 1 do
     APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListadoHistorialPrecio.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  Hasta.Date:=IncMonth(Desde.Date,(1));
  buscar.Execute;
end;

end.
