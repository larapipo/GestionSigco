unit UComposicionVtos_Vtas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit,
  cxCustomPivotGrid, cxDBPivotGrid, ComCtrls, StdCtrls, Mask, JvExMask,
  JvToolEdit, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvLabel, JvDBControls, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd,
  dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv,
  dxPSPrVwRibbon, dxPScxPageControlProducer, dxPScxPivotGridLnk,
  dxPScxEditorProducers, dxPScxExtEditorProducers, DBClient, Provider, dxPSCore,
  dxPScxCommon,cxExportPivotGridLink,DateUtils, cxCurrencyEdit, cxFilter,
  cxData, cxDataStorage, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, frxClass, frxDBSet,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxNavigator,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, System.Actions, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  JvDBLookup, JvAppStorage, JvAppIniStorage, dxPScxVGridLnk, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, dxDateRanges, dxScrollbarAnnotations, System.ImageList;

type
  TFormComposicionDeudaVta = class(TFormABMBase)
    pnCabecera: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    btExcelGastoCompra: TBitBtn;
    btImprimir: TBitBtn;
    SaveDialog: TSaveDialog;
    DSPVtas: TDataSetProvider;
    CDSVtas: TClientDataSet;
    CDSVtasID_FC: TIntegerField;
    CDSVtasTIPOCPBTE: TStringField;
    CDSVtasCLASECPBTE: TStringField;
    CDSVtasNROCPBTE: TStringField;
    CDSVtasCODIGO: TStringField;
    CDSVtasNOMBRE: TStringField;
    CDSVtasID_MOVCCVTA: TIntegerField;
    CDSVtasMESVTO: TSmallintField;
    CDSVtasANIOVTO: TSmallintField;
    CDSVtasMESVTA: TSmallintField;
    CDSVtasANIOVTA: TSmallintField;
    CDSVtasDIASMVTA: TSmallintField;
    CDSVtasDIASMVTO: TSmallintField;
    CDSVtasSEMANAVTA: TIntegerField;
    CDSVtasSEMANAVTO: TIntegerField;
    DSVtas: TDataSource;
    CDSVtasDETALLE: TStringField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field18: TcxDBPivotGridField;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1ID_FC: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1ID_MOVCCVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DEBE: TcxGridDBColumn;
    cxGrid1DBTableView1HABER: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1MESVTO: TcxGridDBColumn;
    cxGrid1DBTableView1ANIOVTO: TcxGridDBColumn;
    cxGrid1DBTableView1MESVTA: TcxGridDBColumn;
    cxGrid1DBTableView1ANIOVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DIASMVTA: TcxGridDBColumn;
    cxGrid1DBTableView1DIASMVTO: TcxGridDBColumn;
    cxGrid1DBTableView1SEMANAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1SEMANAVTO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO_ANTERIOR: TcxGridDBColumn;
    cxGrid1DBTableView1DETALLE: TcxGridDBColumn;
    CDSVtasCODIGONOM: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    CDSVtasMESVENCIMIENTO: TStringField;
    CDSVtasMESVENTA: TStringField;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    frxReport1: TfrxReport;
    frDBVtas: TfrxDBDataset;
    CDSVtasTELEFONO: TStringField;
    Label5: TLabel;
    dbcVistas: TJvDBLookupCombo;
    spVistas: TSpeedButton;
    DSPVista: TDataSetProvider;
    CDSVista: TClientDataSet;
    CDSVistaID: TIntegerField;
    CDSVistaVISTA: TBlobField;
    CDSVistaDESCRIPCION: TStringField;
    DSVista: TDataSource;
    cxDBPivotGrid1Field19: TcxDBPivotGridField;
    QVtas: TFDQuery;
    CDSVtasTOTAL: TFloatField;
    CDSVtasDEBE: TFloatField;
    CDSVtasHABER: TFloatField;
    CDSVtasSALDO: TFloatField;
    CDSVtasSALDO_ANTERIOR: TFloatField;
    Label6: TLabel;
    CDSVtasFECHAVTA: TSQLTimeStampField;
    CDSVtasFECHAVTO: TSQLTimeStampField;
    QVista: TFDQuery;
    procedure Label1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btExcelGastoCompraClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure CDSVtasCalcFields(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure sbEstadoClick(Sender: TObject);
    procedure spVistasClick(Sender: TObject);
    procedure dbcVistasChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormComposicionDeudaVta: TFormComposicionDeudaVta;

implementation

uses UDMain_FD, UVistasGrillas;

{$R *.dfm}

procedure TFormComposicionDeudaVta.btExcelGastoCompraClick(Sender: TObject);
begin
  inherited;
  IF NOT (CDSVtas.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='VencimientosVtas';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterFields   :=false;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormComposicionDeudaVta.btImprimirClick(Sender: TObject);
begin
  inherited;
  if PageControl1.ActivePageIndex=1 then
   // dxComponentPrinter1.Preview(True)
  else
    if PageControl1.ActivePageIndex=0 then
      begin
        CDSVtas.IndexFieldNames:='';
        CDSVtas.IndexFieldNames:='ANIOVTO;MESVTO;NOMBRE';

        frxReport1.PrintOptions.Printer:=PrNomListados;
        frxReport1.SelectPrinter;

        frxReport1.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtosClientesMensual.fr3');
        //frCtaCte.Variables['SaldoAnterior']:=''''+lbSaldoInicial.Caption+'''';

        //CDSMovCC.IndexFieldNames:='FECHAVTA;TIPOCPBTE;NROCPBTE';
        // frCtaCte.PrepareReport;
        frxReport1.ShowReport;
        //ceCliente.SetFocus;
        //ceCliente.SelectAll;
      end;

end;

procedure TFormComposicionDeudaVta.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  CDSVtas.Close;
  CDSVtas.Params.ParamByName('desde').AsDate:=Desde.Date;
  CDSVtas.Params.ParamByName('hasta').AsDate:=Hasta.Date;
  CDSVtas.Open;
  CDSVtas.IndexFieldNames:='';
  CDSVtas.IndexFieldNames:='ANIOVTO;MESVTO;NOMBRE';

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormComposicionDeudaVta.CDSVtasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtasSEMANAVTA.Value      := NthDayOfWeek(CDSVtasFECHAVTA.AsDateTime);
  CDSVtasSEMANAVTO.Value      := NthDayOfWeek(CDSVtasFECHAVTO.AsDateTime);
  CDSVtasMESVENCIMIENTO.Value := UpperCase(FormatDateTime('mmmm',CDSVtasFECHAVTO.AsDateTime));
  CDSVtasMESVENTA.Value       := UpperCase(FormatDateTime('mmmm',CDSVtasFECHAVTA.AsDateTime));

end;

procedure TFormComposicionDeudaVta.dbcVistasChange(Sender: TObject);
var
  AStream: TMemoryStream;
  i:Integer;
begin
  AStream := TMemoryStream.Create;
  CDSVistaVISTA.SaveToStream(AStream);
  AStream.Position := 0;
  cxDBPivotGrid1.RestoreFromStream(AStream);
  FreeAndNil(AStream);
  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormComposicionDeudaVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtosVta');
  //*************************************************************
end;

procedure TFormComposicionDeudaVta.FormCreate(Sender: TObject);
begin
  inherited;
  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='VTOVTA';
  CDSVista.Open;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
end;

procedure TFormComposicionDeudaVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComposicionDeudaVta:=nil;
end;

procedure TFormComposicionDeudaVta.FormShow(Sender: TObject);
VAR M,D,A:Word;
begin
  inherited;
  DecodeDate(Date,A,M,D);
  Desde.Date:=EncodeDate(A,M,1);
  Hasta.Date:=EncodeDate(A,M,DaysInMonth(Desde.Date));
 //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtosVta');
 //*************************************************************

end;

procedure TFormComposicionDeudaVta.Label1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormComposicionDeudaVta.sbEstadoClick(Sender: TObject);
begin
  inherited;
  frxReport1.DesignReport;
end;

procedure TFormComposicionDeudaVta.spVistasClick(Sender: TObject);
var
  AStream: TMemoryStream;
begin
  inherited;
  AStream := TMemoryStream.Create;
  cxDBPivotGrid1.StoreToStream(AStream);
  AStream.Position := 0;
  if Not(Assigned(FormVistaGrillas)) then
    FormVistaGrillas:=TFormVistaGrillas.Create(Self);
  FormVistaGrillas.Tipo:='VTOVTA';
  FormVistaGrillas.Dato:=AStream;
  FormVistaGrillas.ShowModal;
  FreeAndNil(AStream);


  CDSVista.Close;
  CDSVista.Params.ParamByName('origen').Value:='VTOVTA';
  CDSVista.Open;


end;

procedure TFormComposicionDeudaVta.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.date));
  //if dbcCtas.Text<>'' Then
  Buscar.Execute;
  //  Desde.SetFocus;
end;


end.
