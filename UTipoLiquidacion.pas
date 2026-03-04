unit UTipoLiquidacion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBasic,
  dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee,
  dxSkinDarkroom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
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
  dxSkinXmas2008Blue, cxMaskEdit, cxSpinEdit, cxDBEdit, cxTextEdit, Vcl.Mask,
  Vcl.DBCtrls;

type
  TFormTipoLiquidacionSueldos = class(TFormABMBase)
    QBuscador: TFDQuery;
    CDSTipoLiquidacion: TClientDataSet;
    DSPTipoLiquidacion: TDataSetProvider;
    QTipoLiquidacion: TFDQuery;
    QTipoLiquidacionID: TIntegerField;
    QTipoLiquidacionNOMBRE: TStringField;
    CDSTipoLiquidacionID: TIntegerField;
    CDSTipoLiquidacionNOMBRE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBSpinEdit1: TDBEdit;
    cxDBTextEdit1: TDBEdit;
    QBuscadorID: TIntegerField;
    QBuscadorNOMBRE: TStringField;
    procedure CDSTipoLiquidacionNewRecord(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTipoLiquidacionSueldos: TFormTipoLiquidacionSueldos;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormTipoLiquidacionSueldos.BuscarExecute(Sender: TObject);
begin
  inherited;
  ComBuscadorBase.Data.Close;
  ComBuscadorBase.Data.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormTipoLiquidacionSueldos.CDSTipoLiquidacionNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSTipoLiquidacionID.Value:=1
  else
    CDSTipoLiquidacionID.Value:= QUltimoCodigo2.Fields[0].Asinteger + 1;
  QUltimoCodigo2.Close;

end;

procedure TFormTipoLiquidacionSueldos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTipoLiquidacion.Close;
  Action:=caFree;
end;

procedure TFormTipoLiquidacionSueldos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  AddClientDataSet(CDSTipoLiquidacion,DSPTipoLiquidacion);
  CDSTipoLiquidacion.Open;
  Tabla:='personal_liquidacion_tipo';
  Campo:='Id';

end;

procedure TFormTipoLiquidacionSueldos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTipoLiquidacionSueldos:=nil;
end;

procedure TFormTipoLiquidacionSueldos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTipoLiquidacion.Close;
  CDSTipoLiquidacion.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSTipoLiquidacion.Open;
end;

end.
