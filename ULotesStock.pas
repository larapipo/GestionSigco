unit ULotesStock;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormLotesStock = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    DSLotes: TDataSource;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    FCodigo:string;
  public
    { Public declarations }
  published
    property Codigo:string read FCodigo write FCodigo;
  end;

var
  FormLotesStock: TFormLotesStock;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormLotesStock.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
 // DSLotes.DataSet:=Q;
end;

procedure TFormLotesStock.FormShow(Sender: TObject);
Var Q:TFDQuery;
begin
  Q:=TFdQuery.Create(nil);
  Q.Connection:=DMMain_FD.fdcGestion;
  q.sql.text:='select s.fecha_entrada as Ingreso,s.fecha_vto as Vencimiento,d.nombre as Deposito, s.lote,s.cantidad,s.saldo from stock_lotes_impo s '+
              ' left join depositos d on d.id=s.deposito '+
              'where s.codigo='+FCodigo;

  DSLotes.DataSet:=Q;
  Q.open;
  AutoSize:=True;
  AutoSize:=False;
end;

end.
