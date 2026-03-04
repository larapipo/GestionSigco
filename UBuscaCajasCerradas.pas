unit UBuscaCajasCerradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, StdCtrls, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls,
  JvExControls, JvGradient, FMTBcd, SqlExpr, Provider, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscaCajasCerradas = class(TForm)
    pnPrincipal: TPanel;
    DSCajas: TDataSource;
    dbgCajas: TDBGrid;
    dbcCtas: TDBLookupComboBox;
    Label1: TLabel;
    DSCtaCaja: TDataSource;
    JvGradient1: TJvGradient;
    Panel: TPanel;
    pnBotones: TPanel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    JvGradient: TJvGradient;
    QCtaCaja: TFDQuery;
    QCajas: TFDQuery;
    QCtaCajaID_CUENTA: TIntegerField;
    QCtaCajaID_TIPO_CTA: TIntegerField;
    QCtaCajaNOMBRE: TStringField;
    QCtaCajaNRO_CUENTA: TStringField;
    QCtaCajaID_BANCO: TIntegerField;
    QCtaCajaCUIT: TStringField;
    QCtaCajaRAZONSOCIAL: TStringField;
    QCajasID_CAJA: TIntegerField;
    QCajasNUMEROCAJA: TIntegerField;
    QCajasFECHA_INCIO: TSQLTimeStampField;
    QCajasFECHA_CIERRE: TSQLTimeStampField;
    QCajasID_CUENTA_CAJA: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure dbcCtasClick(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure dbgCajasDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    idCaja:Integer;
    idCtaCaja:Integer;
  end;

var
  FormBuscaCajasCerradas: TFormBuscaCajasCerradas;

implementation


{$R *.DFM}
Uses UDMain_FD;


procedure TFormBuscaCajasCerradas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscaCajasCerradas.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QCajas.Close;
  QCtaCaja.Close;

  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      QCtaCaja.SQL.Text:='select ca.* from cuenta_caja ca '+
                              'where (ca.id_cuenta in (select u.caja from cajausuario u where u.usuario = :usuario)) ';
      QCtaCaja.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end
  else
    QCtaCaja.SQL.Text:='select * from cuenta_caja where id_tipo_cta=1';

  QCajas.Open;
  QCtaCaja.Open;
end;

procedure TFormBuscaCajasCerradas.dbcCtasClick(Sender: TObject);
begin
  QCajas.Close;
  QCajas.ParamByName('ctacaja').Value:=  dbcCtas.KeyValue;
  QCajas.Open;
end;

procedure TFormBuscaCajasCerradas.btOkClick(Sender: TObject);
begin
  idCaja    := QCajasID_CAJA.Value;
  idCtaCaja := QCtaCajaID_CUENTA.Value;
end;

procedure TFormBuscaCajasCerradas.FormDestroy(Sender: TObject);
begin
  FormBuscaCajasCerradas:=nil;
end;

procedure TFormBuscaCajasCerradas.dbgCajasDblClick(Sender: TObject);
begin
  idCaja    := QCajasID_CAJA.Value;
  idCtaCaja := QCtaCajaID_CUENTA.Value;
  btOk.Click;
end;

end.
