unit UListaBuscadorOrdenCompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB,   Grids, DBGrids, ExtCtrls, JvComponentBase, JvFormMagnet,
  StdCtrls, FMTBcd, SqlExpr, Provider, DBClient, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormListaOrdenCompra = class(TForm)
    DSOc: TDataSource;
    Panel1: TPanel;
    dbgOC: TDBGrid;
    btn1: TButton;
    CDSOc: TClientDataSet;
    DSPOc: TDataSetProvider;
    CDSOcID_OC: TIntegerField;
    CDSOcNROCPBTE: TStringField;
    CDSOcFECHA: TSQLTimeStampField;
    QOc: TFDQuery;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgOCEndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure dbgOCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgOCDblClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private

    { Private declarations }
  public
    FCodigo:String;
    FVTop   :Integer;
    FVLeft  :Integer;
    { Public declarations }
  published
    property codigo :string read FCodigo write FCodigo;
    property VTop :Integer read FVTop write FVTop;
    property VLeft:Integer read FVLeft write FVLeft;

  end;

var
  FormListaOrdenCompra: TFormListaOrdenCompra;

implementation

uses UCompra_2, UOrdenCompra, UDMain_FD;

{$R *.dfm}

procedure TFormListaOrdenCompra.btn1Click(Sender: TObject);
begin
  if CDSOcID_OC.AsString<>''  then
    begin
      if Not(Assigned(FormOrdenCompra)) then
        FormordenCompra:=TFormordenCompra.Create(Self);
      FormOrdenCompra.DatoNew    :=CDSOcID_OC.AsString;
      FormOrdenCompra.TipoCpbte  :='OC';
      FormOrdenCompra.Recuperar.Execute;
      FormOrdenCompra.Show;
    end;
end;

procedure TFormListaOrdenCompra.dbgOCDblClick(Sender: TObject);
begin
  dbgOC.DragMode:=dmAutomatic;
  FormCompra_2.DBGOCompraDragDrop( Sender, DBGOc,10,10);
  dbgOC.DragMode:=dmManual;
end;

procedure TFormListaOrdenCompra.dbgOCEndDrag(Sender, Target: TObject; X,
  Y: Integer);
begin
 dbgOC.DragMode:=dmManual;
end;

procedure TFormListaOrdenCompra.dbgOCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
 if Y<=16 Then
    dbgOC.DragMode:=dmManual
  else
    dbgOC.DragMode:=dmAutomatic;
end;

procedure TFormListaOrdenCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormListaOrdenCompra.FormCreate(Sender: TObject);
begin
  AutoSize:=true;

end;

procedure TFormListaOrdenCompra.FormDestroy(Sender: TObject);
begin
  FormListaOrdenCompra:=nil;
end;

procedure TFormListaOrdenCompra.FormShow(Sender: TObject);
begin
  CDSOc.Close;
  CDSOc.Params.ParamByName('codigo').Value:=FCodigo;
  CDSOc.Open;
  Left:=VLeft;
  Top:=VTop;
end;

end.
