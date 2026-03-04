unit UConultasIA;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.UI.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, Vcl.ExtCtrls,
  Vcl.ComCtrls, VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics,
  VCL.TMSFNCGraphicsTypes, System.Rtti, VCL.TMSFNCDataGridCell,
  VCL.TMSFNCDataGridData, VCL.TMSFNCDataGridBase, VCL.TMSFNCDataGridCore,
  VCL.TMSFNCDataGridRenderer, VCL.TMSFNCCustomComponent,
  VCL.TMSFNCDataGridDatabaseAdapter, VCL.TMSFNCCustomControl, VCL.TMSFNCDataGrid,
  VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeProcs, VCLTee.Chart,
  VCL.TMSFNCCustomGroup, VCL.TMSFNCRadioGroup, VCLTee.Series,System.Generics.Collections,
  VCL.TMSFNCWebBrowser, VCL.TMSFNCCustomWEBControl, VCL.TMSFNCMemo, fs_synmemo;

type
  TFormConsultaIA = class(TForm)
    DBGrid1: TDBGrid;
    btConsultar: TButton;
    memPrompt: TMemo;
    DataSource1: TDataSource;
    FDQuery1: TFDQuery;
    FDConnectionIA: TFDConnection;
    pnResultado: TPanel;
    pnPrompt: TPanel;
    pcQuery: TPageControl;
    pagResultado: TTabSheet;
    pagSQL: TTabSheet;
    pagAgrupada: TTabSheet;
    TMSFNCDataGridDatabaseAdapter1: TTMSFNCDataGridDatabaseAdapter;
    TMSFNCRadioGroup1: TTMSFNCRadioGroup;
    pagGraficos: TTabSheet;
    Chart1: TChart;
    pagChat: TTabSheet;
    Memo1: TMemo;
    Series1: TBarSeries;
    MemoSQL: TfsSyntaxMemo;
    TMSFNCDataGrid1: TTMSFNCDataGrid;
    Panel1: TPanel;
    CheckBox1: TCheckBox;
    procedure btConsultarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TMSFNCRadioGroup1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
  private
    procedure GenerarContextoTablas(AConnection: TFDConnection; AMemo: TMemo);
    function CargarContextoDesdeArchivo(const ArchivoOrigen: string): string;
    procedure GuardarContextoEnArchivo(AConnection: TFDConnection;
      const ArchivoDestino: string);
    function GenerarContextoReducido(const ArchivoOrigen: string;
      const TablasClave: array of string): string;
    function ArmarPromptFinal(const PromptUsuario: string): string;
    procedure GraficarSeriesDinamicas(Q: TFDQuery);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaIA: TFormConsultaIA;
  //const Api_Key='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';
  Api_Key:String;

implementation

uses UDMain_fd,UFirebirdSQLFromIA;

var
  IA        : TIA_SQL_Firebird;
  Q         : TFDQuery;

{$R *.dfm}


procedure TFormConsultaIA.GraficarSeriesDinamicas(Q: TFDQuery);
var
  SeriesDict: TDictionary<string, TBarSeries>;
  Serie: TBarSeries;
  ClaveSerie: string;
begin
  SeriesDict := TDictionary<string, TBarSeries>.Create;
  try
    Chart1.Visible := True;
    Chart1.RemoveAllSeries;

    Q.First;
    while not Q.Eof do
    begin
      ClaveSerie := Q.FieldByName('Serie').AsString;

      if not SeriesDict.TryGetValue(ClaveSerie, Serie) then
      begin
        Serie := TBarSeries.Create(Chart1);
        Serie.Title := ClaveSerie;
        Chart1.AddSeries(Serie);
        SeriesDict.Add(ClaveSerie, Serie);
      end;

      Serie.Add(Q.FieldByName('Valor').AsFloat, Q.FieldByName('Categoria').AsString);
      Q.Next;
    end;
  finally
    SeriesDict.Free;
  end;
end;

function TFormConsultaIA.ArmarPromptFinal(const PromptUsuario: string): string;
begin
  case TMSFNCRadioGroup1.ItemIndex of
    0: Result := PromptUsuario;
    1: Result := 'Generá una consulta SQL agregada para graficar. Usá funciones como SUM, COUNT, AVG. Agrupá los datos por campos representativos. ' + PromptUsuario;
    2: Result := 'Respondé en lenguaje natural esta pregunta: ' + PromptUsuario;
  else
    Result := PromptUsuario;
  end;
end;


procedure TFormConsultaIA.GenerarContextoTablas(AConnection: TFDConnection; AMemo: TMemo);
var
  Q: TFDQuery;
  Tabla, Campo, UltTabla: string;
begin
  AMemo.Clear;
  Q := TFDQuery.Create(nil);
  try
    Q.Connection := AConnection;
    Q.SQL.Text := 'SELECT rdb$relation_name AS tabla, rdb$field_name AS campo ' +
                  'FROM rdb$relation_fields ' +
                  'WHERE rdb$system_flag IS DISTINCT FROM 1 ' +
                  'ORDER BY rdb$relation_name, rdb$field_position';
    Q.Open;
    UltTabla := '';
    while not Q.Eof do
    begin
      Tabla := Trim(Q.FieldByName('tabla').AsString);
      Campo := Trim(Q.FieldByName('campo').AsString);
      if Tabla <> UltTabla then
      begin
        if UltTabla <> '' then
          AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ')';
        AMemo.Lines.Add(Tabla + '(' + Campo);
        UltTabla := Tabla;
      end
      else
        AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ', ' + Campo;
      Q.Next;
    end;
    if AMemo.Lines.Count > 0 then
      AMemo.Lines[AMemo.Lines.Count - 1] := AMemo.Lines[AMemo.Lines.Count - 1] + ')';
  finally
    Q.Free;
  end;
end;


procedure TFormConsultaIA.GuardarContextoEnArchivo(AConnection: TFDConnection; const ArchivoDestino: string);
var
  Q: TFDQuery;
  F: TextFile;
  Tabla, Campo, UltTabla, Linea: string;
begin
  AssignFile(F, ArchivoDestino);
  Rewrite(F);
  try
    Q := TFDQuery.Create(nil);
    try
      Q.Connection := AConnection;
      Q.SQL.Text := 'SELECT rdb$relation_name AS tabla, rdb$field_name AS campo ' +
                    'FROM rdb$relation_fields ' +
                    'WHERE rdb$system_flag IS DISTINCT FROM 1 ' +
                    'ORDER BY rdb$relation_name, rdb$field_position';
      Q.Open;
      UltTabla := '';
      Linea := '';
      while not Q.Eof do
      begin
        Tabla := Trim(Q.FieldByName('tabla').AsString);
        Campo := Trim(Q.FieldByName('campo').AsString);
        if Tabla <> UltTabla then
        begin
          if UltTabla <> '' then
            WriteLn(F, Linea + ')');
          Linea := Tabla + '(' + Campo;
          UltTabla := Tabla;
        end
        else
          Linea := Linea + ', ' + Campo;
        Q.Next;
      end;
      if Linea <> '' then
        WriteLn(F, Linea + ')');
    finally
      Q.Free;
    end;
  finally
    CloseFile(F);
  end;
end;



procedure TFormConsultaIA.TMSFNCRadioGroup1Click(Sender: TObject);
begin
  pagResultado.TabVisible  := TMSFNCRadioGroup1.ItemIndex=0;
  pagGraficos.TabVisible   := TMSFNCRadioGroup1.ItemIndex=1;
  pagChat.TabVisible       := TMSFNCRadioGroup1.ItemIndex=2;
  pagAgrupada.TabVisible   := pagResultado.TabVisible;
  pagSQL.TabVisible        := pagResultado.TabVisible;
end;

function TFormConsultaIA.GenerarContextoReducido(const ArchivoOrigen: string; const TablasClave: array of string): string;
var
  L, Resultado: TStringList;
  I, J: Integer;
  Linea, NombreTabla: string;
  Coincide: Boolean;
begin
  Resultado := TStringList.Create;
  L := TStringList.Create;
  try
    L.LoadFromFile(ArchivoOrigen, TEncoding.UTF8);
    for I := 0 to L.Count - 1 do
    begin
      Linea := L[I];
      Coincide := False;
      for J := Low(TablasClave) to High(TablasClave) do
      begin
        NombreTabla := LowerCase(Trim(TablasClave[J]));
        if Pos(NombreTabla + '(', LowerCase(Linea)) = 1 then
        begin
          Coincide := True;
          Break;
        end;
      end;
      if Coincide then
        Resultado.Add(Linea);
    end;
    Result := Resultado.Text;
  finally
    L.Free;
    Resultado.Free;
  end;
end;

function TFormConsultaIA.CargarContextoDesdeArchivo(const ArchivoOrigen: string): string;
var
  L: TStringList;
begin
  L := TStringList.Create;
  try
    L.LoadFromFile(ArchivoOrigen, TEncoding.UTF8);
    Result := L.Text;
  finally
    L.Free;
  end;
end;


procedure TFormConsultaIA.CheckBox1Click(Sender: TObject);
begin
  TMSFNCDataGrid1.Options.Filtering.Enabled:=CheckBox1.Checked;
end;

procedure TFormConsultaIA.btConsultarClick(Sender: TObject);
var PromptFinal:string;
begin
  PromptFinal := ArmarPromptFinal(memPrompt.Text);

  if TMSFNCRadioGroup1.ItemIndex = 2 then
  begin
    try
      Memo1.Visible := True;
      Memo1.Text    := IA.ObtenerRespuestaTexto(PromptFinal);
      Exit;
    except
      on E: Exception do
        ShowMessage('Error: ' + E.Message);
    end;
    Exit;
  end;

  if IA.EjecutarPrompt(PromptFinal, Q) then
  begin
    if TMSFNCRadioGroup1.ItemIndex = 1 then
      begin
        GraficarSeriesDinamicas(Q);
      end
    else
      begin
        MemoSQL.Lines.Text  := Q.SQL.Text;
        DBGrid1.Visible     := True;
        DataSource1.DataSet := Q;
        DBGrid1.DataSource  := DataSource1;
      end;
  end
  else
    ShowMessage('No se pudo procesar el prompt.');

//  if IA.EjecutarPrompt(memPrompt.Text, Q) then
//    begin
//      mSQL.Lines.Clear;
//      DataSource1.DataSet  := Q;
//      DBGrid1.DataSource   := DataSource1;
//      mSQL.Lines.Text:=q.SQL.Text;
//    end
//  else
//    ShowMessage('No se pudo procesar el prompt.');
end;

procedure TFormConsultaIA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=TCloseAction.caFree;
end;

procedure TFormConsultaIA.FormCreate(Sender: TObject);
var Contexto,ContextoReducido:String;
begin
  FDConnectionIA.Connected := False;
  FDConnectionIA.Params    := DMMain_FD.fdcGestion.Params;
  FDConnectionIA.Connected := True;

  Api_Key:=DMMain_FD.GetApiKeyOpenAI;

  pcQuery.ActivePageIndex :=0;
  GuardarContextoEnArchivo(FDConnectionIA, 'contexto_bd.txt');
  ContextoReducido := GenerarContextoReducido('contexto_bd.txt', ['Clientes', 'FcVtaDet', 'FcVtaCab','FcCompCab','FcCompDet','Poovedores','Egr_caja',
                                                                  'Egr_caja_detalle','Gastos_Rubros','Gastos_cuentas','Stock','Stock_produccion_cab',
                                                                  'Stock_produccion_det','rubros','subrubros','sucursal','RtoCab','RtoDet','personal',
                                                                  'CLIENTES_CATEGORIAS','cuenta_caja','ORDENPRODUCCION_CAB','ORDENPRODUCCION_DET',
                                                                  'ORDENPRODUCCION_MOV','caja_cab','caja_mov','mov_efectivo','mov_retenciones',
                                                                  'mov_tcredito','prescab','presdet','RECEPMERCACAB','RECEPMERCAdet','cheque_propio',
                                                                  'cheque_tercero','cheque_tercero_mov','t_credito','recibos','ordenpago','obras',
                                                                  'cpostal','gravamen','inscripcion','marcas']);

  //Contexto := CargarContextoDesdeArchivo('contexto_bd.txt');
  IA := TIA_SQL_Firebird.Create(FDConnectionIA,Api_Key,ContextoReducido);
end;

procedure TFormConsultaIA.FormDestroy(Sender: TObject);
begin
  ia.Free;
  FormConsultaIA:=nil;
end;

procedure TFormConsultaIA.FormShow(Sender: TObject);
begin
  pagResultado.TabVisible := TMSFNCRadioGroup1.ItemIndex=0;
  pagGraficos.TabVisible  := TMSFNCRadioGroup1.ItemIndex=1;
  pagChat.TabVisible      := TMSFNCRadioGroup1.ItemIndex=2;
  pagAgrupada.TabVisible  := pagResultado.TabVisible;
  pagSQL.TabVisible       := pagResultado.TabVisible;
end;

end.
