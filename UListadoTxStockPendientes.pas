unit UListadoTxStockPendientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls,Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids,   Variants, JvComponentBase, 
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, JvDBLookup, SqlExpr, Provider, DBClient, JvAppStorage,
  JvAppIniStorage, System.Actions, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormListadoTxStockPendientes = class(TFormABMBase)
    DSTxStock: TDataSource;
    DBGrid1: TDBGrid;
    DSDepositos: TDataSource;
    BuscarTx: TAction;
    Label1: TLabel;
    dbcDeposito: TJvDBLookupCombo;
    QTxStock: TFDQuery;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSTxStock: TClientDataSet;
    DSPTxStock: TDataSetProvider;
    CDSTxStockID_TRCAB: TIntegerField;
    CDSTxStockFECHA: TSQLTimeStampField;
    CDSTxStockDEPOSITO_ORIGEN: TIntegerField;
    CDSTxStockDEPOSITO_DESTINO: TIntegerField;
    CDSTxStockNOMBRE_DEPOSITO_ORIGEN: TStringField;
    CDSTxStockNOMBRE_DEPOSITO_DESTINO: TStringField;
    CDSTxStockNROCPBTE: TStringField;
    QDepositos: TFDQuery;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarTxExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoTxStockPendientes: TFormListadoTxStockPendientes;

implementation

uses UDMain_FD, UTransferencia;
{$R *.DFM}

procedure TFormListadoTxStockPendientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSTxStock.Close;
  if VarIsNull(dbcDeposito.KeyValue) Then
    CDSTxStock.Params.ParamByName('DepDestino').Value:=-1
  else
    CDSTxStock.Params.ParamByName('DepDestino').Value:=dbcDeposito.KeyValue;
  CDSTxStock.Open;
end;

procedure TFormListadoTxStockPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoTxStockPendientes.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSDepositos.Open;
  dbcDeposito.KeyValue:=DepositoPorDefecto;
  Buscar.Execute;
end;

procedure TFormListadoTxStockPendientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoTxStockPendientes:=Nil;
end;

procedure TFormListadoTxStockPendientes.BuscarTxExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormTransferencias)) Then
    FormTransferencias:=TFormTransferencias.Create(Application);
  FormTransferencias.DatoNew:=CDSTxStockID_TRCAB.AsString;
  FormTransferencias.Recuperar.Execute;
end;

procedure TFormListadoTxStockPendientes.FormActivate(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.