unit UStockEnvases;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Provider, DB, DBClient, rxPlacemnt, ImgList, wwDialog,
  wwidlg, DBTables, ActnList, ComCtrls, RXCtrls, RXDBCtrl, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls;

type
  TFormStockEnvases = class(TFormABMBase)
    CDSEnvases: TClientDataSet;
    DSPEnvases: TDataSetProvider;
    QEnvases: TQuery;
    QEnvasesID: TIntegerField;
    CDSEnvasesID: TIntegerField;
    Label1: TLabel;
    dbeDetalle: TDBEdit;
    Label2: TLabel;
    dbeId: TDBEdit;
    QEnvasesDESCRIPCION: TStringField;
    CDSEnvasesDESCRIPCION: TStringField;
    QBuscadorEnvases: TQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSEnvasesNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormStockEnvases: TFormStockEnvases;

implementation

{$R *.dfm}

procedure TFormStockEnvases.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormStockEnvases.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscadorEnvases.Close;
  QBuscadorEnvases.Open;
  if wwBuscador.Execute then
    if wwBuscador.LookupTable.FieldByName('id').AsString<>'' then
      begin
        DatoNew:=wwBuscador.LookupTable.FieldByName('id').AsString;
        Recuperar.Execute;
      end;


end;

procedure TFormStockEnvases.CDSEnvasesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo.Close;
  QUltimoCodigo.Open;
  if QUltimoCodigo.Fields[0].AsString<>'' then
    CDSEnvasesID.Value:=QUltimoCodigo.Fields[0].AsInteger+1
  else
    CDSEnvasesID.Value:=1;
  QUltimoCodigo.Close;
end;

procedure TFormStockEnvases.ConfirmaExecute(Sender: TObject);
begin
   DatoNew:=CDSEnvasesID.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;

end;

procedure TFormStockEnvases.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSEnvases.Close;
  Action:=caFree;
end;

procedure TFormStockEnvases.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  AddClientDataSet(CDSEnvases,DSPEnvases);
  CDSEnvases.Open;
  Campo:='id';
  Tabla:='stock_envases';
end;

procedure TFormStockEnvases.FormDestroy(Sender: TObject);
begin
  inherited;
  FormStockEnvases:=nil;
end;

procedure TFormStockEnvases.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormStockEnvases.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSEnvases.Close;
  CDSEnvases.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSEnvases.Open;
end;

end.
