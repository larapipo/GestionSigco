unit UAplicacionesNCVenta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, ActnList, DBClient, Provider, StdCtrls, Buttons, Grids,
  DBGrids, FMTBcd, SqlExpr, DBXCommon, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormAplicacionesNCVta = class(TForm)
    dbgAplicaciones: TDBGrid;
    BitBtn1: TBitBtn;
    DSAplica: TDataSource;
    DSPAplica: TDataSetProvider;
    CDSAplica: TClientDataSet;
    ActionList1: TActionList;
    Borrar: TAction;
    Cerrar: TAction;
    QAplica: TFDQuery;
    CDSAplicaID_MOV: TIntegerField;
    CDSAplicaID_MOVCCVTA: TIntegerField;
    CDSAplicaFECHA: TSQLTimeStampField;
    CDSAplicaCLIENTE: TStringField;
    CDSAplicaID_CPBTE: TIntegerField;
    CDSAplicaTIPOCPBTE: TStringField;
    CDSAplicaCLASECPBTE: TStringField;
    CDSAplicaNUMEROCPBTE: TStringField;
    CDSAplicaIMPORTE: TFloatField;
    CDSAplicaAPLICA_ID_CPBTE: TIntegerField;
    CDSAplicaAPLICA_TIPOCPBTE: TStringField;
    CDSAplicaAPLICA_CLASECPBTE: TStringField;
    CDSAplicaAPLICA_NROCPBTE: TStringField;
    CDSAplicaDETALLE: TStringField;
    QAplicaID_MOV: TIntegerField;
    QAplicaID_MOVCCVTA: TIntegerField;
    QAplicaFECHA: TSQLTimeStampField;
    QAplicaCLIENTE: TStringField;
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
    procedure CDSAplicaBeforeDelete(DataSet: TDataSet);
    procedure BorrarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CerrarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAplicacionesNCVta: TFormAplicacionesNCVta;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormAplicacionesNCVta.CDSAplicaBeforeDelete(DataSet: TDataSet);
begin
   if (CDSAplica.IsEmpty) Then
    begin
      CDSAplica.Cancel;
      ShowMessage('No hay registros para borrar');
    end;

end;

procedure TFormAplicacionesNCVta.BorrarExecute(Sender: TObject);
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

procedure TFormAplicacionesNCVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSAplica.Close;
  Action:=caFree;
end;

procedure TFormAplicacionesNCVta.FormDestroy(Sender: TObject);
begin
  FormAplicacionesNCVta:=nil;
end;

procedure TFormAplicacionesNCVta.CerrarExecute(Sender: TObject);
begin
  Close;
end;

end.
