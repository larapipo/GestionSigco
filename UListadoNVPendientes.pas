unit UListadoNVPendientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, DB, DBClient, Provider, ImgList, ActnList, ComCtrls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids,
  Data.FMTBcd, JvDBGrid, JvAppStorage, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.Actions, JvLabel, JvDBControls,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormListadoNVPendientes = class(TFormABMBase)
    DSPNVCab: TDataSetProvider;
    CDSNVCab: TClientDataSet;
    CDSNVDet: TClientDataSet;
    DSPNVDet: TDataSetProvider;
    DSNVCab: TDataSource;
    DSNVDet: TDataSource;
    dbgCab: TJvDBGrid;
    dbgDet: TJvDBGrid;
    QNVCab: TSQLQuery;
    CDSNVCabID: TIntegerField;
    CDSNVCabNROCPBTE: TStringField;
    CDSNVCabSUBNRO: TStringField;
    CDSNVCabCODIGO: TStringField;
    CDSNVCabSUCURSAL: TIntegerField;
    CDSNVCabLDR: TIntegerField;
    CDSNVCabNOMBRE: TStringField;
    CDSNVCabRAZONSOCIAL: TStringField;
    CDSNVCabDIRECCION: TStringField;
    CDSNVCabCPOSTAL: TStringField;
    CDSNVCabLOCALIDAD: TStringField;
    CDSNVCabFECHAPEDIDO: TSQLTimeStampField;
    QNVDet: TSQLQuery;
    CDSNVDetID: TIntegerField;
    CDSNVDetID_CAB: TIntegerField;
    CDSNVDetCODIGOARTICULO: TStringField;
    CDSNVDetDETALLE: TStringField;
    CDSNVDetCANTIDAD_PEDIDIA: TFMTBCDField;
    CDSNVDetCANTIDAD_ENTREGADA: TFMTBCDField;
    CDSNVDetCANTIDAD_FALTANTE: TFMTBCDField;
    CDSNVDetUNITARIO_TOTAL: TFMTBCDField;
    procedure BuscarExecute(Sender: TObject);
    procedure CDSNVCabAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgCabDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoNVPendientes: TFormListadoNVPendientes;

implementation

uses UNotaVenta,UDMain_FD;

{$R *.dfm}

procedure TFormListadoNVPendientes.BuscarExecute(Sender: TObject);
begin
  //inherited;
  CDSNVCab.Close;
  CDSNVCab.Open;
  CDSNVDet.Close;
  CDSNVDet.Params.ParamByName('id').Value:=CDSNVCabID.Value;
  CDSNVDet.Open;

end;

procedure TFormListadoNVPendientes.CDSNVCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSNVDet.Close;
  CDSNVDet.Params.ParamByName('id').Value:=CDSNVCabID.Value;
  CDSNVDet.Open;
end;

procedure TFormListadoNVPendientes.dbgCabDblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormNotaVta)) then
    FormNotaVta:=TFormNotaVta.Create(Self);
  formNotaVta.DatoNew:=CDSNVCabID.AsString;
  FormNotaVta.Recuperar.Execute;
  formNotaVta.Show;
end;

procedure TFormListadoNVPendientes.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormListadoNVPendientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoNVPendientes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoNVPendientes:=nil;
end;

procedure TFormListadoNVPendientes.FormShow(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
