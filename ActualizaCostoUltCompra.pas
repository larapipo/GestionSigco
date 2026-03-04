unit ActualizaCostoUltCompra;

interface

uses
  System.SysUtils, System.Variants, System.Classes, System.Types, Vcl.Forms, Vcl.Controls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Stan.Param, FireDAC.Stan.Intf, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Error, UDMain_FD, System.Math, Vcl.Mask;

type
  TfrmActualizaCostoUltCompra = class(TForm)
    pnlFilters: TPanel;
    lblRubro: TLabel;
    lblSubRubro: TLabel;
    lblFechaDesde: TLabel;
    dbLookupRubro: TDBLookupComboBox;
    dbLookupSubRubro: TDBLookupComboBox;
    dtpDesde: TDateTimePicker;
    btnEjecutar: TButton;
    btnRollback: TButton;
    btnCerrar: TButton;
    pnlBottom: TPanel;
    pbProgress: TProgressBar;
    lblStatus: TLabel;
    pnlLog: TPanel;
    lblHistorial: TLabel;
    memoLog: TMemo;
    pnlChanges: TPanel;
    lblCambios: TLabel;
    lvCambios: TListView;
    splitterMain: TSplitter;
    dsRubros: TDataSource;
    dsSubRubros: TDataSource;
    QRubros: TFDQuery;
    QSubRubros: TFDQuery;
    QStockAntes: TFDQuery;
    QStockDespues: TFDQuery;
    mtCambios: TFDMemTable;
    TimerProgress: TTimer;
    procedure FormCreate(Sender: TObject);
    procedure btnEjecutarClick(Sender: TObject);
    procedure btnRollbackClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure TimerProgressTimer(Sender: TObject);
    procedure QRubrosAfterScroll(DataSet: TDataSet);
  private
    FExecutionThread: TThread;
    FExecutionError: string;
    FIsRunning: Boolean;
    FElapsedTicks: Integer;
    procedure RefreshSubRubros;
    function CreateThreadConnection: TFDConnection;
    procedure SetStringParam(AParam: TFDParam; const AValue: string);
    procedure SetStockParams(AQuery: TFDQuery);
    procedure CaptureOldValues;
    procedure LoadAfterValues;
    procedure PopulateChangeList;
    procedure DisableControls;
    procedure EnableControls;
    procedure StartExecution;
    procedure DoAfterExecution;
    procedure ExecuteStoredProc(const AConn: TFDConnection);
    procedure LogSummary(const AResult: string);
    procedure RollbackChanges;
    function SelectedRubroCode: string;
    function SelectedSubRubroCode: string;
    function SelectedRubroText: string;
    function SelectedSubRubroText: string;
  public
    { Public declarations }
  end;

var
  frmActualizaCostoUltCompra: TfrmActualizaCostoUltCompra;

implementation

uses
  System.Variants, System.Threading, FireDAC.Comp.Client, Vcl.Dialogs;

{$R *.dfm}

procedure TfrmActualizaCostoUltCompra.FormCreate(Sender: TObject);
begin
  QRubros.Connection := DMMain_FD.fdcGestion;
  QSubRubros.Connection := DMMain_FD.fdcGestion;
  QStockAntes.Connection := DMMain_FD.fdcGestion;
  QStockDespues.Connection := DMMain_FD.fdcGestion;
  dsRubros.DataSet := QRubros;
  dsSubRubros.DataSet := QSubRubros;
  QRubros.SQL.Text := 'SELECT CODIGO_RUBRO, DETALLE_RUBRO FROM RUBROS ORDER BY ORDEN';
  QSubRubros.SQL.Text := 'SELECT CODIGO_SUBRUBRO, DETALLE_SUBRUBRO, CODIGO_RUBRO FROM SUBRUBROS WHERE (:RUBRO IS NULL OR CODIGO_RUBRO = :RUBRO) ORDER BY DETALLE_SUBRUBRO';
  QStockAntes.SQL.Text := 'SELECT CODIGO_STK, DETALLE_STK, COSTO_GRAVADO_STK, COSTO_EXENTO_STK, FECHA_ULTIMA_COMPRA FROM STOCK WHERE (:RUBRO IS NULL OR RUBRO_STK = :RUBRO) AND (:SUBRUBRO IS NULL OR SUBRUBRO_STK = :SUBRUBRO)';
  QStockDespues.SQL.Text := QStockAntes.SQL.Text;
  QRubros.Open;
  RefreshSubRubros;
  with mtCambios do
  begin
    FieldDefs.Clear;
    FieldDefs.Add('CODIGO', ftString, 20);
    FieldDefs.Add('DETALLE', ftString, 100);
    FieldDefs.Add('COSTO_GRAVADO_OLD', ftFloat);
    FieldDefs.Add('COSTO_EXENTO_OLD', ftFloat);
    FieldDefs.Add('FECHA_ULT_COMPRA_OLD', ftDate);
    FieldDefs.Add('COSTO_GRAVADO_NEW', ftFloat);
    FieldDefs.Add('COSTO_EXENTO_NEW', ftFloat);
    FieldDefs.Add('FECHA_ULT_COMPRA_NEW', ftDate);
    CreateDataSet;
  end;
  lvCambios.ViewStyle := vsReport;
  lblStatus.Caption := 'Listo';
  pbProgress.Min := 0;
  pbProgress.Max := 100;
  pbProgress.Position := 0;
  TimerProgress.Enabled := False;
  btnRollback.Enabled := False;
end;

function TfrmActualizaCostoUltCompra.SelectedRubroCode: string;
begin
  Result := '';
  if not VarIsNull(dbLookupRubro.KeyValue) then
    Result := Trim(VarToStr(dbLookupRubro.KeyValue));
end;

function TfrmActualizaCostoUltCompra.SelectedSubRubroCode: string;
begin
  Result := '';
  if not VarIsNull(dbLookupSubRubro.KeyValue) then
    Result := Trim(VarToStr(dbLookupSubRubro.KeyValue));
end;

function TfrmActualizaCostoUltCompra.SelectedRubroText: string;
begin
  Result := '';
  if QRubros.Active and not QRubros.IsEmpty then
    Result := QRubros.FieldByName('DETALLE_RUBRO').AsString;
end;

function TfrmActualizaCostoUltCompra.SelectedSubRubroText: string;
begin
  Result := '';
  if QSubRubros.Active and not QSubRubros.IsEmpty then
    Result := QSubRubros.FieldByName('DETALLE_SUBRUBRO').AsString;
end;

procedure TfrmActualizaCostoUltCompra.SetStringParam(AParam: TFDParam; const AValue: string);
begin
  if AValue.Trim.IsEmpty then
    AParam.Clear
  else
    AParam.AsString := AValue;
end;

procedure TfrmActualizaCostoUltCompra.SetStockParams(AQuery: TFDQuery);
begin
  AQuery.ParamByName('RUBRO').Clear;
  AQuery.ParamByName('SUBRUBRO').Clear;
  SetStringParam(AQuery.ParamByName('RUBRO'), SelectedRubroCode);
  SetStringParam(AQuery.ParamByName('SUBRUBRO'), SelectedSubRubroCode);
end;

procedure TfrmActualizaCostoUltCompra.RefreshSubRubros;
begin
  QSubRubros.Close;
  SetStockParams(QSubRubros);
  QSubRubros.Open;
  dbLookupSubRubro.KeyValue := Null;
end;

procedure TfrmActualizaCostoUltCompra.CaptureOldValues;
begin
  mtCambios.EmptyDataSet;
  QStockAntes.Close;
  SetStockParams(QStockAntes);
  QStockAntes.Open;
  while not QStockAntes.Eof do
  begin
    mtCambios.Append;
    mtCambios.FieldByName('CODIGO').AsString := QStockAntes.FieldByName('CODIGO_STK').AsString;
    mtCambios.FieldByName('DETALLE').AsString := QStockAntes.FieldByName('DETALLE_STK').AsString;
    mtCambios.FieldByName('COSTO_GRAVADO_OLD').AsFloat := QStockAntes.FieldByName('COSTO_GRAVADO_STK').AsFloat;
    mtCambios.FieldByName('COSTO_EXENTO_OLD').AsFloat := QStockAntes.FieldByName('COSTO_EXENTO_STK').AsFloat;
    mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').Value := QStockAntes.FieldByName('FECHA_ULTIMA_COMPRA').Value;
    mtCambios.FieldByName('COSTO_GRAVADO_NEW').AsFloat := QStockAntes.FieldByName('COSTO_GRAVADO_STK').AsFloat;
    mtCambios.FieldByName('COSTO_EXENTO_NEW').AsFloat := QStockAntes.FieldByName('COSTO_EXENTO_STK').AsFloat;
    mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').Value := QStockAntes.FieldByName('FECHA_ULTIMA_COMPRA').Value;
    mtCambios.Post;
    QStockAntes.Next;
  end;
end;

procedure TfrmActualizaCostoUltCompra.StartExecution;
begin
  if mtCambios.IsEmpty then
  begin
    ShowMessage('No hay artículos para actualizar con los filtros seleccionados.');
    Exit;
  end;
  FExecutionError := '';
  FIsRunning := True;
  DisableControls;
  btnEjecutar.Enabled := False;
  btnRollback.Enabled := False;
  lblStatus.Caption := 'Ejecutando...';
  pbProgress.Style := pbstMarquee;
  pbProgress.MarqueeAnimationSpeed := 25;
  TimerProgress.Enabled := True;
  FElapsedTicks := 0;
  FExecutionThread := TThread.CreateAnonymousThread(
    procedure
    var
      Conn: TFDConnection;
    begin
      Conn := CreateThreadConnection;
      try
        ExecuteStoredProc(Conn);
      except
        on E: Exception do
          FExecutionError := E.Message;
      end;
      TThread.Queue(nil, DoAfterExecution);
    end);
  FExecutionThread.FreeOnTerminate := True;
  FExecutionThread.Start;
end;

procedure TfrmActualizaCostoUltCompra.ExecuteStoredProc(const AConn: TFDConnection);
var
  StoredProc: TFDStoredProc;
begin
  StoredProc := TFDStoredProc.Create(nil);
  try
    StoredProc.Connection := AConn;
    StoredProc.StoredProcName := 'TOOL_ACT_COSTO_X_ULTCOMPRA';
    StoredProc.Prepare;
    StoredProc.Params.ParamByName('FDESDE').AsDate := dtpDesde.Date;
    SetStringParam(StoredProc.Params.ParamByName('PRUBRO'), SelectedRubroCode);
    SetStringParam(StoredProc.Params.ParamByName('PSUBRUBRO'), SelectedSubRubroCode);
    if not AConn.InTransaction then
      AConn.StartTransaction;
    try
      StoredProc.ExecProc;
      AConn.Commit;
    except
      AConn.Rollback;
      raise;
    end;
  finally
    StoredProc.Free;
  end;
end;

procedure TfrmActualizaCostoUltCompra.DoAfterExecution;
begin
  FGExecutionThread := nil; // Note: need to ensure field name correct
end;
