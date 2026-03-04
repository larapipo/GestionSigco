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
  Datasnap.DBClient;

type
  TFormABMBase5 = class(TFormABMBase)
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
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
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
    procedure CDSPreciosCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMBase5: TFormABMBase5;

implementation

{$R *.dfm}

procedure TFormABMBase5.CDSPreciosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSPreciosANIO_MES.Value           := FormatDateTime('YYYY - mmmm', CDSPreciosFECHA.AsDateTime);
  CDSPreciosFECHA_SINHORA.AsDateTime := Trunc(CDSPreciosFECHA.AsDateTime);
  if (CDSPreciosPRECIO_VIEJO.Value>0) then
    CDSPreciosPORCENTAJE.Value         := ((CDSPreciosPRECIO_NUEVO.Value-CDSPreciosPRECIO_VIEJO.Value)/
                                           CDSPreciosPRECIO_VIEJO.Value)*100
  else
    CDSPreciosPORCENTAJE.Value:=0;
end;

procedure TFormABMBase5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
 Action:=TCloseAction.caFree;
end;

procedure TFormABMBase5.FormCreate(Sender: TObject);
begin
  inherited;
 AutoSize:=False;
end;

procedure TFormABMBase5.FormDestroy(Sender: TObject);
begin
  inherited;
   FormHistorialPreciosProduccion:=nil;
end;

end.
