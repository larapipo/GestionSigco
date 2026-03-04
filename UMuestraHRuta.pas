unit UMuestraHRuta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.FMTBcd, Data.DB, Data.SqlExpr,
  Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask, JvExMask, JvToolEdit, JvDBControls,
  JvExControls, JvLabel, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.ExtCtrls;

type
  TFormMuestraHRuta = class(TForm)
    DSHojaRuta: TDataSource;
    RxLabel58: TJvLabel;
    dbeFechaVta: TJvDBDateEdit;
    dbeSucursal: TDBEdit;
    RxLabel59: TJvLabel;
    JvLabel1: TJvLabel;
    DBEdit1: TDBEdit;
    QHojaRuta: TFDQuery;
    QHojaRutaNROCPBTE: TStringField;
    QHojaRutaNOMBRE: TStringField;
    QHojaRutaID: TIntegerField;
    QHojaRutaFECHA: TSQLTimeStampField;
    QHojaRutaRESPONSABLE: TStringField;
    QHojaRutaNOMBRE_1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    FTipo:String;
    FID  :Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property Tipo:String read FTipo write FTipo;
    property Id :integer read fid write fid;
  end;

var
  FormMuestraHRuta: TFormMuestraHRuta;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMuestraHRuta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMuestraHRuta.FormDestroy(Sender: TObject);
begin
 FormMuestraHRuta:=nil;
end;

procedure TFormMuestraHRuta.FormShow(Sender: TObject);
begin
  QHojaRuta.Close;
  QHojaRuta.ParamByName('idcpbte').Value:=FID;
  QHojaRuta.ParamByName('Tipocpbte').Value:=FTipo;
  QHojaRuta.Open;
end;

end.
