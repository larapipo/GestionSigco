unit UBuscadorLiqTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, ComCtrls, Mask, JvExMask, JvToolEdit,
  JvExControls, JvDBLookup, JvGradient, ExtCtrls,IniFiles,DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorLiquidacionTC = class(TForm)
    Panel1: TPanel;
    pnCabecera: TPanel;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbcCta: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    Panel2: TPanel;
    JvGradient1: TJvGradient;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    dbgMovimientos: TJvDBGrid;
    QBuscadorLiq: TFDQuery;
    DSPBuscadorLiq: TDataSetProvider;
    CDSBuscadorLiq: TClientDataSet;
    DSBuscadorLiq: TDataSource;
    QTCredito: TFDQuery;
    DSPTCredito: TDataSetProvider;
    CDSTCredito: TClientDataSet;
    DSTCredito: TDataSource;
    CDSBuscadorLiqID: TIntegerField;
    CDSBuscadorLiqID_TC: TIntegerField;
    CDSBuscadorLiqFECHA: TSQLTimeStampField;
    CDSBuscadorLiqPERIODO_LIQUIDADO: TStringField;
    CDSBuscadorLiqFECHA_FISCAL: TSQLTimeStampField;
    CDSBuscadorLiqLETRA: TStringField;
    CDSBuscadorLiqTIPOCPBTE: TStringField;
    CDSBuscadorLiqCLASECPBTE: TStringField;
    CDSBuscadorLiqSUC: TStringField;
    CDSBuscadorLiqNUMERO: TStringField;
    CDSBuscadorLiqNUMEROCPBTE: TStringField;
    CDSBuscadorLiqTOTAL_PRESENTACION: TFloatField;
    CDSBuscadorLiqARANCEL: TFloatField;
    CDSBuscadorLiqIVA: TFloatField;
    CDSBuscadorLiqIIBB: TFloatField;
    CDSBuscadorLiqGANANCIAS: TFloatField;
    CDSBuscadorLiqCOSTO_FINANCIERO: TFloatField;
    CDSBuscadorLiqTOTAL_ACREDITADO: TFloatField;
    CDSBuscadorLiqCUIT: TStringField;
    CDSBuscadorLiqRAZONSOCIAL: TStringField;
    CDSBuscadorLiqSUCURSAL: TIntegerField;
    CDSBuscadorLiqPRESENTACION_ADICIONAL: TFloatField;
    CDSBuscadorLiqNRO_LIQUIDACION: TStringField;
    CDSBuscadorLiqNRO_LOTE: TStringField;
    CDSBuscadorLiqNRO_TERMINAL: TStringField;
    CDSBuscadorLiqID_CTA_BANCO: TIntegerField;
    CDSBuscadorLiqNOMBRE_CTABCO: TStringField;
    CDSBuscadorLiqING_LIBROIVA: TStringField;
    CDSBuscadorLiqCONTABILIZA: TStringField;
    CDSBuscadorLiqMUESTRATARJETA: TStringField;
    CDSTCreditoID_TC: TIntegerField;
    CDSTCreditoDESCRIPCION: TStringField;
    SpeedButton1: TSpeedButton;
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure dbgMovimientosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgMovimientosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure dbcCtaChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Panel1Resize(Sender: TObject);
  private
    FId:Integer;
    BuscadorIni   :TIniFile;

    { Private declarations }
    procedure recuperar;
  published

    property Id:Integer Read FId write FId ;
  end;

var
  FormBuscadorLiquidacionTC: TFormBuscadorLiquidacionTC;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorLiquidacionTC.recuperar;
begin
  CDSBuscadorLiq.Close;
  CDSBuscadorLiq.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSBuscadorLiq.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSBuscadorLiq.Params.ParamByName('id_tc').Value:=dbcCta.KeyValue;
  CDSBuscadorLiq.IndexDefs.Clear;
  CDSBuscadorLiq.Open;
  CDSBuscadorLiq.IndexFieldNames:='FECHA';
end;

procedure TFormBuscadorLiquidacionTC.SpeedButton1Click(Sender: TObject);
begin
  recuperar;
end;

procedure TFormBuscadorLiquidacionTC.UpDown1Click(Sender: TObject;
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
  recuperar;
end;

procedure TFormBuscadorLiquidacionTC.btCancelarClick(Sender: TObject);
begin
  Fid:=-1;
end;

procedure TFormBuscadorLiquidacionTC.btOkClick(Sender: TObject);
begin
 FId:=CDSBuscadorLiqID.Value;

end;

procedure TFormBuscadorLiquidacionTC.dbcCtaChange(Sender: TObject);
begin
  recuperar;
end;

procedure TFormBuscadorLiquidacionTC.dbgMovimientosDblClick(Sender: TObject);
begin
  FId:=CDSBuscadorLiqID.Value;
  btOk.Click;
end;

procedure TFormBuscadorLiquidacionTC.dbgMovimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 then
    btOk.Click;
end;

procedure TFormBuscadorLiquidacionTC.dbgMovimientosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var campo:string;
begin

 try
    Campo := Field.FieldName;
    with dbgMovimientos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormBuscadorLiquidacionTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorLiq.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorLiq.ini');
  //*************************************************************
  BuscadorIni.WriteInteger('tarjeta', 'tarjeta',dbcCta.KeyValue);
  BuscadorIni.WriteDate('fecha', 'desde', desde.date);
  BuscadorIni.WriteDate('fecha', 'hasta', hasta.date);

  BuscadorIni.Free;
  CDSTCredito.Close;
  Action:=caFree;
end;

procedure TFormBuscadorLiquidacionTC.FormCreate(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  CDSTCredito.Close;
  CDSTCredito.Open;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.date));
  //AutoSize:=True;

  if DMMain_FD.UsuarioActivo<>'' Then
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_buscadorLiq.ini')
  else
    BuscadorIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_buscadorLiq.ini');
  //*************************************************************
  dbcCta.KeyValue           := BuscadorIni.ReadInteger('tarjeta', 'tarjeta', -1);
  Desde.Date         := BuscadorIni.readDate('fecha', 'desde', desde.date);
  Hasta.Date         := BuscadorIni.readDate('fecha', 'hasta', hasta.date);
  BuscadorIni.Free;
  recuperar;
end;

procedure TFormBuscadorLiquidacionTC.FormDestroy(Sender: TObject);
begin
  FormBuscadorLiquidacionTC:=nil;
end;

procedure TFormBuscadorLiquidacionTC.Panel1Resize(Sender: TObject);
begin
  if FormBuscadorLiquidacionTC<>nil then
    if FormBuscadorLiquidacionTC.Width<>754 then
      FormBuscadorLiquidacionTC.Width:=754;
end;

end.
