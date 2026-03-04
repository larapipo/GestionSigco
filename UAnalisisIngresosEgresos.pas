unit UAnalisisIngresosEgresos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Db, StdCtrls, Buttons, Mask,
  ComCtrls, FMTBcd, SqlExpr, Provider, DBClient, JvExMask, JvToolEdit,
  VclTee.TeeGDIPlus, VCLTee.Series, VCLTee.TeEngine, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TFormAnalisisEgresosIngresos = class(TForm)
    Panel1: TPanel;
    CDSIngresos: TClientDataSet;
    DSPIngresos: TDataSetProvider;
    CDSIngresosID_TPAGO: TIntegerField;
    CDSIngresosDETALLE: TStringField;
    CDSEgresos: TClientDataSet;
    DSPEgresos: TDataSetProvider;
    CDSEgresosID_TPAGO: TIntegerField;
    CDSEgresosDETALLE: TStringField;
    CDSDetalleIngresos: TClientDataSet;
    DSPDetalleIngresos: TDataSetProvider;
    CDSDetalleIngresosTIPO_OPERACION: TStringField;
    CDSDetalleIngresosTIPO_COMPROB: TStringField;
    CDSDetalleIngresosDETALLE: TStringField;
    CDSDetalleIngresosID_TPAGO: TIntegerField;
    CDSDetalleIngresosDETALLE_1: TStringField;
    CDSEgresoEfectivo: TClientDataSet;
    DSPEgresoEfectivo: TDataSetProvider;
    CDSEgresoEfectivoTIPO_OPERACION: TStringField;
    CDSEgresoEfectivoTIPO_COMPROB: TStringField;
    CDSEgresoEfectivoDETALLE: TStringField;
    CDSEgresoEfectivoID_TPAGO: TIntegerField;
    CDSEgresoEfectivoDETALLE_1: TStringField;
    Panel2: TPanel;
    DBChart3: TDBChart;
    Series3: TBarSeries;
    Splitter1: TSplitter;
    DBChart4: TDBChart;
    BarSeries1: TBarSeries;
    Panel3: TPanel;
    Splitter2: TSplitter;
    DBChart1: TDBChart;
    Label1: TLabel;
    Label2: TLabel;
    SpeedButton1: TSpeedButton;
    UpDown1: TUpDown;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Series1: TPieSeries;
    Splitter3: TSplitter;
    DBChart2: TDBChart;
    Series2: TBarSeries;
    QIngresos: TFDQuery;
    CDSIngresosSUM: TFloatField;
    CDSIngresosSUM_1: TFloatField;
    QEgresos: TFDQuery;
    CDSEgresosSUM: TFloatField;
    CDSEgresosSUM_1: TFloatField;
    QDetalleIngresos: TFDQuery;
    CDSDetalleIngresosSUM: TFloatField;
    CDSDetalleIngresosSUM_1: TFloatField;
    QEgresoEfectivo: TFDQuery;
    CDSEgresoEfectivoSUM: TFloatField;
    CDSEgresoEfectivoSUM_1: TFloatField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnalisisEgresosIngresos: TFormAnalisisEgresosIngresos;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormAnalisisEgresosIngresos.BitBtn1Click(Sender: TObject);
begin
  //Series1.visible:=True;
end;

procedure TFormAnalisisEgresosIngresos.FormCreate(Sender: TObject);
begin
  CDSIngresos.Open;
  CDSEgresos.Open;
  CDSDetalleIngresos.Open;
  CDSEgresoEfectivo.Open;
  AutoSize:=True;
end;

procedure TFormAnalisisEgresosIngresos.SpeedButton1Click(Sender: TObject);
begin
  CDSIngresos.Close;
  CDSEgresos.Close;
  CDSEgresoEfectivo.Close;
  CDSDetalleIngresos.Close;

  CDSIngresos.Params.ParamByName('Desde').AsDate  :=Desde.Date;
  CDSIngresos.Params.ParamByName('Hasta').AsDate  :=Hasta.Date;

  CDSEgresos.Params.ParamByName('Desde').AsDate       :=Desde.Date;
  CDSEgresos.Params.ParamByName('Hasta').AsDate       :=Hasta.Date;

  CDSEgresoEfectivo.Params.ParamByName('Desde').AsDate :=Desde.Date;
  CDSEgresoEfectivo.Params.ParamByName('Hasta').AsDate :=Hasta.Date;

  CDSDetalleIngresos.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSDetalleIngresos.Params.ParamByName('Hasta').AsDate:=Hasta.Date;

  CDSIngresos.Open;
  CDSEgresos.Open;
  CDSEgresoEfectivo.Open;
  CDSDetalleIngresos.Open;

end;

procedure TFormAnalisisEgresosIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormAnalisisEgresosIngresos.FormDestroy(Sender: TObject);
begin
  FormAnalisisEgresosIngresos:=nil;
end;

procedure TFormAnalisisEgresosIngresos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
end;

procedure TFormAnalisisEgresosIngresos.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
 var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;

  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.SetFocus;

end;

end.