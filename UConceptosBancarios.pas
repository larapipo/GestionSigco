unit UConceptosBancarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, Db,
  ActnList, ImgList, StdCtrls, Buttons, ToolWin, ComCtrls, ExtCtrls, Mask, DBCtrls,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormConceptosBancarios = class(TFormABMBase)
    DSPCocneptos: TDataSetProvider;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
    CDSCocneptos: TClientDataSet;
    CDSCocneptosCODIGO: TStringField;
    CDSCocneptosDETALLE: TStringField;
    DSPBuscaConceptos: TDataSetProvider;
    CDSBuscaConceptos: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    QConceptos: TFDQuery;
    QConceptosCODIGO: TStringField;
    QConceptosDETALLE: TStringField;
    QBuscaConceptos: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSCocneptosNewRecord(DataSet: TDataSet);
    procedure CDSCocneptosCODIGOSetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConceptosBancarios: TFormConceptosBancarios;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormConceptosBancarios.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde  :=2;
  AddClientDataSet(CDSCocneptos,DSPCocneptos);
  CDSCocneptos.Open;
  Tabla  :='conceptos_bancarios';
  Campo  :='codigo';
end;

procedure TFormConceptosBancarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormConceptosBancarios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConceptosBancarios:=nil;
end;

procedure TFormConceptosBancarios.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSCocneptos.Close;
  CDSCocneptos.Params.ParamByName('Codigo').Value:=DatoNew;
  CDSCocneptos.Open;
end;

procedure TFormConceptosBancarios.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbeCodigo.Enabled:=DSBase.State in [dsInsert];
end;

procedure TFormConceptosBancarios.CDSCocneptosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSCocneptosCODIGOSetText(CDSCocneptosCODIGO,'1')
  else
    CDSCocneptosCODIGOSetText(CDSCocneptosCODIGO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1));
  QUltimoCodigo2.Close;

end;

procedure TFormConceptosBancarios.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSCocneptosCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormConceptosBancarios.CDSCocneptosCODIGOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('000',1,3-Length(Text))+Text;
end;

procedure TFormConceptosBancarios.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormConceptosBancarios.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaConceptos.Close;
  CDSBuscaConceptos.Open;
  comBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaConceptos.Close;
end;

end.
