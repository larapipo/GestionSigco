{$D+}

unit UInformeSemanal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.ExtCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, AdvUtil, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  Vcl.Mask, JvExMask, JvToolEdit,DateUtils, VCL.TMSFNCChartEditor,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCChartDatabaseAdapter, Vcl.DBGrids,
  ToolPanels, Datasnap.DBClient, Datasnap.Provider, Vcl.DBCtrls, JvDBLookup;

type
  TFormInformeSemanal = class(TFormABMBase)
    pnCompraas: TPanel;
    pnCobranza: TPanel;
    pnGastos: TPanel;
    GridPanel1: TGridPanel;
    pnVentas: TPanel;
    chartVentasCtdo: TTMSFNCChart;
    TMSFNCChart4: TTMSFNCChart;
    QCompras: TFDQuery;
    Panel2: TPanel;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    QVentas: TFDQuery;
    Label3: TLabel;
    chartVentas: TTMSFNCBarChart;
    DSVentas: TDataSource;
    QVentasFECHAVTA: TSQLTimeStampField;
    QVentasTOTALVTA: TFMTBCDField;
    QVentasDIA: TIntegerField;
    AdvToolPanelTab1: TAdvToolPanelTab;
    AdvToolPanel1: TAdvToolPanel;
    dbgVentas: TDBGrid;
    QComprasFECHACOMPRA: TSQLTimeStampField;
    QComprasTOTALCOMPRAS: TFloatField;
    AdvToolPanelTab2: TAdvToolPanelTab;
    AdvToolPanel2: TAdvToolPanel;
    dbgCompras: TDBGrid;
    DSCompras: TDataSource;
    QComprasDIA: TIntegerField;
    chartCompras: TTMSFNCBarChart;
    Label4: TLabel;
    QSucursal: TFDQuery;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    ceSucursal: TJvDBLookupCombo;
    QVentasCtdo: TFDQuery;
    DSVentasCtdo: TDataSource;
    QVentasCtdoFECHAVTA: TSQLTimeStampField;
    QVentasCtdoTOTALVTA: TFMTBCDField;
    QVentasCtdoDIA: TIntegerField;
    AdvToolPanelTab3: TAdvToolPanelTab;
    AdvToolPanel3: TAdvToolPanel;
    DBGrid1: TDBGrid;
    QValores: TFDQuery;
    QValoresID_FPAGO: TIntegerField;
    QValoresDESCRIPCION: TStringField;
    QValoresDEBE: TFloatField;
    QValoresHABER: TFloatField;
    DSValores: TDataSource;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure QVentasCalcFields(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure QComprasCalcFields(DataSet: TDataSet);
    procedure QVentasCtdoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormInformeSemanal: TFormInformeSemanal;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormInformeSemanal.BuscarExecute(Sender: TObject);
var
  Serie,SerieComp   :TTMSFNCChartSerie;
  Point   :TTMSFNCChartPoint;
  FirstDay:Int64;
  LastDay :Int64;

begin
  inherited;
  QVentas.Filtered:=False;

  QVentas.Close;
  QVentas.ParamByName('desde').AsDateTime   := Desde.Date;
  QVentas.ParamByName('hasta').AsDateTime   := Hasta.Date;
  QVentas.ParamByName('sucursal').AsInteger := ceSucursal.KeyValue;
  QVentas.Open;

  chartVentas.BeginUpdate;

  chartVentas.Legend.Visible := False;
  chartVentas.Series.Clear;
  chartVentas.XAxis.Height   := 30;
  chartVentas.Title.Text     :='Ventas..';
  Serie                      := chartVentas.Series.Add;
  Serie.ChartType            := ctBar;
  Serie.Pie.AutoSize         := True;
  Serie.Points.Clear;
  Serie.Stroke.Color         := gcBlue;
  Serie.Labels.Visible       := True;
  Serie.MinX:=0;
  Serie.MaxX:=10;
  QVentas.IndexFieldNames    :='DIA';
  QVentas.First;

  if Not(QVentas.IsEmpty) Then
    begin
      FirstDay:= QVentasDIA.Value;
      while Not(QVentas.Eof) do
        begin
          point             := Serie.Points.Add;
          point.Color       := Random(150000);
          point.YValue      := QVentasTOTALVTA.AsFloat;
          Point.XValueText  := QVentasDIA.AsString;
          QVentas.Next;
        end;
    end;

  chartVentas.EndUpdate;

//////////////////////////////////////////////////////
  QCompras.Filtered:=False;

  QCompras.Close;
  QCompras.ParamByName('desde').AsDateTime   := Desde.Date;
  QCompras.ParamByName('hasta').AsDateTime   := Hasta.Date;
  QCompras.ParamByName('sucursal').AsInteger := ceSucursal.KeyValue;
  QCompras.Open;

  chartCompras.BeginUpdate;

  chartCompras.Legend.Visible    := False;
  chartCompras.Series.Clear;
  chartCompras.XAxis.Height      := 30;
  chartCompras.Title.Text        :='Compras..';
  SerieComp                      := chartCompras.Series.Add;
  SerieComp.ChartType            := ctBar;
  SerieComp.Pie.AutoSize         := True;
  SerieComp.Points.Clear;
  SerieComp.Stroke.Color         := gcBlue;
  SerieComp.Labels.Visible       := True;
  SerieComp.MinX:=0;
  SerieComp.MaxX:=10;
  QCompras.IndexFieldNames       :='DIA';
  QCompras.First;

  if Not(QCompras.IsEmpty) Then
    begin
      FirstDay:= QComprasDIA.Value;
      while Not(QCompras.Eof) do
        begin
          point             := SerieComp.Points.Add;
          point.Color       := Random(150000);
          point.YValue      := QComprasTOTALCOMPRAS.AsFloat;
          Point.XValueText  := QComprasDIA.AsString;
          QCompras.Next;
        end;
    end;
  chartCompras.EndUpdate;

/////////////////////////////////////////////////////////////////////
  QVentasCtdo.Filtered:=False;

  QVentasCtdo.Close;
  QVentasCtdo.ParamByName('desde').AsDateTime   := Desde.Date;
  QVentasCtdo.ParamByName('hasta').AsDateTime   := Hasta.Date;
  QVentasCtdo.ParamByName('sucursal').AsInteger := ceSucursal.KeyValue;
  QVentasCtdo.Open;

  chartVentasCtdo.BeginUpdate;

  chartVentasCtdo.Legend.Visible := False;
  chartVentasCtdo.Series.Clear;
  chartVentasCtdo.XAxis.Height   := 30;
  chartVentasCtdo.Title.Text     :='Ventas Contado ..';
  Serie                          := chartVentasCtdo.Series.Add;
  Serie.ChartType                := ctBar;
  Serie.Pie.AutoSize             := True;
  Serie.Points.Clear;
  Serie.Stroke.Color             := gcBlue;
  Serie.Labels.Visible           := True;
  Serie.MinX:=0;
  Serie.MaxX:=10;
  QVentasCtdo.IndexFieldNames    :='DIA';
  QVentasCtdo.First;

  if Not(QVentasCtdo.IsEmpty) Then
    begin
     // FirstDay:= QVentasCtdoDIA.Value;
      while Not(QVentasCtdo.Eof) do
        begin
          point             := Serie.Points.Add;
          point.Color       := clGreen;// Random(150000);
          point.YValue      := QVentasCtdoTOTALVTA.AsFloat;
          Point.XValueText  := QVentasCtdoDIA.AsString;
          QVentasCtdo.Next;
        end;
    end;

  chartVentasCtdo.EndUpdate;

///////////////////////////////////////////////////////////////////////

  QValores.Close;
  QValores.ParamByName('desde').AsDateTime   := Desde.Date;
  QValores.ParamByName('hasta').AsDateTime   := Hasta.Date;
  QValores.ParamByName('sucursal').AsInteger := ceSucursal.KeyValue;
  QValores.Open;



end;

procedure TFormInformeSemanal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
  CDSSucursal.Close;
end;

procedure TFormInformeSemanal.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Desde.Date := IncDay( EncodeDate(y,m,d),-7 );
  Hasta.Date := date;
  CDSSucursal.Open;
end;

procedure TFormInformeSemanal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormInformeSemanal:=nil;
end;

procedure TFormInformeSemanal.QComprasCalcFields(DataSet: TDataSet);
begin
  inherited;
  QComprasDIA.Value:=DayOfTheMonth(QComprasFECHACOMPRA.AsDateTime);
end;

procedure TFormInformeSemanal.QVentasCalcFields(DataSet: TDataSet);

begin
  inherited;
  QVentasDIA.Value:=DayOfTheMonth(QVentasFECHAVTA.AsDateTime);
end;

procedure TFormInformeSemanal.QVentasCtdoCalcFields(DataSet: TDataSet);
begin
  inherited;
  QVentasCtdoDIA.Value:=DayOfTheMonth(QVentasCtdoFECHAVTA.AsDateTime);
end;

procedure TFormInformeSemanal.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    begin
      Desde.Date := IncDay(Desde.Date,(7));
      Hasta.Date := IncDay(Hasta.Date,(7));
    end
  else
    if Button=btPrev Then
      begin
        Desde.Date := IncDay(Desde.Date,(-7));
        Hasta.Date := IncDay(Hasta.Date,(-7));
      end;

  Buscar.Execute;
end;

end.
