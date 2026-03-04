unit UAsignarSectorProduccion;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvExControls, JvLabel,
  JvDBControls, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids;

type
  TFormAsignarSectorProduccion = class(TFormABMBase)
    QArticulosProduccion: TFDQuery;
    QEstacionSector: TFDQuery;
    dbgArt: TDBGrid;
    pnCabecera: TPanel;
    Panel3: TPanel;
    pnSec: TPanel;
    Splitter1: TSplitter;
    dbgSectores: TDBGrid;
    DSEstacionSector: TDataSource;
    QEstacionSectorID: TIntegerField;
    QEstacionSectorDETALLE: TStringField;
    QEstacionSectorSECTOR: TIntegerField;
    QEstacionSectorMUESTRASECTOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAsignarSectorProduccion: TFormAsignarSectorProduccion;

implementation

Uses UDMain_FD;
{$R *.dfm}

end.
