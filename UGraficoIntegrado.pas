unit UGraficoIntegrado;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,
  ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Spin,  ActnMan,
  ActnColorMaps, ImgList, JvExControls, JvGradient, JvComponentBase,
  JvFormPlacement, JvLabel, JvDBControls, FMTBcd, Provider, DBClient, SqlExpr,
  VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, System.Actions, JvAppStorage, JvAppIniStorage,
  Data.DB, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormGraficoIntegrado = class(TFormABMBase)
    spAnio: TSpinEdit;
    chbVtaCC: TCheckBox;
    chbNotaCreVta: TCheckBox;
    chbVtaCtdo: TCheckBox;
    chbNDVta: TCheckBox;
    chbCompraCtaCTe: TCheckBox;
    chbNCCompra: TCheckBox;
    chbCompraCtdo: TCheckBox;
    chbNDCompra: TCheckBox;
    chbCobranza: TCheckBox;
    chbPagos: TCheckBox;
    chbGastos: TCheckBox;
    CheBox: TAction;
    chb3d: TCheckBox;
    chbOrtogonal: TCheckBox;
    tbRotacion: TTrackBar;
    tbElevacion: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
    CDSVtaFC: TClientDataSet;
    DSPVtaFC: TDataSetProvider;
    CDSVtaNC: TClientDataSet;
    DSPVtaNC: TDataSetProvider;
    CDSVtaFO: TClientDataSet;
    DSPVtaFO: TDataSetProvider;
    CDSVtaND: TClientDataSet;
    DSPVtaND: TDataSetProvider;
    CDSCompND: TClientDataSet;
    DSPCompND: TDataSetProvider;
    CDSCompFO: TClientDataSet;
    DSPCompFO: TDataSetProvider;
    QVtaFC: TSQLQuery;
    QVtaNC: TSQLQuery;
    QVtaFO: TSQLQuery;
    QVtaND: TSQLQuery;
    QCompND: TSQLQuery;
    QCompFO: TSQLQuery;
    CDSCobranza: TClientDataSet;
    DSPCobranza: TDataSetProvider;
    CDSPagos: TClientDataSet;
    DSPPagos: TDataSetProvider;
    CDSGastos: TClientDataSet;
    DSPGastos: TDataSetProvider;
    CDSCompNC: TClientDataSet;
    DSPCompNC: TDataSetProvider;
    CDSCompFC: TClientDataSet;
    DSPCompFC: TDataSetProvider;
    QCobranza: TSQLQuery;
    QPagos: TSQLQuery;
    QGastos: TSQLQuery;
    QCompNC: TSQLQuery;
    QCompFC: TSQLQuery;
    chNetosSinIva: TCheckBox;
    Panel2: TPanel;
    dbGrafico: TDBChart;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series5: TLineSeries;
    Series6: TLineSeries;
    Series7: TLineSeries;
    Series8: TLineSeries;
    Series9: TAreaSeries;
    Series10: TAreaSeries;
    Series11: TLineSeries;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure spAnioChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CheBoxExecute(Sender: TObject);
    procedure chb3dClick(Sender: TObject);
    procedure chbOrtogonalClick(Sender: TObject);
    procedure tbRotacionChange(Sender: TObject);
    procedure tbElevacionChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    Desde,Hasta:TDateTime;
    { Public declarations }
  end;

var
  FormGraficoIntegrado: TFormGraficoIntegrado;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormGraficoIntegrado.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Desde:=EncodeDate(y,1,1);
  Hasta:=EncodeDate(y,12,DaysInMonth(y,12));
  spAnio.Value:=y;
  Buscar.Execute;

  //  Desde.SetFocus;
end;

procedure TFormGraficoIntegrado.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVtaFC.Close;
  CDSVtaNC.Close;
  CDSVtaFO.Close;
  CDSVtaND.Close;

  CDSCompFC.Close;
  CDSCompNC.Close;
  CDSCompFO.Close;
  CDSCompND.Close;

  CDSCobranza.Close;
  CDSPagos.Close;
  CDSGastos.Close;

  CDSVtaFC.Params.ParamByName('desde').Value:=Desde;
  CDSVtaNC.Params.ParamByName('desde').Value:=Desde;
  CDSVtaFO.Params.ParamByName('desde').Value:=Desde;
  CDSVtaND.Params.ParamByName('desde').Value:=Desde;

  CDSVtaFC.Params.ParamByName('hasta').Value:=Hasta;
  CDSVtaNC.Params.ParamByName('hasta').Value:=Hasta;
  CDSVtaFO.Params.ParamByName('hasta').Value:=Hasta;
  CDSVtaND.Params.ParamByName('hasta').Value:=Hasta;

  CDSCompFC.Params.ParamByName('desde').Value:=Desde;
  CDSCompNC.Params.ParamByName('desde').Value:=Desde;
  CDSCompFO.Params.ParamByName('desde').Value:=Desde;
  CDSCompND.Params.ParamByName('desde').Value:=Desde;

  CDSCompFC.Params.ParamByName('hasta').Value:=Hasta;
  CDSCompNC.Params.ParamByName('hasta').Value:=Hasta;
  CDSCompFO.Params.ParamByName('hasta').Value:=Hasta;
  CDSCompND.Params.ParamByName('hasta').Value:=Hasta;

  CDSCobranza.Params.ParamByName('desde').Value:=Desde;
  CDSPagos.Params.ParamByName('desde').Value   :=Desde;
  CDSGastos.Params.ParamByName('desde').Value  :=Desde;

  CDSCobranza.Params.ParamByName('hasta').Value:=Hasta;
  CDSPagos.Params.ParamByName('hasta').Value   :=Hasta;
  CDSGastos.Params.ParamByName('hasta').Value  :=Hasta;


  CDSVtaFC.Open;
  CDSVtaNC.Open;
  CDSVtaFO.Open;
  CDSVtaND.Open;

  CDSCompFC.Open;
  CDSCompNC.Open;
  CDSCompFO.Open;
  CDSCompND.Open;

  CDSCobranza.Open;
  CDSPagos.Open;
  CDSGastos.Open;
  if (chNetosSinIva.Checked=True) then
    begin
      Series1.MandatoryValueList.ValueSource:='TOTAL_NETO';
      Series2.MandatoryValueList.ValueSource:='TOTAL_NETO';
      Series3.MandatoryValueList.ValueSource:='TOTAL_NETO';
      Series4.MandatoryValueList.ValueSource:='TOTAL_NETO';
    end
  else
    begin
      Series1.MandatoryValueList.ValueSource:='TOTAL';
      Series2.MandatoryValueList.ValueSource:='TOTAL';
      Series3.MandatoryValueList.ValueSource:='TOTAL';
      Series4.MandatoryValueList.ValueSource:='TOTAL';
    end

        //Series1.MandatoryValueList.ValueSource:='TOTAL';

end;

procedure TFormGraficoIntegrado.spAnioChange(Sender: TObject);
begin
  inherited;
  Desde:=EncodeDate(spAnio.Value,1,1);
  Hasta:=EncodeDate(spAnio.Value,12,DaysInMonth(spAnio.Value,12));
  Buscar.Execute;

end;

procedure TFormGraficoIntegrado.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CDSVtaFC.Close;
  CDSVtaNC.Close;
  CDSVtaFO.Close;
  CDSVtaND.Close;

  CDSCompFC.Close;
  CDSCompNC.Close;
  QCompFO.Close;
  CDSCompND.Close;

end;

procedure TFormGraficoIntegrado.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

procedure TFormGraficoIntegrado.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGraficoIntegrado:=nil;
end;

procedure TFormGraficoIntegrado.CheBoxExecute(Sender: TObject);
begin
  inherited;
  Series1.Active:=chbVtaCC.Checked;
  Series2.Active:=chbNotaCreVta.Checked;
  Series3.Active:=chbVtaCtdo.Checked;
  Series4.Active:=chbNDVta.Checked;

  Series5.Active:=chbCompraCtaCTe.Checked;
  Series6.Active:=chbNCCompra.Checked;
  Series7.Active:=chbCompraCtdo.Checked;
  Series8.Active:=chbNDCompra.Checked;

  Series9.Active:=chbCobranza.Checked;
  Series10.Active:=chbPagos.Checked;
  Series11.Active:=chbGastos.Checked;

end;

procedure TFormGraficoIntegrado.chb3dClick(Sender: TObject);
begin
  inherited;
  dbGrafico.View3D:=chb3d.Checked;
end;

procedure TFormGraficoIntegrado.chbOrtogonalClick(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Orthogonal:=Not(chbOrtogonal.Checked);
  if chbOrtogonal.Checked Then
    begin
      tbRotacion.Position:=dbGrafico.View3DOptions.Rotation;
      tbElevacion.Position:=dbGrafico.View3DOptions.Elevation;
    end;
end;

procedure TFormGraficoIntegrado.tbRotacionChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Rotation:=tbRotacion.Position;
end;

procedure TFormGraficoIntegrado.tbElevacionChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Elevation:=tBElevacion.Position;
end;

end.
