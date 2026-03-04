unit UStockTipoAdicional;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons,
  Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls,
  Datasnap.Provider, Datasnap.DBClient, System.ImageList;

type
  TFormStockTipoAdicional = class(TFormABMBase)
    QTiposStock: TFDQuery;
    QTiposStockID: TIntegerField;
    QTiposStockTIPO: TStringField;
    QTiposStockDESCRIPCION: TStringField;
    CDSTipoStock: TClientDataSet;
    DSPTipoStock: TDataSetProvider;
    CDSTipoStockID: TIntegerField;
    CDSTipoStockTIPO: TStringField;
    CDSTipoStockDESCRIPCION: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbeId: TDBEdit;
    dbeTipo: TDBEdit;
    dbeDetalle: TDBEdit;
    QBuscador: TFDQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure CDSTipoStockNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStockTipoAdicional: TFormStockTipoAdicional;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormStockTipoAdicional.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeTipo.SetFocus;
end;

procedure TFormStockTipoAdicional.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscador.Close;
  QBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  QBuscador.Close;

end;

procedure TFormStockTipoAdicional.CDSTipoStockNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSTipoStockID.Value := QUltimoCodigo2.Fields[0].Value+1
  else
    CDSTipoStockID.Value := 1;
  QUltimoCodigo2.Close;


end;

procedure TFormStockTipoAdicional.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSTipoStockID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormStockTipoAdicional.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormStockTipoAdicional.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde :=2;
  AddClientDataSet(CDSTipoStock,DSPTipoStock);
  CDSTipoStock.Open;
  Campo  := 'ID';
  Tabla  := 'TIPO_ADICIONAL_STOCK';
end;

procedure TFormStockTipoAdicional.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStockTipoAdicional:=nil;
end;

procedure TFormStockTipoAdicional.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTipoStock.Close;
  CDSTipoStock.Params.ParamByName('ID').Value:=StrToInt(DatoNew);
  CDSTipoStock.Open;
end;

end.
