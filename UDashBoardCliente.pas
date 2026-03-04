unit UDashBoardCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCChart, VCL.TMSFNCChartDatabaseAdapter, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Datasnap.Provider, Datasnap.DBClient, Vcl.StdCtrls, AdvUtil,
  AdvObj, BaseGrid, AdvGrid, System.Actions, Vcl.ActnList, Vcl.Buttons;

type
  TFormDashBoardCliente = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    QVentas_1: TFDQuery;
    CDSVentas_1: TClientDataSet;
    DSPVentas_1: TDataSetProvider;
    CDSVentas_1SUCURSAL: TIntegerField;
    CDSVentas_1NOMBRESUCURSAL: TStringField;
    CDSVentas_1MES: TIntegerField;
    CDSVentas_1TOTAL_VTAS_CTDO_GRAVADO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_EXENTO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_IVA: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CC_GRAVDADO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CC_EXENTO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CC_IVA: TFloatField;
    CDSVentas_1TOTAL_VTAS_CC: TFloatField;
    CDSVentas_1TOTAL_VTAS_NCREDITO_GRAVADO: TFloatField;
    CDSVentas_1TOTAL_VTAS_NCREDITO_EXENTO: TFloatField;
    CDSVentas_1TOTAL_VTAS_NCREDITO_IVA: TFloatField;
    CDSVentas_1TOTAL_VTAS_NCREDITO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_GRAVAD: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_EXENTO: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO_IVA: TFloatField;
    CDSVentas_1TOTAL_VTAS_CTDO_NCREDITO: TFloatField;
    CDSVentas_1TOTAL_ANULACIONES: TFloatField;
    CDSVentas_1TOTAL_COBRANZAS: TFloatField;
    CDSVentas_1TOTAL_VTAS: TFloatField;
    CDSVentas_1TOTAL_INGRESOS: TFloatField;
    CDSVentas_1TOTAL_VTAS_NDEBITO_GRAVADO: TFloatField;
    CDSVentas_1TOTAL_VTAS_NDEBITO_EXENTO: TFloatField;
    CDSVentas_1TOTAL_VTAS_NDEBITO_IVA: TFloatField;
    CDSVentas_1TOTAL_VTAS_NDEBITO: TFloatField;
    CDSVentas_1TOTAL_RTOS: TFloatField;
    DSVentas_1: TDataSource;
    btVer: TButton;
    Splitter1: TSplitter;
    ChartAnio_1: TTMSFNCChart;
    sgVentas: TAdvStringGrid;
    ActionList1: TActionList;
    Ver: TAction;
    Label1: TLabel;
    Label2: TLabel;
    lbNc_1: TLabel;
    lbNc_2: TLabel;
    lbAnio1: TLabel;
    lbAnio2: TLabel;
    btSalir: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerExecute(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo:string;
    FAnio  :Integer;
    procedure ArmarGrafico_1;
  public
    Serie:TTMSFNCChartSerie;
    Point:TTMSFNCChartPoint;
    { Public declarations }
  published
    property codigo:string read FCodigo write FCodigo;
    property anio:Integer read fanio write FAnio;
  end;

var
  FormDashBoardCliente: TFormDashBoardCliente;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormDashBoardCliente.ArmarGrafico_1;
var L:Byte;
Aux:Extended;
begin
  ChartAnio_1.BeginUpdate;
  ChartAnio_1.Clear;
  ChartAnio_1.Series.Clear;
  ChartAnio_1.Title.Text    :='Ventas';
  ChartAnio_1.Margins.Right :=20;
  ChartAnio_1.Margins.Left  :=0;
  ChartAnio_1.Margins.Top   :=25;

/////////////////////////////////////////////////////////////////////////////////

  cdsventas_1.Close;
  cdsventas_1.params.ParamByName('cliente').Value := FCodigo;
  cdsventas_1.params.paramByName('Anio').Value    := FAnio;
  cdsventas_1.Open;

  Serie                     := ChartAnio_1.Series.Add;
  Serie.LegendText          := IntToStr(FAnio);// 'Año Actual';//FormatSettings. short FAnio CDSVentas_1MES.AsString;
  Serie.Mode                := smMathematical;
  Serie.ChartType           := ctBar;
  Serie.Fill.Kind           := gfkSolid;
  Serie.Fill.Color          := clBlue;
  Serie.Stroke.Kind         := gskNone;
  Serie.MinY                := 0;
  Serie.MinX                := 0;
  Serie.MaxX                :=10;
  Serie.YValues.MajorUnitFormatType :=vftFloat;
  Serie.YValues.MajorUnitFormat     :=',0.00;-,0.00; ';

  Serie.AutoYRange          := arCommonZeroBased;
  Serie.Labels.Visible      := True;
  Serie.Labels.OffsetX      := 10;
  Serie.Labels.OffsetY      := 0;
  Serie.Labels.Stroke.Kind  := gsknone;
  Serie.Labels.Fill.Kind    := gfkNone;
  Serie.Labels.FormatType   := vftFloat;
  Serie.Labels.Format       := ',0.00;-,0.00; ';

  Serie.YValues.AutoUnits   := True;
  serie.YValues.Positions   :=[];    //(ypLeft, ypCenter, ypRight);
  serie.XValues.Positions   :=[];    //(xpTop, xpCenter, xpBottom);


  //if VerValores then
    begin
      serie.YValues.Positions :=[ypLeft];    //(ypLeft, ypCenter, ypRight);
      serie.XValues.Positions :=[xpBottom];    //(xpTop, xpCenter, xpBottom);
  end;

  CDSVentas_1.First;
  l:=0;Aux:=0;
  while Not(CDSVentas_1.Eof) do
    begin
      Inc(l);
      point                    := Serie.Points.Add;
      point.Color              := clBlue;
      point.YValue             := CDSVentas_1TOTAL_VTAS.AsFloat;
      Point.XValueText         := FormatSettings.ShortMonthNames[CDSVentas_1MES.Value];
      sgVentas.Cells[1,l]      := FormatFloat(',0.00;-,0.00;-',CDSVentas_1TOTAL_VTAS.Value);
      sgVentas.Alignments[1,l] := taRightJustify;
      Aux:=Aux+CDSVentas_1TOTAL_VTAS_NCREDITO.Value;
      CDSVentas_1.Next;
    end;
  lbNc_1.Caption:=FormatFloat(',0.00',aux);
  ChartAnio_1.EndUpdate;

 ////////////////////////////////////////////////////////////////////////////////

  cdsventas_1.Close;
  cdsventas_1.params.ParamByName('cliente').Value := FCodigo;
  cdsventas_1.params.paramByName('Anio').Value    := FAnio-1;
  cdsventas_1.Open;

  ChartAnio_1.BeginUpdate;

  Serie                   := ChartAnio_1.Series.Add;
  Serie.LegendText        := IntToStr(FAnio-1);//'Año Anterior';//CDSVentas_1MES.AsString;
  Serie.Mode              := smMathematical;
  Serie.ChartType         := ctBar;
  Serie.Fill.Kind         := gfkSolid;
  Serie.Fill.Color        := clGreen;
  Serie.Stroke.Kind       := gskNone;
  Serie.MinY              := 0;
  Serie.MinX              := 0;
  Serie.MaxX              :=10;
  Serie.AutoYRange        := arCommonZeroBased;
  Serie.Labels.Visible    := True;
  Serie.Labels.OffsetX    := 10;
  Serie.Labels.OffsetY    := 0;
  Serie.Labels.Stroke.Kind  := gsknone;
  Serie.Labels.Fill.Kind    := gfknone;
  Serie.Labels.FormatType   := vftFloat;
  Serie.Labels.Format       := ',0.00;-,0.00; ';
  Serie.YValues.MajorUnitFormatType :=vftFloat;
  Serie.YValues.MajorUnitFormat     :=',0.00;-,0.00; ';

  Serie.YValues.AutoUnits   := True;

  serie.YValues.Positions :=[];    //(ypLeft, ypCenter, ypRight);
  serie.XValues.Positions :=[];    //(xpTop, xpCenter, xpBottom);


  //if VerValores then
 // begin
 //     serie.YValues.Positions :=[ypLeft];    //(ypLeft, ypCenter, ypRight);
 //     serie.XValues.Positions :=[xpBottom];    //(xpTop, xpCenter, xpBottom);
 // end;

  CDSVentas_1.First;
  L:=0;Aux:=0;
  while Not(CDSVentas_1.Eof) do
    begin
      Inc(l);
      point                := Serie.Points.Add;
      point.Color          := clGreen;
      point.YValue         := CDSVentas_1TOTAL_VTAS.AsFloat;
      Point.XValueText     := FormatSettings.ShortMonthNames[CDSVentas_1MES.Value];
      sgVentas.Cells[2,l]  := FormatFloat(',0.00;-,0.00;-',CDSVentas_1TOTAL_VTAS.Value);
      sgVentas.Alignments[2,l] := taRightJustify;
      Aux:=Aux+CDSVentas_1TOTAL_VTAS_NCREDITO.Value;
      CDSVentas_1.Next;
    end;
  lbNc_2.Caption:=FormatFloat(',0.00',aux);
  ChartAnio_1.EndUpdate;

end;


procedure TFormDashBoardCliente.btSalirClick(Sender: TObject);
begin
  close;
end;

procedure TFormDashBoardCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormDashBoardCliente.FormDestroy(Sender: TObject);
begin
 FormDashBoardCliente:=nil;
end;

procedure TFormDashBoardCliente.FormShow(Sender: TObject);
begin
  Ver.Execute;
  btSalir.SetFocus;
end;

procedure TFormDashBoardCliente.VerExecute(Sender: TObject);
var
  s: TTMSFNCChartDatabaseAdapterSeriesItem;
  Dia, Mes, Year: Word;
begin
  DecodeDate(Date,Year,Mes,dia);
  sgVentas.ClearAll;
  sgVentas.ColCount:= 3;
  sgVentas.RowCount:=13;
  sgVentas.ColAlignments[1]:= taRightJustify;
  sgVentas.ColAlignments[2]:= taRightJustify;

  sgVentas.Cells[1,0]:= 'Vtas '+IntToStr(FAnio);
  sgVentas.Cells[2,0]:= 'Vtas '+IntToStr(FAnio-1);
  sgVentas.ColAlignments[0]:= taCenter;
  sgVentas.Alignments[1,0] := taCenter;
  sgVentas.Alignments[2,0] := taCenter;

  sgVentas.Cells[0,1]:= 'Ene';
  sgVentas.Cells[0,2]:= 'Feb';
  sgVentas.Cells[0,3]:= 'Mar';
  sgVentas.Cells[0,4]:= 'Abr';
  sgVentas.Cells[0,5]:= 'May';
  sgVentas.Cells[0,6]:= 'Jun';
  sgVentas.Cells[0,7]:= 'Jul';
  sgVentas.Cells[0,8]:= 'Ago';
  sgVentas.Cells[0,9]:= 'Sep';
  sgVentas.Cells[0,10]:='Oct';
  sgVentas.Cells[0,11]:='Nov';
  sgVentas.Cells[0,12]:='Dic';

  lbAnio1.Caption := IntToStr(FAnio);
  lbAnio2.Caption := IntToStr(FAnio-1);


  ArmarGrafico_1;

end;

end.
