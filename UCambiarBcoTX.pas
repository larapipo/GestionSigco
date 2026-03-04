unit UCambiarBcoTX;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ExtCtrls, Datasnap.Provider,
  Datasnap.DBClient, Vcl.StdCtrls, AdvDBLookupComboBox, Vcl.Buttons, Vcl.DBCtrls;

type
  TFormCambiaBcoTx = class(TForm)
    pnBase: TPanel;
    QCtaBco: TFDQuery;
    DSCtaBco: TDataSource;
    CDSCtaBco: TClientDataSet;
    DSPCtaBco: TDataSetProvider;
    edOrigen: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    btOk: TBitBtn;
    btCancel: TBitBtn;
    spCambiarCta: TFDStoredProc;
    dbcCuenta: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
  private
    { Private declarations }
    FIdMov:Integer;
    FIdCtaBco:Integer;
    FNombreCta:String;
    FOrigen:String;
  public
    { Public declarations }
  published
    property IdMov:Integer read FIdMov write FIdMov;
    property IdCtaBco:Integer read FIdCtaBco write FIdCtaBco;
    property NombreCta:String read FNombreCta write FNombreCta;
    property Origen:String read FOrigen write FOrigen;
  end;

var
  FormCambiaBcoTx: TFormCambiaBcoTx;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormCambiaBcoTx.btOkClick(Sender: TObject);
begin
  DMMain_FD.fdcGestion.StartTransaction;
    try
      spCambiarCta.Close;
      spCambiarCta.ParamByName('id_Mov').Value     :=FIdMov;
      spCambiarCta.ParamByName('id_Cta_Bco').Value :=dbcCuenta.KeyValue;
      spCambiarCta.ParamByName('Origen').Value     :=FOrigen;
      spCambiarCta.ExecProc;
      DMMain_FD.LogFileFD(0,2,'Cambio Transferencia de Cta Bancaria..(Mov:'+IntToStr(FIdMov)+') Original:'+NombreCta+' pasa a :'+dbcCuenta.Text,'TXBANCO');
      DMMain_FD.fdcGestion.Commit;
    except
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Transaccion no Realizada...');
    end;
  spCambiarCta.Close;

end;

procedure TFormCambiaBcoTx.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
  CDSCtaBco.Close;
  CDSCtaBco.Open;
end;

procedure TFormCambiaBcoTx.FormShow(Sender: TObject);
begin
  edOrigen.Text:=FNombreCta;
end;


end.
