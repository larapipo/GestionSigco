unit UGastosIngresosConsolidados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, cxCustomData, cxStyles, cxEdit, dxSkinsCore,
  cxCustomPivotGrid, cxDBPivotGrid, JvBaseEdits, Grids, DBGrids, JvExDBGrids,
  JvDBGrid, ComCtrls, JvExControls, JvDBLookup, StdCtrls, Mask, JvExMask,
  JvToolEdit, DB, SqlExpr, JvComponentBase, JvFormPlacement, ImgList,
  ActnList, JvLabel, JvDBControls, JvGradient, Buttons,
  ToolWin, ExtCtrls, frxClass, frxExportPDF, frxDBSet, DataExport, DataToXLS,
  DBClient, Provider,DateUtils, dxSkinBlack, dxSkinBlue, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinFoggy, dxSkinGlassOceans,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSharp, dxSkinSilver, dxSkinSpringTime,
  dxSkinStardust, dxSkinSummer2008, dxSkinValentine, dxSkinXmas2008Blue,
  dxSkinsDefaultPainters,cxExportPivotGridLink, Menus, cxCalc, dxSkinBlueprint,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinHighContrast,
  dxSkinMetropolis, dxSkinMetropolisDark, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinSevenClassic,
  dxSkinSharpPlus, dxSkinTheAsphaltWorld, dxSkinVS2010, dxSkinWhiteprint,
  JvAppStorage, JvAppIniStorage, System.Actions, dxPSGlbl,
  dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, dxPSCompsProvider,
  dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxSkinscxPCPainter, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxSkinsdxBarPainter, dxSkinsdxRibbonPainter,
  dxPSCore, dxPScxCommon, dxPScxGridLnk, dxPScxGridLayoutViewLnk,VirtualUI_SDK,
  CompBuscador, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxBarBuiltInMenu, dxPSStdGrLnk, frxExportBaseDialog,
  System.ImageList, dxSkinWXI, frCoreClasses;

type
  TFormGastosIngresosConsolidados = class(TFormABMBase)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    dbgSaldos: TJvDBGrid;
    Agrupado: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    BitBtn1: TBitBtn;
    DSCajas: TDataSource;
    DSCuentas: TDataSource;
    DSRubros: TDataSource;
    DSPSaldoGastos: TDataSetProvider;
    CDSSaldoGastos: TClientDataSet;
    DSSaldosGastos: TDataSource;
    DataToXLS: TDataToXLS;
    frDBEmpresa: TfrxDBDataset;
    frDBGastos: TfrxDBDataset;
    frListaGastos: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    DSSucursal: TDataSource;
    CDSSaldoGastosNROCPBTE: TStringField;
    CDSSaldoGastosID_INGRESO: TIntegerField;
    CDSSaldoGastosTIPOCPBTE: TStringField;
    CDSSaldoGastosCLASECPBTE: TStringField;
    CDSSaldoGastosDETALLE: TStringField;
    CDSSaldoGastosMUESTRARUBRO: TStringField;
    CDSSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSSaldoGastosMUESTRACTA: TStringField;
    CDSSaldoGastosID_CUENTA_CAJA: TIntegerField;
    CDSSaldoGastosNOMBRE: TStringField;
    CDSSaldoGastosRUBRO: TStringField;
    CDSSaldoGastosCODIGO: TStringField;
    CDSSaldoGastosMES: TStringField;
    cxDBPivotGrid1Field9: TcxDBPivotGridField;
    SaveDialog1: TSaveDialog;
    PopupMenu1: TPopupMenu;
    CamposxColumnas1: TMenuItem;
    CamposdeDatos1: TMenuItem;
    Filtros1: TMenuItem;
    CamposxRenglones1: TMenuItem;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    QResumenGastos: TFDQuery;
    CDSSaldoGastosDEBE: TFloatField;
    CDSSaldoGastosHABER: TFloatField;
    QRubros: TFDQuery;
    QRubrosCODIGO: TStringField;
    QRubrosDETALLE: TStringField;
    QCuentas: TFDQuery;
    QCuentasCODIGO: TStringField;
    QCuentasCODIGO_RUBRO: TStringField;
    QCuentasDETALLE: TStringField;
    QCuentasEXCLUYE: TStringField;
    QCajas: TFDQuery;
    QCajasID_CUENTA: TIntegerField;
    QCajasID_TIPO_CTA: TIntegerField;
    QCajasNOMBRE: TStringField;
    QCajasNRO_CUENTA: TStringField;
    QCajasID_BANCO: TIntegerField;
    QCajasCUIT: TStringField;
    QCajasRAZONSOCIAL: TStringField;
    QSucursal: TFDQuery;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QEmpresa: TFDQuery;
    pnPie: TPanel;
    Panel2: TPanel;
    Label4: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    Label5: TLabel;
    dbcCaja: TJvDBLookupCombo;
    Label2: TLabel;
    lcRubros: TJvDBLookupCombo;
    Label3: TLabel;
    lcCuentas: TJvDBLookupCombo;
    Label1: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    UpDown1: TUpDown;
    CDSSaldoGastosFECHA: TSQLTimeStampField;
    procedure CDSSaldoGastosCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgSaldosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BitBtn1Click(Sender: TObject);
    procedure CamposxColumnas1Click(Sender: TObject);
    procedure CamposdeDatos1Click(Sender: TObject);
    procedure Filtros1Click(Sender: TObject);
    procedure CamposxRenglones1Click(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure lcRubrosClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormGastosIngresosConsolidados: TFormGastosIngresosConsolidados;

implementation

uses UDMain_FD;
{$R *.dfm}

procedure TFormGastosIngresosConsolidados.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  cxDBPivotGrid1.OptionsView.DataFields     :=False;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
  cxDBPivotGrid1.OptionsView.RowFields      :=False;
  cxDBPivotGrid1.OptionsView.FilterFields   :=False;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  SaveDialog1.FileName:='GastosConsolidados';
  SaveDialog1.DefaultExt:='XLS';
  if SaveDialog1.Execute Then
    if VirtualUI.Active then
      cxExportPivotGridToExcel(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt, cxDBPivotGrid1)
    else
      cxExportPivotGridToExcel(SaveDialog1.FileName, cxDBPivotGrid1);
  cxDBPivotGrid1.OptionsView.DataFields     :=True;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
  cxDBPivotGrid1.OptionsView.RowFields      :=True;
  cxDBPivotGrid1.OptionsView.FilterFields   :=True;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
end;

procedure TFormGastosIngresosConsolidados.btImprimirClick(Sender: TObject);
begin
  inherited;
  QEmpresa.Open;
  frListaGastos.PrintOptions.Printer:=PrNomListados;
  frListaGastos.SelectPrinter;
  if PageControl1.ActivePageIndex=0 then
    begin
      frListaGastos.LoadFromFile(DMMain_FD.PathReportesLst+ '\LstGastosEgresosIngresos.fr3');
      frListaGastos.Variables['Desde']    := ''''+Desde.Text+'''';
      frListaGastos.Variables['Hasta']    := ''''+Hasta.Text+'''';
      frListaGastos.Variables['Sucursal'] := ''''+dbcSucursal.Text+'''';
      frListaGastos.Variables['Caja']     := ''''+dbcCaja.Text+'''';
    end
  else
  if PageControl1.ActivePageIndex=1 then
    begin
      dxComponentPrinter1.Preview(True);
    end;
  frListaGastos.ShowReport;
  QEmpresa.Close;
end;

procedure TFormGastosIngresosConsolidados.BuscarExecute(Sender: TObject);
begin
  inherited;
 // inherited;
  CDSSaldoGastos.IndexName:='';
  CDSSaldoGastos.IndexDefs.Clear;
  if (copy(Desde.Text,1,2)='  ') or (copy(Hasta.Text,1,2)='  ') Then
    ShowMessage('Fechas Incorrectas... verifique...')
  else
    begin
      CDSSaldoGastos.Close;
      CDSSaldoGastos.Params.ParamByName('Desde').AsDate :=Desde.Date;
      CDSSaldoGastos.Params.ParamByName('Hasta').AsDate :=Hasta.Date;
      if VarIsNull(dbcSucursal.KeyValue) Then
        CDSSaldoGastos.Params.ParamByName('suc').AsInteger:=-1
      else
        CDSSaldoGastos.Params.ParamByName('suc').AsInteger:=dbcSucursal.KeyValue;
      CDSSaldoGastos.Params.ParamByName('caja').AsInteger :=dbcCaja.KeyValue;
      CDSSaldoGastos.Params.ParamByName('rubro').AsString:= lcRubros.KeyValue;
      CDSSaldoGastos.Params.ParamByName('codigo').AsString:= lcCuentas.KeyValue;
      CDSSaldoGastos.Open;
      //Filtrar.Execute;
     // Sumar.Execute;
    end;
  CDSSaldoGastos.IndexFieldNames:='RUBRO;CODIGO;FECHA';
  cxDBPivotGrid1Field3.ExpandAll;
  cxDBPivotGrid1Field2.ExpandAll;
end;

procedure TFormGastosIngresosConsolidados.CamposdeDatos1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.DataFields:=Not(cxDBPivotGrid1.OptionsView.DataFields);
  CamposdeDatos1.Checked               :=cxDBPivotGrid1.OptionsView.DataFields;
end;

procedure TFormGastosIngresosConsolidados.CamposxColumnas1Click(
  Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.ColumnFields:=Not(cxDBPivotGrid1.OptionsView.ColumnFields);
  CamposxColumnas1.Checked               :=cxDBPivotGrid1.OptionsView.ColumnFields;
end;

procedure TFormGastosIngresosConsolidados.CamposxRenglones1Click(
  Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.RowFields:=Not(cxDBPivotGrid1.OptionsView.RowFields);
  CamposxRenglones1.Checked               :=cxDBPivotGrid1.OptionsView.RowFields;
end;

procedure TFormGastosIngresosConsolidados.CDSSaldoGastosCalcFields(
  DataSet: TDataSet);
var a,m,d:Word;
begin
 inherited;
 DecodeDate(CDSSaldoGastosFECHA.AsDateTime,a,m,d);
 case m of
    1:CDSSaldoGastosMES.Value:=' 1-Enero';
    2:CDSSaldoGastosMES.Value:=' 2-Febrero';
    3:CDSSaldoGastosMES.Value:=' 3-Marzo';
    4:CDSSaldoGastosMES.Value:=' 4-Abril';
    5:CDSSaldoGastosMES.Value:=' 5-Mayo';
    6:CDSSaldoGastosMES.Value:=' 6-Junio';
    7:CDSSaldoGastosMES.Value:=' 7-Julio';
    8:CDSSaldoGastosMES.Value:=' 8-Agosto';
    9:CDSSaldoGastosMES.Value:=' 9-Septiembre';
   10:CDSSaldoGastosMES.Value:='10-Octubre';
   11:CDSSaldoGastosMES.Value:='11-Noviembre';
   12:CDSSaldoGastosMES.Value:='12-Diciembre';

  end;
end;
procedure TFormGastosIngresosConsolidados.dbgSaldosTitleBtnClick(
  Sender: TObject; ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgSaldos.DataSource.DataSet as TClientDataSet do
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


procedure TFormGastosIngresosConsolidados.Filtros1Click(Sender: TObject);
begin
  inherited;
  cxDBPivotGrid1.OptionsView.FilterFields    := Not(cxDBPivotGrid1.OptionsView.FilterFields);
  cxDBPivotGrid1.OptionsView.FilterSeparator := Not(cxDBPivotGrid1.OptionsView.FilterFields);
  Filtros1.Checked                           := cxDBPivotGrid1.OptionsView.FilterFields;
end;

procedure TFormGastosIngresosConsolidados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSaldoGastos.Close;
  QRubros.Close;
  QCuentas.Close;
  QSucursal.Close;
  QCajas.Close;
  Action:=caFree;
end;

procedure TFormGastosIngresosConsolidados.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  QRubros.Open;
  QCuentas.OPen;
  QSucursal.OpeN;
  QCajas.Open;
  PageControl1.ActivePageIndex:=0;
end;

procedure TFormGastosIngresosConsolidados.FormDestroy(Sender: TObject);
begin
  inherited;
  FormGastosIngresosConsolidados:=nil;
end;

procedure TFormGastosIngresosConsolidados.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  cxDBPivotGrid1.OptionsView.FilterFields   :=False;
  cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
  cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
  cxDBPivotGrid1.OptionsView.DataFields     :=False;
  cxDBPivotGrid1.OptionsView.RowFields      :=False;
  Buscar.Execute;
  Desde.SetFocus;
end;

procedure TFormGastosIngresosConsolidados.lcRubrosClick(Sender: TObject);
begin
  inherited;
  QCuentas.Close;
  QCuentas.ParamByName('Rubro').AsString:=lcRubros.KeyValue;
  QCuentas.Open;
end;

procedure TFormGastosIngresosConsolidados.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
 frListaGastos.DesignReport;
end;

procedure TFormGastosIngresosConsolidados.UpDown1Click(Sender: TObject;
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
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Buscar.Execute; 
  //  Desde.SetFocus;

end;

end.
