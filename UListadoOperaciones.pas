unit UListadoOperaciones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, Provider, DBClient, SqlExpr, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ExtCtrls, StdCtrls, Mask, JvExMask, JvToolEdit, JvBaseEdits,
  JvExControls, JvGradient, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormListaPorOperaciones = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    CDSOp: TClientDataSet;
    DSPOp: TDataSetProvider;
    DSOp: TDataSource;
    CDSOpID: TIntegerField;
    CDSOpTIPO: TStringField;
    CDSOpCLASE: TStringField;
    CDSOpFECHA: TSQLTimeStampField;
    CDSOpNUMERO: TStringField;
    CDSOpDETALLE: TStringField;
    edDebe: TJvCalcEdit;
    edHaber: TJvCalcEdit;
    edSaldo: TJvCalcEdit;
    Panel2: TPanel;
    Qop: TFDQuery;
    CDSOpDEBE: TFloatField;
    CDSOpHABER: TFloatField;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    FNro_Op:string;
  public
    { Public declarations }
    procedure sumar;
  published
    property Nro_Op:string read FNro_Op write FNro_op;
  end;

var
  FormListaPorOperaciones: TFormListaPorOperaciones;

implementation


{$R *.dfm}
uses UDMain_FD;

procedure TFormListaPorOperaciones.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSOp.close;
  Action:=caFree;
end;

procedure TFormListaPorOperaciones.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormListaPorOperaciones.FormDestroy(Sender: TObject);
begin
  FormListaPorOperaciones:=nil;
end;

procedure TFormListaPorOperaciones.FormShow(Sender: TObject);
begin
  CDSOp.Close;
  CDSOp.Params.ParamByName('numero_op').Value:=FNro_Op;
  CDSOp.Open;
  sumar;
end;

procedure TFormListaPorOperaciones.Sumar;
var CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSOp,True);
  CDSOp.First;

  while not(CDSClone.Eof) do
    begin
      edDebe.Value :=edDebe.Value+CDSClone.FieldByName('debe').AsFloat;
      edHaber.Value:=edHaber.Value+CDSClone.FieldByName('haber').AsFloat;
      CDSClone.Next;
    end;
  edSaldo.Value:=edDebe.Value-edHaber.Value;  
end;

end.
