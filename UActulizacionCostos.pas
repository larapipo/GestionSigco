unit UActulizacionCostos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, Wwdbigrd, Wwdbgrid, RxLookup, StdCtrls, Db, DBClient,
  Provider, rxrxPlacemnt,  wwDialog, wwidlg, DBTables, ActnList,
  RXClock, RXCtrls, RXDBCtrl, Buttons, ToolWin, ComCtrls, ExtCtrls;

type
  TFormActualizacionCosto = class(TFormABMBase)
    DSPConsultaStock: TDataSetProvider;
    CDSConsultaStock: TClientDataSet;
    QConsultaStock: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    RxDBLookupCombo1: TRxDBLookupCombo;
    RxDBLookupCombo2: TRxDBLookupCombo;
    RxDBLookupCombo3: TRxDBLookupCombo;
    wwDBGrid1: TwwDBGrid;
    DSRubro: TDataSource;
    DSMarca: TDataSource;
    QMarca: TQuery;
    QSubRubro: TQuery;
    DSSubRubro: TDataSource;
    QRubro: TQuery;
    CDSConsultaStockCostoNuevo: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormActualizacionCosto: TFormActualizacionCosto;

implementation

{$R *.DFM}

uses DMMainForm;

procedure TFormActualizacionCosto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormActualizacionCosto.FormDestroy(Sender: TObject);
begin
  inherited;
  FormActualizacionCosto:=nil;
end;

procedure TFormActualizacionCosto.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  AddClientDataSet(CDSConsultaStock,DSPConsultaStock);
  CDSConsultaStock.Open;
  QMarca.Open;
  QRubro.Open;
  QSubRubro.Open;
  pnPrincipal.Enabled:=True;
end;

procedure TFormActualizacionCosto.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSConsultaStock.Close;
  CDSConsultaStock.Params.ParamByName('marca').Value:=QMarca.Fields[0].Value;
  CDSConsultaStock.Params.ParamByName('rubro').Value:=QRubro.Fields[0].Value;
  CDSConsultaStock.Params.ParamByName('subrubro').Value:=QSubRubro.Fields[0].Value;
  CDSConsultaStock.Open;
end;

procedure TFormActualizacionCosto.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

end.
