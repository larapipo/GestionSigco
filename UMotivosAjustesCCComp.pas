unit UMotivosAjustesCCComp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls,DMBuscadoresForm,
  UCtaContables, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, AdvSmoothButton;

type
  TFormMotivosAjustesCCComp = class(TFormABMBase)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DSPListaMotProvee: TDataSetProvider;
    CDSListaMotProvee: TClientDataSet;
    CDSListaMotProveeDETALLE: TStringField;
    CDSListaMotProveeID: TIntegerField;
    CDSMotivos: TClientDataSet;
    DSPMotivos: TDataSetProvider;
    CDSMotivosID: TIntegerField;
    CDSMotivosDETALLE: TStringField;
    FrameCtaContable1: TFrameCtaContable;
    QMotivos: TFDQuery;
    QMotivosID: TIntegerField;
    QMotivosDETALLE: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMotivosNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameCtaContable1ceCodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivosAjustesCCComp: TFormMotivosAjustesCCComp;

implementation
uses UDMain_FD;
{$R *.dfm}

procedure TFormMotivosAjustesCCComp.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSListaMotProvee.Close;
  CDSListaMotProvee.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormMotivosAjustesCCComp.CDSMotivosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSMotivosID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSMotivosID.Value:=1;
  QUltimoCodigo2.Close;
  FrameCtaContable1.CodigoElemento:=CDSMotivosID.AsString;
end;

procedure TFormMotivosAjustesCCComp.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMotivosID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormMotivosAjustesCCComp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormMotivosAjustesCCComp.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SInBde  :=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSMotivos,DSPMotivos);
  CDSMotivos.Open;
  Tabla:='MOTIVOS_AJUSTES_PROVEEDORES';
  Campo:='ID';
  FrameCtaContable1.Visible:=DMMain_FD.GetUsaContabilidad;
end;

procedure TFormMotivosAjustesCCComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMotivosAjustesCCComp:=nil;
end;

procedure TFormMotivosAjustesCCComp.FormShow(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'MOTIVOS_AJUSTES_PROVEEDORES';
end;

procedure TFormMotivosAjustesCCComp.FrameCtaContable1ceCodigoEnter(
  Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:=CDSMotivosID.ASString;
end;

procedure TFormMotivosAjustesCCComp.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMotivos.Close;
  CDSMotivos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMotivos.Open;
  FrameCtaContable1.CodigoElemento:=DatoNew;
  if DMMain_FD.GetUsaContabilidad then
    begin
      FrameCtaContable1.CDSCtaContable.Close;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Tabla').AsString    := FrameCtaContable1.NombreTabla;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('Codigo').AsString   := DatoNew;
      FrameCtaContable1.CDSCtaContable.Params.ParamByName('SubIndice').AsString:= '';
      FrameCtaContable1.CDSCtaContable.Open;
    end;
end;

end.
