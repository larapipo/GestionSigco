unit UMovPorProductos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ExtCtrls, StdCtrls,
  DBCtrls, ComCtrls, Buttons, frxClass,  frxDBSet,
  frxRich, FMTBcd, SqlExpr, Provider, DBClient,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMovProductos = class(TForm)
    DSMov: TDataSource;
    Panel1: TPanel;
    btImprimir: TBitBtn;
    btSalir: TBitBtn;
    frxReport: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxRichObject: TfrxRichObject;
    CDSMov: TClientDataSet;
    DSPMov: TDataSetProvider;
    CDSMovFECHA: TSQLTimeStampField;
    CDSMovHORAINICIO: TSQLTimeStampField;
    CDSMovDETALLE: TMemoField;
    CDSMovOPERADOR: TStringField;
    CDSMovID: TIntegerField;
    CDSMovID_OTCAB: TIntegerField;
    CDSMovPRUDUCTO: TIntegerField;
    CDSMovCLIENTE: TStringField;
    dbgMov: TDBGrid;
    QM: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure btSalirClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMovProductos: TFormMovProductos;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormMovProductos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMovProductos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMovProductos.FormDestroy(Sender: TObject);
begin
  FormMovProductos:=nil;
end;

procedure TFormMovProductos.btSalirClick(Sender: TObject);
begin
  Close;
end;

procedure TFormMovProductos.btImprimirClick(Sender: TObject);
begin

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\MovProducto.fr3');
  frxReport.ShowReport;

end;

procedure TFormMovProductos.Panel1DblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

end.
