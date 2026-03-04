unit UMotivosAjustesCCVta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient,
  Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, Vcl.Mask, Vcl.DBCtrls, UCtaContables,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormMotivosAjustesCCVta = class(TFormABMBase)
    CDSMotivos: TClientDataSet;
    DSPMotivos: TDataSetProvider;
    DSPListaMotClientes: TDataSetProvider;
    CDSListaMotClientes: TClientDataSet;
    CDSListaMotClientesID: TIntegerField;
    CDSListaMotClientesDETALLE: TStringField;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    CDSMotivosID: TIntegerField;
    CDSMotivosDETALLE: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    FrameCtaContable1: TFrameCtaContable;
    QMotivos: TFDQuery;
    QMotivosID: TIntegerField;
    QMotivosDETALLE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSMotivosNewRecord(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FrameCtaContable1ceCodigoButtonClick(Sender: TObject);
    procedure FrameCtaContable1ceCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FrameCtaContable1ceCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FrameCtaContable1ceCodigoEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMotivosAjustesCCVta: TFormMotivosAjustesCCVta;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormMotivosAjustesCCVta.BuscarExecute(Sender: TObject);
begin
  inherited;
   CDSListaMotClientes.Close;
  CDSListaMotClientes.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormMotivosAjustesCCVta.CDSMotivosNewRecord(DataSet: TDataSet);
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

procedure TFormMotivosAjustesCCVta.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMotivosID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormMotivosAjustesCCVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=cafree;
end;

procedure TFormMotivosAjustesCCVta.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde  :=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AddClientDataSet(CDSMotivos,DSPMotivos);
  CDSMotivos.Open;
  Tabla:='MOTIVOS_AJUSTES_CLIENTES';
  Campo:='ID';
  FrameCtaContable1.Visible:=DMMain_FD.GetUsaContabilidad;

end;

procedure TFormMotivosAjustesCCVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMotivosAjustesCCVta:=nil;
end;

procedure TFormMotivosAjustesCCVta.FormShow(Sender: TObject);
begin
  inherited;
  FrameCtaContable1.Visible       := DMMain_FD.GetUsaContabilidad;
  FrameCtaContable1.NombreTabla   := 'MOTIVOS_AJUSTES_CLIENTES';
end;

procedure TFormMotivosAjustesCCVta.FrameCtaContable1ceCodigoButtonClick(
  Sender: TObject);
begin
  inherited;
  FrameCtaContable1.ceCodigoButtonClick(Sender);

end;

procedure TFormMotivosAjustesCCVta.FrameCtaContable1ceCodigoEnter(
  Sender: TObject);
begin
  inherited;
  FrameCtaContable1.CodigoElemento:=CDSMotivosID.ASString;

end;

procedure TFormMotivosAjustesCCVta.FrameCtaContable1ceCodigoKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
  FrameCtaContable1.ceCodigoKeyDown(Sender, Key, Shift);

end;

procedure TFormMotivosAjustesCCVta.FrameCtaContable1ceCodigoKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  FrameCtaContable1.ceCodigoKeyPress(Sender, Key);

end;

procedure TFormMotivosAjustesCCVta.RecuperarExecute(Sender: TObject);
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
