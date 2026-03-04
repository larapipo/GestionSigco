unit UConultaPrecioPorLista;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Wwintl,  wwDialog, wwidlg, Db, DBTables,
  ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, Mask,   JvComponentBase, 
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, Provider, DBClient, JvExMask, JvToolEdit;

type
  TFormConsultaPorListaPrecio = class(TFormABMBase)
    DBGrid1: TDBGrid;
    DSPrecios: TDataSource;
    edDetalle: TEdit;
    BuscarArticulo: TAction;
    QPrecios: TSQLQuery;
    QArticulos: TSQLQuery;
    QArticulosCODIGO_STK: TStringField;
    QArticulosDETALLE_STK: TStringField;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    CDSPrecios: TClientDataSet;
    DSPPrecios: TDataSetProvider;
    CDSPreciosCODIGO_STK: TStringField;
    CDSPreciosDETALLE_STK: TStringField;
    CDSPreciosCOSTO_TOTAL_STK: TFMTBCDField;
    CDSPreciosFIJACION_PRECIO_TOTAL: TFMTBCDField;
    CDSPreciosID_CAB: TIntegerField;
    CDSPreciosRECARGO: TFMTBCDField;
    CDSPreciosPRECIORECALCULADO: TFloatField;
    CDSPreciosPRECIO: TFMTBCDField;
    ceCodigo: TJvComboEdit;
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConsultaPorListaPrecio: TFormConsultaPorListaPrecio;

implementation

uses UBuscadorArticulos,DMMainForm_2;

{$R *.DFM}

procedure TFormConsultaPorListaPrecio.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
 // FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then

      begin
        QArticulos.Close;
        QArticulos.ParamByName('Codigo').Value:=FormBuscadorArticulos.Codigo;
        QArticulos.Open;
        edDetalle.Text:=QArticulosDETALLE_STK.Value;
        ceCodigo.Text :=QArticulosCODIGO_STK.Value;
        QArticulos.Close;
        Buscar.Execute;
      end
    else
      begin
        edDetalle.Text:='';
        ceCodigo.Text :='';
      end;

end;

procedure TFormConsultaPorListaPrecio.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSPrecios.Close;
  CDSPrecios.Params.ParamByName('codigo').Value:=ceCodigo.Text;
  CDSPrecios.Open;
end;

procedure TFormConsultaPorListaPrecio.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 // inherited;

end;

procedure TFormConsultaPorListaPrecio.ceCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 Then
      begin
      Key:=#0;
      QArticulos.Close;
      QArticulos.ParamByName('Codigo').Value:=FormBuscadorArticulos.Codigo;
      QArticulos.Open;
      edDetalle.Text:=QArticulosDETALLE_STK.Value;
      ceCodigo.Text :=QArticulosCODIGO_STK.Value;
      QArticulos.Close;
      Buscar.Execute;
    end
  else
    begin
      edDetalle.Text:='';
      ceCodigo.Text :='';
    end;
  if Key=#10 Then
    BuscarArticulo.Execute;  
end;

procedure TFormConsultaPorListaPrecio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormConsultaPorListaPrecio.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConsultaPorListaPrecio:=nil;
end;

end.