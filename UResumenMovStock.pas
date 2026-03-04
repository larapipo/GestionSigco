unit UResumenMovStock;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db,   ActnList,StrUtils,
  Buttons, ToolWin, ExtCtrls, Grids, DBGrids,Librerias,
  frxDBSet, frxClass, ImgList, JvComponentBase, JvExControls,
  JvGradient, DataExport, DataToXLS, frxExportCSV, frxExportText, frxExportRTF,
  frxExportXLS, frxExportPDF, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, SqlExpr, JvDBLookup, JvExMask, JvToolEdit, Provider,
  DBClient, JvExDBGrids, JvDBGrid, JvAppStorage, JvAppIniStorage, System.Actions,
  VirtualUI_SDK, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  AdvGroupBox, AdvOfficeButtons, frxExportBaseDialog, System.ImageList,
  frCoreClasses;

type
  TFormResumenMovStock = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    UpDown1: TUpDown;
    DSMovStock: TDataSource;
    DSDepositos: TDataSource;
    ToolButton1: TToolButton;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frListado: TfrxReport;
    frDBMov: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    ExportarXLS: TAction;
    rxlDeposito: TJvDBLookupCombo;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    CDSMovStock: TClientDataSet;
    DSPMovStock: TDataSetProvider;
    CDSMovStockCODIGO: TStringField;
    CDSMovStockDETALLE: TStringField;
    CDSMovStockUNIDAD: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    dbgMov: TJvDBGrid;
    QMovStk: TFDQuery;
    CDSMovStockANTERIOR: TFloatField;
    CDSMovStockENTRAN: TFloatField;
    CDSMovStockSALEN: TFloatField;
    CDSMovStockSALDO: TFloatField;
    RxLabel3: TLabel;
    rgUnidad: TAdvOfficeRadioGroup;
    CDSMovStockCOMPROMETIDO: TFloatField;
    procedure BuscarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure dbgMovTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormResumenMovStock: TFormResumenMovStock;

implementation

uses DMBuscadoresForm, UDMain_FD;

{$R *.DFM}

procedure TFormResumenMovStock.BuscarExecute(Sender: TObject);
begin
//  inherited;
  CDSMovStock.IndexName:='';
  CDSMovStock.IndexDefs.Clear;
  if rxlDeposito.KeyValue<>-1 Then
    begin
      CDSMovStock.Close;
      if rgUnidad.ItemIndex=0 Then
        CDSMovStock.Params.ParamByName('Unidad').Value:='V'
      else
        if rgUnidad.ItemIndex=1 Then
          CDSMovStock.Params.ParamByName('Unidad').Value:='C';
      CDSMovStock.Params.ParamByName('Desde').Value:=Desde.Date;
      CDSMovStock.Params.ParamByName('Hasta').Value:=Hasta.Date;
      CDSMovStock.Params.ParamByName('Deposito').Value:=rxlDeposito.KeyValue;
      CDSMovStock.Open;
    end;  
end;

procedure TFormResumenMovStock.dbgMovTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
VAR Campo:String;
begin
  inherited;
 try
    Campo := Field.FieldName;
    with dbgMov.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormResumenMovStock.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.DefaultExt:='xls';
  SaveDialog1.FileName  :='ResumenMov';

  if Not(CDSMovStock.IsEmpty) then
    begin
      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog1.FileName )) Then
                SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;


            if VirtualUI.Active then
              DataToXLS.SaveToFile(SaveDialog1.FileName)
            else
              DataToXLS.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog1.FileName);
              end;
          end;

    end;
end;

procedure TFormResumenMovStock.FormShow(Sender: TObject);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.SetFocus;
  CDSDepositos.Open;
  rxlDeposito.KeyValue:=DepositoPorDefecto;
end;

procedure TFormResumenMovStock.UpDown1Click(Sender: TObject;
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


procedure TFormResumenMovStock.ImprimirExecute(Sender: TObject);
begin
  inherited;
   if Not(CDSMovStock.IsEmpty) Then
    begin

      frListado.PrintOptions.Printer:=PrNomListados;
      frListado.SelectPrinter;
      frListado.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoResumenMovStock.fr3');
      frListado.Variables['desde']   :=''''+Desde.Text+'''';
      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
      frListado.Variables['Deposito']:=''''+rxlDeposito.Text+'''';

      frListado.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');

end;

procedure TFormResumenMovStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frListado.DesignReport;
end;

procedure TFormResumenMovStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormResumenMovStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormResumenMovStock:=nil;
end;

procedure TFormResumenMovStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormResumenMovStock<>nil then
    if FormResumenMovStock.Width<>950 then
      FormResumenMovStock.Width:=950;
end;

procedure TFormResumenMovStock.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
end;

end.