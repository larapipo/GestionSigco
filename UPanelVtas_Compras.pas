unit UPanelVtas_Compras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, JvBaseDlg, JvProgressDialog, ComCtrls,
  JvExComCtrls, JvComCtrls, JvCheckTreeView, DB, DBClient, Provider, SqlExpr,
  JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids,DateUtils, Mask, JvExMask, JvToolEdit, JvExDBGrids,
  JvDBGrid, JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormPanelVtas_Compras = class(TFormABMBase)
    pdProgress: TJvProgressDialog;
    ilFlatChecks: TImageList;
    QVtasSucursales: TSQLQuery;
    DSPVtasSucursal: TDataSetProvider;
    DSVtaSucursal: TDataSource;
    CDSVtasSucursal: TClientDataSet;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    JvDBGrid1: TJvDBGrid;
    CDSVtasSucursalSUCURSAL: TIntegerField;
    CDSVtasSucursalDETALLE: TStringField;
    CDSVtasSucursalTIPOCPBTE: TStringField;
    CDSVtasSucursalCLASECPBTE: TStringField;
    CDSVtasSucursalDENOMINACION: TStringField;
    CDSVtasSucursalTOTALCALCULADO: TFMTBCDField;
    CDSVtasSucursalTOTAL: TFMTBCDField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSVtasSucursalCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPanelVtas_Compras: TFormPanelVtas_Compras;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormPanelVtas_Compras.BuscarExecute(Sender: TObject);
BEGIN
  CDSVtasSucursal.Close;
  CDSVtasSucursal.Params.ParamByName('Desde').AsDate:=Desde.Date;
  CDSVtasSucursal.Params.ParamByName('Hasta').AsDate:=Hasta.Date;
  CDSVtasSucursal.Open;

end;

procedure TFormPanelVtas_Compras.CDSVtasSucursalCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSVtasSucursalTIPOCPBTE.Value='NC'  then
    CDSVtasSucursalTOTALCALCULADO.AsFloat:=CDSVtasSucursalTOTAL.AsFloat*-1
  else
    CDSVtasSucursalTOTALCALCULADO.AsFloat:=CDSVtasSucursalTOTAL.AsFloat;

end;

procedure TFormPanelVtas_Compras.FormShow(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
end;


procedure TFormPanelVtas_Compras.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
//  Desde.SetFocus;
end;

end.
