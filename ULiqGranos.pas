unit ULiqGranos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  JvToolEdit, JvExMask, Vcl.DBCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids,
  JvExStdCtrls, JvCombobox, JvDBCombobox, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
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
  cxDataStorage, cxEdit, cxNavigator, cxDBData, cxDBLookupComboBox,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, JvDBLookup, JvExDBGrids, JvDBGrid,
  frxClass, frxDBSet, System.ImageList, frCoreClasses;

type
  TFormLiqGranos = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText1: TDBText;
    DBText2: TDBText;
    IdCpbte: TDBText;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel6: TJvLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    RxCCodigo: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    dbeFechaVta: TJvDBDateEdit;
    ComBuscadorSucursal: TComBuscador;
    BuscaSucursal: TAction;
    pcDeducciones: TPageControl;
    pagDeducciones: TTabSheet;
    padRetenciones: TTabSheet;
    dbgRetenciones: TDBGrid;
    pnDatos: TPanel;
    gbConciciones: TGroupBox;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    JvLabel3: TJvLabel;
    JvLabel4: TJvLabel;
    JvLabel5: TJvLabel;
    edPrecioTN: TDBEdit;
    DBEdit1: TDBEdit;
    cbGrado: TDBLookupComboBox;
    cbGrano: TDBLookupComboBox;
    cbPuerto: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    JvLabel6: TJvLabel;
    JvLabel7: TJvLabel;
    JvLabel8: TJvLabel;
    JvLabel9: TJvLabel;
    JvLabel10: TJvLabel;
    JvLabel16: TJvLabel;
    edNroCpbte: TDBEdit;
    edPesoKg: TDBEdit;
    dbcGradoEntrega: TDBLookupComboBox;
    dbcProcedencia: TDBLookupComboBox;
    edFactor: TDBEdit;
    edConProteico: TDBEdit;
    GroupBox2: TGroupBox;
    JvLabel11: TJvLabel;
    JvLabel12: TJvLabel;
    JvLabel13: TJvLabel;
    JvLabel14: TJvLabel;
    JvLabel15: TJvLabel;
    JvLabel17: TJvLabel;
    edCantidad: TDBEdit;
    DBEdit5: TDBEdit;
    edPrecio_Kg: TDBEdit;
    edSubtotal: TDBEdit;
    DBEdit7: TDBEdit;
    BuscaCliente: TAction;
    DBText3: TDBText;
    dbcTipoActividad: TDBLookupComboBox;
    JvLabel18: TJvLabel;
    cbTipoOperacion: TJvDBComboBox;
    JvLabel19: TJvLabel;
    dbcGravamen: TDBLookupComboBox;
    edCOE: TDBEdit;
    JvLabel20: TJvLabel;
    pnPie: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    pcBase: TPageControl;
    pagLiquidacion: TTabSheet;
    pagDatos: TTabSheet;
    dbgDeducciones: TJvDBGrid;
    dbcTasaIva: TJvDBLookupCombo;
    Label9: TLabel;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBGrid2: TDBGrid;
    DBNavigator2: TDBNavigator;
    Label10: TLabel;
    Label11: TLabel;
    DBGrid3: TDBGrid;
    DBNavigator3: TDBNavigator;
    edTotalOperacion: TDBEdit;
    edTotalRetAfip: TDBEdit;
    edNetoPagar: TDBEdit;
    edTotalPercep: TDBEdit;
    edOtrasRet: TDBEdit;
    edIva2300: TDBEdit;
    edTotalDeduciones: TDBEdit;
    edPagoSegunCond: TDBEdit;
    frxReport: TfrxReport;
    frxDBDeducciones: TfrxDBDataset;
    frxDBRetenciones: TfrxDBDataset;
    frxDBLiquidacion: TfrxDBDataset;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    procedure BuscaSucursalExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxCTipoCpbteButtonClick(Sender: TObject);
    procedure BuscaClienteExecute(Sender: TObject);
    procedure dbcGravamenClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRetencionesColEnter(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbcTasaIvaChange(Sender: TObject);
    procedure dbgDeduccionesColEnter(Sender: TObject);
    procedure dbgDeducionesKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE UltimoComprobante;

  end;

var
  FormLiqGranos: TFormLiqGranos;

implementation

USES DMLiqGranos,DMStoreProcedureForm,DMBuscadoresForm, UBuscadorComprobantes,
  UBuscadorClientes, UBuscadorCpbte,UDMain_FD;
{$R *.dfm}

PROCEDURE TFormLiqGranos.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosLiqGranos,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSLiqCabLETRAFAC.AsString <> '') AND (CDSLiqCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSLiqCabLETRAFAC.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSLiqCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSLiqCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSLiqCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSLiqCabSUCFACSetText(CDSLiqCabSUCFAC,IntToStr(Numero));

              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSLiqCabNUMEROFACSetText(CDSLiqCabNUMEROFAC,IntToStr(Numero));
            END;
          CDSLiqCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
          CDSLiqCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          CDSLiqCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSLiqCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSLiqCabNroCpbte.AsString := CDSLiqCabLetraFac.AsString + CDSLiqCabSucFac.AsString + CDSLiqCabNumeroFac.AsString;
    END;
END;

procedure TFormLiqGranos.btImprimirClick(Sender: TObject);
begin
  inherited;
  frxReport.PrintOptions.Printer:=PrNomListados;
  frxReport.SelectPrinter;
  frxReport.LoadFromFile(DMMain_FD.PathReportesLst+ '\LiqGranos.fr3');
  frxReport.Variables['TipoOperacion']:=''''+cbTipoOperacion.Text+'''';
  frxReport.ShowReport;
end;

procedure TFormLiqGranos.BuscaClienteExecute(Sender: TObject);
begin
  inherited;
  ClientePorDefecto:='';
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosLiqGranos.CDSLiqCabCodigoSetText(DatosLiqGranos.CDSLiqCabCodigo,FormBuscadorClientes.Codigo);
end;

procedure TFormLiqGranos.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag       := 35;
  FormBuscaCpbte.TipoCpbte1:='LG';
  FormBuscaCpbte.ShowModal;
  IF  (FormBuscaCpbte.Id_Rec > 0)  THEN
    BEGIN
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END

end;

procedure TFormLiqGranos.BuscaSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosLiqGranos.CDSBuscaSucursal.Close;
  DatosLiqGranos.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosLiqGranos.CDSLiqCabSUCURSALSetText(DatosLiqGranos.CDSLiqCabSUCURSAL, IntToStr(comBuscadorSucursal.id));
  DatosLiqGranos.CDSBuscaSucursal.Close;
end;

procedure TFormLiqGranos.ConfirmaExecute(Sender: TObject);
var i:integer;
begin
  DatoNew:=DSBase.DataSet.FieldByName('id_lq').AsString;
  For i:= 0 to DatosLiqGranos.CDSLiqCab.FieldCount-1 do
    begin
      if (DatosLiqGranos.CDSLiqCab.Fields[i].Required=True) and
         ((VarIsNull(DatosLiqGranos.CDSLiqCab.Fields[i].Value)) or (DatosLiqGranos.CDSLiqCab.Fields[i].AsString='')) then
      raise Exception.Create('Campo Requerido '+DatosLiqGranos.CDSLiqCab.Fields[i].DisplayName);
    end;

  inherited;
  Recuperar.Execute;
end;

procedure TFormLiqGranos.dbcGravamenClick(Sender: TObject);
begin
  inherited;
  DatosLiqGranos.CDSLiqCabOPERACION_ALICUOTASetText(DatosLiqGranos.CDSLiqCabOPERACION_ALICUOTA,dbcGravamen.Text);
end;

procedure TFormLiqGranos.dbgDeduccionesColEnter(Sender: TObject);
begin
  inherited;
   if dbgDeducciones.SelectedIndex=5 Then
     dbgDeducciones.SelectedIndex:=6
   ELSE
     if dbgDeducciones.SelectedIndex=6 Then
       BEGIN
         dbgDeducciones.DataSource.DataSet.Append;
         dbgDeducciones.SelectedIndex := 0;
       END;

end;

procedure TFormLiqGranos.dbgDeducionesKeyPress(Sender: TObject; var Key: Char);
Var Top:Integer;
begin
 inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 6;
      IF (dbgDeducciones.SelectedIndex < Top) THEN
        dbgDeducciones.SelectedIndex := dbgDeducciones.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgDeducciones.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgDeducciones.DataSource.DataSet.Append;
          dbgDeducciones.SelectedIndex := 0;
        END;
    END;
end;

procedure TFormLiqGranos.dbgRetencionesColEnter(Sender: TObject);
begin
  inherited;
  if dbgRetenciones.SelectedIndex=7 then
    BEGIN
      IF (dbgRetenciones.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
        dbgRetenciones.DataSource.DataSet.Append;
      dbgRetenciones.SelectedIndex := 0;
    END;

end;

procedure TFormLiqGranos.dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
Var Top:Integer;
begin
 inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      Top := 7;
      IF (dbgRetenciones.SelectedIndex < Top) THEN
        dbgRetenciones.SelectedIndex := dbgRetenciones.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgRetenciones.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgRetenciones.DataSource.DataSet.Append;
          dbgRetenciones.SelectedIndex := 1;
        END;
    END;
end;

procedure TFormLiqGranos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled     := True;
  pnCabecera.Enabled      := DSBase.State<>dsBrowse;
  pnDatos.Enabled         := DSBase.State<>dsBrowse;
  dbgRetenciones.ReadOnly := DSBase.State=dsBrowse;
  dbgDeducciones.ReadOnly := DSBase.State=dsBrowse;

end;

procedure TFormLiqGranos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DatosLiqGranos.CDSLiqCab.Close;
  DatosLiqGranos.CDSLiqRetenciones.Close;
  DatosLiqGranos.CDSLiqDeducciones.Close;
  DatosLiqGranos.CDSBuscaSucursal.Close;
  DatosLiqGranos.QLiq_Puertos.Close;
  DatosLiqGranos.QLiq_GradosGranos.Close;
  DatosLiqGranos.QLiq_TActividad.Close;
  DatosLiqGranos.QLiq_TCertificado.Close;
  DatosLiqGranos.QLiq_TDeducion.Close;
  DatosLiqGranos.QLiq_TRetencion.Close;
  DatosLiqGranos.QLiq_TGranos.Close;
  FreeAndNil(DatosLiqGranos);

  Action := caFree;

  inherited;

end;

procedure TFormLiqGranos.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  IF NOT (Assigned(DatosLiqGranos)) THEN
    DatosLiqGranos := TDatosLiqGranos.Create(Self);
  DSBase.DataSet:=DatosLiqGranos.CDSLiqCab;

  AddClientDataSet(DatosLiqGranos.CDSLiqCab,DatosLiqGranos.DSPLiqCab);
  AddClientDataSet(DatosLiqGranos.CDSLiqDeducciones,DatosLiqGranos.DSPLiqDeducciones);
  AddClientDataSet(DatosLiqGranos.CDSLiqRetenciones,DatosLiqGranos.DSpLiqRetenciones);

  DatosLiqGranos.CDSLiqCab.Open;
  DatosLiqGranos.CDSLiqRetenciones.Open;
  DatosLiqGranos.CDSLiqDeducciones.Open;
  DatosLiqGranos.CDSBuscaSucursal.Open;
  DatosLiqGranos.QLiq_Puertos.Open;
  DatosLiqGranos.QLiq_GradosGranos.Open;
  DatosLiqGranos.QLiq_TActividad.Open;
  DatosLiqGranos.QLiq_TCertificado.Open;
  DatosLiqGranos.QLiq_TDeducion.Open;
  DatosLiqGranos.QLiq_TRetencion.Open;
  DatosLiqGranos.QLiq_TGranos.Open;

  pcBase.ActivePageIndex:=0;
  Campo := 'ID_LQ';
  Tabla := 'LIQGRANOS_CAB';

end;

procedure TFormLiqGranos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLiqGranos:=nil;
end;

procedure TFormLiqGranos.dbcTasaIvaChange(Sender: TObject);
begin
  inherited;
  DatosLiqGranos.CDSLiqDeduccionesALICUOTASetText(DatosLiqGranos.CDSLiqDeduccionesALICUOTA,dbcTasaIva.Text);
  DatosLiqGranos.CDSLiqDeduccionesCOD_ALICUOTA.Value:=dbcTasaIva.LookupSource.DataSet.FieldByName('CODIGO').AsInteger;
end;

procedure TFormLiqGranos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosLiqGranos.CDSLiqCab.Close;
  DatosLiqGranos.CDSLiqCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosLiqGranos.CDSLiqCab.Open;

  DatosLiqGranos.CDSLiqDeducciones.Close;
  DatosLiqGranos.CDSLiqDeducciones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosLiqGranos.CDSLiqDeducciones.Open;

  DatosLiqGranos.CDSLiqRetenciones.Close;
  DatosLiqGranos.CDSLiqRetenciones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosLiqGranos.CDSLiqRetenciones.Open;

end;

procedure TFormLiqGranos.RxCTipoCpbteButtonClick(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and compra_venta = ''V'' and '+
                                                    '(tipo_comprob = ''LG'' ) order by sucursal , tipo_comprob ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosLiqGranos.CDSLiqCabSucursal.Value;

  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes        := TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos := DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    DatosLiqGranos.CDSLiqCabID_TIPOCOMPROBANTESetText(DatosLiqGranos.CDSLiqCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
end;

procedure TFormLiqGranos.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport;
end;

end.
