unit UTxCajaPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid, ExtCtrls,  
  FMTBcd, SqlExpr, Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormTxPendientes = class(TForm)
    pnl1: TPanel;
    DSTxPendientes: TDataSource;
    CDSTxPendientes: TClientDataSet;
    DSPTxPendientes: TDataSetProvider;
    CDSTxPendientesID: TIntegerField;
    CDSTxPendientesNROCPBTE: TStringField;
    CDSTxPendientesCAJA_ORIGEN: TIntegerField;
    CDSTxPendientesMUESTRAORIGEN: TStringField;
    CDSTxPendientesCAJA_DESTINO: TIntegerField;
    CDSTxPendientesMUESTRADESTINO: TStringField;
    QTxPendientes: TFDQuery;
    CDSTxPendientesIMPORTE: TFloatField;
    CDSTxPendientesFECHA: TSQLTimeStampField;
    dbgTx: TDBGrid;
    CDSTxPendientesNOMSUCURSAL: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgTxDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTxPendientes: TFormTxPendientes;

implementation

uses UTransferenciaEfectivo,UDMain_FD;

{$R *.dfm}

procedure TFormTxPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormTxPendientes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormTxPendientes.FormDestroy(Sender: TObject);
begin
  FormTxPendientes:=nil;
end;

procedure TFormTxPendientes.FormShow(Sender: TObject);
begin
  CDSTxPendientes.Close;
  CDSTxPendientes.Open;
end;

procedure TFormTxPendientes.dbgTxDblClick(Sender: TObject);
begin
  if not(Assigned(FormTransferenciaEfectivo)) then
    FormTransferenciaEfectivo:=TFormTransferenciaEfectivo.Create(Application);
  FormTransferenciaEfectivo.DatoNew   :=CDSTxPendientesID.AsString;
  FormTransferenciaEfectivo.TipoCpbte :='CX';
  FormTransferenciaEfectivo.Recuperar.Execute;
  FormTransferenciaEfectivo.Show;
  Close;

  
end;

end.
