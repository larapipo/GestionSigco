unit UPedidosCumplidos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, JvComponentBase,
  ImgList,   ActnList,
  ComCtrls,JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage,
  System.Actions, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormPedidosCumplidos = class(TFormABMBase)
    JvDBGrid1: TJvDBGrid;
    DSPedidos: TDataSource;
    CDSPedidos: TClientDataSet;
    DSPPedidos: TDataSetProvider;
    CDSPedidosID: TIntegerField;
    CDSPedidosTIPOCPBTE: TStringField;
    CDSPedidosCLASECPBTE: TStringField;
    CDSPedidosNROCPBTE: TStringField;
    CDSPedidosCODIGO: TStringField;
    CDSPedidosLETRANP: TStringField;
    CDSPedidosSUCNP: TStringField;
    CDSPedidosNUMERONP: TStringField;
    CDSPedidosNOMBRE: TStringField;
    CDSPedidosRAZONSOCIAL: TStringField;
    CDSPedidosDIRECCION: TStringField;
    CDSPedidosCPOSTAL: TStringField;
    CDSPedidosLOCALIDAD: TStringField;
    CDSPedidosTIPOIVA: TIntegerField;
    CDSPedidosCUIT: TStringField;
    CDSPedidosLISTAPRECIO: TIntegerField;
    CDSPedidosFECHAPEDIDO: TSQLTimeStampField;
    CDSPedidosFECHAVTO: TSQLTimeStampField;
    CDSPedidosCONDICIONVTA: TIntegerField;
    CDSPedidosIMPRESO: TStringField;
    CDSPedidosOBSERVACION1: TStringField;
    CDSPedidosOBSERVACION2: TStringField;
    CDSPedidosSUCURSAL: TIntegerField;
    CDSPedidosZONA: TIntegerField;
    CDSPedidosLDR: TIntegerField;
    CDSPedidosDEPOSITO: TIntegerField;
    CDSPedidosCALCULA_SOBRETASA: TStringField;
    CDSPedidosDESGLOZAIVA: TStringField;
    CDSPedidosVENDEDOR: TStringField;
    CDSPedidosUSUARIO: TStringField;
    CDSPedidosRENGLONES: TSmallintField;
    CDSPedidosORIGEN_ID_NOTA_PEDIDO: TIntegerField;
    CDSPedidosORIGEN_TIPOCPBTE: TStringField;
    CDSPedidosORIGEN_NROCPBTE: TStringField;
    CDSPedidosCOPIA: TSmallintField;
    CDSPedidosENTREGA_ID_CPBTE: TIntegerField;
    CDSPedidosENTREGA_TIPOCPBTE: TStringField;
    CDSPedidosENTREGA_NROCPBTE: TStringField;
    CDSPedidosESTADO: TStringField;
    CDSPedidosPRESUPUESTO_ID: TIntegerField;
    CDSPedidosPRESUPUESTO_NROCPBTE: TStringField;
    QPedido: TFDQuery;
    CDSPedidosNETOGRAV1: TFloatField;
    CDSPedidosNETOGRAV2: TFloatField;
    CDSPedidosDSTO: TFloatField;
    CDSPedidosDSTOIMPORTE: TFloatField;
    CDSPedidosNETOEXEN1: TFloatField;
    CDSPedidosNETOEXEN2: TFloatField;
    CDSPedidosTOTAL: TFloatField;
    CDSPedidosCOMISIONVENDEDOR: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BuscarExecute(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPedidosCumplidos: TFormPedidosCumplidos;

implementation

uses UNotaPedidoCliente,UDMain_FD;

{$R *.dfm}

procedure TFormPedidosCumplidos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPedidos.Close;
  CDSPedidos.Open;
end;

procedure TFormPedidosCumplidos.FormActivate(Sender: TObject);
begin
  inherited;
  CDSPedidos.Close;
  CDSPedidos.Open;
end;

procedure TFormPedidosCumplidos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPedidosCumplidos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSPedidos.Close;
  CDSPedidos.Open;
end;

procedure TFormPedidosCumplidos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPedidosCumplidos:=nil;
end;

procedure TFormPedidosCumplidos.FormResize(Sender: TObject);
begin
  inherited;
  if FormPedidosCumplidos<>nil then
    if FormPedidosCumplidos.Width<>1061 then
      FormPedidosCumplidos.Width:=1061;
end;

procedure TFormPedidosCumplidos.JvDBGrid1DblClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormNotaPedidoCliente)) then
    FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(Application);
  FormNotaPedidoCliente.DatoNew:=CDSPedidosID.AsString;
  FormNotaPedidoCliente.TipoCpbte:='PC';
  FormNotaPedidoCliente.Recuperar.Execute;
end;

end.
