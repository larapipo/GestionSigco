unit UOrdenDeTrabajo_Estaciones;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.DBClient, Datasnap.Provider, Data.DB, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel,
  JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls,
  Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormEstacionProduccion = class(TFormABMBase)
    DSPBuscador: TDataSetProvider;
    DSPEstaciones: TDataSetProvider;
    CDSEstaciones: TClientDataSet;
    CDSBuscador: TClientDataSet;
    CDSBuscadorID: TIntegerField;
    CDSEstacionesID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    cxDBSpinEdit1: TDBEdit;
    cxDBTextEdit1: TDBEdit;
    CDSEstacionesDETALLE: TStringField;
    CDSEstacionesSECTOR: TIntegerField;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DSPSectores: TDataSetProvider;
    CDSSectores: TClientDataSet;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    DSSectores: TDataSource;
    QSectores: TFDQuery;
    QBuscador: TFDQuery;
    QEstaciones: TFDQuery;
    QEstacionesID: TIntegerField;
    QEstacionesDETALLE: TStringField;
    QEstacionesSECTOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSEstacionesNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormEstacionProduccion: TFormEstacionProduccion;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormEstacionProduccion.BuscarExecute(Sender: TObject);
begin
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew := IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormEstacionProduccion.CDSEstacionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSEstacionesID.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSEstacionesID.Value:=1;
  QUltimoCodigo2.Close;

  CDSEstacionesSECTOR.Value:=-1;
end;

procedure TFormEstacionProduccion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSEstacionesID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormEstacionProduccion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSectores.Close;
  CDSEstaciones.Close;
  Action:=caFree;
end;

procedure TFormEstacionProduccion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSEstaciones,DSPEstaciones);
  CDSSectores.Open;
  CDSEstaciones.Open;
  Tabla:='ORDENPRODUCC_ESTACION';
  Campo:='ID';
end;

procedure TFormEstacionProduccion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormEstacionProduccion:=nil;
end;

procedure TFormEstacionProduccion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSEstaciones.Close;
  CDSEstaciones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSEstaciones.Open;
end;

end.
