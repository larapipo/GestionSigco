unit UConceptosPlantillas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DBClient, Provider, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, DBXCommon,
  JvAppStorage, JvAppIniStorage, System.Actions, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList;

type
  TFormConceptosPlantillas = class(TFormABMBase)
    DSPPlantillaDet: TDataSetProvider;
    CDSPlantillaDet: TClientDataSet;
    DSPlantillaDet: TDataSource;
    CDSPlantillaDetCODIGO: TStringField;
    CDSPlantillaDetDETALLE: TStringField;
    dbgPrecios: TJvDBGrid;
    spActualiza: TFDStoredProc;
    QPlantillaDet: TFDQuery;
    QPlantillaDetCODIGO: TStringField;
    QPlantillaDetDETALLE: TStringField;
    QPlantillaDetPRECIO: TFloatField;
    CDSPlantillaDetPRECIO: TFloatField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSPlantillaDetPRECIOSetText(Sender: TField; const Text: string);
    procedure CDSPlantillaDetBeforeInsert(DataSet: TDataSet);
    procedure dbgPreciosColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormConceptosPlantillas: TFormConceptosPlantillas;

implementation

{$R *.dfm}
Uses UDMain_FD;

procedure TFormConceptosPlantillas.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSPlantillaDet.Close;
  CDSPlantillaDet.Open;
end;

procedure TFormConceptosPlantillas.CDSPlantillaDetBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  SysUtils.Abort;
  CDSPlantillaDet.Cancel;
end;

procedure TFormConceptosPlantillas.CDSPlantillaDetPRECIOSetText(Sender: TField;
  const Text: string);
var p:TBookmark;
begin
  inherited;
  sender.AsString:=Text;
  p:=CDSPlantillaDet.GetBookmark;
  if (Text<>'') and (Text<>#13) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spActualiza.Close;
        spActualiza.Params.ParamByName('codigo').Value  :=CDSPlantillaDetCODIGO.Value;
        spActualiza.Params.ParamByName('precio').AsFloat:=CDSPlantillaDetPRECIO.AsFLoat;
        spActualiza.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        spActualiza.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        spActualiza.Close;
      end;
    end;
  CDSPlantillaDet.Close;
  CDSPlantillaDet.Open;
  CDSPlantillaDet.GotoBookmark(p);
  CDSPlantillaDet.FreeBookmark(p);
end;

procedure TFormConceptosPlantillas.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormConceptosPlantillas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormConceptosPlantillas.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  CDSPlantillaDet.Close;
  CDSPlantillaDet.Open;
end;

procedure TFormConceptosPlantillas.FormDestroy(Sender: TObject);
begin
  inherited;
  FormConceptosPlantillas:=nil;
end;

procedure TFormConceptosPlantillas.FormShow(Sender: TObject);
begin
  inherited;
  dbgPrecios.SelectedIndex:=2;
end;

procedure TFormConceptosPlantillas.dbgPreciosColEnter(Sender: TObject);
begin
  inherited;
  if dbgPrecios.SelectedIndex<2  then
    dbgPrecios.SelectedIndex:=2;

end;

end.
