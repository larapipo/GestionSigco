unit URegimenPercepcion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, DBClient, Provider, Wwintl,  rxPlacemnt,
  wwDialog, wwidlg, DBTables, ActnList, ComCtrls, RXCtrls, RXDBCtrl,
  Buttons, StdCtrls, ToolWin, ExtCtrls, Mask, DBCtrls, JvComponentBase,
  JvFormMagnet, ImgList, JvExControls, JvGradient;

type
  TFormRegimenPercepcion = class(TFormABMBase)
    DSPRegimen: TDataSetProvider;
    CDSRegimen: TClientDataSet;
    CDSRegimenCODIGO: TIntegerField;
    QBuscaRegimen: TQuery;
    IntegerField1: TIntegerField;
    QRegimen: TQuery;
    QRegimenCODIGO: TIntegerField;
    QRegimenDETALLE: TStringField;
    QBuscaRegimenDETALLE: TStringField;
    CDSRegimenDETALLE: TStringField;
    Label1: TLabel;
    dbeCodigo: TDBEdit;
    Label2: TLabel;
    dbeDetalle: TDBEdit;
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
  FormRegimenPercepcion: TFormRegimenPercepcion;

implementation

{$R *.DFM}

procedure TFormRegimenPercepcion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRegimenPercepcion.FormCreate(Sender: TObject);
begin
  inherited;
  AddClientDataSet(CDSRegimen,DSPRegimen);
  CDSRegimen.Open;
  AutoSize:=True;
  Tabla:='REGIMENPERCEPCIONIVA';
  Campo:='Codigo';

end;

procedure TFormRegimenPercepcion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRegimenPercepcion:=nil;
end;

procedure TFormRegimenPercepcion.BuscarExecute(Sender: TObject);
begin
  inherited;
  QBuscaRegimen.Close;
  QBuscaRegimen.OPen;
  if wwBuscador.Execute Then
    if wwBuscador.LookupTable.FieldByName('Codigo').AsString<>'' Then
      begin
        DatoNew:=wwBuscador.LookupTable.FieldByName('Codigo').AsString;
        Recuperar.Execute;
      end;
  QBuscaRegimen.Close;

end;

procedure TFormRegimenPercepcion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRegimen.Close;
  CDSRegimen.Params.ParamByName('Codigo').Value:=StrToInt(DatoNew);
  CDSRegimen.Open;
end;

procedure TFormRegimenPercepcion.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSRegimenCODIGO.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormRegimenPercepcion.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

end.
