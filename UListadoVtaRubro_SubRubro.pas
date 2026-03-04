unit UListadoVtaRubro_SubRubro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ActnList, ComCtrls, Buttons, StdCtrls, ToolWin,
  ExtCtrls, Grids, DBGrids, Mask,VirtualUI_SDK,
  frxDBSet, frxClass, DBClient, Provider, ImgList,
  JvComponentBase, JvExControls, JvGradient, JvDBLookup, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, SqlExpr, JvExMask, JvToolEdit, JvBaseEdits,
  JvExDBGrids, JvDBGrid,IniFiles,
  cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxDBData, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridChartView, cxGridDBChartView, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid,DateUtils, cxCustomPivotGrid, cxDBPivotGrid,
  dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap, dxPrnDev,
  dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns, dxPSPDFExportCore,
  dxPSPDFExport, cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxPivotGridLnk, dxPScxEditorProducers,
  dxPScxExtEditorProducers, dxPSCore, dxPScxCommon,cxExportPivotGridLink,
  dxSkinsCore, dxSkinOffice2007Black, dxSkinscxPCPainter, dxSkinsdxBarPainter,
  VclTee.TeeGDIPlus, dxSkinsDefaultPainters, cxNavigator,
  dxSkinsdxRibbonPainter, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart, VCLTee.DBChart, System.Actions, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray, dxSkinOffice2013White,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxPScxGridLnk, dxPScxGridLayoutViewLnk, JvAppStorage,
  JvAppIniStorage, Vcl.Samples.Spin, Data.DB, dxPScxExtComCtrlsLnk,
  CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  dxSkinBlack, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,StrUtils,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxPSStdGrLnk, cxCalc, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations, dxBarBuiltInMenu,
  Vcl.Menus, System.ImageList, dxSkinWXI, frCoreClasses;

type
  TFormListadoVtaRubro = class(TFormABMBase)
    DSVtaRubro: TDataSource;
    DSVendedorRubro: TDataSource;
    frxReport: TfrxReport;
    frDBVendedorRubro: TfrxDBDataset;
    frDBVtaRubro: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    BuscarCliente: TAction;
    DSClienteRubro: TDataSource;
    frDBVtaCliente: TfrxDBDataset;
    Label1: TLabel;
    DSSucursal: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    CDSSucursal: TClientDataSet;
    DSPSucursal: TDataSetProvider;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSVtaRubro: TClientDataSet;
    DSPVtaRubro: TDataSetProvider;
    CDSVtaRubroRUBRO: TStringField;
    CDSVtaRubroDETALLE: TStringField;
    CDSVendedorRubro: TClientDataSet;
    DSPVendedorRubro: TDataSetProvider;
    CDSVendedorRubroRUBRO: TStringField;
    CDSVendedorRubroVENDEDOR: TStringField;
    CDSVendedorRubroNOMBRE: TStringField;
    CDSVendedorRubroDETALLE: TStringField;
    CDSClienteRubro: TClientDataSet;
    DSPClienteRubro: TDataSetProvider;
    CDSClienteRubroRUBRO: TStringField;
    CDSClienteRubroCLIENTE: TStringField;
    CDSClienteRubroNOMBRE: TStringField;
    CDSClienteRubroDETALLE: TStringField;
    pcDatos: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RxLabel4: TJvLabel;
    ceTotalRubro: TJvCalcEdit;
    ceTotalCliente: TJvCalcEdit;
    ceTotalVendedor: TJvCalcEdit;
    RxLabel6: TJvLabel;
    RxLabel5: TJvLabel;
    dbGrafico: TDBChart;
    tbZoom: TTrackBar;
    dbgRubros: TJvDBGrid;
    dbgVendedor: TJvDBGrid;
    dbgClientes: TJvDBGrid;
    tbPerspectiva: TTrackBar;
    Label2: TLabel;
    Label3: TLabel;
    tbPorcentaje: TTrackBar;
    Label4: TLabel;
    tbX: TTrackBar;
    tbY: TTrackBar;
    Label5: TLabel;
    Label6: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    chRef: TCheckBox;
    upBtnGraf: TUpDown;
    TrackBar1: TTrackBar;
    CheckBox1: TCheckBox;
    chCalculaVendedores: TCheckBox;
    chCalculaClientes: TCheckBox;
    TabSheet3: TTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1Level2: TcxGridLevel;
    cxGrid1DBChartView1: TcxGridDBChartView;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    CDSVtaRubroSUC: TIntegerField;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    TabSheet4: TTabSheet;
    cxDBPivotGrid1: TcxDBPivotGrid;
    DSPVtaDetalle: TDataSetProvider;
    CDSVtaDetalle: TClientDataSet;
    DSVtaDetalle: TDataSource;
    CDSVtaDetalleRUBRO_STK: TStringField;
    CDSVtaDetalleSUBRUBRO_STK: TStringField;
    CDSVtaDetalleDETALLE_RUBRO: TStringField;
    CDSVtaDetalleDETALLE_SUBRUBRO: TStringField;
    cxDBPivotGrid1Field1: TcxDBPivotGridField;
    cxDBPivotGrid1Field2: TcxDBPivotGridField;
    cxDBPivotGrid1Field3: TcxDBPivotGridField;
    cxDBPivotGrid1Field4: TcxDBPivotGridField;
    cxDBPivotGrid1Field5: TcxDBPivotGridField;
    cxDBPivotGrid1Field6: TcxDBPivotGridField;
    cxDBPivotGrid1Field7: TcxDBPivotGridField;
    cxDBPivotGrid1Field8: TcxDBPivotGridField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TcxPivotGridReportLink;
    SaveDialog: TSaveDialog;
    SpinButton1: TSpinButton;
    pnCabecera: TPanel;
    Label7: TLabel;
    QVtaRubro: TFDQuery;
    CDSVtaRubroTOTAL_FC: TFloatField;
    CDSVtaRubroTOTAL_NC: TFloatField;
    CDSVtaRubroCOSTO: TFloatField;
    CDSVtaRubroGANANCIA: TFloatField;
    QVendedorRubro: TFDQuery;
    CDSVendedorRubroTOTAL_FC: TFloatField;
    CDSVendedorRubroTOTAL_NC: TFloatField;
    CDSVendedorRubroCOSTO: TFloatField;
    CDSVendedorRubroGANANCIA: TFloatField;
    QVtaDetalle: TFDQuery;
    CDSVtaDetalleTASA: TFloatField;
    CDSVtaDetalleGRAVADO: TFloatField;
    CDSVtaDetalleEXENTO: TFloatField;
    CDSVtaDetalleTOTAL: TFloatField;
    QClienteRubro: TFDQuery;
    CDSClienteRubroTOTAL_FC: TFloatField;
    CDSClienteRubroTOTAL_NC: TFloatField;
    CDSClienteRubroCOSTO: TFloatField;
    CDSClienteRubroGANANCIA: TFloatField;
    PopupMenu1: TPopupMenu;
    LimpiarFiltros: TMenuItem;
    Series1: TBarSeries;
    CDSVtaRubroTOTAL_FC_CIVA: TFloatField;
    CDSVtaRubroTOTAL_NC_CIVA: TFloatField;
    CDSVtaRubroCOSTO_CIVA: TFloatField;
    ceTotalFinal: TJvCalcEdit;
    QSuc: TFDQuery;
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbZoomChange(Sender: TObject);
    procedure dbgRubrosTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgVendedorTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure tbPerspectivaChange(Sender: TObject);
    procedure tbPorcentajeChange(Sender: TObject);
    procedure tbXChange(Sender: TObject);
    procedure tbYChange(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure chRefClick(Sender: TObject);
    procedure upBtnGrafClick(Sender: TObject; Button: TUDBtnType);
    procedure TrackBar1Change(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure dbGraficoDblClick(Sender: TObject);
    procedure dbgClientesTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure SpinButton1DownClick(Sender: TObject);
    procedure SpinButton1UpClick(Sender: TObject);
    procedure LimpiarFiltrosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni:TIniFile;
    procedure Sumar;
  end;

var
  FormListadoVtaRubro: TFormListadoVtaRubro;

implementation

uses UAvisoProceso, UDMain_FD, UFiltroComprobantesVenta;

{$R *.DFM}

procedure TFormListadoVtaRubro.SpinButton1DownClick(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
  Buscar.Execute;
  BitBtn2Click(self);

end;

procedure TFormListadoVtaRubro.SpinButton1UpClick(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if m=12 Then
    begin
      m:=1;y:=y+1;
    end
  else
    m:=m+1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
  Buscar.Execute;
  BitBtn2Click(Self);
end;

procedure TFormListadoVtaRubro.Sumar;
var aux,Aux2:Real;
p:TBookmark;
CDSClone:TClientDataSet;
begin
  aux:=0;
  aux2:=0;
  p:=CDSVtaRubro.GetBookmark;
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSVtaRubro,True);
  CDSClone.First;
  while not(CDSClone.Eof) Do
    begin
      Aux:=Aux+CDSClone.FieldByName('TOTAL_FC').AsFloat;
      Aux2:=Aux2+CDSClone.FieldByName('TOTAL_FC_CIVA').AsFloat;

     try
      CDSClone.Next;
     Except
       ShowMessage(CDSClone.FieldByName('TOTAL_FC').AsString);
     end;
    end;
  CDSClone.Free;

  ceTotalRubro.Value := aux;
  ceTotalFinal.Value := aux2;

  if (CDSVendedorRubro.Active) and Not(CDSVendedorRubro.IsEmpty) then
    begin
      aux:=0;
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSVendedorRubro,True);
      CDSClone.First;
      while not(CDSClone.Eof) Do
        begin
          Aux:=Aux+CDSClone.FieldByName('TOTAL_FC').AsFloat;
          CDSClone.Next;
        end;
      CDSClone.Free;
      ceTotalVendedor.Value:=aux;
    end;
  if (CDSClienteRubro.Active) and Not(CDSClienteRubro.IsEmpty) then
    begin
      aux:=0;
      CDSClone:=TClientDataSet.Create(self);
      CDSClone.CloneCursor(CDSClienteRubro,True);
      CDSClone.First;
      while not(CDSClone.Eof) Do
        begin
          Aux:=Aux+CDSClone.FieldByName('TOTAL_FC').AsFloat;
          CDSClone.Next;
        end;
      CDSClone.Free;
      ceTotalCliente.Value:=aux;
    end;
end;

procedure TFormListadoVtaRubro.tbZoomChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Zoom:=tbZoom.Position;
end;

procedure TFormListadoVtaRubro.TrackBar1Change(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.OrthoAngle:=dbGrafico.View3DOptions.OrthoAngle+1;
end;

procedure TFormListadoVtaRubro.tbPorcentajeChange(Sender: TObject);
begin
  inherited;
  dbGrafico.Chart3DPercent:=tbPorcentaje.Position;

end;

procedure TFormListadoVtaRubro.tbXChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.HorizOffset:=tbX.Position;
end;

procedure TFormListadoVtaRubro.tbYChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.VertOffset:=tbY.Position;
end;

procedure TFormListadoVtaRubro.tbPerspectivaChange(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Perspective:=tbPerspectiva.Position;

  dbGrafico.View3DOptions.Perspective:=tbPerspectiva.Position;
end;

procedure TFormListadoVtaRubro.upBtnGrafClick(Sender: TObject;
  Button: TUDBtnType);
begin
//  inherited;
  if (Button= ComCtrls.btNext) then
    begin
      if dbGrafico.View3DOptions.RotationFloat<360 then
         dbGrafico.View3DOptions.RotationFloat:=dbGrafico.View3DOptions.RotationFloat+1
       else
         dbGrafico.View3DOptions.Rotation:=0;
    end
  else
    if Button= ComCtrls.btPrev then
    dbGrafico.View3DOptions.Rotation:=0;

end;


procedure TFormListadoVtaRubro.FormShow(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  DecodeDate(Date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DateUtils.DaysInMonth(Desde.Date));
 // ceCliente.SetFocus;
end;

procedure TFormListadoVtaRubro.BitBtn1Click(Sender: TObject);
begin
  inherited;
  dbGrafico.Print;
end;

procedure TFormListadoVtaRubro.BitBtn2Click(Sender: TObject);
var i:integer;
begin
  inherited;
  CDSVtaDetalle.Close;
  CDSVtaDetalle.Params.ParamByName('desde').Value:=Desde.Date;
  CDSVtaDetalle.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSVtaDetalle.Params.ParamByName('sucursal').Value:= StrToInt(dbcSucursal.Value);
  CDSVtaDetalle.Open;

 for i:=0 to cxDBPivotGrid1.FieldCount-1 do
    cxDBPivotGrid1.Fields[i].ExpandAll;
end;

procedure TFormListadoVtaRubro.BitBtn3Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1.Preview(True);
end;

procedure TFormListadoVtaRubro.BitBtn4Click(Sender: TObject);
begin
  inherited;
 IF NOT (CDSVtaDetalle.IsEmpty) THEN
    BEGIN
      cxDBPivotGrid1.OptionsView.DataFields     :=False;
      cxDBPivotGrid1.OptionsView.ColumnFields   :=False;
      cxDBPivotGrid1.OptionsView.RowFields      :=False;
      cxDBPivotGrid1.OptionsView.FilterFields   :=False;
      cxDBPivotGrid1.OptionsView.FilterSeparator:=False;
      SaveDialog.FileName:='DetallesVtas';
      SaveDialog.DefaultExt:='XLS';
      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
        if SaveDialog.FileName<>'' Then
          begin
            if VirtualUI.Active then
              if Not(AnsiEndsText( '.xls', SaveDialog.FileName )) Then
                SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

            if VirtualUI.Active then
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1)
            else
              cxExportPivotGridToExcel(SaveDialog.FileName, cxDBPivotGrid1);

            if VirtualUI.Active then
               VirtualUI.DownloadFile(SaveDialog.FileName);
          end;

//      cxDBPivotGrid1.OptionsView.DataFields     :=True;
//      cxDBPivotGrid1.OptionsView.ColumnFields   :=True;
//      cxDBPivotGrid1.OptionsView.RowFields      :=True;
//      cxDBPivotGrid1.OptionsView.FilterSeparator:=True;
    END
  ELSE
    ShowMessage('No hay datos visibles');
end;

procedure TFormListadoVtaRubro.BuscarExecute(Sender: TObject);
begin
  inherited;
//  Screen.Cursor:=crHourGlass;
  Application.ProcessMessages;
  sbEstado.SimpleText:='Calculando Total en Rubros';
  Application.ProcessMessages;
  CDSVtaRubro.Close;
  CDSVtaRubro.IndexDefs.Clear;
  CDSVtaRubro.IndexFieldNames:='';
  CDSVtaRubro.Params.ParamByName('desde').Value:=Desde.Date;
  CDSVtaRubro.Params.ParamByName('hasta').Value:=Hasta.Date;
  CDSVtaRubro.Params.ParamByName('sucursal').Value:= StrToInt(dbcSucursal.Value);
  CDSVtaRubro.Open;

  if chCalculaVendedores.Checked then
    begin
      sbEstado.SimpleText:='Calculando Total por Vendedores';
      Application.ProcessMessages;
      CDSVendedorRubro.Close;
      CDSVendedorRubro.IndexDefs.Clear;
      CDSVendedorRubro.IndexFieldNames:='';

      CDSVendedorRubro.Params.ParamByName('desde').Value:=Desde.Date;
      CDSVendedorRubro.Params.ParamByName('hasta').Value:=Hasta.Date;
      CDSVendedorRubro.Params.ParamByName('sucursal').Value:= StrToInt(dbcSucursal.Value);
      CDSVendedorRubro.Open;
    end;

  if chCalculaClientes.Checked then
    begin
      sbEstado.SimpleText:='Calculando Total por Cliente';
      Application.ProcessMessages;

      CDSClienteRubro.Close;
      CDSClienteRubro.Params.ParamByName('desde').Value:=Desde.Date;
      CDSClienteRubro.Params.ParamByName('hasta').Value:=Hasta.Date;
      CDSClienteRubro.Params.ParamByName('sucursal').Value:= StrToInt(dbcSucursal.Value);
      CDSClienteRubro.Open;
    end;
  sbEstado.SimpleText:='Suamando.....';
  Application.ProcessMessages;
  Sumar;

  sbEstado.SimpleText:='Finalizado';
  Application.ProcessMessages;

  dbGrafico.View3DOptions.Zoom:= tbZoom.Position;
  dbGrafico.Title.Caption     := 'Ventas del :'+dateToStr(Desde.Date)+' al '+dateToStr(Hasta.Date);
  dbGrafico.SubTitle.Caption  := dbcSucursal.Text;

//  Screen.Cursor:=crDefault;
  if pcDatos.ActivePageIndex=0 then
    dbgRubros.SetFocus;

end;

procedure TFormListadoVtaRubro.Button1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFiltroCpbtes)) then
    FormFiltroCpbtes:=TFormFiltroCpbtes.Create(Self);
  FormFiltroCpbtes.ShowModal;
 // ShowMessage(FormFiltroCpbtes.Ids.Text);
end;

procedure TFormListadoVtaRubro.CheckBox1Click(Sender: TObject);
begin
  inherited;
  dbGrafico.View3DOptions.Orthogonal:=CheckBox1.Checked;
end;

procedure TFormListadoVtaRubro.chRefClick(Sender: TObject);
begin
  inherited;
  dbGrafico.Legend.Visible:=chRef.Checked;
end;

procedure TFormListadoVtaRubro.dbgClientesTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgClientes.DataSource.DataSet as TClientDataSet do
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


procedure TFormListadoVtaRubro.dbGraficoDblClick(Sender: TObject);
begin
  inherited;
  if dbGrafico.View3D=False then
    begin
      tbZoom.Position        :=100;
      tbPerspectiva.Position :=20;
      tbPorcentaje.Position:=20;
      tbX.Position:=20;
      tbY.Position:=20;
      dbGrafico.View3D:=True;
    end
  else
    dbGrafico.View3D:=False;

end;

procedure TFormListadoVtaRubro.dbgRubrosTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgRubros.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoVtaRubro.dbgVendedorTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var Campo:String;
begin
  inherited;
// para el uso en DBGrid, ordenar or columna
 try
    Campo := Field.FieldName;
    with dbgVendedor.DataSource.DataSet as TClientDataSet do
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

procedure TFormListadoVtaRubro.ImprimirExecute(Sender: TObject);
begin
  inherited;

  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListadoVtaRubros_vendedores.fr3');
  frxReport.Variables['desde']   :=''''+Desde.Text+'''';
  frxReport.Variables['hasta']   :=''''+Hasta.Text+'''';
  frxReport.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';

  frxReport.ShowReport;

end;

procedure TFormListadoVtaRubro.LimpiarFiltrosClick(Sender: TObject);
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



end;

procedure TFormListadoVtaRubro.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

procedure TFormListadoVtaRubro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_VtaRubro.ini');
  ArchivoIni.WriteBool('opcion','vendedores',chCalculaVendedores.Checked);
  ArchivoIni.WriteBool('opcion','clientes',chCalculaClientes.Checked);
  ArchivoIni.Free;

  inherited;
  Action:=caFree;
  CDSSucursal.Close;
end;

procedure TFormListadoVtaRubro.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize   :=False;
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_VtaRubro.ini');
  chCalculaVendedores.Checked:=ArchivoIni.ReadBool('opcion','vendedores',True);
  chCalculaClientes.Checked  :=ArchivoIni.ReadBool('opcion','clientes',True);
  ArchivoIni.Free;
  pcDatos.ActivePageIndex:=0;
  CDSSucursal.Open;
  cxDBPivotGrid1.OptionsView.FilterFields:=False;
  cxDBPivotGrid1.OptionsView.ColumnFields:=False;
  cxDBPivotGrid1.OptionsView.DataFields  :=False;
  dbcSucursal.KeyValue := SucursalPorDefecto;
  dbcSucursal.Enabled  := DMMain_FD.ModificaSucursal;

end;

procedure TFormListadoVtaRubro.FormDestroy(Sender: TObject);
begin
  inherited;
  FormListadoVtaRubro:=nil;
end;

end.
