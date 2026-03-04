unit UAsignacionCtroCostoFVta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, StdCtrls, Buttons, DB, DBClient, Provider, SqlExpr,
  JvExControls, JvDBLookup, ExtCtrls, JvGradient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAsignaCtroCostoVta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    dbcCtroCosto: TJvDBLookupCombo;
    DSPBuscaCtro: TDataSetProvider;
    CDSBuscaCtro: TClientDataSet;
    StringField2: TStringField;
    IntegerField2: TIntegerField;
    DSCtroCosto: TDataSource;
    Label1: TLabel;
    btCerrar: TBitBtn;
    btAceptar: TBitBtn;
    JvGradient1: TJvGradient;
    QActualizaCtrCosto: TFDQuery;
    QBuscaCtro: TFDQuery;
    procedure dbcCtroCostoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure btAceptarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FCtroCosto:Integer;
  public
    { Public declarations }
  published
    property Id:Integer read fid write fid;
    property CtroCosto:Integer read FCtroCosto write FCtroCosto;
  end;

var
  FormAsignaCtroCostoVta: TFormAsignaCtroCostoVta;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormAsignaCtroCostoVta.btAceptarClick(Sender: TObject);
begin
  QActualizaCtrCosto.Close;
  QActualizaCtrCosto.ParamByName('id').Value       :=FId;
  QActualizaCtrCosto.ParamByName('CtroCosto').Value:=dbcCtroCosto.KeyValue;
  QActualizaCtrCosto.ExecSQL;
  //ShowMessage('Centro de Costo Actualizado.....');;
  QActualizaCtrCosto.Close;
//  ShowMessage('Centro de Costo Actualizado.....');
end;

procedure TFormAsignaCtroCostoVta.dbcCtroCostoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=VK_DELETE) or (Key=VK_BACK) then
    dbcCtroCosto.KeyValue:= -1;
end;

procedure TFormAsignaCtroCostoVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=cafree;
end;

procedure TFormAsignaCtroCostoVta.FormCreate(Sender: TObject);
begin
  CDSBuscaCtro.Close;
  CDSBuscaCtro.Open;
  AutoSize:=true;
end;

procedure TFormAsignaCtroCostoVta.FormDestroy(Sender: TObject);
begin
  FormAsignaCtroCostoVta:=nil;
end;

procedure TFormAsignaCtroCostoVta.FormShow(Sender: TObject);
begin
  dbcCtroCosto.KeyValue:=FCtroCosto;
end;

end.
