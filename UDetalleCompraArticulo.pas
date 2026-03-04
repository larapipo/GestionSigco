unit UDetalleCompraArticulo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,   Provider, DB, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, StdCtrls, Buttons, JvExControls, JvGradient, Mask, DBCtrls,
  FMTBcd, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TformDetalleCompraArticulo = class(TForm)
    DSArti: TDataSource;
    CDSArti: TClientDataSet;
    DSPArti: TDataSetProvider;
    Panel1: TPanel;
    dbgCompras: TJvDBGrid;
    CDSArtiTIPOCPBTE: TStringField;
    CDSArtiNROCPBTE: TStringField;
    CDSArtiCODIGOARTICULO: TStringField;
    CDSArtiDETALLE: TStringField;
    CDSArtiRAZONSOCIAL: TStringField;
    CDSArtiCODIGO: TStringField;
    CDSArtiID_CABFAC: TIntegerField;
    btSalir: TBitBtn;
    Label1: TLabel;
    dbgProveedores: TJvDBGrid;
    DSOtroProveedor: TDataSource;
    Label2: TLabel;
    JvGradient1: TJvGradient;
    JvGradient2: TJvGradient;
    DSListaProvee: TDataSource;
    Label8: TLabel;
    JvGradient3: TJvGradient;
    Panel2: TPanel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    CDSArtiFECHACOMPRA: TSQLTimeStampField;
    CDSArtiCOSTO_TOTAL: TFloatField;
    CDSOtroProveedor: TClientDataSet;
    DSPOtroProveedor: TDataSetProvider;
    CDSOtroProveedorRAZON_SOCIAL: TStringField;
    CDSOtroProveedorNROCPBTE: TStringField;
    CDSOtroProveedorCLASE_CPBTE: TStringField;
    CDSOtroProveedorULTIMA_COMPRA: TSQLTimeStampField;
    QArti: TFDQuery;
    CDSArtiTOTAL: TFloatField;
    CDSArtiCANTIDAD: TFloatField;
    QOtroProveedor: TFDQuery;
    CDSOtroProveedorCOSTO_BRUTO: TFloatField;
    CDSOtroProveedorCOSTO_NETO: TFloatField;
    QListaProvee: TFDQuery;
    QListaProveeID: TIntegerField;
    QListaProveeID_CAB: TIntegerField;
    QListaProveeCODIGO_PROVEEDOR: TStringField;
    QListaProveeCODIGO: TStringField;
    QListaProveeDETALLE: TStringField;
    QListaProveePRECIO_LISTA: TFloatField;
    QListaProveeDESCUENTO: TFloatField;
    QListaProveePRECIO: TFloatField;
    QListaProveeRUBRO: TStringField;
    QListaProveeSUBRUBRO: TStringField;
    QListaProveeMARCA: TStringField;
    QListaProveeCODIGOBARRA: TStringField;
    QListaProveeDETALLE_ADICIONAL: TStringField;
    QListaProveeFECHA_ACTUALIZ: TSQLTimeStampField;
    QListaProveeID_1: TIntegerField;
    QListaProveeCODIGO_PROVEE: TStringField;
    QListaProveeNOMBRE: TStringField;
    QListaProveeFECHA: TSQLTimeStampField;
    QListaProveeOBS: TMemoField;
    QListaProveeLISTA_NRO: TStringField;
    procedure dbgComprasTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    FCodigo:String;
    FCodigoProvee:String;

    { Private declarations }
  public
    { Public declarations }
  published
    property Codigo:String read FCodigo write FCodigo;
    property CodigoProvee:String read FCodigoProvee write FCodigoProvee;

  end;

var
  formDetalleCompraArticulo: TformDetalleCompraArticulo;

implementation
uses UDMain_FD;
{$R *.dfm}

procedure TformDetalleCompraArticulo.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TformDetalleCompraArticulo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSArti.Close;
  Action:=caFree;
end;

procedure TformDetalleCompraArticulo.FormCreate(Sender: TObject);
begin
  AutoSize:=true;
end;

procedure TformDetalleCompraArticulo.FormDestroy(Sender: TObject);
begin
  formDetalleCompraArticulo:=nil;
end;

procedure TformDetalleCompraArticulo.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key=VK_ESCAPE) then Close;
end;

procedure TformDetalleCompraArticulo.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#27 Then Close;

end;

procedure TformDetalleCompraArticulo.FormShow(Sender: TObject);
begin
  CDSArti.Close;
  CDSArti.Params.ParamByName('codigo').Value:=codigo;
  CDSArti.Params.ParamByName('codigoProvee').Value:=codigoProvee;
  CDSArti.Open;

  QOtroProveedor.Close;
  QOtroProveedor.ParamByName('codigoStk').Value:=codigo;
  QOtroProveedor.Open;

  QListaProvee.Close;
  QListaProvee.ParamByName('codigo').Value:=codigo;
  QListaProvee.ParamByName('provee').Value:=CodigoProvee;

  QListaProvee.Open;

end;

procedure TformDetalleCompraArticulo.dbgComprasTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  if (Field.FieldName='FECHACOMPRA') or
     (Field.FieldName='NROCPBTE') OR
     (Field.FieldName='UNITARIO_TOTAL') or
     (Field.FieldName='COSTO_TOTAL')  then

  CDSArti.IndexName:=Field.FieldName;
end;

end.
