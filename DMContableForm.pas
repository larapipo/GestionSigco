unit DMContableForm;

interface

uses
  Db, DBClient,Windows,
  Provider, Classes, Forms,SysUtils,Dialogs, WideStrings, SqlExpr,
  FMTBcd, Data.DBXInterBase, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Phys.FB, FireDAC.Comp.UI,
  FireDAC.Phys.IBBase, FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Phys.FBDef;

type
  TDMContable = class(TDataModule)
    QBuscadorCtasCont: TFDQuery;
    spABMCuenta: TFDStoredProc;
    fdcContables: TFDConnection;
    QBuscadorCtasContID: TIntegerField;
    QBuscadorCtasContCODIGO: TStringField;
    QBuscadorCtasContDESCRIPCION: TStringField;
    QBuscadorCtasContSALDO: TFloatField;
    QBuscadorCtasContTIPOCUENTA: TStringField;
    QBuscadorCtasContSUMARIZA: TIntegerField;
    QBuscadorCtasContCOLUMNA: TSmallintField;
    QBuscadorCtasContSALDOINICIAL: TFloatField;
    QBuscadorCtasContDEBITOS: TFloatField;
    QBuscadorCtasContCREDITOS: TFloatField;
    QBuscadorCtasContCODSUM: TStringField;
    QBuscadorCtasContCODANT: TStringField;
    QBuscadorCtasContSTOCK: TStringField;
    QBuscadorCtasContMONETARIA: TStringField;
    QBuscadorCtasContIDCUENTAACTUALIZACION: TStringField;
    QBuscadorCtasContRESULTADO: TStringField;
    QBuscadorCtasContIDCONSULTA: TIntegerField;
    QBuscadorCtasContORDEN: TIntegerField;
    QBuscaCta_Codigo: TFDQuery;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
    FIdCta:Integer;
  public
    //
  published
    Function GetIdCta(Codigo:String):Integer;
 //   property IdCta:Integer read GetIdCta;    { Public declarations }
  end;

var
  DMContable: TDMContable;


implementation

{$R *.DFM}


procedure TDMContable.DataModuleDestroy(Sender: TObject);
begin
  DMContable := nil;
end;

function TDMContable.GetIdCta(Codigo:String): Integer;
begin
  QBuscaCta_Codigo.Close;
  QBuscaCta_Codigo.ParamByName('codigo').Value:=Trim(Codigo);
  QBuscaCta_Codigo.Open;
  if QBuscaCta_Codigo.Fields[0].AsString<>'' then
    Result:=QBuscaCta_Codigo.Fields[0].AsInteger
  else
    Result:=-1;


end;

end.

