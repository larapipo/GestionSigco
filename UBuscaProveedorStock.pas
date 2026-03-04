unit UBuscaProveedorStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Db, StdCtrls, Buttons, FMTBcd, SqlExpr,
  Provider, DBClient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit, JvMaskEdit, JvDBFindEdit;

type
  TFormBuscaProveedorStock = class(TForm)
    pnPx: TPanel;
    DSProveedor: TDataSource;
    DBGrid1: TDBGrid;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    CDSProveedor: TClientDataSet;
    DSPProveedor: TDataSetProvider;
    CDSProveedorCODIGO_STK: TStringField;
    CDSProveedorCODIGO_PROV: TStringField;
    CDSProveedorMUESTRAPROVEEDOR: TStringField;
    CDSProveedorULTIMA_ACTUALIZACION: TSQLTimeStampField;
    CDSProveedorLista: TClientDataSet;
    DSPProveedorLista: TDataSetProvider;
    CDSProveedorListaCODIGO: TStringField;
    CDSProveedorListaCODIGO_PROV: TStringField;
    CDSProveedorListaMUESTRAPROVEEDOR: TStringField;
    CDSProveedorListaULTIMA_ACTUALIZACION: TSQLTimeStampField;
    QProveedor: TFDQuery;
    QProveedorLista: TFDQuery;
    CDSProveedorPRECIO: TFloatField;
    CDSProveedorListaPRECIO: TFloatField;
    JvDBFindEdit1: TJvDBFindEdit;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btAceptarClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
    Modo:Byte; // 0 noremal -- 1 por lista de predios
    CodigoIn,CodigoOut:String;
    Nombre:String;
    Precio:Real;
  end;

var
  FormBuscaProveedorStock: TFormBuscaProveedorStock;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormBuscaProveedorStock.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormBuscaProveedorStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscaProveedorStock.FormDestroy(Sender: TObject);
begin
  FormBuscaProveedorStock:=nil;
end;

procedure TFormBuscaProveedorStock.FormResize(Sender: TObject);
begin
  if FormBuscaProveedorStock<>nil then
    if FormBuscaProveedorStock.Width<>681 then
      FormBuscaProveedorStock.Width:=681;


end;

procedure TFormBuscaProveedorStock.FormShow(Sender: TObject);
begin
  CDSProveedor.Close;
  CDSProveedor.Params.ParamByName('codigo').Value:=CodigoIn;
  CDSProveedor.Open;

  CDSProveedorLista.Close;
  CDSProveedorLista.Params.ParamByName('codigo').Value:=CodigoIn;
  CDSProveedorLista.Open;
  case Modo of
    0 : DSProveedor.DataSet:=CDSProveedor;
    1 : DSProveedor.DataSet:=CDSProveedorLista;
  end;
end;

procedure TFormBuscaProveedorStock.btCancelarClick(Sender: TObject);
begin
  CodigoOut:='';
  Precio:=0;
  Close;
end;

procedure TFormBuscaProveedorStock.btAceptarClick(Sender: TObject);
begin
  CodigoOut := CDSProveedorCODIGO_PROV.AsString;
  Nombre    := CDSProveedorMUESTRAPROVEEDOR.AsString;
  Precio    := CDSProveedorPRECIO.AsFloat;
  Close;
end;

procedure TFormBuscaProveedorStock.DBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key=#13 Then
    btAceptar.Click
  else
    if Key=#27 Then
      btCancelar.Click;

end;

end.
