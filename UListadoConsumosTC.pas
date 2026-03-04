unit UListadoConsumosTC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, JvComponentBase, ImgList,StrUtils,
  DB,   ActnList, ComCtrls,
  JvExControls, JvGradient, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids,
  DBGrids, JvExDBGrids, JvDBGrid, Provider, DBClient, Mask, Librerias,
  DataExport, DataToXLS, frxClass, frxDBSet, frxExportImage, frxExportRTF,
  frxExportXLS, frxExportPDF, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  System.Actions, JvAppStorage,
  JvAppIniStorage,VirtualUI_SDK, JvExMask, JvToolEdit, Data.SqlExpr,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormListadoConsumosTC = class(TFormABMBase)
    DSConsumosTC: TDataSource;
    CDSConsumosTC: TClientDataSet;
    DSPConsumosTC: TDataSetProvider;
    dbgConsumos: TJvDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    UpDown1: TUpDown;
    DataToXLS: TDataToXLS;
    SaveDialog: TSaveDialog;
    btExcel: TBitBtn;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    frxReporte: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Imprimir: TAction;
    CDSConsumosTCID_CAJA: TIntegerField;
    CDSConsumosTCNUMERO_CUPON: TIntegerField;
    CDSConsumosTCPROVEEDOR: TStringField;
    CDSConsumosTCCUOTAS: TIntegerField;
    CDSConsumosTCID_CPBTE: TIntegerField;
    CDSConsumosTCTIPOCPBTE: TStringField;
    CDSConsumosTCCLASECPBTE: TStringField;
    CDSConsumosTCNROCPBTE: TStringField;
    CDSConsumosTCNOMBRE: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    CDSConsumosTCFECHA_COMPRA: TSQLTimeStampField;
    CDSConsumosTCFECHA_CUPON: TSQLTimeStampField;
    QConsumosTC: TFDQuery;
    CDSConsumosTCIMPORTE: TFloatField;
    Label3: TLabel;
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure dbgConsumosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormListadoConsumosTC: TFormListadoConsumosTC;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormListadoConsumosTC.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSConsumosTC.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='Consumos';
      SaveDialog.DefaultExt:='XLS';

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog.FileName);

            if VirtualUI.Active then
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
        end;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormListadoConsumosTC.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSConsumosTC.Close;
  CDSConsumosTC.Params.ParamByName('desde').Value:=desde.Date;
  CDSConsumosTC.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSConsumosTC.Open;

end;

procedure TFormListadoConsumosTC.dbgConsumosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
 // inherited;
  CDSConsumosTC.IndexName:=Field.FieldName;
end;

procedure TFormListadoConsumosTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormListadoConsumosTC.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
end;

procedure TFormListadoConsumosTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoConsumosTC:=nil;
end;

procedure TFormListadoConsumosTC.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(A,M))
end;


procedure TFormListadoConsumosTC.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(CDSConsumosTC.IsEmpty) Then
    begin
      frxReporte.PrintOptions.Printer:=PrNomListados;
      frxReporte.SelectPrinter;
      frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoConsumoTC.fr3');
      frxReporte.Variables['desde']   :=''''+Desde.Text+'''';
      frxReporte.Variables['hasta']   :=''''+Hasta.Text+'''';
      frxReporte.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormListadoConsumosTC.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormListadoConsumosTC.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Buscar.Execute;
  //  Desde.SetFocus;

end;

end.