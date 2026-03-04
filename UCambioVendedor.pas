unit UCambioVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, JvExControls, JvDBLookup, JvGradient,
  ExtCtrls, Buttons, FMTBcd, Provider, DB, DBClient, SqlExpr, JvLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormCambioVendedor = class(TForm)
    pnBase: TPanel;
    pnCab: TPanel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    lbNuevo: TLabel;
    lbActual: TLabel;
    btOk: TBitBtn;
    btCancelar: TBitBtn;
    CDSVendedorOld: TClientDataSet;
    CDSVendedorNew: TClientDataSet;
    DSVendedorNew: TDataSource;
    DSVendedorOld: TDataSource;
    DSPVendedor: TDataSetProvider;
    CDSVendedorOldCODIGO: TStringField;
    CDSVendedorOldNOMBRE: TStringField;
    CDSVendedorNewCODIGO: TStringField;
    CDSVendedorNewNOMBRE: TStringField;
    DSPMotivo: TDataSetProvider;
    CDSMotivo: TClientDataSet;
    CDSMotivoID: TIntegerField;
    CDSMotivoDETALLE: TStringField;
    DSMotivo: TDataSource;
    JvLabel1: TJvLabel;
    QVendedor: TFDQuery;
    QMotivo: TFDQuery;
    dbcVendedorOld: TDBLookupComboBox;
    dbcVendedorNew: TDBLookupComboBox;
    dbcMotivo: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btOkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    FVendedorOld:String;
    FVendedorNew:String;
    FMotivo:Integer;

  public
    { Public declarations }
  published
    property VendedorOld:String Read FVendedorOld write FVendedorOld;
    property VendedorNew:String Read FVendedorNew write FVendedorNew;
    property Motivo:Integer Read FMotivo write FMotivo;

  end;

var
  FormCambioVendedor: TFormCambioVendedor;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormCambioVendedor.btOkClick(Sender: TObject);
begin
  if not VarIsNull(dbcVendedorNew.KeyValue) then
    begin
      FVendedorNew:=dbcVendedorNew.KeyValue;
      if not VarIsNull(dbcMotivo.KeyValue) then
        FMotivo     :=dbcMotivo.KeyValue;
    end
  else
    btCancelar.Click;
end;

procedure TFormCambioVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//  CDSVendedorOld.Close;
//  CDSVendedorNew.Close;
  Action:=caFree;
end;

procedure TFormCambioVendedor.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormCambioVendedor.FormDestroy(Sender: TObject);
begin
  FormCambioVendedor:=nil;
end;

procedure TFormCambioVendedor.FormShow(Sender: TObject);
begin
  CDSMotivo.Close;
  CDSMotivo.Open;
  CDSVendedorOld.Close;
  CDSVendedorNew.Close;
  CDSVendedorOld.Open;
  CDSVendedorNew.Open;
  dbcVendedorOld.KeyValue:= FVendedorOld;
  dbcVendedorNew.KeyValue:= FVendedorOld;
  dbcMotivo.KeyValue     := FMotivo;

 // CDSVendedorOld.Locate('CODIGO',FVendedorOld,[]);
end;

end.
