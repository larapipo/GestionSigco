unit UBuscadorAjustesLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Vcl.StdCtrls, Vcl.Buttons, JvExControls, JvGradient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorAjustesLotes = class(TForm)
    DSPAjustes: TDataSetProvider;
    CDSAjustes: TClientDataSet;
    CDSAjustesID: TIntegerField;
    CDSAjustesID_LOTE: TIntegerField;
    CDSAjustesCODIGO: TStringField;
    CDSAjustesLOTE: TStringField;
    CDSAjustesDESPACHO: TStringField;
    CDSAjustesFECHA: TSQLTimeStampField;
    CDSAjustesFECHAVTO: TSQLTimeStampField;
    CDSAjustesDEPOSITO: TIntegerField;
    CDSAjustesTIPO_COMPROB: TStringField;
    CDSAjustesMUESTRASTOCK: TStringField;
    CDSAjustesMUESTRADEPOSITO: TStringField;
    pnPrincipal: TPanel;
    pnPie: TPanel;
    dbgAjustes: TDBGrid;
    DSAjustes: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    QAjustes: TFDQuery;
    CDSAjustesENTRA: TFloatField;
    CDSAjustesSALE: TFloatField;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FId:Integer;    { Private declarations }
  public
    { Public declarations }
  published
    property Id : integer read fId Write fid;
  end;

var
  FormBuscadorAjustesLotes: TFormBuscadorAjustesLotes;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormBuscadorAjustesLotes.BitBtn1Click(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorAjustesLotes.BitBtn2Click(Sender: TObject);
begin
  FId:=CDSAjustesID.AsInteger;
end;

procedure TFormBuscadorAjustesLotes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorAjustesLotes.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorAjustesLotes.FormDestroy(Sender: TObject);
begin
  FormBuscadorAjustesLotes:=nil;
end;

end.
