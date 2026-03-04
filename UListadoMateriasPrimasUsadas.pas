unit UListadoMateriasPrimasUsadas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask,
  JvExMask, JvToolEdit,System.DateUtils, VCL.TMSFNCTypes, VCL.TMSFNCUtils,
  VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes, System.Rtti,
  VCL.TMSFNCDataGridCell, VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase,
  VCL.TMSFNCDataGridCore, VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomControl,
  VCL.TMSFNCDataGrid, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, Datasnap.DBClient, Datasnap.Provider,
  Vcl.Menus, Vcl.Grids, Vcl.DBGrids;

type
  TFormListadoMateriasPrimasUsadas = class(TFormABMBase)
    pnCab: TPanel;
    lb2: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    ud1: TUpDown;
    Label1: TLabel;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    QMovimientos: TFDQuery;
    DSPMovimientos: TDataSetProvider;
    CDSMovimientos: TClientDataSet;
    DSMovimientos: TDataSource;
    CDSMovimientosCODIGO: TStringField;
    CDSMovimientosDETALLE: TStringField;
    CDSMovimientosCANTIDAD: TFloatField;
    CDSMovimientosTIPOCPBTE: TStringField;
    CDSMovimientosNROCPBTE: TStringField;
    CDSMovimientosMODO: TStringField;
    pnPie: TPanel;
    PopupMenu1: TPopupMenu;
    ExportarXLS1: TMenuItem;
    SaveDialog: TSaveDialog;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    PageControl1: TPageControl;
    pagArticulos: TTabSheet;
    pagMaterias: TTabSheet;
    TMSFNCDataGrid2: TTMSFNCDataGrid;
    TMSFNCDataGridDatabaseAdapter2: TTMSFNCDataGridDatabaseAdapter;
    QResumenMateriasPrimas: TFDQuery;
    DSResumen: TDataSource;
    QResumenMateriasPrimasFECHA: TSQLTimeStampField;
    QResumenMateriasPrimasTIPOCPBTE: TStringField;
    QResumenMateriasPrimasNROCPBTE: TStringField;
    QResumenMateriasPrimasPRODUCTO_FABRICADO: TStringField;
    QResumenMateriasPrimasNOMBRE_PRODUCTO_FABRICADO: TStringField;
    QResumenMateriasPrimasCODIGO_INSUMO: TStringField;
    QResumenMateriasPrimasNOMBRE_INSUMO: TStringField;
    QResumenMateriasPrimasNIVEL: TIntegerField;
    QResumenMateriasPrimasCANTIDAD_TOTAL: TFloatField;
    QResumenMateriasPrimasCANTIDAD_POR_UNIDAD: TFloatField;
    QResumenMateriasPrimasCANTIDAD_USADA_TEORICA: TFloatField;
    QResumenMateriasPrimasES_PRODUCCION: TStringField;
    QResumenACumulado: TFDQuery;
    DSResumenACumulado: TDataSource;
    QResumenACumuladoCODIGO_INSUMO: TStringField;
    QResumenACumuladoNOMBRE_INSUMO: TStringField;
    QResumenACumuladoCANTIDAD_USADA_TEORICA_TOTAL: TFloatField;
    pagResumen: TTabSheet;
    QResumenACumuladoUNIDAD: TStringField;
    TMSFNCDataGrid3: TTMSFNCDataGrid;
    TMSFNCDataGridDatabaseAdapter3: TTMSFNCDataGridDatabaseAdapter;
    Panel2: TPanel;
    Button1: TButton;
    Button2: TButton;
    btResumen: TButton;
    CheckBox1: TCheckBox;
    Panel3: TPanel;
    btGrupo: TButton;
    btExpColapse: TButton;
    chbFiltros: TCheckBox;
    procedure ud1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure btGrupoClick(Sender: TObject);
    procedure btExpColapseClick(Sender: TObject);
    procedure ExportarXLS1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure chbFiltrosClick(Sender: TObject);
    procedure TMSFNCDataGrid1GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure btResumenClick(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure TMSFNCDataGrid2GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure TMSFNCDataGrid3GetCellFormatting(Sender: TObject;
      ACell: TTMSFNCDataGridCellCoord; AData: TTMSFNCDataGridCellValue;
      var AFormatting: TTMSFNCDataGridDataFormatting;
      var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
    procedure TMSFNCDataGrid3AfterSortColumn(Sender: TObject; AColumn: Integer);
  private
    { Private declarations }
    FGrouped       : Boolean;
    FGroupedDetalle: Boolean;
    procedure FormatGrids;
    procedure RefreshQueries(FechaDesde, FechaHasta: TDate);

  public
    { Public declarations }
  end;

var
  FormListadoMateriasPrimasUsadas: TFormListadoMateriasPrimasUsadas;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormListadoMateriasPrimasUsadas.BuscarExecute(Sender: TObject);
var r:Integer;
begin
  inherited;
  CDSMovimientos.Close;
  CDSMovimientos.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSMovimientos.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSMovimientos.Params.ParamByName('motivo').value:=DMMain_FD.GetMotivoAjusteProduccion;
  CDSMovimientos.Open;

  btGrupo.OnClick(Self);

  if CDSMovimientos.RecordCount>0 then
  for r := 1 to TMSFNCDataGrid1.RowCount-1 do
    TMSFNCDataGrid1.TextAligns[2,r]            := gtaTrailing;


 // TMSFNCDataGrid1.Columns[2].Formatting.Format := '%.2f';
//    TMSFNCDataGrid1.te
  TMSFNCDataGrid1.Columns[0].Width := 80; // Ajusta la primera columna a 150 píxeles
  TMSFNCDataGrid1.Columns[1].Width := 400; // Ajusta la segunda columna a 200 píxeles
  TMSFNCDataGrid1.Columns[2].Width := 100; // Ajusta la primera columna a 150 píxeles
  TMSFNCDataGrid1.Columns[3].Width := 70; // Ajusta la segunda columna a 200 píxeles
  TMSFNCDataGrid1.Columns[4].Width := 100; // Ajusta la primera columna a 150 píxeles
  TMSFNCDataGrid1.Columns[5].Width := 300; // Ajusta la segunda columna a 200 píxeles
  //TMSFNCDataGrid1.Columns.
end;

procedure TFormListadoMateriasPrimasUsadas.btGrupoClick(Sender: TObject);
begin
  if not FGrouped then
    begin
      TMSFNCDataGrid1.Options.Grouping.MergeHeader := true;
      TMSFNCDataGrid1.Options.Grouping.Summary     := true;
      TMSFNCDataGrid1.Group(0);
      TMSFNCDataGrid1.GroupSum(2);
    end
  else
    TMSFNCDataGrid1.UnGroup;

  FGrouped             := not FGrouped;
  btExpColapse.Visible := FGrouped;
  if FGrouped then
    btGrupo.Caption := 'Ungroup'
  else
    btGrupo.Caption := 'Group';
end;

//procedure TFormListadoMateriasPrimasUsadas.btResumenClick(Sender: TObject);
//var
//  QReceta, QInsert: TFDQuery;
//  ListaRecetas: array of record
//    ProductoFinal, CodigoInsumo: string;
//    CantidadPorUnidad: Double;
//    Nivel: Integer;
//  end;
//  i,r: Integer;
//  fs: TFormatSettings;
//begin
//  fs := TFormatSettings.Create;
//  fs.DecimalSeparator := '.';
//
//  QReceta := TFDQuery.Create(nil);
//  QInsert := TFDQuery.Create(nil);
//  try
//    QReceta.Connection := DMMain_FD.fdcGestion;
//    QReceta.SQL.Text   := '''
//                            WITH RECURSIVE RECETA_RECURSIVA (
//                              PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL, CAMINO) AS (
//                              SELECT cab.CODIGO, det.CODIGO_STK, det.CANTIDAD_REAL/coalesce(cab.cantidad,1) , 1,
//                                     CAST(cab.CODIGO || ',' || det.CODIGO_STK AS VARCHAR(500))
//                              FROM STOCK_PRODUCCION_CAB cab
//                              JOIN STOCK_PRODUCCION_DET det ON det.ID_CAB = cab.ID
//                              UNION ALL
//                              SELECT r.PRODUCTO_FINAL, d2.CODIGO_STK, r.CANTIDAD_POR_UNIDAD * (d2.CANTIDAD_REAL / coalesce(c2.CANTIDAD, 1)), r.NIVEL + 1,
//                                     r.CAMINO || ',' || d2.CODIGO_STK
//                              FROM RECETA_RECURSIVA r
//                              JOIN STOCK_PRODUCCION_CAB c2 ON c2.CODIGO = r.CODIGO_INSUMO
//                              JOIN STOCK_PRODUCCION_DET d2 ON d2.ID_CAB = c2.ID
//                              WHERE r.CAMINO NOT CONTAINING d2.CODIGO_STK AND r.NIVEL < 20 )
//                            SELECT PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL FROM RECETA_RECURSIVA
//                          ''';
//    QReceta.Open;
//
//    // Volcar resultados al array
//    SetLength(ListaRecetas, 0);
//    i := 0;
//    while not QReceta.Eof do
//    begin
//      SetLength(ListaRecetas, Length(ListaRecetas) + 1);
//      ListaRecetas[i].ProductoFinal     := QReceta.FieldByName('PRODUCTO_FINAL').AsString;
//      ListaRecetas[i].CodigoInsumo      := QReceta.FieldByName('CODIGO_INSUMO').AsString;
//      ListaRecetas[i].CantidadPorUnidad := QReceta.FieldByName('CANTIDAD_POR_UNIDAD').AsFloat;
//      ListaRecetas[i].Nivel             := QReceta.FieldByName('NIVEL').AsInteger;
//      Inc(i);
//      QReceta.Next;
//    end;
//    QReceta.Close;
//
//    // Borrar datos anteriores
//    DMMain_FD.fdcGestion.ExecSQL('DELETE FROM TMP_RECETA_EXPANDIDA');
//
//    // Insertar en lote con ArrayDML
//    QInsert.Connection := DMMain_FD.fdcGestion;
//    QInsert.SQL.Text :=
//      'INSERT INTO TMP_RECETA_EXPANDIDA (PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL) ' +
//      'VALUES (:PF, :CI, :CPU, :NIV)';
//
//    QInsert.Params.ArraySize := Length(ListaRecetas);
//    QInsert.ParamByName('PF').DataType := ftString;
//    QInsert.ParamByName('CI').DataType := ftString;
//    QInsert.ParamByName('CPU').DataType := ftFloat;
//    QInsert.ParamByName('NIV').DataType := ftInteger;
//
//    for i := 0 to High(ListaRecetas) do
//    begin
//      QInsert.Params[0].AsStrings[i] := ListaRecetas[i].ProductoFinal;
//      QInsert.Params[1].AsStrings[i] := ListaRecetas[i].CodigoInsumo;
//      QInsert.Params[2].AsFloats[i] := ListaRecetas[i].CantidadPorUnidad;
//      QInsert.Params[3].AsIntegers[i] := ListaRecetas[i].Nivel;
//    end;
//
//    QInsert.Execute(QInsert.Params.ArraySize, 0);
//
//  finally
//    QInsert.Free;
//    QReceta.Free;
//  end;
//
//  // Refrescar resultados
//  QResumenMateriasPrimas.Close;
//  QResumenMateriasPrimas.ParamByName('desde').AsDate := Desde.Date;
//  QResumenMateriasPrimas.ParamByName('hasta').AsDate := Hasta.Date;
//  QResumenMateriasPrimas.Open;
//
//  QResumenACumulado.Close;
//  QResumenACumulado.ParamByName('desde').AsDate := Desde.Date;
//  QResumenACumulado.ParamByName('hasta').AsDate := Hasta.Date;
//  QResumenACumulado.Open;
//
//  if QResumenACumulado.RecordCount>0 then
//  for r := 1 to TMSFNCDataGrid2.RowCount-1 do
//    begin
//      TMSFNCDataGrid2.TextAligns[5,r]            := gtaTrailing;
//      TMSFNCDataGrid2.TextAligns[6,r]            := gtaTrailing;
//      TMSFNCDataGrid2.TextAligns[7,r]            := gtaTrailing;
//    end;
//
//  for r := 1 to TMSFNCDataGrid3.RowCount-1 do
//    begin
//      TMSFNCDataGrid3.TextAligns[3,r]            := gtaTrailing;
//    end;
//
//end;


procedure TFormListadoMateriasPrimasUsadas.btExpColapseClick(Sender: TObject);
begin
  inherited;
 if btExpColapse.Tag = 0 then
  begin
    TMSFNCDataGrid1.CollapseAllNodes;
    btExpColapse.Tag := 1;
  end
  else
  begin
    TMSFNCDataGrid1.ExpandAllNodes;
    btExpColapse.Tag := 0;
  end;
end;

procedure TFormListadoMateriasPrimasUsadas.Button1Click(Sender: TObject);
begin
  inherited;
  begin
    if not FGroupedDetalle then
      begin
        TMSFNCDataGrid2.Options.Grouping.MergeHeader := true;
        TMSFNCDataGrid2.Options.Grouping.Summary     := true;
        TMSFNCDataGrid2.Group(2);
        TMSFNCDataGrid2.GroupSum(7);
      end
    else
      TMSFNCDataGrid2.UnGroup;

    FGroupedDetalle    := not FGroupedDetalle;
    Button2.Visible    := FGroupedDetalle;
    if FGroupedDetalle then
      Button1.Caption := 'Ungroup'
    else
      Button1.Caption := 'Group'
  end;

end;

procedure TFormListadoMateriasPrimasUsadas.Button2Click(Sender: TObject);
begin
  inherited;
  if Button2.Tag = 0 then
  begin
    TMSFNCDataGrid2.CollapseAllNodes;
    Button2.Tag := 1;
  end
  else
  begin
    TMSFNCDataGrid2.ExpandAllNodes;
    Button2.Tag := 0;
  end;
end;

procedure TFormListadoMateriasPrimasUsadas.chbFiltrosClick(Sender: TObject);
begin
  inherited;
  TMSFNCDataGrid1.Options.Filtering.Enabled:= chbFiltros.Checked;
end;

procedure TFormListadoMateriasPrimasUsadas.CheckBox1Click(Sender: TObject);
begin
  inherited;
  TMSFNCDataGrid2.Options.Filtering.Enabled:= CheckBox1.Checked;
end;



procedure TFormListadoMateriasPrimasUsadas.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoMateriasPrimasUsadas.ExportarXLS1Click(Sender: TObject);
begin
  inherited;
  if SaveDialog.Execute then
    begin
      if PageControl1.ActivePageIndex=0 then
        begin
          if UpperCase(ExtractFileExt(SaveDialog.FileName))='' then
             TMSFNCDataGrid1.SaveToCSVData(SaveDialog.FileName+'.csv')
          else
            TMSFNCDataGrid1.SaveToCSVData(SaveDialog.FileName);
        end
      else
      if PageControl1.ActivePageIndex=1 then
        begin
          if UpperCase(ExtractFileExt(SaveDialog.FileName))='' then
             TMSFNCDataGrid2.SaveToCSVData(SaveDialog.FileName+'.csv')
          else
            TMSFNCDataGrid2.SaveToCSVData(SaveDialog.FileName);
        end
      else
      if PageControl1.ActivePageIndex=2 then
        begin
          if UpperCase(ExtractFileExt(SaveDialog.FileName))='' then
             TMSFNCDataGrid3.SaveToCSVData(SaveDialog.FileName+'.csv')
          else
            TMSFNCDataGrid3.SaveToCSVData(SaveDialog.FileName);
        end;

    end;
end;

procedure TFormListadoMateriasPrimasUsadas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoMateriasPrimasUsadas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormListadoMateriasPrimasUsadas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoMateriasPrimasUsadas:=nil;
end;

procedure TFormListadoMateriasPrimasUsadas.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Date));
end;

procedure TFormListadoMateriasPrimasUsadas.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormListadoMateriasPrimasUsadas.TMSFNCDataGrid1GetCellFormatting(
  Sender: TObject; ACell: TTMSFNCDataGridCellCoord;
  AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  if ACell.Column=2 then
    begin
      AFormatting.&Type := gdftFloat;
      AFormatting.Format:= ',0.000';
    end;
end;

procedure TFormListadoMateriasPrimasUsadas.TMSFNCDataGrid2GetCellFormatting(
  Sender: TObject; ACell: TTMSFNCDataGridCellCoord;
  AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  if (ACell.Column>4) and (ACell.Column<8) then
    begin
      AFormatting.&Type := gdftFloat;
      AFormatting.Format:= ',0.000';
    end;
end;

procedure TFormListadoMateriasPrimasUsadas.TMSFNCDataGrid3AfterSortColumn(
  Sender: TObject; AColumn: Integer);
begin
  inherited;
  //TMSFNCDataGrid3.Repaint;
  TMSFNCDataGrid3.Columns[3].ControlAlign:= gcaRight;
end;

procedure TFormListadoMateriasPrimasUsadas.TMSFNCDataGrid3GetCellFormatting(
  Sender: TObject; ACell: TTMSFNCDataGridCellCoord;
  AData: TTMSFNCDataGridCellValue;
  var AFormatting: TTMSFNCDataGridDataFormatting;
  var AConvertSettings: TFormatSettings; var ACanFormat: Boolean);
begin
  inherited;
  if (ACell.Column=3) then
    begin
      AFormatting.&Type := gdftFloat;
      AFormatting.Format:= ',0.000';
    end;
end;

procedure TFormListadoMateriasPrimasUsadas.ud1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;



procedure TFormListadoMateriasPrimasUsadas.btResumenClick(Sender: TObject);
const
  MAX_NIVEL_RECURSION = 20;
  SQL_RECURSIVO = '''
    WITH RECURSIVE RECETA_RECURSIVA (
      PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL, CAMINO) AS (
      SELECT cab.CODIGO, det.CODIGO_STK, det.CANTIDAD_REAL/COALESCE(cab.cantidad,1), 1,
             CAST(cab.CODIGO || ',' || det.CODIGO_STK AS VARCHAR(500))
      FROM STOCK_PRODUCCION_CAB cab
      JOIN STOCK_PRODUCCION_DET det ON det.ID_CAB = cab.ID
      UNION ALL
      SELECT r.PRODUCTO_FINAL, d2.CODIGO_STK,
             r.CANTIDAD_POR_UNIDAD * (d2.CANTIDAD_REAL / COALESCE(c2.CANTIDAD, 1)),
             r.NIVEL + 1,
             r.CAMINO || ',' || d2.CODIGO_STK
      FROM RECETA_RECURSIVA r
      JOIN STOCK_PRODUCCION_CAB c2 ON c2.CODIGO = r.CODIGO_INSUMO
      JOIN STOCK_PRODUCCION_DET d2 ON d2.ID_CAB = c2.ID
      WHERE r.CAMINO NOT LIKE '%%' || d2.CODIGO_STK || '%%'
        AND r.NIVEL < %d)
    SELECT PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL
    FROM RECETA_RECURSIVA
    ''';

var
  QReceta, QInsert: TFDQuery;
  ListaRecetas: TArray<record
    ProductoFinal, CodigoInsumo: string;
    CantidadPorUnidad: Double;
    Nivel: Integer;
  end>;
  i, r: Integer;
  StartTime: TDateTime;
begin
  StartTime := Now; // Para medir tiempo de ejecución

  // Configurar conexión y consultas
  if not DMMain_FD.fdcGestion.Connected then
    DMMain_FD.fdcGestion.Connected := True;

  QReceta := TFDQuery.Create(nil);
  QInsert := TFDQuery.Create(nil);
  try
    // CONSULTA RECURSIVA
    QReceta.Connection := DMMain_FD.fdcGestion;
    QReceta.SQL.Text   := Format(SQL_RECURSIVO, [MAX_NIVEL_RECURSION]);

    try
      QReceta.Open;

      // Pre-dimensionar array para mejor performance
      SetLength(ListaRecetas, 0);
      i := 0;
      while not QReceta.Eof do
      begin
        SetLength(ListaRecetas, Length(ListaRecetas) + 1);
        ListaRecetas[i].ProductoFinal     := QReceta.FieldByName('PRODUCTO_FINAL').AsString;
        ListaRecetas[i].CodigoInsumo      := QReceta.FieldByName('CODIGO_INSUMO').AsString;
        ListaRecetas[i].CantidadPorUnidad := QReceta.FieldByName('CANTIDAD_POR_UNIDAD').AsFloat;
        ListaRecetas[i].Nivel             := QReceta.FieldByName('NIVEL').AsInteger;

        Inc(i);
        QReceta.Next;
      end;
    except
      on E: Exception do
      begin
        ShowMessage('Error en consulta recursiva: ' + E.Message);
        Exit;
      end;
    end;
    QReceta.Close;

    // LIMPIAR TABLA TEMPORAL E INSERTAR NUEVOS DATOS
    DMMain_FD.fdcGestion.StartTransaction;
    try
      DMMain_FD.fdcGestion.ExecSQL('DELETE FROM TMP_RECETA_EXPANDIDA');

      // INSERCIÓN MASIVA OPTIMIZADA
      QInsert.Connection := DMMain_FD.fdcGestion;
      QInsert.SQL.Text :=
        'INSERT INTO TMP_RECETA_EXPANDIDA (PRODUCTO_FINAL, CODIGO_INSUMO, CANTIDAD_POR_UNIDAD, NIVEL) ' +
        'VALUES (:PF, :CI, :CPU, :NIV)';

      QInsert.Params.ArraySize := Length(ListaRecetas);

      // Configurar tipos de parámetros una sola vez
      with QInsert.Params do
      begin
        ParamByName('PF').DataType  := ftString;
        ParamByName('CI').DataType  := ftString;
        ParamByName('CPU').DataType := ftFloat;
        ParamByName('NIV').DataType := ftInteger;
      end;

      // Asignar valores en bloque
      for i := 0 to High(ListaRecetas) do
      begin
        QInsert.Params[0].AsStrings[i] := ListaRecetas[i].ProductoFinal;
        QInsert.Params[1].AsStrings[i] := ListaRecetas[i].CodigoInsumo;
        QInsert.Params[2].AsFloats[i] := ListaRecetas[i].CantidadPorUnidad;
        QInsert.Params[3].AsIntegers[i] := ListaRecetas[i].Nivel;
      end;

      QInsert.Execute(Length(ListaRecetas), 0);
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      raise;
    end;
  finally
    QInsert.Free;
    QReceta.Free;
  end;

  // ACTUALIZAR CONSULTAS DE RESUMEN
  try
    RefreshQueries(Desde.Date, Hasta.Date);
    FormatGrids;
  except
    on E: Exception do
      ShowMessage('Error al actualizar vistas: ' + E.Message);
  end;

  // Opcional: Mostrar tiempo de ejecución
  // ShowMessage(Format('Proceso completado en %.2f segundos', [(Now - StartTime) * 86400]));
end;

// Métodos auxiliares para mejor organización
procedure TFormListadoMateriasPrimasUsadas.RefreshQueries(FechaDesde, FechaHasta: TDate);
begin
  QResumenMateriasPrimas.Close;
  QResumenMateriasPrimas.ParamByName('desde').AsDate := FechaDesde;
  QResumenMateriasPrimas.ParamByName('hasta').AsDate := FechaHasta;
  QResumenMateriasPrimas.Open;

  QResumenACumulado.Close;
  QResumenACumulado.ParamByName('desde').AsDate := FechaDesde;
  QResumenACumulado.ParamByName('hasta').AsDate := FechaHasta;
  QResumenACumulado.Open;
end;

procedure TFormListadoMateriasPrimasUsadas.FormatGrids;
var
  r: Integer;
begin
  // Formatear TMSFNCDataGrid2
  for r := 1 to TMSFNCDataGrid2.RowCount-1 do
  begin
    TMSFNCDataGrid2.TextAligns[5,r] := gtaTrailing;
    TMSFNCDataGrid2.TextAligns[6,r] := gtaTrailing;
    TMSFNCDataGrid2.TextAligns[7,r] := gtaTrailing;
  end;

  // Formatear TMSFNCDataGrid3
  for r := 1 to TMSFNCDataGrid3.RowCount-1 do
  begin
    TMSFNCDataGrid3.TextAligns[3,r] := gtaTrailing;
  end;
end;





end.
