unit UBuscadorComprobantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Provider, DB, DBClient, SqlExpr, Grids, DBGrids, StdCtrls,
  ExtCtrls, Buttons,IniFiles, JvExControls, JvGradient, JvLabel, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvOfficeButtons;
  {$D+}
type
  TFormBuscaComprobantes = class(TForm)
    pnCabecera: TPanel;
    pnPie: TPanel;
    dbgComprobantes: TDBGrid;
    DSComp: TDataSource;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lbSucursal: TLabel;
    Label1: TLabel;
    QSucursal: TFDQuery;
    chEnUso: TAdvOfficeCheckBox;
    procedure chEnUsoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgComprobantesDblClick(Sender: TObject);
    procedure btCancelarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure dbgComprobantesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
    FId_comp:Integer;
    TCDSDatos:TClientDataSet;
  public
    BuscadorIni :TIniFile;
    { Public declarations }
  published
    property Id_Comp:Integer read FId_Comp write FId_Comp;
    property CDSDatos:TClientDataSet read TCDSDatos write TCDSDatos;

  end;

var
  FormBuscaComprobantes: TFormBuscaComprobantes;

implementation

Uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscaComprobantes.btCancelarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key=VK_ESCAPE then
    btCancelar.Click;
end;

procedure TFormBuscaComprobantes.btOkClick(Sender: TObject);
begin
  if VarIsNull(CDSDatos.FieldByName('ID_COMPROBANTE').Value) then
    FId_Comp:=-1
  else
    FId_comp:=CDSDatos.FieldByName('ID_COMPROBANTE').Value;

end;

procedure TFormBuscaComprobantes.btCancelarClick(Sender: TObject);
begin
  FId_Comp:=-1;
  Close;
end;

procedure TFormBuscaComprobantes.chEnUsoClick(Sender: TObject);
begin
  CDSDatos.Filtered := False;
  CDSDatos.Filter   := ' EN_USO = ''S'' ';
  CDSDatos.Filtered := chEnUso.Checked;
end;

procedure TFormBuscaComprobantes.dbgComprobantesDblClick(Sender: TObject);
begin
  if CDSDatos.FieldByName('ID_COMPROBANTE').AsString<>'' then
    FId_comp:=CDSDatos.FieldByName('ID_COMPROBANTE').Value;
  btOk.Click;
end;

procedure TFormBuscaComprobantes.dbgComprobantesDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
 // if (Column.Index in [6..7]) and (State = []) then
//  begin
//      if (dbgComprobantes.Columns[Datacol].Field.AsString)='S' then
//        begin
//          dbgComprobantes.Canvas.Brush.Color := clHighlight;
//          dbgComprobantes.DefaultDrawColumnCell(rect,DataCol,Column,State);
//        end;
//    end;
end;

procedure TFormBuscaComprobantes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorCpbte.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorCpbte.ini');
 //*************************************************************
  BuscadorIni.WriteBool('uso', 'uso', chEnUso.Checked);
  BuscadorIni.Free;
  Action:=caFree;
end;

procedure TFormBuscaComprobantes.FormCreate(Sender: TObject);
begin
  AutoSize       := True;
  CDSDatos       := TClientDataSet.Create(Self);
  DSComp.DataSet := CDSDatos;

 if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorCpbte.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorCpbte.ini');
  //*************************************************************
  chEnUso.Checked  := BuscadorIni.ReadBool('uso', 'uso', False);
  BuscadorIni.Free;
end;

procedure TFormBuscaComprobantes.FormDestroy(Sender: TObject);
begin
  FormBuscaComprobantes:=nil;
end;

procedure TFormBuscaComprobantes.FormShow(Sender: TObject);
begin
  DSComp.DataSet:=CDSDatos;
//  CDSDatos.FieldDefs.Add('EN_USO',ftString,1,True);

  dbgComprobantes.Columns[0].FieldName     :='CODIGO_AFIP';
  dbgComprobantes.Columns[1].FieldName     :='TIPO_COMPROB';
  dbgComprobantes.Columns[2].FieldName     :='CLASE_COMPROB';
  dbgComprobantes.Columns[3].FieldName     :='DENOMINACION';
  dbgComprobantes.Columns[4].FieldName     :='LETRA';
  dbgComprobantes.Columns[5].FieldName     :='PREFIJO';
  dbgComprobantes.Columns[6].FieldName     :='NUMERO';
  dbgComprobantes.Columns[7].FieldName     :='FISCAL';
  dbgComprobantes.Columns[8].FieldName     :='FACTURAELECTRONICA';

  dbgComprobantes.Columns[0].Title.Caption := 'C.Cpm';
  dbgComprobantes.Columns[1].Title.Caption := 'Tp.';
  dbgComprobantes.Columns[2].Title.Caption := 'Cl.';
  dbgComprobantes.Columns[3].Title.Caption := 'Denominacion';
  dbgComprobantes.Columns[4].Title.Caption := 'Letra';
  dbgComprobantes.Columns[5].Title.Caption := 'Prefijo';
  dbgComprobantes.Columns[6].Title.Caption := 'Numero';
  dbgComprobantes.Columns[7].Title.Caption := 'Fisc';
  dbgComprobantes.Columns[8].Title.Caption := 'Elec';

  dbgComprobantes.Columns[0].Alignment     := taCenter;
  dbgComprobantes.Columns[7].Alignment     := taCenter;
  dbgComprobantes.Columns[8].Alignment     := taCenter;

  CDSDatos.Active   := True;
  CDSDatos.Filter   := ' EN_USO = ''S'' ';
  CDSDatos.Filtered := chEnUso.Checked;

  lbSucursal.Caption:='';

  if DSComp.DataSet.FieldByName('sucursal').AsString<>'' then
    begin
      QSucursal.Close;
      QSucursal.ParamByName('codigo').Value := DSComp.DataSet.FieldByName('sucursal').Value;
      QSucursal.Open;
      lbSucursal.Caption:=QSucursal.Fields[0].AsString;
    end;
  QSucursal.Close;
end;

end.
