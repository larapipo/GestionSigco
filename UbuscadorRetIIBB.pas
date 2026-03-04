unit UBuscadorRetIIBB;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   ActnList, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, FMTBcd,
  SqlExpr, Provider, DBClient, System.Actions;

type
  TFormBuscadorRetIIBB = class(TForm)
    Panel1: TPanel;
    dbgRet: TDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    ActionList1: TActionList;
    Aceptar: TAction;
    Cancelar: TAction;
    DSRet: TDataSource;
    CDSRet: TClientDataSet;
    DSPRet: TDataSetProvider;
    QRet: TSQLQuery;
    CDSRetFECHA: TSQLTimeStampField;
    CDSRetID: TIntegerField;
    CDSRetCODIGO: TStringField;
    CDSRetNOMBRE: TStringField;
    CDSRetDIRECCION: TStringField;
    CDSRetID_CPBTE_ORIGEN: TIntegerField;
    CDSRetTIPOCPBTE_ORIGEN: TStringField;
    CDSRetCLASECPBTE_ORIGEN: TStringField;
    CDSRetNROCPBTE_ORIGEN: TStringField;
    CDSRetNROCPBTE: TStringField;
    CDSRetTOTAL: TFMTBCDField;
    CDSRetNETO_GRAVADO: TFMTBCDField;
    CDSRetTASA_RETENCION: TFMTBCDField;
    procedure AceptarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgRetDblClick(Sender: TObject);
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
  FormBuscadorRetIIBB: TFormBuscadorRetIIBB;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormBuscadorRetIIBB.AceptarExecute(Sender: TObject);
begin
 FNro_id:=CDSRetID.Value;
  Close;
end;

procedure TFormBuscadorRetIIBB.CancelarExecute(Sender: TObject);
begin
  FNro_id:=-1;
  Close;
end;

procedure TFormBuscadorRetIIBB.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;

end;

procedure TFormBuscadorRetIIBB.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorRetIIBB.FormDestroy(Sender: TObject);
begin
  FormBuscadorRetIIBB:=nil;
end;

procedure TFormBuscadorRetIIBB.FormShow(Sender: TObject);
begin
  CDSRet.Close;
  CDSRet.Params.ParamByName('Codigo').Value:=Codigo;
  CDSRet.Open;
  FNro_id:=-1;
end;

procedure TFormBuscadorRetIIBB.dbgRetDblClick(Sender: TObject);
begin
Aceptar.Execute;
end;

end.
