unit UUnidadesTR;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage, Data.DB,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue, Vcl.Mask,
  Vcl.DBCtrls, cxTextEdit, cxDBEdit, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormUnidadesTr = class(TFormABMBase)
    CDSUnidades: TClientDataSet;
    DSPUnidades: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    DSBuscador: TDataSource;
    CDSUnidadesID: TIntegerField;
    CDSUnidadesDESCRIPCION: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    edId: TDBEdit;
    edtDescripcio: TDBEdit;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDESCRIPCION: TStringField;
    QUnidades: TFDQuery;
    QBuscador: TFDQuery;
    QUnidadesID: TIntegerField;
    QUnidadesDESCRIPCION: TStringField;
    QUnidadesCAPACIDAD: TFloatField;
    QUnidadesDOMINIO: TStringField;
    CDSUnidadesCAPACIDAD: TFloatField;
    CDSUnidadesDOMINIO: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    CDSBuscadorDOMINIO: TStringField;
    procedure CDSUnidadesNewRecord(DataSet: TDataSet);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUnidadesTr: TFormUnidadesTr;

implementation

uses UDMain_FD;


{$R *.dfm}

procedure TFormUnidadesTr.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
      begin
         DatoNew := IntToStr(comBuscadorBase.Id);
         Recuperar.Execute;
      end;
  CDSBuscador.Close;
end;

procedure TFormUnidadesTr.CDSUnidadesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSUnidadesID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSUnidadesID.Value:=1;
  CDSUnidadesCAPACIDAD.Value:=0;
 QUltimoCodigo2.Close;

end;

procedure TFormUnidadesTr.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSUnidadesID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormUnidadesTr.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormUnidadesTr.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSUnidades,DSPUnidades);
  CDSUnidades.Open;
  Tabla:='UNIDADES_TR';
  Campo:='ID';
end;

procedure TFormUnidadesTr.FormDestroy(Sender: TObject);
begin
  inherited;
  FormUnidadesTr:=nil;
end;

procedure TFormUnidadesTr.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSUnidades.Close;
  CDSUnidades.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSUnidades.Open;
end;

end.
