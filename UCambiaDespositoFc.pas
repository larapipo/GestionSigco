unit UCambiaDespositoFc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvGradient, StdCtrls, DB, JvDBLookup,
  Provider, DBClient, Buttons, FMTBcd, SqlExpr,DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioDeposito = class(TForm)
    pnBase: TPanel;
    pnDepositoActual: TPanel;
    edDetalle: TEdit;
    edId: TEdit;
    Label1: TLabel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    CDSDeposito: TClientDataSet;
    DSPDeposito: TDataSetProvider;
    dbcDeposito: TJvDBLookupCombo;
    Label2: TLabel;
    DSDeposito: TDataSource;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    QCambioCompra: TFDQuery;
    QRecepcion: TFDQuery;
    QCambio: TFDQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FCodigo:Integer;
    FDetalle:String;
    FTipoOperacion:string;
  public
    { Public declarations }
  published
    property Id:integer read FId write FId;
    property codigo:integer read FCodigo write FCodigo;
    property Detalle:String read FDetalle write FDetalle;
    property TipoOperacion:string read FTipoOperacion write FTipoOperacion;
  end;

var
  FormCambioDeposito: TFormCambioDeposito;

implementation

uses DMBuscadoresForm,UDMain_FD;
{$R *.dfm}

procedure TFormCambioDeposito.btOkClick(Sender: TObject);
begin
  if FTipoOperacion='C' then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QCambioCompra.Close;
        QCambioCompra.ParamByName('id').Value  := FId;
        QCambioCompra.ParamByName('depo').Value:= dbcDeposito.KeyValue;
        QCambioCompra.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se realizo la Transaccion...');
      end;
    end
  else
    if FTipoOperacion='R' then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        try
          QRecepcion.Close;
          QRecepcion.ParamByName('id').Value  := FId;
          QRecepcion.ParamByName('depo').Value:= dbcDeposito.KeyValue;
          QRecepcion.ExecSQL;
          DMMain_FD.fdcGestion.Commit;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se realizo la Transaccion...');
        end;
      end
    else

    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QCambio.Close;
        QCambio.ParamByName('id').Value  := FId;
        QCambio.ParamByName('depo').Value:= dbcDeposito.KeyValue;
        QCambio.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
      Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se realizo la Transaccion...');
      end;
    end;
  close;
end;

procedure TFormCambioDeposito.btCancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambioDeposito.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDeposito.Close;
  Action:=caFree;
end;

procedure TFormCambioDeposito.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSDeposito.Open;
end;

procedure TFormCambioDeposito.FormDestroy(Sender: TObject);
begin
  FormCambioDeposito:=nil;
end;

procedure TFormCambioDeposito.FormShow(Sender: TObject);
begin
  edId.Text      := IntToStr(FCodigo);
  edDetalle.Text := FDetalle;
end;

end.
