unit UListaLotes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.StdCtrls, Vcl.Buttons, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFormListaLotes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    DBGrid1: TDBGrid;
    QLotes: TFDQuery;
    DSLotes: TDataSource;
    BitBtn1: TBitBtn;
    QLotesID: TIntegerField;
    QLotesID_COMPROBANTE: TIntegerField;
    QLotesCODIGO: TStringField;
    QLotesID_DETALLE_CPBTE: TIntegerField;
    QLotesFECHA_ENTRADA: TSQLTimeStampField;
    QLotesFECHA_VTO: TSQLTimeStampField;
    QLotesLOTE: TStringField;
    QLotesDESPACHO: TStringField;
    QLotesCANTIDAD: TFloatField;
    QLotesTIPO_COMPROB: TStringField;
    QLotesDEPOSITO: TIntegerField;
    QLotesSALDO: TFloatField;
    QLotesNOMBREDEPOSITO: TStringField;
    Label1: TLabel;
    procedure FormResize(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String write FCodigo;
  end;

var
  FormListaLotes: TFormListaLotes;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormListaLotes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormListaLotes.FormDestroy(Sender: TObject);
begin
  FormListaLotes:=nil;
end;

procedure TFormListaLotes.FormResize(Sender: TObject);
begin
  if FormListaLotes<>nil then
    if FormListaLotes.Width<>761 then
      formListaLotes.Width:=761;


end;

procedure TFormListaLotes.FormShow(Sender: TObject);
begin
  QLotes.Close;
  QLotes.ParamByName('codigo').AsString:=FCodigo;
  QLotes.Open;
end;

end.
