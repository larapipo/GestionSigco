unit UResumenGeneralCajas;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,StrUtils,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, AdvEdit, Vcl.StdCtrls, Vcl.Mask,
  Vcl.ExtCtrls, JvExControls, JvDBLookup, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles,
  cxEdit, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, Vcl.Buttons, cxCustomPivotGrid, cxDBPivotGrid, JvExMask,
  JvToolEdit, JvBaseEdits,IniFiles, Vcl.CheckLst, JvExExtCtrls, JvExtComponent,
  JvPanel, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxGridLnk,
  dxPScxGridLayoutViewLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPScxCommon, dxPSCore,VirtualUI_Sdk,cxExportPivotGridLink,
  Vcl.ComCtrls, JvFormPlacement, JvComponentBase, JvAppStorage, JvAppIniStorage,
  dxPScxVGridLnk, Datasnap.DBClient, Datasnap.Provider, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxBarBuiltInMenu;

type
  TFormResumenGralCajas = class(TForm)
    QCajasGen: TFDQuery;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    QctasCaja: TFDQuery;
    DSCajas: TDataSource;
    edCaja: TJvDBLookupCombo;
    DSCajasGeneral: TDataSource;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1IDCAJA: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRECTACAJA: TcxDBPivotGridField;
    cxDBPivotGrid1NROCAJA: TcxDBPivotGridField;
    cxDBPivotGrid1FECHAINICIO: TcxDBPivotGridField;
    cxDBPivotGrid1FECHACIERRE: TcxDBPivotGridField;
    cxDBPivotGrid1ID_MOVIMIENTO: TcxDBPivotGridField;
    cxDBPivotGrid1FECHA: TcxDBPivotGridField;
    cxDBPivotGrid1TIPO_COMPROB: TcxDBPivotGridField;
    cxDBPivotGrid1CLASE_COMPRO: TcxDBPivotGridField;
    cxDBPivotGrid1NROCOMPROB: TcxDBPivotGridField;
    cxDBPivotGrid1DEBE: TcxDBPivotGridField;
    cxDBPivotGrid1HABER: TcxDBPivotGridField;
    cxDBPivotGrid1ID_TPAGO: TcxDBPivotGridField;
    cxDBPivotGrid1ID_FPAGO: TcxDBPivotGridField;
    cxDBPivotGrid1MUESTRAFPAGO: TcxDBPivotGridField;
    cxDBPivotGrid1COTIZACION: TcxDBPivotGridField;
    cxDBPivotGrid1UNIDADES: TcxDBPivotGridField;
    cxDBPivotGrid1DESCRIPCION: TcxDBPivotGridField;
    cxDBPivotGrid1NOMBRE: TcxDBPivotGridField;
    cxDBPivotGrid1SIGNO: TcxDBPivotGridField;
    cxDBPivotGrid1ID_CTA_CAJA: TcxDBPivotGridField;
    cxDBPivotGrid1ANIO: TcxDBPivotGridField;
    cxDBPivotGrid1MES: TcxDBPivotGridField;
    SpeedButton1: TSpeedButton;
    edAnio: TJvCalcEdit;
    edHasta: TJvCalcEdit;
    edDesde: TJvCalcEdit;
    QctasCajaID_CUENTA: TIntegerField;
    QctasCajaID_TIPO_CTA: TIntegerField;
    QctasCajaNOMBRE: TStringField;
    QctasCajaNRO_CUENTA: TStringField;
    QctasCajaID_BANCO: TIntegerField;
    QctasCajaCUIT: TStringField;
    QctasCajaRAZONSOCIAL: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    pnTotales: TJvPanel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    chOpSumas: TCheckListBox;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    dxComponentPrinter1Link2: TdxGridReportLink;
    SaveDialog: TSaveDialog;
    UpDown1: TUpDown;
    JvAppIniFileStorage1: TJvAppIniFileStorage;
    JvFormStorage: TJvFormStorage;
    DSPCajasGeneral: TDataSetProvider;
    CDSCajasGeneral: TClientDataSet;
    CDSCajasGeneralIDCAJA: TIntegerField;
    CDSCajasGeneralNOMBRECTACAJA: TStringField;
    CDSCajasGeneralNROCAJA: TIntegerField;
    CDSCajasGeneralID_MOVIMIENTO: TIntegerField;
    CDSCajasGeneralTIPO_COMPROB: TStringField;
    CDSCajasGeneralCLASE_COMPRO: TStringField;
    CDSCajasGeneralNROCOMPROB: TStringField;
    CDSCajasGeneralDEBE: TFloatField;
    CDSCajasGeneralHABER: TFloatField;
    CDSCajasGeneralID_TPAGO: TIntegerField;
    CDSCajasGeneralID_FPAGO: TIntegerField;
    CDSCajasGeneralMUESTRAFPAGO: TStringField;
    CDSCajasGeneralCOTIZACION: TFloatField;
    CDSCajasGeneralUNIDADES: TFloatField;
    CDSCajasGeneralDESCRIPCION: TStringField;
    CDSCajasGeneralNOMBRE: TStringField;
    CDSCajasGeneralSIGNO: TStringField;
    CDSCajasGeneralID_CTA_CAJA: TIntegerField;
    CDSCajasGeneralANIO: TFloatField;
    CDSCajasGeneralMES: TIntegerField;
    CDSCajasGeneralFECHAINICIO: TSQLTimeStampField;
    CDSCajasGeneralFECHACIERRE: TSQLTimeStampField;
    CDSCajasGeneralFECHA: TSQLTimeStampField;
    CDSCajasGeneralMUESTRAMES: TStringField;
    pnPie: TPanel;
    btDatosCruzados: TBitBtn;
    btExportarXLS: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Label5Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure chOpSumasClick(Sender: TObject);
    procedure btDatosCruzadosClick(Sender: TObject);
    procedure btExportarXLSClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure CDSCajasGeneralCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormResumenGralCajas: TFormResumenGralCajas;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses UDMain_FD;

{$R *.dfm}

procedure TFormResumenGralCajas.btDatosCruzadosClick(Sender: TObject);
begin
  dxComponentPrinter1Link1.Preview(True);
end;

procedure TFormResumenGralCajas.btExportarXLSClick(Sender: TObject);
begin
 if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSCajasGeneral.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='CajasRes';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
         SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;
      if SaveDialog.Execute Then
        begin
          if VirtualUI.Active then
           if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
             SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

          cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
          if VirtualUI.Active then
            VirtualUI.DownloadFile(SaveDialog.FileName);
        end;

      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormResumenGralCajas.CDSCajasGeneralCalcFields(DataSet: TDataSet);
begin
   CDSCajasGeneralMUESTRAMES.Value:= FormatDateTime('MMMM', CDSCajasGeneralFECHAINICIO.AsDateTime);
end;

procedure TFormResumenGralCajas.chOpSumasClick(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := chOpSumas.Checked[0];
  cxDBPivotGrid1.OptionsView.ColumnTotals      := chOpSumas.Checked[1];
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := chOpSumas.Checked[2];
  cxDBPivotGrid1.OptionsView.RowTotals         := chOpSumas.Checked[3];
 end;

procedure TFormResumenGralCajas.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormResumenGralCajas.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
   AMoved := FDragDrop;
end;

procedure TFormResumenGralCajas.cxDBPivotGrid1MouseUp(Sender: TObject;
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

procedure TFormResumenGralCajas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
//*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaResumenCaja');
  //*************************************************************
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumgrillaResumenCaja.ini');
  ArchivoIni.WriteBool('Suma', 'CGranTotal', cxDBPivotGrid1.OptionsView.ColumnGrandTotals);
  ArchivoIni.WriteBool('Suma', 'CTotal', cxDBPivotGrid1.OptionsView.ColumnTotals);
  ArchivoIni.WriteBool('Suma', 'RGranTotal', cxDBPivotGrid1.OptionsView.RowGrandTotals);
  ArchivoIni.WriteBool('Suma', 'RTotal', cxDBPivotGrid1.OptionsView.RowTotals);

  ArchivoIni.Free;

  Action:=cafree;
end;

procedure TFormResumenGralCajas.FormCreate(Sender: TObject);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'_SumgrillaResumenCaja.ini');

  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  cxDBPivotGrid1.OptionsView.ColumnGrandTotals := ArchivoIni.ReadBool('Suma', 'CGranTotal', True);
  cxDBPivotGrid1.OptionsView.ColumnTotals      := ArchivoIni.ReadBool('Suma', 'CTotal', True);
  cxDBPivotGrid1.OptionsView.RowGrandTotals    := ArchivoIni.ReadBool('Suma', 'RGranTotal', True);
  cxDBPivotGrid1.OptionsView.RowTotals         := ArchivoIni.ReadBool('Suma', 'RTotal', True);

  ArchivoIni.Free;

  cxDBPivotGrid1.OptionsView.FilterFields:=False;

  chOpSumas.Checked[0]:= cxDBPivotGrid1.OptionsView.ColumnGrandTotals;
  chOpSumas.Checked[1]:= cxDBPivotGrid1.OptionsView.ColumnTotals;
  chOpSumas.Checked[2]:= cxDBPivotGrid1.OptionsView.RowGrandTotals;
  chOpSumas.Checked[3]:= cxDBPivotGrid1.OptionsView.RowTotals;

end;

procedure TFormResumenGralCajas.FormDestroy(Sender: TObject);
begin
  FormResumenGralCajas:=nil;
end;

procedure TFormResumenGralCajas.FormShow(Sender: TObject);
begin
  QctasCaja.Close;
  QctasCaja.Open();
  edAnio.Value:=StrToInt( FormatDateTime('yyyy',Date));
end;

procedure TFormResumenGralCajas.Label4Click(Sender: TObject);
begin
  pnTotales.Visible:=Not(pnTotales.Visible);
end;

procedure TFormResumenGralCajas.Label5Click(Sender: TObject);
begin
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormResumenGralCajas.SpeedButton1Click(Sender: TObject);
var i:Integer;
begin
  CDSCajasGeneral.Close;
  CDSCajasGeneral.Params.ParamByName('desde').Value := edDesde.Value;
  CDSCajasGeneral.Params.ParamByName('hasta').Value := edHasta.Value;
  CDSCajasGeneral.Params.ParamByName('anio').Value  := edAnio.Value;
  CDSCajasGeneral.Params.ParamByName('id').Value    := edCaja.KeyValue;
  CDSCajasGeneral.Open();

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll; pnTotales.Visible:=False;

end;

procedure TFormResumenGralCajas.SpeedButton2Click(Sender: TObject);
begin
 pnTotales.Visible:=False;
end;

procedure TFormResumenGralCajas.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
begin
 if Button=btnext Then
   edAnio.Value:=edAnio.Value+1
 else
   if Button=btPrev Then
     edAnio.Value:=edAnio.Value-1;
SpeedButton1.Click;
end;

end.
