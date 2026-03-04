unit UCambioListaClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, ExtCtrls, JvExControls,
  JvDBLookup, StdCtrls, Buttons, DBXCommon, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioListaCliente = class(TForm)
    Panel1: TPanel;
    dbcLista: TJvDBLookupCombo;
    DSListas: TDataSource;
    Label1: TLabel;
    lbLista: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    lbMuestraLista: TLabel;
    QListas: TFDQuery;
    QListasID: TIntegerField;
    QListasNOMBRE: TStringField;
    QListasRECARGOBASE: TFloatField;
    QListasPORDEFECTO: TStringField;
    QListasF_PAGO: TIntegerField;
    QListasUSO_ADMINISTRADOR: TStringField;
    QListasCLONADA: TStringField;
    QListasID_LISTA_CLONADA: TIntegerField;
    QListasCOEFICIENTE: TFloatField;
    QListasEXCLUSIVO_EFECTIVO: TStringField;
    QModificaLista: TFDQuery;
    Label2: TLabel;
    QListasFECHA: TSQLTimeStampField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FIDListaOld:Integer;
    FListaOld:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property IDListaOld:Integer read FIDListaOld write FIDListaOld;
    property ListaOld  :String read FListaOld write FListaOld;
  end;

var FormCambioListaCliente : TFormCambioListaCliente;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormCambioListaCliente.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormCambioListaCliente.BitBtn2Click(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
  if MessageDlg('Está por hacer cambio de asigancion de lista', mtInformation, [mbYes, mbNo], 0) = mrYes Then
    begin
      try
        QModificaLista.Close;
        QModificaLista.ParamByName('NewLista').Value:=dbcLista.KeyValue;
        QModificaLista.ParamByName('OldLista').Value:=FIDListaOld;
        QModificaLista.ExecSQL;
        DMMain_FD.fdcGestion.Commit;
        QModificaLista.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Operación no finalizada...');
      end;
    end;
  Close;
end;

procedure TFormCambioListaCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QListas.Close;
  Action:=caFree;
end;

procedure TFormCambioListaCliente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QListas.Close;
  QListas.Open;
end;

procedure TFormCambioListaCliente.FormDestroy(Sender: TObject);
begin
  FormCambioListaCliente:=nil;
end;

procedure TFormCambioListaCliente.FormShow(Sender: TObject);
begin
  lbMuestraLista.Caption:=FListaOld;
end;

end.
