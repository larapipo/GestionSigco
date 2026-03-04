unit UMovTarjetaCredito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxCalc, cxCheckBox,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, Vcl.Buttons, Vcl.ExtCtrls, JvExControls,
  JvGradient, JvExExtCtrls, JvExtComponent, JvPanel, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations;

type
  TFormMovTarjetaCredito = class(TForm)
    pnSuma: TJvPanel;
    pnBtn: TPanel;
    spCancel: TSpeedButton;
    spPegar: TSpeedButton;
    Panel3: TPanel;
    spSelectAll: TSpeedButton;
    cxGridMov: TcxGrid;
    cxGridMovDBTableView1: TcxGridDBTableView;
    cxGridMovLevel1: TcxGridLevel;
    DSMov: TDataSource;
    cxGridMovDBTableView1FECHA: TcxGridDBColumn;
    cxGridMovDBTableView1SALDO_IMPORTE: TcxGridDBColumn;
    cxGridMovDBTableView1CUOTAS: TcxGridDBColumn;
    cxGridMovDBTableView1SELECCION: TcxGridDBColumn;
    cxGridMovDBTableView1NROCUPON: TcxGridDBColumn;
    spReset: TSpeedButton;
    procedure spPegarClick(Sender: TObject);
    procedure spSelectAllClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGridMovDBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure spCancelClick(Sender: TObject);
    procedure spResetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovTarjetaCredito: TFormMovTarjetaCredito;

implementation

uses ULiquidacionTC,DMLiquidacionTC;
{$R *.dfm}

procedure TFormMovTarjetaCredito.cxGridMovDBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
var A:Boolean;
begin
  A := AViewInfo.GridRecord.Values[4];
  if A = True then
    begin
      ACanvas.Brush.Color:= clGreen;
      ACanvas.Font.Color := clWhite;
    end
end;

procedure TFormMovTarjetaCredito.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMovTarjetaCredito.FormDestroy(Sender: TObject);
begin
  FormMovTarjetaCredito:=nil;
end;

procedure TFormMovTarjetaCredito.FormShow(Sender: TObject);
begin
 // dbgSuma.UnSelectAllClick(Sender);
  Screen.Cursor:=crHourGlass;
  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  While Not(DSMov.DataSet.Eof) do
    begin
      DSMov.DataSet.Edit;
      DSMov.DataSet.FieldByName('SELECCION').Value  := False;
      DSMov.DataSet.Next;
    end;
  DSMov.DataSet.First;
  DSMov.DataSet.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormMovTarjetaCredito.spCancelClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMovTarjetaCredito.spSelectAllClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  While Not(DSMov.DataSet.Eof) do
    begin
      DSMov.DataSet.Edit;
      DSMov.DataSet.FieldByName('SELECCION').Value  := True;
      DSMov.DataSet.Next;
    end;
  DSMov.DataSet.First;
  DSMov.DataSet.EnableControls;
  Screen.Cursor:=crDefault;
end;

procedure TFormMovTarjetaCredito.spPegarClick(Sender: TObject);
var i:integer;
begin
  inherited;
  FormLiquidacionTC.CDSLiqDet.First;
  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  while not(DSMov.DataSet.eof) do
    begin
     if DSMov.DataSet.FieldByName('SELECCION').Value= True then
        begin
          if (Trunc(DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat*1000)>0) then
            begin
              FormLiquidacionTC.dbgLiqDetDragDrop(FormLiquidacionTC.dbgLiqDet,FormLiquidacionTC.dbgMovTc,10,10);
            end;
        end;
      DSMov.DataSet.Next;
    end;
  DSMov.DataSet.EnableControls;
  FormMovTarjetaCredito.Close;
end;

procedure TFormMovTarjetaCredito.spResetClick(Sender: TObject);
begin
  Screen.Cursor:=crHourGlass;
  DSMov.DataSet.First;
  DSMov.DataSet.DisableControls;
  While Not(DSMov.DataSet.Eof) do
    begin
      DSMov.DataSet.Edit;
      if DSMov.DataSet.FieldByName('SELECCION').Value=True then
        DSMov.DataSet.FieldByName('SELECCION').Value   := False;
      DSMov.DataSet.Next;
    end;
  DSMov.DataSet.First;
  DSMov.DataSet.EnableControls;
  Screen.Cursor:=crDefault;
end;

end.
