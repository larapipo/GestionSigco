unit UControlCheCompartidos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore,
  dxSkinBasic, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringtime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinTheBezier, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxEdit, cxNavigator, dxDateRanges, dxScrollbarAnnotations, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Datasnap.DBClient,
  Datasnap.Provider, Vcl.Mask, JvExMask, JvToolEdit,dATEuTILS,
  cxGridBandedTableView, cxGridDBBandedTableView, cxCheckBox, Vcl.Menus;

type
  TFormControlCheCompartidos = class(TFormABMBase)
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    QCheCompartidos: TFDQuery;
    DSPCheCompartidos: TDataSetProvider;
    CDSCheCompartidos: TClientDataSet;
    DSCheCompartidos: TDataSource;
    QMovChe: TFDQuery;
    DSPMovChe: TDataSetProvider;
    CDSMovChe: TClientDataSet;
    DSMovChe: TDataSource;
    CDSCheCompartidosID: TIntegerField;
    CDSCheCompartidosTIPOCPBTE: TStringField;
    CDSCheCompartidosCLASECPBTE: TStringField;
    CDSCheCompartidosLETRA: TStringField;
    CDSCheCompartidosSUC: TStringField;
    CDSCheCompartidosNUMERO: TStringField;
    CDSCheCompartidosCODIGO: TStringField;
    CDSCheCompartidosNOMBRE: TStringField;
    CDSCheCompartidosRAZONSOCIAL: TStringField;
    CDSCheCompartidosSUCURSALVENTA: TIntegerField;
    CDSCheCompartidosIMPORTE: TFloatField;
    CDSCheCompartidosSALDO: TFloatField;
    CDSCheCompartidosDETALLE: TStringField;
    CDSCheCompartidosNROCPBTE: TStringField;
    CDSCheCompartidosDISPONIBLE: TStringField;
    Label1: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    Label2: TLabel;
    UpDown1: TUpDown;
    Panel3: TPanel;
    cxGrid1Level2: TcxGridLevel;
    CDSCheCompartidosFECHA: TDateField;
    cxGrid1DBTableView1ID: TcxGridDBColumn;
    cxGrid1DBTableView1FECHA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1LETRA: TcxGridDBColumn;
    cxGrid1DBTableView1SUC: TcxGridDBColumn;
    cxGrid1DBTableView1NUMERO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1DISPONIBLE: TcxGridDBColumn;
    CDSMovCheID_CHEQUE_COMPARTIDO: TIntegerField;
    CDSMovCheID_VALOR: TIntegerField;
    CDSMovCheID_CAJA: TIntegerField;
    CDSMovCheID_MOV_CAJA: TIntegerField;
    CDSMovCheIMPORTE: TFloatField;
    CDSMovCheID_CUENTA_CAJA: TIntegerField;
    CDSMovCheFECHA_CAJA: TSQLTimeStampField;
    CDSMovCheFECHA_OPERACION: TSQLTimeStampField;
    CDSMovCheTIPO_COMPROB: TStringField;
    CDSMovCheCLASE_COMPROB: TStringField;
    CDSMovCheHABER: TFloatField;
    CDSMovCheDEBE: TFloatField;
    CDSMovCheCODIGO: TStringField;
    CDSMovCheNROCPBTE: TStringField;
    CDSMovCheNOMBRE: TStringField;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2ID_CHEQUE_COMPARTIDO: TcxGridDBColumn;
    cxGrid1DBTableView2ID_VALOR: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView2ID_MOV_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView2IMPORTE: TcxGridDBColumn;
    cxGrid1DBTableView2ID_CUENTA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA_CAJA: TcxGridDBColumn;
    cxGrid1DBTableView2FECHA_OPERACION: TcxGridDBColumn;
    cxGrid1DBTableView2TIPO_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView2CLASE_COMPROB: TcxGridDBColumn;
    cxGrid1DBTableView2CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView2NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView2NOMBRE: TcxGridDBColumn;
    CDSMovCheID_COMPROBANTE: TIntegerField;
    spCorrigeSaldo: TFDStoredProc;
    VerificaSaldo: TAction;
    PopupMenu1: TPopupMenu;
    VerificaSaldo1: TMenuItem;
    VerificaAll: TAction;
    N1: TMenuItem;
    VerificaTodos1: TMenuItem;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView2DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure VerificaSaldoExecute(Sender: TObject);
    procedure VerificaAllExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormControlCheCompartidos: TFormControlCheCompartidos;

implementation

{$R *.dfm}
uses UDMain_FD, UCheCompartidos, URecibo_2, UIngresoCaja;

procedure TFormControlCheCompartidos.BuscarExecute(Sender: TObject);
var QMaxMin:TFDQuery;
Id_Min,Id_Max:Integer;
begin
  inherited;
  QMaxMin            := TFDQuery.Create(nil);
  QMaxMin.Connection := DMMain_FD.fdcGestion;

  CDSCheCompartidos.CloSE;
  CDSCheCompartidos.Params.ParamByName('DESDE').AsDate:=desde.Date;
  CDSCheCompartidos.Params.ParamByName('hasta').AsDate:=hasta.Date;
  CDSCheCompartidos.Open;

  QMaxMin.Close;
  QMaxMin.SQL.Text:='select Min(c.id) from cheque_compartido c  where c.fecha between :desde and :hasta';
  QMaxMin.ParamByName('DESDE').AsDate:=desde.Date;
  QMaxMin.ParamByName('hasta').AsDate:=hasta.Date;
  QMaxMin.Open;
  Id_Min:=QMaxMin.Fields[0].Value;

  QMaxMin.Close;
  QMaxMin.SQL.Text:='select Max(c.id) from cheque_compartido c  where c.fecha between :desde and :hasta';
  QMaxMin.ParamByName('DESDE').AsDate:=desde.Date;
  QMaxMin.ParamByName('hasta').AsDate:=hasta.Date;
  QMaxMin.Open;
  Id_Max:=QMaxMin.Fields[0].Value;

  CDSMovChe.Close;
  CDSMovChe.Params.ParamByName('id_desde').Value:=Id_Min;
  CDSMovChe.Params.ParamByName('id_hasta').Value:=Id_Max;
  CDSMovChe.Open;
  QMaxMin.Close;

  FreeAndNil(QMaxMin);

end;

procedure TFormControlCheCompartidos.cxGrid1DBTableView1DblClick(
  Sender: TObject);
begin
  inherited;
  IF (CDSCheCompartidosID.AsString<>'') Then
    begin
      IF NOT (Assigned(FormCheCompartidos)) THEN
        FormCheCompartidos:= TFormCheCompartidos.Create(Application);
      FormCheCompartidos.DatoNew   := CDSCheCompartidosID.AsString;
      FormCheCompartidos.TipoCpbte := 'CO';
      FormCheCompartidos.Recuperar.Execute;
      FormCheCompartidos.Show;
    end
  else
end;

procedure TFormControlCheCompartidos.cxGrid1DBTableView2DblClick(
  Sender: TObject);
begin
  inherited;
  IF (CDSMovCheID_COMPROBANTE.AsString<>'') and (CDSMovCheTIPO_COMPROB.AsString='RC')Then
    begin
      IF NOT (Assigned(FormRecibo_2)) THEN
        FormRecibo_2:= TFormRecibo_2.Create(Application);
      FormRecibo_2.DatoNew   := CDSMovCheID_COMPROBANTE.AsString;
      FormRecibo_2.TipoCpbte := 'RC';
      FormRecibo_2.Recuperar.Execute;
      FormRecibo_2.Show;
    end
  else
    IF (CDSMovCheID_COMPROBANTE.AsString<>'') and (CDSMovCheTIPO_COMPROB.AsString='IC')Then
      begin
        IF NOT (Assigned(FormIngresoCaja)) THEN
          FormIngresoCaja:= TFormIngresoCaja.Create(Application);
        FormIngresoCaja.DatoNew   := CDSMovCheID_COMPROBANTE.AsString;
        FormIngresoCaja.TipoCpbte := CDSMovCheTIPO_COMPROB.AsString;
        FormIngresoCaja.Recuperar.Execute;
        FormIngresoCaja.Show;
      end

end;

procedure TFormControlCheCompartidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormControlCheCompartidos.FormCreate(Sender: TObject);
VAR d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1 * 30));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;

end;

procedure TFormControlCheCompartidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormControlCheCompartidos:=nil;
end;

procedure TFormControlCheCompartidos.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormControlCheCompartidos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,(1))
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,(-1));
  Buscar.Execute;
end;

procedure TFormControlCheCompartidos.VerificaAllExecute(Sender: TObject);
begin
  inherited;
 spCorrigeSaldo.Close;
  spCorrigeSaldo.Params.ParamByName('id_cpte').Value:=-1;
  spCorrigeSaldo.ExecProc;
  spCorrigeSaldo.Close;
end;

procedure TFormControlCheCompartidos.VerificaSaldoExecute(Sender: TObject);
begin
  inherited;
  spCorrigeSaldo.Close;
  spCorrigeSaldo.Params.ParamByName('id_cpte').Value:=CDSCheCompartidosID.Value;
  spCorrigeSaldo.ExecProc;
  spCorrigeSaldo.Close;
end;

end.
