unit UEmisionRotulos_2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, frxClass,
  System.Actions, Vcl.ActnList, VCL.TMSFNCCustomComponent,
  frCoreClasses, frxDBSet, System.ImageList,
  Vcl.ImgList, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Datasnap.Provider,
  Datasnap.DBClient, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, AdvUtil,
  Vcl.StdCtrls, Vcl.DBGrids, JvMaskEdit, JvDBFindEdit, Vcl.Grids, AdvObj,
  BaseGrid, AdvGrid, DBAdvGrid, Vcl.DBCtrls, dxBarCode, dxDBBarCode, JvExMask,
  JvToolEdit, Vcl.Mask, Vcl.ExtCtrls, AdvGlowButton, Vcl.Buttons, Vcl.ComCtrls,
  IniFiles,System.DateUtils, JvExControls, JvDBLookup;

type
  TFormRotulos_2 = class(TForm)
    DSArticulos: TDataSource;
    CDSArticulos: TClientDataSet;
    CDSArticulosCODIGO_STK: TStringField;
    CDSArticulosDETALLE_STK: TStringField;
    CDSArticulosDETALLE_CORTO: TStringField;
    CDSArticulosDETALLE_STK_ADICIONAL: TStringField;
    CDSArticulosRUBRO_STK: TStringField;
    CDSArticulosDETALLE_RUBRO: TStringField;
    CDSArticulosREEMPLAZO_STK: TStringField;
    CDSArticulosUNIDAD: TStringField;
    CDSArticulosCLASE_ARTICULO: TIntegerField;
    CDSArticulosLOTE: TStringField;
    CDSArticulosCODIGOBARRA: TStringField;
    CDSArticulosINFORMACION_ADICIONAL: TMemoField;
    DSPArticulos: TDataSetProvider;
    QArticulos: TFDQuery;
    QRubrosRot: TFDQuery;
    QRubrosRotRUBRO: TStringField;
    QRubrosRotDETALLE_RUBRO: TStringField;
    DSPRubrosRotulos: TDataSetProvider;
    CDSRubrosRotulos: TClientDataSet;
    CDSRubrosRotulosRUBRO: TStringField;
    CDSRubrosRotulosDETALLE_RUBRO: TStringField;
    DSRubrosRotulos: TDataSource;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage1: TJvFormStorage;
    ImageList1: TImageList;
    QRegRotulo: TFDQuery;
    frDetalle: TfrxDBDataset;
    ActionList: TActionList;
    Imprimir: TAction;
    Expand: TAction;
    Contraer: TAction;
    GuardarRegistro: TAction;
    Buscar: TAction;
    OpenDialog: TOpenDialog;
    SaveDialog1: TSaveDialog;
    DSRegistro: TDataSource;
    CDSRegistro: TClientDataSet;
    CDSRegistroID: TIntegerField;
    CDSRegistroFECHA_IMPRESION: TSQLTimeStampField;
    CDSRegistroCODIGO: TStringField;
    CDSRegistroDETALLE_STK: TStringField;
    CDSRegistroCANTIDAD: TFloatField;
    CDSRegistroLOTE: TStringField;
    QRegistro: TFDQuery;
    DSPRegistro: TDataSetProvider;
    DSRubros: TDataSource;
    CDSRubros: TClientDataSet;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    DSPRubros: TDataSetProvider;
    QRub: TFDQuery;
    PageControl1: TPageControl;
    pag2: TTabSheet;
    Label8: TLabel;
    Label9: TLabel;
    dbgRubrosRotulos: TDBGrid;
    dbgRubros: TDBGrid;
    pagRegistro: TTabSheet;
    dbgRegistro: TDBGrid;
    edFechaRegistro: TJvDateEdit;
    pagRotulos: TTabSheet;
    edbBuscador: TJvDBFindEdit;
    pnDatos: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    edCodigo: TDBEdit;
    edCodAlternativo: TDBEdit;
    edDias: TDBEdit;
    edFecha: TJvDateEdit;
    edLote: TDBEdit;
    dxDBBarCode1: TdxDBBarCode;
    edDetalle: TDBEdit;
    edCopias: TEdit;
    chGenerarRegistro: TCheckBox;
    DBMemo1: TDBMemo;
    chPreview: TCheckBox;
    pnPie: TPanel;
    Label6: TLabel;
    sbReporte: TSpeedButton;
    btImprimir: TAdvGlowButton;
    edReporte: TEdit;
    btSalir: TAdvGlowButton;
    dbgArticulos: TDBGrid;
    LimpiarRegistro: TAction;
    QRegistroID: TIntegerField;
    QRegistroFECHA_IMPRESION: TSQLTimeStampField;
    QRegistroCODIGO: TStringField;
    QRegistroLOTE: TStringField;
    QRegistroCANTIDAD: TFloatField;
    QRegistroDETALLE_STK: TStringField;
    Label10: TLabel;
    ImprimirRegistro: TAction;
    frRegistro: TfrxDBDataset;
    pnPieRegistro: TPanel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Label11: TLabel;
    QDepositos: TFDQuery;
    Label12: TLabel;
    dbcDepositos: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    Button3: TButton;
    frReport: TfrxReport;
    pnArticulos: TPanel;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    QArticulosDETALLE_CORTO: TStringField;
    QArticulosDETALLE_STK_ADICIONAL: TStringField;
    QArticulosRUBRO_STK: TStringField;
    QArticulosDETALLE_RUBRO: TStringField;
    QArticulosREEMPLAZO_STK: TStringField;
    QArticulosUNIDAD: TStringField;
    QArticulosCLASE_ARTICULO: TIntegerField;
    QArticulosINFORMACION_ADICIONAL: TMemoField;
    QArticulosDIAS_VENCIMIENTO: TIntegerField;
    CDSArticulosDIAS_VENCIMIENTO: TIntegerField;
    procedure btSalirClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSArticulosCalcFields(DataSet: TDataSet);
    procedure CDSRubrosRotulosAfterDelete(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pnPieDblClick(Sender: TObject);
    procedure edCopiasKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRubrosRotulosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgRubrosRotulosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure edbBuscadorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure frReportAfterPrintReport(Sender: TObject);
    procedure LimpiarRegistroExecute(Sender: TObject);
    procedure dbgArticulosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgRegistroColEnter(Sender: TObject);
    procedure CDSRegistroAfterPost(DataSet: TDataSet);
    procedure dbgRegistroDblClick(Sender: TObject);
    procedure ImprimirRegistroExecute(Sender: TObject);
    procedure pnPieRegistroDblClick(Sender: TObject);
    procedure edFechaRegistroAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure GuardarRegistroExecute(Sender: TObject);
    procedure dbgArticulosDblClick(Sender: TObject);
    procedure CDSArticulosAfterScroll(DataSet: TDataSet);
    procedure sbReporteClick(Sender: TObject);
  private
    procedure RegistrarRotulo(Fecha: TDateTime; Codigo, Lote: String;
      Cantidad: Extended);
    procedure AltaStockUnitario;
    function AltaStock: Boolean;
    { Private declarations }
  public
     { Public declarations }
    ArchivoIni:TIniFile;
    grouped: boolean;
  end;

var
  FormRotulos_2: TFormRotulos_2;

implementation

uses UDMain_FD, UStock_2;

{$R *.dfm}

procedure TFormRotulos_2.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormRotulos_2.BuscarExecute(Sender: TObject);
begin
  CDSRegistro.Close;
  CDSRegistro.Params.ParamByName('fecha').Value:=edFechaRegistro.Date;
  CDSRegistro.Open;
end;


procedure TFormRotulos_2.CDSArticulosAfterScroll(DataSet: TDataSet);
begin
  CDSArticulosCalcFields(DataSet);
end;

procedure TFormRotulos_2.CDSArticulosCalcFields(DataSet: TDataSet);
var A:string;
begin
  if CDSArticulos.State in [dsInsert,dsEdit] Then
    begin
      CDSArticulosLOTE.AsString := FormatDateTime('YYMMDD',edFecha.Date)+  FormatDateTime('YYMMDD',IncDay(edFecha.Date,CDSArticulosDIAS_VENCIMIENTO.AsInteger));
      a  := copy(CDSArticulosREEMPLAZO_STK.AsString+'        ',1,8);
      CDSArticulosCODIGOBARRA.AsString := a+CDSArticulosLOTE.AsString;
    end;
end;

procedure TFormRotulos_2.CDSRegistroAfterPost(DataSet: TDataSet);
begin
  CDSRegistro.ApplyUpdates(-1);
end;

procedure TFormRotulos_2.CDSRubrosRotulosAfterDelete(DataSet: TDataSet);
begin
  CDSRubrosRotulos.ApplyUpdates(-1);
  CDSArticulos.OnCalcFields:=nil;
  CDSArticulos.Close;
  CDSArticulos.Open;
  CDSArticulos.OnCalcFields:=CDSArticulosCalcFields;
end;



procedure TFormRotulos_2.dbgRegistroColEnter(Sender: TObject);
begin
  if (dbgRegistro.SelectedIndex<2) or (dbgRegistro.SelectedIndex>2) then
  dbgRegistro.SelectedIndex:=2;

end;

procedure TFormRotulos_2.dbgRegistroDblClick(Sender: TObject);
begin
  AltaStock;
end;

procedure TFormRotulos_2.dbgArticulosDblClick(Sender: TObject);
begin
  IF Not(Assigned(FormStock_2)) Then
    FormStock_2:=TFormStock_2.Create(self);
  FormStock_2.DatoNew:=CDSArticulosCODIGO_STK.AsString;
  FormStock_2.Recuperar.Execute;
  FormStock_2.Show;
end;

procedure TFormRotulos_2.dbgArticulosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_RETURN then
    begin
      edCopias.SetFocus;
      edCopias.SelectAll;
    end;
end;

procedure TFormRotulos_2.dbgRubrosRotulosDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  if CDSRubrosRotulos.Locate('rubro',(Source AS TDBGrid).DataSource.DataSet.FieldByName('codigo_rubro').AsString,[])=False Then
    begin
      CDSRubrosRotulos.Append;
      WITH (Source AS TDBGrid).DataSource.DataSet DO
        BEGIN
          CDSRubrosRotulosRUBRO.Value        := FieldByName('codigo_rubro').Value;
          CDSRubrosRotulosDETALLE_RUBRO.Value:= FieldByName('detalle_rubro').Value;
        END;
      CDSRubrosRotulos.Post;
      CDSRubrosRotulos.ApplyUpdates(-1);
      CDSArticulos.OnCalcFields:=nil;
      CDSArticulos.Close;
      CDSArticulos.Open;
      CDSArticulos.OnCalcFields:=CDSArticulosCalcFields;

    end;
end;

procedure TFormRotulos_2.dbgRubrosRotulosDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  IF Source = dbgRubros THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormRotulos_2.edbBuscadorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key=VK_UP then
    CDSArticulos.Prior
  else
    if Key=VK_DOWN then
      CDSArticulos.Next
    else
      if Key=VK_RETURN then
        begin
          edCopias.SetFocus;
          edCopias.SelectAll;
        end;

end;

procedure TFormRotulos_2.edCopiasKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #46,#8, #13]) then // Permitir solo números, tecla de retroceso y enter
    Key := #0
 else
   if Key=#13 Then btImprimir.SetFocus;
end;



procedure TFormRotulos_2.edFechaRegistroAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  edFechaRegistro.Date:= ADate;
  Buscar.Execute;
end;

procedure TFormRotulos_2.FormActivate(Sender: TObject);
begin
  if FormRotulos_2<>nil then
    if PageControl1.ActivePageIndex=0 then
      if edbBuscador.Visible then
        edbBuscador.SetFocus;
end;

procedure TFormRotulos_2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Rotulos.ini');
  //*************************************************************
  ArchivoIni.WriteString('etiqueta', 'File', edReporte.Text);
  ArchivoIni.WriteBool('registro', 'estado', chGenerarRegistro.Checked);
  ArchivoIni.WriteBool('registro', 'preview', chPreview.Checked );
  ArchivoIni.WriteInteger('registro', 'deposito', dbcDepositos.KeyValue);
  ArchivoIni.Free;
  QDepositos.Close;
  CDSRubros.Close;
  CDSRubrosRotulos.Close;

  Action := TCloseAction.caFree
end;

procedure TFormRotulos_2.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  QDepositos.Close;
  QDepositos.Open;

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Rotulos.ini');
  edReporte.Text            := ArchivoIni.ReadString('etiqueta', 'File', '');
  chGenerarRegistro.Checked := ArchivoIni.ReadBool('registro', 'estado', False);
  chPreview.Checked         := ArchivoIni.ReadBool('registro', 'preview', False);
  dbcDepositos.KeyValue     := ArchivoIni.ReadInteger('registro', 'deposito', DMMain_FD.DepositoPorSucursal(DMMain_FD.SucursalPorDef));
  ArchivoIni.Free;

  CDSRubros.Close;
  CDSRubros.Open;

  CDSRubrosRotulos.Close;
  CDSRubrosRotulos.Open;

  OpenDialog.InitialDir := DMMain_FD.PathReportesLst;

  PageControl1.ActivePageIndex:=0;
end;

procedure TFormRotulos_2.FormDestroy(Sender: TObject);
begin
  FormRotulos_2:=nil;
end;

procedure TFormRotulos_2.FormResize(Sender: TObject);
begin
  if FormRotulos_2<>nil then
    if FormRotulos_2.Width>1328 then
      FormRotulos_2.Width:=1328;
end;

procedure TFormRotulos_2.FormShow(Sender: TObject);
begin
  CDSArticulos.OnCalcFields := nil;
  CDSArticulos.Close;
  CDSArticulos.Open;
  CDSArticulos.OnCalcFields := CDSArticulosCalcFields;

  if not(CDSArticulos.IsEmpty) then
    begin
      CDSArticulos.Next;
      CDSArticulos.Prior;
    end;
  edFecha.Date     := Date;
  edbBuscador.SetFocus;
  Buscar.Execute
end;


procedure TFormRotulos_2.frReportAfterPrintReport(Sender: TObject);
begin
  if chGenerarRegistro.Checked Then
    begin
      RegistrarRotulo(Date,edCodigo.Text,edLote.Text,StrToInt(edCopias.Text));
      Buscar.Execute;
    end;
end;

procedure TFormRotulos_2.GuardarRegistroExecute(Sender: TObject);
begin
  if Not(AltaStock) Then
    LimpiarRegistro.Execute;
end;

procedure TFormRotulos_2.ImprimirExecute(Sender: TObject);

begin
  if edCopias.Text<>'' then
    begin
      frReport.PrintOptions.Printer:= DMMain_FD.PrNomListados;
      frReport.SelectPrinter;

      frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
      frReport.PrintOptions.ShowDialog       := chPreview.Checked;//False;//.Checked;
      frReport.PrintOptions.Copies           := StrToInt(edCopias.Text);
      frReport.Variables['Fecha']            := QuotedStr(edFecha.Text);
      frReport.Variables['FechaVencimiento'] := QuotedStr(DateToStr(IncDay(edFecha.Date,CDSArticulosDIAS_VENCIMIENTO.AsInteger)));

      frReport.PrepareReport;

      if chPreview.Checked then
        frReport.ShowReport
      else
        frReport.Print;
    end;
  edbBuscador.SetFocus;
end;



procedure TFormRotulos_2.ImprimirRegistroExecute(Sender: TObject);
begin
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoRotulos.fr3');
  frReport.PrintOptions.Printer:= DMMain_FD.PrNomListados;
  frReport.Variables['Fecha']    := ''''+ edFechaRegistro.Text+'''';
  frReport.SelectPrinter;
  frReport.PrintOptions.ShowDialog       := False;//.Checked;
  frReport.PrepareReport;

  if chPreview.Checked then
    frReport.ShowReport
  else
    frReport.Print;
end;

function TFormRotulos_2.AltaStock:Boolean;
var Query: TFDQuery;
    Conn : TFDConnection;
    Error: Boolean;
begin
  IF dbcDepositos.keyValue<=0 Then
    raise Exception.Create('No Hay deposito Definido....');
  Conn             := TFDConnection.Create(nil);
  Query            := TFDQuery.Create(nil);
  Conn.Params      := DMMain_FD.fdcGestion.Params;
  Conn.Connected   := True;
  Query.Connection := Conn;
  CDSRegistro.First;
  Error            := False;
  while not(CDSRegistro.Eof) and (Error=False) do
    begin
      Conn.StartTransaction;
      try
        Query.SQL.Text  :='execute procedure altastock_desde_rotulacion (:id_registro,:cantidad,:sucursal,:deposito)';
        Query.ParamByName('id_registro').AsInteger := CDSRegistroID.Value;
        Query.ParamByName('cantidad').AsFloat      := CDSRegistroCANTIDAD.Value;
        Query.ParamByName('sucursal').AsInteger    := DMMain_FD.SucursalPorDef;
        Query.ParamByName('deposito').AsInteger    := dbcDepositos.KeyValue;
        Query.ExecSQL;
        Query.Close;
        Query.Close;
        Conn.Commit;
      except
        Conn.Rollback;
        Error:=True;
      end;
      CDSRegistro.Next;
    end;
  FreeAndNil(Conn);
  FreeAndNil(Query);
end;

procedure TFormRotulos_2.AltaStockUnitario;
var Query:TFDQuery;
begin
  if dbcDepositos.KeyValue>-1 then
    begin
      Query           := TFDQuery.Create(nil);
      Query.Connection:= DMMain_FD.fdcGestion;
      Query.SQL.Text  :=' execute procedure altastock_desde_rotulacion (:id_registro,:cantidad,:sucursal,:deposito)';
      Query.ParamByName('id_registro').AsInteger := CDSRegistroID.Value;
      Query.ParamByName('cantidad').AsFloat      := CDSRegistroCANTIDAD.Value;
      Query.ParamByName('sucursal').AsInteger    := DMMain_FD.SucursalPorDef;
      Query.ParamByName('deposito').AsInteger    := dbcDepositos.KeyValue;
      Query.ExecSQL;
      Query.Close;
      FreeAndNil(Query);
    end
  else
    ShowMessage('No hay deposito asignado...........');

end;
procedure TFormRotulos_2.LimpiarRegistroExecute(Sender: TObject);
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= DMMain_FD.fdcGestion;
  Query.SQL.Text  :='delete from tabla_registros_rotulos';
  Query.ExecSQL();
  Query.Close;
  FreeAndNil(Query);
  Buscar.Execute;
end;

procedure TFormRotulos_2.pnPieDblClick(Sender: TObject);
begin
  frReport.DesignReport;
end;

procedure TFormRotulos_2.pnPieRegistroDblClick(Sender: TObject);
begin
  frReport.DesignReport;
end;

procedure TFormRotulos_2.RegistrarRotulo(Fecha:TDateTime;Codigo,Lote:String;Cantidad:Extended);
var Query:TFDQuery;
begin
  Query           := TFDQuery.Create(nil);
  Query.Connection:= DMMain_FD.fdcGestion;
  Query.SQL.Text  :='''
                      insert into tabla_registros_rotulos (id,fecha_impresion,codigo,lote,cantidad)
                        values (-1,:fecha,:codigo,:lote,:cantidad)
                    ''' ;
  Query.ParamByName('fecha').AsDateTime := Fecha;
  Query.ParamByName('codigo').AsString  := Codigo;
  Query.ParamByName('Lote').AsString    := Lote;
  Query.ParamByName('cantidad').AsFloat := Cantidad;

  Query. ExecSQL();
  Query.Close;
  FreeAndNil(Query);
end;

procedure TFormRotulos_2.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
  inherited;
  if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text:= OpenDialog.FileName;
        Lon1:=Length(OpenDialog.InitialDir);
        Lon2:=Length(OpenDialog.FileName);
        edReporte.Text:=Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
end;

end.



