unit UVencimientosTransp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd, DBPlanner,
  Planner, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Datasnap.DBClient, Datasnap.Provider, PlannerMonthView, DBPlannerMonthView,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, System.ImageList, AdvSmoothButton;

type
  TFormVtosTransportes = class(TFormABMBase)
    DSPVtos: TDataSetProvider;
    CDSVtos: TClientDataSet;
    DSVtos: TDataSource;
    CDSVtosID: TIntegerField;
    CDSVtosID_TRANSPORTE: TIntegerField;
    CDSVtosMOTIVO: TStringField;
    CDSVtosFECHAVTO: TSQLTimeStampField;
    CDSVtosESTADO: TStringField;
    CDSVtosMUESTRATR: TStringField;
    CDSVtosCOLOR: TIntegerField;
    DBPlannerMonthView1: TDBPlannerMonthView;
    DBMonthSource1: TDBMonthSource;
    QVtos: TFDQuery;
    QVtosID: TIntegerField;
    QVtosID_TRANSPORTE: TIntegerField;
    QVtosMOTIVO: TStringField;
    QVtosFECHAVTO: TSQLTimeStampField;
    QVtosESTADO: TStringField;
    QVtosMUESTRATR: TStringField;
    QVtosCOLOR: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure DBMultiMonthSource1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure CDSVtosAfterPost(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DBPlannerMonthView1FieldsToItem(Sender: TObject; Fields: TFields;
      Item: TPlannerItem);
    procedure DSBaseStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormVtosTransportes: TFormVtosTransportes;

implementation

USes UDMain_FD;

{$R *.dfm}

procedure TFormVtosTransportes.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSVtos.Close;
  CDSVtos.Open;

  //DBPlanner1.Header.Captions.Strings[0]:='';
//  DBPlanner1.Header.Captions.Strings[1]:= DBPlanner1.Items.FindFirst(1,30,1).id DBMultiMonthSource1.DataSource.);
//  DBPlanner1.Header.Captions.Strings[2]:='Febrero';
//  DBPlanner1.Header.Captions.Strings[3]:='Marzo';

  end;

procedure TFormVtosTransportes.CDSVtosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSVtos.ApplyUpdates(-1);
end;

procedure TFormVtosTransportes.DBMultiMonthSource1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  inherited;
  Item.Color           :=Fields.FieldByName('color').Value;
  Item.CaptionBkg      :=Fields.FieldByName('color').Value;
  Item.ItemEndTime     :=Fields.FieldByName('fechavto').AsDateTime+1;
end;

procedure TFormVtosTransportes.DBPlannerMonthView1FieldsToItem(Sender: TObject;
  Fields: TFields; Item: TPlannerItem);
begin
  inherited;
  Item.Color           :=Fields.FieldByName('color').Value;
  Item.CaptionBkg      :=Fields.FieldByName('color').Value;
  Item.CaptionText     :=Fields.FieldByName('MUESTRATR').AsString;
end;

procedure TFormVtosTransportes.DSBaseStateChange(Sender: TObject);
begin
//  inherited;

end;

procedure TFormVtosTransportes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormVtosTransportes.FormCreate(Sender: TObject);
begin
  inherited;
  AUtoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  Buscar.Execute;
end;

procedure TFormVtosTransportes.FormDestroy(Sender: TObject);
begin
  inherited;
  FormVtosTransportes:=nil;
end;

end.
