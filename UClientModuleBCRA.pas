unit UClientModuleBCRA;

interface

uses
  System.SysUtils, System.Classes, UProxyBCRA, IPPeerClient,
  Datasnap.DSClientRest, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  REST.Response.Adapter, REST.Client, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Types;

type
  TCModuleBCRA = class(TDataModule)
    RESTClient: TRESTClient;
    RESTRequest: TRESTRequest;
    RESTResponse: TRESTResponse;
    RESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
    mtCheque: TFDMemTable;
    mtChequeid: TWideStringField;
    mtChequecuit: TWideStringField;
    mtChequenro_cheque: TWideStringField;
    mtChequefecha_rechazo: TWideStringField;
    mtChequemonto: TWideStringField;
    mtChequecausal: TWideStringField;
    mtChequemuestracausa: TWideStringField;
    mtChequefecha_levantamiento: TWideStringField;
    mtChequeley25326_16: TWideStringField;
    mtChequeley25326_38: TWideStringField;
    mtChequecuit_personajuridica: TWideStringField;
    mtChequepago_multa: TWideStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
end;

var
  CModuleBCRA: TCModuleBCRA;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



procedure TCModuleBCRA.DataModuleDestroy(Sender: TObject);
begin
  CModuleBCRA:=nil;
end;

//procedure TCModuleBCRA.mtChequeCalcFields(DataSet: TDataSet);
//begin
// case mtChequeCAUSAL.Value of
//    1 :mtChequeMUESTRACAUSA.AsString:='rechazo falta de fondos';
//    2 :mtChequeMUESTRACAUSA.AsString:='rechazo motivos formales';
//    3 :mtChequeMUESTRACAUSA.AsString:='falta de fondos y motivos formales';
//    6 :mtChequeMUESTRACAUSA.AsString:='cheque denunciado por el titular';
//    7 :mtChequeMUESTRACAUSA.AsString:='cheque denunciado por el banco';
//    8 :mtChequeMUESTRACAUSA.AsString:='cheque denunciado por un tercero';
//  else
//    mtChequeMUESTRACAUSA.AsString:='SIn Datos';
//  end;
//end;

end.
