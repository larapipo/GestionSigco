unit UStockPendiente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db,   StdCtrls, Grids, DBGrids, ExtCtrls, Buttons, FMTBcd, SqlExpr,
  Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, AdvUtil, AdvObj, BaseGrid, AdvGrid, DBAdvGrid;

type
  TFormStockPendiente = class(TForm)
    Panel1: TPanel;
    dbgTransito: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DSEnTransito: TDataSource;
    DSComprometido: TDataSource;
    BitBtn1: TBitBtn;
    CDSEnTransito: TClientDataSet;
    DSPEnTransito: TDataSetProvider;
    CDSComprometido: TClientDataSet;
    DSPComprometido: TDataSetProvider;
    CDSEnTransitoID_TRANCAB: TIntegerField;
    CDSEnTransitoFECHA: TSQLTimeStampField;
    CDSEnTransitoCLASECPBTE: TStringField;
    CDSEnTransitoNROCPBTE: TStringField;
    CDSComprometidoID_RTO: TIntegerField;
    CDSComprometidoFECHAVTA: TSQLTimeStampField;
    CDSComprometidoCLASECPBTE: TStringField;
    CDSComprometidoNROCPBTE: TStringField;
    CDSComprometidoNOMBRE: TStringField;
    CDSEnTransitoDEPORIGEN: TStringField;
    CDSEnTransitoDEPDESTINO: TStringField;
    QEnTrans: TFDQuery;
    CDSEnTransitoCANTIDAD: TFloatField;
    QComprom: TFDQuery;
    CDSComprometidoCANTIDAD: TFloatField;
    CDSComprometidoDEPOSITO: TIntegerField;
    CDSComprometidoMUESTRADEPOSITO: TStringField;
    DBAdvGrid1: TDBAdvGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbgTransitoDblClick(Sender: TObject);
    procedure dbgComprometidoDblClick(Sender: TObject);
    procedure CDSComprometidoAfterOpen(DataSet: TDataSet);
    procedure DBAdvGrid1DblClick(Sender: TObject);
  private
    FCodigo:String;
    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
  end;

var
  FormStockPendiente: TFormStockPendiente;

implementation

uses UTransferencia, URemitos,UDMain_FD;
{$R *.DFM}

procedure TFormStockPendiente.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormStockPendiente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSEnTransito.Close;
  CDSComprometido.Close;
  Action:=caFree;
end;

procedure TFormStockPendiente.FormDestroy(Sender: TObject);
begin
  FormStockPendiente:=nil;
end;

procedure TFormStockPendiente.FormShow(Sender: TObject);
begin
  CDSEnTransito.Close;
  CDSEnTransito.Params.ParamByName('codigo').Value:=fcodigo;
  CDSEnTransito.Open;
  CDSComprometido.Close;
  CDSComprometido.Params.ParamByName('codigo').Value:=fcodigo;
  CDSComprometido.Open;

end;

procedure TFormStockPendiente.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormStockPendiente.dbgTransitoDblClick(Sender: TObject);
begin
  if Not(Assigned(FormTransferencias)) Then
    FormTransferencias:=TFormTransferencias.Create(self);
  FormTransferencias.DatoNew:=CDSEnTransitoID_TRANCAB.AsString;
  FormTransferencias.TipoCpbte:='TX';
  FormTransferencias.Recuperar.Execute;
  FormTransferencias.Show;
  FormTransferencias.BringToFront;

end;

procedure TFormStockPendiente.CDSComprometidoAfterOpen(DataSet: TDataSet);
begin
  CDSComprometido.IndexFieldNames:='MUESTRADEPOSITO;NroCPBTE';
  DBAdvGrid1.Group(0);
  DBAdvGrid1.AutoSizeColumns(True,4);

end;

procedure TFormStockPendiente.DBAdvGrid1DblClick(Sender: TObject);
begin
  ShowMessage('id '+ DBAdvGrid1.cells[6,DBAdvGrid1.Row]);
end;

procedure TFormStockPendiente.dbgComprometidoDblClick(Sender: TObject);
begin
  if Not(Assigned(FormRemitos)) Then
    FormRemitos:=TFormRemitos.Create(Application);
  FormRemitos.DatoNew:=CDSComprometidoID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
  FormRemitos.BringToFront;

end;

end.
