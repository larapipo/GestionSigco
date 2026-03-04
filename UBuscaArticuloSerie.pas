unit UBuscaArticuloSerie;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, ExtCtrls, StdCtrls, Buttons;

type
  TFormArticulosSeries = class(TForm)
    PnPrincipal: TPanel;
    DSSeries: TDataSource;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
    FCodigo:String;
  public
    { Public declarations }
  published
    property codigo:String read fCodigo Write fCodigo;
  end;

var
  FormArticulosSeries: TFormArticulosSeries;

implementation

uses UConsultaStockXSerie;

{$R *.DFM}

procedure TFormArticulosSeries.DBGrid1DblClick(Sender: TObject);
begin
  Codigo:=DBGrid1.DataSource.DataSet.FieldByName('Codigo_stk').AsString;
  Close;
end;

procedure TFormArticulosSeries.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormArticulosSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormArticulosSeries.FormDestroy(Sender: TObject);
begin
  FormArticulosSeries:=nil;
end;

procedure TFormArticulosSeries.BitBtn1Click(Sender: TObject);
begin
  codigo:='';
  Close;
end;

end.
