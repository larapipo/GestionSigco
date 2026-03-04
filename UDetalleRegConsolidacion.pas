unit UDetalleRegConsolidacion;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids, DBGrids, ExtCtrls,
  StdCtrls, DataExport, DataToXLS, Buttons,VirtualUI_SDK, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass, frxDBSet, frCoreClasses;

type
  TFormRegConsolidacion = class(TForm)
    Panel1: TPanel;
    dbgDetalle: TDBGrid;
    DSPRegAjuste: TDataSetProvider;
    CDSRegAjuste: TClientDataSet;
    DSRegAjustes: TDataSource;
    CDSRegAjusteID: TIntegerField;
    CDSRegAjusteCTA_DESTINO: TStringField;
    CDSRegAjusteCTA_ORIGEN: TStringField;
    CDSRegAjusteID_AJUSTE_DESTINO: TIntegerField;
    CDSRegAjusteNOMBRE: TStringField;
    Button1: TButton;
    DataToXLS: TDataToXLS;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    QRegAjuste: TFDQuery;
    CDSRegAjusteIMPORTE: TFloatField;
    btImprimir: TBitBtn;
    frxReport: TfrxReport;
    frxDBMov: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
  private
    fId:Integer;
    { Private declarations }
  public
    { Public declarations }
  published
    property id :integer write fid;
  end;

var
  FormRegConsolidacion: TFormRegConsolidacion;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormRegConsolidacion.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSRegAjuste.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='RegConsolidacion';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormRegConsolidacion.btImprimirClick(Sender: TObject);
begin

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\RegConsolidacion.fr3');
  frxReport.PrepareReport;
  frxReport.ShowReport();
end;

procedure TFormRegConsolidacion.Button1Click(Sender: TObject);
begin
  Close;
end;

procedure TFormRegConsolidacion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRegConsolidacion.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormRegConsolidacion.FormDestroy(Sender: TObject);
begin
  FormRegConsolidacion:=nil;
end;

procedure TFormRegConsolidacion.FormResize(Sender: TObject);
begin
   if FormRegConsolidacion<>nil then
     if FormRegConsolidacion.Width<>469 Then
       FormRegConsolidacion.Width:=469;
end;

procedure TFormRegConsolidacion.FormShow(Sender: TObject);
begin
  CDSRegAjuste.Close;
  CDSRegAjuste.Params.ParamByName('id').Value:=fId;
  CDSRegAjuste.Open;
  dbgDetalle.Width:=dbgDetalle.Width-1;
  dbgDetalle.Width:=dbgDetalle.Width+1;
end;

procedure TFormRegConsolidacion.Panel1DblClick(Sender: TObject);
begin
  frxReport.DesignReport();
end;

end.
