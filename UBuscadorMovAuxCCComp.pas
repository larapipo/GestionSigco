unit UBuscadorMovAuxCCComp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, JvExControls, JvGradient, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr;

type
  TFormBuscadorMovAuxCCComp = class(TForm)
    pnBase: TPanel;
    pnPie: TPanel;
    pnCab: TPanel;
    dbgMov: TDBGrid;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    QMov: TSQLQuery;
    DSPMov: TDataSetProvider;
    CDSMov: TClientDataSet;
    CDSMovID: TIntegerField;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovCODIGO_PROV: TStringField;
    CDSMovID_TIPO: TIntegerField;
    CDSMovDEBE: TFMTBCDField;
    CDSMovHABER: TFMTBCDField;
    CDSMovID_OP: TIntegerField;
    CDSMovMUESTRATIPO: TStringField;
    CDSMovMUESTRAPROVEEDOR: TStringField;
    DSMov: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
  private
    FId:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Id:Integer read FId write FId;

  end;

var
  FormBuscadorMovAuxCCComp: TFormBuscadorMovAuxCCComp;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormBuscadorMovAuxCCComp.btCancelarClick(Sender: TObject);
begin
  FId:=-1;
end;

procedure TFormBuscadorMovAuxCCComp.btOkClick(Sender: TObject);
begin
  FId:=CDSMovID.Value;
end;

procedure TFormBuscadorMovAuxCCComp.dbgMovDblClick(Sender: TObject);
begin
  btOk.Click;
end;

procedure TFormBuscadorMovAuxCCComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorMovAuxCCComp.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormBuscadorMovAuxCCComp.FormDestroy(Sender: TObject);
begin
  FormBuscadorMovAuxCCComp:=nil;
end;

procedure TFormBuscadorMovAuxCCComp.FormShow(Sender: TObject);
begin
  CDSMov.Close;
  CDSMov.Open;
end;

end.
