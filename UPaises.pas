unit UPaises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions,
  Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin,
  Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls, System.ImageList;

type
  TFormPaises = class(TFormABMBase)
    QPaises: TFDQuery;
    QBuscador: TFDQuery;
    DSPPaises: TDataSetProvider;
    CDSPaises: TClientDataSet;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    QPaisesID: TIntegerField;
    QPaisesCODIGO: TIntegerField;
    QPaisesPAIS: TStringField;
    CDSPaisesID: TIntegerField;
    CDSPaisesCODIGO: TIntegerField;
    CDSPaisesPAIS: TStringField;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    CDSBuscadorID: TIntegerField;
    CDSBuscadorPAIS: TStringField;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CDSPaisesNewRecord(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPaises: TFormPaises;

implementation

{$R *.dfm}
uses UDMain_FD;
procedure TFormPaises.AgregarExecute(Sender: TObject);
begin
  inherited;
  DBEdit3.SetFocus;
end;

procedure TFormPaises.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormPaises.CDSPaisesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSPaisesID.Value:=-1;
end;

procedure TFormPaises.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSPaisesID.AsString;
  inherited;
  Recuperar.Execute;

end;

procedure TFormPaises.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormPaises.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSPaises,DSPPaises);
  CDSPaises.Open;
  Tabla := 'Paises';
  Campo := 'Id';
end;

procedure TFormPaises.FormDestroy(Sender: TObject);
begin
  inherited;
  FormPaises:=nil;
end;

procedure TFormPaises.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSPaises.Close;
  CDSPaises.Params.ParamByName('id').Value:=StrToInt(datoNew);
  CDSPaises.Open;
end;

end.
