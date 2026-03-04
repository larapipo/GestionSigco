unit UTRetenciones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, DBClient,
  Provider, ActnList, ImgList, Buttons, ToolWin,
  ComCtrls, ExtCtrls, JvComponentBase, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExStdCtrls, JvCombobox, JvDBCombobox, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormTRetenciones = class(TFormABMBase)
    DSPRetenciones: TDataSetProvider;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    CDSRetenciones: TClientDataSet;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPO: TSmallintField;
    CDSBuscaRet: TClientDataSet;
    DSPBuscaRet: TDataSetProvider;
    CDSBuscaRetID_RETENCION: TIntegerField;
    CDSBuscaRetDETALLE: TStringField;
    dbcTipo: TJvDBComboBox;
    QBuscaRet: TFDQuery;
    QRetenciones: TFDQuery;
    QRetencionesID_RETENCION: TIntegerField;
    QRetencionesDETALLE: TStringField;
    QRetencionesTIPO: TSmallintField;
    procedure CDSRetencionesNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormTRetenciones: TFormTRetenciones;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormTRetenciones.CDSRetencionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSRetencionesID_RETENCION.Value:=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSRetencionesID_RETENCION.Value:=1;
  CDSRetencionesTIPO.Value:=0;
  QUltimoCodigo2.Close;

end;

procedure TFormTRetenciones.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;  
end;

procedure TFormTRetenciones.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSRetenciones,DSPRetenciones);
  Tabla:='T_retenciones';
  Campo:='ID_RETENCION';
  CDSRetenciones.Open;
end;

procedure TFormTRetenciones.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRet.Close;
  CDSBuscaRet.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaRet.Close;
end;

procedure TFormTRetenciones.CancelarExecute(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTRetenciones.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:= CDSRetencionesID_RETENCION.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormTRetenciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormTRetenciones.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTRetenciones:=nil;
end;

procedure TFormTRetenciones.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Value:= DatoNew;
  CDSRetenciones.Open;
end;

end.