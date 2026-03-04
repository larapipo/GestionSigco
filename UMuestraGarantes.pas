unit UMuestraGarantes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, ExtCtrls, Provider, DB, DBClient, SqlExpr,
  StdCtrls, Buttons;

type
  TFormGarantes = class(TForm)
    QGarantes: TSQLQuery;
    CDSGarantes: TClientDataSet;
    DSGarantes: TDataSource;
    DSPGarantes: TDataSetProvider;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    QGarantesID: TIntegerField;
    QGarantesCODIGOCLIENTE: TStringField;
    QGarantesNOMBRE: TStringField;
    QGarantesDIRECCION: TStringField;
    QGarantesLOCALIDAD: TStringField;
    QGarantesCPOSTAL: TStringField;
    QGarantesTELEFONO1: TStringField;
    QGarantesTELEFONO2: TStringField;
    QGarantesCELULAR: TStringField;
    QGarantesEMAIL: TStringField;
    QGarantesPOR_DEFECTO: TStringField;
    CDSGarantesID: TIntegerField;
    CDSGarantesCODIGOCLIENTE: TStringField;
    CDSGarantesNOMBRE: TStringField;
    CDSGarantesDIRECCION: TStringField;
    CDSGarantesLOCALIDAD: TStringField;
    CDSGarantesCPOSTAL: TStringField;
    CDSGarantesTELEFONO1: TStringField;
    CDSGarantesTELEFONO2: TStringField;
    CDSGarantesCELULAR: TStringField;
    CDSGarantesEMAIL: TStringField;
    CDSGarantesPOR_DEFECTO: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    FCodigo:String;
    FId:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    Property codigo:String read fCodigo write fcodigo;
    property id:integer read fid write fid;

  end;

var
  FormGarantes: TFormGarantes;

implementation

Uses UDMain_FD;
{$R *.dfm}

procedure TFormGarantes.BitBtn1Click(Sender: TObject);
begin
  FId:=CDSGarantesID.Value;
end;

procedure TFormGarantes.BitBtn2Click(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormGarantes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormGarantes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormGarantes.FormDestroy(Sender: TObject);
begin
  FormGarantes:=nil;
end;

procedure TFormGarantes.FormShow(Sender: TObject);
begin
  CDSGarantes.Close;
  CDSGarantes.Params.ParamByName('codigo').Value:=FCodigo;
  CDSGarantes.Open;

end;

end.
