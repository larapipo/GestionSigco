unit UListadoGastosObra;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, AdvUtil, Vcl.Grids, AdvObj, BaseGrid,
  AdvGrid, DBAdvGrid, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, JvToolEdit, AdvOfficeButtons,
  Vcl.Mask, JvExMask, DataExport, DataToXLS, frxClass, frxExportBaseDialog,
  frxExportPDF, frxDBSet,DateUtils, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, VCL.TMSFNCChart, Vcl.DBGrids,
  VCL.TMSFNCCustomComponent, VCL.TMSFNCChartDatabaseAdapter, frCoreClasses;

type
  TFormListadoGastosObra = class(TFormABMBase)
    pnPie: TPanel;
    pnHead: TPanel;
    Label3: TLabel;
    ceObra: TJvComboEdit;
    chbTodas: TAdvOfficeCheckBox;
    Label1: TLabel;
    desde: TJvDateEdit;
    Label2: TLabel;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    edNombreObra: TEdit;
    QObras: TFDQuery;
    QObrasCODIGO: TIntegerField;
    QObrasDETALLE: TStringField;
    QObrasFEHCHAINCIO: TSQLTimeStampField;
    QObrasFECHAFINAL: TSQLTimeStampField;
    QObrasESTADO: TStringField;
    QObrasRESPONSABLE: TStringField;
    QObrasDIREECION: TStringField;
    QObrasLISTAPRECIOS: TIntegerField;
    frxReport: TfrxReport;
    frxDBDetalle: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    DataToXLS1: TDataToXLS;
    SaveDialog: TSaveDialog;
    QMovimientos: TFDQuery;
    DSMovimientos: TDataSource;
    QMovimientosOPERACION: TStringField;
    QMovimientosID_RC: TIntegerField;
    QMovimientosFECHA: TDateField;
    QMovimientosTIPOCPBTE: TStringField;
    QMovimientosCLASECPBTE: TStringField;
    QMovimientosNROCPBTE: TStringField;
    QMovimientosCODIGO: TStringField;
    QMovimientosRAZONSOCIAL: TStringField;
    QMovimientosNOMBRE: TStringField;
    QMovimientosDEBE: TFloatField;
    QMovimientosHABER: TFloatField;
    QMovimientosID_OBRA: TIntegerField;
    QMovimientosANIO: TSmallintField;
    QMovimientosMES: TSmallintField;
    pnMovimientos: TPanel;
    QMovimientosSALDO: TFloatField;
    PageControl1: TPageControl;
    pagDatos: TTabSheet;
    dbgDetalle: TDBAdvGrid;
    pagGrafico: TTabSheet;
    pnGrafico: TPanel;
    pnDatos: TPanel;
    QTotales: TFDQuery;
    QTotalesTIPOCPBTE: TStringField;
    QTotalesCLASECPBTE: TStringField;
    QTotalesCODIGO: TStringField;
    QTotalesRAZONSOCIAL: TStringField;
    QTotalesNOMBRE: TStringField;
    QTotalesID_OBRA: TIntegerField;
    QTotalesTOTAL: TFloatField;
    DBGrid1: TDBGrid;
    DSTotales: TDataSource;
    Panel2: TPanel;
    TMSFNCChartDatabaseAdapter1: TTMSFNCChartDatabaseAdapter;
    fncChart: TTMSFNCBarChart;
    Button1: TButton;
    procedure ceObraButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure chbTodasClick(Sender: TObject);
    procedure dbgDetalleGetFloatFormat(Sender: TObject; ACol, ARow: Integer;
      var IsFloat: Boolean; var FloatFormat: string);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoGastosObra: TFormListadoGastosObra;

implementation

{$R *.dfm}

uses UDMain_FD, UBuscadorObras;

procedure TFormListadoGastosObra.BuscarExecute(Sender: TObject);
var Serie,SerieComp   :TTMSFNCChartSerie;
  Point   :TTMSFNCChartPoint;
begin
  inherited;
 // TMSFNCChartDatabaseAdapter1.Active:=False;
  //fncChart.Series.Clear;

  dbgDetalle.UnGroup;
  QMovimientos.Close;
  if chbTodas.Checked then
    QMovimientos.ParamByName('id_obra').Value:=-1
  else
    QMovimientos.ParamByName('id_obra').Value:=StrToInt(ceObra.Text);

  QMovimientos.ParamByName('Desde').Value:=desde.Date;
  QMovimientos.ParamByName('Hasta').Value:=Hasta.Date;
  QMovimientos.Open;

  QTotales.Close;
  if chbTodas.Checked then
    QTotales.ParamByName('id_obra').Value:=-1
  else
    QTotales.ParamByName('id_obra').Value:=StrToInt(ceObra.Text);
  QTotales.ParamByName('Desde').Value:=desde.Date;
  QTotales.ParamByName('Hasta').Value:=Hasta.Date;
  QTotales.Open;

  dbgDetalle.GroupColumn:=1;
  dbgDetalle.GroupSum(6);
  dbgDetalle.GroupSum(7);
  dbgDetalle.GroupSum(8);

  dbgDetalle.ExpandAll;

  fncChart.BeginUpdate;
  fncChart.Clear;
  fncChart.Legend.Visible := False;
  fncChart.Series.Clear;
  fncChart.XAxis.Height   := 100;
  fncChart.Title.Text     :='Compras';

  Serie                      := fncChart.Series.Add;
  Serie.ChartType            := ctPie;
  Serie.Pie.AutoSize         := True;
  Serie.Points.Clear;
  Serie.Stroke.Kind      := gskNone;
  Serie.Labels.Visible   := True;
  Serie.Mode             := smStatistical;
//  Serie.MinX            := 0;
//  Serie.MaxX            := 10;
  Serie.Stroke.Kind     := gskNone;
  Serie.Fill.Kind       := gfkGradient;
  serie.Enable3D        := True;
  Serie.XValues.Angle   := 50;
  Serie.AutoYRange      := arEnabledZeroBased;
  Serie.MaxYOffsetPercentage :=0;
  serie.Bar.Width            := 60;
  Serie.Labels.Fill.Kind     := gfkNone;
  Serie.Labels.Stroke.Kind   := gskNone;
  Serie.Labels.OffsetY       := -15;
  Serie.YValues.AutoUnits    := True;
  fncChart.Margins.Top:=15;
  QTotales.First;
  //fncChart.Adapter:=TMSFNCChartDatabaseAdapter1;
  //TMSFNCChartDatabaseAdapter1.Source.DataSource:=DSTotales;
  //TMSFNCChartDatabaseAdapter1.AutoCreateSeries:=False;

  //TMSFNCChartDatabaseAdapter1.Active:=True;
  while Not(QTotales.Eof) do
    begin
       point             := Serie.Points.Add;
       point.Color       := Random(250000);
       point.YValue      := QTotalesTOTAL.AsFloat;
       Point.XValueText  := QTotalesNOMBRE.AsString;
       QTotales.Next;
    end;


 fncChart.EndUpdate;
  //dbgDetalle.ColumnSum(7);
  //dbgDetalle.ColumnSum(8);

end;

procedure TFormListadoGastosObra.Button1Click(Sender: TObject);
begin
  inherited;
  if pnDatos.Width<=0 then
    pnDatos.Width:=356
  else
    pnDatos.Width:=0;

end;

procedure TFormListadoGastosObra.ceObraButtonClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorObras)) Then
    FormBuscadorObras:=TFormBuscadorObras.Create(Application);
  FormBuscadorObras.ShowModal;
  if FormBuscadorObras.Codigo>-1 Then
    begin
      QObras.Close;
      QObras.ParamByName('codigo').Value:=FormBuscadorObras.Codigo;
      QObras.Open;
      edNombreObra.Text := QObrasDETALLE.AsString;
      ceObra.Text       := IntToStr(FormBuscadorObras.Codigo);
      desde.Date        := QObrasFEHCHAINCIO.AsDateTime;
      Buscar.Execute;
    end;
end;

procedure TFormListadoGastosObra.chbTodasClick(Sender: TObject);
begin
  inherited;
  if chbTodas.Checked then
    begin
      ceObra.Enabled :=False;
      ceObra.Color   :=clBtnFace;
      edNombreObra.Clear;
    end
  else
    begin
      ceObra.Enabled :=True;
      ceObra.Color   :=clWhite;
    end;
end;

procedure TFormListadoGastosObra.dbgDetalleGetFloatFormat(Sender: TObject; ACol,
  ARow: Integer; var IsFloat: Boolean; var FloatFormat: string);
begin
  inherited;
  case ACol of
    6..10:FloatFormat:='%.2n'
  end;
end;


procedure TFormListadoGastosObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoGastosObra.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormListadoGastosObra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoGastosObra:=nil;
end;

procedure TFormListadoGastosObra.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  inherited;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(desde.Date));
  Buscar.Execute;

end;

end.
