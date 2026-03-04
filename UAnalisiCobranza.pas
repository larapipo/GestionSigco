unit UAnalisiCobranza;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ExtCtrls, Spin, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, Provider,
  DBClient, SqlExpr, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.TeeFunci,
  VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, System.Actions,
  Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ComCtrls, JvAppStorage,
  JvAppIniStorage, Vcl.ActnList, Vcl.Buttons,
  Vcl.ToolWin, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormAnalisisCobranza = class(TFormABMBase)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Series4: TLineSeries;
    Series3: TLineSeries;
    Series6: TLineSeries;
    TeeFunction1: TDivideTeeFunction;
    Series5: TLineSeries;
    Series2: TLineSeries;
    TabSheet2: TTabSheet;
    dbgConsulta: TDBGrid;
    DSConsulta: TDataSource;
    chbHasta30: TCheckBox;
    chbmas30: TCheckBox;
    chbTransferencias: TCheckBox;
    chbRetenciones: TCheckBox;
    chbEfectivo: TCheckBox;
    spAnio: TSpinEdit;
    chbTotal: TCheckBox;
    CDSConsulta: TClientDataSet;
    DSPConsulta: TDataSetProvider;
    CDSConsultaMES: TIntegerField;
    FDQuery1: TFDQuery;
    CDSConsultaTOTAL: TFloatField;
    CDSConsultaDISPONIBLE_EFECTIVO: TFloatField;
    CDSConsultaDISPONIBLE_30: TFloatField;
    CDSConsultaDISPONIBLE_MAS: TFloatField;
    CDSConsultaRETENCIONES: TFloatField;
    CDSConsultaDISPONIBLE_TRANSFERENCIAS: TFloatField;
    CDSConsultaTOTAL_CALCULADO: TFloatField;
    procedure chbHasta30Click(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure spAnioChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    Desde,Hasta:TDateTime;
    { Public declarations }
  end;

var
  FormAnalisisCobranza: TFormAnalisisCobranza;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormAnalisisCobranza.chbHasta30Click(Sender: TObject);
begin
  inherited;
  Series1.Active:=chbTotal.Checked;
  Series2.Active:=chbEfectivo.Checked;
  Series3.Active:=chbHasta30.Checked;
  Series4.Active:=chbmas30.Checked;
  Series5.Active:=chbRetenciones.Checked;
  Series6.Active:=chbTransferencias.Checked;

end;

procedure TFormAnalisisCobranza.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSConsulta.Close;
  CDSConsulta.Params.ParamByName('desde').Value:=Desde;
  CDSConsulta.Params.ParamByName('hasta').Value:=Hasta;
  CDSConsulta.Open;
  TFMTBCDField(dbgConsulta.Fields[1]).DisplayFormat:=',0.00';
  TFMTBCDField(dbgConsulta.Fields[2]).DisplayFormat:=',0.00';
  TFMTBCDField(dbgConsulta.Fields[3]).DisplayFormat:=',0.00';
  TFMTBCDField(dbgConsulta.Fields[4]).DisplayFormat:=',0.00';
  TFMTBCDField(dbgConsulta.Fields[5]).DisplayFormat:=',0.00';
  TFMTBCDField(dbgConsulta.Fields[6]).DisplayFormat:=',0.00';
end;

procedure TFormAnalisisCobranza.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Desde:=EncodeDate(y,1,1);
  Hasta:=EncodeDate(y,12,DaysInMonth(y,12));
  spAnio.Value:=y;
  Buscar.Execute;
  //  Desde.SetFocus;
end;


procedure TFormAnalisisCobranza.spAnioChange(Sender: TObject);
begin
  inherited;
  Desde:=EncodeDate(spAnio.Value,1,1);
  Hasta:=EncodeDate(spAnio.Value,12,DaysInMonth(spAnio.Value,12));
  Buscar.Execute;

end;

procedure TFormAnalisisCobranza.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAnalisisCobranza.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormAnalisisCobranza.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAnalisisCobranza:=nil;
end;

end.
