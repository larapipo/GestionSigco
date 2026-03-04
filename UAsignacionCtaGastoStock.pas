unit UAsignacionCtaGastoStock;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, Grids, DBGrids, JvExDBGrids, JvDBGrid,
  JvExControls, JvDBLookup, StdCtrls, DB, DBClient, Provider, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls,
  frxClass, frxDBSet, DataExport, DataToXLS, System.Actions, JvAppStorage,
  JvAppIniStorage,VirtualUI_SDK, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Mask, JvExMask, JvToolEdit,
  JvMaskEdit, JvDBFindEdit, System.ImageList, frCoreClasses;

type
  TFormAsignacionCtaGastoStock = class(TFormABMBase)
    DSPRubro: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    DSRubro: TDataSource;
    DSSubRubro: TDataSource;
    Panel2: TPanel;
    lb2: TLabel;
    RxDBLookupCombo2: TJvDBLookupCombo;
    lb3: TLabel;
    RxDBLookupCombo3: TJvDBLookupCombo;
    QStock_old: TSQLQuery;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    DSStock: TDataSource;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockMUESTRAGASTORUBRO: TStringField;
    CDSStockMUESTRAGASTOCTA: TStringField;
    DSPBuscaCuenta: TDataSetProvider;
    DSPBuscaRubro: TDataSetProvider;
    CDSBuscaRubro: TClientDataSet;
    CDSBuscaRubroCODIGO: TStringField;
    CDSBuscaRubroDETALLE: TStringField;
    CDSBuscaCuenta: TClientDataSet;
    CDSBuscaCuentaCODIGO: TStringField;
    CDSBuscaCuentaCODIGO_RUBRO: TStringField;
    CDSBuscaCuentaDETALLE: TStringField;
    BuscarRubro: TAction;
    BuscarCta: TAction;
    BitBtn1: TBitBtn;
    btExcel: TBitBtn;
    ToolButton1: TToolButton;
    DataToXLS: TDataToXLS;
    frxReport: TfrxReport;
    frStock: TfrxDBDataset;
    SaveDialog: TSaveDialog;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    ComBuscadorCuenta: TComBuscador;
    ComBuscadorRubro: TComBuscador;
    QBuscaRubro: TFDQuery;
    QBuscaCuentas: TFDQuery;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMUESTRARUBRO: TStringField;
    QStockMUESTRASUBRUBRO: TStringField;
    QStockRUBRO_GASTO: TStringField;
    QStockRUBRO_CTA_GASTO: TStringField;
    QStockMUESTRAGASTORUBRO: TStringField;
    QStockMUESTRAGASTOCTA: TStringField;
    QRubro: TFDQuery;
    QSubRubro: TFDQuery;
    QRub: TFDQuery;
    QCta: TFDQuery;
    dbgStock: TJvDBGrid;
    QCtaCODIGO: TStringField;
    QCtaCODIGO_RUBRO: TStringField;
    QCtaDETALLE: TStringField;
    QCtaEXCLUYE: TStringField;
    QRubCODIGO: TStringField;
    QRubDETALLE: TStringField;
    dbFindArticulo: TJvDBFindEdit;
    Label3: TLabel;
    procedure dbgStockColEnter(Sender: TObject);
    procedure CDSStockBeforeInsert(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgStockKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarRubroExecute(Sender: TObject);
    procedure CDSStockRUBRO_GASTOSetText(Sender: TField; const Text: string);
    procedure BuscarCtaExecute(Sender: TObject);
    procedure CDSStockRUBRO_CTA_GASTOSetText(Sender: TField;
      const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure RxDBLookupCombo2Click(Sender: TObject);
    procedure dbgStockEditButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure dbgStockTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgStockKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCta(Dato1, Dato2: STRING): Boolean;
    FUNCTION AsignarRubro(Dato: STRING): Boolean;
  end;

var
  FormAsignacionCtaGastoStock: TFormAsignacionCtaGastoStock;

implementation

uses UDMain_FD;
{$R *.dfm}

FUNCTION TFormAsignacionCtaGastoStock.AsignarCta(Dato1, Dato2: STRING): Boolean;
BEGIN
  QCta.Close;
  QCta.ParamByName('rubro').Value  := dato1;
  QCta.ParamByName('codigo').Value := Dato2;
  QCta.Open;
  IF NOT (QCta.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSStockMUESTRAGASTOCTA.Value:=QCtaDETALLE.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSStockMUESTRAGASTOCTA.Value:=''
    END;
  QCta.Close;
END;

FUNCTION TFormAsignacionCtaGastoStock.AsignarRubro(Dato: STRING): Boolean;
BEGIN
  QRub.Close;
  QRub.ParamByName('codigo').AsString := dato;
  QRub.Open;
  IF NOT (QRub.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSStockMUESTRAGASTORUBRO.Value:=QRubDETALLE.Value;
      CDSStockRUBRO_CTA_GASTO.Value  :='*****';
      CDSStockMUESTRAGASTOCTA.Value:='';
    END
  ELSE
    BEGIN
      Result := False;
      CDSStockMUESTRAGASTORUBRO.Value:='';
    END;
  QRub.Close;
END;

procedure TFormAsignacionCtaGastoStock.BitBtn1Click(Sender: TObject);
begin
  inherited;
 if Not(CDSStock.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoStockGasto.fr3');
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormAsignacionCtaGastoStock.btExcelClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSStock.IsEmpty) THEN
    BEGIN
      SaveDialog.FileName:='RelacionStockGasto';
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
end;

procedure TFormAsignacionCtaGastoStock.BuscarCtaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCuenta.Close;
  CDSBuscaCuenta.Params.ParamByName('rubro').AsString := CDSStockRUBRO_GASTO.AsString;
  CDSBuscaCuenta.Open;
  comBuscadorCuenta.Execute;
  if comBuscadorCuenta.rOk Then
    CDSStockRUBRO_CTA_GASTOSetText(CDSStockRUBRO_CTA_GASTO, comBuscadorCuenta.Id);
  CDSBuscaCuenta.Close;
end;

procedure TFormAsignacionCtaGastoStock.BuscarExecute(Sender: TObject);
begin
 // inherited;
  CDSStock.Close;
  CDSStock.IndexFieldNames:='';
  CDSStock.IndexDefs.Clear;
  CDSStock.Params.ParamByName('rubro').Value   :=RxDBLookupCombo2.KeyValue;
  CDSStock.Params.ParamByName('subrubro').Value:=RxDBLookupCombo3.KeyValue;
  CDSStock.Open;

end;

procedure TFormAsignacionCtaGastoStock.BuscarRubroExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaRubro.Close;
  CDSBuscaRubro.Open;
  comBuscadorRubro.Execute;
  if comBuscadorRubro.rOk Then
    CDSStockRUBRO_GASTOSetText(CDSStockRUBRO_GASTO, comBuscadorRubro.Id);
  CDSBuscaRubro.Close;
end;

procedure TFormAsignacionCtaGastoStock.CDSStockBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  CDSStock.Cancel;
  SysUtils.Abort;
end;

procedure TFormAsignacionCtaGastoStock.CDSStockRUBRO_CTA_GASTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSStock.State=dsBrowse Then CDSStock.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarCta(CDSStockRUBRO_GASTO.AsString,Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
    end;
end;

procedure TFormAsignacionCtaGastoStock.CDSStockRUBRO_GASTOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      if CDSStock.State=dsBrowse Then CDSStock.Edit;
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
      if Not(AsignarRubro(Sender.AsString)) Then
        begin
          ShowMessage('Dato no Válido');
          Sender.AsString:='';
        end;
   end;
end;

procedure TFormAsignacionCtaGastoStock.ConfirmaExecute(Sender: TObject);
begin
//  inherited;
  CDSStock.ApplyUpdates(0);
  Buscar.Execute;
end;

procedure TFormAsignacionCtaGastoStock.dbgStockColEnter(Sender: TObject);
begin
  inherited;
  if dbgStock.SelectedIndex<=1 then
    dbgStock.SelectedIndex:=2
  else
    if dbgStock.SelectedIndex=3 then
      dbgStock.SelectedIndex:=4
    else
      if dbgStock.SelectedIndex>4 then
        dbgStock.SelectedIndex:=4;



end;

procedure TFormAsignacionCtaGastoStock.dbgStockEditButtonClick(Sender: TObject);
begin
  inherited;
  if dbgStock.SelectedIndex=2 Then
    BuscarRubro.Execute
  else
    if dbgStock.SelectedIndex=4 Then
      BuscarCta.Execute;

end;

procedure TFormAsignacionCtaGastoStock.dbgStockKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  iF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    if (dbgStock.SelectedIndex = 4) THEN
      dbgStock.SelectedIndex := 1;
  iF (Key = VK_DELETE) or (Key = VK_BACK) THEN
    begin
      if CDSStock.State=dsBrowse then
        CDSStock.Edit;
      if (dbgStock.SelectedIndex = 2) THEN
        begin
          CDSStockRUBRO_GASTO.Value:='***';
          CDSStockRUBRO_CTA_GASTO.Value:='******';
          CDSStockMUESTRAGASTORUBRO.Value:='';
          CDSStockMUESTRAGASTOCTA.Value  :='';
        end
      else
        if (dbgStock.SelectedIndex = 4) THEN
          begin
            CDSStockRUBRO_CTA_GASTO.Value:='******';
            CDSStockMUESTRAGASTOCTA.Value  :='';
            end
    end;

end;

procedure TFormAsignacionCtaGastoStock.dbgStockKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgStock.SelectedIndex < 5) THEN
        dbgStock.SelectedIndex := dbgStock.SelectedIndex + 1;
    END
  ELSE
  if Key=#10 Then
    begin
      Key:=#0;
      if dbgStock.SelectedIndex=2 Then
        BuscarRubro.Execute
      else
        if dbgStock.SelectedIndex=4 Then
          BuscarCta.Execute;
    end;
end;

procedure TFormAsignacionCtaGastoStock.dbgStockTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campo:string;
begin
try
    Campo := Field.FieldName;
    with dbgStock.DataSource.DataSet as TClientDataSet do
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
procedure TFormAsignacionCtaGastoStock.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
  CDSStock.Close;
  CDSStock.Params.ParamByName('rubro').Value   :=RxDBLookupCombo2.KeyValue;
  CDSStock.Params.ParamByName('subrubro').Value:=RxDBLookupCombo3.KeyValue;
  CDSStock.Open;
end;

procedure TFormAsignacionCtaGastoStock.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormAsignacionCtaGastoStock.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize  :=False;
  CDSRubro.Open;
  CDSSubRubro.Open;
end;

procedure TFormAsignacionCtaGastoStock.FormDestroy(Sender: TObject);
begin
  inherited;
  FormAsignacionCtaGastoStock:=nil;
end;

procedure TFormAsignacionCtaGastoStock.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Not(ActiveControl is TJvDBGrid) then
    inherited;
end;

procedure TFormAsignacionCtaGastoStock.FormResize(Sender: TObject);
begin
  inherited;
  if FormAsignacionCtaGastoStock<>nil then
    if FormAsignacionCtaGastoStock.Width<>1140 then
      FormAsignacionCtaGastoStock.Width:=1140;
end;

procedure TFormAsignacionCtaGastoStock.RxDBLookupCombo2Click(Sender: TObject);
begin
  inherited;
  CDSSubRubro.Close;
  CDSSubRubro.Params.ParamByName('rubro').Value:= RxDBLookupCombo2.KeyValue;
  CDSSubRubro.Open;
  Buscar.Execute;
end;

procedure TFormAsignacionCtaGastoStock.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport();
end;

end.
