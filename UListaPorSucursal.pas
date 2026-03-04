unit UListaPorSucursal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBCtrls,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormListaSucursal = class(TFormABMBase)
    QListaSuc: TSQLQuery;
    CDSListaSuc: TClientDataSet;
    DSPListaSuc: TDataSetProvider;
    QListaSucLISTA: TIntegerField;
    QListaSucSUCURSAL: TIntegerField;
    CDSListaSucLISTA: TIntegerField;
    CDSListaSucSUCURSAL: TIntegerField;
    QSucursal: TSQLQuery;
    QLista: TSQLQuery;
    DSPLista: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSLista: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSListaID: TIntegerField;
    CDSListaNOMBRE: TStringField;
    CDSListaSucMUESTRALISTA: TStringField;
    CDSListaSucMUESTRASUCURSAL: TStringField;
    JvDBGrid1: TJvDBGrid;
    DSListaSuc: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListaSucursal: TFormListaSucursal;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormListaSucursal.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  CDSListaSuc.ApplyUpdates(0);
  CDSListaSuc.Close;
  CDSListaSuc.Open;

end;

procedure TFormListaSucursal.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormListaSucursal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSSucursal.Close;
  CDSLista.Close;
  CDSListaSuc.Close;
  Action:=caFree;
  inherited;

end;

procedure TFormListaSucursal.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSSucursal.Close;
  CDSLista.Close;
  CDSSucursal.Open;
  CDSLista.Open;

  CDSListaSuc.Close;
  CDSListaSuc.Open;
end;

procedure TFormListaSucursal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListaSucursal:=nil;
end;

end.
