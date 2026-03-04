unit UBuscadorArticulosProveedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Grids, DBGrids, Mask, DBCtrls,
  JvExControls, JvGradient, ExtCtrls, DB,   ActnList, FMTBcd, Provider,
  DBClient, SqlExpr, JvLabel, JvDBControls, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormBuscadorArtiProv = class(TForm)
    pnPrincipal: TPanel;
    JvGradient1: TJvGradient;
    Label4: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    Panel1: TPanel;
    JvGradient2: TJvGradient;
    Label1: TLabel;
    Label9: TLabel;
    pnDatos: TPanel;
    JvGradient3: TJvGradient;
    Label7: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    edDato: TEdit;
    dbgResultado: TDBGrid;
    btCancelar: TBitBtn;
    btAceptar: TBitBtn;
    DSStock: TDataSource;
    Panel2: TPanel;
    ActionList1: TActionList;
    Buscar: TAction;
    Aceptar: TAction;
    Cancelar: TAction;
    CDSStock: TClientDataSet;
    DSPStock: TDataSetProvider;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockDESCRIPCION_MARCA: TStringField;
    CDSStockDETALLE_RUBRO: TStringField;
    CDSStockDETALLE_SUBRUBRO: TStringField;
    CDSStockMONEDA: TIntegerField;
    CDSStockSIGNO: TStringField;
    DBStatusLabel1: TJvDBStatusLabel;
    QStk: TFDQuery;
    CDSStockCOTIZACION: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AceptarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure edDatoClick(Sender: TObject);
    procedure edDatoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
    FCodigo:String;
    FProvee:String;
    FModo:byte;
  public
    { Public declarations }
   published
     property Modo:Byte read FModo write FModo;
     property Codigo:String read FCodigo write FCodigo;
     property Provee:String read FProvee write FProvee;
  end;

var
  FormBuscadorArtiProv: TFormBuscadorArtiProv;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormBuscadorArtiProv.AceptarExecute(Sender: TObject);
begin
  if Not(CDSStock.IsEmpty) Then
    begin
      FCodigo:=CDSStockCODIGO_STK.Value;
      Close;
    end
  else
    begin
      FCodigo:='';
      Close;
    end;
end;

procedure TFormBuscadorArtiProv.BuscarExecute(Sender: TObject);
begin
  CDSStock.close;
  CDSStock.Params.ParamByName('dato').Value   :=edDato.Text;
  CDSStock.Params.ParamByName('codigo').Value := Provee;
  CDSStock.Open;
end;

procedure TFormBuscadorArtiProv.CancelarExecute(Sender: TObject);
begin
  Codigo:='';
  Close;
end;

procedure TFormBuscadorArtiProv.edDatoClick(Sender: TObject);
begin
  edDato.SelectAll;
end;

procedure TFormBuscadorArtiProv.edDatoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key=#13 Then
    Buscar.Execute;
end;

procedure TFormBuscadorArtiProv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormBuscadorArtiProv.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  Buscar.Execute;
end;

procedure TFormBuscadorArtiProv.FormDestroy(Sender: TObject);
begin
  FormBuscadorArtiProv:=nil;
end;

procedure TFormBuscadorArtiProv.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if (key=vk_UP) and (Shift=[ssCtrl]) Then
    edDato.SetFocus
  else
    if (key=vk_Down) and (edDato.Focused) Then
      dbgResultado.SetFocus
    else
      if (Key=vk_return) and (dbgResultado.Focused) Then
        Aceptar.Execute;

end;

procedure TFormBuscadorArtiProv.FormShow(Sender: TObject);
begin
  if Modo=0 then // Trae desde ListaProv
    begin
      CDSStock.Close;
      CDSStock.CommandText:='';
      CDSStock.CommandText:='select s.codigo_stk,s.detalle_stk,s.marca_stk,s.detalle_stk_adicional, '+
                     's.rubro_stk,s.subrubro_stk, s.fijacion_precio_total, '+
                     's.unidad,m.descripcion_marca,r.detalle_rubro, '+
                     'sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo '+
                     'from stock s '+
                     'left join marcas m on m.marca_stk=s.marca_stk '+
                     'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                     'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                     'left join gravamen grav on grav.codigo=s.tasa_iva '+
                     'left join monedas mon on mon.id=s.moneda '+
                     'where (s.detalle_stk containing :dato) and '+
                     '(exists (select rel.codigo_stk from relacion_articuloprovee rel where rel.codigo_prov=:codigo and rel.codigo_stk=s.codigo_stk)) '+
                     'order by s.detalle_stk'

    end
  else
    if Modo=1 then // Trae desde La lista del Proveedor
      begin
        CDSStock.Close;
        CDSStock.CommandText:='';
        CDSStock.CommandText:='select s.codigo_stk,s.detalle_stk,s.marca_stk,s.detalle_stk_adicional, '+
                       's.rubro_stk,s.subrubro_stk, s.fijacion_precio_total, '+
                       's.unidad,m.descripcion_marca,r.detalle_rubro, '+
                       'sr.detalle_subrubro,s.moneda,mon.cotizacion,mon.signo '+
                       'from stock s '+
                       'left join marcas m on m.marca_stk=s.marca_stk '+
                       'left join rubros r on r.codigo_rubro=s.rubro_stk '+
                       'left join subrubros sr on sr.codigo_subrubro=s.subrubro_stk '+
                       'left join gravamen grav on grav.codigo=s.tasa_iva '+
                       'left join monedas mon on mon.id=s.moneda '+
                       'where (s.detalle_stk containing :dato) and '+
                       '(exists (select lp.codigo from lista_precios_prov_detalle lp '+
                       ' left join lista_precios_prov_cabecera lpc on lpc.id= lp.id_cab '+
                       'where lpc.codigo_provee=:codigo and lp.codigo=s.codigo_stk)) ';
      end;

  Buscar.Execute;
end;

end.
