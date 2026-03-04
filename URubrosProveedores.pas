unit URubrosProveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, Db, ActnList, ComCtrls, Buttons,
  StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, JvComponentBase, 
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  Datasnap.DBClient, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormRubrosProveedores = class(TFormABMBase)
    CDSRubros: TClientDataSet;
    DSPRubros: TDataSetProvider;
    CDSRubrosID: TIntegerField;
    CDSRubrosDETALLE: TStringField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    CDSBuscaRubro: TClientDataSet;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubroID: TIntegerField;
    CDSBuscaRubroDETALLE: TStringField;
    QRubros: TFDQuery;
    QBuscaRubro: TFDQuery;
    procedure CDSRubrosNewRecord(DataSet: TDataSet);
    procedure CDSRubrosIDSetText(Sender: TField; const Text: String);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRubrosProveedores: TFormRubrosProveedores;

implementation

{$R *.DFM}

uses UDMain_FD;

procedure TFormRubrosProveedores.CDSRubrosNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSRubrosIDSetText(CDSRubrosID,'1')
  else
    CDSRubrosIDSetText(CDSRubrosID,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
  QUltimoCodigo2.Close;
end;

procedure TFormRubrosProveedores.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSRubrosID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormRubrosProveedores.CDSRubrosIDSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
end;

procedure TFormRubrosProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSRubros.Close;
  Action:=caFree;
end;

procedure TFormRubrosProveedores.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSRubros,DSPRubros);
  CDSRubros.Open;
  Tabla:='Rubros_Proveedores';
  Campo:='id';
end;

procedure TFormRubrosProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubrosProveedores:=nil;
end;

procedure TFormRubrosProveedores.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormRubrosProveedores.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaRubro.Close;

end;

procedure TFormRubrosProveedores.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormRubrosProveedores.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRubros.Close;
  CDSRubros.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSRubros.Open;
end;

end.