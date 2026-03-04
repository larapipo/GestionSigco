unit UPresupuestosACobrar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls, Vcl.Menus;

type
  TFormPrespuestoAlCobro = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    QPresupuesto: TFDQuery;
    dbgPresupuesto: TDBGrid;
    btCerrar: TBitBtn;
    QPresupuestoID_PR: TIntegerField;
    QPresupuestoTIPOCPBTE: TStringField;
    QPresupuestoCLASECPBTE: TStringField;
    QPresupuestoNROCPBTE: TStringField;
    QPresupuestoCODIGO: TStringField;
    QPresupuestoNOMBRE: TStringField;
    QPresupuestoRAZONSOCIAL: TStringField;
    QPresupuestoFECHAVTA: TSQLTimeStampField;
    QPresupuestoTOTAL: TFloatField;
    DSPresupuestos: TDataSource;
    Label1: TLabel;
    PopupMenu1: TPopupMenu;
    MarcarNoFacturar1: TMenuItem;
    QPresupuestoSUB_NRO: TStringField;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btCerrarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgPresupuestoDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure MarcarNoFacturar1Click(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;
  end;

var
  FormPrespuestoAlCobro: TFormPrespuestoAlCobro;

implementation

{$R *.dfm}
uses
  UDMain_FD, UPresupuesto_2;

procedure TFormPrespuestoAlCobro.btCerrarClick(Sender: TObject);
begin
  Close;
end;

procedure TFormPrespuestoAlCobro.dbgPresupuestoDblClick(Sender: TObject);
begin
  if Not(Assigned(FormPresupuesto_2)) then
    FormPresupuesto_2:=TFormPresupuesto_2.Create(Application);
  FormPresupuesto_2.datoNew:=QPresupuestoID_PR.AsString;
  FormPresupuesto_2.Recuperar.execute;
  FormPresupuesto_2.Show;
end;

procedure TFormPrespuestoAlCobro.FormActivate(Sender: TObject);
begin
  QPresupuesto.Close;
  QPresupuesto.Open;
end;

procedure TFormPrespuestoAlCobro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=TCloseAction.caFree;
end;

procedure TFormPrespuestoAlCobro.FormDestroy(Sender: TObject);
begin
  FormPrespuestoAlCobro:=nil;
end;

procedure TFormPrespuestoAlCobro.FormResize(Sender: TObject);
begin
  if FormPrespuestoAlCobro<>nil then
    if FormPrespuestoAlCobro.Width<>857 then
      FormPrespuestoAlCobro.Width:=857;
end;

procedure TFormPrespuestoAlCobro.FormShow(Sender: TObject);
begin
 //  QPresupuesto.Close;
 //  QPresupuesto.Open;
end;

procedure TFormPrespuestoAlCobro.MarcarNoFacturar1Click(Sender: TObject);
var q:TFdQuery;
begin
  q:=TFDQuery.Create(nil);
  q.Connection:=DMMain_FD.fdcGestion;
  q.SQL.text:='Update PresCab p set p.a_cobrar=''N'' where p.id_pr='+QPresupuestoID_PR.AsString;
  q.ExecSQL;
  q.Close;
  FreeAndNil(q);
  QPresupuesto.Close;
  QPresupuesto.Open;
end;

end.
