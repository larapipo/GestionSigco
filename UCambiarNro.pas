unit UCambiarNro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, FMTBcd, DB, SqlExpr,DBXCommon,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambiarNro = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    edLetra: TEdit;
    edSuc: TEdit;
    edNum: TEdit;
    btOk: TBitBtn;
    btcancelar: TBitBtn;
    QCambiarNroRet: TFDQuery;
    QCambiarNroOpago: TFDQuery;
    procedure btOkClick(Sender: TObject);
    procedure btcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure edSucExit(Sender: TObject);
    procedure edNumExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    FId:integer;
    FSuc:String;
    FNum:String;
    FLet:String;
    FClase   :string;
    FSucursal:Integer;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
    property Suc:String read FSuc write FSuc;
    property Num:String read FNum write FNum;
    property Let:String read FLet write FLet;
    property Sucursal:Integer read FSucursal write FSucursal;
    property Clase   :String read FClase write FClase;
  end;

var
  FormCambiarNro: TFormCambiarNro;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCambiarNro.btcancelarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormCambiarNro.btOkClick(Sender: TObject);
var Aux:String;
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);

  if Tag=0 then   // cambia nro de retencion
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        QCambiarNroRet.Close;
        QCambiarNroRet.ParamByName('ID').Value     :=FId;
        QCambiarNroRet.ParamByName('Suc').Value    :=edSuc.Text;
        QCambiarNroRet.ParamByName('Numero').Value :=edNum.Text;
        DMMain_FD.LogFileFD(0,2,'Cambio Nro Cpbte.Ret: Original:'+FLet+'-'+FSuc+'-'+FNum+' '+
                                'Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text,
                                'CAMBIORET');

        QCambiarNroRet.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
        QCambiarNroRet.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer el cambio...');
      end;
      QCambiarNroRet.Close;
    end
  else
    if Tag=1 then   // cambia nro de retencion
      begin
        AUx:=FLet+edSuc.Text+edNum.Text;
        if DMMain_FD.VerificaNroOP(edSuc.Text,edNum.Text,FClase,FLet,FSucursal) Then
          raise Exception.Create('Numero Ya Cargado ....');
        DMMain_FD.fdcGestion.StartTransaction;
        try
          QCambiarNroOPago.Close;
          QCambiarNroOPago.ParamByName('ID').Value     :=FId;
          QCambiarNroOPago.ParamByName('Suc').Value    :=edSuc.Text;
          QCambiarNroOPago.ParamByName('Nro').Value :=edNum.Text;
          DMMain_FD.LogFileFD(0,2,'Cambio Nro Cpbte.Orden Pago: Original:'+FLet+'-'+FSuc+'-'+FNum+' '+
                                  'Nuevo   :'+edLetra.Text+'-'+edSuc.Text+'-'+edNum.Text,
                                  'CAMBIOOP');

          QCambiarNroOPago.ExecSQL;
          DMMain_FD.fdcGestion.Commit;
          QCambiarNroOPago.Close;
        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('No se pudo hacer el cambio...');
        end;
      QCambiarNroOPago.Close;
    end;



end;

procedure TFormCambiarNro.edNumExit(Sender: TObject);
begin
  edNum.Text:=copy('00000000',1,8-length(trim(edNum.Text)))+trim(edNum.Text);
end;

procedure TFormCambiarNro.edSucExit(Sender: TObject);
begin
  edSuc.Text:=copy('00000000',1,4-length(trim(edSuc.Text)))+trim(edSuc.Text);
end;

procedure TFormCambiarNro.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormCambiarNro.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambiarNro.FormDestroy(Sender: TObject);
begin
  FormCambiarNro:=nil;
end;

procedure TFormCambiarNro.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key = #13) and
    (not (ActiveControl is Tbutton)) and
    (not (ActiveControl is TFrame))  then
  begin
    perform(wm_nextdlgctl, 0, 0);
    key := #0;
  end;
end;

procedure TFormCambiarNro.FormShow(Sender: TObject);
begin
  edLetra.Text:=FLet;
  edSuc.Text  :=FSuc;
  edNum.Text  :=FNum;
  edSuc.SetFocus;
  FormCambiarNro.BringToFront;
end;

end.
