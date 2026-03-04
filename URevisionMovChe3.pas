unit URevisionMovChe3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, DB, DBClient, Provider, SqlExpr, Grids, DBGrids,
  Mask, JvExMask, JvToolEdit, JvBaseEdits, JvExControls, JvLabel, JvDBControls,
  JvExDBGrids, JvDBGrid, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, ComCtrls,
  Buttons, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxNavigator, JvDBLookup, dxSkinBasic,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxDateRanges,
  dxScrollbarAnnotations, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormRevisionMovChe3 = class(TForm)
    DSPMov: TDataSetProvider;
    CDSMovI: TClientDataSet;
    DSMovI: TDataSource;
    Button1: TButton;
    btRev: TButton;
    CDSMovIID_MOV_CAJA: TIntegerField;
    CDSMovIID_CAJA: TIntegerField;
    CDSMovIFECHA_CAJA: TSQLTimeStampField;
    CDSMovIFECHA_OPERACION: TSQLTimeStampField;
    CDSMovITIPO_OPERACION: TStringField;
    CDSMovITIPO_COMPROB: TStringField;
    CDSMovICLASE_COMPROB: TStringField;
    CDSMovIID_COMPROBANTE: TIntegerField;
    CDSMovINRO_COMPROBANTE: TStringField;
    CDSMovIID_CUENTA_CAJA: TIntegerField;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    edHaber_res: TJvCalcEdit;
    chConMovimiento: TCheckBox;
    DBStatusLabel1: TJvDBStatusLabel;
    CDSMovIID_NEXO: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgMovI: TJvDBGrid;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView1TIPO_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1CLASE_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView1ID_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1NRO_COMPROBANTE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1ID_CUENTA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView1VERIFICADO: TcxGridDBColumn;
    cxGrid1DBTableView1ID_NEXO: TcxGridDBColumn;
    CDSMovE: TClientDataSet;
    CDSMovEID_MOV_CAJA: TIntegerField;
    CDSMovEID_CAJA: TIntegerField;
    CDSMovEFECHA_CAJA: TSQLTimeStampField;
    CDSMovEFECHA_OPERACION: TSQLTimeStampField;
    CDSMovETIPO_OPERACION: TStringField;
    CDSMovETIPO_COMPROB: TStringField;
    CDSMovECLASE_COMPROB: TStringField;
    CDSMovEID_COMPROBANTE: TIntegerField;
    CDSMovENRO_COMPROBANTE: TStringField;
    CDSMovEID_TPAGO: TIntegerField;
    CDSMovEID_FPAGO: TIntegerField;
    CDSMovEID_CUENTA_CAJA: TIntegerField;
    CDSMovEID_NEXO: TIntegerField;
    dbgMovE: TJvDBGrid;
    DSMovE: TDataSource;
    CDSMovICONTROL: TIntegerField;
    CDSMovECONTROL: TIntegerField;
    edDebe_Res: TJvCalcEdit;
    SpeedButton1: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    DSPCtasCaja: TDataSetProvider;
    CDSCtasCaja: TClientDataSet;
    CDSCtasCajaID_CUENTA: TIntegerField;
    CDSCtasCajaID_TIPO_CTA: TIntegerField;
    CDSCtasCajaNOMBRE: TStringField;
    CDSCtasCajaNRO_CUENTA: TStringField;
    CDSCtasCajaID_BANCO: TIntegerField;
    CDSCtasCajaCUIT: TStringField;
    CDSCtasCajaRAZONSOCIAL: TStringField;
    DSCtasCaja: TDataSource;
    CtaCajaDestino: TLabel;
    dbcCajaDestino: TJvDBLookupCombo;
    btAbort: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    QMov: TFDQuery;
    QCtasCaja: TFDQuery;
    CDSMovIHABER: TFloatField;
    CDSMovIDEBE: TFloatField;
    CDSMovIUNIDADES: TFloatField;
    CDSMovEHABER: TFloatField;
    CDSMovEDEBE: TFloatField;
    CDSMovEUNIDADES: TFloatField;
    CDSMovECOTIZACION: TFloatField;
    CDSMovEMONEDA: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure btRevClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgMovIDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgMovITitleClick(Column: TColumn);
    procedure dbgMovETitleClick(Column: TColumn);
    procedure CDSMovICalcFields(DataSet: TDataSet);
    procedure CDSMovECalcFields(DataSet: TDataSet);
    procedure dbgMovEDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btAbortClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Abortar:Boolean;
    procedure Sumar;
  end;

var
  FormRevisionMovChe3: TFormRevisionMovChe3;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormRevisionMovChe3.SpeedButton1Click(Sender: TObject);
begin
  Sumar;
end;

procedure TFormRevisionMovChe3.Sumar;
begin
  edDebe.Value  :=0;
  edHaber.Value :=0;
  edSaldo.Value :=0;
  edDebe_Res.Value  :=0;
  edHaber_res.Value :=0;

  CDSMovI.First;
  while not(CDSMovI.Eof) do
    begin
      edDebe.Value :=edDebe.Value+CDSMovIDEBE.AsFloat;
      if CDSMovICONTROL.Value=1 then
        edDebe_Res.Value:=edDebe_Res.Value+CDSMovIDEBE.AsFloat;
      CDSMovI.Next;
    end;

  CDSMovE.First;
  while not(CDSMovE.Eof) do
    begin
      edHaber.Value :=edHaber.Value+CDSMovEHABER.AsFloat;
      if CDSMovECONTROL.Value=1 then
        edHaber_res.Value:=edHaber_res.Value+CDSMovEHABER.AsFloat;
      CDSMovE.Next;
    end;


  edSaldo.Value:=edDebe.Value-edHaber.Value;
end;


procedure TFormRevisionMovChe3.Button1Click(Sender: TObject);
begin
  if dbcCajaDestino.KeyValue >-1 then
    begin
      CDSMovI.Close;
      CDSMovI.IndexDefs.Clear;
      CDSMovI.IndexFieldNames:='';
      CDSMovI.Params.ParamByName('id').Value:= dbcCajaDestino.KeyValue;//StrToInt(Edit1.Text);
      CDSMovI.Open;
      CDSMovI.IndexFieldNames:='DEBE';

      CDSMovE.Close;
      CDSMovE.IndexDefs.Clear;
      CDSMovE.IndexFieldNames:='';
      CDSMovE.Params.ParamByName('id').Value:= dbcCajaDestino.KeyValue;//StrToInt(Edit1.Text);
      CDSMovE.Open;
      CDSMovE.IndexFieldNames:='HABER';
    end;

end;

procedure TFormRevisionMovChe3.btAbortClick(Sender: TObject);
begin
  Abortar :=True;
end;

procedure TFormRevisionMovChe3.btRevClick(Sender: TObject);
var CDSCloneDEBE,CDSCloneHABER:TClientDataSet;
Id:Integer;
Change,Encontrado:Boolean;
begin
  btAbort.Enabled:=True;
  btRev.Enabled  :=False;
  CDSMovI.First;
  while not(CDSMovI.Eof) do
    begin
      Encontrado:=False;
      CDSMovE.First;
      while Not(CDSMovE.Eof) and (Encontrado=False) and (Abortar=False) do
        begin
          if (Trunc(CDSMovIDEBE.AsFloat*100) = Trunc(CDSMovEHABER.AsFloat*100)) and (CDSMovICONTROL.Value=0) and
             (CDSMovEID_NEXO.AsString='') and (CDSMovEID_NEXO.AsInteger<=0)  Then

            begin
              CDSMovI.Edit;
              CDSMovICONTROL.Value:=1;
              CDSMovI.Post;

              CDSMovE.Edit;
              CDSMovECONTROL.Value:=1;
              CDSMovEID_NEXO.Value:=CDSMovIID_MOV_CAJA.Value;
              CDSMovE.Post;
              Encontrado:=True;
            end;
          CDSMovE.Next;
        end;

      Application.ProcessMessages;
      CDSMovI.Next;
    end;

  if Abortar=False Then Sumar;
  btAbort.Enabled:=False;
  btRev.Enabled  :=True;
  Abortar:=False;
end;

procedure TFormRevisionMovChe3.CDSMovECalcFields(DataSet: TDataSet);
begin
  if CDSMovECONTROL.AsString='' then
    CDSMovECONTROL.Value:=0;
  if (CDSMovEID_NEXO.AsString='') and (CDSMovEID_NEXO.AsInteger<=0) then
    CDSMovEID_NEXO.Clear;
end;

procedure TFormRevisionMovChe3.CDSMovICalcFields(DataSet: TDataSet);
begin
  if CDSMovICONTROL.AsString='' then
    CDSMovICONTROL.Value:=0;
end;

procedure TFormRevisionMovChe3.dbgMovEDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if CDSMovECONTROL.Value=1 then
      dbgMovE.Canvas.Font.Style:=[];
    dbgMovE.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRevisionMovChe3.dbgMovETitleClick(Column: TColumn);
var campo:String;
begin
 try
    Campo := Column.FieldName;
    with dbgMovE.DataSource.DataSet as TClientDataSet do
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

procedure TFormRevisionMovChe3.dbgMovIDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
    if CDSMovICONTROL.Value=1 then
      dbgMovI.Canvas.Font.Style:=[];
    dbgMovI.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRevisionMovChe3.dbgMovITitleClick(Column: TColumn);
var campo:String;
begin
 try
    Campo := Column.FieldName;
    with dbgMovI.DataSource.DataSet as TClientDataSet do
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

procedure TFormRevisionMovChe3.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRevisionMovChe3.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  Abortar :=False;
  CDSCtasCaja.Open;
end;

procedure TFormRevisionMovChe3.FormDestroy(Sender: TObject);
begin
  FormRevisionMovChe3:=nil;
end;

procedure TFormRevisionMovChe3.FormResize(Sender: TObject);
begin
  if FormRevisionMovChe3<>nil then
    if FormRevisionMovChe3.Width<>1118 then
      FormRevisionMovChe3.Width:=1118;
end;

end.
