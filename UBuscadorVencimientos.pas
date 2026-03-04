unit UBuscadorVencimientos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, StdCtrls, Buttons, ExtCtrls, JvExControls, JvGradient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorVencimientos = class(TForm)
    Panel1: TPanel;
    rgTipo: TRadioGroup;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    dbgComprobantes: TJvDBGrid;
    DSPBuscador: TDataSetProvider;
    CDSBUscador: TClientDataSet;
    CDSBUscadorID: TIntegerField;
    CDSBUscadorFECHA_INCIO: TSQLTimeStampField;
    CDSBUscadorASUNTO: TStringField;
    CDSBUscadorNROCPBTE: TStringField;
    CDSBUscadorFINALIZADO: TStringField;
    CDSBUscadorFECHA_CUMPLIDO: TSQLTimeStampField;
    CDSBUscadorCUOTA_NRO: TSmallintField;
    CDSBUscadorLOTE: TIntegerField;
    DSBuscador: TDataSource;
    QBuscador: TFDQuery;
    CDSBUscadorIMPORTE: TFloatField;
    Label1: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rgTipoClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgComprobantesDblClick(Sender: TObject);
  private
    { Private declarations }
    FId:integer;
  public
    { Public declarations }
  published
    property id:integer read FId;
  end;

var
  FormBuscadorVencimientos: TFormBuscadorVencimientos;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormBuscadorVencimientos.btCancelarClick(Sender: TObject);
begin
 FId:=-1;
end;

procedure TFormBuscadorVencimientos.btAceptarClick(Sender: TObject);
begin
  Fid:=CDSBUscadorID.Value;
end;

procedure TFormBuscadorVencimientos.dbgComprobantesDblClick(Sender: TObject);
begin
  btAceptar.Click;
end;

procedure TFormBuscadorVencimientos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorVencimientos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
 

end;

procedure TFormBuscadorVencimientos.FormDestroy(Sender: TObject);
begin
  FormBuscadorVencimientos:=nil;
end;

procedure TFormBuscadorVencimientos.FormShow(Sender: TObject);
begin
  rgTipo.OnClick(Sender);
end;

procedure TFormBuscadorVencimientos.rgTipoClick(Sender: TObject);
begin
  CDSBUscador.Close;
  case rgTipo.ItemIndex   of
    0:  CDSBUscador.Params.ParamByName('finalizado').Value:='*';
    1:  CDSBUscador.Params.ParamByName('finalizado').Value:='N';
    2:  CDSBUscador.Params.ParamByName('finalizado').Value:='S';
  end;
  CDSBUscador.Open;
end;

end.
