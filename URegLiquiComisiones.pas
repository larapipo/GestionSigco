unit URegLiquiComisiones;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, DB, DBClient, Provider, SqlExpr, DataExport,
  Buttons, StdCtrls, Grids, DBGrids, ExtCtrls, Mask, JvExMask, JvToolEdit,
  JvBaseEdits,VirtualUI_SDK, frxClass, frxDBSet, frxExportBaseDialog,
  frxExportPDF, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  DataToXLS, frCoreClasses;

type
  TFormRegLiquidacionComi = class(TForm)
    Panel1: TPanel;
    dbgDetalle: TDBGrid;
    Button1: TButton;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    DSPRegLiq: TDataSetProvider;
    CDSRegLiq: TClientDataSet;
    DSRegLiq: TDataSource;
    CDSRegLiqLOTE: TIntegerField;
    CDSRegLiqID_FACTURA: TIntegerField;
    CDSRegLiqCODIGO: TStringField;
    CDSRegLiqNOMBRE: TStringField;
    CDSRegLiqNETO: TFloatField;
    CDSRegLiqTIPOCPBTE: TStringField;
    CDSRegLiqCLASECPBTE: TStringField;
    CDSRegLiqNROCPBTE: TStringField;
    CDSRegLiqFECHAVTA: TSQLTimeStampField;
    edTotal: TJvCalcEdit;
    frxReport: TfrxReport;
    frxDBDetalle: TfrxDBDataset;
    btImprimir: TBitBtn;
    frxPDFExport1: TfrxPDFExport;
    QRegLiq: TFDQuery;
    CDSRegLiqTOTAL: TFloatField;
    CDSRegLiqCOMISION: TFloatField;
    DataToXLS: TDataToXLS;
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure Panel1DblClick(Sender: TObject);
  private
    { Private declarations }
    FId:Integer;
    FCodigo:String;
    FNombre:String;
  public
    { Public declarations }
    Desde,Hasta:TDateTime;
  published

    property id    : Integer Write Fid;
    property Codigo: string read FCodigo write FCodigo;
    property Nombre: string read FCodigo write FCodigo;

  end;

var
  FormRegLiquidacionComi: TFormRegLiquidacionComi;

implementation

uses UFactura_2, UFacturaCtdo_2,UDMain_FD;

{$R *.dfm}

procedure TFormRegLiquidacionComi.btExcelClick(Sender: TObject);
begin
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT(CDSRegLiq.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='RegLiquidacion';
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

procedure TFormRegLiquidacionComi.btImprimirClick(Sender: TObject);
begin
  //CDSEmpresa.Open;

//  frxReport.PrintOptions.Printer:=PrNomListados;
//  frxReport.SelectPrinter;

  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\LiquidacionEmpleado.fr3');
  frxReport.Variables['Empleado']:=''''+FNombre+'''';
  frxReport.Variables['desde']   :=''''+DateToStr(Desde)+'''';
  frxReport.Variables['hasta']   :=''''+DateToStr(Hasta)+'''';
  // frCtaCte.PrepareReport;
  frxReport.ShowReport;
  //CDSEmpresa.Close;
  //ceCliente.SetFocus;
  //ceCliente.SelectAll;
end;

procedure TFormRegLiquidacionComi.Button1Click(Sender: TObject);
begin
 Close;
end;

procedure TFormRegLiquidacionComi.dbgDetalleDblClick(Sender: TObject);
begin
  if (CDSRegLiqTIPOCPBTE.AsString='FC') or
     (CDSRegLiqTIPOCPBTE.AsString='NC') or
     (CDSRegLiqTIPOCPBTE.AsString='ND') Then
    BEGIN
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSRegLiqID_FACTURA.AsString;
      FormCpbte_2.TipoCpbte := CDSRegLiqTIPOCPBTE.Value;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    END
  ELSE
    if (CDSRegLiqTIPOCPBTE.AsString='FO') Then
      BEGIN
        IF NOT (Assigned(FormCpbteCtdo_2)) THEN
          FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew   := CDSRegLiqID_FACTURA.AsString;
        FormCpbteCtdo_2.TipoCpbte := CDSRegLiqTIPOCPBTE.Value;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      END
end;

procedure TFormRegLiquidacionComi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormRegLiquidacionComi.FormCreate(Sender: TObject);
begin
  AutoSize:=False;
end;

procedure TFormRegLiquidacionComi.FormDestroy(Sender: TObject);
begin
  FormRegLiquidacionComi:=nil;
end;

procedure TFormRegLiquidacionComi.FormResize(Sender: TObject);
begin
  if FormRegLiquidacionComi<>nil then
    if FormRegLiquidacionComi.Width<>861 then
      FormRegLiquidacionComi.Width:=561;
end;

procedure TFormRegLiquidacionComi.FormShow(Sender: TObject);
var aux:Extended;
begin
  edTotal.Value:=0;
  aux:=0;
  CDSRegLiq.Close;
  CDSRegLiq.Params.ParamByName('id').Value:=fId;
  CDSRegLiq.Open;
  dbgDetalle.Width:=dbgDetalle.Width-1;
  dbgDetalle.Width:=dbgDetalle.Width+1;
  CDSRegLiq.First;
  Desde:=CDSRegLiqFECHAVTA.AsDateTime;
  CDSRegLiq.DisableControls;
  while Not(CDSRegLiq.Eof) do
    begin
      aux:= aux + CDSRegLiqCOMISION.ASFloat;
      CDSRegLiq.Next;
    end;
  Hasta:=CDSRegLiqFECHAVTA.AsDateTime;

  CDSRegLiq.First;
  CDSRegLiq.EnableControls;
  edTotal.Value:=aux;

end;

procedure TFormRegLiquidacionComi.Panel1DblClick(Sender: TObject);
begin
  frxReport.DesignReport;
end;

end.
