unit UListadoOTrabajo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, DB, DBClient, Provider, ComCtrls, StdCtrls,
  Mask, JvExMask, JvToolEdit, SqlExpr, JvComponentBase, JvFormPlacement,
  ImgList, ActnList, JvLabel, JvDBControls, JvExControls,
  JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils,dxPScxPivotGridLnk, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxPSCore, dxPScxCommon, dxSkinsCore, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2007Black,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinSevenClassic, dxSkinSharpPlus, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinVS2010, dxSkinWhiteprint, dxSkinscxPCPainter,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage,
  System.Actions, dxSkinBlue, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinValentine,
  dxSkinXmas2008Blue, VirtualUI_SDK, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  CompBuscador,cxGridExportLink,dxPScxVGridLnk,cxExportPivotGridLink,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFormListadoOT = class(TFormABMBase)
    Label2: TLabel;
    Label3: TLabel;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    UpDown1: TUpDown;
    DSOt: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    btImprimir: TBitBtn;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    btExcel: TBitBtn;
    SaveDialog: TSaveDialog;
    QOt: TFDQuery;
    QOtID_OT: TIntegerField;
    QOtTIPOCPBTE: TStringField;
    QOtRESPONSABLE_OT: TStringField;
    QOtCLASECPBTE: TStringField;
    QOtNROCPBTE: TStringField;
    QOtCODIGO: TStringField;
    QOtNOMBRE: TStringField;
    QOtTOTAL: TFloatField;
    QOtRESPONSABLE: TStringField;
    QOtMUESTRAESTADO: TStringField;
    Label1: TLabel;
    pnCabecera: TPanel;
    QOtFECHAINICIO: TSQLTimeStampField;
    QOtFECHAESTIMADA: TSQLTimeStampField;
    QOtFECHAFINAL: TSQLTimeStampField;
    Label4: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure cxDBPivotGrid1DblClick(Sender: TObject);
    procedure btExcelClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormListadoOT: TFormListadoOT;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UOrdenDeTrabajo,UDMain_FD;

{$R *.dfm}

procedure TFormListadoOT.btExcelClick(Sender: TObject);
begin
  inherited;
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (QOt.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='MovimientosOt';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        begin
          if VirtualUI.Active Then
            SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog.FileName);
            end;
        end;

      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoOT.btImprimirClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoOT.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  if (Hasta.Date>=Desde.Date) Then
    begin
      QOt.Close;
      QOt.ParamByName('desde').Value:=Desde.Date;
      QOt.ParamByName('hasta').Value:=Hasta.Date;
      QOt.Open;
      for i:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[i].ExpandAll;
      QOt.First;

    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');
end;

procedure TFormListadoOT.cxDBPivotGrid1DblClick(Sender: TObject);
var AViewInfo: TcxPivotGridDataCellViewInfo;
var
  ARow,AColumn: TcxPivotGridViewDataItem;
  codigo,AValue: String;
begin
  if cxDBPivotGrid1.HitTest.HitAtDataCell then
  begin
   ARow    := TcxPivotGridDataCellViewInfo(cxDBPivotGrid1.HitTest.HitObject).Row;
  // Caption := ARow.GetGroupItemByField(cxDBPivotGrid1Field11).DisplayText;
   Codigo  := ARow.GetGroupItemByField(cxDBPivotGrid1Field11).DisplayText;

 // AValue  := VarToStr(TcxPivotGridDataCellViewInfo(cxDBPivotGrid11.HitTest.HitObject).Value);

   if Not(Assigned(FormOrdenDeTrabajo)) Then
    FormOrdenDeTrabajo:=TFormOrdenDeTrabajo.Create(Application);
   FormOrdenDeTrabajo.DatoNew  :=(codigo);
   FormOrdenDeTrabajo.TipoCpbte:='OT';//CDSOtTIPOCPBTE.AsString;
   FormOrdenDeTrabajo.Recuperar.Execute;
   FormOrdenDeTrabajo.Show;


  end;
end;

procedure TFormListadoOT.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;


procedure TFormListadoOT.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormListadoOT.cxDBPivotGrid1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid1.FieldCount-1 do
        cxDBPivotGrid1.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormListadoOT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //*************************************************************
  Action:=caFree;
end;

procedure TFormListadoOT.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize := False;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,(-1* RangoFechasEmpleado));
  QOt.Open;
end;

procedure TFormListadoOT.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoOT:=nil;
end;

procedure TFormListadoOT.FormShow(Sender: TObject);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaArticulos');
  //*************************************************************
end;

procedure TFormListadoOT.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormListadoOT.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    begin
      Desde.Date := IncMonth(Desde.Date,(1));
      Hasta.Date := IncMonth(Hasta.Date,(1));
    end
  else
    if Button=btPrev Then
      begin
        Desde.Date := IncMonth(Desde.Date,(-1));
        Hasta.Date := IncMonth(Hasta.Date,(-1));
      end;
  Buscar.Execute;

end;

end.
