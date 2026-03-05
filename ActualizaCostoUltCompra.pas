unit ActualizaCostoUltCompra;

interface

uses
  System.SysUtils, System.Variants, System.Classes, System.Types, Vcl.Forms, Vcl.Controls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Grids, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Stan.Param, FireDAC.Stan.Intf, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.Stan.Error, UDMain_FD, Vcl.Mask,
  FireDAC.Stan.Option, FireDAC.Phys.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.DBCtrls, JvExControls, JvDBLookup;

type
  TFormActualizaCostoUltCompra = class(TForm)
    pnlFilters: TPanel;
    lblRubro: TLabel;
    lblSubRubro: TLabel;
    lblFechaDesde: TLabel;
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
    dbLookupRubro: TJvDBLookupCombo;
    dbLookupSubRubro: TJvDBLookupCombo;
    QStockAntesCODIGO_STK: TStringField;
    QStockAntesDETALLE_STK: TStringField;
    QStockAntesCOSTO_GRAVADO_STK: TFloatField;
    QStockAntesCOSTO_EXENTO_STK: TFloatField;
    QStockAntesFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QStockDespuesCODIGO_STK: TStringField;
    QStockDespuesDETALLE_STK: TStringField;
    QStockDespuesCOSTO_GRAVADO_STK: TFloatField;
    QStockDespuesCOSTO_EXENTO_STK: TFloatField;
    QStockDespuesFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    QRubrosCODIGO_RUBRO: TStringField;
    QRubrosDETALLE_RUBRO: TStringField;
    QSubRubrosCODIGO_SUBRUBRO: TStringField;
    QSubRubrosDETALLE_SUBRUBRO: TStringField;
    QSubRubrosCODIGO_RUBRO: TStringField;
    spActualiza: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure btnEjecutarClick(Sender: TObject);
    procedure btnRollbackClick(Sender: TObject);
    procedure btnCerrarClick(Sender: TObject);
    procedure TimerProgressTimer(Sender: TObject);
    procedure QRubrosAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    FExecutionThread: TThread;
    FExecutionError: string;
    FIsRunning: Boolean;
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
  public
    { Public declarations }
  end;

var
  FormActualizaCostoUltCompra: TFormActualizaCostoUltCompra;

implementation

uses
  System.Threading, Vcl.Dialogs;

{$R *.dfm}

procedure TFormActualizaCostoUltCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormActualizaCostoUltCompra.FormCreate(Sender: TObject);
begin
//  QRubros.Connection          := DMMain_FD.fdcGestion;
//  QSubRubros.Connection       := DMMain_FD.fdcGestion;
 // QStockAntes.Connection      := DMMain_FD.fdcGestion;
 // QStockDespues.Connection    := DMMain_FD.fdcGestion;
  QRubros.Open;
  dtpDesde.Date := Now - 30;
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
  lvCambios.ViewStyle   := vsReport;
  lblStatus.Caption     := 'Listo';
  pbProgress.Min        := 0;
  pbProgress.Max        := 100;
  pbProgress.Position   := 0;
  TimerProgress.Enabled := False;
  btnRollback.Enabled   := False;
end;

procedure TFormActualizaCostoUltCompra.FormDestroy(Sender: TObject);
begin
  FormActualizaCostoUltCompra:=nil;
end;

procedure TFormActualizaCostoUltCompra.btnCerrarClick(Sender: TObject);
begin
  if FIsRunning then
  begin
    ShowMessage('El proceso sigue ejecutándose. Espere a que termine o cancele antes de cerrar.');
    Exit;
  end;
  Close;
end;

procedure TFormActualizaCostoUltCompra.btnEjecutarClick(Sender: TObject);
begin
  if FIsRunning then
    Exit;
  CaptureOldValues;
  StartExecution;
end;

procedure TFormActualizaCostoUltCompra.btnRollbackClick(Sender: TObject);
begin
  if FIsRunning then
    Exit;
  if mtCambios.IsEmpty then
  begin
    ShowMessage('No hay cambios para revertir.');
    Exit;
  end;
  RollbackChanges;
end;

procedure TFormActualizaCostoUltCompra.TimerProgressTimer(Sender: TObject);
begin
  if not FIsRunning then
    Exit;
  pbProgress.Position := pbProgress.Position + 4;
  if pbProgress.Position > pbProgress.Max then
    pbProgress.Position := pbProgress.Min;
end;

procedure TFormActualizaCostoUltCompra.QRubrosAfterScroll(DataSet: TDataSet);
begin
  RefreshSubRubros;
end;

procedure TFormActualizaCostoUltCompra.RefreshSubRubros;
begin
  QSubRubros.Close;
  QSubRubros.ParamByName('Rubro').Value:= QRubrosCODIGO_RUBRO.Value;
  QSubRubros.Open;
  dbLookupSubRubro.KeyValue := Null;
end;



procedure TFormActualizaCostoUltCompra.SetStringParam(AParam: TFDParam; const AValue: string);
begin
  if AValue.Trim.IsEmpty then
    AParam.Clear
  else
    AParam.AsString := AValue;
end;

procedure TFormActualizaCostoUltCompra.SetStockParams(AQuery: TFDQuery);
begin
  if AQuery.SQL.Text.IsEmpty then
    Exit;
  AQuery.ParamByName('RUBRO').Clear;
  AQuery.ParamByName('SUBRUBRO').Clear;
  SetStringParam(AQuery.ParamByName('RUBRO'), QRubrosCODIGO_RUBRO.AsString);
  SetStringParam(AQuery.ParamByName('SUBRUBRO'), QSubRubrosCODIGO_SUBRUBRO.AsString);
end;

procedure TFormActualizaCostoUltCompra.CaptureOldValues;
begin
  mtCambios.EmptyDataSet;
  QStockAntes.Close;
  SetStockParams(QStockAntes);
  QStockAntes.Open;
  while not QStockAntes.Eof do
  begin
    mtCambios.Append;
    mtCambios.FieldByName('CODIGO').AsString                 := QStockAntes.FieldByName('CODIGO_STK').AsString;
    mtCambios.FieldByName('DETALLE').AsString                := QStockAntes.FieldByName('DETALLE_STK').AsString;
    mtCambios.FieldByName('COSTO_GRAVADO_OLD').AsFloat       := QStockAntes.FieldByName('COSTO_GRAVADO_STK').AsFloat;
    mtCambios.FieldByName('COSTO_EXENTO_OLD').AsFloat        := QStockAntes.FieldByName('COSTO_EXENTO_STK').AsFloat;
    mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').Value      := QStockAntes.FieldByName('FECHA_ULTIMA_COMPRA').Value;
    mtCambios.FieldByName('COSTO_GRAVADO_NEW').AsFloat       := mtCambios.FieldByName('COSTO_GRAVADO_OLD').AsFloat;
    mtCambios.FieldByName('COSTO_EXENTO_NEW').AsFloat        := mtCambios.FieldByName('COSTO_EXENTO_OLD').AsFloat;
    mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').AsDateTime := mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').AsDateTime;
    mtCambios.Post;
    QStockAntes.Next;
  end;
  PopulateChangeList;
end;

procedure TFormActualizaCostoUltCompra.StartExecution;
begin
  if FIsRunning then
    Exit;
  if mtCambios.IsEmpty then
  begin
    ShowMessage('No hay artículos con los filtros seleccionados para actualizar.');
    Exit;
  end;
  FExecutionError       := '';
  FIsRunning            := True;
  DisableControls;
  lblStatus.Caption     := 'Ejecutando actualización...';
  pbProgress.Style      := pbstMarquee;
  pbProgress.Position   := pbProgress.Min;
  TimerProgress.Enabled := True;
  FExecutionThread      := TThread.CreateAnonymousThread(
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
      Conn.Free;
      TThread.Queue(nil, DoAfterExecution);
    end);
  FExecutionThread.FreeOnTerminate := True;
  FExecutionThread.Start;
end;

procedure TFormActualizaCostoUltCompra.ExecuteStoredProc(const AConn: TFDConnection);
begin
  spActualiza.Connection     := AConn;
  spActualiza.Prepare;
  spActualiza.Params.ParamByName('FDESDE').Value   := dtpDesde.DateTime;
  spActualiza.Params.ParamByName('PRUBRO').Value   := QRubrosCODIGO_RUBRO.Value;
  spActualiza.Params.ParamByName('PSUBRUBRO').Value:= QSubRubrosCODIGO_SUBRUBRO.Value;
  if not AConn.InTransaction then
    AConn.StartTransaction;
  try
    spActualiza.ExecProc;
    AConn.Commit;
  except
      AConn.Rollback;
      raise;
  end;
end;

procedure TFormActualizaCostoUltCompra.DoAfterExecution;
begin
  FExecutionThread := nil;
  TimerProgress.Enabled := False;
  pbProgress.Style := pbstNormal;
  pbProgress.Position := pbProgress.Max;
  FIsRunning := False;
  EnableControls;
  if FExecutionError.IsEmpty then
  begin
    LoadAfterValues;
    PopulateChangeList;
    btnRollback.Enabled := not mtCambios.IsEmpty;
    lblStatus.Caption := 'Actualización completada';
    LogSummary(Format('Actualización completada para %s / %s', [QSubRubrosCODIGO_RUBRO.Value, QSubRubrosCODIGO_SUBRUBRO.Value]));
  end
  else
  begin
    lblStatus.Caption := 'Error al ejecutar';
    ShowMessage('Error durante la actualización: ' + FExecutionError);
    LogSummary('Error al ejecutar: ' + FExecutionError);
    FExecutionError := '';
  end;
end;

procedure TFormActualizaCostoUltCompra.LoadAfterValues;
begin
  if mtCambios.IsEmpty then
    Exit;
  QStockDespues.Close;
  SetStockParams(QStockDespues);
  QStockDespues.Open;
  mtCambios.DisableControls;
  try
    mtCambios.First;
    while not mtCambios.Eof do
    begin
      mtCambios.Edit;
      if QStockDespues.Locate('CODIGO_STK', mtCambios.FieldByName('CODIGO').AsString, []) then
      begin
        mtCambios.FieldByName('COSTO_GRAVADO_NEW').AsFloat       := QStockDespues.FieldByName('COSTO_GRAVADO_STK').AsFloat;
        mtCambios.FieldByName('COSTO_EXENTO_NEW').AsFloat        := QStockDespues.FieldByName('COSTO_EXENTO_STK').AsFloat;
        mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').AsDateTime := QStockDespues.FieldByName('FECHA_ULTIMA_COMPRA').AsDateTime;
      end
      else
      begin
        mtCambios.FieldByName('COSTO_GRAVADO_NEW').Clear;
        mtCambios.FieldByName('COSTO_EXENTO_NEW').Clear;
        mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').Clear;
      end;
      mtCambios.Post;
      mtCambios.Next;
    end;
  finally
    mtCambios.EnableControls;
  end;
end;

procedure TFormActualizaCostoUltCompra.PopulateChangeList;
var
  Item: TListItem;
  ValueText: string;
begin
  lvCambios.Items.BeginUpdate;
  try
    lvCambios.Items.Clear;
    mtCambios.First;
    while not mtCambios.Eof do
    begin
      Item := lvCambios.Items.Add;
      Item.Caption := mtCambios.FieldByName('CODIGO').AsString;
      Item.SubItems.Add(mtCambios.FieldByName('DETALLE').AsString);
      Item.SubItems.Add(FloatToStrF(mtCambios.FieldByName('COSTO_GRAVADO_OLD').AsFloat, ffFixed, 15, 2));
      Item.SubItems.Add(FloatToStrF(mtCambios.FieldByName('COSTO_GRAVADO_NEW').AsFloat, ffFixed, 15, 2));
      if mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').IsNull then
        ValueText := ''
      else
        ValueText := FormatDateTime('dd/MM/yyyy', mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').AsDateTime);
      Item.SubItems.Add(ValueText);
      if mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').IsNull then
        ValueText := ''
      else
        ValueText := FormatDateTime('dd/MM/yyyy', mtCambios.FieldByName('FECHA_ULT_COMPRA_NEW').AsDateTime);
      Item.SubItems.Add(ValueText);
      mtCambios.Next;
    end;
  finally
    lvCambios.Items.EndUpdate;
  end;
end;

procedure TFormActualizaCostoUltCompra.DisableControls;
begin
  dbLookupRubro.Enabled := False;
  dbLookupSubRubro.Enabled := False;
  dtpDesde.Enabled := False;
  btnEjecutar.Enabled := False;
  btnRollback.Enabled := False;
end;

procedure TFormActualizaCostoUltCompra.EnableControls;
begin
  dbLookupRubro.Enabled := True;
  dbLookupSubRubro.Enabled := True;
  dtpDesde.Enabled := True;
  btnEjecutar.Enabled := True;
end;

procedure TFormActualizaCostoUltCompra.LogSummary(const AResult: string);
begin
  memoLog.Lines.Insert(0, FormatDateTime('dd/MM/yyyy hh:nn:ss', Now) + ' - ' + AResult);
end;

procedure TFormActualizaCostoUltCompra.RollbackChanges;
var
  Query: TFDQuery;
begin
  Query := TFDQuery.Create(nil);
  try
    Query.Connection := DMMain_FD.fdcGestion;
    DMMain_FD.fdcGestion.StartTransaction;
    try
      Query.SQL.Text := 'UPDATE STOCK SET COSTO_GRAVADO_STK = :CG, COSTO_EXENTO_STK = :CE, FECHA_ULTIMA_COMPRA = :F WHERE CODIGO_STK = :COD';
      mtCambios.DisableControls;
      try
        mtCambios.First;
        while not mtCambios.Eof do
        begin
          Query.ParamByName('CG').AsFloat := mtCambios.FieldByName('COSTO_GRAVADO_OLD').AsFloat;
          Query.ParamByName('CE').AsFloat := mtCambios.FieldByName('COSTO_EXENTO_OLD').AsFloat;
          if mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').IsNull then
            Query.ParamByName('F').Clear
          else
            Query.ParamByName('F').AsDate := mtCambios.FieldByName('FECHA_ULT_COMPRA_OLD').AsDateTime;
          Query.ParamByName('COD').AsString := mtCambios.FieldByName('CODIGO').AsString;
          Query.ExecSQL;
          mtCambios.Next;
        end;
      finally
        mtCambios.EnableControls;
      end;
      DMMain_FD.fdcGestion.Commit;
      LogSummary('Rollback aplicado para ' + QSubRubrosCODIGO_RUBRO.Value + ' / ' + QSubRubrosCODIGO_SUBRUBRO.Value);
      LoadAfterValues;
      PopulateChangeList;
      btnRollback.Enabled := False;
      lblStatus.Caption := 'Rollback completado';
    except
      DMMain_FD.fdcGestion.Rollback;
      raise;
    end;
  finally
    Query.Free;
  end;
end;

function TFormActualizaCostoUltCompra.CreateThreadConnection: TFDConnection;
begin
  Result                   := TFDConnection.Create(nil);
  Result.DriverName        := DMMain_FD.fdcGestion.DriverName;
  Result.ConnectionDefName := DMMain_FD.fdcGestion.ConnectionDefName;
  Result.Params.Assign(DMMain_FD.fdcGestion.Params);
  Result.LoginPrompt       := False;
  Result.ResourceOptions.Assign(DMMain_FD.fdcGestion.ResourceOptions);
  Result.FormatOptions.Assign(DMMain_FD.fdcGestion.FormatOptions);
  Result.FetchOptions.Assign(DMMain_FD.fdcGestion.FetchOptions);
  Result.UpdateOptions.Assign(DMMain_FD.fdcGestion.UpdateOptions);
//  {$IF DECLARED(TFDConnection.PrepareOptions)}
//    Result.PrepareOptions.Assign(DMMain_FD.fdcGestion.PrepareOptions);
//  {$IFEND}
  Result.Connected := True;
end;

end.
