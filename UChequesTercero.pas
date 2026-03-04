unit UChequesTercero;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, ExtCtrls, Db,
    Buttons, FMTBcd, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, JvExMask, JvToolEdit, JvDBControls;

type
  TFormCheTercero = class(TForm)
    Panel2: TPanel;
    Image1: TImage;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DBText1: TDBText;
    Label21: TLabel;
    DSChe3: TDataSource;
    btOk: TBitBtn;
    qChe3: TFDQuery;
    qChe3ID_BANCO: TIntegerField;
    qChe3FECHA_COBRO: TSQLTimeStampField;
    qChe3FECHA_EMISION: TSQLTimeStampField;
    qChe3FECHA_ENTRADA: TSQLTimeStampField;
    qChe3FECHA_SALIDA: TSQLTimeStampField;
    qChe3FIRMANTE: TStringField;
    qChe3UNIDADES: TFloatField;
    qChe3IMPORTE: TFloatField;
    qChe3NUMERO: TIntegerField;
    qChe3DESTINO: TStringField;
    qChe3ORIGEN: TStringField;
    qChe3MUESTRABCO: TStringField;
    DBDateTimePicker1: TJvDBDateEdit;
    DBDateTimePicker2: TJvDBDateEdit;
    DBDateTimePicker3: TJvDBDateEdit;
    DBDateTimePicker4: TJvDBDateEdit;
    DBEdit5: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FIdChe: Integer;
  public
    { Public declarations }
   published
    PROPERTY IdChe: Integer read FIdChe write FIdChe;

  end;

var
  FormCheTercero: TFormCheTercero;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormCheTercero.FormCreate(Sender: TObject);
begin
   AutoSize:=True;
end;

procedure TFormCheTercero.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormCheTercero.FormDestroy(Sender: TObject);
begin
  FormCheTercero:=Nil;
end;

procedure TFormCheTercero.FormShow(Sender: TObject);
begin
  qChe3.Close;
  qChe3.ParamByName('id').Value:=IdChe;
  qChe3.Open;

end;

procedure TFormCheTercero.btOkClick(Sender: TObject);
begin
  Close;
end;

end.
