unit UFPago_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBCtrls, StdCtrls, Mask,  Db, ActnList, ImgList, Buttons, ToolWin, ComCtrls,
  ExtCtrls, DBClient, Provider, JvComponentBase, JvExControls, JvGradient,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormFormaPago_2 = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dbeNombre: TDBEdit;
    debCotizacion: TDBEdit;
    dbeSigno: TDBEdit;
    dbeCodigo: TDBEdit;
    dbcTipoPago: TDBLookupComboBox;
    DSPFPago: TDataSetProvider;
    DSMoneda: TDataSource;
    Label6: TLabel;
    dbcmoneda: TDBLookupComboBox;
    CDSFPago: TClientDataSet;
    CDSFPagoID_FPAGO: TIntegerField;
    CDSFPagoID_TPAGO: TIntegerField;
    CDSFPagoDESCRIPCION: TStringField;
    CDSFPagoSIGNO: TStringField;
    CDSFPagoMONEDA: TIntegerField;
    DSBuscaTipoPago: TDataSource;
    QBuscaFPago: TFDQuery;
    CDSBuscaFPago: TClientDataSet;
    DSPBuscaFPago: TDataSetProvider;
    CDSBuscaFPagoID_FPAGO: TIntegerField;
    CDSBuscaFPagoID_TPAGO: TIntegerField;
    CDSBuscaFPagoDESCRIPCION: TStringField;
    CDSBuscaFPagoCOTIZACION: TFloatField;
    CDSBuscaFPagoSIGNO: TStringField;
    CDSBuscaFPagoMONEDA: TIntegerField;
    QBuscaTipoPago: TFDQuery;
    CDSBuscaTipoPago: TClientDataSet;
    DSPBuscaTipoPago: TDataSetProvider;
    CDSBuscaTipoPagoID_TPAGO: TIntegerField;
    CDSBuscaTipoPagoDETALLE: TStringField;
    CDSFPagoCOTIZACION: TFloatField;
    QMon: TFDQuery;
    CDSMoneda: TClientDataSet;
    DSPMoneda: TDataSetProvider;
    CDSMonedaID: TIntegerField;
    CDSMonedaMONEDA: TStringField;
    CDSMonedaCOTIZACION: TFloatField;
    CDSMonedaSIGNO: TStringField;
    CDSMonedaORDEN: TSmallintField;
    CDSMonedaCOTIZACION_COMPRA: TFloatField;
    CDSFPagoACUMULABLE: TStringField;
    DBCheckBox1: TDBCheckBox;
    QFPago: TFDQuery;
    QFPagoID_FPAGO: TIntegerField;
    QFPagoID_TPAGO: TIntegerField;
    QFPagoDESCRIPCION: TStringField;
    QFPagoCOTIZACION: TFloatField;
    QFPagoSIGNO: TStringField;
    QFPagoMONEDA: TIntegerField;
    QFPagoACUMULABLE: TStringField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbcmonedaClick(Sender: TObject);
    procedure CDSFPagoNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFormaPago_2: TFormFormaPago_2;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormFormaPago_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaFPago.Close;
  CDSBuscaFPago.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk Then
    BEGIN
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    END;
  CDSBuscaFPAgo.Close;
end;

procedure TFormFormaPago_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde :=2;
  AddClientDataSet(CDSFPago,DSPFPago);
  CDSFPago.Open;
  Tabla:='FormaPago';
  Campo:='ID_FPAGO';
  CDSBuscaTipoPago.Open;
  CDSMoneda.Open;
end;

procedure TFormFormaPago_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSFPago.Close;
  CDSBuscaTipoPago.Close;
  CDSMoneda.Close;
  Action:=caFree;
end;

procedure TFormFormaPago_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFormaPago_2:=NIL;
end;

procedure TFormFormaPago_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormFormaPago_2.AgregarExecute(Sender: TObject);
begin
  inherited;
  dbeCodigo.SetFocus;
end;

procedure TFormFormaPago_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSFPago.Close;
  CDSFPago.Params.ParamByName('id').Value := DatoNew;
  CDSFPago.Open;
end;

procedure TFormFormaPago_2.CDSFPagoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSFPagoID_FPago.Value:=1
  else
    CDSFPagoID_FPago.Value := QUltimoCodigo2.Fields[0].Value + 1;
  QUltimoCodigo2.Close;
  CDSFPagoACUMULABLE.Value:='S';
end;

procedure TFormFormaPago_2.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=CDSFPagoID_FPAGO.AsString;
  inherited;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormFormaPago_2.dbcmonedaClick(Sender: TObject);
begin
  inherited;
  CDSFPagoCOTIZACION.AsFloat := dbcmoneda.ListSource.DataSet.FieldByName('cotizacion').AsFloat;
  CDSFPagoSIGNO.Value        := dbcmoneda.ListSource.DataSet.FieldByName('signo').Value;

end;

end.
