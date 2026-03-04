unit UComprobantesAfip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DB, DBClient, StdCtrls, Mask, DBCtrls,
  SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormCodComprobantesAfip = class(TFormABMBase)
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeNombre: TDBEdit;
    CDSComp: TClientDataSet;
    CDSBuscador: TClientDataSet;
    DSPBuscador: TDataSetProvider;
    DSPComp: TDataSetProvider;
    QComp: TSQLQuery;
    QCompCODIGO: TStringField;
    QCompDETALLE: TStringField;
    CDSCompCODIGO: TStringField;
    CDSCompDETALLE: TStringField;
    QBuscador: TSQLQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorDETALLE: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDSCompCODIGOSetText(Sender: TField; const Text: string);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCodComprobantesAfip: TFormCodComprobantesAfip;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormCodComprobantesAfip.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    BEGIN
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscador.Close;
end;

procedure TFormCodComprobantesAfip.CDSCompCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000',1,3-length(Text))+Text;
end;

procedure TFormCodComprobantesAfip.ConfirmaExecute(Sender: TObject);
begin
  inherited;
  DatoNew:=CDSCompCODIGO.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormCodComprobantesAfip.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCodComprobantesAfip.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=1;
  AddClientDataSet(CDSComp,DSPComp);
  Tabla:='COMPROBANTES_AFIP';
  Campo:='CODIGO';
 // Veo si se cargan codigo Alfanumericos y si son secuenciales
  CDSComp.Open;
  SinBde:=1;
end;

procedure TFormCodComprobantesAfip.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCodComprobantesAfip:=nil;
end;

procedure TFormCodComprobantesAfip.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormCodComprobantesAfip.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSComp.Close;
  CDSComp.Params.ParamByName('Codigo').AsString := DatoNew;
  CDSComp.Open;
  DatoNew:=''+DatoNew+'';
end;

end.
