unit UMarcas_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, StdCtrls, Mask, DBCtrls,
  ActnList,
  ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls,
  JvComponentBase, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormMarca_2 = class(TFormABMBase)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    dbeObservacion: TDBEdit;
    dbeNombre: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    DSPMarca: TDataSetProvider;
    CDSMarca: TClientDataSet;
    DSPBuscaMarca: TDataSetProvider;
    CDSBuscaMarca: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    CDSMarcaMARCA_STK: TStringField;
    CDSMarcaDESCRIPCION_MARCA: TStringField;
    CDSMarcaOBSERVACION_MARCA: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSMarcaNewRecord(DataSet: TDataSet);
    procedure CDSMarcaMARCA_STKSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMarca_2: TFormMarca_2;

implementation

uses UDMain_FD,DMBuscadoresForm;
{$R *.DFM}

procedure TFormMarca_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaMarca.Close;
  CDSBuscaMarca.Open;
  ComBuscadorBase.Execute;
  IF ComBuscadorBase.rOk THEN
    BEGIN
     DatoNew:=ComBuscadorBase.Id;
     Recuperar.Execute;
    END;
  CDSBuscaMarca.Close;
end;

procedure TFormMarca_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormMarca_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSMarcaMARCA_STK.AsString;
  if CDSMarca.State<>dsBrowse Then
    CDSMarca.Post;
 // CDSMarca.ApplyUpdates(0);
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormMarca_2.CDSMarcaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSMarcaMARCA_STKSetText(CDSMarcaMARCA_STK,'1')
  else
    CDSMarcaMARCA_STKSetText(CDSMarcaMARCA_STK,IntToStr(QUltimoCodigo2.Fields[0].AsInteger + 1));
  QUltimoCodigo2.Close;

end;

procedure TFormMarca_2.CDSMarcaMARCA_STKSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString := Copy('00000', 1, Sender.Size - length(Text)) + Text;
end;

procedure TFormMarca_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSMarca,DSPMarca);
  Tabla:='marcas';
  campo:='marca_stk';
  CDSMarca.Open;
  Condicion:='';
end;

procedure TFormMarca_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMarca_2:=nil;
end;

procedure TFormMarca_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSMarca.Close;
  Action:=caFree;
  inherited;
end;

procedure TFormMarca_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSMarca.Close;
  CDSMarca.Params.ParamByName('Codigo').Value :=DatoNew;
  CDSMarca.Open;
  DatoNew:=''+DatoNew+'';
end;

end.
