unit UPanelComisionObjetivos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Provider, DBClient, ComCtrls, JvToolEdit, Mask,
  JvExMask, StdCtrls, Grids, DBGrids, SqlExpr, JvComponentBase,
  JvFormPlacement, ImgList, ActnList, JvLabel, JvDBControls,
  JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,DateUtils, cxGraphics,
  cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxClasses, cxCustomData,
  cxStyles, cxEdit, cxCustomPivotGrid, cxDBPivotGrid, JvBaseEdits, dxmdaset,
  cxPivotGridCustomDataSet, cxPivotGridSummaryDataSet,IniFiles, frxClass,
  frxDBSet, JvExDBGrids, JvDBGrid, Menus,DBXCommon,
  IBGenerator, DataExport, DataToXLS, JvAppStorage, JvAppIniStorage,
  System.Actions, dxSkinsCore, dxSkinBlue, dxSkinBlueprint, dxSkinCaramel,
  dxSkinCoffee, dxSkinDarkRoom, dxSkinDarkSide, dxSkinDevExpressDarkStyle,
  dxSkinDevExpressStyle, dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast,
  dxSkiniMaginary, dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky,
  dxSkinMcSkin, dxSkinMetropolis, dxSkinMetropolisDark, dxSkinMoneyTwins,
  dxSkinOffice2007Black, dxSkinOffice2007Blue, dxSkinOffice2007Green,
  dxSkinOffice2007Pink, dxSkinOffice2007Silver, dxSkinOffice2010Black,
  dxSkinOffice2010Blue, dxSkinOffice2010Silver, dxSkinOffice2013DarkGray,
  dxSkinOffice2013LightGray, dxSkinOffice2013White, dxSkinPumpkin, dxSkinSeven,
  dxSkinSevenClassic, dxSkinSharp, dxSkinSharpPlus, dxSkinSilver,
  dxSkinSpringTime, dxSkinStardust, dxSkinSummer2008, dxSkinTheAsphaltWorld,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint,
  dxSkinXmas2008Blue, dxSkinscxPCPainter, cxFilter, cxData, cxDataStorage,
  cxNavigator, cxDBData, cxCheckBox, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGridLevel, cxGridCustomView, cxGrid, CompBuscador,VirtualUI_SDK,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinOffice2016Dark, dxSkinVisualStudio2013Blue, dxSkinVisualStudio2013Dark,
  dxSkinVisualStudio2013Light, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  dxSkinBasic, dxSkinOffice2019Black, dxSkinOffice2019Colorful,
  dxSkinOffice2019DarkGray, dxSkinOffice2019White, dxSkinTheBezier,
  dxDateRanges, dxScrollbarAnnotations, System.ImageList, frCoreClasses;

type
  TFormComisionVtaObjetivo = class(TFormABMBase)
    Label1: TLabel;
    dbgVtas: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    ceVendedor: TJvComboEdit;
    edNombreVendedor: TEdit;
    Label4: TLabel;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    Label5: TLabel;
    UpDown1: TUpDown;
    CDSBuscaPersonal: TClientDataSet;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    DSPBuscaPersonal: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFloatField;
    QEscalaVta: TFDQuery;
    DSEscalaVta: TDataSource;
    CDSEscalaVta: TClientDataSet;
    DSPEscalaVta: TDataSetProvider;
    QEscalaVtaID: TIntegerField;
    QEscalaVtaPORCENTAJE: TFloatField;
    QEscalaVtaCOMISION: TFloatField;
    CDSEscalaVtaID: TIntegerField;
    CDSEscalaVtaPORCENTAJE: TFloatField;
    CDSEscalaVtaCOMISION: TFloatField;
    QVentas: TFDQuery;
    DSPVentas: TDataSetProvider;
    CDSVentas: TClientDataSet;
    DSVentas: TDataSource;
    CDSVentasID_FC: TIntegerField;
    CDSVentasFECHAVTA: TSQLTimeStampField;
    CDSVentasDIA: TSmallintField;
    CDSVentasMES: TSmallintField;
    CDSVentasANIO: TSmallintField;
    CDSVentasTIPOCPBTE: TStringField;
    CDSVentasCLASECPBTE: TStringField;
    CDSVentasNROCPBTE: TStringField;
    CDSVentasTOTAL: TFloatField;
    CDSVentasVENDEDOR_OUT: TStringField;
    CDSVentasIMPORTEAPLICADO: TFloatField;
    CDSVentasSALDO: TFloatField;
    CDSVentasDIASMORA: TIntegerField;
    edObjetivoVta: TJvCalcEdit;
    dbgVehiculo: TDBGrid;
    dbgCobranza: TDBGrid;
    dbgProduccion: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    QEscalaVtaVENDEDOR: TStringField;
    CDSEscalaVtaVENDEDOR: TStringField;
    QVehiculo: TFDQuery;
    DSPVehiculo: TDataSetProvider;
    CDSVehiculo: TClientDataSet;
    DSVehiculo: TDataSource;
    QVehiculoID: TIntegerField;
    QVehiculoDESDE: TFloatField;
    QVehiculoHASTA: TFloatField;
    QVehiculoPORCENTAJE: TFloatField;
    QVehiculoVENDEDOR: TStringField;
    CDSVehiculoID: TIntegerField;
    CDSVehiculoDESDE: TFloatField;
    CDSVehiculoHASTA: TFloatField;
    CDSVehiculoPORCENTAJE: TFloatField;
    CDSVehiculoVENDEDOR: TStringField;
    QCobranza: TFDQuery;
    DSPCobranza: TDataSetProvider;
    CDSCobranza: TClientDataSet;
    DSCobranza: TDataSource;
    QCobranzaID: TIntegerField;
    QCobranzaDESDE: TIntegerField;
    QCobranzaHASTA: TIntegerField;
    QCobranzaCOMISION: TFloatField;
    QCobranzaVENDEDOR: TStringField;
    CDSCobranzaID: TIntegerField;
    CDSCobranzaDESDE: TIntegerField;
    CDSCobranzaHASTA: TIntegerField;
    CDSCobranzaCOMISION: TFloatField;
    CDSCobranzaVENDEDOR: TStringField;
    QProduccion: TFDQuery;
    DSPProduccion: TDataSetProvider;
    CDSProduccion: TClientDataSet;
    DSProduccion: TDataSource;
    QProduccionID: TIntegerField;
    QProduccionMONTO: TFloatField;
    QProduccionBONO: TFloatField;
    QProduccionVENDEDOR: TStringField;
    CDSProduccionID: TIntegerField;
    CDSProduccionMONTO: TFloatField;
    CDSProduccionBONO: TFloatField;
    CDSProduccionVENDEDOR: TStringField;
    Label10: TLabel;
    edTotalVta: TJvCalcEdit;
    edDias: TJvCalcEdit;
    Label11: TLabel;
    Label12: TLabel;
    edPromedioDiario: TJvCalcEdit;
    Label13: TLabel;
    edObjetivoActual: TJvCalcEdit;
    edComisionObj: TJvCalcEdit;
    edComisionVehicular: TJvCalcEdit;
    edComisionTotal: TJvCalcEdit;
    Label14: TLabel;
    Label15: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    edImporteComisionVta: TJvCalcEdit;
    Label19: TLabel;
    edBonoProduccion: TJvCalcEdit;
    PageControl1: TPageControl;
    QCobros: TFDQuery;
    DSPCobros: TDataSetProvider;
    CDSCobros: TClientDataSet;
    DSCobros: TDataSource;
    CDSCobrosID_RC: TIntegerField;
    CDSCobrosTIPOCPBTE: TStringField;
    CDSCobrosCLASECPBTE: TStringField;
    CDSCobrosNROCPBTE: TStringField;
    CDSCobrosFECHA: TSQLTimeStampField;
    CDSCobrosTOTAL: TFloatField;
    CDSCobrosAPLICA_TIPOCPBTE: TStringField;
    CDSCobrosAPLICA_CLASECPBTE: TStringField;
    CDSCobrosAPLICA_NROCPBTE: TStringField;
    CDSCobrosFECHAVTA: TSQLTimeStampField;
    CDSCobrosIMPORTE: TFloatField;
    CDSCobrosMORA: TFloatField;
    CDSCobrosCOMISION: TFloatField;
    CDSCobrosIMPORTECOMISION: TFloatField;
    Label21: TLabel;
    edComisionDeCobranza: TJvCalcEdit;
    edTotalGeneral: TJvCalcEdit;
    Label16: TLabel;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frxReporte: TfrxReport;
    frDBMovimientos: TfrxDBDataset;
    Label22: TLabel;
    edBasico: TJvCalcEdit;
    Label23: TLabel;
    edViaticos: TJvCalcEdit;
    Label24: TLabel;
    edCombustible: TJvCalcEdit;
    Label25: TLabel;
    edTotalFinal: TJvCalcEdit;
    CDSVentasNETO: TFloatField;
    chNeto: TCheckBox;
    Label26: TLabel;
    edVtaDiaraiObj: TJvCalcEdit;
    QSaldo: TFDQuery;
    CDSVentasFECHAULTIMAAPLICACION: TSQLTimeStampField;
    CDSVentasCODIGO: TStringField;
    CDSVentasNOMBRE: TStringField;
    CDSVentasCOMISION: TFloatField;
    CDSVentasPORC_COMISION: TFloatField;
    TabSheet1: TTabSheet;
    CDSVentasLIQUIDADA: TStringField;
    spbChekTos: TSpeedButton;
    QLiquidarFac: TFDQuery;
    frDBVentas: TfrxDBDataset;
    ImprimirVtas: TAction;
    PopupMenu1: TPopupMenu;
    ImprimirVtas1: TMenuItem;
    TabSheet2: TTabSheet;
    edDesgatesVehicular: TJvCalcEdit;
    Label27: TLabel;
    QUltimoLote: TFDQuery;
    QLoteLiquidacion: TFDQuery;
    QMovCtaCteVendedor: TFDQuery;
    QMovCtaCteVendedorID: TIntegerField;
    QMovCtaCteVendedorIDADELANTO: TIntegerField;
    QMovCtaCteVendedorCODIGO: TStringField;
    QMovCtaCteVendedorFECHA: TSQLTimeStampField;
    QMovCtaCteVendedorCLASECOMP: TStringField;
    QMovCtaCteVendedorNROCPBTE: TStringField;
    QMovCtaCteVendedorDETALLE: TStringField;
    QMovCtaCteVendedorDEBE: TFloatField;
    QMovCtaCteVendedorHABER: TFloatField;
    DSPMovCtaCteVendedor: TDataSetProvider;
    CDSMovCtaCteVendedor: TClientDataSet;
    CDSMovCtaCteVendedorID: TIntegerField;
    CDSMovCtaCteVendedorIDADELANTO: TIntegerField;
    CDSMovCtaCteVendedorCODIGO: TStringField;
    CDSMovCtaCteVendedorFECHA: TSQLTimeStampField;
    CDSMovCtaCteVendedorCLASECOMP: TStringField;
    CDSMovCtaCteVendedorNROCPBTE: TStringField;
    CDSMovCtaCteVendedorDETALLE: TStringField;
    CDSMovCtaCteVendedorDEBE: TFloatField;
    CDSMovCtaCteVendedorHABER: TFloatField;
    ibId: TIBGenerator;
    Label6: TLabel;
    edFechaLiq: TJvDateEdit;
    QFechas: TFDQuery;
    TabSheet3: TTabSheet;
    JvDBGrid1: TJvDBGrid;
    Label20: TLabel;
    edTotalRc: TJvCalcEdit;
    QRecibos: TFDQuery;
    DSPRecibos: TDataSetProvider;
    CDSRecibos: TClientDataSet;
    DSRecibos: TDataSource;
    CDSRecibosID_RC: TIntegerField;
    CDSRecibosTIPOCPBTE: TStringField;
    CDSRecibosCLASECPBTE: TStringField;
    CDSRecibosNROCPBTE: TStringField;
    CDSRecibosFECHA: TSQLTimeStampField;
    CDSRecibosTOTAL: TFloatField;
    CDSRecibosRAZONSOCIAL: TStringField;
    edAplicado: TJvCalcEdit;
    DataToXLS1: TDataToXLS;
    ExportarXLS: TAction;
    SaveDialog1: TSaveDialog;
    ExportarXLS1: TMenuItem;
    edTotalSinNC: TJvCalcEdit;
    edTotalNeto: TJvCalcEdit;
    edTotalNetoGral: TJvCalcEdit;
    Label28: TLabel;
    Label29: TLabel;
    Bevel1: TBevel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1FECHAVTA: TcxGridDBColumn;
    cxGrid1DBTableView1TIPOCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1CLASECPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NROCPBTE: TcxGridDBColumn;
    cxGrid1DBTableView1NETO: TcxGridDBColumn;
    cxGrid1DBTableView1TOTAL: TcxGridDBColumn;
    cxGrid1DBTableView1IMPORTEAPLICADO: TcxGridDBColumn;
    cxGrid1DBTableView1SALDO: TcxGridDBColumn;
    cxGrid1DBTableView1DIASMORA: TcxGridDBColumn;
    cxGrid1DBTableView1FECHAULTIMAAPLICACION: TcxGridDBColumn;
    cxGrid1DBTableView1COMISION: TcxGridDBColumn;
    cxGrid1DBTableView1PORC_COMISION: TcxGridDBColumn;
    cxGrid1DBTableView1LIQUIDADA: TcxGridDBColumn;
    cxGrid1DBTableView1ID_FC: TcxGridDBColumn;
    cxGrid1DBTableView1DIA: TcxGridDBColumn;
    cxGrid1DBTableView1MES: TcxGridDBColumn;
    cxGrid1DBTableView1ANIO: TcxGridDBColumn;
    cxGrid1DBTableView1VENDEDOR_OUT: TcxGridDBColumn;
    cxGrid1DBTableView1CODIGO: TcxGridDBColumn;
    cxGrid1DBTableView1NOMBRE: TcxGridDBColumn;
    dbgVentas_cobr: TDBGrid;
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormCreate(Sender: TObject);
    procedure CDSEscalaVtaNewRecord(DataSet: TDataSet);
    procedure ceVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure ceVendedorButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure CDSEscalaVtaAfterPost(DataSet: TDataSet);
    procedure CDSVehiculoNewRecord(DataSet: TDataSet);
    procedure CDSCobranzaAfterPost(DataSet: TDataSet);
    procedure CDSCobranzaNewRecord(DataSet: TDataSet);
    procedure CDSVehiculoAfterPost(DataSet: TDataSet);
    procedure CDSProduccionAfterPost(DataSet: TDataSet);
    procedure CDSProduccionNewRecord(DataSet: TDataSet);
    procedure CDSCobrosCalcFields(DataSet: TDataSet);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure edViaticosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edCombustibleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chNetoClick(Sender: TObject);
    procedure edVtaDiaraiObjChange(Sender: TObject);
    procedure edDiasChange(Sender: TObject);
    procedure edBasicoChange(Sender: TObject);
    procedure CDSVentasCalcFields(DataSet: TDataSet);
    procedure spbChekTosClick(Sender: TObject);
    procedure dbgVentas_CobrDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure ImprimirVtasExecute(Sender: TObject);
    procedure dbgVentas_CobrDblClick(Sender: TObject);
    procedure dbgVentasDblClick(Sender: TObject);
    procedure ExportarXLSExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoINI   :TIniFile;
    procedure Sumar;
    procedure DiasLaborables;
    procedure Porcentajes;

  end;

var
  FormComisionVtaObjetivo: TFormComisionVtaObjetivo;

implementation

{$R *.dfm}
uses UDMain_FD, UFactura_2;

procedure TFormComisionVtaObjetivo.Porcentajes;
begin
  edComisionObj.Value      :=0;
  edComisionVehicular.Value:=0;
  edComisionTotal.Value    :=0;
  edBonoProduccion.Value   :=0;

  if CDSEscalaVta.Active then
    begin
      CDSEscalaVta.IndexFieldNames:='porcentaje';
      CDSEscalaVta.First;
      CDSEscalaVta.DisableControls;
      while Not(CDSEscalaVta.Eof) do
        begin
          if (edObjetivoActual.Value>CDSEscalaVtaPORCENTAJE.AsFloat) then // and (edComisionObj.Value<=0) then
            edComisionObj.Value:=CDSEscalaVtaCOMISION.AsFloat;
          CDSEscalaVta.Next;
        end;
      CDSEscalaVta.First;
      CDSEscalaVta.EnableControls;
    end;

  if CDSVehiculo.Active then
    begin
      CDSVehiculo.IndexFieldNames:='porcentaje';
      CDSVehiculo.First;
      CDSVehiculo.DisableControls;
      while Not(CDSVehiculo.Eof) do
        begin
          if (edTotalVta.Value>=CDSVehiculoDESDE.AsFloat) and
             (edTotalVta.Value<=CDSVehiculoHASTA.AsFloat){ and
             (edComisionVehicular.Value<=0)} then
                edComisionVehicular.Value:=CDSVehiculoPORCENTAJE.AsFloat
          else
            if (edTotalVta.Value>=CDSVehiculoHASTA.AsFloat) Then
              edComisionVehicular.Value:=CDSVehiculoPORCENTAJE.AsFloat;

          CDSVehiculo.Next;
        end;
      CDSVehiculo.First;
      CDSVehiculo.EnableControls;
    end;

  if CDSProduccion.Active then
    begin
      CDSProduccion.First;
      CDSProduccion.DisableControls;
      while Not(CDSProduccion.Eof) do
        begin
          if (edTotalVta.Value>=CDSProduccionMONTO.AsFloat){ and
             (edBonoProduccion.Value<=0)} then
                edBonoProduccion.Value:=CDSProduccionBONO.AsFloat;

          CDSProduccion.Next;
        end;
      CDSProduccion.First;
      CDSProduccion.EnableControls;
    end;


  edComisionTotal.Value    := edComisionObj.Value + edComisionVehicular.Value;

  edImporteComisionVta.Value:= edTotalVta.Value * edComisionObj.Value * 0.01;
  
end;

procedure TFormComisionVtaObjetivo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReporte.DesignReport;
end;

procedure TFormComisionVtaObjetivo.spbChekTosClick(Sender: TObject);
VAR Id_Movimiento:Integer;
    Acumulador   :Extended;
    Lote         :Integer;
begin
  inherited;
  if CDSVentas.IsEmpty then
    raise Exception.Create('No Hay Datos... para esta Operacion.....');

  Acumulador    := 0;
  QUltimoLote.Close;
  QUltimoLote.Open;
  if QUltimoLote.Fields[0].AsString<>'' then
    Lote:=QUltimoLote.Fields[0].AsInteger+1
  else
    Lote:=1;
  QUltimoLote.Close;

  Id_Movimiento := ibId.IncrementFD(1);

  CDSVentas.First;
  DMMain_FD.fdcGestion.StartTransaction;
  Try
    while Not(CDSVentas.Eof) do
      begin
        if (CDSVentasLIQUIDADA.Value='S') Then
          begin
            Acumulador  := Acumulador + CDSVentasCOMISION.AsFloat;

            QLiquidarFac.Close;
            QLiquidarFac.ParamByName('id').Value   :=CDSVentasID_FC.Value;
            QLiquidarFac.ParamByName('Fecha').Value:=Date;
            QLiquidarFac.ExecSQL;

            QLoteLiquidacion.Close;
            QLoteLiquidacion.ParamByName('Lote').Value       := Lote;
            QLoteLiquidacion.ParamByName('id_factura').Value := CDSVentasID_FC.Value;
            QLoteLiquidacion.ParamByName('id_mov').Value     := Id_Movimiento;
            QLoteLiquidacion.ParamByName('comision').AsFloat := CDSVentasCOMISION.AsFloat;

            QLoteLiquidacion.ExecSQL;
          end;
       CDSVentas.Next;
      end;
    QLiquidarFac.Close;
    QLoteLiquidacion.Close;
    if Acumulador<>0 Then
      begin
        CDSMovCtaCteVendedor.Open;
        CDSMovCtaCteVendedor.Insert;
        CDSMovCtaCteVendedorID.AsInteger    := Id_Movimiento;
        CDSMovCtaCteVendedorCODIGO.Value    := ceVendedor.Text;
        CDSMovCtaCteVendedorFECHA.AsDateTime:= edFechaLiq.Date;
        CDSMovCtaCteVendedorCLASECOMP.Value := 'IP';
        CDSMovCtaCteVendedorDETALLE.Value   := 'Liquidacion del '+desde.Text+' al '+hasta.text;
        CDSMovCtaCteVendedorDEBE.AsFloat    := edTotalFinal.Value;
        CDSMovCtaCteVendedorHABER.AsFloat   := 0;
        CDSMovCtaCteVendedor.Post;
        CDSMovCtaCteVendedor.ApplyUpdates(0);
        CDSMovCtaCteVendedor.Close;
      end;
     DMMain_FD.fdcGestion.Commit;
     ShowMessage('Liquidacion terminada...!');
   except
    Screen.Cursor:=crDefault;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('NO se ingreso registro en la Cta Cte. del Empleado....!');
  End;
  Buscar.Execute;
end;

procedure TFormComisionVtaObjetivo.DiasLaborables;
var NoLaborables:Integer;
PrimerFecha:TDateTime;
Dias:Integer;
begin
  PrimerFecha :=Desde.Date;
  NoLaborables:=0;
  Dias        :=0;
  while PrimerFecha<=Hasta.date do
    begin
      Dias:=Dias+1;
      if (DayOfTheWeek(PrimerFecha)=7) or (DayOfTheWeek(PrimerFecha)=6) Then
        NoLaborables:=NoLaborables+1;
      PrimerFecha:=IncDay(PrimerFecha,1);
    end;
  QFechas.Close;
  QFechas.ParamByName('mes').Value:=MonthOf(Desde.Date);
  QFechas.Open;
  if QFechas.Fields[0].ASString<>'' then
    NoLaborables:=NoLaborables+QFechas.Fields[0].AsInteger;
  QFechas.Close;


  edDias.Value           := Dias-NoLaborables;
  if edDias.Value>0 then
    edPromedioDiario.Value := edTotalVta.Value/edDias.Value;
  if edObjetivoVta.Value>0 then
    edObjetivoActual.Value := (edTotalVta.Value / edObjetivoVta.Value) * 100;


end;

procedure TFormComisionVtaObjetivo.edBasicoChange(Sender: TObject);
begin
  inherited;
  Sumar;
end;

procedure TFormComisionVtaObjetivo.edCombustibleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then Sumar;
end;

procedure TFormComisionVtaObjetivo.edDiasChange(Sender: TObject);
begin
  inherited;
  edObjetivoVta.Value:=edVtaDiaraiObj.Value*edDias.Value;
  Sumar;
end;

procedure TFormComisionVtaObjetivo.edViaticosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if key=VK_RETURN then Sumar;

end;

procedure TFormComisionVtaObjetivo.edVtaDiaraiObjChange(Sender: TObject);
begin
  inherited;
  edObjetivoVta.Value:=edVtaDiaraiObj.Value*edDias.Value;
  Sumar;
end;

procedure TFormComisionVtaObjetivo.ExportarXLSExecute(Sender: TObject);
begin
  inherited;
  if VirtualUI.Active then
    VirtualUI.StdDialogs:=False;

  SaveDialog1.FileName  :='Comision';
  SaveDialog1.DefaultExt:='xls';
  if Not(cdsVentas.IsEmpty) then
    if SaveDialog1.Execute Then
      if SaveDialog1.FileName<>'' Then
        begin
          if VirtualUI.Active then
            DataToXLS1.SaveToFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt)
          else
            DataToXLS1.SaveToFile(SaveDialog1.FileName);

          if VirtualUI.Active then
            begin
              VirtualUI.StdDialogs:=False;
              VirtualUI.DownloadFile(SaveDialog1.FileName+'.'+SaveDialog1.DefaultExt);
            end;
      end;
end;

procedure TFormComisionVtaObjetivo.Sumar;
var
Aux,Aux2:Extended;
begin
  edImporteComisionVta.Value:=0;
  edComisionDeCobranza.Value:=0;
  edDesgatesVehicular.Value :=0;

  if CDSRecibos.Active=True then
    begin
      edTotalRc.Value:=0;
      CDSRecibos.first;
      CDSRecibos.DisableControls;
      while Not (CDSRecibos.Eof) do
        begin
          edTotalRc.Value:=edTotalRc.Value+CDSRecibosTotal.AsFLoat;
          CDSRecibos.Next;
        end;
      CDSRecibos.EnableControls;  
    end;


  if CDSVentas.Active=True then
    begin
      QSaldo.Close;
      QSaldo.ParamByName('vendedor').AsString := ceVendedor.Text;
      QSaldo.ParamByName('Hasta').Value       := Hasta.Date;
      QSaldo.Open;

      CDSVentas.First;
      CDSVentas.DisableControls;
      edAplicado.Value  :=0;
      edTotalSinNC.Value:=0;
      edTotalNeto.Value :=0;
      edTotalNetoGral.Value:=0;
      Aux:=0;
      while Not(CDSVentas.Eof) do
        begin
          edComisionDeCobranza.Value:= edComisionDeCobranza.Value + CDSVentasCOMISION.AsFloat;
          edAplicado.Value:=edAplicado.Value+CDSVentasIMPORTEAPLICADO.AsFloat;
          if chNeto.Checked=False then
            Aux:=Aux+CDSVentasTOTAL.AsFloat
          else
            if chNeto.Checked=True then
              Aux:=Aux+CDSVentasNETO.AsFloat;
          if CDSVentasTotal.AsFloat>0 then
            begin
               edTotalSinNC.Value:=edTotalSinNC.Value+CDSVentasTOTAL.AsFloat;
            end;
          edTotalNetoGral.Value:=edTotalNetoGral.Value+CDSVentasNETO.AsFloat;


          if CDSVentasLIQUIDADA.Value='S' then
            edTotalNeto.Value:=edTotalNeto.Value+CDSVentasNETO.AsFloat;
          CDSVentas.Next;
        end;
      CDSVentas.First;
      CDSVentas.EnableControls;

      edTotalVta.Value:=Aux;

    end;
  DiasLaborables;

  edDesgatesVehicular.Value:= edTotalVta.Value * edComisionVehicular.Value * 0.01;

  Porcentajes;

  edTotalGeneral.Value:= edDesgatesVehicular.Value+
                         edImporteComisionVta.Value+
                         edBonoProduccion.Value+
                         edComisionDeCobranza.Value;

  edTotalFinal.Value  := edTotalGeneral.Value+
                         edViaticos.Value+
                         edCombustible.Value+
                         edBasico.Value;


end;

procedure TFormComisionVtaObjetivo.btImprimirClick(Sender: TObject);
begin
  inherited;

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;

  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LstComisionObjetivo.fr3');
  frxReporte.Variables['desde']   :=''''+Desde.Text+'''';
  frxReporte.Variables['hasta']   :=''''+hasta.Text+'''';
  frxReporte.Variables['Vendedor']:=''''+edNombreVendedor.Text+'''';
  frxReporte.Variables['TotalVenta']          :=''''+FloatToStr(edTotalVta.Value)+'''';
  frxReporte.Variables['DiasLaborables']      :=''''+FloatToStr(edDias.Value)+'''';
  frxReporte.Variables['PromedioVentaDiaria'] :=''''+FloatToStr(edPromedioDiario.Value)+'''';
  frxReporte.Variables['ObjetivoAlcanzado']   :=''''+FloatToStr(edObjetivoActual.Value)+'''';
  frxReporte.Variables['ObjetivoVenta']       :=''''+FloatToStr(edObjetivoVta.Value)+'''';
  frxReporte.Variables['ComisionObjetivo']    :=''''+FloatToStr(edComisionObj.Value)+'''';
  frxReporte.Variables['ComisionVehicular']   :=''''+FloatToStr(edComisionVehicular.Value)+'''';
  frxReporte.Variables['ComisionTotal']       :=''''+FloatToStr(edComisionTotal.Value)+'''';

  frxReporte.Variables['ImporteVehicular']    :=''''+FloatToStr(edDesgatesVehicular.Value)+'''';

  frxReporte.Variables['ImporteComisionVenta']  :=''''+FloatToStr(edImporteComisionVta.Value)+'''';
  frxReporte.Variables['BonoProduccion']        :=''''+FloatToStr(edBonoProduccion.Value)+'''';
  frxReporte.Variables['TotalComisionVenta']    :=''''+FloatToStr(edImporteComisionVta.Value)+'''';
  frxReporte.Variables['TotalComisionCobranza'] :=''''+FloatToStr(edComisionDeCobranza.Value)+'''';
  frxReporte.Variables['TotalGeneral']          :=''''+FloatToStr(edTotalGeneral.Value)+'''';

  frxReporte.Variables['Viaticos']          :=''''+FloatToStr(edViaticos.Value)+'''';
  frxReporte.Variables['Basico']            :=''''+FloatToStr(edBasico.Value)+'''';

  frxReporte.Variables['Combustible']       :=''''+FloatToStr(edCombustible.Value)+'''';

  frxReporte.Variables['TotalFinal']        :=''''+FloatToStr(edTotalFinal.Value)+'''';

  frxReporte.Variables['TotalCobrado']        :=''''+FloatToStr(0{edTotalCobranza.Value})+'''';

  DMMain_FD.QOpciones.Close;

  frxReporte.ShowReport;

end;

procedure TFormComisionVtaObjetivo.BuscarExecute(Sender: TObject);
var AGroupItem: TcxPivotGridGroupItem;
i:integer;
begin
  inherited;
   Screen.Cursor:=crHourGlass;
  if (CDSEscalaVta.Active=True) and (CDSEscalaVta.State<>dsBrowse) then
    CDSEscalaVta.Post;

  if  (CDSCobranza.Active=True) and (CDSCobranza.State<>dsBrowse) then
    CDSCobranza.Post;

  if  (CDSVehiculo.Active=True) and (CDSVehiculo.State<>dsBrowse) then
    CDSVehiculo.Post;

  if  (CDSProduccion.Active=True) and (CDSProduccion.State<>dsBrowse) then
    CDSProduccion.Post;


  CDSCobranza.Close;
  CDSCobranza.Params.ParamByName('vendedor').AsString:=Trim(ceVendedor.Text);
  CDSCobranza.Open;

  CDSVentas.Close;
  CDSVentas.Params.ParamByName('vendedor').AsString:=ceVendedor.Text;
  CDSVentas.Params.ParamByName('desde').Value:=Desde.Date;
  CDSVentas.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSVentas.Open;

  CDSRecibos.Close;
  CDSRecibos.Params.ParamByName('cobrador').AsString:=ceVendedor.Text;
  CDSRecibos.Params.ParamByName('desde').Value:=Desde.Date;
  CDSRecibos.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSRecibos.Open;


  CDSEscalaVta.Close;
  CDSEscalaVta.Params.ParamByName('vendedor').AsString:=Trim(ceVendedor.Text);
  CDSEscalaVta.Open;


  CDSVehiculo.Close;
  CDSVehiculo.Params.ParamByName('vendedor').AsString:=Trim(ceVendedor.Text);
  CDSVehiculo.Open;

  CDSProduccion.Close;
  CDSProduccion.Params.ParamByName('vendedor').AsString:=Trim(ceVendedor.Text);
  CDSProduccion.Open;

  CDSCobros.Close;
  CDSCobros.Params.ParamByName('cobrador').AsString:=ceVendedor.Text;
  CDSCobros.Params.ParamByName('desde').Value:=Desde.Date;
  CDSCobros.Params.ParamByName('hasta').Value:=hasta.Date;
  CDSCobros.Open;

  Screen.Cursor:=crDefault;

  Sumar;

//  edComisionDeCobranza.Value:=0;
//  Porcentajes;
//  edTotalGeneral.Value:= edTotalComisionVta.Value+edComisionDeCobranza.Value;
//  edTotalFinal.Value:=edTotalGeneral.Value+edViaticos.Value+edCombustible.Value;

end;

procedure TFormComisionVtaObjetivo.CDSCobranzaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSCobranza.ApplyUpdates(0);
end;

procedure TFormComisionVtaObjetivo.CDSCobranzaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.SQL.Clear;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.SQL.Add('select max(id) from  TABLA_ESCALA_COBRANZA');
  QUltimoCodigo2.Open;

  CDSCobranzaID.Value        :=QUltimoCodigo2.Fields[0].Value+1;

  CDSCobranzaDESDE.Value     :=0;
  CDSCobranzaHASTA.Value     :=0;
  CDSCobranzaCOMISION.ASFloat:=0;
  CDSCobranzaVENDEDOR.Value  :=Trim(ceVendedor.Text);
  QUltimoCodigo2.Close;

end;

procedure TFormComisionVtaObjetivo.CDSCobrosCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSCobranza.IndexFieldNames:='desde';
  CDSCobranza.First;
  CDSCobranza.DisableControls;
  while Not(CDSCobranza.Eof) do
    begin
      if (CDSCobrosMORA.Value<=0) and (CDSCobrosCOMISION.AsFloat<=0) Then
          CDSCobrosCOMISION.AsFloat:=CDSCobranzaCOMISION.AsFloat
      else
      if (CDSCobrosMORA.Value>=CDSCobranzaDESDE.Value) and
         (CDSCobrosMORA.Value<=CDSCobranzaHASTA.Value) and (CDSCobrosCOMISION.AsFloat<=0) then
        CDSCobrosCOMISION.AsFloat:=CDSCobranzaCOMISION.AsFloat;

      CDSCobranza.Next;
    end;
  CDSCobranza.First;
  CDSCobranza.EnableControls;
  CDSCobrosIMPORTECOMISION.ASFloat:=CDSCobrosIMPORTE.AsFloat*CDSCobrosCOMISION.AsFloat *0.01;
  //edComisionDeCobranza.Value      :=edComisionDeCobranza.Value+CDSCobrosIMPORTECOMISION.ASFloat;
end;

procedure TFormComisionVtaObjetivo.CDSEscalaVtaAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSEscalaVta.ApplyUpdates(0);
end;

procedure TFormComisionVtaObjetivo.CDSEscalaVtaNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.SQL.Clear;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.SQL.Add('select max(id) from  TABLA_ESCALA_COMISION');
  QUltimoCodigo2.Open;

  CDSEscalaVtaID.Value          :=QUltimoCodigo2.Fields[0].Value+1;
  CDSEscalaVtaPORCENTAJE.AsFloat:=0;
  CDSEscalaVtaCOMISION.AsFloat  :=0;
  CDSEscalaVtaVENDEDOR.Value    :=Trim(ceVendedor.Text);

  QUltimoCodigo2.Close;

end;

procedure TFormComisionVtaObjetivo.CDSProduccionAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSProduccion.ApplyUpdates(0);
end;

procedure TFormComisionVtaObjetivo.CDSProduccionNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.SQL.Clear;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.SQL.Add('select max(id) from   TABLA_ESCALA_produccion');
  QUltimoCodigo2.Open;

  CDSProduccionID.Value          :=QUltimoCodigo2.Fields[0].Value+1;
  CDSProduccionMONTO.AsFloat     :=0;
  CDSProduccionBONO.AsFloat      :=0;
  CDSProduccionVENDEDOR.Value    :=Trim(ceVendedor.Text);

  QUltimoCodigo2.Close;

end;

procedure TFormComisionVtaObjetivo.ceVendedorButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaPersonal.Close;
  CDSBuscaPersonal.Open;
  ComBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    BEGIN
      ceVendedor.Text := comBuscadorBase.Id;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := comBuscadorBase.Id;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        BEGIN
          edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
          Buscar.Execute;
          ceVendedor.SetFocus;
          ceVendedor.SelectAll;
        END;
    END;
  CDSBuscaPersonal.Close;
end;

procedure TFormComisionVtaObjetivo.ceVendedorKeyPress(Sender: TObject; var Key: Char);
var dato:string;
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      key := #0;
      Dato := Copy('000000', 1, 6 - (Length(ceVendedor.Text))) + ceVendedor.Text;
      ceVendedor.Text := Dato;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value := Dato;
      CDSPersonal.Open;
      IF NOT (CDSPersonal.IsEmpty) THEN
        edNombreVendedor.Text := CDSPersonalNOMBRE.Value;
      CDSPersonal.Close;
      Buscar.Execute;
      ceVendedor.SetFocus;
      ceVendedor.SelectAll;
    END;

end;

procedure TFormComisionVtaObjetivo.chNetoClick(Sender: TObject);
begin
  inherited;
  if (CDSVEntas.Active=True) and Not(CDSVentas.IsEmpty) Then Sumar;
end;

procedure TFormComisionVtaObjetivo.CDSVehiculoAfterPost(DataSet: TDataSet);
begin
  inherited;
  CDSVehiculo.ApplyUpdates(0);
end;

procedure TFormComisionVtaObjetivo.CDSVehiculoNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.SQL.Clear;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.SQL.Add('select max(id) from   TABLA_ESCALA_VEHICULO');
  QUltimoCodigo2.Open;

  if QUltimoCodigo2.Fields[0].AsString<> '' then
    CDSVehiculoID.Value           :=QUltimoCodigo2.Fields[0].Value+1
  else
    CDSVehiculoID.Value           :=1;


  CDSVehiculoDESDE.AsFloat      :=0;
  CDSVehiculoHASTA.AsFloat      :=0;
  CDSVehiculoPORCENTAJE.AsFloat :=0;
  CDSVehiculoVENDEDOR.Value     :=Trim(ceVendedor.Text);
  QUltimoCodigo2.Close;

end;

procedure TFormComisionVtaObjetivo.CDSVentasCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSCobranza.IndexFieldNames:='desde';
  CDSCobranza.First;
  CDSCobranza.DisableControls;
  while Not(CDSCobranza.Eof) do
    begin
      if (CDSVentasDIASMORA.Value<=0) and (CDSVentasPORC_COMISION.AsFloat<=0) Then
          CDSVentasPORC_COMISION.AsFloat:=CDSCobranzaCOMISION.AsFloat
      else
      if (CDSVentasDIASMORA.Value>=CDSCobranzaDESDE.Value) and
         (CDSVentasDIASMORA.Value<=CDSCobranzaHASTA.Value) and
         (CDSVentasPORC_COMISION.AsFloat<=0) then
        CDSVentasPORC_COMISION.AsFloat:=CDSCobranzaCOMISION.AsFloat;

      CDSCobranza.Next;
    end;
  CDSCobranza.First;
  CDSCobranza.EnableControls;

  CDSVentasLIQUIDADA.Value:='S';

  if CDSVentasSALDO.Value<=1 then
    begin
      CDSVentasCOMISION.ASFloat:=CDSVentasTOTAL.AsFloat * CDSVentasPORC_COMISION.AsFloat * 0.01;
      CDSVentasLIQUIDADA.Value:='S';
    end
  else
    begin
      CDSVentasCOMISION.ASFloat     :=0;
      CDSVentasPORC_COMISION.AsFloat:=0;
      CDSVentasLIQUIDADA.Value:='N';
    end;

   if CDSVentasTIPOCPBTE.Value='NC' then
     begin
//       CDSVentasPORC_COMISION.AsFloat:=0;
       CDSVentasCOMISION.ASFloat     :=(CDSVentasNETO.AsFloat * CDSVentasPORC_COMISION.AsFloat * 0.01);
       CDSVentasLIQUIDADA.Value      :='S';
     end

end;

procedure TFormComisionVtaObjetivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PanelComisiones.ini');
  ArchivoIni.WriteFloat('comisiones', 'objetivo',edObjetivoVta.Value);
  ArchivoIni.WriteFloat('comisiones', 'basico',edBasico.Value);
  ArchivoIni.WriteBool('comisiones', 'Neto',chNeto.Checked);
  ArchivoIni.WriteFloat('comisiones', 'objetivoDiario',edVtaDiaraiObj.Value);
  ArchivoIni.Free;

 //*************************************************************
  //cxDBGridVentas.StoreToIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor');
  //*************************************************************

  inherited;
  Action:=caFree;
end;

procedure TFormComisionVtaObjetivo.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize  :=True;
  ArchivoIni             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'PanelComisiones.ini');
  edObjetivoVta.Value    := ArchivoIni.ReadFloat('comisiones', 'objetivo',0);
  edVtaDiaraiObj.Value   := ArchivoIni.ReadFloat('comisiones', 'objetivoDiario',0);
  edBasico.Value         := ArchivoIni.ReadFloat('comisiones', 'basico',0);
  chNeto.Checked         := ArchivoIni.ReadBool('comisiones', 'Neto',False);
  ArchivoIni.Free;

  CDSEscalaVta.Open;
end;

procedure TFormComisionVtaObjetivo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormComisionVtaObjetivo:=nil;
end;

procedure TFormComisionVtaObjetivo.FormShow(Sender: TObject);
var d,m,y:word;
begin
  inherited;
  DecodeDate(date,y,m,d);
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  Desde.SetFocus;
  //*************************************************************
//  cxDBGridVentas.RestoreFromIniFile(ExtractFilePath(ParamStr(0))+'_grillaVtaVendedor');
  //*************************************************************

end;

procedure TFormComisionVtaObjetivo.ImprimirVtasExecute(Sender: TObject);
begin
  inherited;
 
  CDSVentas.IndexFieldNames:='LIQUIDADA;TIPOCPBTE;FECHAVTA;NROCPBTE';

  frxReporte.PrintOptions.Printer:=PrNomListados;
  frxReporte.SelectPrinter;


  frxReporte.LoadFromFile(DMMain_FD.PathReportesLst+'\LstComisionVtas.fr3');
  CDSVentas.IndexFieldNames:='LIQUIDADA;TIPOCPBTE;FECHAVTA;NROCPBTE';

  frxReporte.Variables['desde']   :=''''+Desde.Text+'''';
  frxReporte.Variables['hasta']   :=''''+hasta.Text+'''';
  frxReporte.Variables['Vendedor']:=''''+edNombreVendedor.Text+'''';
  frxReporte.Variables['TotalVenta']          :=''''+FloatToStr(edTotalVta.Value)+'''';

  DMMain_FD.QOpciones.Close;

  frxReporte.ShowReport;

end;

procedure TFormComisionVtaObjetivo.dbgVentas_CobrDblClick(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormCpbte_2)) THEN
  FormCpbte_2    := TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew   := CDSVentasID_FC.AsString;
  FormCpbte_2.TipoCpbte := CDSVentasTIPOCPBTE.Value;
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;

  
end;

procedure TFormComisionVtaObjetivo.dbgVentas_CobrDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  inherited;
  dbgVentas_Cobr.Canvas.Font.Color:=clBlack;
  if gdSelected  in State then
    begin
      dbgVentas_Cobr.Canvas.Font.Color:=clWhite;
    //  wwDBGMovCC.Canvas.Brush.Color:=clNavy;
    end
  else
    begin
      if CDSVentasCOMISION.Value<=0 then
        dbgVentas_Cobr.Canvas.Brush.Color:=clMoneyGreen;
    end;

  dbgVentas_Cobr.DefaultDrawDataCell(rect,field,state);
end;

procedure TFormComisionVtaObjetivo.Label6Click(Sender: TObject);
begin
  inherited;
  //cxDBGridVentas.OptionsView.FilterFields:=Not(cxDBGridVentas.OptionsView.FilterFields);
end;

procedure TFormComisionVtaObjetivo.UpDown1Click(Sender: TObject; Button: TUDBtnType);
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

procedure TFormComisionVtaObjetivo.dbgVentasDblClick(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormCpbte_2)) THEN
  FormCpbte_2    := TFormCpbte_2.Create(self);
  FormCpbte_2.DatoNew   := CDSVentasID_FC.AsString;
  FormCpbte_2.TipoCpbte := CDSVentasTIPOCPBTE.Value;
  FormCpbte_2.Recuperar.Execute;
  FormCpbte_2.Show;

end;

end.
