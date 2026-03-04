unit UBuscadorRetGanancia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   Grids, DBGrids, ExtCtrls, ActnList, StdCtrls, Buttons, FMTBcd,
  SqlExpr, Provider, DBClient, System.Actions;

type
  TFormBuscadoRetGanancia = class(TForm)
    DSRet: TDataSource;
    Panel1: TPanel;
    dbgRet: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    CDSRet: TClientDataSet;
    DSPRet: TDataSetProvider;
    QRet: TSQLQuery;
    CDSRetFECHA: TSQLTimeStampField;
    CDSRetNUMERO_RETENCION: TStringField;
    CDSRetCODIGO_PROVEEDOR: TStringField;
    CDSRetTASA: TFMTBCDField;
    CDSRetIMPUESTO_RETENIDO: TFMTBCDField;
    CDSRetESTADO: TStringField;
    CDSRetID: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRetDblClick(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
  private
    { Private declarations }
    FNro_id:Integer;
    FCodigo:String;
  public
    { Public declarations }
  published
    PROPERTY Nro_id:integer read FNro_Id write FNro_Id;
    property Codigo:string read FCodigo write FCodigo;
  end;

var
  FormBuscadoRetGanancia: TFormBuscadoRetGanancia;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormBuscadoRetGanancia.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadoRetGanancia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadoRetGanancia.FormDestroy(Sender: TObject);
begin
  FormBuscadoRetGanancia:=nil;
end;

procedure TFormBuscadoRetGanancia.FormShow(Sender: TObject);
begin
  CDSRet.Close;
  CDSRet.Params.ParamByName('Codigo').Value:=Codigo;
  CDSRet.Open;
  FNro_id:=-1;
end;

procedure TFormBuscadoRetGanancia.dbgRetDblClick(Sender: TObject);
begin
  Aceptar.Execute;
end;

procedure TFormBuscadoRetGanancia.AceptarExecute(Sender: TObject);
begin
  FNro_id:=CDSRetID.Value;
  Close;
end;

procedure TFormBuscadoRetGanancia.CancelarExecute(Sender: TObject);
begin
  FNro_id:=-1;
  Close;
end;

end.
