unit UInformeVariablesVtas_Stock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, cxGraphics,IniFiles,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, dxSkinsCore, dxSkinsDefaultPainters, cxCustomPivotGrid,
  cxDBPivotGrid, Data.DB, Datasnap.Provider, Datasnap.DBClient, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,DateUtils, Vcl.Grids, AdvObj,
  BaseGrid, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
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
  dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage, cxNavigator, cxDBData,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, Vcl.Mask, JvExMask, JvToolEdit, Vcl.Samples.Spin,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon,cxExportPivotGridLink, dxPScxExtComCtrlsLnk,
  dxPScxGridLnk, dxPScxGridLayoutViewLnk, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  System.ImageList, AdvSmoothButton;

type
  TFormVtas_UnicoStock = class(TFormABMBase)
    CDSVtas: TClientDataSet;
    DSPVtas: TDataSetProvider;
    DSVtas: TDataSource;
    CDSVtasFECHA: TSQLTimeStampField;
    CDSVtasCODIGO: TStringField;
    CDSVtasDETALLE: TStringField;
    CDSVtasCANTIDAD: TFloatField;
    CDSVtasUNITARIO: TFloatField;
    CDSVtasTOTAL: TFloatField;
    CDSVtasMES: TStringField;
    CDSVtasSEMANA: TIntegerField;
    CDSVtasTIPO: TStringField;
    CDSVtasMES2: TIntegerField;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    edAnio: TSpinEdit;
    Label1: TLabel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    QVtas: TFDQuery;
    procedure CDSVtasCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSVtasFECHAGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    ArchivoIni   :TIniFile;
  public

    { Public declarations }
  end;

var
  FormVtas_UnicoStock: TFormVtas_UnicoStock;

implementation

uses UBuscadorArticulos,UDMain_FD;
{$R *.dfm}

procedure TFormVtas_UnicoStock.BitBtn2Click(Sender: TObject);
begin
  inherited;
 dxComponentPrinter1.Preview(True);
end;

procedure TFormVtas_UnicoStock.BitBtn3Click(Sender: TObject);
begin
  inherited;
 inherited;
  IF NOT (CDSVtas.IsEmpty) THEN
    BEGIN
//      cxDBPivotGrid1.OptionsView.DataFields     :=False;
  //    cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
    //  cxDBPivotGrid1.OptionsView.RowFields      :=False;
//      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
  //    cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='MovimientosVentas';
      SaveDialog.DefaultExt:='XLS';
  //    if SaveDialog.Execute Then
  //      cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
  //    cxDBPivotGrid1.OptionsView.DataFields     :=True;
  //    cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
  //    cxDBPivotGrid1.OptionsView.RowFields      :=True;
  //    cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormVtas_UnicoStock.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    begin
       CDSStock.Close;
       CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       CDSStock.Open;
       if not(CDSStock.IsEmpty) then
         begin
        //   edDetalle.Text:=CDSStockDETALLE_STK.Value;
       //    ceCodigo.Text :=CDSStockCODIGO_STK.Value;
           Buscar.Execute;
         end
       else
         begin
       //    edDetalle.Text:='';
       //    ceCodigo.Text :='';
         end;
       CDSStock.Close;

    end;

end;

procedure TFormVtas_UnicoStock.BuscarExecute(Sender: TObject);
var i,Paso,Paso2,Puntero,H:Integer;
begin
//  inherited;
  Screen.Cursor:=crHourGlass;
  CDSVtas.Close;
 // CDSVtas.Params.ParamByName('Codigo').Value:=Trim(ceCodigo.Text);
 // CDSVtas.Params.ParamByName('Year').Value  :=edAnio.Value;
  CDSVtas.open;
  Screen.Cursor:=crDefault;

//  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
 //   cxDBPivotGrid1.Fields[i].ExpandAll;

  end;

procedure TFormVtas_UnicoStock.CDSVtasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtasMES.AsString    := (FormatDateTime('mm',CDSVtasFECHA.AsDateTime))+'-'+UpperCase(FormatDateTime('mmmm',CDSVtasFECHA.AsDateTime));
  CDSVtasSEMANA.ASInteger:= WeekOfTheMonth(CDSVtasFECHA.AsDateTime);
end;

procedure TFormVtas_UnicoStock.CDSVtasFECHAGetText(Sender: TField; var Text: string;
  DisplayText: Boolean);
begin
  inherited;
  Text    := UpperCase(FormatDateTime('mmmm',CDSVtasFECHA.AsDateTime));

end;

procedure TFormVtas_UnicoStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
 // cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaUnicoArticulos');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'VtasArt.ini');
 // ArchivoIni.WriteString('Dato', 'codigo',ceCodigo.text);
//  ArchivoIni.WriteString('Dato', 'detalle', edDetalle.text);
  ArchivoIni.Free;

  Action:=caFree;
end;

procedure TFormVtas_UnicoStock.FormCreate(Sender: TObject);
begin
  inherited;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'VtasArt.ini');
//  ceCodigo.Text                      := ArchivoIni.ReadString('Dato', 'codigo', '');
//  edDetalle.Text                     := ArchivoIni.ReadString('Dato', 'detalle', '');
  ArchivoIni.Free;
end;

procedure TFormVtas_UnicoStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVtas_UnicoStock:=nil;
end;

procedure TFormVtas_UnicoStock.FormShow(Sender: TObject);
begin
  inherited;
  //*************************************************************
 //  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaUnicoArticulos');
  //*************************************************************

  edAnio.Value:=YearOf(Date);
end;

end.
