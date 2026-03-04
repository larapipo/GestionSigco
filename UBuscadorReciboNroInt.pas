unit UBuscadorReciboNroInt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, FMTBcd, DB, StdCtrls, Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, SqlExpr, Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormBuscadorReciboNroInt = class(TForm)
    Panel1: TPanel;
    dbgResultado: TJvDBGrid;
    CDSRecibos: TClientDataSet;
    DSRecibos: TDataSource;
    DSPRecibos: TDataSetProvider;
    dbFind: TJvDBFindEdit;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosNRO_RECIBO_INTERMO: TIntegerField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosCODIGO: TStringField;
    CDSRecibosNOMBRE: TStringField;
    Label1: TLabel;
    btOk: TBitBtn;
    BitBtn2: TBitBtn;
    QRecibos: TFDQuery;
    CDSRecibosTOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btOkClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbFindKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgResultadoDblClick(Sender: TObject);
  private
    FId:Integer;
    { Private declarations }
  public
    { Public declarations }

  published
    property id :Integer read FId write FId;
  end;

var
  FormBuscadorReciboNroInt: TFormBuscadorReciboNroInt;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorReciboNroInt.btOkClick(Sender: TObject);
begin
  FId:=CDSRecibosID_RC.Value;
end;

procedure TFormBuscadorReciboNroInt.BitBtn2Click(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorReciboNroInt.dbFindKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_DOWN) and Not(dbgResultado.DataSource.DataSet.Eof) then
    dbgResultado.DataSource.DataSet.Next
  else
    if (key=VK_UP) and Not(dbgResultado.DataSource.DataSet.Bof) then
      dbgResultado.DataSource.DataSet.Prior



end;

procedure TFormBuscadorReciboNroInt.dbgResultadoDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorReciboNroInt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorReciboNroInt.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSRecibos.Close;
  CDSRecibos.Open;
end;

procedure TFormBuscadorReciboNroInt.FormDestroy(Sender: TObject);
begin
  FormBuscadorReciboNroInt:=nil;
end;

procedure TFormBuscadorReciboNroInt.FormShow(Sender: TObject);
begin
  dbFind.SetFocus;
end;

end.
