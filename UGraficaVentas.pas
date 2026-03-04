unit UGraficaVentas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async,
  FireDAC.DApt, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, VCLTee.DBChart, AdvOfficePager,
  VCLTee.TeeData, VCLTee.TeeGDIPlus, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.DB, Data.SqlExpr, JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  Vcl.ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  System.ImageList;

type
  TFormABMBase4 = class(TFormABMBase)
    TeeGDIPlus1: TTeeGDIPlus;
    pcGrafica: TAdvOfficePager;
    AdvOfficePager11: TAdvOfficePage;
    AdvOfficePager12: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    DBChart1: TDBChart;
    Series1: TLineSeries;
    Series2: TLineSeries;
    QVentas: TFDQuery;
    DSVentas: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormABMBase4: TFormABMBase4;

implementation

{$R *.dfm}
uses UDMain_FD;

end.
