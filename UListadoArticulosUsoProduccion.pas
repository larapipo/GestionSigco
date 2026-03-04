unit UListadoArticulosUsoProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient, Datasnap.Provider;

type
  TFormAticulosUsadosProduccion = class(TFormABMBase)
    pnPie: TPanel;
    pnCab: TPanel;
    dbgArtiulcos: TDBGrid;
    QArticulos: TFDQuery;
    DSPArticulos: TDataSetProvider;
    CDSArticulos: TClientDataSet;
    CDSArticulosCODIGO_STK: TStringField;
    CDSArticulosDETALLE_STK: TStringField;
    CDSArticulosCOSTOAPLICADO: TFloatField;
    CDSArticulosULTIMO_COSTO: TSQLTimeStampField;
    CDSArticulosCOSTOACTUAL: TFloatField;
    DSArticulos: TDataSource;
    dbgProduccion: TDBGrid;
    QEnArtProduccion: TFDQuery;
    DSPEnArtProduccion: TDataSetProvider;
    CDSEnArtProduccion: TClientDataSet;
    CDSEnArtProduccionID_CAB: TIntegerField;
    CDSEnArtProduccionCODIGO: TStringField;
    CDSEnArtProduccionDETALLE: TStringField;
    CDSEnArtProduccionCANTIDAD_FISICA: TFloatField;
    CDSEnArtProduccionCODIGO_STK: TStringField;
    DSEnArtProduccion: TDataSource;
    pnMedio: TPanel;
    Splitter1: TSplitter;
    procedure dbgArtiulcosDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSArticulosAfterScroll(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgProduccionDblClick(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAticulosUsadosProduccion: TFormAticulosUsadosProduccion;

implementation

{$R *.dfm}
uses UDMain_FD, UStock_2, UStockProduccion;

procedure TFormAticulosUsadosProduccion.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSArticulos.Close;
  CDSArticulos.Open;
end;

procedure TFormAticulosUsadosProduccion.CDSArticulosAfterScroll(
  DataSet: TDataSet);
begin
  inherited;
  CDSEnArtProduccion.Close;
  CDSEnArtProduccion.Params.ParamByName('codigo').Value:=CDSArticulosCODIGO_STK.Value;
  CDSEnArtProduccion.Open;
end;

procedure TFormAticulosUsadosProduccion.dbgArtiulcosDblClick(Sender: TObject);
begin
  inherited;
  if  Not(Assigned(formStock_2)) then
    FormStock_2 := TFormStock_2.Create(Self);
  formStock_2.DatoNew :=CDSArticulosCODIGO_STK.AsString;
  formStock_2.Recuperar.Execute;
  FormStock_2.Show;

end;

procedure TFormAticulosUsadosProduccion.dbgProduccionDblClick(Sender: TObject);
begin
  inherited;
 if Not(dbgArtiulcos.DataSource.DataSet.isEmpty) then
    begin
      if Not(Assigned(FormStockProduccion)) then
        FormStockProduccion:=TFormStockProduccion.Create(Application);
      FormStockProduccion.datoNew:=dbgProduccion.DataSource.DataSet.FieldByName('Id_Cab').AsString;
      FormStockProduccion.Recuperar.Execute;
      FormStockProduccion.Show;
    end;
end;

procedure TFormAticulosUsadosProduccion.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormAticulosUsadosProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormAticulosUsadosProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSArticulos.Close;
  CDSArticulos.Open;
end;

procedure TFormAticulosUsadosProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAticulosUsadosProduccion:=nil;
end;

procedure TFormAticulosUsadosProduccion.FormResize(Sender: TObject);
begin
  inherited;
  if FormAticulosUsadosProduccion<>nil then
    if FormAticulosUsadosProduccion.Width<>750 then
      FormAticulosUsadosProduccion.Width:=750;
end;

end.
