unit UClonarCpbtes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, JvExControls, JvDBLookup, DB, Provider, DBClient,
  FMTBcd, SqlExpr, Buttons, DBXCommon, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormClonarCpbtes = class(TForm)
    Panel1: TPanel;
    CDSSucOrigen: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucDestino: TClientDataSet;
    CDSSucOrigenCODIGO: TIntegerField;
    CDSSucOrigenDETALLE: TStringField;
    CDSSucDestinoCODIGO: TIntegerField;
    CDSSucDestinoDETALLE: TStringField;
    DSSucDestino: TDataSource;
    DSSucOrigen: TDataSource;
    dbcOrigen: TJvDBLookupCombo;
    dbcDestino: TJvDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    spClonar: TFDStoredProc;
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FSucursalDestino:Integer;
  public
    { Public declarations }
  published
    property SucursalDestino:integer read FSucursalDestino write FSucursalDestino;
  end;

var
  FormClonarCpbtes: TFormClonarCpbtes;

implementation

{$R *.dfm}
uses DMBuscadoresForm,UDMain_FD;

procedure TFormClonarCpbtes.BitBtn1Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spClonar.Close;
    spClonar.Params.ParamByName('sucursal_orig').Value:=dbcOrigen.KeyValue;
    spClonar.Params.ParamByName('sucursal_dest').Value:=dbcDestino.KeyValue;
    spClonar.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    spClonar.Close;
    Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se realizo la Operación....');
    spClonar.Close;
  end;

end;

procedure TFormClonarCpbtes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormClonarCpbtes.FormCreate(Sender: TObject);
begin
  CDSSucOrigen.Open;
  CDSSucDestino.Open;
  AutoSize:=True;
  dbcDestino.KeyValue:=FSucursalDestino;
 // dbcDestino.Enabled :=False;
end;

procedure TFormClonarCpbtes.FormDestroy(Sender: TObject);
begin
  FormClonarCpbtes:=nil;
end;

procedure TFormClonarCpbtes.FormShow(Sender: TObject);
begin
  dbcDestino.KeyValue:=FSucursalDestino;
  dbcDestino.Enabled :=False;
end;

end.
