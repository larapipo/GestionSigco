unit URubroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  Datasnap.Provider, Data.DB, Datasnap.DBClient, Vcl.StdCtrls, Vcl.Mask,
  Vcl.DBCtrls, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormRubroClientes = class(TFormABMBase)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    dbeNombre: TDBEdit;
    Label2: TLabel;
    CDSBuscaRubro: TClientDataSet;
    CDSBuscaRubroID: TIntegerField;
    CDSBuscaRubroDETALLE: TStringField;
    CDSRubros: TClientDataSet;
    CDSRubrosID: TIntegerField;
    CDSRubrosDETALLE: TStringField;
    DSPRubros: TDataSetProvider;
    DSPBuscaRubro: TDataSetProvider;
    QBuscaRubro: TFDQuery;
    QRubros: TFDQuery;
    QRubrosID: TIntegerField;
    QRubrosDETALLE: TStringField;
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSRubrosNewRecord(DataSet: TDataSet);
    procedure CDSRubrosIDSetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRubroClientes: TFormRubroClientes;

implementation

{$R *.dfm}

procedure TFormRubroClientes.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeNombre.SetFocus;
end;

procedure TFormRubroClientes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    BEGIN
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaRubro.Close;
end;

procedure TFormRubroClientes.CDSRubrosIDSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
end;

procedure TFormRubroClientes.CDSRubrosNewRecord(DataSet: TDataSet);
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

procedure TFormRubroClientes.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSRubrosID.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormRubroClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSRubros.Close;
  Action:=caFree;
end;

procedure TFormRubroClientes.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AddClientDataSet(CDSRubros,DSPRubros);
  CDSRubros.Open;
  Tabla:='Rubros_clientes';
  Campo:='id';
end;

procedure TFormRubroClientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRubroClientes:=nil;
end;

procedure TFormRubroClientes.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRubros.Close;
  CDSRubros.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSRubros.Open;
end;

end.
