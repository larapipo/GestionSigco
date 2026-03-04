unit USeccionPLU;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.DB, Datasnap.Provider, Datasnap.DBClient, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls;

type
  TFormSeccionPLU = class(TForm)
    Panel1: TPanel;
    btAceptar: TBitBtn;
    BitBtn2: TBitBtn;
    dbgSecciones: TJvDBGrid;
    CDSSeccion: TClientDataSet;
    DSPSeccion: TDataSetProvider;
    DSSeccion: TDataSource;
    QSeccion: TFDQuery;
    QSeccionID: TIntegerField;
    QSeccionDETALLE: TStringField;
    QMaxID: TFDQuery;
    CDSSeccionID: TIntegerField;
    CDSSeccionDETALLE: TStringField;
    procedure dbgSeccionesColEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSSeccionAfterPost(DataSet: TDataSet);
    procedure CDSSeccionNewRecord(DataSet: TDataSet);
    procedure CDSSeccionAfterDelete(DataSet: TDataSet);
    procedure dbgSeccionesEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormSeccionPLU: TFormSeccionPLU;

implementation

USES UDMain_FD;
{$R *.dfm}

procedure TFormSeccionPLU.CDSSeccionAfterDelete(DataSet: TDataSet);
begin
  CDSSeccion.ApplyUpdates(0);
end;

procedure TFormSeccionPLU.CDSSeccionAfterPost(DataSet: TDataSet);
begin
  CDSSeccion.ApplyUpdates(0);
end;

procedure TFormSeccionPLU.CDSSeccionNewRecord(DataSet: TDataSet);
begin
  QMaxID.Close;
  QMaxID.Open;
  if QMaxID.Fields[0].AsString='' then
    CDSSeccionID.Value:=1
  else
    CDSSeccionID.Value:= QMaxID.Fields[0].AsInteger + 1;
  QMaxID.Close;
end;

procedure TFormSeccionPLU.dbgSeccionesColEnter(Sender: TObject);
begin
  if dbgSecciones.SelectedIndex=0 then
    dbgSecciones.SelectedIndex:=1;

end;

procedure TFormSeccionPLU.dbgSeccionesEnter(Sender: TObject);
begin
  if dbgSecciones.SelectedIndex=0 then
    dbgSecciones.SelectedIndex:=1;
end;

procedure TFormSeccionPLU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSSeccion.Close;
  Action:=caFree;
end;

procedure TFormSeccionPLU.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  CDSSeccion.Open;
end;

procedure TFormSeccionPLU.FormDestroy(Sender: TObject);
begin
 FormSeccionPLU:=nil;
end;

procedure TFormSeccionPLU.FormShow(Sender: TObject);
begin
  if dbgSecciones.SelectedIndex=0 then
    dbgSecciones.SelectedIndex:=1;
end;

end.
