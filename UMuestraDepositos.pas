unit UMuestraDepositos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Grids, DBGrids, ExtCtrls, FMTBcd, Provider, DBClient, SqlExpr,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormMuestraDepositos = class(TForm)
    Panel1: TPanel;
    dbgChe: TDBGrid;
    DSDep: TDataSource;
    CDSDep: TClientDataSet;
    DSPDep: TDataSetProvider;
    CDSDepID: TIntegerField;
    CDSDepFECHA: TSQLTimeStampField;
    CDSDepNUMERO: TStringField;
    CDSDepEFEC_CHEQ: TStringField;
    QDp: TFDQuery;
    CDSDepIMPORTE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgCheDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    Fecha:TDateTime;
    { Public declarations }
  end;

var
  FormMuestraDepositos: TFormMuestraDepositos;

implementation

uses UDepositosBancarios,UDMain_FD;

{$R *.DFM}

procedure TFormMuestraDepositos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSDep.Close;
  IF (Assigned(FormDepositosBancarios)) Then
    FormDepositosBancarios.Close;
  Action:=caFree;
end;

procedure TFormMuestraDepositos.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
end;

procedure TFormMuestraDepositos.FormDestroy(Sender: TObject);
begin
  FormMuestraDepositos:=nil;
end;

procedure TFormMuestraDepositos.FormShow(Sender: TObject);
begin
  CDSDep.Close;
  CDSDep.Params.ParamByName('Fecha').AsDate:=Fecha;
  CDSDep.Open;


end;

procedure TFormMuestraDepositos.dbgCheDblClick(Sender: TObject);
begin
    IF Not(Assigned(FormDepositosBancarios)) Then
    FormDepositosBancarios:=TFormDepositosBancarios.Create(Application);
    FormDepositosBancarios.DatoNew:=CDSDepID.AsString;
    FormDepositosBancarios.Recuperar.Execute;
    FormDepositosBancarios.Next.Enabled:=False;
    FormDepositosBancarios.Prev.Enabled:=False;
    FormDepositosBancarios.Agregar.Enabled:=False;
    FormDepositosBancarios.Buscar.Enabled:=False;
    FormDepositosBancarios.Modificar.Enabled:=False;
    FormDepositosBancarios.Borrar.Enabled:=False;

    //  TFormDepositosBancarios.Show;



end;

end.
