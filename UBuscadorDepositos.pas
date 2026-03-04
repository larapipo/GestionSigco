unit UBuscadorDepositos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, JvExControls, JvGradient, ExtCtrls,
  DB,   FMTBcd, SqlExpr, Provider, DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement;

type
  TFormBuscadorDepositos = class(TForm)
    pnPrincipal: TPanel;
    Label1: TLabel;
    dbgDepositos: TDBGrid;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    DSDepositos: TDataSource;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QDepositoDETALLE: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    CDSDepositosDETALLE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure dbgDepositosDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    FDeposito:Integer;
    FActivos:Boolean;
  published
    constructor Create(AOwner: TComponent); override;
    property Deposito:Integer read FDeposito write FDeposito;
    property Activos:Boolean read FActivos write FActivos;
  end;

var
  FormBuscadorDepositos: TFormBuscadorDepositos;

implementation

{$R *.dfm}
USES UDMain_FD;

constructor TFormBuscadorDepositos.Create(AOwner: TComponent);
begin
  inherited; //Create(AOwner);
  FActivos := True; // valor por defecto: solo activos
end;



procedure TFormBuscadorDepositos.btCancelClick(Sender: TObject);
begin
  FDeposito:=-1;
end;

procedure TFormBuscadorDepositos.btOkClick(Sender: TObject);
begin
  FDeposito:=CDSDepositosID.Value;
end;

procedure TFormBuscadorDepositos.dbgDepositosDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorDepositos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorDepositos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorDepositos.FormDestroy(Sender: TObject);
begin
   FormBuscadorDepositos:=nil;
end;

procedure TFormBuscadorDepositos.FormShow(Sender: TObject);
begin
  BringToFront;
  CDSDepositos.Close;
  if FActivos Then
    CDSDepositos.Params.ParamByName('estado').Value:='S'
  else
    CDSDepositos.Params.ParamByName('estado').Value:='*';

  CDSDepositos.Open;

  CDSDepositos.Locate('id',FDeposito,[]);
end;

end.
