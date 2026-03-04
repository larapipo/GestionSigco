unit UMuestraChe3;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, FMTBcd, SqlExpr, Provider, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMuestraChe3 = class(TForm)
    Panel1: TPanel;
    dbgChe: TDBGrid;
    DSChe3: TDataSource;
    CDSChe3: TClientDataSet;
    DSPChe3: TDataSetProvider;
    QCh3: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    Fecha:TDateTime;
    { Public declarations }
  end;

var
  FormMuestraChe3: TFormMuestraChe3;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormMuestraChe3.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraChe3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDSChe3.Close;
  Action:=caFree;
end;

procedure TFormMuestraChe3.FormDestroy(Sender: TObject);
begin
  FormMuestraChe3:=nil;
end;

procedure TFormMuestraChe3.FormShow(Sender: TObject);
begin
  CDSChe3.Close;
  CDSChe3.Params.ParamByName('Fecha').AsDate:=Fecha;
  CDSChe3.Open;
  TFMTBCDField(dbgChe.Fields[5]).DisplayFormat:=',0.00';

end;

end.
