unit UControlRtosVsPedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, SqlExpr, ExtCtrls, Provider, DBClient, Grids, DBGrids,
  JvExDBGrids, JvDBGrid, StdCtrls, Buttons, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormControlRtosVsPedido = class(TForm)
    Panel1: TPanel;
    CDSRtos: TClientDataSet;
    DSPRtos: TDataSetProvider;
    DSRtos: TDataSource;
    JvDBGrid1: TJvDBGrid;
    CDSRtosID_RTO: TIntegerField;
    CDSRtosNROCPBTE: TStringField;
    CDSRtosFECHAVTA: TSQLTimeStampField;
    CDSRtosTIPOCPBTE: TStringField;
    CDSRtosCLASECPBTE: TStringField;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    QRtos: TFDQuery;
    QAsociaNP: TFDQuery;
    QAsociarRto: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    FCodigo:String;
    FNro_NP:String;
    FId_NP :integer;
    { Private declarations }

  public
    { Public declarations }
  published
    property codigo:string  read FCodigo write FCodigo;
    property Nro_NP:string  read FNro_NP write FNro_NP;

    property Ip_NP:Integer read FId_NP write FId_NP;
  end;

var
  FormControlRtosVsPedido: TFormControlRtosVsPedido;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormControlRtosVsPedido.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    QAsociaNP.CLose;
    QAsociaNP.ParamByName('id_rto').Value       := CDSRtosID_RTO.Value;
    QAsociaNP.ParamByName('nrocpbte').Value     := CDSRtosNROCPBTE.Value;
    QAsociaNP.ParamByName('tipocpbte').Value    := CDSRtosTIPOCPBTE.Value;
    QAsociaNP.ParamByName('notapedido_id').Value:= FId_NP;
    QAsociaNP.ExecSQL;
    QAsociaNP.Close;

    QAsociarRto.Close;
    QAsociarRto.ParamByName('id_notaPedido').Value      := FId_NP;
    QAsociarRto.ParamByName('nrocpbte_notaPedido').Value:= FNro_NP;
    QAsociarRto.ParamByName('id_rto').Value             := CDSRtosID_RTO.Value;
    QAsociarRto.ExecSQL;
    QAsociarRto.Close;
    DMMain_FD.fdcGestion.Commit;
  Except
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormControlRtosVsPedido.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
Action:=caFree;
end;

procedure TFormControlRtosVsPedido.FormCreate(Sender: TObject);
begin
  AutoSize:=True;

end;

procedure TFormControlRtosVsPedido.FormDestroy(Sender: TObject);
begin
  FormControlRtosVsPedido:=nil;
end;

procedure TFormControlRtosVsPedido.FormShow(Sender: TObject);
begin
  CDSRtos.Close;
  CDSRtos.Params.ParamByName('codigo').Value:=FCodigo;
  CDSRtos.Open;
end;

end.
