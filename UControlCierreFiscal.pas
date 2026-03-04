unit UControlCierreFiscal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, Grids, DBGrids, Db, ActnList,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, Vcl.StdCtrls, Vcl.ExtCtrls, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.ComCtrls, Vcl.Buttons, Vcl.ToolWin,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormCierresFiscales = class(TFormABMBase)
    DBGrid1: TDBGrid;
    CDSFiscal: TClientDataSet;
    DSPFiscal: TDataSetProvider;
    RadioGroup1: TRadioGroup;
    CDSFiscalID: TIntegerField;
    CDSFiscalCOMPRA_VENTA: TStringField;
    CDSFiscalMES: TIntegerField;
    CDSFiscalANIO: TSmallintField;
    QFiscal: TFDQuery;
    QFiscalID: TIntegerField;
    QFiscalCOMPRA_VENTA: TStringField;
    QFiscalMES: TIntegerField;
    QFiscalANIO: TIntegerField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSFiscalAfterPost(DataSet: TDataSet);
    procedure ConfirmaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCierresFiscales: TFormCierresFiscales;

implementation

{$R *.DFM}

uses UDMain_FD;

procedure TFormCierresFiscales.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFiscal.Close;
  if RadioGroup1.ItemIndex=0 Then
    CDSFiscal.Params.ParamByName('tipo').value:='C'
  else
    CDSFiscal.Params.ParamByName('tipo').value:='V';
  CDSFiscal.Open;
  pnPrincipal.Enabled:=true;
end;

procedure TFormCierresFiscales.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormCierresFiscales.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AddClientDataSet(CDSFiscal,DSPFiscal );
  RadioGroup1.ItemIndex:=0;
  CDSFiscal.Open;
end;

procedure TFormCierresFiscales.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCierresFiscales:=nil;
end;



procedure TFormCierresFiscales.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=true;
end;

procedure TFormCierresFiscales.CDSFiscalAfterPost(DataSet: TDataSet);
begin
  inherited;
  //CDSFiscal.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormCierresFiscales.ConfirmaExecute(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

end.
