unit UCostosFijos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, DBCtrls, Mask, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, JvExMask, JvToolEdit,
  Datasnap.Provider, Datasnap.DBClient, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCostosFijos = class(TFormABMBase)
    CDSCostosFijos: TClientDataSet;
    DSPCostosFijos: TDataSetProvider;
    Label1: TLabel;
    dbeId: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    Label3: TLabel;
    dbeCosto: TDBEdit;
    Label4: TLabel;
    dbmObs: TDBMemo;
    Label5: TLabel;
    CDSCostosFijosID: TIntegerField;
    CDSCostosFijosDETALLE: TStringField;
    CDSCostosFijosFECHA: TSQLTimeStampField;
    CDSCostosFijosOBS: TMemoField;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorDETALLE: TStringField;
    dbeFecha: TJvDBDateEdit;
    QCostosFijos: TFDQuery;
    QBuscador: TFDQuery;
    QCostosFijosID: TIntegerField;
    QCostosFijosDETALLE: TStringField;
    QCostosFijosCOSTO: TFloatField;
    QCostosFijosFECHA: TSQLTimeStampField;
    QCostosFijosOBS: TMemoField;
    CDSCostosFijosCOSTO: TFloatField;
    CDSBuscadorCOSTO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSCostosFijosNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCostosFijos: TFormCostosFijos;

implementation

uses
 UDMain_FD;

{$R *.DFM}

procedure TFormCostosFijos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE   := 2;
  AutoSize := True;
  AddClientDataSet(CDSCostosFijos,DSPCostosFijos);
  CDSCostosFijos.Open;
  Tabla:='Costos_fijos';
  Campo:='id';
end;

procedure TFormCostosFijos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCostosFijos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCostosFijos:=nil;
end;

procedure TFormCostosFijos.CDSCostosFijosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.CLose;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' Then
    CDSCostosFijosID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSCostosFijosID.Value:=1;
  QUltimoCodigo2.CLose;

end;

procedure TFormCostosFijos.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeDetalle.SetFocus;
end;

procedure TFormCostosFijos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCostosFijos.Close;
  CDSCostosFijos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSCostosFijos.Open;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormCostosFijos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    Begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscador.Close;

end;

procedure TFormCostosFijos.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCostosFijosID.AsString;
  inherited;
  Recuperar.Execute;
end;

end.