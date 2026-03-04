unit URegimenRetencionIVA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider,
  Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, AdvSmoothButton;

type
  TFormRegimenRetencionIVA = class(TFormABMBase)
    DSPRegimen: TDataSetProvider;
    CDSRegimen: TClientDataSet;
    CDSRegimenCODIGO: TIntegerField;
    CDSRegimenDETALLE: TStringField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    QRegimen: TFDQuery;
    QRegimenCODIGO: TIntegerField;
    QRegimenDETALLE: TStringField;
    QBuscaReg: TFDQuery;
    QBuscaRegDETALLE: TStringField;
    IntegerField1: TIntegerField;
    CDSBuscaRegimen: TClientDataSet;
    DSPBuscaRegimen: TDataSetProvider;
    CDSBuscaRegimenDETALLE: TStringField;
    CDSBuscaRegimenCODIGO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegimenRetencionIVA: TFormRegimenRetencionIVA;

implementation

{$R *.DFM}
uses UDMain_FD;

procedure TFormRegimenRetencionIVA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRegimenRetencionIVA.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSRegimen,DSPRegimen);
  CDSRegimen.Open;
  AutoSize:=True;
  Tabla:='REGIMENRETENCIONIVA';
  Campo:='Codigo';

end;

procedure TFormRegimenRetencionIVA.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRegimenRetencionIVA:=nil;
end;

procedure TFormRegimenRetencionIVA.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRegimen.Close;
  CDSBuscaRegimen.OPen;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaRegimen.Close;
end;

procedure TFormRegimenRetencionIVA.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRegimen.Close;
  CDSRegimen.Params.ParamByName('Codigo').Value:=StrToInt(DatoNew);
  CDSRegimen.Open;
end;

procedure TFormRegimenRetencionIVA.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSRegimenCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormRegimenRetencionIVA.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

end.