unit UCompraCtdo_2;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, Grids, DBGrids, ExtCtrls, StdCtrls, ComCtrls,
  Mask, DBCtrls, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  frxClass, frxExportPDF, Vcl.Menus, frxDBSet, UMovValoresEgresos, JvToolEdit,
  JvDBControls, JvExMask, JvLabel, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, Vcl.ImgList, System.Actions, Vcl.ActnList,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, IniFiles,
  Librerias,Variants, ActnMan, ActnColorMaps, DBXCommon, Math,StrUtils,DateUtils, frxExportBaseDialog,
  System.ImageList, frCoreClasses;

type
  TFormCompraCtdo_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeOCompra: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeSucrusal: TDBEdit;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    PagImpuestos: TTabSheet;
    Label6: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    dbgPrecepcionIVA: TDBGrid;
    dbeDscto: TDBEdit;
    dbgPercepcionIB: TDBGrid;
    dbgIva: TDBGrid;
    PagValores: TTabSheet;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    BuscarTipoCpbte: TAction;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    DBText2: TDBText;
    DBText4: TDBText;
    DBText8: TDBText;
    Label5: TLabel;
    Bevel7: TBevel;
    Label7: TLabel;
    Bevel8: TBevel;
    DBText9: TDBText;
    SpeedButton2: TSpeedButton;
    AgregarProveedor: TAction;
    PagNroSeires: TTabSheet;
    dbgDetalleCompra: TDBGrid;
    dbgSeries: TDBGrid;
    Label24: TLabel;
    dbtCantidad: TDBText;
    Label25: TLabel;
    Panel2: TPanel;
    DBText11: TDBText;
    Label8: TLabel;
    lb4: TLabel;
    dbtMUESTRAMONEDACPBTE1: TDBText;
    dbtMUESTRAMONEDA: TDBText;
    lb1: TLabel;
    dbtTotal1: TDBText;
    dbtMUESTRAMONEDACPBTE2: TDBText;
    lb3: TLabel;
    dbtMUESTRAMONEDACPBTE: TDBText;
    ActualizarCotizacion: TAction;
    ActualicarCotizacionDetalle: TAction;
    pnMonedaIngreso: TPanel;
    lb2: TLabel;
    dbtMUESTRAMONEDACPBTE3: TDBText;
    dbtMUESTRASIGNOMONEDACPBTE: TDBText;
    RxDBECodigo: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    CambiarNumero: TAction;
    GravarNumeroOperacion: TAction;
    Label9: TLabel;
    edNumeroOP: TDBText;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    DBStatusLabel2: TJvDBStatusLabel;
    dbeFechaCompra: TJvDBDateEdit;
    dbeFechaFiscal: TJvDBDateEdit;
    DetallesCostos: TAction;
    SpeedButton1: TSpeedButton;
    frReporte: TfrxReport;
    frPercepIIBB: TfrxDBDataset;
    frIva: TfrxDBDataset;
    frSuDetalle: TfrxDBDataset;
    frDetalle: TfrxDBDataset;
    frCabecera: TfrxDBDataset;
    frPercepIVA: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    CambiarFechaFiscal: TAction;
    poMenuOtros: TPopupMenu;
    CambiarNumero1: TMenuItem;
    CambiarFechaFiscal1: TMenuItem;
    spMenu: TSpeedButton;
    N1: TMenuItem;
    GravarNumeroOperacion1: TMenuItem;
    N2: TMenuItem;
    DBText12: TDBText;
    BuscarPorNroReferencia: TAction;
    CambiarCodigo: TAction;
    CambiarCodigodeProveedor1: TMenuItem;
    LibroIva: TAction;
    AgregaralLibrodeIva1: TMenuItem;
    CambiarClaseCpbte: TAction;
    N3: TMenuItem;
    CambiarClasedeCpbte1: TMenuItem;
    PopupMenu1: TPopupMenu;
    VerCodigoAlternativo1: TMenuItem;
    dbgCtroCosto: TDBGrid;
    DSCtroCosto: TDataSource;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDepositos: TComBuscador;
    VerUnidadesdeStock1: TMenuItem;
    N4: TMenuItem;
    frxPDFExport1: TfrxPDFExport;
    ConvertirCC: TAction;
    N5: TMenuItem;
    ConvertirCC1: TMenuItem;
    DBText13: TDBText;
    DBText14: TDBText;
    N6: TMenuItem;
    RevisionValoresEgresados: TMenuItem;
    ToolBar2: TToolBar;
    ToolButton1: TToolButton;
    N7: TMenuItem;
    PermitirModifTotal: TMenuItem;
    PasaDetallesAStock: TAction;
    PasarDetallesAStock1: TMenuItem;
    VerInventariar: TMenuItem;
    DBEdit1: TDBEdit;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure pcDetalleFacturaChange(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaColEnter(Sender: TObject);
    procedure dbgPrecepcionIVAColEnter(Sender: TObject);
    procedure dbgPercepcionIBColEnter(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarProveedorExecute(Sender: TObject);
    procedure dbgDetalleCompraDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure dbeFechaCompraExit(Sender: TObject);
    procedure ActualizarCotizacionExecute(Sender: TObject);
    procedure ActualicarCotizacionDetalleExecute(Sender: TObject);
    procedure CambiarNumeroExecute(Sender: TObject);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure DetallesCostosExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure CambiarFechaFiscalExecute(Sender: TObject);
    procedure BuscarPorNroReferenciaExecute(Sender: TObject);
    procedure CambiarCodigoExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure dbeFechaFiscalEnter(Sender: TObject);
    procedure dbeFechaFiscalExit(Sender: TObject);
    procedure LibroIvaExecute(Sender: TObject);
    procedure CambiarClaseCpbteExecute(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgPrecepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure VerUnidadesdeStock1Click(Sender: TObject);
    procedure dbeSucExit(Sender: TObject);
    procedure dbeNumeroExit(Sender: TObject);
    procedure ConvertirCCExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure RevisionValoresEgresadosClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PermitirModifTotalClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure PasaDetallesAStockExecute(Sender: TObject);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure VerInventariarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ImporteOriginal:Real;
    ArchIni:TIniFile;
    function ControlSerie:Boolean;
  end;

var
  FormCompraCtdo_2: TFormCompraCtdo_2;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorCpbte, ComposicionPrecio, UCarteraCheques,UDMain_FD,
  UProveedor_2, UBuscadorArticulos, UBuscadorProveedor, UIngresoCotizacion,
  DMStoreProcedureForm, UCambiaNumeroCpbte, UNumeroOperacion,
  UIngresaNroOP,DMCompraCtdo, UAsignacionCtroCosto, UCambioFechaFiscal,
  UBuscarPorNroReferencia, UCambioProveedorFactura, UCompra_2,
  UCambiaClaseComprobante, UBuscadorComprobantes, URevisionValoresEgresados, UStock_2;

{$R *.dfm}

function TFormCompraCtdo_2.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.CDSCompraDet.DisableControls;
  DatosCompraCtdo.CDSCompraDet.First;
  while not(DatosCompraCtdo.CDSCompraDet.Eof) and aux=True do
    begin
      aux:=True;
      if (DatosCompraCtdo.CDSCompraDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(DatosCompraCtdo.CDSCompraDetCantidad.AsFloat)=DatosCompraCtdo.CDSCompraSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosCompraCtdo.CDSCompraDet.Next;
    end;
  DatosCompraCtdo.CDSCompraDet.First;
 // DatosCompra.CDSCompraDet.EnableControls;
  Result:=Aux;
end;



procedure TFormCompraCtdo_2.ConvertirCCExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.AsInteger) Then
        Raise Exception.Create('Caja Cerrada no se puede hacer esta operacion.....');
      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo            := 'FC';
      FormCambiarClaseCpbte.Clase           := DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
      FormCambiarClaseCpbte.Letra           := DatosCompraCtdo.CDSCompraCabLETRAFAC.Value;
      FormCambiarClaseCpbte.Sucursal        := DatosCompraCtdo.CDSCompraCabSUCURSALCOMPRA.Value;
      FormCambiarClaseCpbte.IdComprobante   := DatosCompraCtdo.CDSCompraCabID_FC.Value;
      FormCambiarClaseCpbte.ComproVenta     := 'T';
      FormCambiarClaseCpbte.dbcSucursalNew.KeyValue := DSBase.DataSet.FieldByName('SUCURSALCOMPRA').Value;
      FormCambiarClaseCpbte.ShowModal;
      if FormCambiarClaseCpbte.ModalResult=mrOk Then
        begin
          DMStoreProcedure.QBorrarMovCajaFD.Close;
          DMStoreProcedure.QBorrarMovCajaFD.ParamByName('tipo').Value      :='E';
          DMStoreProcedure.QBorrarMovCajaFD.ParamByName('tipocpbte').Value :='FO';
          DMStoreProcedure.QBorrarMovCajaFD.ParamByName('clasecpbte').Value:=DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
          DMStoreProcedure.QBorrarMovCajaFD.ParamByName('idcpbte').Value   :=DatosCompraCtdo.CDSCompraCabID_FC.Value;
          DMStoreProcedure.QBorrarMovCajaFD.ExecSQL;
          DMStoreProcedure.QBorrarMovCajaFD.Close;

          DatosCompraCtdo.spReHaceMov.Close;
          DatosCompraCtdo.spReHaceMov.ParamByName('CPBTE_ID').Value    := DatosCompraCtdo.CDSCompraCabID_FC.Value;
          DatosCompraCtdo.spReHaceMov.ParamByName('CPBTE_TIPO').Value  := 'FC';
          DatosCompraCtdo.spReHaceMov.ParamByName('CPBTE_CLASE').Value := DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
          DatosCompraCtdo.spReHaceMov.ExecProc;
          DatosCompraCtdo.spReHaceMov.Close;

          DatoNew  := '-1';
          TipoCpbte:=FormCambiarClaseCpbte.Tipo;
          Recuperar.Execute;
        end;
    end;
end;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosCompraCtdo,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSCompraCabLetraFac.AsString <> '') AND (CDSCompraCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSCompraCabLetraFac.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSCompraCabSucursalCompra.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSCompraCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSCompraCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSCompraCabSucFacSetText(CDSCompraCabSucFac,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString)+ 1
              ELSE
                Numero := 1;
              CDSCompraCabNumeroFacSetText(CDSCompraCabNumeroFac,IntToStr(Numero));
            END;
          CDSCompraCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          CDSCompraCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
          CDSCompraCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          CDSCompraCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSCompraCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          FormCompraCtdo_2.Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSCompraCabNROCPBTE.AsString := CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString +
        CDSCompraCabNumeroFac.AsString;
      FormCompraCtdo_2.dbgIva.Enabled := CDSCompraCabDESGLOZAIVA.Value = 'S';
    END;
END;

procedure TFormCompraCtdo_2.BuscarPorNroReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='C';  
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='FO' then
        begin
          TipoCpbte:= 'FO';
          DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
      else
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Application);
          FormCompra_2.DatoNew:=IntToStr(FormBuscarPorNroReferenica.id);
          FormCompra_2.TipoCpbte:=FormBuscarPorNroReferenica.Tipo;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end;

   end
 else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormCompraCtdo_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatosCompraCtdo.CDSCompraCabCodigoSetText(DatosCompraCtdo.CDSCompraCabCodigo, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormCompraCtdo_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosCompraCtdo.CDSBuscaSucursal.Close;
  DatosCompraCtdo.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosCompraCtdo.CDSCompraCabSucursalCompraSetText(DatosCompraCtdo.CDSCompraCabSucursalCompra, IntToStr(comBuscadorSucursal.Id));
  DatosCompraCtdo.CDSBuscaSucursal.Close;
end;

procedure TFormCompraCtdo_2.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosCompraCtdo.CDSBuscaDeposito.Close;
  DatosCompraCtdo.CDSBuscaDeposito.Open;
  comBuscadorDepositos.Execute;
  if comBuscadorDepositos.rOk Then
    DatosCompraCtdo.CDSCompraCabDepositoSetText(DatosCompraCtdo.CDSCompraCabDeposito, IntToStr(comBuscadorDepositos.Id));
  DatosCompraCtdo.CDSBuscaDeposito.Close;
end;

procedure TFormCompraCtdo_2.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  // si el proveedore es mercaderias y/o servicios
  if (DatosCompraCtdo.CDSCompraCabTIPO_PROVEEDOR.AsString='M') or
     (DatosCompraCtdo.CDSCompraCabTIPO_PROVEEDOR.AsString='A') Then
    begin
      FormBuscadorArticulos.Param1:=3;
      FormBuscadorArticulos.Param2:=2;
      FormBuscadorArticulos.Param3:=3;
    end
  else
    // si el proveedor es solo de servicios
    if (DatosCompraCtdo.CDSCompraCabTIPO_PROVEEDOR.AsString='G') Then
      begin
        FormBuscadorArticulos.Param1:=4;
        FormBuscadorArticulos.Param2:=5;
        FormBuscadorArticulos.Param3:=4;

      end;
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosCompraCtdo.CDSCompraDetCodigoArticuloSetText(DatosCompraCtdo.CDSCompraDetCodigoArticulo, FormBuscadorArticulos.Codigo);


end;

procedure TFormCompraCtdo_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 1;
  FormBuscaCpbte.TipoCpbte1 := 'FO';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormCompraCtdo_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosCompraCtdo.CDSBuscaComprob.Close;
  DatosCompraCtdo.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosCompraCtdo.CDSCompraCabSucursalCompra.Value;
  DatosCompraCtdo.CDSBuscaComprob.Open;
//  IF NOT (DatosCompraCtdo.CDSBuscaComprob.IsEmpty) THEN
//    BEGIN
//      comBuscadorComprobantes.Execute;
//      if comBuscadorComprobantes.rOk Then
//        DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.Id));
//    END
//  ELSE
//    ShowMessage('No hay comprobantes definidos para esta Operación...');
 if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes        := TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos := DatosCompraCtdo.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
  DatosCompraCtdo.CDSBuscaComprob.Close;
end;

procedure TFormCompraCtdo_2.DBGrillaDetalleColEnter(Sender: TObject);
var enter:Char;
begin
  inherited;
 IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 4;

  IF DBGrillaDetalle.SelectedIndex = 5 THEN
    DBGrillaDetalle.SelectedIndex := 6;

  IF DBGrillaDetalle.SelectedIndex = 7 THEN
    DBGrillaDetalle.SelectedIndex := 8;

 // IF DBGrillaDetalle.SelectedIndex = 9 THEN
 //   DBGrillaDetalle.SelectedIndex := 8;
 // columna del Importe Total*********************
  IF DBGrillaDetalle.SelectedIndex = 9 THEN
    if not(PermitirModifTotal.Checked) Then DBGrillaDetalle.SelectedIndex := 8
  else
    DBGrillaDetalle.Columns[9].ReadOnly:=False;
  //**********************************************

  IF (DBGrillaDetalle.SelectedIndex = 6) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      IF (DatosCompraCtdo.CDSCompraDet.State IN [dsEdit, dsInsert]) AND
        (DatosCompraCtdo.CDSCompraDetModo_Gravamen.Value[1] IN ['M', 'I', 'Y']) THEN
        BEGIN
          FormComposicionPrecio               := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado  := DatosCompraCtdo.CDSCompraDetUnitario_Gravado.AsFloat;
          FormComposicionPrecio.ValorExento   := DatosCompraCtdo.CDSCompraDetUnitario_Exento.AsFloat;
          FormComposicionPrecio.ValorImpuesto := DatosCompraCtdo.CDSCompraDetUNITARIO_IMP_INTERNO.AsFloat;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          DatosCompraCtdo.CDSCompraDetUNIDADES_EXENTO.AsFloat       := FormComposicionPrecio.ValorExento;
          DatosCompraCtdo.CDSCompraDetUNIDADES_GRAVADO.AsFloat      := FormComposicionPrecio.ValorGravado;
          DatosCompraCtdo.CDSCompraDetUNIDADES_IMP_INTERNOS.AsFloat := FormComposicionPrecio.ValorImpuesto;
          DatosCompraCtdo.CDSCompraDetUNIDADES_TOTALSetText(DatosCompraCtdo.CDSCompraDetUNIDADES_TOTAL, DatosCompraCtdo.CDSCompraDetUNIDADES_TOTAL.AsString);

          DBGrillaDetalle.SelectedIndex := 8;
          enter:=#13;
          DBGrillaDetalle.OnKeyPress(Sender,Enter);
        END;
    END;
end;

procedure TFormCompraCtdo_2.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormCompraCtdo_2.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 5) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 6) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;
end;

procedure TFormCompraCtdo_2.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 6) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      if Not(Assigned(FormBuscadorArticulos)) then
        begin
          IF DBGrillaDetalle.SelectedField = DatosCompraCtdo.CDSCompraDetCodigoArticulo THEN
            BuscarArticulo.Execute;
        end;
    END;
end;

procedure TFormCompraCtdo_2.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde   := 2;
  AutoSize := False;
  FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;
 // FrameMovValoresEgresos1.tsDebito.TabVisible:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcDetalleFactura.ActivePageIndex := 0;
  IF NOT (Assigned(DatosCompraCtdo)) THEN
    DatosCompraCtdo := TDatosCompraCtdo.Create(Self);
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);
  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosCompraCtdo.CDSCompraCab;
  WITH DatosCompraCtdo DO
    BEGIN
      AddClientDataSet(CDSCompraCab, DSPCompraCab);
      AddClientDataSet(CDSCompraDet, DSPCompraDet);
      AddClientDataSet(CDSImpuestos, DSPImpuestos);
      AddClientDataSet(CDSPercepcionIVA, DSPPercepcionIVA);
      AddClientDataSet(CDSPercepcionIB, DSPPercepcionIB);
      AddClientDataSet(CDSCompraSubDetalle,DSPComprSubDet);
      AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
      AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
      AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
      AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
      AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
      AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos, FrameMovValoresEgresos1.DSPDebitos);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCompra, FrameMovValoresEgresos1.DSPMovTCCompra);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCuota, FrameMovValoresEgresos1.DSPMovTCCuota);

      DatosCompraCtdo.CDSCompraCab.Params.ParamByName('TipoCpbte').Value := '';
      DatosCompraCtdo.CDSCompraCab.Params.ParamByName('id').Clear;

      DatosCompraCtdo.CDSCompraDet.Params.ParamByName('id').Clear;

      DatosCompraCtdo.CDSCompraSubDetalle.Params.ParamByName('id').Clear;

      DatosCompraCtdo.CDSImpuestos.Params.ParamByName('id').Clear;

      DatosCompraCtdo.CDSPercepcionIB.Params.ParamByName('id').Clear;

      DatosCompraCtdo.CDSPercepcionIVA.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
      FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := '';

      FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;

      FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;

      CDSCompraCab.Open;
      CDSCompraDet.Open;
      CDSImpuestos.Open;
      CDSPercepcionIB.Open;
      CDSPercepcionIVA.Open;
      CDSCompraSubDetalle.Open;

      CDSCompraCab.EmptyDataSet;
      CDSCompraDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      CDSPercepcionIB.EmptyDataSet;
      CDSPercepcionIVA.EmptyDataSet;

      FrameMovValoresEgresos1.CDSCajaMov.Open;
      FrameMovValoresEgresos1.CDSChe3.Open;
      FrameMovValoresEgresos1.CDSMovEfectivo.Open;
      FrameMovValoresEgresos1.CDSCheques.Open;
      FrameMovValoresEgresos1.CDSTransBco.Open;
      FrameMovValoresEgresos1.CDSDebitos.Open;
      FrameMovValoresEgresos1.CDSMovTCCompra.Open;
      FrameMovValoresEgresos1.CDSMovTCCuota.Open;


      FrameMovValoresEgresos1.QCajaCab.Open;
      FrameMovValoresEgresos1.InicicalizaMascarasNumericas;
      AplicarMascarasNumericas;
    END;
    Tabla:='FcCompCab';
    Campo:='Id_Fc';
    FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
   //*************************************************************
    ArchIni                       := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'FcCompraCtdo.ini');
    VerCodigoAlternativo1.Checked := ArchIni.ReadBool('codigo', 'codigo', False);
    VerUnidadesdeStock1.Checked   := ArchIni.ReadBool('VerUnidades', 'Unidades', False);
    PermitirModifTotal.Checked    := ArchIni.ReadBool('PrecioTotal', 'ModificaTotal', False);
    ArchIni.Free;
   //*************************************************************
    SearchAssignGrid(DBGrillaDetalle);

end;

procedure TFormCompraCtdo_2.pcDetalleFacturaChange(Sender: TObject);
begin
  inherited;
  WITH FrameMovValoresEgresos1 DO
    BEGIN
      if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
        begin
          QCajaCab.Close;
          QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
          QCajaCab.Open;
          IF NOT (QCajaCab.IsEmpty) THEN
            BEGIN
              ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
              edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
              Id_Caja            := QCajaCabID_CAJA.Value;
              id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
              FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
            end;
        end;
      TipoCpbte      := DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
      TipoOperacion  := 'E';
      ClaseCpbte     := DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
      NroCpbte       := DatosCompraCtdo.CDSCompraCabNROCPBTE.Value;
      FechaOperacion := DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime;
      IdCpbte        := DatosCompraCtdo.CDSCompraCabID_FC.Value;
      Origen         := DatosCompraCtdo.CDSCompraCabRAZONSOCIAL.Value;
    END;
 // pnCabecera.Enabled := pcDetalleFactura.ActivePageIndex = 0;
end;

procedure TFormCompraCtdo_2.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
  IF (RxDBECodigo.Text = '') OR (RxDBESucursal.Text = '') OR
    (RxDBEDeposito.Text = '') OR(dbeSuc.Text = '') OR  (dbeFechaFiscal.Text[1] = ' ') OR
    (dbeNumero.Text = '') OR (dbeFechaCompra.Text[1] = ' ') OR
    (DatosCompraCtdo.CDSCompraCabMUESTRACOMPROBANTE.Value='') THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxDBECodigo.SetFocus;
      END
    else
      begin
        if DSBase.State<>dsBrowse Then
          begin
            DatosCompraCtdo.CDSCompraCabNumeroFacSetText(DatosCompraCtdo.CDSCompraCabNumeroFac,dbeNumero.Text);
            DatosCompraCtdo.CDSCompraCabSucFacSetText(DatosCompraCtdo.CDSCompraCabSucFac,dbeSuc.Text);
          end;
        pnCabecera.Enabled:=False;
        pcDetalleFactura.Enabled:=True;
      end;
end;

procedure TFormCompraCtdo_2.PermitirModifTotalClick(Sender: TObject);
begin
  inherited;
  PermitirModifTotal.Checked:= not(PermitirModifTotal.Checked);

end;

procedure TFormCompraCtdo_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursalCompra  ='+DSBase.DataSet.FieldByName('SUCURSALCompra').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;
end;

procedure TFormCompraCtdo_2.ActualicarCotizacionDetalleExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
      FormCotizacion.Moneda := DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        begin
          if (DBGrillaDetalle.DataSource.DataSet.FieldByName('id_moneda').Value) = (DSBase.DataSet.FieldByName('moneda_cpbte').Value) then
            DatosCompraCtdo.CDSCompraCabMONEDA_CPBTE_COTIZACION.AsFloat:=FormCotizacion.Cotizacion
          else
            DatosCompraCtdo.RecotizarPrecios;
        end;
      FreeAndNil(FormCotizacion);
    end;

end;

procedure TFormCompraCtdo_2.ActualizarCotizacionExecute(Sender: TObject);
begin
  inherited;
 if DSBase.State<>dsBrowse then
    begin
      if not(Assigned(FormCotizacion)) then
        FormCotizacion :=TFormCotizacion.Create(self);
       FormCotizacion.Moneda := DSBase.DataSet.FieldByName('moneda_cpbte').Value;
      FormCotizacion.Comp_Vta:='C';
      FormCotizacion.ShowModal;
      if FormCotizacion.ModalResult=mrOk then
        DSBase.DataSet.FieldByName('moneda_cpbte_Cotizacion').value:=FormCotizacion.Cotizacion;
      FreeAndNil(FormCotizacion);
    end;
end;

procedure TFormCompraCtdo_2.AgregarExecute(Sender: TObject);
begin
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';
  dbgCtroCosto.Visible:=False;

  DBGrillaDetalle.ReadOnly  :=False;
  dbgIva.ReadOnly           :=False;
  dbgPrecepcionIVA.ReadOnly :=False;
  dbgPercepcionIB.ReadOnly  :=False;
  pnCabecera.Enabled:=True;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques

  DatosCompraCtdo.CDSCompraCab.close;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraCab.Open;

  DatosCompraCtdo.CDSCompraDet.Close;
  DatosCompraCtdo.CDSCompraDet.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraDet.Open;

  DatosCompraCtdo.CDSImpuestos.Close;
  DatosCompraCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSImpuestos.Open;

  DatosCompraCtdo.CDSPercepcionIB.Close;
  DatosCompraCtdo.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSPercepcionIB.Open;

  DatosCompraCtdo.CDSPercepcionIVA.Close;
  DatosCompraCtdo.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSPercepcionIVA.Open;

  DatosCompraCtdo.CDSProveedor.Close;
  DatosCompraCtdo.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosCompraCtdo.CDSProveedor.Open;

  DatosCompraCtdo.CDSCompraSubDetalle.Close;
  DatosCompraCtdo.CDSCompraSubDetalle.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraSubDetalle.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FrameMovValoresEgresos1.Id_Caja           :=0;

  inherited;
  pcDetalleFactura.ActivePageIndex := 0;
  dbeFechaCompra.SetFocus;
  dbeFechaCompra.SelectAll;
  FrameMovValoresEgresos1.SumaValores:=0;
end;

procedure TFormCompraCtdo_2.CambiarClaseCpbteExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
        Raise Exception.Create('Caja Cerrada no se puede hacer esta operacion.....');

      if not(Assigned(FormCambiarClaseCpbte)) then
        FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
      FormCambiarClaseCpbte.Tipo         :=DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
      FormCambiarClaseCpbte.Clase        :=DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
      FormCambiarClaseCpbte.Letra        :=DatosCompraCtdo.CDSCompraCabLETRAFAC.Value;
      FormCambiarClaseCpbte.Sucursal     :=DatosCompraCtdo.CDSCompraCabSUCURSALCOMPRA.Value;
      FormCambiarClaseCpbte.IdComprobante:=DatosCompraCtdo.CDSCompraCabID_FC.Value;
      FormCambiarClaseCpbte.ComproVenta  :='C';
      if FormCambiarClaseCpbte.ShowModal=mrOk Then
        begin
          DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
          TipoCpbte:=FormCambiarClaseCpbte.Tipo;
          Recuperar.Execute;
        end;
    end;
end;

procedure TFormCompraCtdo_2.CambiarCodigoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaProveedorFactura)) then
    FormCambiaProveedorFactura:=TFormCambiaProveedorFactura.Create(self);
  FormCambiaProveedorFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCambiaProveedorFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
  FormCambiaProveedorFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCambiaProveedorFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
  FormCambiaProveedorFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
  FormCambiaProveedorFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
  FormCambiaProveedorFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
  FormCambiaProveedorFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaProveedorFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaProveedorFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormCompraCtdo_2.CambiarFechaFiscalExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormFechaFiscal)) then
    FormFechaFiscal:=TFormFechaFiscal.Create(Self);
  FormFechaFiscal.Id   :=DatosCompraCtdo.CDSCompraCabID_FC.Value;
  FormFechaFiscal.Fecha:=DatosCompraCtdo.CDSCompraCabFECHAFISCAL.AsDateTime;
  FormFechaFiscal.Detalle := DatosCompraCtdo.CDSCompraCabTIPOCPBTE.AsString+'-'+
                             DatosCompraCtdo.CDSCompraCabCLASECPBTE.AsString+'-'+
                             DatosCompraCtdo.CDSCompraCabNROCPBTE.AsString+'('+
                             DatosCompraCtdo.CDSCompraCabID_FC.AsString+')';

  FormFechaFiscal.ShowModal;
  Recuperar.Execute;
end;

procedure TFormCompraCtdo_2.CambiarNumeroExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaNroCpbte)) then
    FormCambiaNroCpbte:=TFormCambiaNroCpbte.Create(FormCompraCtdo_2);
  FormCambiaNroCpbte.Id     :=DSBase.DataSet.FieldByName('id_fc').Value;
  FormCambiaNroCpbte.Num    :=DSBase.DataSet.FieldByName('NumeroFac').Value;
  FormCambiaNroCpbte.Suc    :=DSBase.DataSet.FieldByName('SucFac').Value;
  FormCambiaNroCpbte.Let    :=DSBase.DataSet.FieldByName('LetraFac').Value;
  FormCambiaNroCpbte.Tipo   :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaNroCpbte.Fecha  :=DSBase.DataSet.FieldByName('FechaCompra').Value;
  FormCambiaNroCpbte.Fecha2 :=DSBase.DataSet.FieldByName('FechaFiscal').Value;
  FormCambiaNroCpbte.Codigo :=DSBase.DataSet.FieldByName('codigo').Value;
  FormCambiaNroCpbte.CV   :='C';
  FormCambiaNroCpbte.Showmodal;
  Recuperar.Execute;

end;

procedure TFormCompraCtdo_2.CancelarExecute(Sender: TObject);
begin
 // DBGrillaDetalle.ReadOnly  :=False;
 // dbgIva.ReadOnly           :=False;
 // dbgPrecepcionIVA.ReadOnly :=False;
 // dbgPercepcionIB.ReadOnly  :=False;
//  pnCabecera.Enabled:=True;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques

  if DatosCompraCtdo.CDSCompraSubDetalle.State in [dsInsert,dsEdit] Then
    DatosCompraCtdo.CDSCompraSubDetalle.Cancel;
    
  DatosCompraCtdo.CDSCompraCab.close;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraCab.Open;

  DatosCompraCtdo.CDSCompraDet.Close;
  DatosCompraCtdo.CDSCompraDet.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraDet.Open;

  DatosCompraCtdo.CDSImpuestos.Close;
  DatosCompraCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSImpuestos.Open;

  DatosCompraCtdo.CDSPercepcionIB.Close;
  DatosCompraCtdo.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSPercepcionIB.Open;

  DatosCompraCtdo.CDSPercepcionIVA.Close;
  DatosCompraCtdo.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSPercepcionIVA.Open;

  DatosCompraCtdo.CDSProveedor.Close;
  DatosCompraCtdo.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosCompraCtdo.CDSProveedor.Open;

  DatosCompraCtdo.CDSCompraSubDetalle.Close;
  DatosCompraCtdo.CDSCompraSubDetalle.Params.ParamByName('id').Clear;
  DatosCompraCtdo.CDSCompraSubDetalle.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FrameMovValoresEgresos1.Id_Caja           :=0;

  inherited;
  if TForm(Self.Owner).Name='FormCajaResumen' then
    Salir.Execute;
  pnCabecera.Enabled:=True;
  pcDetalleFactura.ActivePageIndex := 0;
  if btNuevo.Enabled Then
    btNuevo.SetFocus;
end;

procedure TFormCompraCtdo_2.ConfirmaExecute(Sender: TObject);
VAR
y,m,d:Word;
BEGIN
  DatosCompraCtdo.Verifica_ImpuestosEnCero;

  if (DatosCompraCtdo.CDSCompraDetCodigoArticulo.AsString='') and
     (DatosCompraCtdo.CDSCompraDet.State in [dsInsert,dsEdit]) Then
        DatosCompraCtdo.CDSCompraDet.Cancel;

 // DatosCompraCtdo.SumarDetalle;
 // DatosCompraCtdo.CalcularTotales;
  if (DatosCompraCtdo.CDSCompraCabDSTO.AsString='') Then
    DatosCompraCtdo.CDSCompraCabDSTO.AsFloat:=0;
  if (DatosCompraCtdo.CDSCompraCabDSTOIMPORTE.AsString='') Then
    DatosCompraCtdo.CDSCompraCabDSTOIMPORTE.AsFloat:=0;

  //  Verificao si hay series y si puedo o no ingresar la factura sin las series;
  if (not DMMain_FD.SerieCompra) {Control_1='N'}  and (DMMain_FD.ControlaSerie) {Control_2='S'} and
     (Not(ControlSerie))                          and (DSBase.State=dsInsert)
  then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

  if (DatosCompraCtdo.CDSCompraCabSucFac.AsString='9999') and (DatosCompraCtdo.CDSCompraCabNumeroFac.AsString='00000000') Then
    RAISE Exception.Create('Debe especificar Nro. de Comprobante....');
  if FrameMovValoresEgresos1.SumaValores<=0 Then
    begin
      WITH FrameMovValoresEgresos1 DO
        begin
          pcDetalleFactura.ActivePageIndex:=2;
          IF (DSBase.State=dsInsert) Then
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) Then
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
            end;
          TipoCpbte      := DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := DatosCompraCtdo.CDSCompraCabCLASECPBTE.Value;
          NroCpbte       := DatosCompraCtdo.CDSCompraCabNROCPBTE.Value;
          FechaOperacion := DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime;
          IdCpbte        := DatosCompraCtdo.CDSCompraCabID_FC.Value;
          Origen         := DatosCompraCtdo.CDSCompraCabRAZONSOCIAL.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat            := DatosCompraCtdo.CDSCompraCabTOTAL.AsFloat;
          CDSCajaMovDEBE.AsFloat             := 0;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value           := 1;
          CDSCajaMovID_FPAGO.Value           := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat         := DatosCompraCtdo.CDSCompraCabTOTAL.Asfloat;
          CDSCajaMovCOTIZACION.Value         := CDSFormaPagoEfecCOTIZACION.Value;
          CDSCajaMovCLASE_COMPROB.Value      := ClaseCpbte;
          CDSCajaMovID_CUENTA_CAJA.Value     := id_cuenta_caja;
          CDSCajaMovMONEDA.Value             := CDSFormaPagoEfecMONEDA.Value;
          CDSFormaPagoEfec.Close;
          CDSMovEfectivo.Insert;
          CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
          CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
          CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
          CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
          CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
          CDSMovEfectivoUNIDADES.Value       := CDSCajaMovUNIDADES.Value;
          CDSMovEfectivoIMPORTE.AsFloat      := DatosCompraCtdo.CDSCompraCabTOTAL.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          pcDetalleFactura.ActivePageIndex   :=0;
        END;
    end;

  if DatosCompraCtdo.CDSCompraDet.State in [dsInsert,dsEdit] Then
    DatosCompraCtdo.CDSCompraDet.Post;
  IF DatosCompraCtdo.CDSCompraCabTOTAL.asfloat <= 0 THEN
    raise Exception.Create('El comprobante no puede tener valor 0(cero)....');

//  IF Moneda3D(' ',DatosCompraCtdo.MascaraCabecera,FrameMovValoresEgresos1.SumaValores) <> Moneda3D(' ',DatosCompraCtdo.MascaraCabecera,DatosCompraCtdo.CDSCompraCabTOTAL.Value) THEN

  IF FormatFloat(DatosCompraCtdo.MascaraCabecera,FrameMovValoresEgresos1.SumaValores) <> FormatFloat(DatosCompraCtdo.MascaraCabecera,DatosCompraCtdo.CDSCompraCabTOTAL.asfloat) THEN
    RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                           'Ingresos por:'+FloatToStr(Moneda3D(' ',DatosCompraCtdo.MascaraCabecera,FrameMovValoresEgresos1.SumaValores))+#13+
                           'Importe Cpbt:'+FloatToStr(Moneda3D(' ',DatosCompraCtdo.MascaraCabecera,DatosCompraCtdo.CDSCompraCabTOTAL.asfloat)));

  IF FormCompraCtdo_2.DSBase.DataSet.State<>dsBrowse Then
    FormCompraCtdo_2.DSBase.DataSet.Post;
  DatoNew   :=IntToStr(DatosCompraCtdo.CDSCompraCabID_FC.Value);
  TipoCpbte :=DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
  DatosCompraCtdo.InformarCambioPrecio;
  if DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value<>'NC' then
    DatosCompraCtdo.InformarCambioPrecioHistorial;

  // **** hago ingreso de numero operacion ******
  if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroOp) then
    begin
      if Not(Assigned(FormIngresaNroOP)) then
        FormIngresaNroOP:=TFormIngresaNroOP.Create(Self);
      DecodeDate(DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
      FormIngresaNroOP.Prefijo:= IntToStr(y);
      FormIngresaNroOP.ShowModal;
      if FormIngresaNroOP.ModalResult=mrOk then
        DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.Value:=FormIngresaNroOP.Prefijo+FormIngresaNroOP.Numero
      else
        DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.Value:='';
    end;
  // ********************************************


  inherited;
  Condicion:=' and tipocpbte='+''''+TipoCpbte+'''';
  Recuperar.Execute;
  if Not(DSBase.DataSet.IsEmpty) and (SeguimientoCtroCosto=True) then
     DetallesCostos.Execute;
  if (TForm(Self.Owner).Name<>'FormCajaResumen') then
    begin
      if FueModificado Then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            // **** Ingreso en el Log File  **************
            DMMain_FD.LogFileFD(0,2,'Modificación de Fac.Compra: '+
                                  DatosCompraCtdo.CDSCompraCabNROCPBTE.Value+
                                 'Proveedor: '+
                                  DatosCompraCtdo.CDSCompraCabRAZONSOCIAL.Value+
                                ' Importe Nuevo: '+
                                  FormatFloat('0.00',DatosCompraCtdo.CDSCompraCabTOTAL.asfloat)+
                                ' Importe Anterior: '+
                                  FormatFloat('0.00',ImporteOriginal) ,'FACCOMP');
            // ******************************************
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('NO se ingreso registro en el LogFile....!');
          end;
        end;
      pcDetalleFactura.ActivePageIndex := 0;
      IF btNuevo.Enabled = True THEN
        btNuevo.SetFocus;
    end
  else
    Salir.Execute;
end;

procedure TFormCompraCtdo_2.ModificarExecute(Sender: TObject);
begin
  if (DMMain_FD.UsuarioAdministrador=True) Then
    begin
      inherited;
      pnCabecera.Enabled:=False;
      FormCarteraCheques.CDSCarteraChe.Close;
      FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
      ImporteOriginal:=DatosCompraCtdo.CDSCompraCabTOTAL.asfloat;
    end
  else
    ShowMessage('No posee permisos para esta operación');
  // Showmessage('En Preparación');
end;

procedure TFormCompraCtdo_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr(DSBase.DataSet.FieldByName('TIPOCPBTE').AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DSBase.DataSet.FieldByName('CLASECPBTE').AsString,'''') +
             ' and sucursalCompra  ='+DSBase.DataSet.FieldByName('SUCURSALCompra').AsString +
             ' and letraFac = '+AnsiQuotedStr(DSBase.DataSet.FieldByName('LETRAFAC').AsString,'''');
  inherited;
end;

procedure TFormCompraCtdo_2.PasaDetallesAStockExecute(Sender: TObject);
begin
  inherited;
  With DatosCompraCtdo do
    begin
      CDSCompraDet.First;
      while not CDSCompraDet.Eof do
        begin
          try
            DMMain_FD.fdcGestion.StartTransaction;
            QActualizaDetalleStk.Close;
            QActualizaDetalleStk.ParamByName('codigo').Value  :=  CDSCompraDetCODIGOARTICULO.AsString;
            QActualizaDetalleStk.ParamByName('detalle').Value :=  CDSCompraDetDETALLE.AsString;
            QActualizaDetalleStk.ExecSQL;
            QActualizaDetalleStk.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
          end;
          CDSCompraDet.Next;
        end;
    end;
end;

procedure TFormCompraCtdo_2.BorrarExecute(Sender: TObject);
var Detalle:string;
begin
  if (DMMain_FD.BorrarFcCompra=True) Then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if Not(DatosCompraCtdo.CDSCompraCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              // **** Ingreso en el Log File  **************

              Detalle:= 'Borrado Fac.Compra: '+
                         DatosCompraCtdo.CDSCompraCabNROCPBTE.Value+
                         'Proveedor: '+
                         DatosCompraCtdo.CDSCompraCabRAZONSOCIAL.Value+
                         ' Importe: '+
                         FormatFloat('0.00',DatosCompraCtdo.CDSCompraCabTOTAL.asfloat);

              DMMain_FD.LogFileFD(0,4,Detalle,'FACCOMP');

             
              // ******************************************
              DatosCompraCtdo.CDSCompraCab.Delete;
              DatosCompraCtdo.CDSCompraCab.ApplyUpdates(0);

              DMMain_FD.fdcGestion.Commit;

              DBGrillaDetalle.ReadOnly  :=False;
              dbgIva.ReadOnly           :=False;
              dbgPrecepcionIVA.ReadOnly :=False;
              dbgPercepcionIB.ReadOnly  :=False;
              pnCabecera.Enabled:=True;
              FormCarteraCheques.CDSCarteraChe.Close;
              FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques

              DatosCompraCtdo.CDSCompraCab.close;
              DatosCompraCtdo.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
              DatosCompraCtdo.CDSCompraCab.Params.ParamByName('id').Clear;
              DatosCompraCtdo.CDSCompraCab.Open;

              DatosCompraCtdo.CDSCompraDet.Close;
              DatosCompraCtdo.CDSCompraDet.Params.ParamByName('id').Clear;
              DatosCompraCtdo.CDSCompraDet.Open;

              DatosCompraCtdo.CDSImpuestos.Close;
              DatosCompraCtdo.CDSImpuestos.Params.ParamByName('id').Clear;
              DatosCompraCtdo.CDSImpuestos.Open;

              DatosCompraCtdo.CDSPercepcionIB.Close;
              DatosCompraCtdo.CDSPercepcionIB.Params.ParamByName('id').Clear;
              DatosCompraCtdo.CDSPercepcionIB.Open;

              DatosCompraCtdo.CDSPercepcionIVA.Close;
              DatosCompraCtdo.CDSPercepcionIVA.Params.ParamByName('id').Clear;
              DatosCompraCtdo.CDSPercepcionIVA.Open;

              DatosCompraCtdo.CDSProveedor.Close;
              DatosCompraCtdo.CDSProveedor.Params.ParamByName('Codigo').Clear;
              DatosCompraCtdo.CDSProveedor.Open;

              FrameMovValoresEgresos1.CDSCajaMov.Close;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Open;


              FrameMovValoresEgresos1.CDSChe3.Close;
              FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSChe3.Open;

              FrameMovValoresEgresos1.CDSMovEfectivo.Close;
              FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovEfectivo.Open;

              FrameMovValoresEgresos1.CDSCheques.Close;
              FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCheques.Open;

              FrameMovValoresEgresos1.CDSTransBco.Close;
              FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSTransBco.Open;

              FrameMovValoresEgresos1.CDSDebitos.Close;
              FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSDebitos.Open;

              FrameMovValoresEgresos1.CDSMovTCCompra.Close;
              FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovTCCompra.Open;

              FrameMovValoresEgresos1.CDSMovTCCuota.Close;
              FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovTCCuota.Open;


              FrameMovValoresEgresos1.ceCaja.Text       :='';
              FrameMovValoresEgresos1.edMuestraCaja.Text:='';
              FrameMovValoresEgresos1.Id_Caja           :=0;

            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          end
        else
          ShowMessage('No hay registro Seleccionado');
    end
  else
    ShowMessage('No posee permisos para esta operación');

  //DatosCompraCtdo.CDSCondCompra.EmptyDataSet;
end;

procedure TFormCompraCtdo_2.FormActivate(Sender: TObject);
begin
  inherited;
  if DSBase.DataSet.State = dsBrowse then
    begin
      if (DSBase.DataSet.IsEmpty=False) and (FormCompraCtdo_2<>Nil) then
        Recuperar.Execute;
    end;

end;

procedure TFormCompraCtdo_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //*************************************************************
   ArchivoIni                   := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'FcCompraCtdo.ini');
   ArchivoIni.WriteBool('codigo', 'codigo', VerCodigoAlternativo1.Checked);
   ArchivoIni.WriteBool('VerUnidades', 'Unidades', VerUnidadesdeStock1.Checked);
   ArchivoIni.WriteBool('PrecioTotal', 'ModificaTotal', PermitirModifTotal.Checked);
   ArchivoIni.Free;
  //*************************************************************
  WITH DatosCompraCtdo DO
    BEGIN
      CDSCompraCab.Close;
      CDSCompraDet.Close;
      CDSStock.Close;
      CDSSucursal.Close;
      CDSDepositoStk.Close;
      CDSProveedor.Close;
      CDSIva.Close;
      CDSDeposito.Close;
      CDSImpuestos.Close;
      CDSPercepcionIB.Close;
      CDSPercepcionIVA.Close;
      CDSCompraSubDetalle.Close;

      FrameMovValoresEgresos1.CDSChe3.Close;
      FrameMovValoresEgresos1.CDSMovEfectivo.Close;
      FrameMovValoresEgresos1.CDSCajaMov.Close;
      FrameMovValoresEgresos1.CDSCheques.Close;
      FrameMovValoresEgresos1.CDSTransBco.Close;
      FrameMovValoresEgresos1.CDSDebitos.Close;
    end;
    Action:=caFree;
    inherited;
  //  FreeAndNil(FormCarteraCheques);
end;

procedure TFormCompraCtdo_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCompraCtdo_2:=nil;
end;

procedure TFormCompraCtdo_2.FormResize(Sender: TObject);
begin
  inherited;
  if FormCompraCtdo_2<>nil then
    if FormCompraCtdo_2.Width<>970 then
      FormCompraCtdo_2.Width:=970;
end;

procedure TFormCompraCtdo_2.DetallesCostosExecute(Sender: TObject);
var pos:Integer;
Valor,Importe,Dscto:Extended;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  :=DatosCompraCtdo.CDSCompraCabID_FC.Value;
      FormAsignacionCentroCosto.TipoCpbte:=DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
      FormAsignacionCentroCosto.Tipo     :='E';
      FormAsignacionCentroCosto.Total    :=RoundTo(DatosCompraCtdo.CDSCompraCabNETOGRAV2.AsFloat +
                                                   DatosCompraCtdo.CDSCompraCabNETOEXEN2.AsFloat +
                                                   DatosCompraCtdo.CDSCompraCabIMPORTEEXCLUIDO2.ASFloat +
                                                   DatosCompraCtdo.CDSCompraCabNETOMONOTRIBUTO2.AsFloat,-2);

      DBGrillaDetalle.DataSource.DataSet.First;
      while Not(DBGrillaDetalle.DataSource.DataSet.Eof) do
        begin
          pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(DBGrillaDetalle.Columns[0].Field.Text);
          if Pos<0 Then
            begin
              FormAsignacionCentroCosto.LstConcepto.Append(DBGrillaDetalle.Columns[0].Field.Text );
              FormAsignacionCentroCosto.LstDetalles.Append(DBGrillaDetalle.Columns[1].Field.Text );
              Importe:= StrToFloat(AnsiReplaceText(DBGrillaDetalle.Columns[9].Field.Text,',',''));
              Dscto  := 1-(DatosCompraCtdo.CDSCompraCabDSTO.AsFloat * 0.01);
              Importe:= Importe * Dscto;
              FormAsignacionCentroCosto.LstImportes.Append(FloatToStr(Importe));
             end
           else
             begin
               Importe:= StrToFloat(AnsiReplaceText(DBGrillaDetalle.Columns[9].Field.Text,',',''));
               Dscto  := 1-(DatosCompraCtdo.CDSCompraCabDSTO.AsFloat * 0.01);
               Importe:= Importe * Dscto;
               Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',',''))+ Importe;
               FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
             end;
          DBGrillaDetalle.DataSource.DataSet.Next;
        end;

      FormAsignacionCentroCosto.ShowModal;

      dbgCtroCosto.Visible:=False;
      DetallesCostos.ImageIndex:=12;
      if DMMain_FD.AplicPorCtroCosto(DatosCompraCtdo.CDSCompraCabID_FC.AsInteger,
                                     DatosCompraCtdo.CDSCompraCabTIPOCPBTE.AsString,
                                     'E') then

        begin
          DetallesCostos.ImageIndex:=11;
          dbgCtroCosto.Visible:=True;
        end;
    end;
end;

procedure TFormCompraCtdo_2.DSBaseStateChange(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
//  pnPrincipal.Enabled       := True;
  pcDetalleFactura.Enabled  := True;//DSBase.DataSet.State IN [dsInsert, dsEdit];
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  If DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled        := DSBase.State IN [dsInsert];

  DBGrillaDetalle.ReadOnly                        := DSBase.State IN [dsBrowse];
  dbgIva.ReadOnly                                 := DSBase.State IN [dsBrowse];
  dbgPrecepcionIVA.ReadOnly                       := DSBase.State IN [dsBrowse];
  dbgPercepcionIB.ReadOnly                        := DSBase.State IN [dsBrowse];
  dbgSeries.ReadOnly                              :=DSBase.DataSet.State IN [dsBrowse];
  PasaDetallesAStock.Enabled                      := DSBase.DataSet.State IN [dsBrowse];

  dbgIva.Enabled                                  := Not(DSBase.DataSet.IsEmpty);
  dbgPrecepcionIVA.Enabled                        := Not(DSBase.DataSet.IsEmpty);
  dbgPercepcionIB.Enabled                         := Not(DSBase.DataSet.IsEmpty);
  DBGrillaDetalle.Enabled                         := Not(DSBase.DataSet.IsEmpty);
  dbgDetalleCompra.Enabled                        := Not(DSBase.DataSet.IsEmpty);
  dbgSeries.Enabled                               := Not(DSBase.DataSet.IsEmpty);

  FrameMovValoresEgresos1.dbgMovimientos.Enabled  := Not(DSBase.DataSet.IsEmpty);

  dbeObs1.Enabled                                 :=DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObs2.Enabled                                 :=DSBase.DataSet.State IN [dsInsert, dsEdit];

  if (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) Then
    begin
      DecodeDate(DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
      DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime;
      DMStoreProcedure.QVerificaPeriodoFiscal.Open;
      Borrar.Enabled    :=Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' );
      Modificar.Enabled :=Not(DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' );
      DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    end;
   Imprimir.Enabled     := (DSBase.DataSet.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
   pnCabecera.Enabled   := DSBase.DataSet.State IN [dsInsert, dsEdit];
end;

procedure TFormCompraCtdo_2.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCompraCtdo_2.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var Aux:Real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  aux:= DatosCompraCtdo.CDSCompraCabTOTAL.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(DatosCompraCtdo.MascaraCabecera,aux);
end;

procedure TFormCompraCtdo_2.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=DatosCompraCtdo.CDSCompraCabID_FC.Value;
      FormNumeroOperacion.Tipo :=DatosCompraCtdo.CDSCompraCabTIPOCPBTE.Value;
      if (DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.AsString='') or (length(DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(DatosCompraCtdo.CDSCompraCabNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormCompraCtdo_2.ImprimirExecute(Sender: TObject);
begin
  inherited;

  IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
      frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\FcCompraCtaCte.fr3');
      frReporte.PrintOptions.Copies :=1;
      frReporte.PrepareReport;
      frReporte.ShowReport
    end;
end;

procedure TFormCompraCtdo_2.LibroIvaExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DMMain_FD.SPAplicarLibroIva.Close;
    DMMain_FD.SPAplicarLibroIva.ParamByName('id').Value  := DatosCompraCtdo.CDSCompraCabID_FC.Value;
    DMMain_FD.SPAplicarLibroIva.ParamByName('Tipo').Value:= 'C';
    DMMain_FD.SPAplicarLibroIva.ExecProc;
    DMMain_FD.fdcGestion.Commit;
    DMMain_FD.SPAplicarLibroIva.Close;
  except
    DMMain_FD.SPAplicarLibroIva.Close;
    DMMain_FD.fdcGestion.Rollback;
  end;
end;

procedure TFormCompraCtdo_2.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormCompraCtdo_2.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraCtdo.CDSCompraCabSucursalCompra.Clear;
      DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompraCtdo.CDSCompraCabMUESTRASUCURSAL.Clear;
      DatosCompraCtdo.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompraCtdo.CDSCompraCabLetraFac.Clear;
      DatosCompraCtdo.CDSCompraCabSucFac.Clear;
      DatosCompraCtdo.CDSCompraCabNumeroFac.Clear;
    end;
end;    

procedure TFormCompraCtdo_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frReporte.DesignReport;
end;

procedure TFormCompraCtdo_2.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

procedure TFormCompraCtdo_2.VerInventariarClick(Sender: TObject);
begin
  inherited;
  VerInventariar.Checked:=Not(VerInventariar.Checked);
  DBGrillaDetalle.Columns.Items[11].Visible := VerInventariar.Checked;
  DBGrillaDetalle.Refresh;
end;

procedure TFormCompraCtdo_2.VerUnidadesdeStock1Click(Sender: TObject);
begin
  inherited;
  VerUnidadesdeStock1.Checked:=Not(VerUnidadesdeStock1.Checked);

  DBGrillaDetalle.Columns.Items[10].Visible := VerUnidadesdeStock1.Checked;
    if VerUnidadesdeStock1.Checked=False then
     DBGrillaDetalle.Width:=787
   else
     DBGrillaDetalle.Width:=848;

  DBGrillaDetalle.Refresh;
end;

procedure TFormCompraCtdo_2.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
  if dbgIva.SelectedIndex=0 Then dbgIva.SelectedIndex:=2;
  if dbgIva.SelectedIndex<2 Then dbgIva.SelectedIndex:=2;
end;

procedure TFormCompraCtdo_2.dbgIvaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (Key=VK_DOWN) or (Key=VK_UP) then key:=0;
end;

procedure TFormCompraCtdo_2.dbgPrecepcionIVAColEnter(Sender: TObject);
begin
  inherited;
  if dbgPrecepcionIVA.SelectedIndex<2 Then dbgPrecepcionIVA.SelectedIndex:=2;
end;

procedure TFormCompraCtdo_2.dbgPrecepcionIVAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DOWN) or (Key=VK_UP) then key:=0;
end;

procedure TFormCompraCtdo_2.dbgPercepcionIBColEnter(Sender: TObject);
begin
  inherited;
  if dbgPercepcionIB.SelectedIndex<2 Then dbgPercepcionIB.SelectedIndex:=2;
end;

procedure TFormCompraCtdo_2.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraCtdo.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompraCtdo.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompraCtdo.CDSCompraCabLetraFac.Clear;
      DatosCompraCtdo.CDSCompraCabSucFac.Clear;
      DatosCompraCtdo.CDSCompraCabNumeroFac.Clear;
    end;
end;

procedure TFormCompraCtdo_2.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraCtdo.CDSCompraCabCodigo.Clear;
      DatosCompraCtdo.CDSCompraCabRAZONSOCIAL.Clear;
    end;
end;

procedure TFormCompraCtdo_2.RxDBEDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraCtdo.CDSCompraCabDeposito.Clear;
      DatosCompraCtdo.CDSCompraCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormCompraCtdo_2.RecuperarExecute(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';

  DatosCompraCtdo.CDSCompraCab.close;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosCompraCtdo.CDSCompraCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosCompraCtdo.CDSCompraCab.Open;

 if Not( DatosCompraCtdo.CDSCompraCab.IsEmpty) then
    condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosCompraCtdo.CDSCompraCabTIPOCPBTE.AsString,'''') +
               ' and clasecpbte='+AnsiQuotedStr( DatosCompraCtdo.CDSCompraCabCLASECPBTE.AsString,'''');



  DatosCompraCtdo.CDSCompraDet.Close;
  DatosCompraCtdo.CDSCompraDet.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraCtdo.CDSCompraDet.Open;

  DatosCompraCtdo.CDSImpuestos.Close;
  DatosCompraCtdo.CDSImpuestos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraCtdo.CDSImpuestos.Open;

  DatosCompraCtdo.CDSPercepcionIB.Close;
  DatosCompraCtdo.CDSPercepcionIB.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraCtdo.CDSPercepcionIB.Open;

  DatosCompraCtdo.CDSPercepcionIVA.Close;
  DatosCompraCtdo.CDSPercepcionIVA.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraCtdo.CDSPercepcionIVA.Open;

  DatosCompraCtdo.CDSCompraSubDetalle.Close;
  DatosCompraCtdo.CDSCompraSubDetalle.Params.ParamByName('id').Value:= DatosCompraCtdo.CDSCompraDetID.AsInteger; //StrToInt(DatoNew);
  DatosCompraCtdo.CDSCompraSubDetalle.Open;

  FrameMovValoresEgresos1.TipoOperacion:='E';

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresEgresos1.id_Cuenta_caja    :=FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresEgresos1.FechaCaja         :=FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value      := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value  := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Value   := FrameMovValoresEgresos1.CDSMovTCCompraID_CUPON.Value;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.CalcularValores;

  DatosCompraCtdo.CDSProveedor.Close;
  DatosCompraCtdo.CDSProveedor.Params.ParamByName('Codigo').Value := DatosCompraCtdo.CDSCompraCabCodigo.Value;
  DatosCompraCtdo.CDSProveedor.Open;

  DatosCompraCtdo.PerciveIva                          := DatosCompraCtdo.CDSProveedorRetiene_IVA.Value;
  DatosCompraCtdo.PerciveIB                           := DatosCompraCtdo.CDSProveedorRetiene_IB.Value;
  with DatosCompraCtdo DO
    begin
        IF PerciveIva = 'S' THEN
        BEGIN
          Codigo_PercepcionIva := CDSProveedorId_Perc_Iva.Value;
          CDSTasaPercepIVA.Close;
          CDSTasaPercepIVA.Params.ParamByName('id').value := Codigo_PercepcionIva;
          CDSTasaPercepIVA.Open;
          if not (CDSTasaPercepIVA.IsEmpty) then
            begin
              Tasa_PercepcionIva    := CDSTasaPercepIVATASA.AsFloat;
              Minimo_PercepcionIva  := CDSTasaPercepIVAMINIMOAPLICABLE.AsFloat;
              Detalle_PercepcionIVA := CDSTasaPercepIVADESCRIPCION.Value;
            end;
          CDSTasaPercepIVA.Close;
        END;
      IF PerciveIB = 'S' THEN
        BEGIN
          Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
          CDSTasaPercepIIBB.Close;
          CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
          CDSTasaPercepIIBB.Open;
          if not(CDSTasaPercepIIBB.IsEmpty) then
            begin
              Tasa_PercepcionIB    := CDSTasaPercepIIBBTASA.AsFloat;
              Minimo_PercepcionIB  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
              Detalle_PercepcionIB := CDSTasaPercepIIBBDESCRIPCION.Value;
            end;
          CDSTasaPercepIIBB.Close;
        END;
    end;
  DatosCompraCtdo.CDSProveedor.Close;

  pnPrincipal.Enabled     :=True;
  pcDetalleFactura.Enabled:=True;

  FrameMovValoresEgresos1.CalcularValores;

// segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DecodeDate(DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := DatosCompraCtdo.CDSCompraCabFECHAFISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.Panels[0].Text   :='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        DBGrillaDetalle.ReadOnly  :=True;
        dbgIva.ReadOnly           :=True;
        dbgPrecepcionIVA.ReadOnly :=True;
        dbgPercepcionIB.ReadOnly  :=True;
        Borrar.Enabled    :=False;
        Modificar.Enabled :=False;
      end
    else
      begin
//      VERIFICO SI LA CAJA ESTA CERRADA
//      QCaja.Close;
//      QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
//      QCaja.Open;
//      se paso a una funcion en el DMMain_FD
        if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
          begin
            sbEstado.Panels[0].Text   := 'La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
            DBGrillaDetalle.ReadOnly  := True;
            dbgIva.ReadOnly           := True;
            dbgPrecepcionIVA.ReadOnly := True;
            dbgPercepcionIB.ReadOnly  := True;
            RevisionValoresEgresados.Enabled := False;
            Borrar.Enabled                   := False;
            Modificar.Enabled                := False;
          end
        else
          begin
            Borrar.Enabled          := True;
            Modificar.Enabled       := True;
            RevisionValoresEgresados.Enabled := True;
          end;
      end;


    dbgCtroCosto.Visible:=False;
    DetallesCostos.ImageIndex:=10;
    if DMMain_FD.AplicPorCtroCosto(DatosCompraCtdo.CDSCompraCabID_FC.AsInteger,
                                   DatosCompraCtdo.CDSCompraCabTIPOCPBTE.AsString,
                                   'E') then
      begin
        DetallesCostos.ImageIndex:=11;
        dbgCtroCosto.Visible:=True;
      end;

    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    FormCompraCtdo_2.Caption:='Factura de Compra en Ctdo. -- '+DatosCompraCtdo.CDSCompraCabFECHA_HORA.AsString+'//'+Copy(DatosCompraCtdo.CDSCompraCabUSUARIO.Value,1,15);

    DatoNew:=''+DatoNew+'';
  end;
  if DatosCompraCtdo.CDSCompraCabINGRESA_LIBRO_IVA.Value='S' then
    sbEstado.Panels[1].Text:='Iva';
  pnCabecera.Enabled   := DSBase.DataSet.State IN [dsInsert, dsEdit];
  if FormCompraCtdo_2.Visible and btNuevo.Visible and btNuevo.Enabled then
    btNuevo.SetFocus;
 if RevisionValoresEgresados.Enabled then
    RevisionValoresEgresados.Enabled := (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');

end;

procedure TFormCompraCtdo_2.RevisionValoresEgresadosClick(Sender: TObject);
var Aux:String;
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        Aux:= FrameMovValoresEgresos1.lbTotalValores.Caption;
        Aux:= AnsiReplaceText(Aux,',','');
        if Not(Assigned(FormRevisionValoresEgresados)) then
          FormRevisionValoresEgresados:=TFormRevisionValoresEgresados.Create(self);
        FormRevisionValoresEgresados.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_Fc').Value;
        FormRevisionValoresEgresados.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresEgresados.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresEgresados.ImporteOriginal := StrToFloat(Aux);
        FormRevisionValoresEgresados.Id_Caja         := FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresEgresados.Id_Cta_Caja     := FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresEgresados.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresEgresados.FechaOperacion  := DSBase.DataSet.FieldByName('FechaCompra').Value;
        FormRevisionValoresEgresados.Show;
      end;
end;

procedure TFormCompraCtdo_2.AgregarProveedorExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormProveedor_2)) Then
    FormProveedor_2:=TFormProveedor_2.Create(Application);
  FormProveedor_2.Agregar.Execute;
end;

procedure TFormCompraCtdo_2.dbgDetalleCompraDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgDetalleCompra.DataSource.DataSet.FieldByName('COn_Nro_Serie').Value='S' Then
    dbgDetalleCompra.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleCompra.Canvas.Font.Style:=[];
  dbgDetalleCompra.DefaultDrawColumnCell(Rect,DataCol,Column,State);  

end;

procedure TFormCompraCtdo_2.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;

end;

procedure TFormCompraCtdo_2.dbeFechaCompraExit(Sender: TObject);
begin
  inherited;
  if (dbeFechaCompra.Date>Date) or ( YearOf(dbeFechaCompra.Date)<1900) Then
    begin
      if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
        begin
          FormCompra_2.dbeFechaCompra.Clear;
          FormCompra_2.dbeFechaCompra.SetFocus;
        end;
    end;
  if (DatosCompraCtdo.CDSCompraCabFECHAFISCAL.AsString='') Then
    begin
      if (FormCompraCtdo_2.dbeFechaCompra.Date>0) then
        DatosCompraCtdo.CDSCompraCabFECHAFISCALSetText(DatosCompraCtdo.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));
    end
  else
    if (CompareDate(DatosCompraCtdo.CDSCompraCabFECHAFISCAL.AsDateTime,DatosCompraCtdo.CDSCompraCabFECHACOMPRA.AsDateTime)<>0) Then
      if MessageDlg('Actualiza Fecha Fisca...??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        DatosCompraCtdo.CDSCompraCabFECHAFISCALSetText(DatosCompraCtdo.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));
end;

procedure TFormCompraCtdo_2.dbeFechaFiscalEnter(Sender: TObject);
begin
  inherited;
  dbeFechaFiscal.Color:=clMoneyGreen;
end;

procedure TFormCompraCtdo_2.dbeFechaFiscalExit(Sender: TObject);
begin
  inherited;
  dbeFechaFiscal.Color:=clWhite;
  if DatosCompraCtdo.CDSCompraCab.State in [dsInsert,DsEdit] then
    DatosCompraCtdo.CDSCompraCabFECHAFISCALSetText(DatosCompraCtdo.CDSCompraCabFECHAFISCAL,DateToStr( dbeFechaFiscal.Date));

end;

procedure TFormCompraCtdo_2.dbeNumeroExit(Sender: TObject);
begin
  inherited;
  if Length(dbeNumero.Text)>=8 then
    DatosCompraCtdo.CDSCompraCabNumeroFacSetText(DatosCompraCtdo.CDSCompraCabNUMEROFAC,dbeNumero.Text);
end;

procedure TFormCompraCtdo_2.dbeSucExit(Sender: TObject);
begin
  inherited;
  if Length(dbeSuc.Text)>=4 then
    DatosCompraCtdo.CDSCompraCabSucFacSetText(DatosCompraCtdo.CDSCompraCabSucFac,dbeSuc.Text);
end;

end.
