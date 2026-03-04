unit UBuscadorTipoComprobante;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   Grids, DBGrids, ExtCtrls, StdCtrls, ActnList,
  Buttons,Variants, JvExControls, JvGradient,IniFiles, JvDBLookup, FMTBcd,
  SqlExpr, Provider, DBClient, JvExDBGrids, JvDBGrid, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons;

type
  TFormBuscadorComprobantes = class(TForm)
    Panel1: TPanel;
    DSComprobantes: TDataSource;
    DSSucursal: TDataSource;
    DSTipo: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    ActionList1: TActionList;
    Buscar: TAction;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Cancelar: TAction;
    Aceptar: TAction;
    dbcSucursales: TJvDBLookupCombo;
    dbcTipos: TJvDBLookupCombo;
    dbgComprobantes: TJvDBGrid;
    QComprobantes: TFDQuery;
    QSucursal: TFDQuery;
    QTipo: TFDQuery;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesDETALLE: TStringField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesDEFECTO: TStringField;
    QComprobantesEN_USO: TStringField;
    QComprobantesFACTURAELECTRONICA: TStringField;
    QComprobantesCODIGO_AFIP: TStringField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QTipoID_TIPO: TIntegerField;
    QTipoDETALLE: TStringField;
    QTipoSIGLA: TStringField;
    QTipoDESGLOZA_IVA: TStringField;
    QTipoAFECTA_CC: TStringField;
    QTipoAFECTA_LIBRO_IVA: TStringField;
    QTipoTIPO_DE_OPERACION: TStringField;
    QComprobantesENUSOBOOLEAN: TBooleanField;
    pnPie: TPanel;
    pnCabecera: TPanel;
    rgTipo: TAdvOfficeRadioGroup;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure dbgComprobantesDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    function dbgComprobantesCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QComprobantesCalcFields(DataSet: TDataSet);
    procedure QComprobantesFACTURAELECTRONICAGetText(Sender: TField;
      var Text: string; DisplayText: Boolean);
    procedure QComprobantesFISCALGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure QComprobantesEN_USOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
    FId:Integer;
  public
    BuscadorIni :TIniFile;
    Tipo,CV     :String;
    Sucursal    :Integer;

    { Public declarations }
  published
    property id:integer read fid write fid;
  end;

var
  FormBuscadorComprobantes: TFormBuscadorComprobantes;

implementation

uses UDMAin_FD;

{$R *.DFM}

procedure TFormBuscadorComprobantes.BuscarExecute(Sender: TObject);
begin
  QComprobantes.Close;
  QComprobantes.ParamByName('Sucursal').AsInteger := dbcSucursales.KeyValue;
  QComprobantes.ParamByName('tipo').AsString      := dbcTipos.KeyValue;
  if rgTipo.ItemIndex=0 Then
    QComprobantes.ParamByName('compra_Vta').Value:='C'
  else
    if rgTipo.ItemIndex=1 Then
      QComprobantes.ParamByName('compra_Vta').Value:='V';
  QComprobantes.Open;
  dbgComprobantes.Width:=dbgComprobantes.Width-1;
  dbgComprobantes.Width:=dbgComprobantes.Width+1;
end;

procedure TFormBuscadorComprobantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorTipoCpbte.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorTipoCpbte.ini');
 //*************************************************************
  BuscadorIni.WriteString('Tipo', 'Tipo', dbcTipos.KeyValue);
  BuscadorIni.WriteInteger('Sucursal', 'Sucursal', dbcSucursales.KeyValue);
  if rgTipo.ItemIndex=0 then
    BuscadorIni.WriteString('CompraVenta', 'CompraVenta', 'C')
  else
    BuscadorIni.WriteString('CompraVenta', 'CompraVenta', 'V');
  BuscadorIni.Free;

  Action:=caFree;
end;

procedure TFormBuscadorComprobantes.FormCreate(Sender: TObject);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorTipoCpbte.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorTipoCpbte.ini');
  //*************************************************************
  Tipo                      := BuscadorIni.ReadString('Tipo', 'Tipo', '');
  Sucursal                  := BuscadorIni.ReadInteger('Sucursal', 'Sucursal',1);
  CV                        := BuscadorIni.ReadString('CompraVenta', 'CompraVenta', 'V');
  BuscadorIni.Free;

  AutoSize:=True;
  QTipo.Open;
  QSucursal.OPen;
  QComprobantes.Open;
  dbcSucursales.keyValue:=Sucursal;
  dbcTipos.KeyValue     :=Tipo;
  if CV='C' then
    rgTipo.ItemIndex:=0
  else
    rgTipo.ItemIndex:=1;
 // TRadioButton(rgTipo.Controls[0]).Font.Color := clWhite;
//  TRadioButton(rgTipo.Controls[1]).Font.Color := clWhite;
end;

procedure TFormBuscadorComprobantes.FormDestroy(Sender: TObject);
begin
  FormBuscadorComprobantes:=Nil;
end;

procedure TFormBuscadorComprobantes.QComprobantesCalcFields(DataSet: TDataSet);
begin
  QComprobantesENUSOBOOLEAN.Value:=QComprobantesEN_USO.Value='S';
end;


procedure TFormBuscadorComprobantes.QComprobantesEN_USOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if QComprobantesEN_USO.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormBuscadorComprobantes.QComprobantesFACTURAELECTRONICAGetText(
  Sender: TField; var Text: string; DisplayText: Boolean);
begin
 if Sender.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormBuscadorComprobantes.QComprobantesFISCALGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 if Sender.Value='S' then
    Text:='*'
  else
    Text:='';
end;

procedure TFormBuscadorComprobantes.CancelarExecute(Sender: TObject);
begin
  FId:=-1;
  Close;
end;


function TFormBuscadorComprobantes.dbgComprobantesCheckIfBooleanField(
  Grid: TJvDBGrid; Field: TField; var StringForTrue,
  StringForFalse: string): Boolean;
begin
  result   := Field = QComprobantesEN_USO;
  StringForTrue  := 'S';
  StringForFalse := 'N';
  result   := Field = QComprobantesFISCAL;
  StringForTrue  := 'S';
  StringForFalse := 'N';
  result   := Field = QComprobantesFACTURAELECTRONICA;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormBuscadorComprobantes.dbgComprobantesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (Column.Index in [10..12]) and (State = []) then
    begin
      if (dbgComprobantes.Columns[Datacol].Field.AsString)='S' then
        begin
          dbgComprobantes.Canvas.Brush.Color := clMoneyGreen;
          dbgComprobantes.DefaultDrawColumnCell(rect,DataCol,Column,State);
        end;
    end;
end;

procedure TFormBuscadorComprobantes.dbgComprobantesDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  dbgComprobantes.Canvas.Font.Color:=clBlack;
  if gdSelected in State then
    begin
      dbgComprobantes.Canvas.Font.Color  := clWhite;
      dbgComprobantes.Canvas.Brush.Color := clNavy;
    end
  else
    dbgComprobantes.Canvas.Font.Color := clDefault;

  IF QComprobantes.FieldByName('DEFECTO').Value = 'S' THEN
    dbgComprobantes.Canvas.Font.Style := [fsBold]
  ELSE
    dbgComprobantes.Canvas.Font.Style := [];

  dbgComprobantes.DefaultDrawDataCell(Rect, Field, State);
end;

procedure TFormBuscadorComprobantes.AceptarExecute(Sender: TObject);
begin
  FId:=QComprobantesID_COMPROBANTE.Value;
  Close;
end;

end.
