unit UDetalleOperacionesProvee;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, JvExControls, JvGradient, Grids, DBGrids, JvColorTrackbar,
  DB,   StdCtrls, FMTBcd, SqlExpr, Provider, DBClient, Buttons,DateUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormDetalleOperacionesProvee = class(TForm)
    pnSuperior: TPanel;
    dbgCompras1: TDBGrid;
    dbgCompras2: TDBGrid;
    pnInferior: TPanel;
    DBGrid3: TDBGrid;
    DSDetallesTotales: TDataSource;
    DSCompras_1: TDataSource;
    DSCompras_2: TDataSource;
    RadioGroup1: TRadioGroup;
    Label1: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    lbTotal1: TLabel;
    lbTotal2: TLabel;
    CDSCompras_1: TClientDataSet;
    DSPCompras_1: TDataSetProvider;
    DSPCompras_2: TDataSetProvider;
    CDSCompras_2: TClientDataSet;
    DSPDetalleTotales: TDataSetProvider;
    CDSDetallesTotales: TClientDataSet;
    CDSCompras_1ANIO: TIntegerField;
    CDSCompras_1MES: TIntegerField;
    CDSCompras_1CAL_INCIDENCIA: TFloatField;
    CDSCompras_2ANIO: TIntegerField;
    CDSCompras_2MES: TIntegerField;
    CDSCompras_2CAL_INCIDENCIA: TFloatField;
    CDSDetallesTotalesTIPOCPBTE: TStringField;
    CDSDetallesTotalesCODIGOARTICULO: TStringField;
    CDSDetallesTotalesDETALLE: TStringField;
    CDSDetallesTotalesCOSTO_PROMEDIO: TFloatField;
    CDSDetallesTotalesCAL_INCIDENCIA: TFloatField;
    CDSDetallesTotalesCAL_TOTAL: TFloatField;
    CDSDetallesTotalesCAL_CANT: TFloatField;
    CDSDetallesTotalesCAL_PROMEDIO: TFloatField;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    QZumaCompras_1: TFDQuery;
    QZumaCompras_1TOTAL: TFloatField;
    QCompras_1: TFDQuery;
    CDSCompras_1TOTAL: TFloatField;
    QZumaCompras_2: TFDQuery;
    QZumaCompras_2TOTAL: TFloatField;
    QCompra_2: TFDQuery;
    CDSCompras_2TOTAL: TFloatField;
    QDetallesTotal: TFDQuery;
    CDSDetallesTotalesCANT: TFloatField;
    CDSDetallesTotalesTOTAL: TFloatField;
    pnCabecera: TPanel;
    pn1: TPanel;
    pn2: TPanel;
    pnMedio: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormShow(Sender: TObject);
    procedure RadioGroup1Click(Sender: TObject);
    procedure CDSCompras_1CalcFields(DataSet: TDataSet);
    procedure CDSCompras_2CalcFields(DataSet: TDataSet);
    procedure CDSDetallesTotalesCalcFields(DataSet: TDataSet);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    FCodigo:String;
    FGrupo:Integer;
    { Private declarations }
  public
    { Public declarations }
    x_old:integer;
    TotalCompra_1,
    TotalCompra_2:Real;
    Fecha:TDate;
    procedure Buscar;
   published
     Property codigo:String read FCodigo write FCodigo;
     Property Grupo:Integer read FGrupo write FGrupo;

  end;

var
  FormDetalleOperacionesProvee: TFormDetalleOperacionesProvee;

implementation

{$R *.dfm}
Uses UDMain_FD;

procedure TFormDetalleOperacionesProvee.Buscar;
var y,m,d:word;
//desde,hasta:TDateTime;
begin
//  Fecha:=Date;
  Decodedate(Fecha,y,m,d);
  TotalCompra_1:=0;
  TotalCompra_2:=0;
  Label1.Caption:='Total de Compras del -'+IntToStr(Y-1);
  Label2.Caption:='Total de Compras del -'+IntToStr(Y);

 // QDetalleCompras.Close;

  QZumaCompras_1.Close;
  QZumaCompras_1.ParamByName('codigo').Value:= codigo;
  QZumaCompras_1.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
  QZumaCompras_1.ParamByName('hasta').Value := Encodedate(Y-1,12,31);
  QZumaCompras_1.ParamByName('grupo').Value := FGrupo;
  QZumaCompras_1.Open;
  TotalCompra_1 :=QZumaCompras_1TOTAL.AsFloat;
  QZumaCompras_1.Close;

  QZumaCompras_2.Close;
  QZumaCompras_2.ParamByName('codigo').Value:= codigo;
  QZumaCompras_2.ParamByName('desde').Value := EncodeDate(Y, 1,31);
  QZumaCompras_2.ParamByName('hasta').Value := Encodedate(Y,12,31);
  QZumaCompras_2.ParamByName('grupo').Value := FGrupo;
  QZumaCompras_2.Open;
  TotalCompra_2 :=QZumaCompras_2TOTAL.AsFloat;
  QZumaCompras_2.Close;

  CDSCompras_1.Close;
  CDSCompras_1.Params.ParamByName('codigo').Value:= codigo;
  CDSCompras_1.Params.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
  CDSCompras_1.Params.ParamByName('hasta').Value := EncodeDate(Y-1,12,31);
  CDSCompras_1.Params.ParamByName('grupo').Value := FGrupo;

  CDSCompras_1.Open;

  CDSCompras_2.Close;
  CDSCompras_2.Params.ParamByName('codigo').Value:= codigo;
  CDSCompras_2.Params.ParamByName('desde').Value := EncodeDate(Y, 1,31);
  CDSCompras_2.Params.ParamByName('hasta').Value := EncodeDate(Y,12,31);
  CDSCompras_2.Params.ParamByName('grupo').Value := FGrupo;
  CDSCompras_2.Open;



  if RadioGroup1.ItemIndex=1 then
    begin
      CDSDetallesTotales.Close;
      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y, 1,31);
      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y,12,31);
      CDSDetallesTotales.Params.ParamByName('grupo').Value := FGrupo;
      CDSDetallesTotales.Open;
    end
  else
    begin
      CDSDetallesTotales.Close;
      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y-1,12,31);
      CDSDetallesTotales.Params.ParamByName('grupo').Value := FGrupo;
      CDSDetallesTotales.Open;
    end;


  lbTotal1.Caption:=FormatFloat(',0.00',TotalCompra_1);
  lbTotal2.Caption:=FormatFloat(',0.00',TotalCompra_2);
end;


procedure TFormDetalleOperacionesProvee.Button1Click(Sender: TObject);
begin
  Buscar;
end;

procedure TFormDetalleOperacionesProvee.CDSCompras_1CalcFields(
  DataSet: TDataSet);
begin
 if TotalCompra_1>0 then
    CDSCompras_1CAL_INCIDENCIA.Value:=100*(CDSCompras_1TOTAL.AsFloat/TotalCompra_1);
end;

procedure TFormDetalleOperacionesProvee.CDSCompras_2CalcFields(
  DataSet: TDataSet);
begin
 if TotalCompra_2>0 then
    CDSCompras_2CAL_INCIDENCIA.AsFloat:=100*(CDSCompras_2TOTAL.AsFloat/TotalCompra_2);
end;

procedure TFormDetalleOperacionesProvee.CDSDetallesTotalesCalcFields(
  DataSet: TDataSet);
begin
  CDSDetallesTotalesCAL_TOTAL.AsFloat  :=CDSDetallesTotalesTOTAL.AsFloat;
  CDSDetallesTotalesCAL_CANT.Value     :=CDSDetallesTotalesCANT.AsFloat;
  CDSDetallesTotalesCAL_PROMEDIO.Value :=CDSDetallesTotalesCAL_TOTAL.Value/CDSDetallesTotalesCANT.AsFloat;
  if RadioGroup1.ItemIndex=1 then
    begin
      if TotalCompra_2>0 then
        CDSDetallesTotalesCAL_INCIDENCIA.Value:= 100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra_2);
      if CDSDetallesTotalesTIPOCPBTE.Value='NC' then
        begin
          CDSDetallesTotalesCAL_TOTAL.Value    :=-1*CDSDetallesTotalesTOTAL.AsFloat;
          CDSDetallesTotalesCAL_CANT.Value     :=-1*CDSDetallesTotalesCANT.asFloat;
          if TotalCompra_2>0 then
            CDSDetallesTotalesCAL_INCIDENCIA.Value:= -100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra_2);
        end;
    end
  else
    if RadioGroup1.ItemIndex=0 then
      begin
        if TotalCompra_1>0 then
          CDSDetallesTotalesCAL_INCIDENCIA.AsFloat:= 100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra_1);
        if CDSDetallesTotalesTIPOCPBTE.Value='NC' then
          begin
            CDSDetallesTotalesCAL_TOTAL.Value    :=-1*CDSDetallesTotalesTOTAL.AsFloat;
            CDSDetallesTotalesCAL_CANT.Value     :=-1*CDSDetallesTotalesCANT.AsFloat;
            if TotalCompra_1>0 then
              CDSDetallesTotalesCAL_INCIDENCIA.Value:= -100*(CDSDetallesTotalesTOTAL.AsFloat/TotalCompra_1);
          end;
      end;

end;

procedure TFormDetalleOperacionesProvee.DBGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  x_old := X;
end;

procedure TFormDetalleOperacionesProvee.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormDetalleOperacionesProvee.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormDetalleOperacionesProvee.FormDestroy(Sender: TObject);
begin
  FormDetalleOperacionesProvee:=nil;
end;

procedure TFormDetalleOperacionesProvee.FormResize(Sender: TObject);
begin
  if FormDetalleOperacionesProvee<>nil then
    if FormDetalleOperacionesProvee.Width<>661 then
      FormDetalleOperacionesProvee.Width:=661;

end;

procedure TFormDetalleOperacionesProvee.FormShow(Sender: TObject);
var y,m,d:word;
desde,hasta:TDateTime;
begin
  Fecha:=Date;
//  Decodedate(Fecha,y,m,d);
//  TotalCompra_1:=0;
//  TotalCompra_2:=0;
//  Label1.Caption:='Total de Compras del -'+IntToStr(Y-1);
//  Label2.Caption:='Total de Compras del -'+IntToStr(Y);
//
// // QDetalleCompras.Close;
//
//  QZumaCompras_1.Close;
//  QZumaCompras_1.ParamByName('codigo').Value:= codigo;
//  QZumaCompras_1.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
//  QZumaCompras_1.ParamByName('hasta').Value := Encodedate(Y-1,12,31);
//  QZumaCompras_1.Open;
//  TotalCompra_1 :=QZumaCompras_1TOTAL.AsFloat;
//  QZumaCompras_1.Close;
//
//  QZumaCompras_2.Close;
//  QZumaCompras_2.ParamByName('codigo').Value:= codigo;
//  QZumaCompras_2.ParamByName('desde').Value := EncodeDate(Y, 1,31);
//  QZumaCompras_2.ParamByName('hasta').Value := Encodedate(Y,12,31);
//  QZumaCompras_2.Open;
//  TotalCompra_2 :=QZumaCompras_2TOTAL.AsFloat;
//  QZumaCompras_2.Close;
//
//  CDSCompras_1.Close;
//  CDSCompras_1.Params.ParamByName('codigo').Value:= codigo;
//  CDSCompras_1.Params.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
//  CDSCompras_1.Params.ParamByName('hasta').Value := EncodeDate(Y-1,12,31);
//  CDSCompras_1.Open;
//
//  CDSCompras_2.Close;
//  CDSCompras_2.Params.ParamByName('codigo').Value:= codigo;
//  CDSCompras_2.Params.ParamByName('desde').Value := EncodeDate(Y, 1,31);
//  CDSCompras_2.Params.ParamByName('hasta').Value := EncodeDate(Y,12,31);
//  CDSCompras_2.Open;
//
//
//
//  if RadioGroup1.ItemIndex=1 then
//    begin
//      CDSDetallesTotales.Close;
//      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
//      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y, 1,31);
//      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y,12,31);
//      CDSDetallesTotales.Open;
//    end
//  else
//    begin
//      CDSDetallesTotales.Close;
//      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
//      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
//      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y-1,12,31);
//      CDSDetallesTotales.Open;
//  end;
//
//
//  lbTotal1.Caption:=FormatFloat(',0.00',TotalCompra_1);
//  lbTotal2.Caption:=FormatFloat(',0.00',TotalCompra_2);
  Buscar;

end;

procedure TFormDetalleOperacionesProvee.RadioGroup1Click(Sender: TObject);
 var y,m,d:word;
begin
  Decodedate(Fecha,y,m,d);
  if RadioGroup1.ItemIndex=1 then
    begin
      CDSDetallesTotales.Close;
      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y, 1,31);
      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y,12,31);
      CDSDetallesTotales.Params.ParamByName('grupo').Value := FGrupo;
      CDSDetallesTotales.Open;
    end
  else
    begin
      CDSDetallesTotales.Close;
      CDSDetallesTotales.Params.ParamByName('codigo').Value:= codigo;
      CDSDetallesTotales.Params.ParamByName('desde').Value := EncodeDate(Y-1, 1,31);
      CDSDetallesTotales.Params.ParamByName('hasta').Value := EncodeDate(Y-1,12,31);
      CDSDetallesTotales.Params.ParamByName('grupo').Value := FGrupo;
      CDSDetallesTotales.Open;
    end;

end;

procedure TFormDetalleOperacionesProvee.SpeedButton1Click(Sender: TObject);
begin
  Fecha:=IncYear(Fecha,1);
  Buscar;

end;

procedure TFormDetalleOperacionesProvee.SpeedButton2Click(Sender: TObject);
begin
  Fecha:=IncYear(Fecha,-1);
  Buscar;
end;

end.
