unit UExpotadorProveedores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, Db, Gauges, Grids, DBGrids, DBClient, Provider,
  JvComponentBase, ImgList, ActnList,JvExControls, JvGradient, Buttons,
  StdCtrls, ToolWin, ExtCtrls, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, System.Actions,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList;

type
  TFormExportaProveedores = class(TFormABMBase)
    DBGrid1: TDBGrid;
    gTotal: TGauge;
    DSProveedores: TDataSource;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Exportar: TAction;
    DSPProveedores: TDataSetProvider;
    CDSProveedores: TClientDataSet;
    QProveedores: TFDQuery;
    procedure ExportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportaProveedores: TFormExportaProveedores;

implementation

uses UDMain_FD;
{$R *.DFM}

procedure TFormExportaProveedores.ExportarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='Exportando Proveedores';
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
  CDSProveedores.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Proveedores.XML');
  sbEstado.SimpleText:='Grabando Datos ...';
  Sleep(1000);
  gTotal.Progress   :=0;
  ShowMessage('Datos exportados....');
  sbEstado.SimpleText:='Exportanción Finalizada... ver en '+ExtractFilePath(ParamStr(0))+'Archivos Temporales... ';
end;

procedure TFormExportaProveedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormExportaProveedores.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportaProveedores:=nil;
end;

procedure TFormExportaProveedores.FormCreate(Sender: TObject);
begin
  inherited;
  CDSProveedores.Close;
  CDSProveedores.open;
end;

end.
