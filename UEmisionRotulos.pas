unit UEmisionRotulos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, AdvUtil, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, RemoteDB.Client.Dataset,
  RemoteDB.Client.Database, Data.DB, Vcl.Grids, AdvObj, BaseGrid, AdvGrid,
  DBAdvGrid, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls,
  Vcl.Mask, Vcl.DBCtrls, JvExMask, JvToolEdit,System.DateUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit,
  dxSkinsCore, dxBarCode, dxDBBarCode, frxClass, frxDBSet, frCoreClasses,
  System.Actions, Vcl.ActnList, AdvGlowButton, Vcl.Buttons, frxDesgn,IniFiles,
  VCL.TMSFNCTypes, VCL.TMSFNCUtils, VCL.TMSFNCGraphics, VCL.TMSFNCGraphicsTypes,
  VCL.TMSFNCCustomControl, VCL.TMSFNCListBox, VCL.TMSFNCCheckedListBox,
  Vcl.ComCtrls, Vcl.DBGrids, System.ImageList, Vcl.ImgList,System.StrUtils,
  JvComponentBase, JvFormPlacement, JvAppStorage, JvAppIniStorage;

type
  TFormRotulos = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbgArticulos: TDBAdvGrid;
    Panel3: TPanel;
    QArticulos: TFDQuery;
    DSArticulos: TDataSource;
    DSPArticulos: TDataSetProvider;
    CDSArticulos: TClientDataSet;
    CDSArticulosCODIGO_STK: TStringField;
    CDSArticulosDETALLE_STK: TStringField;
    CDSArticulosDETALLE_CORTO: TStringField;
    CDSArticulosDETALLE_STK_ADICIONAL: TStringField;
    CDSArticulosRUBRO_STK: TStringField;
    CDSArticulosDETALLE_RUBRO: TStringField;
    CDSArticulosREEMPLAZO_STK: TStringField;
    CDSArticulosUNIDAD: TStringField;
    CDSArticulosVENCIMIENTO: TIntegerField;
    CDSArticulosCLASE_ARTICULO: TIntegerField;
    chAgrupar: TCheckBox;
    edCodigo: TDBEdit;
    edCodAlternativo: TDBEdit;
    edDias: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edFecha: TJvDateEdit;
    Label4: TLabel;
    CDSArticulosLOTE: TStringField;
    Label5: TLabel;
    edLote: TDBEdit;
    dxDBBarCode1: TdxDBBarCode;
    CDSArticulosCODIGOBARRA: TStringField;
    edDetalle: TDBEdit;
    AdvGlowButton1: TAdvGlowButton;
    ActionList: TActionList;
    Imprimir: TAction;
    frReport: TfrxReport;
    frDetalle: TfrxDBDataset;
    Label6: TLabel;
    edReporte: TEdit;
    sbReporte: TSpeedButton;
    OpenDialog: TOpenDialog;
    edCopias: TEdit;
    Label7: TLabel;
    PageControl1: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    QRub: TFDQuery;
    QRubrosRot: TFDQuery;
    dbgRubrosRotulos: TDBGrid;
    dbgRubros: TDBGrid;
    DSRubrosRotulos: TDataSource;
    QRubrosRotRUBRO: TStringField;
    QRubrosRotDETALLE_RUBRO: TStringField;
    DSRubros: TDataSource;
    AdvGlowButton2: TAdvGlowButton;
    ImageList1: TImageList;
    Expand: TAction;
    Contraer: TAction;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    chGenerarRegistro: TCheckBox;
    Label8: TLabel;
    Label9: TLabel;
    TabSheet1: TTabSheet;
    JvFormStorage1: TJvFormStorage;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    SaveDialog1: TSaveDialog;
    GuardarRegistro: TAction;
    CDSArticulosINFORMACION_ADICIONAL: TMemoField;
    DBMemo1: TDBMemo;
    QRegRotulo: TFDQuery;
    CDSRubrosRotulos: TClientDataSet;
    DSPRubrosRotulos: TDataSetProvider;
    CDSRubrosRotulosRUBRO: TStringField;
    CDSRubrosRotulosDETALLE_RUBRO: TStringField;
    CDSRubros: TClientDataSet;
    DSPRubros: TDataSetProvider;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    QRegistro: TFDQuery;
    DSPRegistro: TDataSetProvider;
    CDSRegistro: TClientDataSet;
    DSRegistro: TDataSource;
    CDSRegistroID: TIntegerField;
    CDSRegistroFECHA_IMPRESION: TSQLTimeStampField;
    CDSRegistroCODIGO: TStringField;
    CDSRegistroLOTE: TStringField;
    CDSRegistroCANTIDAD: TFloatField;
    CDSRegistroDETALLE_STK: TStringField;
    DBGrid1: TDBGrid;
    Button1: TButton;
    Buscar: TAction;
    edFechaRegistro: TJvDateEdit;
    chPreview: TCheckBox;
    procedure CDSArticulosAfterOpen(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure chAgruparClick(Sender: TObject);
    procedure dbgArticulosGetCellColor(Sender: TObject; ARow, ACol: Integer;
      AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
    procedure dbgArticulosGetAlignment(Sender: TObject; ARow, ACol: Integer;
      var HAlign: TAlignment; var VAlign: TAsgVAlignment);
    procedure dbgArticulosClick(Sender: TObject);
    procedure CDSArticulosCalcFields(DataSet: TDataSet);
    procedure dbgArticulosSelectionChanged(Sender: TObject; ALeft, ATop, ARight,
      ABottom: Integer);
    procedure FormResize(Sender: TObject);
    procedure sbReporteClick(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edCopiasKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRubrosRotulosDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgRubrosRotulosDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure QRubrosRotAfterDelete(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure ExpandExecute(Sender: TObject);
    procedure ContraerExecute(Sender: TObject);
    procedure frReportAfterPrintReport(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgArticulosDblClick(Sender: TObject);
  private
    procedure RegistrarRotulo(Fecha: TDateTime; Codigo, Lote: String;
      Cantidad: Extended);
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  end;

var
  FormRotulos: TFormRotulos;

{$D+}

implementation

uses UDMain_FD, UStock_2;

{$R *.dfm}

procedure TFormRotulos.RegistrarRotulo(Fecha:TDateTime;Codigo,Lote:String;Cantidad:Extended);
var Query:TFDQuery;
begin
//  Query           := TFDQuery.Create(nil);
//  Query.Connection:= DMMain_FD.fdcGestion;
//  Query.SQL.Text  :='insert into tabla_registros_rotulos (id,fecha_impresion,codigo,lote,cantidad)'+
//                    ' values (-1,:fecha,:codigo,:lote,:cantidad)';
 // if DMMain_FD.fdcGestion.InTransaction then
 //   ShowMessage('en trans');
  QRegRotulo.Close;
  QRegRotulo.ParamByName('Fecha').AsDate    := Fecha;
  QRegRotulo.ParamByName('Codigo').AsString := Codigo;
  QRegRotulo.ParamByName('Lote').AsString   := Lote;
  QRegRotulo.ParamByName('Cantidad').AsFloat:= Cantidad;
  try
    QRegRotulo.ExecSQL();
  finally
    QRegRotulo.Close;
  end;
//  FreeAndNil(Query);
end;

procedure TFormRotulos.AdvGlowButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRotulos.BuscarExecute(Sender: TObject);
begin
  CDSRegistro.Close;
  CDSRegistro.Params.ParamByName('fecha').Value:=edFechaRegistro.Date;
  CDSRegistro.Open;
end;

procedure TFormRotulos.CDSArticulosAfterOpen(DataSet: TDataSet);
begin
  dbgArticulos.PageMode    :=False;

end;

procedure TFormRotulos.CDSArticulosCalcFields(DataSet: TDataSet);
var A:string;
begin
  CDSArticulosLOTE.AsString:= FormatDateTime('YYMMDD',edFecha.Date)+  FormatDateTime('YYMMDD',IncDay(edFecha.Date,CDSArticulosVENCIMIENTO.AsInteger));
  a:=copy(CDSArticulosREEMPLAZO_STK.AsString+'        ',1,8);
  CDSArticulosCODIGOBARRA.AsString:=a+CDSArticulosLOTE.AsString;

end;

procedure TFormRotulos.chAgruparClick(Sender: TObject);
begin
   dbgArticulos.InsertCols(0,1);
   dbgArticulos.ColWidths[0] :=35;
   dbgArticulos.GroupColumn  :=1;

end;

procedure TFormRotulos.ContraerExecute(Sender: TObject);
begin
  dbgArticulos.ContractAll;
end;

procedure TFormRotulos.dbgArticulosClick(Sender: TObject);
begin
  CDSArticulos.Locate('CODIGO_STK',dbgArticulos.Cells[2,dbgArticulos.Row],[] );
end;

procedure TFormRotulos.dbgArticulosDblClick(Sender: TObject);
begin
  if FormStock_2=nil then
    FormStock_2:=TFormStock_2.Create(Self);
  FormStock_2.DatoNew:=dbgArticulos.Cells[2,dbgArticulos.Row];
  FormStock_2.Recuperar.execute;
  formStock_2.Show;

end;

procedure TFormRotulos.dbgArticulosGetAlignment(Sender: TObject; ARow, ACol: Integer;
  var HAlign: TAlignment; var VAlign: TAsgVAlignment);
begin
  if ACol=1 then
    HAlign:=taLeftJustify;
end;

procedure TFormRotulos.dbgArticulosGetCellColor(Sender: TObject; ARow, ACol: Integer;
  AState: TGridDrawState; ABrush: TBrush; AFont: TFont);
begin
  if dbgArticulos.IsNode(arow) then
  begin
    ABrush.Color := clHighlight;
    AFont.Color  := clWhite;
    AFont.Style  := [TFontStyle.fsBold];
  end;
end;

procedure TFormRotulos.dbgArticulosSelectionChanged(Sender: TObject; ALeft, ATop,
  ARight, ABottom: Integer);
begin
  CDSArticulos.Locate('CODIGO_STK',dbgArticulos.Cells[2,dbgArticulos.Row],[] );
end;

procedure TFormRotulos.dbgRubrosRotulosDragDrop(Sender, Source: TObject; X, Y: Integer);
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

    end;

end;

procedure TFormRotulos.dbgRubrosRotulosDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
   inherited;
  IF Source = dbgRubros THEN
    accept := True
  ELSE
    Accept := False;
end;

procedure TFormRotulos.edCopiasKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in ['0'..'9', #46,#8, #13]) then // Permitir solo números, tecla de retroceso y enter
    Key := #0; // Ignorar el caracter ingresado

end;

procedure TFormRotulos.ExpandExecute(Sender: TObject);
begin
  dbgArticulos.ExpandAll;
end;

procedure TFormRotulos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ArchivoIni   := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Rotulos.ini');
  //*************************************************************
  ArchivoIni.WriteString('etiqueta', 'File', edReporte.Text);
  ArchivoIni.WriteBool('registro', 'estado', chGenerarRegistro.Checked);
  ArchivoIni.Free;
  Action := TCloseAction.caFree
end;

procedure TFormRotulos.FormCreate(Sender: TObject);
begin
  OpenDialog.InitialDir:=DMMain_FD.PathReportesLst;

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  ArchivoIni               := TIniFile.Create(ExtractFilePath(ParamStr(0))+'Rotulos.ini');
  edReporte.Text           := ArchivoIni.ReadString('etiqueta', 'File', '');
  chGenerarRegistro.Checked:= ArchivoIni.ReadBool('registro', 'estado', False);

  ArchivoIni.Free;

  CDSRubros.Close;
  CDSRubros.Open;

  CDSRubrosRotulos.Close;
  CDSRubrosRotulos.Open;
  PageControl1.ActivePageIndex:=0;

end;

procedure TFormRotulos.FormDestroy(Sender: TObject);
begin
  FormRotulos:=nil;
end;

procedure TFormRotulos.FormResize(Sender: TObject);
begin
  if FormRotulos<>nil then
    if  FormRotulos.Width>1310 then
      FormRotulos.Width:=1310;
end;

procedure TFormRotulos.FormShow(Sender: TObject);
begin
  CDSArticulos.OnCalcFields:=nil;
  CDSArticulos.Close;
  CDSArticulos.Open;
  CDSArticulos.OnCalcFields:=CDSArticulosCalcFields;
  chAgrupar.Checked:=True;
  edFecha.Date := Date;
end;

procedure TFormRotulos.frReportAfterPrintReport(Sender: TObject);
begin
  if chGenerarRegistro.Checked then
    begin
      RegistrarRotulo(Date,CDSArticulosCODIGO_STK.AsString,CDSArticulosLOTE.AsString,StrToFloat(edCopias.Text));
    end;
end;

procedure TFormRotulos.ImprimirExecute(Sender: TObject);
begin
  if edCopias.Text<>'' then
    begin
      frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\'+edReporte.Text);
      frReport.PrintOptions.Printer:= DMMain_FD.PrNomListados;
      frReport.SelectPrinter;
      frReport.PrintOptions.ShowDialog       := False;//.Checked;
      frReport.PrintOptions.Copies           := StrToInt(edCopias.Text);
      frReport.PrepareReport;

      if chPreview.Checked then
        frReport.ShowReport
      else
        frReport.Print;
    end;

end;

procedure TFormRotulos.Panel2DblClick(Sender: TObject);
begin
  frReport.DesignReport;
end;

procedure TFormRotulos.QRubrosRotAfterDelete(DataSet: TDataSet);
begin
  CDSRubrosRotulos.ApplyUpdates(-1)
end;

procedure TFormRotulos.sbReporteClick(Sender: TObject);
VAR Lon1,Lon2:integer;
begin
 if OpenDialog.Execute Then
    if OpenDialog.FileName<>'' Then
      begin
        edReporte.Text := OpenDialog.FileName;
        Lon1           := Length(OpenDialog.InitialDir);
        Lon2           := Length(OpenDialog.FileName);
        edReporte.Text := Copy(OpenDialog.FileName,Lon1+2,Lon2-Lon1-1);
      end
    else
      edReporte.Text:='';
end;

end.
