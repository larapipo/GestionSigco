unit UNotaCreditoAplicaAFactura;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, AdvUtil, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, AdvObj, BaseGrid, AdvGrid, DBAdvGrid,
  Vcl.StdCtrls, System.Actions, Vcl.ActnList, Vcl.DBGrids, Datasnap.Provider, Datasnap.DBClient, Vcl.Buttons;

type
  TFormNotaCreditoAplicaAFactura = class(TForm)
    Panel1: TPanel;
    QFacturas: TFDQuery;
    DSFacturas: TDataSource;
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    DBGrid1: TDBGrid;
    CDSFacturasCODIGO_AFIP: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasNUMEROFAC: TStringField;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasSALDO: TFloatField;
    btCancelar: TBitBtn;
    btOk: TBitBtn;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    Panel2: TPanel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FCliente: string;
    FiltraImpagas: Boolean;
    FCodigoAfip:String;
    FSuc       :string;
    FNumero    :string;
    FFecha     :string;
    FID_Cpbte  :Integer;
    FTipoOrigen:String;
  public
    { Public declarations }
  published
    property Cliente: string read FCliente write FCliente;
    property CodigoAfip: string read FCodigoAfip write FCodigoAfip;
    property Suc: string read FSuc write FSuc;
    property NUmero: string read FNumero write FNumero;
    property Fecha: string read FFecha write FFecha;
    property FiltraImp: boolean read FiltraImpagas write FiltraImpagas;
    property ID_Cpbte: Integer read FID_Cpbte write FID_Cpbte;
    property TipoOrigen :string read FTipoOrigen write FTipoOrigen;
  end;

var
  FormNotaCreditoAplicaAFactura: TFormNotaCreditoAplicaAFactura;

implementation

uses
  UDMain_FD, UFactura_2;

{$R *.dfm}

procedure TFormNotaCreditoAplicaAFactura.btOkClick(Sender: TObject);
begin
  FCodigoAfip := CDSFacturasCODIGO_AFIP.Value;
  FSuc        := CDSFacturasSUCFAC.Value;
  FNumero     := CDSFacturasNUMEROFAC.Value;
  FFecha      := FormatDateTime('yyyymmdd',CDSFacturasFECHAVTA.AsDateTime);
  FID_Cpbte   := CDSFacturasID_FC.Value;
end;

procedure TFormNotaCreditoAplicaAFactura.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSFacturas.Close;
  Action  :=  caFree;
end;

procedure TFormNotaCreditoAplicaAFactura.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormNotaCreditoAplicaAFactura.FormDestroy(Sender: TObject);
begin
  FormNotaCreditoAplicaAFactura:=nil;
end;

procedure TFormNotaCreditoAplicaAFactura.FormShow(Sender: TObject);
begin
  CDSFacturas.Close;
  CDSFacturas.Params.ParamByName('CODIGO').Value    :=  FCliente;
  CDSFacturas.Open;
end;

end.
