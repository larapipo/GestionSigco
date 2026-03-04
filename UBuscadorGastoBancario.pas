unit UBuscadorGastoBancario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, JvExControls, JvGradient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, Mask, JvExMask, JvToolEdit, JvDBLookup, ExtCtrls,
  FMTBcd, DB, DBClient, Provider, SqlExpr,DateUtils, Buttons,IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorGastosBancarios = class(TForm)
    Panel1: TPanel;
    pnCabecera: TPanel;
    dbcCta: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Panel2: TPanel;
    dbgMovimientos: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    DSBancos: TDataSource;
    DSBuscadorGastos: TDataSource;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    SpeedButton1: TSpeedButton;
    QBancos: TFDQuery;
    QBuscadorGastos: TFDQuery;
    QBancosID_CUENTA: TIntegerField;
    QBancosID_TIPO_CTA: TIntegerField;
    QBancosNOMBRE: TStringField;
    QBancosNRO_CUENTA: TStringField;
    QBancosID_BANCO: TIntegerField;
    QBancosCUIT: TStringField;
    QBancosRAZONSOCIAL: TStringField;
    QBuscadorGastosID: TIntegerField;
    QBuscadorGastosTIPOCPBTE: TStringField;
    QBuscadorGastosCLASECPBTE: TStringField;
    QBuscadorGastosID_CTA_CAJA: TIntegerField;
    QBuscadorGastosCTA_CAJA: TStringField;
    QBuscadorGastosFECHA: TSQLTimeStampField;
    QBuscadorGastosID_BANCO: TIntegerField;
    QBuscadorGastosBANCO: TStringField;
    QBuscadorGastosNUMERO_CTA: TStringField;
    QBuscadorGastosNROCPBTE: TStringField;
    QBuscadorGastosTOTAL: TFloatField;
    QBuscadorGastosFECHAFISCAL: TSQLTimeStampField;
    QBuscadorGastosTIPO: TStringField;
    QBuscadorGastosCUIT: TStringField;
    QBuscadorGastosSUCURSAL: TIntegerField;
    QBuscadorGastosRAZONSOCIAL: TStringField;
    QBuscadorGastosING_LIBROIVA: TStringField;
    QBuscadorGastosCONTABILIZA: TStringField;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbcCtaChange(Sender: TObject);
    procedure dbgMovimientosKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
    BuscadorIni   :TIniFile;
    procedure recuperar;
  published
    property Id:Integer Read FId write FId ;
  end;

var
  FormBuscadorGastosBancarios: TFormBuscadorGastosBancarios;

implementation

{$R *.dfm}

uses UDMain_FD;

procedure TFormBuscadorGastosBancarios.recuperar;
begin
  QBuscadorGastos.Close;
  QBuscadorGastos.ParamByName('Desde').AsDate:=Desde.Date;
  QBuscadorGastos.ParamByName('Hasta').AsDate:=Hasta.Date;
  QBuscadorGastos.ParamByName('id_cta_caja').Value:=dbcCta.KeyValue;
  QBuscadorGastos.IndexDefs.Clear;
  QBuscadorGastos.Open;
  QBuscadorGastos.IndexFieldNames:='FECHA';
  dbgMovimientos.Width:=dbgMovimientos.Width-1;
  dbgMovimientos.Width:=dbgMovimientos.Width+1;

end;

procedure TFormBuscadorGastosBancarios.SpeedButton1Click(Sender: TObject);
begin
  recuperar;
end;

procedure TFormBuscadorGastosBancarios.btCancelarClick(Sender: TObject);
begin
  Fid:=-1;
end;

procedure TFormBuscadorGastosBancarios.btOkClick(Sender: TObject);
begin
  FId:=QBuscadorGastosID.Value;

end;

procedure TFormBuscadorGastosBancarios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorGasBco.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general__buscadorGasBco.ini');
  //*************************************************************
  BuscadorIni.WriteInteger('cta', 'cta', dbcCta.KeyValue);
  BuscadorIni.WriteDate('fecha', 'desde', desde.date);
  BuscadorIni.WriteDate('fecha', 'hasta', hasta.date);

  BuscadorIni.Free;
  Action:=caFree;
end;

procedure TFormBuscadorGastosBancarios.FormCreate(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.date));
  QBancos.Close;
  QBancos.Open;
  AutoSize:=True;

  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorGasBco.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general__buscadorGasBco.ini');
  //*************************************************************
  dbcCta.KeyValue    := BuscadorIni.ReadInteger('cta', 'cta', -1);
  Desde.Date         := BuscadorIni.readDate('fecha', 'desde', desde.date);
  Hasta.Date         := BuscadorIni.readDate('fecha', 'hasta', hasta.date);

  BuscadorIni.Free;

  recuperar;
end;

procedure TFormBuscadorGastosBancarios.FormDestroy(Sender: TObject);
begin
  FormBuscadorGastosBancarios:=nil;
end;

procedure TFormBuscadorGastosBancarios.FormShow(Sender: TObject);
begin
  recuperar;
end;

procedure TFormBuscadorGastosBancarios.dbcCtaChange(Sender: TObject);
begin
  recuperar;
end;

procedure TFormBuscadorGastosBancarios.dbgMovimientosDblClick(Sender: TObject);
begin
  FId:=QBuscadorGastosID.Value;
  btOk.Click;
end;

procedure TFormBuscadorGastosBancarios.dbgMovimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    btOk.Click;
end;

procedure TFormBuscadorGastosBancarios.dbgMovimientosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin
   if QBuscadorGastos.IndexFieldNames = Field.FieldName then
      QBuscadorGastos.IndexFieldNames := Field.FieldName + ':DN'
    Else
      QBuscadorGastos.IndexFieldNames := Field.FieldName;
end;

procedure TFormBuscadorGastosBancarios.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  //if dbcCtas.Text<>'' Then
  recuperar;
  //  Desde.SetFocus;
end;

end.
