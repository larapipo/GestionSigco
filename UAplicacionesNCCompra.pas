unit UAplicacionesNCCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, Provider, Db, Grids, DBGrids, StdCtrls, Buttons,
  ActnList, FMTBcd, SqlExpr,DBXCommon, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAplicacionesNCCompra = class(TForm)
    DBGrid1: TDBGrid;
    DSAplica: TDataSource;
    DSPAplica: TDataSetProvider;
    CDSAplica: TClientDataSet;
    btBorrar: TBitBtn;
    ActionList1: TActionList;
    Borrar: TAction;
    Cerrar: TAction;
    CDSAplicaID_MOV: TIntegerField;
    CDSAplicaID_MOVCCCOMPRA: TIntegerField;
    CDSAplicaFECHA: TSQLTimeStampField;
    CDSAplicaPROVEEDOR: TStringField;
    CDSAplicaID_CPBTE: TIntegerField;
    CDSAplicaTIPOCPBTE: TStringField;
    CDSAplicaCLASECPBTE: TStringField;
    CDSAplicaNUMEROCPBTE: TStringField;
    CDSAplicaAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicaAPLICA_TIPOCPBTE: TStringField;
    CDSAplicaAPLICA_CLASECPBTE: TStringField;
    CDSAplicaAPLICA_NROCPBTE: TStringField;
    CDSAplicaDETALLE: TStringField;
    CDSAplicaCONCILIADO: TStringField;
    QAplica: TFDQuery;
    CDSAplicaIMPORTE: TFloatField;
    CDSAplicaAPLICA_NETO: TFloatField;
    CDSAplicaAPLICA_IVA: TFloatField;
    QAplicaID_MOV: TIntegerField;
    QAplicaID_MOVCCCOMPRA: TIntegerField;
    QAplicaFECHA: TSQLTimeStampField;
    QAplicaPROVEEDOR: TStringField;
    QAplicaID_CPBTE: TIntegerField;
    QAplicaTIPOCPBTE: TStringField;
    QAplicaCLASECPBTE: TStringField;
    QAplicaNUMEROCPBTE: TStringField;
    QAplicaIMPORTE: TFloatField;
    QAplicaAPLICA_ID_CPBTE: TIntegerField;
    QAplicaAPLICA_TIPOCPBTE: TStringField;
    QAplicaAPLICA_CLASECPBTE: TStringField;
    QAplicaAPLICA_NROCPBTE: TStringField;
    QAplicaDETALLE: TStringField;
    QAplicaAPLICA_NETO: TFloatField;
    QAplicaCONCILIADO: TStringField;
    QAplicaAPLICA_IVA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSAplicaBeforeDelete(DataSet: TDataSet);
    procedure CerrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAplicacionesNCCompra: TFormAplicacionesNCCompra;

implementation

uses UDMain_FD;

{$R *.DFM}



procedure TFormAplicacionesNCCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSAplica.Close;
  Action:=caFree;
end;

procedure TFormAplicacionesNCCompra.FormDestroy(Sender: TObject);
begin
  FormAplicacionesNCCompra:=nil;
end;

procedure TFormAplicacionesNCCompra.BorrarExecute(Sender: TObject);
begin
  if Not(CDSAplica.IsEmpty) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        CDSAplica.Delete;
        CDSAplica.ApplyUpdates(0);
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Operación no realizada...');
      end;
    end
  else
    ShowMessage('No hay datos para borrar...');

end;

procedure TFormAplicacionesNCCompra.CDSAplicaBeforeDelete(
  DataSet: TDataSet);
begin
   if (CDSAplica.IsEmpty) Then
    begin
      CDSAplica.Cancel;
      ShowMessage('No hay registros para borrar');
    end;
end;



procedure TFormAplicacionesNCCompra.CerrarExecute(Sender: TObject);
begin
  Close;
end;

end.
