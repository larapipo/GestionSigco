unit UStock_Variaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, System.Actions, Vcl.ActnList, CompBuscador;

type
  TFormStockVariaciones = class(TForm)
    pnCabecera: TPanel;
    pnBase: TPanel;
    pnPie: TPanel;
    dbgVariaciones: TDBGrid;
    QVariaciones: TFDQuery;
    QVariacionesID: TIntegerField;
    QVariacionesCODIGO: TStringField;
    QVariacionesVARIACION: TStringField;
    QVariacionesDETALLE_STK: TStringField;
    DSVariaciones: TDataSource;
    Label1: TLabel;
    lbDetalle: TLabel;
    ActionList1: TActionList;
    BuscarArticulo: TAction;
    QArticulosWeb: TFDQuery;
    ComBuscador: TComBuscador;
    QArticulosWebCODIGO_STK: TStringField;
    QArticulosWebDETALLE_STK: TStringField;
    procedure QVariacionesVARIACIONSetText(Sender: TField; const Text: string);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure dbgVariacionesColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure QVariacionesNewRecord(DataSet: TDataSet);
    procedure QVariacionesAfterPost(DataSet: TDataSet);
    procedure QVariacionesAfterDelete(DataSet: TDataSet);
    procedure dbgVariacionesDblClick(Sender: TObject);
  private
    { Private declarations }
    FCodigo:string;
    FDetalle:string;
    FCodigoStk:string;

  public
    { Public declarations }
  published
    property Codigo:string read FCodigo write FCodigo;
    property Detalle:string read FDetalle write FDetalle;
    property CodigoStk:string read FCodigoStk write FCodigoStk;

  end;

var
  FormStockVariaciones: TFormStockVariaciones;

implementation

uses UDMain_FD, UBuscadorArticulos;
{$R *.dfm}

procedure TFormStockVariaciones.BuscarArticuloExecute(Sender: TObject);
begin
    begin
     // if DatosVentas.wwCDSVentaCabPOR_CTA_Y_ORDEN.Value='S' then
     //   buscar
//      IF (Assigned(FormBuscadorArticulos)) THEN
//        FreeAndNil(FormBuscadorArticulos);
//      IF Not(Assigned(FormBuscadorArticulos)) THEN
//        FormBuscadorArticulos := TFormBuscadorArticulos.Create(self);
//      FormBuscadorArticulos.Param1      := 1;
//      FormBuscadorArticulos.Param2      := 3;
//      FormBuscadorArticulos.Param3      := 3;
//      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
//      FormBuscadorArticulos.Esquema     := -1;
//      if FormBuscadorArticulos.Visible=False Then
//        FormBuscadorArticulos.ShowModal;

      QArticulosWeb.Close;
      QArticulosWeb.Open;
      ComBuscador.Execute;
      //if FormBuscadorArticulos.Codigo<>'' Then
      if ComBuscador.rOk then
        begin
          QVariacionesVARIACIONSetText(QVariacionesVARIACION,ComBuscador.Id);

//          QVariacionesVARIACIONSetText(QVariacionesVARIACION,FormBuscadorArticulos.Codigo);
          //QVariacionesDETALLE_STK.Value:=FormBuscadorArticulos.
        end;
      QArticulosWeb.Close;

    end;
end;

procedure TFormStockVariaciones.dbgVariacionesColEnter(Sender: TObject);
begin
  if dbgVariaciones.SelectedIndex>0 then
    dbgVariaciones.SelectedIndex:=0;
end;

procedure TFormStockVariaciones.dbgVariacionesDblClick(Sender: TObject);
begin
  FCodigoStk:=QVariacionesVARIACION.AsString;
  ModalResult:=mrOk;
end;

procedure TFormStockVariaciones.FormShow(Sender: TObject);
begin
  QVariaciones.Close;
  QVariaciones.ParamByName('codigo').Value:=FCodigo;
  QVariaciones.Open;
  lbDetalle.Caption:=FDetalle;
end;

procedure TFormStockVariaciones.QVariacionesAfterDelete(DataSet: TDataSet);
begin
  QVariaciones.ApplyUpdates(0);
end;

procedure TFormStockVariaciones.QVariacionesAfterPost(DataSet: TDataSet);
begin
  QVariaciones.ApplyUpdates(0);
end;

procedure TFormStockVariaciones.QVariacionesNewRecord(DataSet: TDataSet);
begin
  QVariacionesID.Value     := -1;
  QVariacionesCODIGO.Value := FCodigo;
end;

procedure TFormStockVariaciones.QVariacionesVARIACIONSetText(Sender: TField;
  const Text: string);
var q:TFDQuery;
begin
  q:=TFDQuery.Create(nil);
  q.Connection:=DMMain_FD.fdcGestion;
  q.SQL.Text:='select detalle_stk from stock where codigo_stk=:codigo';
  if dbgVariaciones.DataSource.DataSet.State=dsBrowse then
    dbgVariaciones.DataSource.DataSet.Edit;
  Sender.AsString:=Text;
  q.ParamByName('codigo').Value:=Sender.AsString;
  q.Open;
  QVariacionesDETALLE_STK.Value:=q.Fields[0].AsString;
  q.Close;
  FreeAndNil(q);
end;

end.
