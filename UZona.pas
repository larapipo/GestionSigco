unit UZona;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, DBCtrls, Db, ActnList, ImgList,
  Buttons, ToolWin, ComCtrls, ExtCtrls, DBClient,  Provider,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvBaseEdits,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

type
  TFormZonas = class(TFormABMBase)
    Label28: TLabel;
    Label29: TLabel;
    dbeNombre: TDBEdit;
    dbeCodigo: TDBEdit;
    DSPZona: TDataSetProvider;
    CDSZona: TClientDataSet;
    CDSZonaId_Zona: TIntegerField;
    CDSZonaDetalle: TStringField;
    CDSBuscaZona: TClientDataSet;
    DSPbuscaZona: TDataSetProvider;
    CDSBuscaZonaID_ZONA: TIntegerField;
    CDSBuscaZonaDETALLE: TStringField;
    edComision: TJvDBCalcEdit;
    Label1: TLabel;
    QBuscaZona: TFDQuery;
    QZona: TFDQuery;
    QZonaID_ZONA: TIntegerField;
    QZonaDETALLE: TStringField;
    QZonaCOMISION: TFloatField;
    CDSZonaCOMISION: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSZonaNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormZonas: TFormZonas;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormZonas.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaZona.Close;
  CDSBuscaZona.OPen;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaZona.Close;
end;

procedure TFormZonas.CDSZonaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSZonaId_Zona.Value:=1
  else
    CDSZonaId_Zona.Value:= QUltimoCodigo2.Fields[0].AsInteger+1;
  CDSZonaCOMISION.Value := 0;
end;

procedure TFormZonas.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormZonas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormZonas:=nil;
end;

procedure TFormZonas.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSZona,DSPZona);
  Tabla:='zona';
  Campo:='id_zona';
  CDSZona.Open;
end;

procedure TFormZonas.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbeCodigo.Enabled:=DSBase.State in [dsInsert];
end;

procedure TFormZonas.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormZonas.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSZona.Close;
  CDSZona.Params.ParamByName('id').Value:= DatoNew;
  CDSZona.Open;
end;

procedure TFormZonas.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSZonaId_Zona.AsString;
  inherited;
  Recuperar.Execute;
end;

end.