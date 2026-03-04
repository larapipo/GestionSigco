unit URentabilidad;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ActnList, ImgList,StdCtrls, Buttons,
  ToolWin, ComCtrls, ExtCtrls, Grids, DBGrids, Mask,   
  DBClient, Provider, Menus,Librerias,
  frxDBSet, frxClass, JvComponentBase, JvFormPlacement, JvLabel, JvDBControls,
  JvExControls, JvGradient, FMTBcd, SqlExpr, JvExDBGrids, JvDBGrid, JvExMask,
  JvToolEdit, JvBaseEdits, System.Actions, JvAppStorage, JvAppIniStorage,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinBlue, dxSkinBlueprint,
  dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus,
  dxSkinSilver, dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008,
  dxSkinTheAsphaltWorld, dxSkinsDefaultPainters, dxSkinValentine,
  dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxClasses,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxGridCustomView, cxGrid, AdvOfficeButtons, dxSkinBasic,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinTheBezier, dxDateRanges, dxScrollbarAnnotations,
  System.ImageList,VirtualUI_SDK,StrUtils,cxExportPivotGridLink,cxGridExportLink,
  frCoreClasses, Vcl.DBCtrls, JvDBLookup, dxSkinWXI;

type
  TFormRentabilidad = class(TFormABMBase)
    DSPVentas: TDataSetProvider;
    CDSVentas: TClientDataSet;
    DSPDetalle: TDataSetProvider;
    CDSDetalle: TClientDataSet;
    DSDetalle: TDataSource;
    Detalle: TAction;
    CDSDetalleID_CABFAC: TIntegerField;
    CDSDetalleNROCPBTE: TStringField;
    CDSDetalleTIPOCPBTE: TStringField;
    PopupMenu1: TPopupMenu;
    VerCpbte: TAction;
    VerCpbte1: TMenuItem;
    frRentabilidad: TfrxReport;
    frDBDVentas: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    CDSVentasCostoPromedio: TFloatField;
    CDSVentasPrecioPromedio: TFloatField;
    CDSVentasMargen: TFloatField;
    CDSDetalleRenta: TFloatField;
    DSPNC: TDataSetProvider;
    CDSNC: TClientDataSet;
    DSNC: TDataSource;
    Label2: TLabel;
    UpDown1: TUpDown;
    frDBEmpresa: TfrxDBDataset;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    CDSVentasCODIGOARTICULO: TStringField;
    CDSVentasMARCA_STK: TStringField;
    CDSVentasRUBRO_STK: TStringField;
    CDSVentasSUBRUBRO_STK: TStringField;
    CDSVentasMUESTRAMARCA: TStringField;
    CDSVentasMUESTRARUBO: TStringField;
    CDSVentasMUESTRASUBRUBRO: TStringField;
    CDSVentasCOSTO: TFloatField;
    CDSVentasUNITARIO: TFloatField;
    CDSNCCODIGOARTICULO: TStringField;
    CDSNCMARCA_STK: TStringField;
    CDSNCRUBRO_STK: TStringField;
    CDSNCSUBRUBRO_STK: TStringField;
    CDSNCMUESTRAMARCA: TStringField;
    CDSNCMUESTRARUBO: TStringField;
    CDSNCMUESTRASUBRUBRO: TStringField;
    CDSNCCOSTO: TFloatField;
    CDSNCUNITARIO: TFloatField;
    CDSVentasDETALLE_STK: TStringField;
    CDSNCDETALLE_STK: TStringField;
    CDSEmpresa: TClientDataSet;
    DSPEmpresa: TDataSetProvider;
    cePromedioVta: TJvCalcEdit;
    CDSDetalleCOSTO_TOTAL: TFloatField;
    CDSDetalleUNITARIO_TOTAL: TFloatField;
    Hasta: TJvDateEdit;
    Desde: TJvDateEdit;
    CDSVentasRCOSTO: TFloatField;
    CDSVentasRUNITARIO: TFloatField;
    CDSVentasRCANTIDAD: TFloatField;
    CDSVentasRCOSTOPROMEDIO: TFloatField;
    CDSVentasRPRECIOPROMEDIO: TFloatField;
    CDSVentasMARGEVTA: TFloatField;
    CDSVentasRFACTURADO: TFloatField;
    CDSVentasTIPOCPBTE: TStringField;
    cePromedioCosto: TJvCalcEdit;
    Label1: TLabel;
    pnCabecera: TPanel;
    JvLabel1: TJvLabel;
    Panel2: TPanel;
    QVentas: TFDQuery;
    CDSVentasCANTIDAD: TFloatField;
    CDSVentasFACTURADO: TFloatField;
    QDetalle: TFDQuery;
    CDSDetalleCANTIDAD: TFloatField;
    CDSDetalleTOTAL: TFloatField;
    CDSDetalleCODIGOARTICULO: TStringField;
    cxGridVentasDBTableView1: TcxGridDBTableView;
    cxGridVentasLevel1: TcxGridLevel;
    cxGridVentas: TcxGrid;
    cxGridVentasDBTableView1CODIGOARTICULO: TcxGridDBColumn;
    cxGridVentasDBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGridVentasDBTableView1DETALLE_STK: TcxGridDBColumn;
    cxGridVentasDBTableView1COSTO: TcxGridDBColumn;
    cxGridVentasDBTableView1UNITARIO: TcxGridDBColumn;
    cxGridVentasDBTableView1COSTOPROMEDIO: TcxGridDBColumn;
    cxGridVentasDBTableView1PRECIOPROMEDIO: TcxGridDBColumn;
    cxGridVentasDBTableView1MUESTRAMARCA: TcxGridDBColumn;
    cxGridVentasDBTableView1MUESTRARUBO: TcxGridDBColumn;
    cxGridVentasDBTableView1MUESTRASUBRUBRO: TcxGridDBColumn;
    cxGridVentasDBTableView1RCOSTO: TcxGridDBColumn;
    cxGridVentasDBTableView1RUNITARIO: TcxGridDBColumn;
    cxGridVentasDBTableView1RCANTIDAD: TcxGridDBColumn;
    cxGridVentasDBTableView1RCOSTOPROMEDIO: TcxGridDBColumn;
    cxGridVentasDBTableView1RPRECIOPROMEDIO: TcxGridDBColumn;
    cxGridVentasDBTableView1RFACTURADO: TcxGridDBColumn;
    cxGridVentasDBTableView1MARGEN: TcxGridDBColumn;
    cxGridVentasDBTableView1MARGENVTA: TcxGridDBColumn;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    cxGridVentasLevel2: TcxGridLevel;
    cxGridVentasDBTableView2: TcxGridDBTableView;
    cxGridVentasDBTableView2CODIGOARTICULO: TcxGridDBColumn;
    cxGridVentasDBTableView2TIPOCPBTE: TcxGridDBColumn;
    cxGridVentasDBTableView2NROCPBTE: TcxGridDBColumn;
    cxGridVentasDBTableView2FECHAVTA: TcxGridDBColumn;
    cxGridVentasDBTableView2COSTO_TOTAL: TcxGridDBColumn;
    cxGridVentasDBTableView2UNITARIO_TOTAL: TcxGridDBColumn;
    cxGridVentasDBTableView2Renta: TcxGridDBColumn;
    cxGridVentasDBTableView2ID_CABFAC: TcxGridDBColumn;
    cxGridVentasDBTableView2CANTIDAD: TcxGridDBColumn;
    cxGridVentasDBTableView2TOTAL: TcxGridDBColumn;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxStyleRepository3: TcxStyleRepository;
    cxStyle3: TcxStyle;
    QNC: TFDQuery;
    CDSNCFACTURADO: TFloatField;
    CDSNCCANTIDAD: TFloatField;
    chControl: TAdvOfficeCheckBox;
    CDSDetalleFECHAVTA: TSQLTimeStampField;
    ExportarXLS: TAction;
    SaveDialog: TSaveDialog;
    ToolButton1: TToolButton;
    btExportarABCXls: TBitBtn;
    CDSVentasDIFERENCIA: TFloatField;
    CDSDetalleDIFERENCIA: TFloatField;
    cxGridVentasDBTableView2Column1: TcxGridDBColumn;
    cxGridVentasDBTableView1Column1: TcxGridDBColumn;
    QSucursales: TFDQuery;
    DSSucursales: TDataSource;
    DSPSucursales: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    dbcSucursal: TJvDBLookupCombo;
    JvLabel2: TJvLabel;
    QMinMax: TFDQuery;
    QMinMaxIDMIN: TIntegerField;
    QMinMaxIDMAX: TIntegerField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvLabel3: TJvLabel;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure DSBaseStateChange(Sender: TObject);
    procedure DetalleExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure VerCpbteExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure CDSVentasCalcFields(DataSet: TDataSet);
    procedure CDSDetalleCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure HastaAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
  private
    procedure ThreadPromedioFin(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE CalculoPromedio;
  end;

var
  FormRentabilidad: TFormRentabilidad;
  AuxMargenVta, AuxMargen, PromedioMargenVta:Real;

implementation

uses UMuestraCpbteCtaCteVta, DMVenta,UDMAin_FD;

{$R *.DFM}

procedure  TFormRentabilidad.CalculoPromedio;
VAR AuxMargenVta,AuxMargen,PromedioMargenVta:Real;
begin
  AuxMargenVta:=0;
  AuxMargen   :=0;

  CDSVentas.First;
  CDSVentas.DisableControls;
  While Not(CDSVentas.Eof) do
    begin
      AuxMargenVta:= AuxMargenVta+CDSVentasMARGEVTA.AsFloat;
      AuxMargen   := AuxMargen+CDSVentasMargen.AsFloat;
      CDSVentas.Next;
    end;
  CDSVentas.First;
  CDSVentas.EnableControls;

  if CDSVentas.RecordCount>0 Then
    begin
      AuxMargen:=AuxMargen/CDSVentas.RecordCount;
      PromedioMargenVta:=AuxMargenVta/CDSVentas.RecordCount;
    end
  else
    begin
      PromedioMargenVta:=0;
      AuxMargen :=0;
    end;

  cePromedioVta.Value   := PromedioMargenVta;
  cePromedioCosto.Value := AuxMargen;
  Screen.Cursor         := crDefault;
  sbEstado.SimpleText   := '..';
  Application.ProcessMessages;


end;

procedure TFormRentabilidad.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormRentabilidad.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  If not(CDSVentas.IsEmpty) Then
    begin
      if VirtualUI.Active then
        VirtualUI.StdDialogs:=False;
      SaveDialog.FileName:='Rentabilidad';
      SaveDialog.DefaultExt:='xlsx';

      if VirtualUI.Active then
        SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

      if SaveDialog.Execute Then
       if SaveDialog.FileName<>'' Then
         begin
           if VirtualUI.Active then
             if Not(AnsiEndsText( '.xlsx', SaveDialog.FileName )) Then
               SaveDialog.FileName:=SaveDialog.FileName+'.'+SaveDialog.DefaultExt;

           if VirtualUI.Active then
             cxGridExportLink.ExportGridToXLSX(SaveDialog.FileName , cxGridVentas,False,True,false)
           else
             cxGridExportLink.ExportGridToXLSX(SaveDialog.FileName , cxGridVentas,False,true,false);

           if VirtualUI.Active then
             VirtualUI.DownloadFile(SaveDialog.FileName);
         end;
    end;
  cxGridVentasDBTableView1.ViewData.Collapse(True);
  cxGridVentasDBTableView2.ViewData.Collapse(True);

end;

procedure TFormRentabilidad.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormRentabilidad.DetalleExecute(Sender: TObject);
begin
  inherited;
  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('desde').AsDate:=desde.Date;
  CDSDetalle.Params.ParamByName('hasta').AsDate:=hasta.Date;
  CDSDetalle.Open;
end;



procedure TFormRentabilidad.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  IF (Assigned(FormMuestraCpbteCtaCteVta)) THEN
    FormMuestraCpbteCtaCteVta.Close;
  CDSSucursales.Close;
  Action:=caFree;
end;

procedure TFormRentabilidad.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRentabilidad:=nil;
end;

procedure TFormRentabilidad.FormResize(Sender: TObject);
begin
  inherited;
//  if  (FormRentabilidad.Width>1005) or (FormRentabilidad.Width<1005) then
//    FormRentabilidad.Width:=1005;
end;

procedure TFormRentabilidad.FormShow(Sender: TObject);
var d,m,m2,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  if m>2 then
   m2:=m-1
  else
   m2:=12;
  Desde.Date:=EncodeDate(y,m2,1);
  Hasta.Date:=EncodeDate(y,m2,DaysInMonth(y,m2));
  Desde.SetFocus;
  CDSSucursales.Open;
end;

procedure TFormRentabilidad.HastaAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Hasta.Date:=ADate;
  Buscar.Execute;
end;

procedure TFormRentabilidad.VerCpbteExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormMuestraCpbteCtaCteVta)) THEN
    FormMuestraCpbteCtaCteVta:= TFormMuestraCpbteCtaCteVta.Create(Application);
  FormMuestraCpbteCtaCteVta.tipo:= CDSDetalleTIPOCPBTE.Value;
  FormMuestraCpbteCtaCteVta.id  := CDSDetalleID_CABFAC.Value;
//  DatosVentas.wwCDSVentaCab.close;
//  DatosVentas.wwCDSVentaCab.Params.ParamByName('TipoCpbte').Value :=CDSDetalleTIPOCPBTE.Value;
//  DatosVentas.wwCDSVentaCab.Params.ParamByName('id').Value :=CDSDetalleID_CABFAC.Value;
//  DatosVentas.wwCDSVentaCab.Open;
//  DatosVentas.wwCDSVentaDet.Close;
//  DatosVentas.wwCDSVentaDet.Params.ParamByName('id').Value:=CDSDetalleID_CABFAC.Value;
//  DatosVentas.wwCDSVentaDet.Open;
//  DatosVentas.wwCDSImpuestos.Close;
//  DatosVentas.wwCDSImpuestos.Open;
  FormMuestraCpbteCtaCteVta.Show;
end;

procedure TFormRentabilidad.ImprimirExecute(Sender: TObject);
begin
  inherited;
 
  CDSEmpresa.Open;
  frRentabilidad.LoadFromFile(DMMain_FD.PathReportesLst+'\Rentabilidad.fr3');
//  frRentabilidad.Variables['Mascara']:=''''+Mascara+'''';
  frRentabilidad.Variables['Desde']:=''''+Desde.Text+'''';
  frRentabilidad.Variables['Hasta']:=''''+Hasta.Text+'''';


  // frCtaCte.PrepareReport;
  frRentabilidad.ShowReport;
  CDSEmpresa.Close;

  //ceProveedor.SetFocus;
  //ceProveedor.SelectAll;

end;

procedure TFormRentabilidad.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frRentabilidad.DesignReport;
end;

procedure TFormRentabilidad.CDSVentasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSVentasCostoPromedio.Value := 0;
  CDSVentasPrecioPromedio.Value:= 0;
  CDSVentasDIFERENCIA.Value    := 0;
  CDSVentasDIFERENCIA.Value    := CDSVentasUNITARIO.Value-CDSVentasCOSTO.Value;
  if  CDSVentasCantidad.AsFloat>0 Then
    begin
      CDSVentasCostoPromedio.Value  := CDSVentasCOSTO.AsFloat/CDSVentasCantidad.AsFloat;
      CDSVentasPrecioPromedio.Value := CDSVentasUNITARIO.AsFloat/CDSVentasCantidad.AsFloat;
    end;

  IF CDSVentasCostoPromedio.AsFloat<>0 THEN
    CDSVentasMargen.Value:=((Abs(CDSVentasCostoPromedio.AsFloat - CDSVentasPrecioPromedio.AsFloat)/CDSVentasCostoPromedio.AsFloat))*100
  ELSE
    CDSVentasMargen.Value:=100;

  IF CDSVentasPrecioPromedio.AsFloat<>0 THEN
    CDSVentasMARGEVTA.Value:=((Abs(CDSVentasCostoPromedio.AsFloat - CDSVentasPrecioPromedio.AsFloat)/CDSVentasPrecioPromedio.AsFloat))*100
  ELSE
    CDSVentasMARGEVTA.Value:=100;

  CDSVentasRCOSTO.Value         :=CDSVentasCOSTO.AsFloat;
  CDSVentasRUNITARIO.Value      :=CDSVentasUNITARIO.AsFloat;
  CDSVentasRCANTIDAD.Value      :=CDSVentasCANTIDAD.AsFloat;
  CDSVentasRCOSTOPROMEDIO.Value :=CDSVentasCostoPromedio.AsFloat;
  CDSVentasRPRECIOPROMEDIO.Value:=CDSVentasPrecioPromedio.AsFloat;
  CDSVentasRFACTURADO.ASFloat   :=CDSVentasFACTURADO.AsFloat;
  if (CDSVentasTIPOCPBTE.Value='NC') then
    begin
      CDSVentasRCOSTO.Value         :=CDSVentasCOSTO.AsFloat*-1;
      CDSVentasRUNITARIO.Value      :=CDSVentasUNITARIO.AsFloat*-1;
      CDSVentasRCANTIDAD.Value      :=CDSVentasCANTIDAD.AsFloat*-1;
      CDSVentasRCOSTOPROMEDIO.Value :=CDSVentasCostoPromedio.AsFloat*-1;
      CDSVentasRPRECIOPROMEDIO.Value:=CDSVentasPrecioPromedio.AsFloat*-1;
      CDSVentasRFACTURADO.ASFloat   :=CDSVentasFACTURADO.AsFloat*-1;
    end;
end;



procedure TFormRentabilidad.CDSDetalleCalcFields(DataSet: TDataSet);
begin
  inherited;
  if CDSDetalleCOSTO_TOTAL.AsFloat<>0 Then
    CDSDetalleRenta.Value:=((CDSDetalleUNITARIO_TOTAL.AsFloat - CDSDetalleCOSTO_TOTAL.AsFloat)/CDSDetalleCOSTO_TOTAL.AsFloat)*100
  else
    CDSDetalleRenta.Value:=100;
end;

procedure TFormRentabilidad.FormCreate(Sender: TObject);
begin
  inherited;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  AutoSize:=False;
end;


procedure TFormRentabilidad.ThreadPromedioFin(Sender: TObject);
begin
  cePromedioCosto.Value:=AuxMargen;
  cePromedioVta.Value  :=PromedioMargenVta;
  Screen.Cursor        :=crDefault;
  sbEstado.SimpleText  :='..';
  Application.ProcessMessages;

end;


procedure TFormRentabilidad.BuscarExecute(Sender: TObject);
var IdDesde,idHasta:Integer;
THPromedios:TThread;
begin
  //inherited;
  Screen.Cursor       := crHourGlass;
  sbEstado.SimpleText := 'Iniciando querys....';
  Application.ProcessMessages;

  CDSVentas.IndexDefs.Clear;
  CDSVentas.IndexName:='';
  CDSVentas.Close;
  CDSVentas.Params.ParamByName('desde').AsDate       := desde.date;
  CDSVentas.Params.ParamByName('hasta').AsDate       := hasta.Date;
  CDSVentas.Params.ParamByName('control').AsString   := '*';
  CDSVentas.Params.ParamByName('SUCURSAL').AsInteger := dbcSucursal.KeyValue;

  if chControl.Checked then
    CDSVentas.Params.ParamByName('control').AsString:='S';
  CDSVentas.Open;

  QMinMax.Close;
  QMinMax.ParamByName('desde').AsDate       := desde.date;
  QMinMax.ParamByName('hasta').AsDate       := hasta.Date;
  QMinMax.ParamByName('control').AsString   := '*';
  QMinMax.ParamByName('SUCURSAL').AsInteger := dbcSucursal.KeyValue;
  QMinMax.Open;
  IdDesde:=QMinMaxIDMIN.Value;
  idHasta:=QMinMaxIDMAX.Value;
  QMinMax.Close;

  CDSVentas.IndexFieldNames:='CODIGOARTICULO;TIPOCPBTE';

  CDSDetalle.Close;
  CDSDetalle.Params.ParamByName('iddesde').AsInteger:=iddesde;
  CDSDetalle.Params.ParamByName('idhasta').AsInteger:=idhasta;
  CDSDetalle.Open;

  THPromedios:= TThread.CreateAnonymousThread(
    procedure
      begin
        AuxMargenVta:=0;
        AuxMargen   :=0;

        CDSVentas.First;
        CDSVentas.DisableControls;
        While Not(CDSVentas.Eof) do
          begin
            AuxMargenVta:= AuxMargenVta+CDSVentasMARGEVTA.AsFloat;
            AuxMargen   := AuxMargen+CDSVentasMargen.AsFloat;
            CDSVentas.Next;
          end;
        CDSVentas.First;
        CDSVentas.EnableControls;

        if CDSVentas.RecordCount>0 Then
          begin
            PromedioMargenVta:=AuxMargenVta/CDSVentas.RecordCount;
            AuxMargen        :=AuxMargen/CDSVentas.RecordCount
          end
        else
          begin
            PromedioMargenVta:=0;
            AuxMargen        :=0;
          end;

      end);
  THPromedios.OnTerminate:=ThreadPromedioFin;
//  if Assigned(THPromedios) Then
//    THPromedios.Start;

  CalculoPromedio;

  CDSNC.Close;
  CDSNC.Params.ParamByName('desde').AsDate:=desde.date;
  CDSNC.Params.ParamByName('hasta').AsDate:=hasta.Date;
  CDSNC.Open;
 // Screen.Cursor:=crDefault;
//  sbEstado.SimpleText:='..';
 // Application.ProcessMessages;

 // CDSDetalle.Close;
//  CDSDetalle.Params.ParamByName('desde').AsDate:=desde.Date;
//  CDSDetalle.Params.ParamByName('hasta').AsDate:=hasta.Date;
//  CDSDetalle.Open;

end;

procedure TFormRentabilidad.UpDown1Click(Sender: TObject;
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
  cxGridVentas.setFocus;
  //  Desde.SetFocus;
end;

end.