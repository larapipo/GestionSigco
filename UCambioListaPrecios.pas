unit UCambioListaPrecios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.StdCtrls, Vcl.Buttons,
  JvExControls, JvDBLookup, Vcl.ExtCtrls;

type
  TFormCambioListaPrecios = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    lbLista: TLabel;
    lbMuestraLista: TLabel;
    dbcLista: TJvDBLookupCombo;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
    QListasFECHA: TSQLTimeStampField;
    DSListas: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    FIDListaOld:Integer;
    FListaOld  :String;
    FIDListaNew:Integer;

    { Private declarations }
  public
    { Public declarations }
  published
    property IDListaOld:Integer read FIDListaOld write FIDListaOld;
    property ListaOld  :String read FListaOld write FListaOld;
    property IDListaNew:Integer read FIDListaNew write FIDListaNew;
  end;

var
  FormCambioListaPrecios: TFormCambioListaPrecios;

implementation

{$R *.dfm}

procedure TFormCambioListaPrecios.BitBtn2Click(Sender: TObject);
begin
  FIDListaNew:=dbcLista.KeyValue;
end;

procedure TFormCambioListaPrecios.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  QListas.Close;
  Action:=caFree;
end;

procedure TFormCambioListaPrecios.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  QListas.Close;
  QListas.Open;
end;

procedure TFormCambioListaPrecios.FormDestroy(Sender: TObject);
begin
  FormCambioListaPrecios:=nil;
end;

procedure TFormCambioListaPrecios.FormShow(Sender: TObject);
begin
  lbMuestraLista.Caption:=FListaOld;
end;

end.
