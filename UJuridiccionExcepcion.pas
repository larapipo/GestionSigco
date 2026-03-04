unit UJuridiccionExcepcion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  ImgList, ActnList, ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls,
  Datasnap.Provider, Datasnap.DBClient, JvAppStorage, JvAppIniStorage,
  Data.SqlExpr, JvComponentBase, JvFormPlacement, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormJuridicion_Sucursal = class(TFormABMBase)
    JvDBGrid1: TJvDBGrid;
    CDSJuridiccion: TClientDataSet;
    DSPJuridicion: TDataSetProvider;
    CDSJuridiccionSUCURSAL: TIntegerField;
    CDSJuridiccionID_JURIDICION_LOCALIDAD: TIntegerField;
    DSPJuri: TDataSetProvider;
    CDSJuri: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSJuriID: TIntegerField;
    CDSJuriID_JURIDICION: TIntegerField;
    CDSJuriLOCALIDAD: TStringField;
    CDSJuriPOR_DEFECTO: TStringField;
    CDSJuridiccionMUESTRASUC: TStringField;
    CDSJuridiccionMUESTRAJURI: TStringField;
    DSJuridiccion: TDataSource;
    QSucursal: TFDQuery;
    QJuri: TFDQuery;
    QJuridiccion: TFDQuery;
    QJuridiccionSUCURSAL: TIntegerField;
    QJuridiccionID_JURIDICION_LOCALIDAD: TIntegerField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormJuridicion_Sucursal: TFormJuridicion_Sucursal;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormJuridicion_Sucursal.ConfirmaExecute(Sender: TObject);
begin
//inherited;
  CDSJuridiccion.ApplyUpdates(0);
  CDSJuridiccion.Close;
  CDSJuridiccion.Open;
end;

procedure TFormJuridicion_Sucursal.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormJuridicion_Sucursal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Open;
  CDSJuri.Open;
  CDSJuridiccion.Open;
  Action:=cafree;
end;

procedure TFormJuridicion_Sucursal.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSSucursal.Open;
  CDSJuri.Open;
  CDSJuridiccion.Open;
end;

procedure TFormJuridicion_Sucursal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormJuridicion_Sucursal:=nil;
end;

end.
