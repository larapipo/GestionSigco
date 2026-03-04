unit UListadoSeries;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Provider, DBClient, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, ComCtrls, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, DataExport, DataToXLS,
  JvDBLookup, JvAppStorage, JvAppIniStorage, System.Actions,VirtualUI_SDK,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormListadoSeries = class(TFormABMBase)
    JvDBGrid1: TJvDBGrid;
    QNroSeries: TSQLQuery;
    CDSNroSeries: TClientDataSet;
    DSNroSeries: TDataSource;
    DSPNroSeries: TDataSetProvider;
    CDSNroSeriesID: TIntegerField;
    CDSNroSeriesCODIGO_STK: TStringField;
    CDSNroSeriesCODIGOSERIE: TStringField;
    CDSNroSeriesFECHAINGRESO: TSQLTimeStampField;
    CDSNroSeriesFECHAEGRESO: TSQLTimeStampField;
    CDSNroSeriesID_CPBTE_INGRESO: TIntegerField;
    CDSNroSeriesTIPOCPBTE_INGRESO: TStringField;
    CDSNroSeriesCLASECPBTE_INGRESO: TStringField;
    CDSNroSeriesNRO_CPBTE_INGRESO: TStringField;
    CDSNroSeriesID_CPBTE_EGRESO: TIntegerField;
    CDSNroSeriesTIPOCPBTE_EGRESO: TStringField;
    CDSNroSeriesCLASECPBTE_EGRESO: TStringField;
    CDSNroSeriesNRO_CPBTE_EGRESO: TStringField;
    CDSNroSeriesDEPOSITO: TIntegerField;
    CDSNroSeriesOBS: TStringField;
    CDSNroSeriesALTA_POR_VTA: TStringField;
    CDSNroSeriesMUESTRADETALLE: TStringField;
    rgEstado: TRadioGroup;
    DataToXLS1: TDataToXLS;
    SaveDialog1: TSaveDialog;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    cbDepositos: TJvDBLookupCombo;
    DSDepositos: TDataSource;
    QDepositos: TSQLQuery;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    procedure BuscarExecute(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoSeries: TFormListadoSeries;

implementation

{$R *.dfm}
uses UDMain_FD;


procedure TFormListadoSeries.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  if Not(CDSNroSeries.IsEmpty) then
    begin
      SaveDialog1.FileName:='Nro_Series';
      SaveDialog1.DefaultExt:='xls';
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS1.SaveToFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt)
            else
              DataToXLS1.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
              end;
          end;
    end
  else
    ShowMessage('No hay datos para exportar');
end;

procedure TFormListadoSeries.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSNroSeries.Close;
  if rgEstado.ItemIndex=0 then
    CDSNroSeries.Params.ParamByName('id').Value:=1
  else
    CDSNroSeries.Params.ParamByName('id').Value:=-1;

  CDSNroSeries.Params.ParamByName('deposito').Value:=cbDepositos.KeyValue;

  CDSNroSeries.Open;


end;

procedure TFormListadoSeries.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  CDSDepositos.CLose;
end;

procedure TFormListadoSeries.FormCreate(Sender: TObject);
begin
  inherited;
  CDSDepositos.Open;
end;

procedure TFormListadoSeries.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoSeries:=nil;
end;

end.
