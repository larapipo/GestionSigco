unit UListadovtaPorVendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, JvExDBGrids, JvDBGrid, ComCtrls, StdCtrls,
  Mask, JvComponentBase, ImgList,
  DB,   ActnList, JvExControls, JvGradient,
  Buttons, ToolWin, ExtCtrls, Provider, DBClient,Librerias, JvDBLookup,
  frxExportPDF, frxClass,
  frxDBSet, DataExport, DataToXLS, JvFormPlacement, JvLabel,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses,
  cxCustomData, cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid,cxExportPivotGridLink,
  Menus, dxSkinsCore, dxSkinsDefaultPainters, System.Actions, dxSkinBlue,
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
  dxSkinWhiteprint, dxSkinXmas2008Blue, JvAppStorage, JvAppIniStorage,VirtualUI_SDK,
  Data.FMTBcd, JvBaseEdits, JvExMask, JvToolEdit, Data.SqlExpr, JvDBControls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxBarBuiltInMenu, frxExportBaseDialog, System.ImageList, frCoreClasses,
  AdvSmoothButton;

type
  TFormlistadoVtaPorVendedor = class(TFormABMBase)
    UpDown1: TUpDown;
    CDSVtas: TClientDataSet;
    DSPVtas: TDataSetProvider;
    DSVtas: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbcZona: TJvDBLookupCombo;
    dbcVendedor: TJvDBLookupCombo;
    dbcSucursal: TJvDBLookupCombo;
    CDSVtasTIPOCPBTE: TStringField;
    CDSVtasCLASECPBTE: TStringField;
    CDSVtasLETRAFAC: TStringField;
    CDSVtasNROCPBTE: TStringField;
    CDSVtasCODIGO: TStringField;
    CDSVtasRAZONSOCIAL: TStringField;
    CDSVtasVENDEDOR: TStringField;
    CDSVtasZONA: TIntegerField;
    CDSVtasSUCURSAL: TIntegerField;
    CDSVtasMUESTRAVENDEDOR: TStringField;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frxReport: TfrxReport;
    frVtas: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    BitBtn4: TBitBtn;
    SaveDialog1: TSaveDialog;
    DataToXLS: TDataToXLS;
    ExportarXLS: TAction;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    DSSucursales: TDataSource;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    DSPersonal: TDataSource;
    DSZona: TDataSource;
    CDSZona: TClientDataSet;
    CDSZonaID_ZONA: TIntegerField;
    CDSZonaDETALLE: TStringField;
    DSPZona: TDataSetProvider;
    RxLabel1: TJvLabel;
    RxLabel3: TJvLabel;
    CDSVtasTOTALNETO: TFloatField;
    CDSVtasTOTALNETOREC: TFloatField;
    CDSVtasTOTALRECALCULADO: TFloatField;
    CDSVtasID_FC: TIntegerField;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgMovimientos: TJvDBGrid;
    edNeto: TJvCalcEdit;
    edTotal: TJvCalcEdit;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    CDSVtasCONDICIONVTA: TIntegerField;
    CDSVtasMUESTRASUCURSAL: TStringField;
    CDSVtasANULADO: TStringField;
    CDSVtasANIO: TSmallintField;
    CDSVtasMES: TSmallintField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    CDSVtasMUESTRAMES: TStringField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    CamposxColumnas1: TMenuItem;
    CamposdeDatos1: TMenuItem;
    Filtros1: TMenuItem;
    CamposxRenglones1: TMenuItem;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    CDSVtasMUESTRACATEGORIA: TStringField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    DSPVtasDet: TDataSetProvider;
    CDSVtasDet: TClientDataSet;
    DSVtasDet: TDataSource;
    CDSVtasDetTIPOCPBTE: TStringField;
    CDSVtasDetCLASECPBTE: TStringField;
    CDSVtasDetLETRAFAC: TStringField;
    CDSVtasDetNROCPBTE: TStringField;
    CDSVtasDetID_FC: TIntegerField;
    CDSVtasDetCODIGO: TStringField;
    CDSVtasDetRAZONSOCIAL: TStringField;
    CDSVtasDetVENDEDOR: TStringField;
    CDSVtasDetMUESTRAVENDEDOR: TStringField;
    CDSVtasDetZONA: TIntegerField;
    CDSVtasDetSUCURSAL: TIntegerField;
    CDSVtasDetCONDICIONVTA: TIntegerField;
    CDSVtasDetMUESTRASUCURSAL: TStringField;
    CDSVtasDetCATEGORIA: TIntegerField;
    CDSVtasDetMUESTRACATEGORIA: TStringField;
    CDSVtasDetANULADO: TStringField;
    CDSVtasDetANIO: TSmallintField;
    CDSVtasDetMES: TSmallintField;
    CDSVtasDetCODIGOARTICULO: TStringField;
    CDSVtasDetDETALLE: TStringField;
    CDSVtasDetUNITARIO_TOTAL: TFloatField;
    CDSVtasDetUNITARIO_MASIVA: TFloatField;
    CDSVtasDetTOTAL_MASIVA: TFloatField;
    TabSheet3: TTabSheet;
    cxDBPivotGrid2: TcxDBPivotGrid;
    cxDBPivotGridField1: TcxDBPivotGridField;
    cxDBPivotGridField2: TcxDBPivotGridField;
    cxDBPivotGridField3: TcxDBPivotGridField;
    cxDBPivotGridField4: TcxDBPivotGridField;
    cxDBPivotGridField5: TcxDBPivotGridField;
    cxDBPivotGridField6: TcxDBPivotGridField;
    cxDBPivotGridField7: TcxDBPivotGridField;
    cxDBPivotGridField8: TcxDBPivotGridField;
    cxDBPivotGridField9: TcxDBPivotGridField;
    cxDBPivotGridField10: TcxDBPivotGridField;
    cxDBPivotGridField11: TcxDBPivotGridField;
    cxDBPivotGridField12: TcxDBPivotGridField;
    cxDBPivotGridField13: TcxDBPivotGridField;
    cxDBPivotGridField14: TcxDBPivotGridField;
    cxDBPivotGridField15: TcxDBPivotGridField;
    CDSVtasDetMUESTRAMES: TStringField;
    CDSVtasDetTOTALRECALCULADO: TFMTBCDField;
    CDSVtasDetUNITARIOREC: TFMTBCDField;
    CDSVtasDetTOTALFINAL_REC: TFMTBCDField;
    CDSVtasDetUNITARIO_FINAL_REC: TFMTBCDField;
    cxDBPivotGrid2Field1: TcxDBPivotGridField;
    cxDBPivotGrid2Field2: TcxDBPivotGridField;
    BitBtn3: TBitBtn;
    Label4: TLabel;
    Label5: TLabel;
    cxDBPivotGrid2Field3: TcxDBPivotGridField;
    CDSVtasDetHORA: TStringField;
    CDSVtasDetCOSTO_TOTAL: TFloatField;
    cxDBPivotGrid2Field4: TcxDBPivotGridField;
    CDSVtasDetCOSTOUNITARIO: TFloatField;
    cxDBPivotGrid2Field5: TcxDBPivotGridField;
    CDSVtasDetCOSTO_TOTAL_REC: TFMTBCDField;
    CDSVtasDetCOSTO_UNITARIO_REC: TFMTBCDField;
    CDSVtasDetCOSTOUNITARIOMASIVA: TFloatField;
    CDSVtasDetCOSTO_TOTALMASIVA: TFloatField;
    CDSVtasDetCOSTO_UNI_MASIVA_REC: TFMTBCDField;
    CDSVtasDetCOSTO_TOTAL_MAIVA_REC: TFMTBCDField;
    cxDBPivotGrid2Field6: TcxDBPivotGridField;
    cxDBPivotGrid2Field7: TcxDBPivotGridField;
    CDSVtasDetDIA: TIntegerField;
    cxDBPivotGrid2Field8: TcxDBPivotGridField;
    CDSVtasDetMUESTRACOBRADOR: TStringField;
    CDSVtasMUESTRACOBRADOR: TStringField;
    Label6: TLabel;
    dbcCobrador: TJvDBLookupCombo;
    CDSCobrador: TClientDataSet;
    StringField1: TStringField;
    StringField2: TStringField;
    DSCobrador: TDataSource;
    cxDBPivotGrid2Field9: TcxDBPivotGridField;
    cxDBPivotGrid1Field16: TcxDBPivotGridField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    QVtas: TFDQuery;
    CDSVtasTOTAL: TFloatField;
    QVtasDet: TFDQuery;
    CDSVtasDetCANTIDAD: TFloatField;
    CDSVtasDetTOTAL: TFloatField;
    pnPieGral: TPanel;
    pnCabecera: TPanel;
    pnPieCruzado: TPanel;
    pnPieDetalles: TPanel;
    CDSVtasDetTOTALCPBTE: TFloatField;
    CDSVtasDetTOTALCPBTENETO: TFloatField;
    CDSVtasDetTOTALCPBTE_REC: TFloatField;
    CDSVtasDetTOTALCPBTENETO_REC: TFloatField;
    cxDBPivotGrid2Field10: TcxDBPivotGridField;
    cxDBPivotGrid2Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field17: TcxDBPivotGridField;
    CDSVtasFECHAVTA: TSQLTimeStampField;
    CDSVtasFECHAVTO: TSQLTimeStampField;
    CDSVtasFECHA_HORA: TSQLTimeStampField;
    CDSVtasDetFECHAVTA: TSQLTimeStampField;
    CDSVtasDetFECHAVTO: TSQLTimeStampField;
    CDSVtasDetFECHA_HORA: TSQLTimeStampField;
    N1: TMenuItem;
    LimpiarFiltros: TMenuItem;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure CDSVtasCalcFields(DataSet: TDataSet);
    procedure dbgMovimientosDblClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure CamposxColumnas1Click(Sender: TObject);
    procedure CamposdeDatos1Click(Sender: TObject);
    procedure Filtros1Click(Sender: TObject);
    procedure CamposxRenglones1Click(Sender: TObject);
    procedure CDSVtasDetCalcFields(DataSet: TDataSet);
    procedure BitBtn3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LimpiarFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure sumar;
  end;

 TPivotGridAccess = class(TcxDBPivotGrid);
 TPivotGridControllerAccess = class (TcxPivotGridController);

var
  FormlistadoVtaPorVendedor: TFormlistadoVtaPorVendedor;
  FDragDrop : Boolean;
  AMoved    : Boolean;

implementation

uses DMBuscadoresForm, UDMain_FD,UMuestraCpbteCtaCteVta,
  UFactura_2, UFacturaCtdo_2, UTiketVta;

{$R *.dfm}

procedure TFormlistadoVtaPorVendedor.Sumar;
var CDSClone:TClientDataSet;
begin
  edTotal.Value:=0;
  edNeto.Value :=0;
  CDSClone     :=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSVtas,True);
  CDSClone.First;
  while not(CDSClone.Eof) do
    begin
      edTotal.Value:= edTotal.Value + CDSClone.FieldByName('TOTALRECALCULADO').AsFloat;
      edNeto.Value := edNeto.Value + CDSClone.FieldByName('TOTALNETOREC').AsFloat;
      CDSClone.Next;
    end;
  FreeAndNil(CDSClone);
end;


procedure TFormlistadoVtaPorVendedor.BitBtn2Click(Sender: TObject);
begin
  inherited;
  IF NOT (CDSVtas.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog1.FileName:='MovimientosArt';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
      cxDBPivotGrid1.OptionsView.DataFields     :=True;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid1.OptionsView.RowFields      :=True;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormlistadoVtaPorVendedor.BitBtn3Click(Sender: TObject);
begin
  inherited;
  IF NOT (CDSVtas.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid2.OptionsView.DataFields     :=False;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid2.OptionsView.RowFields      :=False;
      cxDBPivotGrid2.OptionsView.FilterFields   :=False;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=False;
      SaveDialog1.FileName:='MovimientosArt';
      SaveDialog1.DefaultExt:='XLS';
      if SaveDialog1.Execute Then
        cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid2);
      cxDBPivotGrid2.OptionsView.DataFields     :=True;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid2.OptionsView.RowFields      :=True;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=True;

    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormlistadoVtaPorVendedor.BuscarExecute(Sender: TObject);
var i:Integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;
  CDSVtas.Close;
  CDSVtas.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSVtas.Params.ParamByName('zona').Value:=dbcZona.KeyValue;
  CDSVtas.Params.ParamByName('Vendedor').Value:=dbcVendedor.KeyValue;
  CDSVtas.Params.ParamByName('Cobrador').Value:=dbcCobrador.KeyValue;

  CDSVtas.Params.ParamByName('desde').Value:=desde.Date;
  CDSVtas.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSVtas.Open;

  CDSVtasDet.Close;
  CDSVtasDet.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSVtasDet.Params.ParamByName('zona').Value:=dbcZona.KeyValue;
  CDSVtasDet.Params.ParamByName('Vendedor').Value:=dbcVendedor.KeyValue;
  CDSVtasDet.Params.ParamByName('Cobrador').Value:=dbcCobrador.KeyValue;
  CDSVtasDet.Params.ParamByName('desde').Value:=desde.Date;
  CDSVtasDet.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSVtasDet.Open;
  sumar;
  Screen.Cursor:=crDefault;

  for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;
 for i:=0 to cxDBPivotGrid2.FieldCount-1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;
end;

procedure TFormlistadoVtaPorVendedor.CamposdeDatos1Click(Sender: TObject);
begin
  inherited;
 cxDBPivotGrid1.OptionsView.DataFields:=Not(cxDBPivotGrid1.OptionsView.DataFields);
  CamposdeDatos1.Checked               :=cxDBPivotGrid1.OptionsView.DataFields;
end;

procedure TFormlistadoVtaPorVendedor.CamposxColumnas1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnFields:=Not(cxDBPivotGrid1.OptionsView.ColumnFields);
  CamposxColumnas1.Checked               :=cxDBPivotGrid1.OptionsView.ColumnFields;
end;

procedure TFormlistadoVtaPorVendedor.CamposxRenglones1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.RowFields:=Not(cxDBPivotGrid1.OptionsView.RowFields);
  CamposxRenglones1.Checked               :=cxDBPivotGrid1.OptionsView.RowFields;

end;

procedure TFormlistadoVtaPorVendedor.CDSVtasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtasTOTALRECALCULADO.Value:=CDSVtasTOTAL.AsFloat;
  if CDSVtasTIPOCPBTE.Value='NC' then
    CDSVtasTOTALRECALCULADO.Value:=CDSVtasTOTALRECALCULADO.Value*-1;
  CDSVtasTOTALNETOREC.Value:=CDSVtasTOTALNETO.AsFloat;
  if CDSVtasTIPOCPBTE.Value='NC' then
    CDSVtasTOTALNETOREC.Value:=CDSVtasTOTALNETOREC.Value*-1;
 case CDSVtasMES.Value of
    1:CDSVtasMUESTRAMES.Value:=' 1-Enero';
    2:CDSVtasMUESTRAMES.Value:=' 2-Febrero';
    3:CDSVtasMUESTRAMES.Value:=' 3-Marzo';
    4:CDSVtasMUESTRAMES.Value:=' 4-Abril';
    5:CDSVtasMUESTRAMES.Value:=' 5-Mayo';
    6:CDSVtasMUESTRAMES.Value:=' 6-Junio';
    7:CDSVtasMUESTRAMES.Value:=' 7-Julio';
    8:CDSVtasMUESTRAMES.Value:=' 8-Agosto';
    9:CDSVtasMUESTRAMES.Value:=' 9-Septiembre';
   10:CDSVtasMUESTRAMES.Value:='10-Octubre';
   11:CDSVtasMUESTRAMES.Value:='11-Noviembre';
   12:CDSVtasMUESTRAMES.Value:='12-Diciembre';
  end;
end;

procedure TFormlistadoVtaPorVendedor.CDSVtasDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVtasDetHORA.Value:=FormatDateTime('HH:MM',CDSVtasDetFECHA_HORA.AsDateTime);
  CDSVtasDetTOTALRECALCULADO.AsFloat:=CDSVtasDetTOTAL.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetTOTALRECALCULADO.AsFloat:=CDSVtasDetTOTALRECALCULADO.AsFloat*-1;

  CDSVtasDetTOTALFINAL_REC.AsFloat:=CDSVtasDetTOTAL_MASIVA.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetTOTALFINAL_REC.AsFloat:=CDSVtasDetTOTALFINAL_REC.AsFloat*-1;

  CDSVtasDetUNITARIOREC.AsFloat:=CDSVtasDetUNITARIO_TOTAL.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetUNITARIOREC.AsFloat:=CDSVtasDetUNITARIOREC.AsFloat*-1;

  CDSVtasDetUNITARIO_FINAL_REC.AsFloat:=CDSVtasDetUNITARIO_MASIVA.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetUNITARIO_FINAL_REC.AsFloat:=CDSVtasDetUNITARIO_MASIVA.AsFloat*-1;

  CDSVtasDetCOSTO_UNITARIO_REC.AsFloat:=CDSVtasDetCOSTOUNITARIO.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetCOSTO_UNITARIO_REC.AsFloat:=CDSVtasDetCOSTOUNITARIO.AsFloat*-1;

  CDSVtasDetCOSTO_TOTAL_REC.AsFloat:=CDSVtasDetCOSTO_TOTAL.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetCOSTO_TOTAL_REC.AsFloat:=CDSVtasDetCOSTO_TOTAL.AsFloat*-1;

 CDSVtasDetCOSTO_UNI_MASIVA_REC.AsFloat:=CDSVtasDetCOSTOUNITARIOMASIVA.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetCOSTO_UNI_MASIVA_REC.AsFloat:=CDSVtasDetCOSTOUNITARIOMASIVA.AsFloat*-1;

 CDSVtasDetCOSTO_TOTAL_MAIVA_REC.AsFloat:=CDSVtasDetCOSTO_TOTALMASIVA.AsFloat;
  if CDSVtasDetTIPOCPBTE.Value='NC' then
    CDSVtasDetCOSTO_TOTAL_MAIVA_REC.AsFloat:=CDSVtasDetCOSTO_TOTALMASIVA.AsFloat*-1;

 CDSVtasDetTOTALCPBTE_REC.Value     := CDSVtasDetTOTALCPBTE.Value;
 CDSVtasDetTOTALCPBTENETO_REC.Value := CDSVtasDetTOTALCPBTENETO.Value;
 if CDSVtasDetTIPOCPBTE.Value='NC' then
   begin
     CDSVtasDetTOTALCPBTE_REC.Value     := CDSVtasDetTOTALCPBTE_REC.Value*-1;
     CDSVtasDetTOTALCPBTENETO_REC.Value := CDSVtasDetTOTALCPBTENETO_REC.Value*-1;
   end;

  case CDSVtasDetMES.Value of
    1:CDSVtasDetMUESTRAMES.Value:=' 1-Enero';
    2:CDSVtasDetMUESTRAMES.Value:=' 2-Febrero';
    3:CDSVtasDetMUESTRAMES.Value:=' 3-Marzo';
    4:CDSVtasDetMUESTRAMES.Value:=' 4-Abril';
    5:CDSVtasDetMUESTRAMES.Value:=' 5-Mayo';
    6:CDSVtasDetMUESTRAMES.Value:=' 6-Junio';
    7:CDSVtasDetMUESTRAMES.Value:=' 7-Julio';
    8:CDSVtasDetMUESTRAMES.Value:=' 8-Agosto';
    9:CDSVtasDetMUESTRAMES.Value:=' 9-Septiembre';
   10:CDSVtasDetMUESTRAMES.Value:='10-Octubre';
   11:CDSVtasDetMUESTRAMES.Value:='11-Noviembre';
   12:CDSVtasDetMUESTRAMES.Value:='12-Diciembre';
  end;
  CDSVtasDetDIA.Value:=StrToInt(FormatDateTime('dd',CDSVtasDetFECHAVTA.AsDateTime));
end;

procedure TFormlistadoVtaPorVendedor.cxDBPivotGrid1MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved    := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid1).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;


procedure TFormlistadoVtaPorVendedor.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  AMoved := FDragDrop;
end;

procedure TFormlistadoVtaPorVendedor.cxDBPivotGrid1MouseUp(Sender: TObject;
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


procedure TFormlistadoVtaPorVendedor.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
   if Not(CDSVtas.IsEmpty) then
    begin
      SaveDialog1.DefaultExt:='xls';
      SaveDialog1.FileName  :='ListadoVta';

      SaveDialog1.FileName:=SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt;

      if SaveDialog1.Execute Then
        if SaveDialog1.FileName<>'' Then
          begin
            DataToXLS.SaveToFile(SaveDialog1.FileName);

            if VirtualUI.Active then
              VirtualUI.DownloadFile(SaveDialog1.FileName);
          end;

    end;
end;

procedure TFormlistadoVtaPorVendedor.Filtros1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
  Filtros1.Checked                       :=cxDBPivotGrid1.OptionsView.FilterFields;

end;

procedure TFormlistadoVtaPorVendedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
  cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor1');
  cxDBPivotGrid2.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor2');
  //*************************************************************

  inherited;
  Action:=cafree;
end;

procedure TFormlistadoVtaPorVendedor.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_fd.Nombre_PC;
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
//  Desde.Date := IncMonth(Hasta.Date,(-1*RangoFechas))+1;

  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;

  CDSPersonal.OPen;
  CDSCobrador.OPen;
  CDSZona.Open;
  CDSSucursal.Open;
  PageControl1.ActivePageIndex:=0;
  dbcSucursal.KeyValue:= SucursalPorDefecto;
  dbcSucursal.Enabled := DMMain_FD.ModificaSucursal;
end;

procedure TFormlistadoVtaPorVendedor.FormDestroy(Sender: TObject);
begin
  inherited;
  FormlistadoVtaPorVendedor:=nil;
end;

procedure TFormlistadoVtaPorVendedor.FormShow(Sender: TObject);
begin
  inherited;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor1');
  cxDBPivotGrid2.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor2');
  //*************************************************************
end;

procedure TFormlistadoVtaPorVendedor.ImprimirExecute(Sender: TObject);
begin
  inherited;
 if Not(CDSVtas.IsEmpty) Then
    begin
      frxReport.PrintOptions.Printer:=PrNomListados;
      frxReport.SelectPrinter;
      frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtasTotalesVendedor.fr3');
      frxReport.Variables['Vendedor'] :=''''+dbcVendedor.Text+'''';
      frxReport.Variables['Zona']     :=''''+dbcZona.Text+'''';
      frxReport.Variables['Sucursal'] :=''''+dbcSucursal.Text+'''';
      frxReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormlistadoVtaPorVendedor.Label4Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormlistadoVtaPorVendedor.Label5Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormlistadoVtaPorVendedor.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   APivot:=cxDBPivotGrid1;
   APivot.DataController.BeginUpdate;
   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;
   APivot.DataController.EndUpdate;

   for i:=0 to cxDBPivotGrid1.FieldCount-1 do
     cxDBPivotGrid1.Fields[i].ExpandAll;

end;

procedure TFormlistadoVtaPorVendedor.dbgMovimientosDblClick(Sender: TObject);
begin
  inherited;
  if (CDSVtasTIPOCPBTE.AsString='FC') or
     (CDSVtasTIPOCPBTE.AsString='NC') or
     (CDSVtasTIPOCPBTE.AsString='ND') Then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2    := TFormCpbte_2.Create(Self);
      FormCpbte_2.DatoNew   := CDSVtasID_FC.AsString;
      FormCpbte_2.TipoCpbte := CDSVtasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSVtasTIPOCPBTE.AsString='FO') Then
    begin
      IF NOT (Assigned(FormCpbteCtdo_2)) THEN
        FormCpbteCtdo_2    := TFormCpbteCtdo_2.Create(Self);
      FormCpbteCtdo_2.DatoNew   := CDSVtasID_FC.AsString;
      FormCpbteCtdo_2.TipoCpbte := CDSVtasTIPOCPBTE.AsString;
      FormCpbteCtdo_2.Recuperar.Execute;
      FormCpbteCtdo_2.Show;
    end
  else
    if (CDSVtasTIPOCPBTE.AsString='TK') Then
    begin
      IF NOT (Assigned(FormTicketVta)) THEN
        FormTicketVta    := TFormTicketVta.Create(Self);
      FormTicketVta.DatoNew   := CDSVtasID_FC.AsString;
      FormTicketVta.TipoCpbte := CDSVtasTIPOCPBTE.AsString;
      FormTicketVta.Recuperar.Execute;
      FormTicketVta.Show;
    end;



end;

procedure TFormlistadoVtaPorVendedor.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormlistadoVtaPorVendedor.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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