unit UVtas_Fondos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Provider,
  DBClient, JvExControls, JvDBLookup, ComCtrls, StdCtrls, Mask, JvExMask,
  JvToolEdit, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
   ActnList, JvLabel, JvDBControls, JvGradient, Buttons,
  ToolWin, ExtCtrls,DateUtils, cxGridBandedTableView, cxGridDBBandedTableView,
  cxCustomPivotGrid, cxDBPivotGrid, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider, dxPSFillPatterns,
  dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport, cxDrawTextUtils,
  dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon, dxPScxPageControlProducer,
  dxPScxPivotGridLnk, dxPScxEditorProducers, dxPScxExtEditorProducers,
  cxExportPivotGridLink, dxPSCore,VirtualUI_SDK,
  dxPScxCommon, Grids, DBGrids, dxSkinsCore, dxSkinOffice2007Black,
  dxSkinscxPCPainter, dxPScxGridLnk, dxPScxGridLayoutViewLnk,
  dxSkinsdxBarPainter, cxCalc, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxSkinsdxRibbonPainter, JvAppStorage, JvAppIniStorage, System.Actions,
  dxPScxVGridLnk, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack,
  dxSkinOffice2016Colorful, dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxCurrencyEdit, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, Vcl.Menus, System.ImageList,
  AdvSmoothButton;

type
  TFormComposicionIngresos = class(TFormABMBase)
    pnCabecera: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    dbcSucursal: TJvDBLookupCombo;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    DSSucursales: TDataSource;
    DSPSaldosMov: TDataSetProvider;
    CDSSaldoMov_I: TClientDataSet;
    CDSSaldoMov_ITIPOPPAGO: TStringField;
    CDSSaldoMov_IFPAGO: TStringField;
    CDSSaldoMov_ITIPOOP: TStringField;
    CDSSaldoMov_ITIPO: TStringField;
    CDSSaldoMov_IDEBE: TFloatField;
    CDSSaldoMov_IHABER: TFloatField;
    CDSSaldoMov_ITIPO_CPBTE: TStringField;
    DSSaldoMov_I: TDataSource;
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    CDSIngresos: TClientDataSet;
    DSPIngresos: TDataSetProvider;
    DSIngresos: TDataSource;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    CDSIngresosTIPO_CPBTE: TStringField;
    CDSIngresosNRO_CPBTE: TStringField;
    CDSIngresosDEBE: TFloatField;
    CDSIngresosHABER: TFloatField;
    CDSIngresosSIGNO: TStringField;
    CDSIngresosTIPOPPAGO: TStringField;
    CDSIngresosFPAGO: TStringField;
    CDSIngresosTIPOOP: TStringField;
    CDSIngresosTIPO: TStringField;
    CDSIngresosID_CPBTE: TIntegerField;
    CDSIngresosSUCURSAL: TIntegerField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    dxComponentPrinterIngr: TdxComponentPrinter;
    dxComponentPrinterIngrLink1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    CDSIngresosMES: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    CDSIngresosANIO: TStringField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    CDSIngresosCLASE_CPBTE: TStringField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    CDSIngresosNOM_CPBTE: TStringField;
    cxDBPivotGrid1Field10: TcxDBPivotGridField;
    TabSheet1: TTabSheet;
    DSPEgresos: TDataSetProvider;
    CDSEgresos: TClientDataSet;
    DSEgresos: TDataSource;
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
    CDSEgresosTIPO_CPBTE: TStringField;
    CDSEgresosCLASE_CPBTE: TStringField;
    CDSEgresosNRO_CPBTE: TStringField;
    CDSEgresosDEBE: TFloatField;
    CDSEgresosHABER: TFloatField;
    CDSEgresosSIGNO: TStringField;
    CDSEgresosTIPOPPAGO: TStringField;
    CDSEgresosFPAGO: TStringField;
    CDSEgresosTIPOOP: TStringField;
    CDSEgresosTIPO: TStringField;
    CDSEgresosID_CPBTE: TIntegerField;
    CDSEgresosSUCURSAL: TIntegerField;
    CDSEgresosNOM_CPBTE: TStringField;
    CDSEgresosMES: TStringField;
    CDSEgresosANIO: TStringField;
    CDSIngresosID_CTA_CAJA: TIntegerField;
    CDSIngresosID_CAJA: TIntegerField;
    CDSIngresosNOMBRE_CAJA: TStringField;
    CDSEgresosID_CTA_CAJA: TIntegerField;
    CDSEgresosID_CAJA: TIntegerField;
    CDSEgresosNOMBRE_CAJA: TStringField;
    cxDBPivotGrid1Field11: TcxDBPivotGridField;
    cxDBPivotGrid1Field12: TcxDBPivotGridField;
    cxDBPivotGrid1Field13: TcxDBPivotGridField;
    cxDBPivotGrid2Field1: TcxDBPivotGridField;
    cxDBPivotGrid2Field2: TcxDBPivotGridField;
    cxDBPivotGrid2Field3: TcxDBPivotGridField;
    cxDBPivotGrid2Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field14: TcxDBPivotGridField;
    CDSIngresosNUMERO_CAJA: TIntegerField;
    CDSEgresosNUMERO_CAJA: TIntegerField;
    DSPMovAplicaCCVta: TDataSetProvider;
    CDSMovAplicaCCVta: TClientDataSet;
    CDSMovAplicaCCVtaID_MOV: TIntegerField;
    CDSMovAplicaCCVtaID_MOVCCVTA: TIntegerField;
    CDSMovAplicaCCVtaFECHA: TSQLTimeStampField;
    CDSMovAplicaCCVtaCLIENTE: TStringField;
    CDSMovAplicaCCVtaID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaTIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaCLASECPBTE: TStringField;
    CDSMovAplicaCCVtaNUMEROCPBTE: TStringField;
    CDSMovAplicaCCVtaIMPORTE: TFMTBCDField;
    CDSMovAplicaCCVtaAPLICA_ID_CPBTE: TIntegerField;
    CDSMovAplicaCCVtaAPLICA_TIPOCPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_CLASECPBTE: TStringField;
    CDSMovAplicaCCVtaAPLICA_NROCPBTE: TStringField;
    CDSMovAplicaCCVtaDETALLE: TStringField;
    CDSMovAplicaCCVtaCONCILIADO: TStringField;
    CDSMovAplicaCCVtaMUESTRAFECHACPBTE: TSQLTimeStampField;
    CDSMovAplicaCCVtaMUESTRATOTALFC: TFMTBCDField;
    DataSource1: TDataSource;
    dxComponentPrinterEgre: TdxComponentPrinter;
    dxComponentPrinterEgrecxPivotGridReportLink1: TcxPivotGridReportLink;
    DSPIngresosConMov: TDataSetProvider;
    CDSIngresosConMov: TClientDataSet;
    DSIngresosConMov: TDataSource;
    CDSIngresosConMovTIPO_CPBTE: TStringField;
    CDSIngresosConMovCLASE_CPBTE: TStringField;
    CDSIngresosConMovNRO_CPBTE: TStringField;
    CDSIngresosConMovDEBE: TFloatField;
    CDSIngresosConMovHABER: TFloatField;
    CDSIngresosConMovSIGNO: TStringField;
    CDSIngresosConMovTIPOPPAGO: TStringField;
    CDSIngresosConMovFPAGO: TStringField;
    CDSIngresosConMovTIPOOP: TStringField;
    CDSIngresosConMovTIPO: TStringField;
    CDSIngresosConMovID_CPBTE: TIntegerField;
    CDSIngresosConMovSUCURSAL: TIntegerField;
    CDSIngresosConMovNOM_CPBTE: TStringField;
    CDSIngresosConMovID_CTA_CAJA: TIntegerField;
    CDSIngresosConMovID_CAJA: TIntegerField;
    CDSIngresosConMovNOMBRE_CAJA: TStringField;
    CDSIngresosConMovNUMERO_CAJA: TIntegerField;
    CDSIngresosConMovAPLICA_ID_CPBTE: TIntegerField;
    CDSIngresosConMovAPLICA_TIPOCPBTE: TStringField;
    CDSIngresosConMovAPLICA_CLASECPBTE: TStringField;
    CDSIngresosConMovAPLICA_NROCPBTE: TStringField;
    CDSIngresosConMovMES: TStringField;
    CDSIngresosConMovANIO: TStringField;
    TabSheet3: TTabSheet;
    cxDBPivotGrid3: TcxDBPivotGrid;
    cxDBPivotGridField11: TcxDBPivotGridField;
    cxDBPivotGridField12: TcxDBPivotGridField;
    cxDBPivotGridField13: TcxDBPivotGridField;
    cxDBPivotGridField14: TcxDBPivotGridField;
    cxDBPivotGridField15: TcxDBPivotGridField;
    cxDBPivotGridField16: TcxDBPivotGridField;
    cxDBPivotGridField17: TcxDBPivotGridField;
    cxDBPivotGridField18: TcxDBPivotGridField;
    cxDBPivotGridField19: TcxDBPivotGridField;
    cxDBPivotGridField20: TcxDBPivotGridField;
    cxDBPivotGridField21: TcxDBPivotGridField;
    cxDBPivotGridField22: TcxDBPivotGridField;
    cxDBPivotGridField23: TcxDBPivotGridField;
    cxDBPivotGridField24: TcxDBPivotGridField;
    cxDBPivotGrid3Field1: TcxDBPivotGridField;
    cxDBPivotGrid3Field2: TcxDBPivotGridField;
    cxDBPivotGrid3Field3: TcxDBPivotGridField;
    cxDBPivotGrid3Field4: TcxDBPivotGridField;
    dxComponentPrinterMov: TdxComponentPrinter;
    dxComponentPrinterMovcxPivotGridReportLink1: TcxPivotGridReportLink;
    QSaldosMov: TFDQuery;
    QIngresosConMov: TFDQuery;
    CDSIngresosConMovIMPORTE: TFloatField;
    QIngresos: TFDQuery;
    QEgresos: TFDQuery;
    Panel2: TPanel;
    Label5: TLabel;
    SpeedButton1: TSpeedButton;
    btImpIngresos: TBitBtn;
    btExcIng: TBitBtn;
    Panel3: TPanel;
    Label6: TLabel;
    SpeedButton2: TSpeedButton;
    btExcEgre: TBitBtn;
    btImprEgresos: TBitBtn;
    Panel4: TPanel;
    Label8: TLabel;
    SpeedButton3: TSpeedButton;
    btExcMov: TBitBtn;
    BitBtn1: TBitBtn;
    Label9: TLabel;
    CDSIngresosConMovFECHA: TSQLTimeStampField;
    CDSIngresosFECHA: TSQLTimeStampField;
    CDSEgresosFECHA: TSQLTimeStampField;
    CDSIngresosNOMBRE: TStringField;
    CDSEgresosNOMBRE: TStringField;
    CDSIngresosConMovNOMBRE: TStringField;
    Label10: TLabel;
    cxDBPivotGrid1Field15: TcxDBPivotGridField;
    cxDBPivotGrid2Field5: TcxDBPivotGridField;
    cxDBPivotGrid3Field5: TcxDBPivotGridField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btExcIngClick(Sender: TObject);
    procedure CDSIngresosCalcFields(DataSet: TDataSet);
    procedure CDSEgresosCalcFields(DataSet: TDataSet);
    procedure Label6Click(Sender: TObject);
    procedure btExcEgreClick(Sender: TObject);
    procedure cxDBPivotGrid1LayoutChanged(Sender: TObject);
    procedure cxDBPivotGrid2LayoutChanged(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btImpIngresosClick(Sender: TObject);
    procedure btImprEgresosClick(Sender: TObject);
    procedure CDSIngresosConMovCalcFields(DataSet: TDataSet);
    procedure Label8Click(Sender: TObject);
    procedure btExcMovClick(Sender: TObject);
    procedure LimpiarFiltrosClick(Sender: TObject);
    procedure cxDBPivotGrid1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid3MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid3MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid2MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure cxDBPivotGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure cxDBPivotGrid3MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    FDragDrop : Boolean;
    AMoved    : Boolean;
  end;

  TPivotGridAccess = class(TcxDBPivotGrid);
  TPivotGridControllerAccess = class (TcxPivotGridController);

  var
  FormComposicionIngresos: TFormComposicionIngresos;

implementation

{$R *.dfm}
uses UDMain_FD;

procedure TFormComposicionIngresos.btExcMovClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSIngresosConMov.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid3.OptionsView.DataFields     :=False;
      cxDBPivotGrid3.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid3.OptionsView.RowFields      :=False;
      cxDBPivotGrid3.OptionsView.FilterFields   :=False;
      cxDBPivotGrid3.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='DetallesIngresosConMov';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid3)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid3);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
      cxDBPivotGrid3.OptionsView.DataFields     :=True;
      cxDBPivotGrid3.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid3.OptionsView.RowFields      :=True;
      cxDBPivotGrid3.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');

end;

procedure TFormComposicionIngresos.btExcIngClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  IF NOT (CDSIngresos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='DetallesIngresos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
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

procedure TFormComposicionIngresos.btExcEgreClick(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;
  IF NOT (CDSEgresos.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid2.OptionsView.DataFields     :=False;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid2.OptionsView.RowFields      :=False;
      cxDBPivotGrid2.OptionsView.FilterFields   :=False;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='DetallesEgresos';
      SaveDialog.DefaultExt:='XLS';
      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' then
          begin
            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName+'.'+SaveDialog.DefaultExt, cxDBPivotGrid2)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid2);

            if VirtualUI.Active then
              begin
                VirtualUI.StdDialogs:=False;
                VirtualUI.DownloadFile(SaveDialog.FileName+'.'+SaveDialog.DefaultExt);
              end;
          end;
      cxDBPivotGrid2.OptionsView.DataFields     :=True;
      cxDBPivotGrid2.OptionsView.ColumnFields   :=True;
      cxDBPivotGrid2.OptionsView.RowFields      :=True;
      cxDBPivotGrid2.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormComposicionIngresos.btImpIngresosClick(Sender: TObject);
begin
  inherited;
dxComponentPrinterIngr.Preview(True);
end;

procedure TFormComposicionIngresos.btImprEgresosClick(Sender: TObject);
begin
  inherited;
  dxComponentPrinterEgre.Preview(True);
end;

procedure TFormComposicionIngresos.BuscarExecute(Sender: TObject);
var i:integer;
begin
  inherited;
  Screen.Cursor:=crHourGlass;

 // CDSSaldoMov_I.Close;
//  CDSSaldoMov_I.Params.ParamByName('desde').Value:= desde.Date;
//  CDSSaldoMov_I.Params.ParamByName('hasta').Value:= hasta.Date;
//  CDSSaldoMov_I.Params.ParamByName('Tipo').Value := 'I';
//  CDSSaldoMov_I.Params.ParamByName('suc').Value  := dbcSucursal.KeyValue;
  //CDSSaldoMov_I.Open;

  CDSIngresos.Close;
  CDSIngresos.Params.ParamByName('desde').Value:= desde.Date;
  CDSIngresos.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSIngresos.Params.ParamByName('sucursal').Value:= dbcSucursal.KeyValue;
  CDSIngresos.Open;

  CDSMovAplicaCCVta.Close;
  CDSMovAplicaCCVta.Params.ParamByName('id').Value  := CDSIngresosID_CPBTE.Value;
  CDSMovAplicaCCVta.Params.ParamByName('Tipo').Value:= CDSIngresosTIPO_CPBTE.Value;
  CDSMovAplicaCCVta.Open;


  CDSEgresos.Close;
  CDSEgresos.Params.ParamByName('desde').Value:= desde.Date;
  CDSEgresos.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSEgresos.Params.ParamByName('sucursal').Value:= dbcSucursal.KeyValue;
  CDSEgresos.Open;

  CDSIngresosConMov.Close;
  CDSIngresosConMov.Params.ParamByName('desde').Value:= desde.Date;
  CDSIngresosConMov.Params.ParamByName('hasta').Value:= hasta.Date;
  CDSIngresosConMov.Params.ParamByName('sucursal').Value:= dbcSucursal.KeyValue;
  CDSIngresosConMov.Open;

  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;

  for i := 0 to cxDBPivotGrid3.FieldCount - 1 do
    cxDBPivotGrid3.Fields[i].ExpandAll;
  Screen.Cursor:=crDefault;

end;

procedure TFormComposicionIngresos.CDSEgresosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSEgresos.Active=True then
    begin
      CDSEgresosMES.Value :=FormatDateTime('mm-MMMMMM',CDSEgresosFECHA.AsDateTime);
      CDSEgresosANIO.Value:=FormatDateTime('yyyy',CDSEgresosFECHA.AsDateTime);
    end;

end;

procedure TFormComposicionIngresos.CDSIngresosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSIngresos.Active=True then
    begin
      CDSIngresosMES.Value :=FormatDateTime('mm-MMMMMM',CDSIngresosFECHA.AsDateTime);
      CDSIngresosANIO.Value:=FormatDateTime('yyyy',CDSIngresosFECHA.AsDateTime);
    end;
end;

procedure TFormComposicionIngresos.CDSIngresosConMovCalcFields(
  DataSet: TDataSet);
begin
  inherited;
 if CDSIngresosConMov.Active=True then
    begin
      CDSIngresosConMovMES.Value :=FormatDateTime('mm-MMMMMM',CDSIngresosConMovFECHA.AsDateTime);
      CDSIngresosConMovANIO.Value:=FormatDateTime('yyyy',CDSIngresosConMovFECHA.AsDateTime);
    end;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid1LayoutChanged(Sender: TObject);
var i:integer;
begin
  inherited;
//  if Not(CDSIngresos.isEmpty) then
//    begin
//      for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
//        cxDBPivotGrid1.Fields[i].ExpandAll;
//    end;
end;


procedure TFormComposicionIngresos.cxDBPivotGrid1MouseDown(Sender: TObject;
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

procedure TFormComposicionIngresos.cxDBPivotGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
AMoved := FDragDrop;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid1MouseUp(Sender: TObject;
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


procedure TFormComposicionIngresos.cxDBPivotGrid2LayoutChanged(Sender: TObject);
var i:integer;
begin
  inherited;
//  if Not(CDSEgresos.isEmpty) then
//    begin
//      for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
//        cxDBPivotGrid2.Fields[i].ExpandAll;
//    end;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid2MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid2).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid2MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
AMoved := FDragDrop;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid2.FieldCount-1 do
        cxDBPivotGrid2.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid3MouseDown(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var
  P : TPoint;
begin
  FDragDrop := False;
  AMoved := False;
  if (Button = mbLeft) then
  begin
   P := Point(X,Y);
   if TPivotGridControllerAccess(TPivotGridAccess(cxDBPivotGrid3).Controller).StartDragAndDrop(P) then
    FDragDrop := True;
  end;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid3MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
AMoved := FDragDrop;
end;

procedure TFormComposicionIngresos.cxDBPivotGrid3MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
var c:Integer;
begin
  inherited;
  if FDragDrop and AMoved then
    begin
      for c:=0 to cxDBPivotGrid3.FieldCount-1 do
        cxDBPivotGrid3.Fields[c].ExpandAll;
   end;
  FDragDrop:=False;
  AMoved   :=False;
end;

procedure TFormComposicionIngresos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //*************************************************************
  if CDSIngresos.Active=True then
     cxDBPivotGrid1.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos');
  if CDSEgresos.Active=True then
    cxDBPivotGrid2.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos2');
  if CDSIngresosConMov.Active=True then
    cxDBPivotGrid3.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos3');

  //*************************************************************
  inherited;
  CDSSucursal.Close;
  CDSIngresos.Close;
  Action:=caFree;end;

procedure TFormComposicionIngresos.FormCreate(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  autoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_fd.Nombre_PC;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  CDSSucursal.Close;
  CDSSucursal.Open;

  PageControl1.ActivePageIndex:=0;

  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  cxDBPivotGrid2.OptionsView.FilterFields:=False;
  cxDBPivotGrid3.OptionsView.FilterFields:=False;

  dbcSucursal.KeyValue:=SucursalPorDefecto;
  //*************************************************************
  cxDBPivotGrid1.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos');
  cxDBPivotGrid2.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos2');
  cxDBPivotGrid3.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaDetallesIngresos3');
  //*************************************************************

  //Impresoras
end;

procedure TFormComposicionIngresos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComposicionIngresos:=nil;
end;

procedure TFormComposicionIngresos.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(Date));
  Desde.Date := IncMonth(Hasta.Date,-1);
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(Desde.Date))+1;
  Desde.SetFocus;
 
end;

procedure TFormComposicionIngresos.Label5Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields:=Not(cxDBPivotGrid1.OptionsView.FilterFields);
end;

procedure TFormComposicionIngresos.Label6Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid2.OptionsView.FilterFields:=Not(cxDBPivotGrid2.OptionsView.FilterFields);
end;

procedure TFormComposicionIngresos.Label8Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid3.OptionsView.FilterFields:=Not(cxDBPivotGrid3.OptionsView.FilterFields);
end;

procedure TFormComposicionIngresos.LimpiarFiltrosClick(Sender: TObject);
var
 APivot: TcxDBPivotGrid;
 I:Integer;
begin    //Limpiar Filtros cxPivotGrid
  // if not (PopupMenu.PopupComponent is TcxDBPivotGrid) then Abort;
   // Limpiar Filtros de cxDBPivot
   if PageControl1.ActivePageIndex=0 then
     APivot:=cxDBPivotGrid1
   else
     if PageControl1.ActivePageIndex=1 then
       APivot:=cxDBPivotGrid2
   else
     if PageControl1.ActivePageIndex=2 then
       APivot:=cxDBPivotGrid3;

   APivot.DataController.BeginUpdate;

   for I := 0 to APivot.FieldCount - 1 do
       APivot.Fields[I].Filter.Clear;

   APivot.DataController.EndUpdate;


end;

procedure TFormComposicionIngresos.SpeedButton1Click(Sender: TObject);
var i:Integer;
begin
  inherited;
  for i := 0 to cxDBPivotGrid1.FieldCount - 1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
  for i := 0 to cxDBPivotGrid2.FieldCount - 1 do
    cxDBPivotGrid2.Fields[i].ExpandAll;
  for i := 0 to cxDBPivotGrid3.FieldCount - 1 do
    cxDBPivotGrid3.Fields[i].ExpandAll;
end;

procedure TFormComposicionIngresos.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute;
end;

end.
