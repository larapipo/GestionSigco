unit UOPago_2;

interface

{VAR
puntero:TBookmark;
aux:real;
begin
  inherited;
  DatosOPago.wwCDSMovCCCompra.DisableControls;
  puntero:=DatosOPago.wwCDSMovCCCompra.GetBookmark;
  dbgMovCC.DataSource.DataSet.First;
  Aux:=0;
  while not(dbgMovCC.DataSource.DataSet.Eof) Do
    begin
      if dbgMovCC.SelectedRows.CurrentRowSelected Then
        Aux:=Aux+dbgMovCC.DataSource.DataSet.fieldByName('Saldo').Value;
      dbgMovCC.DataSource.DataSet.Next;
    end;
  DatosOPago.wwCDSMovCCCompra.GotoBookmark(puntero);
  DatosOPago.wwCDSMovCCCompra.FreeBookmark(Puntero);
  DatosOPago.wwCDSMovCCCompra.EnableControls;
  DatosOPago.wwCDSOPagoTOTALSetText(DatosOPago.wwCDSOPagoTOTAL,FloatToStr(Aux));
}


uses
  Windows, Messages, SysUtils, Classes, Controls,Graphics, Forms, Dialogs,
  UABMBase, Grids, DBGrids, StdCtrls, ComCtrls,
  Mask, DBCtrls, IniFiles,UMovValoresEgresos,Variants,
  Db, ActnList, ImgList,DBClient,
  Buttons, ToolWin, ExtCtrls,  frxDBSet, frxClass,
  Milib, JvExControls, JvGradient,Math,
  JvComponentBase,
  frxExportPDF, JvExExtCtrls, JvExtComponent, JvPanel,
  JvExDBGrids, JvDBGrid, JvFormPlacement, JvLabel, JvDBControls, JvExMask,
  JvToolEdit, FMTBcd, JvBaseEdits, JvComCtrls, JvExComCtrls, Menus, SqlExpr,DBXCommon,
  System.Actions, JvAppStorage, JvAppIniStorage,System.Types, CompBuscador,System.StrUtils,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxExportBaseDialog,
  System.ImageList, frCoreClasses, FireDAC.Phys.Intf, FireDAC.DApt.Intf;

type
  TFormOPago_2 = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    GroupBox1: TGroupBox;
    dbeNombre: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    pcDetalle: TPageControl;
    Pag1: TTabSheet;
    Label17: TLabel;
    Label2: TLabel;
    dbgAplicaciones: TDBGrid;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    Pag2: TTabSheet;
    frDBEfectivo: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBCheques: TfrxDBDataset;
    frDBMovCaja: TfrxDBDataset;
    frDBAplicaciones: TfrxDBDataset;
    frDBOPago: TfrxDBDataset;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarPendientes: TAction;
    BuscarDescuento: TAction;
    BuscarTipoCpbte: TAction;
    Imprimir: TAction;
    ToolButton1: TToolButton;
    btPendientes: TBitBtn;
    ToolButton2: TToolButton;
    btImprimir: TBitBtn;
    frOPago: TfrxReport;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    spRecalcular: TSpeedButton;
    ToolButton3: TToolButton;
    Recalcular: TAction;
    Pag4: TTabSheet;
    dbgRetIngBr: TDBGrid;
    dbeSucRetIB: TDBEdit;
    dbeNumRetIB: TDBEdit;
    dbeLetRetIB: TDBEdit;
    BtNuevo_IngBru: TBitBtn;
    btConfrima_IngBr: TBitBtn;
    Agregar_Ret_IngBr: TAction;
    Label1: TLabel;
    Confirma_Ret_IngBr: TAction;
    BitBtn2: TBitBtn;
    Cancelar_Ret_IngBr: TAction;
    Panel2: TPanel;
    dbeTotalRetIB: TDBEdit;
    BitBtn3: TBitBtn;
    Imprimir_Ret_IngBr: TAction;
    frRentIngBr: TfrxReport;
    frDBRetIngBrCab: TfrxDBDataset;
    frDBRetIngBrDet: TfrxDBDataset;
    pnConfigReporte: TPanel;
    BorrarAplicacion: TAction;
    Pag5: TTabSheet;
    Label11: TLabel;
    pnAcumulados: TPanel;
    Label10: TLabel;
    dbeNetoAplicaciones: TDBEdit;
    dbePagosAcumulados: TDBEdit;
    pnAvisoRetencion: TPanel;
    dbchRetieneGanacias: TDBCheckBox;
    dbchRetGenerada: TDBCheckBox;
    pnBorrador: TPanel;
    Label13: TLabel;
    dbeTotalNeto: TDBEdit;
    dbeNetosAcumulados: TDBEdit;
    dbeMinNoImponible: TDBEdit;
    Label15: TLabel;
    dbeRetDelMes: TDBEdit;
    Label16: TLabel;
    Label14: TLabel;
    Label18: TLabel;
    dbeTasaret: TDBEdit;
    Label19: TLabel;
    Label20: TLabel;
    pnRetencion: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    dbeConcepto: TDBEdit;
    dbeTasa: TDBEdit;
    dbeMin_No_Imponible: TDBEdit;
    dbeAcumulados: TDBEdit;
    dbeImpuestoCalculado: TDBEdit;
    dbeCodigoRetencion: TDBEdit;
    frDBRetencionesGanancia: TfrxDBDataset;
    btImprimirRetencion: TBitBtn;
    ImprimirRetencionRanancia: TAction;
    frRetGanancia: TfrxReport;
    Label12: TLabel;
    Label3: TLabel;
    dbeNumeroRetencion: TDBEdit;
    Label21: TLabel;
    dbeMinImpuesto: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    AplicaAuto: TAction;
    BitBtn1: TBitBtn;
    Label22: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    pnAvisoPadron: TPanel;
    dbtMinimoImponible: TDBText;
    Label23: TLabel;
    Label24: TLabel;
    dbtTasa: TDBText;
    Label25: TLabel;
    dbtNeto: TDBText;
    frDBDebitos: TfrxDBDataset;
    frDBTransferencias: TfrxDBDataset;
    frDBEmpresa: TfrxDBDataset;
    JvGradient4: TJvGradient;
    frxPDFExport1: TfrxPDFExport;
    frxDBAplicado: TfrxDBDataset;
    Sumar: TAction;
    btnSuma: TSpeedButton;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel7: TJvLabel;
    ConfiguraOpago: TAction;
    lbGrupo: TLabel;
    JvLabel1: TJvLabel;
    dbtTotalNeto: TDBEdit;
    JvLabel2: TJvLabel;
    dbePorcentaje_DSCTO: TDBEdit;
    JvLabel3: TJvLabel;
    dbeDscto: TDBEdit;
    pnTotal: TPanel;
    JvLabel4: TJvLabel;
    dbeTotal: TDBEdit;
    pnSaldo: TPanel;
    RxLabel1: TJvLabel;
    dbeSaldo: TDBEdit;
    spBorrarAplicaciones: TSpeedButton;
    BorrarTodasAplicaciones: TAction;
    pnl1: TPanel;
    dbtNC_NROCOMPROB: TDBText;
    dbtNc: TDBText;
    dbtSuc: TDBText;
    VerImputaciones: TAction;
    btImputaciones: TBitBtn;
    ceImpuestoCalculado: TJvCalcEdit;
    ceImpuestoAPagar: TJvCalcEdit;
    pcMovimientosCC: TJvPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbgMovCC: TJvDBGrid;
    JvDBGrid1: TJvDBGrid;
    desde: TJvDateEdit;
    hasta: TJvDateEdit;
    UpDown1: TUpDown;
    TraerCtaCte: TAction;
    GravarNumeroOperacion: TAction;
    edNumeroOP: TDBText;
    Label26: TLabel;
    CambiarCodigo: TAction;
    ceTotalAplicaciones: TJvCalcEdit;
    dbeFecha: TJvDBDateEdit;
    chbModo: TCheckBox;
    CambiarClaseCpbte: TAction;
    PopupMenu1: TPopupMenu;
    BorrarAplicacion1: TMenuItem;
    CambiarClaseCpbte1: TMenuItem;
    CambiarCodigo1: TMenuItem;
    N1: TMenuItem;
    Nro_OP: TDBText;
    BusquedaPorReferencia: TAction;
    DBText1: TDBText;
    frDBTC: TfrxDBDataset;
    BorrarRetIIBB: TAction;
    N2: TMenuItem;
    BorrarRetIIBB1: TMenuItem;
    EnviarCorreo: TAction;
    spMail: TSpeedButton;
    GenerarRetIIBB: TAction;
    N3: TMenuItem;
    GenerarRetIIBB1: TMenuItem;
    ActualizarTasaIIBB: TAction;
    ReasignarCuit: TAction;
    ReasignardesdelaFichadelClienteCuit1: TMenuItem;
    dbtCuit: TDBText;
    pnEscala: TPanel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    CambiarNroRetIIBB: TAction;
    CambiarNroRetIIBB1: TMenuItem;
    BitBtn4: TBitBtn;
    Borrar_Ret_IngBr: TAction;
    Pag6: TTabSheet;
    Label33: TLabel;
    DBEdit1: TDBEdit;
    DBText8: TDBText;
    Panel3: TPanel;
    Label38: TLabel;
    Label40: TLabel;
    Bevel3: TBevel;
    DBEdit6: TDBEdit;
    BitBtn5: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    Label43: TLabel;
    edIvaAcumulado: TDBEdit;
    DBEdit2: TDBEdit;
    frDBRetIva: TfrxDBDataset;
    ImprimeRetIva: TAction;
    frRetencionIVA: TfrxReport;
    dbgMovACta: TJvDBGrid;
    SpeedButton1: TSpeedButton;
    SumarNetosAplicados: TAction;
    N4: TMenuItem;
    SumarNetosAplicados1: TMenuItem;
    pag7: TTabSheet;
    dbgMov: TDBGrid;
    edTotalAux: TJvCalcEdit;
    BitBtn6: TBitBtn;
    ImpresionCheques: TAction;
    RevisionValoresEgresados: TAction;
    N5: TMenuItem;
    RevisionValoresEgresados1: TMenuItem;
    ToolBar2: TToolBar;
    CambiaNroOp: TAction;
    CambiaNroOrdenPago2: TMenuItem;
    ToolButton4: TToolButton;
    N6: TMenuItem;
    DBEdit3: TDBEdit;
    Label34: TLabel;
    N7: TMenuItem;
    ConsultarReproweb: TAction;
    pnRetIVA: TPanel;
    ComBuscadorSucursal: TComBuscador;
    DBText2: TDBText;
    RevisiondeNetosMes: TAction;
    RevisiondeNetosdelMes1: TMenuItem;
    N8: TMenuItem;
    SumarNetosAcumulados1: TMenuItem;
    AsignarObra: TAction;
    Label54: TLabel;
    DBText42: TDBText;
    QuitarMarcaGanancia: TAction;
    N9: TMenuItem;
    Agregar1: TMenuItem;
    frxDBSucursal: TfrxDBDataset;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BuscarPendientesExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure dbgAplicacionesColEnter(Sender: TObject);
    procedure dbgAplicacionesDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure dbgAplicacionesDragOver(Sender, Source: TObject; X,
      Y: Integer; State: TDragState; var Accept: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcDetalleChange(Sender: TObject);
    procedure pcDetalleEnter(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Panel1Click(Sender: TObject);
    procedure Agregar_Ret_IngBrExecute(Sender: TObject);
    procedure Confirma_Ret_IngBrExecute(Sender: TObject);
    procedure Cancelar_Ret_IngBrExecute(Sender: TObject);
    procedure Imprimir_Ret_IngBrExecute(Sender: TObject);
    procedure pnConfigReporteDblClick(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgMovCCTitleClick(Column: TColumn);
    procedure dbgMovCCMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure dbgAplicacionesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BorrarAplicacionExecute(Sender: TObject);
    procedure dbeFechaExit(Sender: TObject);
    procedure ImprimirRetencionRananciaExecute(Sender: TObject);
    procedure Panel2DblClick(Sender: TObject);
    procedure AplicaAutoExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure btnSumaClick(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure ConfiguraOpagoExecute(Sender: TObject);
    procedure BorrarTodasAplicacionesExecute(Sender: TObject);
    procedure dbtNC_NROCOMPROBClick(Sender: TObject);
    procedure VerImputacionesExecute(Sender: TObject);
    procedure dbgMovCCTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure TraerCtaCteExecute(Sender: TObject);
    procedure GravarNumeroOperacionExecute(Sender: TObject);
    procedure CambiarCodigoExecute(Sender: TObject);
    procedure chbModoClick(Sender: TObject);
    procedure CambiarClaseCpbteExecute(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure BorrarRetIIBBExecute(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure GenerarRetIIBBExecute(Sender: TObject);
    procedure ReasignarCuitExecute(Sender: TObject);
    procedure CambiarNroRetIIBBExecute(Sender: TObject);
    procedure Borrar_Ret_IngBrExecute(Sender: TObject);
    procedure ImprimeRetIvaExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1Button1Click(Sender: TObject);
    procedure SumarNetosAplicadosExecute(Sender: TObject);
    procedure dbgAplicacionesDblClick(Sender: TObject);
    procedure BtNuevo_IngBruClick(Sender: TObject);
    procedure dbgMovEnter(Sender: TObject);
    procedure dbgMovKeyPress(Sender: TObject; var Key: Char);
    procedure ImpresionChequesExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure RevisionValoresEgresadosExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CambiaNroOpExecute(Sender: TObject);
    procedure ConsultarReprowebExecute(Sender: TObject);
    procedure onsuxt2Click(Sender: TObject);
    procedure FrameMovValoresEgresos1spLoteChequesClick(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn2Click(Sender: TObject);
    procedure RevisiondeNetosMesExecute(Sender: TObject);
    procedure SumarNetosAcumulados1Click(Sender: TObject);
    procedure pnRetencionExit(Sender: TObject);
    procedure DBText1DblClick(Sender: TObject);
    procedure AsignarObraExecute(Sender: TObject);
    procedure QuitarMarcaGananciaExecute(Sender: TObject);
  private
    { Private declarations }
  public
    //CajaNro_: Integer;
    Id_referencia       : Integer;
    CpbteNuevo          : String;
    OPagoIni            : TIniFile;
    SucursalComprobante : Integer;
    IDComprobante       : Integer;
    GrupoOpa,GrupoMov   : Integer;  // estos los uso para saber de que grupo es el recibo y luego
                                    // lo comparo con el de spMovCtaCte_Grupo
    UsarFiltrado        : Boolean;
    ItemDescto          : String;
    MinimoRetIVA        : Extended;
    procedure ReAsignaAplicaciones;
    procedure AgregarCabNC;
    procedure AgregarDetNC;
    { Public declarations }
  end;

var
  FormOPago_2: TFormOPago_2;

PROCEDURE UltimoComprobante;

implementation

uses DMOPagos, UBuscadorCpbte,Librerias ,UCarteraCheques,DMBuscadoresForm,
     UBuscadorProveedor, UDMain_FD, DMStoreProcedureForm,
     USumaAplicaciones,UConfiguracionOrdenPago, UBuscadorTipoCpbte, DMCompra,
     UCompra_2, UAplicacionesCCCompra_2, UNumeroOperacion, UCambiaProv_Fecha_OPago,
     UIngresaNroOP, UCambiaClaseComprobante, UBuscarPorNroReferencia, UCorreo,
     UCambiarNro, UAjustesCCProveedores, UAnulacionOPago, UImpresionChePropios,
     URevisionValoresEgresados,UReproweb, UBuscadorComprobantes, UClaveVerificada,
  UControlNetosOPago, UAsignaObra;

{$R *.DFM}


PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosOPago, DMStoreProcedure,FormOPago_2 DO
    BEGIN
      IF (CDSOPagoLETRAOP.AsString <> '') AND (CDSOPagoCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSOPagoLETRAOP.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSOPagoSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSOPagoCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSOPagoTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSOPagoSUCOPSetText(CDSOPagoSUCOP, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSOPagoNUMEROOPSetText(CDSOPAgoNUMEROOP, IntToStr(Numero));
          CDSOPAGOTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSOPAGOCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSOPagoNROCPBTE.AsString := CDSOpagoLETRAOP.AsString +
                                   CDSOpagoSUCOP.AsString +
                                   CDSOPagoNUMEROOP.AsString;
    END;
END;

procedure TFormOPago_2.ReAsignaAplicaciones;
begin
  // verifico y reasigno los mov de aplicaiones
  if Not(DatosOPago.CDSMovAplicaCCCompra.IsEmpty) Then
    begin
      DatosOPago.CDSMovAplicaCCCompra.First;
      while not (DatosOPago.CDSMovAplicaCCCompra.Eof) DO
        begin
          DatosOPago.CDSMovAplicaCCCompra.Edit;
          DatosOPago.CDSMovAplicaCCCompraFECHA.Value       := DatosOPago.CDSOPagoFECHA.Value;
          DatosOPago.CDSMovAplicaCCCompraDETALLE.Value     := DatosOPago.CDSOPagoCLASECPBTE.Value + '-' +
                                                              DatosOPago.CDSOPagoLETRAOP.Value + '-' +
                                                              DatosOPago.CDSOPagoSUCOP.Value + '-' +
                                                              DatosOPago.CDSOPagoNUMEROOP.Value;
          DatosOPago.CDSMovAplicaCCCompraID_CPBTE.Value    := DatosOPago.CDSOPagoID_Op.Value;
          DatosOPago.CDSMovAplicaCCCompraTIPOCPBTE.Value   := DatosOPago.CDSOPagoTIPOCPBTE.Value;
          DatosOPago.CDSMovAplicaCCCompraCLASECPBTE.Value  := DatosOPago.CDSOPagoCLASECPBTE.Value;
          DatosOPago.CDSMovAplicaCCCompraNUMEROCPBTE.Value := DatosOPago.CDSOPagoNROCPBTE.Value;
          DatosOPago.CDSMovAplicaCCCompra.Next;
       end;
    end;
end;

procedure TFormOPago_2.ReasignarCuitExecute(Sender: TObject);
begin
  if Not(DSBase.DataSet.IsEmpty) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DatosOPago.spReasignaCuit.Close;
        DatosOPago.spReasignaCuit.ParamByName('id_op').Value  :=DatosOPago.CDSOPagoID_OP.Value;
        DatosOPago.spReasignaCuit.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        DatosOPago.spReasignaCuit.Close;
      except
        DMMain_FD.fdcGestion.Rollback;
        DatosOPago.spReasignaCuit.Close;
        ShowMessage('No se pudo realizar las Re-asignación del cuit...');
      end;
    end;
   recuperar.Execute;
end;

procedure TFormOPago_2.AgregarCabNC;
begin
  with DatosOPago,DatosCompra DO
    begin
      FormCompra_2.SucursalPorDefecto:=SucursalComprobante;
     // FormCpbte_2.DepositoPorDefecto:=DepositoPorDefecto;
       FormCompra_2.DiscriminaIva:='S';
      CDSCompraCabSUCURSALCOMPRASetText(CDSCompraCabSUCURSALCOMPRA,IntToStr(SucursalComprobante));
      CDSCompraCabCodigoSetText(CDSCompraCabCodigo,CDSOPagoCODIGO.AsString);
      CDSCompraCabID_TIPOCOMPROBANTESetText(CDSCompraCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      CDSCompraCabDepositoSetText(CDSCompraCabDeposito,IntToStr(DepositoPorDefecto));
      CDSCompraCabSUCFAC.Value      := CDSOPagoSUCOP.Value;
      CDSCompraCabNUMEROFAC.Value   := CDSOPagoNUMEROOP.Value;
      CDSCompraCabFECHAFISCAL.Value := CDSCompraCabFECHACOMPRA.Value;
      CDSCompraCabOBSERVACION1.Value:= 'N.C POR DESCTO. Orden de Pago '+CDSOPagoNROCPBTE.Value;
      CDSCompraCabOBSERVACION2.Value:= '';
      PerciveIva:='N';
      PerciveIB :='N';
      Minimo_PercepcionIva :=100000;
      Minimo_PercepcionIB  :=100000;
      Minimo_PercepcionIB_2:=100000;
      CDSCompraCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    //  FormCpbte_2.DiscriminaIva:='S';
    end;
end;

procedure TFormOPago_2.AgregarDetNC;
var Aux,Porcentaje,Coeficiente:Real;
ValorTxt:String;
begin
  with DatosOPago,DatosCompra DO
    begin
      CDSCompraDet.Append;
      CDSCompraDetCodigoArticuloSetText(CDSCompraDetCodigoArticulo,ItemDescto);
      CDSCompraDetCantidadSetText(CDSCompraDetCantidad,'1');
      if CDSCompraCabDESGLOZAIVA.Value='S' then
        ValorTxt:=FloatToStr(CDSOPagoDESCUENTO.AsFloat/(1+CDSCompraDetIVA_TASA.AsFloat * 0.01))
      else
        ValorTxt:=FloatToStr(CDSOPagoDESCUENTO.AsFloat);
      CDSCompraDetUNIDADES_TOTALSetText(CDSCompraDetUNIDADES_TOTAL,ValorTxt);
      if Not(CDSCompraDet.State in [dsBrowse]) then
        CDSCompraDet.Post;
    end;
 end;


procedure TFormOPago_2.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
    FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
  FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
  FormBuscadorProveedor.ShowModal;
  if FormBuscadorProveedor.Codigo<>'' Then
    begin
      DatosOPago.CDSOPagoCodigoSetText(DatosOPago.CDSOPagoCodigo, FormBuscadorProveedor.Codigo);
    end;

end;

procedure TFormOPago_2.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosOPago.CDSBuscaSucursal.Close;
  DatosOPago.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
      DatosOPago.CDSOPagoSucursalSetText(DatosOPago.CDSOPagoSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  DatosOPago.CDSBuscaSucursal.Close;
end;

procedure TFormOPago_2.BtNuevo_IngBruClick(Sender: TObject);
begin
  inherited;
  if DatosOPago.CDSRetIngBrCab.IsEmpty then
    Agregar_Ret_IngBr.Execute
  else
    ShowMessage('Ya esta Generada...');
end;

procedure TFormOPago_2.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.Tag := 3;
  FormBuscaCpbte.TipoCpbte1:='OP';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormOPago_2.BuscarPendientesExecute(Sender: TObject);
Var Aux:Real;
begin
  inherited;
  DatosOPago.CDSMovCCCompra.Filter:='';
  DatosOPago.CDSMovCCCompra.Filtered:=False;
  DatosOPago.CDSMovCCCompra.Close;
  DatosOPago.CDSMovCCCompra.IndexDefs.Clear;
  DatosOPago.CDSMovCCCompra.Params.ParamByName('Codigo').Value := DatosOPago.CDSOPagoCODIGO.Value;
  DatosOPago.CDSMovCCCompra.Open;
  dbgMovCC.Width:=dbgMovCC.Width+1;
  dbgMovCC.Width:=dbgMovCC.Width-1;

  // aca filtro los comproabnrtes por el grupo
  // para poder separa negro de blanco y no mezcalr
  if  (UsarFiltrado) then
    begin
      DatosOPago.CDSMovCCCompra.Filter   := 'Grupo='+IntToStr(GrupoOpa);
      DatosOPago.CDSMovCCCompra.Filtered := True;
    end;
  if chbModo.Checked=True Then
    begin
      Aux:=0;
      DatosOPago.CDSMovCCCompra.DisableControls;
      DatosOPago.CDSMovCCCompra.First;
      while not(DatosOPago.CDSMovCCCompra.eof) do
        begin
          Aux:=DatosOPago.CDSMovCCCompraSALDO.AsFloat+Aux;
          DatosOPago.CDSMovCCCompra.Next;
        end;
      DatosOPago.CDSMovCCCompra.EnableControls;
      DatosOPago.CDSMovCCCompra.First;
      DatosOPago.CDSOPagoTOTAL_NETOSetText(DatosOPago.CDSOPagoTOTAL_NETO,FloatToStr(Aux));
    end;
  BorrarTodasAplicaciones.Execute;
//  DatosOPago.CDSMovAplicaCCCompra.Close;
//  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('id').Clear;
//  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Clear;
//  DatosOPago.CDSMovAplicaCCCompra.Open;
  DatosOPago.CDSACta.Close;
  DatosOPago.CDSACta.Params.ParamByName('Codigo').Value := DatosOPago.CDSOPagoCODIGO.Value;
  DatosOPago.CDSACta.Open;

  DatosOPago.CalcularAplicaciones;
end;

procedure TFormOPago_2.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  //DatosOPago.CDSBuscaComprob.Close;
//  DatosOPago.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosOPago.CDSOPagoSUCURSAL.Value;
//  DatosOPago.CDSBuscaComprob.Open;
//  IF NOT (DatosOPago.CDSBuscaComprob.IsEmpty) THEN
//    BEGIN
//      comBuscadorTipoCpbte.Execute;
//      if comBuscadorTipoCpbte.rOk Then
//        DatosOPago.CDSOPagoID_TIPOCOMPROBANTESetText(DatosOPago.CDSOPagoID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.id));
//    END
//  ELSE
//    ShowMessage('No hay comprobantes definidos para esta Operación...');
//  DatosOPago.CDSBuscaComprob.Close;

  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                            '(tipo_comprob=''OP'') ';
  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value :=  DatosOPago.CDSOPagoSUCURSAL.Value;


  FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    BEGIN
//      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
      DatosOPago.CDSOPagoID_TIPOCOMPROBANTESetText(DatosOPago.CDSOPagoID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
    END;
end;

procedure TFormOPago_2.BusquedaPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='O';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
       TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
       DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
       Recuperar.Execute;
     end;
end;

procedure TFormOPago_2.AgregarExecute(Sender: TObject);
begin
//  pnSuma.Visible:=False;
  DatosOPago.ControlarRetIIBB := True;
  FormOPago_2.lbGrupo.Caption := 'Grupo';
  DatosOPago.CDSOPago.close;
  DatosOPago.CDSOPago.Params.ParamByName('id').Clear;
  DatosOPago.CDSOPago.Open;

  DatosOPago.CDSMovCCCompra.Close;
  DatosOPago.CDSMovCCCompra.IndexDefs.Clear;
  DatosOPago.CDSMovCCCompra.Params.ParamByName('codigo').Clear;
  DatosOPago.CDSMovCCCompra.Open;

  DatosOPago.CDSMovAplicaCCCompra.Close;
  DatosOPago.CDSMovAplicaCCCompra.IndexDefs.Clear;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('id').Clear;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Clear;
  DatosOPago.CDSMovAplicaCCCompra.Open;

  DatosOPago.CDSRetIngBrCab.Close;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('Tipo').Clear;
  DatosOPago.CDSRetIngBrCab.Open;

  DatosOPago.CDSRetIngBrDet.Close;
  DatosOPago.CDSRetIngBrDet.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetIngBrDet.Open;

  DatosOPago.CDSRetGanancia.Close;
  DatosOPago.CDSRetGanancia.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetGanancia.Open;

  DatosOPago.CDSMovRetGanancia.Close;
  DatosOPago.CDSMovRetGanancia.Params.ParamByName('id_op').Clear;
  DatosOPago.CDSMovRetGanancia.Open;

  DatosOPago.CDSMovAux.Close;
  DatosOPago.CDSMovAux.Params.ParamByName('id').Clear;
  DatosOPago.CDSMovAux.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

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
  inherited;
  // if Not(DatosOPago.wwCDSOPago.Eof) Then
  // CancelarCambios;
  FrameMovValoresEgresos1.SumaValores := 0;
  DatosOPago.SumaAplicaciones:=0;
  edTotalAux.Value                    := 0;
  pcDetalle.ActivePageIndex           := 0;
  pnCabecera.Enabled                  := True;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.IndexDefs.Clear;
  FormCarteraCheques.CDSCarteraChe.IndexFieldNames:='Fecha_Cobro';
  FormCarteraCheques.CDSCarteraChe.Open; //reabro la cartera d cheques
  DatosOPago.CDSMovAplicaCCCompra.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  CpbteNuevo             := 'S';
  DatosOPago.RetenerIva  := False;
  dbeFecha.SetFocus;
  pnAvisoPadron.Visible  := False;
end;


procedure TFormOPago_2.CambiaNroOpExecute(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormCambiarNro)) then
    FormCambiarNro:=TFormCambiarNro.Create(Self);
  FormCambiarNro.id :=DatosOPago.CDSOPagoID_OP.Value;
  FormCambiarNro.Suc:=DatosOPago.CDSOPagoSUCOP.Value;
  FormCambiarNro.Num:=DatosOPago.CDSOPagoNUMEROOP.Value;
  FormCambiarNro.Let:=DatosOPago.CDSOPagoLETRAOP.Value;

  FormCambiarNro.Clase   :=DatosOPago.CDSOPagoCLASECPBTE.Value;
  FormCambiarNro.Sucursal:=DatosOPago.CDSOPagoSUCURSAL.Value;

  FormCambiarNro.Tag:=1;

  FormCambiarNro.ShowModal;
  if FormCambiarNro.ModalResult=mrOk then
    begin
      Recuperar.Execute;
    end;
end;

procedure TFormOPago_2.CambiarClaseCpbteExecute(Sender: TObject);
var HayRet,HayRetIIBB:Boolean;
begin
  inherited;


  HayRet    :=DatosOPago.CDSRetGananciaID.AsString<>'';
  HayRetIIBB:=DatosOPago.CDSRetIngBrCabID.AsString<>'';

  if (HayRet) then
    Raise Exception.Create ('No se puede Borrar Los Movimientos, hay retenciones de ganancia ...');

  if (HayRetIIBB) then
    Raise Exception.Create ('No se puede Borrar Los Movimientos, hay Ret. de IIBB...');

  BorrarTodasAplicaciones.Execute;
  if not(Assigned(FormCambiarClaseCpbte)) then
    FormCambiarClaseCpbte:=TFormCambiarClaseCpbte.Create(Self);
  FormCambiarClaseCpbte.Tipo         :=DatosOPago.CDSOPagoTIPOCPBTE.Value;
  FormCambiarClaseCpbte.Clase        :=DatosOPago.CDSOPagoCLASECPBTE.Value;
  FormCambiarClaseCpbte.Letra        :=DatosOPago.CDSOPagoLETRAOP.Value;
  FormCambiarClaseCpbte.Sucursal     :=DatosOPago.CDSOPagoSUCURSAL.Value;
  FormCambiarClaseCpbte.NroCpbte                 := DSBase.DataSet.FieldByName('NROCPBTE').Value;
  FormCambiarClaseCpbte.IdComprobante:=DatosOPago.CDSOPagoID_OP.Value;
  FormCambiarClaseCpbte.ComproVenta  :='C';
  FormCambiarClaseCpbte.ShowModal;
  DatoNew  :=IntToStr(FormCambiarClaseCpbte.IdComprobante);
  TipoCpbte:=FormCambiarClaseCpbte.Tipo;
  Recuperar.Execute;

  end;

procedure TFormOPago_2.CambiarCodigoExecute(Sender: TObject);
var HayNC,HayRet,HayRetIIBB:Boolean;
begin
  inherited;
  HayRet    :=DatosOPago.CDSRetGananciaID.AsString<>'';
  HayRetIIBB:=DatosOPago.CDSRetIngBrCabID.AsString<>'';

  if (HayRet) then
    Raise Exception.Create ('No se puede Modificar, hay retenciones de ganancia ...');

  if (HayRetIIBB) then
    Raise Exception.Create ('No se puede Modificar, hay retenciones de IIBB ...');


  HayNC:=(Not(DatosOPago.CDSOPagoNC_ID_FC.AsString='')) and
         (DatosOPago.CDSOPagoNC_ID_FC.AsString<>'0');

  if not(DSBase.DataSet.IsEmpty) and (DSBase.State=dsBrowse) and (HayNC=False) then
    begin
      BorrarAplicacion.Execute;
      if HayNC then
        begin
          DatosOPago.QBorrarNc.Close;
          DatosOPago.QBorrarNc.ParamByName('id').Value  :=DatosOPago.CDSOPagoNC_ID_FC.Value;
          DatosOPago.QBorrarNc.ParamByName('Tipo').Value:='NC';
          DatosOPago.QBorrarNc.ExecSQL;
          DatosOPago.QBorrarNc.Close;
        end;

      if not(Assigned(FormCambiaProvFecha_OPago)) then
        FormCambiaProvFecha_OPago:=TFormCambiaProvFecha_OPago.Create(Self);
      FormCambiaProvFecha_OPago.Id       :=DatosOPago.CDSOPagoID_OP.Value;
      FormCambiaProvFecha_OPago.Provedor :=DatosOPago.CDSOPagoCODIGO.Value;
      FormCambiaProvFecha_OPago.Fecha    :=DatosOPago.CDSOPagoFECHA.AsDateTime;
      FormCambiaProvFecha_OPago.Letra    :=DatosOPago.CDSOPagoLETRAOP.Value;
      FormCambiaProvFecha_OPago.Prefijo  :=DatosOPago.CDSOPagoSUCOP.Value;
      FormCambiaProvFecha_OPago.Numero   :=DatosOPago.CDSOPagoNUMEROOP.Value;
      FormCambiaProvFecha_OPago.Sucursal :=DatosOPago.CDSOPagoSUCURSAL.Value;
      FormCambiaProvFecha_OPago.Clase    :=DatosOPago.CDSOPagoCLASECPBTE.Value;
      FormCambiaProvFecha_OPago.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormOPago_2.CambiarNroRetIIBBExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiarNro)) then
    FormCambiarNro:=TFormCambiarNro.Create(Self);
  FormCambiarNro.id :=DatosOPago.CDSRetIngBrCabID.Value;
  FormCambiarNro.Suc:=DatosOPago.CDSRetIngBrCabSUC.Value;
  FormCambiarNro.Num:=DatosOPago.CDSRetIngBrCabNUMERO.Value;
  FormCambiarNro.Tag:=0;

  FormCambiarNro.ShowModal;
  if FormCambiarNro.ModalResult=mrOk then
    begin
      Recuperar.Execute;
    end;


end;

procedure TFormOPago_2.CancelarExecute(Sender: TObject);
begin
  //pnSuma.Visible:=False;
  FormOPago_2.lbGrupo.Caption:='Grupo';

  if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;

  FrameMovValoresEgresos1.CDSCheques.Cancel;
  FrameMovValoresEgresos1.CDSMovEfectivo.Cancel;
  FrameMovValoresEgresos1.CDSChe3.Cancel;
  FrameMovValoresEgresos1.CDSCajaMov.Cancel;

  DatosOPago.CDSMovAplicaCCCompra.Cancel;
  DatosOPago.CDSOPago.Cancel;
  DatosOPago.CDSRetIngBrCab.Cancel;
  DatosOPago.CDSRetIngBrDet.Cancel;

  DatosOPago.CDSOPago.close;
  DatosOPago.CDSOPago.Params.ParamByName('id').Clear;
  DatosOPago.CDSOPago.Open;

  DatosOPago.CDSMovCCCompra.Close;
  DatosOPago.CDSMovCCCompra.Filter:='';
  DatosOPago.CDSMovCCCompra.Filtered:=False;
  DatosOPago.CDSMovCCCompra.IndexDefs.Clear;
  DatosOPago.CDSMovCCCompra.Params.ParamByName('codigo').Clear;
  DatosOPago.CDSMovCCCompra.Open;

  DatosOPago.CDSACta.Close;
  DatosOPago.CDSACta.IndexDefs.Clear;
  DatosOPago.CDSACta.Params.ParamByName('codigo').Clear;
  DatosOPago.CDSACta.Open;

  DatosOPago.CDSMovAplicaCCCompra.Close;
  DatosOPago.CDSMovAplicaCCCompra.IndexDefs.Clear;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('id').Clear;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Clear;
  DatosOPago.CDSMovAplicaCCCompra.Open;

  DatosOPago.CDSRetIngBrCab.Close;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('Tipo').Clear;
  DatosOPago.CDSRetIngBrCab.Open;

  DatosOPago.CDSRetIngBrDet.Close;
  DatosOPago.CDSRetIngBrDet.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetIngBrDet.Open;

  DatosOPago.CDSRetGanancia.Close;
  DatosOPago.CDSRetGanancia.Params.ParamByName('id').Clear;
  DatosOPago.CDSRetGanancia.Open;

  DatosOPago.CDSMovRetGanancia.Close;
  DatosOPago.CDSMovRetGanancia.Params.ParamByName('id_op').Clear;
  DatosOPago.CDSMovRetGanancia.Open;

  DatosOPago.CDSMovAux.Close;
  DatosOPago.CDSMovAux.Params.ParamByName('id').Clear;
  DatosOPago.CDSMovAux.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

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

  pnCabecera.Enabled:=True;
  inherited;
  if TForm(Self.Owner).Name='FormCajaResumen' then
    Salir.Execute;

  pnAvisoPadron.Visible     := False;
  pcDetalle.ActivePageIndex := 0;

  if btNuevo.Enabled Then
    btNuevo.SetFocus;
   FrameMovValoresEgresos1.ceCaja.Text       :='';
   FrameMovValoresEgresos1.edMuestraCaja.Text:='';
end;

procedure TFormOPago_2.ConfiguraOpagoExecute(Sender: TObject);
begin
 inherited;
 if Not(Assigned(FormConfiguracionOPago)) Then
    FormConfiguracionOPago:=TFormConfiguracionOPago.Create(Self);
  FormConfiguracionOPago.ShowModal;
  if DMMain_FD.UsuarioActivo<>'' Then
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_OPago.ini')
  else
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_OPago.ini');
  //*************************************************************
  chbModo.Checked            := OPagoIni.ReadBool('Modo', 'Modo', False);
  UsarFiltrado               := OPagoIni.ReadBool('filtro','filtro',False);
  ItemDescto                 := OPagoIni.ReadString('codigo','codigo','');
  OPagoIni.Free;
  BuscarPendientes.Execute;
end;

procedure TFormOPago_2.ConfirmaExecute(Sender: TObject);
VAR TotalIngresos: Extended;
opOk:Boolean;
d,m,y:word;
BEGIN
  //pnSuma.Visible:=False;
  if (DatosOPago.CDSRetIngBrCab.State<>dsbrowse) and (Not(DatosOPago.CDSRetIngBrCab.IsEmpty)) then
     begin
       if DatosOPago.CDSRetIngBrCab.state<>dsBrowse Then
         DatosOPago.CDSRetIngBrCab.Post;
       if DatosOPago.CDSRetIngBrDet.state<>dsBrowse Then
         DatosOPago.CDSRetIngBrDet.Post;
     end;
  

  IF Trunc(DatosOPago.CDSOPagoTOTAL.AsFloat*1000)<=0 THEN
    RAISE Exception.Create('No se Ingreso Importe del Comprobante');

  DatosOPago.ControlarRetIIBB:=False;

  ReAsignaAplicaciones;

  IF Trunc(DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat*1000)<0 THEN
    RAISE Exception.Create('Hay error de Impuatciones ... no puede tener valor Negativo');
  if (DSBase.DataSet.State=dsInsert) and (Not(DatosOPago.CDSRetGanancia.IsEmpty)) then
    begin
      // Guardo los Movimientos Aplicado por las retenciones de ganancia
      DatosOPago.CDSMovRetGanancia.Close;
      DatosOPago.CDSMovRetGanancia.Params.ParamByName('id_op').Clear;
      DatosOPago.CDSMovRetGanancia.Open;
      if Not(DatosOPago.CDSMovAplicaCCCompra.IsEmpty) Then
         begin
           DatosOPago.CDSMovAplicaCCCompra.First;
           while not (DatosOPago.CDSMovAplicaCCCompra.Eof) DO
             begin
               DatosOPago.CDSMovRetGanancia.Append;
               DatosOPago.CDSMovRetGananciaID_MOVAPLICACIONCC.Value:= DatosOPago.CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value;
               DatosOPago.CDSMovRetGananciaID_CPBTE.Value          := DatosOPago.CDSMovAplicaCCCompraID_CPBTE.Value;
               DatosOPago.CDSMovRetGananciaNROCPBTE.Value          := DatosOPago.CDSMovAplicaCCCompraNUMEROCPBTE.Value;
               DatosOPago.CDSMovRetGananciaNETO.Value              := DatosOPago.CDSMovAplicaCCCompraAPLICA_NETO.Value;
               DatosOPago.CDSMovRetGananciaTOTAL.Value             := DatosOPago.CDSMovAplicaCCCompraIMPORTE.Value;
               DatosOPago.CDSMovRetGanancia.Post;
               DatosOPago.CDSMovAplicaCCCompra.Next;
             end;
          end;
    end;


  TotalIngresos := Moneda3D(' ',DatosOPago.MascaraGral,FrameMovValoresEgresos1.SumaValores) +
                   Moneda3D(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetIngBrCabTOTAL.AsFloat)+
                   Moneda3d(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat) +
                   Moneda3d(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat);
  TotalIngresos:=TotalIngresos+edTotalAux.Value;

  if TotalIngresos<=0 Then
    begin
      WITH FrameMovValoresEgresos1 DO
        begin
          pcDetalle.ActivePageIndex:=1;
          IF (DSBase.State=dsInsert) THEN
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
            end;
          TipoCpbte      := DatosOPago.CDSOPagoTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := DatosOPago.CDSOPagoCLASECPBTE.Value;
          NroCpbte       := DatosOPago.CDSOPagoNROCPBTE.Value;
          FechaOperacion := DatosOPago.CDSOPagoFECHA.AsDateTime;
          IdCpbte        := DatosOPago.CDSOPagoID_OP.Value;
          Origen         := DatosOPago.CDSOPagoRAZONSOCIAL.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat        := DatosOPago.CDSOPagoTOTAL.AsFloat-DatosOPago.CDSRetIngBrCabTOTAL.AsFloat-
                                            DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat - DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat;
          CDSCajaMovDEBE.AsFloat         := 0;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value           := 1;
          CDSCajaMovID_FPAGO.Value           := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat         := DatosOPago.CDSOPagoTOTAL.AsFloat;
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
          CDSMovEfectivoIMPORTE.AsFloat      := DatosOPago.CDSOPagoTOTAL.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          pcDetalle.ActivePageIndex:=0;
        END;
    end;

  TotalIngresos := Moneda3D(' ',DatosOPago.MascaraGral,FrameMovValoresEgresos1.SumaValores) +
                   Moneda3D(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetIngBrCabTOTAL.AsFloat)+
                   Moneda3d(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat)+
                   Moneda3d(' ',DatosOPago.MascaraGral,DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat);
  TotalIngresos:=TotalIngresos+edTotalAux.Value;

  try
    IF Not(CompareValue(TotalIngresos,DatosOPago.CDSOPagoTOTAL.AsFloat,0.02)=EqualsValue) THEN
      RAISE Exception.Create('Hay diferencias entre lo percibido' + #13 +
                  'Ingresos por...:'+FormatFloat(DatosOPago.MascaraGral, TotalIngresos)+#13+
                  'Importe Cpbte..:'+FormatFloat(DatosOPago.MascaraGral, DatosOPago.CDSOPagoTOTAL.AsFloat)+#13+
                  'Diferencia ....:'+FormatFloat(DatosOPago.MascaraGral, DatosOPago.CDSOPagoTOTAL.AsFloat-TotalIngresos));

  finally
  end;
  DatosOPago.CDSOPagoNROCPBTE.Value := DatosOPago.CDSOPagoLETRAOP.Value +
                                       DatosOPago.CDSOPagoSUCOP.Value +
                                       DatosOPago.CDSOPagoNUMEROOP.Value;
 // esta linea esta para ver si corrige el tema de los decimales pero no lo hace, se deja igual
  DatosOPago.CDSOPagoTOTAL.AsFloat := Moneda3D(' ',DatosOPago.MascaraGral,DatosOPago.CDSOPagoTOTAL.AsFloat);
  DatoNew   :=IntToStr(DatosOPago.CDSOPagoID_OP.Value);
  TipoCpbte :=DatosOPago.CDSOPagoTIPOCPBTE.Value;

  //******************************************************************
  // Si el Valor de Descuento es mayor a cero hago la NC
  //******************************************************************
  if (DatosOPago.CDSOPagoDESCUENTO.AsFloat>0) and (DSBase.DataSet.State=dsInsert) then
    begin
      opOk:=False;
      DatosOPago.CDSInscripcion.Close;
      DatosOPago.CDSInscripcion.Params.ParamByName('Codigo').AsInteger := DatosOPago.CDSOPagoTIPOIVA.AsInteger;
      DatosOPago.CDSInscripcion.Open;
      IF NOT (DatosOPago.CDSInscripcion.Eof) THEN
        begin
          DatosOPago.CDSComprobantePorDefecto.Close;
          DatosOPago.CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= DatosOPago.CDSInscripcionDISCRIMINAIVA.Value;
          DatosOPago.CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := DatosOPago.CDSOPagoSUCURSAL.Value;
          DatosOPago.CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'C';
          DatosOPago.CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'NC';
          DatosOPago.CDSComprobantePorDefecto.Open;
          if (DatosOPago.CDSComprobantePorDefecto.RecordCount=1) and (DatosOPago.CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
            begin
              IDComprobante      := DatosOPago.CDSComprobantePorDefecto.Fields[0].AsInteger;
              SucursalComprobante:= DatosOPago.CDSOPagoSUCURSAL.Value;
              opOk:=True;
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1:= 'NC';
              FormBuscadorTipoCpbte.TipoCpbte2:= '';
              FormBuscadorTipoCpbte.TipoCpbte3:= '';
              FormBuscadorTipoCpbte.CV        := 'C';
              FormBuscadorTipoCpbte.Sucursal  := DatosOPago.CDSOPagoSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA:= DatosOPago.CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
              opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
            end;
        end
    end;
    if (opOk) Then
      begin
        if Not(Assigned(FormCompra_2)) Then
          FormCompra_2:=TFormCompra_2.Create(Self);
        FormCompra_2.Show;
        FormCompra_2.Agregar.Execute;
        AgregarCabNC;
        AgregarDetNC;
        FormCompra_2.Confirma.Execute;
        if FormCompra_2.Generado then
          begin
            DatosOPago.CDSOPagoNC_ID_FC.Value      :=DatosCompra.CDSCompraCabID_FC.Value;
            DatosOPago.CDSOPagoNC_LETRAFAC.Value   :=DatosCompra.CDSCompraCabLETRAFAC.Value;
            DatosOPago.CDSOPagoNC_SUCFAC.Value     :=DatosCompra.CDSCompraCabSUCFAC.Value;
            DatosOPago.CDSOPagoNC_NUMEROFAC.Value  :=DatosCompra.CDSCompraCabNUMEROFAC.Value;
          end;
        FormCompra_2.Close;
        if FormCompra_2.Generado then
          begin
            IF DSBase.State<>dsBrowse Then DSBase.DataSet.Post;
            inherited;
            Recuperar.Execute;
            FreeAndNil(FormCOmpra_2);
          end;
      end
    else
      begin
        // **** hago ingreso de numero operacion ******
        if (DSBase.State=dsInsert) and (DMMain_FD.Ingresa_NroOp) then
          begin
             if Not(Assigned(FormIngresaNroOP)) then
              FormIngresaNroOP:=TFormIngresaNroOP.Create(Self);
            DecodeDate(DatosOPago.CDSOPagoFECHA.AsDateTime,y,m,d);
            FormIngresaNroOP.Prefijo:= IntToStr(y);
            FormIngresaNroOP.ShowModal;
            if FormIngresaNroOP.ModalResult=mrOk then
              DatosOPago.CDSOPagoNUMERO_OPERACION.Value:=FormIngresaNroOP.Prefijo+FormIngresaNroOP.Numero
            else
              DatosOPago.CDSOPagoNUMERO_OPERACION.Value:='';
          end;
         // ********************************************
         inherited;
         Recuperar.Execute;
         if Not(DSBase.DataSet.IsEmpty) then
          DMMain_FD.LogFileFD(1,3,'Ingreso Orden de Pago Proveedor:'+DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString+
                                  ' Nro: '+DSBase.DataSet.FieldByName('NROCPBTE').AsString+
                                  '('+DSBase.DataSet.FieldByName('ID_OP').AsString+')'+
                                  ' Importe : '+FormatFloat(',0.00',DSBase.DataSet.FieldByName('TOTAL').AsFloat)+
                                  ' Aplicado: '+ceTotalAplicaciones.Text +
                                  ' C/Ret.Gancia :'+DSBase.DataSet.FieldByName('RETENCION_GANACIA_GENERADO').AsString,
                                  'ORDENPAGO');
         if (TForm(Self.Owner).Name<>'FormCajaResumen') Then
          begin
            IF DatosOPago.CDSOPago.State <> dsBrowse THEN
              DatosOPago.CDSOPago.Cancel;
              IF (CpbteNuevo='S') then
              if imprime='S' Then
                if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes)  THEN
                  BEGIN
                    DatosOPago.QComprob.Close;
                    DatosOPago.QComprob.ParamByName('id').Value :=DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.Value;
                    DatosOPago.QComprob.ParamByName('suc').Value:=DatosOPago.CDSOPagoSUCURSAL.Value;
                    DatosOPago.QComprob.Open;
                    frOPago.PrintOptions.Printer:=PrNomCpbte;
                    frOPago.SelectPrinter;

                    frOPago.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOPago.QComprobREPORTE.AsString);
                    frOPago.Variables['Mascara']     :=''''+DatosOPago.MascaraGral+'''';
                    frOPago.Variables['importeletra']:=''''+numero2letras(DatosOPago.CDSOPagoTOTAL.AsFloat)+'''';
                    frOPago.PrintOptions.Copies      :=DatosOPago.QComprobCOPIAS.Value;
                    DatosOPago.QComprob.Close;
                    DMMain_FD.QOpciones.Close;
                    frOPago.PrepareReport;
                    frOPago.ShowReport;
                    if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) and
                       (DatosOPago.CDSRetIngBrCabTOTAL.AsFloat>0) Then
                        Imprimir_Ret_IngBr.Execute;
                    if (DatosOPago.CDSOPagoRETIENE_GANACIAS.Value='S') and
                       (DatosOPago.CDSOPagoRETENCION_GANACIA_GENERADO.Value='S') Then
                    if (MessageDlg('Imprime Comprobante de Retención de Ganancias?', mtConfirmation, [mbYes, mbNo], 0)= mrYes)  THEN
                       ImprimirRetencionRanancia.Execute;
                    if (Not(DatosOPago.CDSRetIVA.IsEmpty)) Then
                      if (DatosOPago.CDSOPagoRETIENE_IVA.Value='S') Then
                        begin
                          frRetencionIVA.PrintOptions.Printer:=PrNomCpbte;
                          frRetencionIVA.SelectPrinter;
                          frRetencionIVA.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionIVA.fr3');
                          DMMain_FD.QOpciones.Close;
                          frRetencionIVA.PrepareReport;
                          frRetencionIVA.ShowReport;
                        end;
                 END;
             pcDetalle.ActivePageIndex := 0;
             IF btNuevo.Enabled = True THEN
                btNuevo.SetFocus;
          end
        else
          Salir.Execute;
      end;
end;

procedure TFormOPago_2.ModificarExecute(Sender: TObject);
var HayNC,HayRet,HayRetIIBB,RetLiquidad:Boolean;
begin
  if DMMain_FD.UsuarioAdministrador=True Then
    begin
      HayRet    :=DatosOPago.CDSRetGananciaID.AsString<>'';
      HayRetIIBB:=DatosOPago.CDSRetIngBrCabID.AsString<>'';

      if (HayRet) then
        RetLiquidad:=DatosOPago.CDSRetGananciaESTADO.AsString[1]='L';

      HayNC :=(Not(DatosOPago.CDSOPagoNC_ID_FC.AsString='')) and (DatosOPago.CDSOPagoNC_ID_FC.AsString<>'0');

      if ((HayRet) and (RetLiquidad)) then
        Raise Exception.Create ('No se puede Modificar, hay retenciones de ganancia que ya fueron liquidadas...');
      if ((HayRetIIBB)) then
        Raise Exception.Create ('No se puede Modificar, hay retenciones de II.BB...');
      inherited;
      // pnCabecera.Enabled:=True;
      IF NOT (DatosOPago.CDSOPago.IsEmpty) THEN
        BEGIN
          FormCarteraCheques.CDSCarteraChe.Close;
          FormCarteraCheques.CDSCarteraChe.Open;
            //DatosOPago.wwCDSOPago.Edit;
        END;
       pcDetalle.OnChange(self);  
      CpbteNuevo:='N';
    end;
end;

procedure TFormOPago_2.NextExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosOPago.CDSOPagoTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DatosOPago.CDSOPagoCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+DatosOPago.CDSOPagoSUCURSAL.AsString;

  inherited;

end;

procedure TFormOPago_2.BorrarExecute(Sender: TObject);
var HayNC,HayRet,HayRetIIBB,RetLiquidad:Boolean;
 Continua:Boolean;
 Detalle:string;
begin
  Continua:=False;
  if (DatosOPAgo.CDSOPagoTOTAL.AsFloat>0) then
    begin
      if Not(DMMain_FD.BorrarOPago) then
        begin
          if not (Assigned(FormClaveVerificada)) then
            FormClaveVerificada := TFormClaveVerificada.Create(Self);
          FormClaveVerificada.ShowModal;
          if FormClaveVerificada.ModalResult=mrok then
            Continua:=True
          else
            Continua:=False;
        end
      else Continua:=True;
    end;

   if Continua=False then
    Exit;

  HayRet    :=DatosOPago.CDSRetGananciaID.AsString<>'';
  HayRetIIBB:=DatosOPago.CDSRetIngBrCabID.AsString<>'';

  if (HayRet) then
    RetLiquidad:=DatosOPago.CDSRetGananciaESTADO.AsString[1]='L';

  HayNC :=(Not(DatosOPago.CDSOPagoNC_ID_FC.AsString='')) and (DatosOPago.CDSOPagoNC_ID_FC.AsString<>'0');

  if ((HayRet) and (RetLiquidad)) then
    Raise Exception.Create ('No se puede Borrar, hay retenciones de ganancia que ya fueron liquidadas...');
  if ((HayRetIIBB)) then
    Raise Exception.Create ('No se puede Borrar, hay retenciones de II.BB...');

  if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?',
    mtInformation, [mbYes, mbNo], 0) = mrYes Then
  if DMMain_FD.UsuarioAdministrador=True Then
    begin
      IF NOT (DatosOPago.CDSOPago.IsEmpty) THEN
        BEGIN
          DMMain_FD.fdcGestion.StartTransaction;
          try
            // **** Ingreso en el Log File  **************
            Detalle:= 'Borrado O.de Pago: '+
                      DatosOPago.CDSOPagoCLASECPBTE.Value+'-'+
                      DatosOPago.CDSOPagoLETRAOP.Value+'-'+
                      DatosOPago.CDSOPagoSUCOP.Value+'-'+
                      DatosOPago.CDSOPagoNUMEROOP.Value+'-'+
                      ' Proveedor: '+
                      DatosOPago.CDSOPagoCODIGO.Value+'-'+DatosOPago.CDSOPagoNOMBRE.Value+
                      ' Importe: '+
                      FormatFloat('0.00',DatosOPago.CDSOPagoTOTAL.AsFloat);

            DMMain_FD.LogFileFD(0,6,Detalle,'ORDENPAGO');

           
             // ******************************************
             // ******* Pregunot si se borra la Nc que puede ver ascoiado al Recibo
             // ******************************************
             if HayNC then
               begin
                 IF MessageDlg('Hay un Nota de Credito Asociada.. la Nro:'+DatosOPago.CDSOPagoNC_NUMEROFAC.AsString+',' + #13 +
                    'Borra el Comprobante....?.', mtWarning, [mbYes, mbNo], 0) = mrYes  THEN
                   begin
                     DatosOPago.QBorrarNc.Close;
                     DatosOPago.QBorrarNc.ParamByName('id').Value  :=DatosOPago.CDSOPagoNC_ID_FC.Value;
                     DatosOPago.QBorrarNc.ParamByName('Tipo').Value:='NC';
                     DatosOPago.QBorrarNc.ExecSQL;
                     DatosOPago.QBorrarNc.Close;
                   end;
               end;
             // ******************************************
             // ******************************************
            DatosOPago.CDSOPago.Delete;
            DatosOPago.CDSOPago.ApplyUpdates(0);
            DatosOPago.CDSOPago.EmptyDataSet;
            DatosOPago.CDSMovAplicaCCCompra.EmptyDataSet;
            DatosOPago.CDSMovCCCompra.EmptyDataSet;
            DMMain_FD.fdcGestion.Commit;
            //***********************
            DatosOPago.CDSOPago.close;
            DatosOPago.CDSOPago.Params.ParamByName('id').Clear;
            DatosOPago.CDSOPago.Open;

            DatosOPago.CDSMovAplicaCCCompra.Close;
            DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('id').Clear;
            DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Clear;
            DatosOPago.CDSMovAplicaCCCompra.Open;

//            FrameMovValoresEgresos1.ceCaja.Text       :='';
            FrameMovValoresEgresos1.edMuestraCaja.Text:='';

            FrameMovValoresEgresos1.CDSCheques.Close;
            FrameMovValoresEgresos1.CDSChe3.Close;
            FrameMovValoresEgresos1.CDSMovEfectivo.Close;

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
            FormOPago_2.lbGrupo.Caption:='Grupo';

            pcDetalle.ActivePageIndex:=0;

          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no realizada...');
          end;
        END
      ELSE
        ShowMessage('No hay registro activo');
    end
  else
    ShowMessage('No se permite esta operación');

end;

procedure TFormOPago_2.BorrarRetIIBBExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if DMMain_FD.UsuarioAdministrador then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            DatosOPago.CDSOPago.edit;
            datosOPago.CDSOPagoTOTAL_NETOSetText(datosOPago.CDSOPagoTOTAL_NETO,FloatToStr(datosOPago.CDSOPagoTOTAL_NETO.AsFloat-DatosOPago.CDSRetIngBrCabTOTAL.AsFloat));
            DatosOPago.CDSOPagoPERMITIR_MODIF_TOTAL.Value:='S';
            DatosOPago.CDSOPago.Post;
            DatosOPago.CDSOPago.ApplyUpdates(0);

            DatosOPago.QBorrarRetIIBB.Close;
            DatosOPago.QBorrarRetIIBB.ParamByName('tipo').Value:=DatosOPago.CDSOPagoTIPOCPBTE.Value;
            DatosOPago.QBorrarRetIIBB.ParamByName('id').Value  :=DatosOPago.CDSOPagoID_OP.Value;
            DatosOPago.QBorrarRetIIBB.ExecSQL;
            DatosOPago.QBorrarRetIIBB.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DatosOPago.QBorrarRetIIBB.Close;
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se pudo realizar las operaciones caja...');
          end;
        end
      else
        ShowMessage('No esta Autorizado para esta Operacion...');  
      Recuperar.Execute;
    end;
end;

procedure TFormOPago_2.BorrarTodasAplicacionesExecute(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      while dbgAplicaciones.DataSource.DataSet.RecordCount>0 do
        begin
          dbgAplicaciones.DataSource.DataSet.First;
          dbgAplicaciones.DataSource.DataSet.Delete;
        end;

      DSBase.DataSet.FieldByName('SALDO_APLICAR').AsFloat      := DSBase.DataSet.FieldByName('TOTAL').AsFloat;
      DSBase.DataSet.FieldByName('TOTAL_NETO_GRAVADO').AsFloat := 0;
      DSBase.DataSet.FieldByName('IVA_ACUMULADO').AsFloat      := 0;

      ceTotalAplicaciones.Value                                := 0;
    end;
end;

procedure TFormOPago_2.Borrar_Ret_IngBrExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsInsert) and (Not(DatosOPago.CDSRetIngBrCab.IsEmpty))  then
    begin
      DatosOPago.CDSRetIngBrDet.First;
      if Not(DatosOPago.CDSRetIngBrDet.IsEmpty) Then
       while not (DatosOPago.CDSRetIngBrDet.Eof) do
         DatosOPago.CDSRetIngBrDet.DELETE;
      DatosOPago.CDSRetIngBrCab.Delete;

      DatosOPago.CDSRetIngBrCab.Close;
      DatosOPago.CDSRetIngBrCab.Params.ParamByName('id').Clear;
      DatosOPago.CDSRetIngBrCab.Params.ParamByName('Tipo').Clear;
      DatosOPago.CDSRetIngBrCab.Open;

      DatosOPago.CDSRetIngBrDet.Close;
      DatosOPago.CDSRetIngBrDet.Params.ParamByName('id').Clear;
      DatosOPago.CDSRetIngBrDet.Open;
    end;

 // DatosOPago.CalcularAplicaciones;
end;

procedure TFormOPago_2.ImpresionChequesExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormImpresionChePropios)) then
    FormImpresionChePropios:=TFormImpresionChePropios.Create(self);
  FormImpresionChePropios.TipoCpbte   :='OP';
  FormImpresionChePropios.Id          :=DatosOPago.CDSOPagoID_OP.Value;
  FormImpresionChePropios.PathReportes:=DMMain_FD.PathReportesCpbte;
  FormImpresionChePropios.ShowModal;
end;

procedure TFormOPago_2.ImprimeRetIvaExecute(Sender: TObject);
begin
  inherited;
 if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (Not(DatosOPago.CDSRetIVA.IsEmpty)) Then
   begin

     frRetencionIVA.PrintOptions.Printer:=PrNomCpbte;
     frRetencionIVA.SelectPrinter;

     frRetencionIVA.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionIVA.fr3');

     DMMain_FD.QOpciones.Close;
     frRetencionIVA.PrepareReport;
     frRetencionIVA.ShowReport;
     //btImprimirRetencion.SetFocus;
   end
 else
   ShowMessage('Debe terminar la carga del comprobante.......');

end;

procedure TFormOPago_2.ImprimirExecute(Sender: TObject);
begin

  DatosOPago.QComprob.Close;
  DatosOPago.QComprob.ParamByName('id').Value :=DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.Value;
  DatosOPago.QComprob.ParamByName('suc').Value:=DatosOPago.CDSOPagoSUCURSAL.Value;
  DatosOPago.QComprob.Open;

  frOPago.PrintOptions.Printer:=PrNomCpbte;
  frOPago.SelectPrinter;

  frOPago.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOPago.QComprobREPORTE.AsString);
  frOPago.Variables['Mascara']  :=''''+DatosOPago.MascaraGral+'''';
  frOPago.Variables['importeletra']:=''''+numero2letras(DatosOPago.CDSOPagoTOTAL.AsFloat)+'''';
  frOPago.Variables['sucursal']    :=''''+dbeSucursal.Text+'''';

  frOPago.PrintOptions.Copies :=DatosOPago.QComprobCOPIAS.Value;

  DatosOPago.QComprob.Close;
  DMMain_FD.QOpciones.Close;
  frOPago.PrepareReport;
  frOPago.ShowReport;

  if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) and (DatosOPago.CDSRetIngBrCabTOTAL.AsFloat>0) Then
    Imprimir_Ret_IngBr.Execute;

  if (Not(DatosOPago.CDSRetGanancia.IsEmpty)) Then
    begin

      frRetGanancia.PrintOptions.Printer:=PrNomCpbte;
      frRetGanancia.SelectPrinter;

      frRetGanancia.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionGanancia.fr3');

      DMMain_FD.QOpciones.Close;
      frRetGanancia.PrepareReport;
      frRetGanancia.ShowReport;
    end;
  if (Not(DatosOPago.CDSRetIVA.IsEmpty)) Then
    begin

      frRetencionIVA.PrintOptions.Printer:=PrNomCpbte;
      frRetencionIVA.SelectPrinter;

      frRetencionIVA.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionIVA.fr3');

      DMMain_FD.QOpciones.Close;
      frRetencionIVA.PrepareReport;
      frRetencionIVA.ShowReport;
    end;
END;



procedure TFormOPago_2.dbgAplicacionesColEnter(Sender: TObject);
begin
  inherited;
  IF dbgAplicaciones.SelectedIndex <> 2 THEN
    dbgAplicaciones.SelectedIndex := 2;
end;

procedure TFormOPago_2.dbgAplicacionesDblClick(Sender: TObject);
begin
  inherited;
    IF (dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString='FC') or
       (dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString='NC') or
       (dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString='ND') Then
      begin
        IF NOT (Assigned(FormCompra_2)) THEN
          FormCompra_2:= TFormCompra_2.Create(Application);
        FormCompra_2.DatoNew   := dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_ID_CPBTE').AsString;
        FormCompra_2.TipoCpbte := dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString;
        FormCompra_2.Recuperar.Execute;
        FormCompra_2.Show;
      end
    else
      IF (dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString='AJ') Then
        begin
          IF NOT (Assigned(FormAjusteCCProveedores)) THEN
            FormAjusteCCProveedores:= TFormAjusteCCProveedores.Create(Application);
          FormAjusteCCProveedores.DatoNew  := dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_ID_CPBTE').AsString;
          FormAjusteCCProveedores.TipoCpbte:= dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString;
          FormAjusteCCProveedores.Recuperar.Execute;
        END
      else
        IF (dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString='XP') Then
          begin
            IF NOT (Assigned(FormAnulacionOPago)) THEN
              FormAnulacionOPago:= TFormAnulacionOPago.Create(Application);
            FormAnulacionOPago.DatoNew  := dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_ID_CPBTE').AsString;
            FormAnulacionOPago.TipoCpbte:= dbgAplicaciones.DataSource.DataSet.FieldByName('APLICA_TIPOCPBTE').AsString;
            FormAnulacionOPago.Recuperar.Execute;
         END;


end;

procedure TFormOPago_2.dbgAplicacionesDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
// aca se verifica el grupo del movimiento si existen filtros.
  if (DMMain_FD.HayFiltros=True) then
    begin
      DMStoreProcedure.spMovCtaCteComp_Grupo.Close;
      DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('Id_Mov').Value:= (Source AS TDBGrid).DataSource.DataSet.FieldByName('Id_MovCCCompra').Value;
      DMStoreProcedure.spMovCtaCteComp_Grupo.ExecProc;
      if DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('id_grupo').AsString<>'' then
        GrupoMov:=DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('id_grupo').Value
      else
        GrupoMov:=-1;
      DMStoreProcedure.spMovCtaCteComp_Grupo.Close;
    end
  else
    GrupoMov := -1;
  //**************************************************************

  WITH DatosOPago DO
    BEGIN
      if (GrupoOpa=GrupoMov) then
        IF Trunc(CDSOPagoSALDO_APLICAR.AsFloat*1000) > 0 THEN
          IF Trunc(CDSMovCCCompraSALDO.AsFloat*1000) > 0 THEN
            BEGIN
              CDSMovAplicaCCCompra.Append;
              WITH (Source AS TDBGrid).DataSource.DataSet DO
                BEGIN
                  CDSMovAplicaCCCompraAPLICA_ID_CPBTE.Value   := FieldByName('Id_Cpbte').Value;
                  CDSMovAplicaCCCompraAPLICA_NROCPBTE.Value   := FieldByName('NroCpbte').Value;
                  CDSMovAplicaCCCompraAPLICA_TIPOCPBTE.Value  := FieldByName('TipoCpbte').Value;
                  CDSMovAplicaCCCompraAPLICA_CLASECPBTE.Value := FieldByName('ClaseCpbte').Value;
                  IF FieldByName('MUESTRAAPAGAR').AsFloat < CDSOPagoSALDO_APLICAR.AsFloat THEN
                    CDSMovAplicaCCCompraIMPORTE.AsFloat := FieldByName('MUESTRAAPAGAR').AsFloat
                  ELSE
                    CDSMovAplicaCCCompraIMPORTE.AsFloat    := CDSOPagoSALDO_APLICAR.AsFloat;

                  IF Trunc(CDSOPagoSALDO_APLICAR.AsFloat * 1000) = 0 THEN
                    CDSOPagoSALDO_APLICAR.AsFloat := 0;

                  CDSMovAplicaCCCompraID_MOVCCCOMPRA.Value := FieldByName('Id_MovCCCompra').Value;
                  CDSMovAplicaCCCompraPROVEEDOR.Value      := FieldByName('Proveedor').Value;
                  if (FieldByName('FISCAL').Value='N') then
                    begin
                      CDSOPagoRETIENE_IIBB.Value     := 'N';
                      CDSOPagoRETIENE_GANACIAS.Value := 'N';
                      CDSOPagoRETIENE_IVA.Value      := 'N';
                    end;

                END;
                CDSMovAplicaCCCompra.Post;
            END
          ELSE
            ShowMessage('Comprobante ya cancelado... Verifique!!!')
        ELSE
          ShowMessage('Total del importe de la O.de Pago usado... Verifique!!!')
      else
        ShowMessage('El comprobante no pertenecen al mismo grupo que está en el filtro... '+#13+
                    'Verifique el filtro o el movimento... !!!');
    END;

end;

procedure TFormOPago_2.dbgAplicacionesDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF Source = dbgMovCC THEN
    accept := True
  ELSE
    Accept := False;
  IF Trunc(DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat * 1000) <= 0 THEN
    Accept := False;

  IF Trunc(DatosOPago.CDSMovCCCompraSALDO.AsFloat*1000) <= 0 THEN
    Accept := False;

end;

procedure TFormOPago_2.FormActivate(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    Recuperar.Execute;
end;

procedure TFormOPago_2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if DMMain_FD.UsuarioActivo<>'' Then
   OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_OPago.ini')
  else
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_OPago.ini');
 //*************************************************************
  OPagoIni.WriteBool('Modo', 'Modo', chbModo.Checked);
  OPagoIni.Free;

  if (FormSumaAplicaciones<>Nil) then
    FreeAndNil(FormSumaAplicaciones);
  WITH DatosOPago DO
    BEGIN
      if CDSOPago.State<>dsBrowse then
        CDSOPago.Cancel;
      CDSOPago.Close;
      CDSMovCCCompra.Close;
      CDSMovAplicaCCCompra.Close;
      CDSProveedor.Close;
      CDSSucursal.Close;
      CDSEmpresa.Close;
      CDSRetIngBrCab.Close;
      CDSRetIngBrDet.Close;
      CDSRetGanancia.Close;
      CDSMovRetGanancia.Close;
      FrameMovValoresEgresos1.CDSChe3.Close;
      FrameMovValoresEgresos1.CDSMovEfectivo.Close;
      FrameMovValoresEgresos1.CDSCajaMov.Close;
      FrameMovValoresEgresos1.CDSCheques.Close;
      FrameMovValoresEgresos1.CDSMovTCCompra.Close;
      FrameMovValoresEgresos1.CDSMovTCCuota.Close;

      FrameMovValoresEgresos1.QCajaCab.Close;

    END;
  action:=caFree;
  inherited;
  //FreeAndNil(DatosOPago);
 // FreeAndNil(FormCarteraCheques);

 end;

procedure TFormOPago_2.FormCreate(Sender: TObject);
var
d,m,y:word;
begin
  inherited;
//  OPagoIni.Free;
  SinBDE := 2;
  pcDetalle.ActivePageIndex := 0;
//  FrameMovValoresEgresos1.tsDebito.TabVisible:=False;
//  FrameMovValoresEgresos1.tsTarjeta.TabVisible:=False;

  IF NOT (Assigned(DatosOPago)) THEN
    DatosOPago := TDatosOPago.Create(Self);

  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);

  DSBase.DataSet:=DatosOPago.CDSOPago;
  WITH DatosOPago DO
    BEGIN
      AddClientDataSet(CDSOPago, DSPOPago);
  //    AddClientDataSet(CDSMovCCCompra, DSPMovCCCompra);
      AddClientDataSet(CDSMovAplicaCCCompra, DSPMovAplicaCCCompra);
      AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
      AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCompra, FrameMovValoresEgresos1.DSPMovTCCompra);
      AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCuota, FrameMovValoresEgresos1.DSPMovTCCuota);
      AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
      AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
      AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos,FrameMovValoresEgresos1.DSPDebitos);
      AddClientDataSet(FrameMovValoresEgresos1.CDSChe3,FrameMovValoresEgresos1.DSPChe3);

      FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;

      AddClientDataSet(CDSRetIngBrCab, DSPRetIngBrCab);
      AddClientDataSet(CDSRetIngBrDet, DSPRetIngBrDet);
      AddClientDataSet(CDSRetGanancia, DSPRetGanancia);
      AddClientDataSet(CDSMovRetGanancia, DSPMovRetGanancia);
      AddClientDataSet(CDSRetIVA, DSPRetIVA);
      AddClientDataSet(CDSMovAux, DSPMovAux);

      CDSOPago.Open;
      CDSMovAplicaCCCompra.Open;
      CDSMovCCCompra.Open;
      CDSEmpresa.Open;
      CDSRetIngBrCab.Open;
      CDSRetIngBrDet.Open;
      CDSRetGanancia.OPen;
      CDSMovRetGanancia.OPen;
      CDSRetIVA.Open;
      CDSMovAux.Open;
      FrameMovValoresEgresos1.CDSChe3.Open;
      FrameMovValoresEgresos1.CDSMovEfectivo.Open;
      FrameMovValoresEgresos1.CDSCheques.Open;
      FrameMovValoresEgresos1.CDSCajaMov.Open;
      FrameMovValoresEgresos1.CDSTransBco.OPen;
      FrameMovValoresEgresos1.CDSDebitos.OPen;
      FrameMovValoresEgresos1.CDSMovTCCompra.Open;
      FrameMovValoresEgresos1.CDSMovTCCuota.Open;

      FrameMovValoresEgresos1.QCajaCab.Open;

      CDSOPago.EmptyDataSet;
      CDSMovAplicaCCCompra.EmptyDataSet;
      CDSMovCCCompra.EmptyDataSet;
      FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
      FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
      FrameMovValoresEgresos1.CDSCheques.EmptyDataSet;
      FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
      FrameMovValoresEgresos1.CDSTransBco.EmptyDataSet;
      FrameMovValoresEgresos1.CDSMovTCCompra.EmptyDataSet;
      FrameMovValoresEgresos1.CDSMovTCCuota.EmptyDataSet;
      FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

      DatosOPago.AplicaMascaraNumerica;
      Tabla  := 'ORDENPAGO';
      Campo  := 'id_op';
      pnAvisoRetencion.Visible            := CDSEmpresaAG_RET_GANANCIA.Value='S';
      pnAcumulados.Visible                := CDSEmpresaAG_RET_GANANCIA.Value='S';
      Pag4.TabVisible                     := CDSEmpresaAG_RET_ING_BRUTOS.Value='S';
      Pag5.TabVisible                     := CDSEmpresaAG_RET_GANANCIA.Value='S';
      //DMMain_fd.AgenteRetencionGanancias  := CDSEmpresaAG_RET_GANANCIA.Value='S';
     // DMMain_fd.AgenteRetencionIB         := CDSEmpresaAG_RET_ING_BRUTOS.Value;
    END;
  if Not(Assigned(FormSumaAplicaciones)) then
    FormSumaAplicaciones:=TFormSumaAplicaciones.Create(Self);
  pnTotal.BevelKind  := bkNone;
  pnTotal.BevelInner := bvNone;
  pnTotal.BevelOuter := bvNone;
  pnSaldo.BevelKind  := bkNone;
  pnSaldo.BevelInner := bvNone;
  pnSaldo.BevelOuter := bvNone;

//  DMMain_fd.AgenteRetencionIB := DatosOPago.CDSEmpresaAG_RET_ING_BRUTOS.Value;
//  DMMain_fd.TasaRetencionIB   := DatosOPago.CDSEmpresaTASA_RET_IIBB.AsFloat;
//  DMMain_fd.Minim_Imp_IB_Rete := DatosOPago.CDSEmpresaMINIMO_IMP_RET_IIBB.AsFloat;

  DecodeDate(date,y,m,d);
  Hasta.Date := EncodeDate(y,m,DaysInMonth(y,m));
  Desde.Date := IncMonth(Hasta.Date,(-1));
  DecodeDate(Desde.Date,y,m,d);
  Desde.Date := EncodeDate(y,m,DaysInMonth(y,m))+1;
  pcMovimientosCC.ActivePageIndex:=0;
  ConsultarReproweb.Enabled := ReproWeb;
  if ReproWeb then
    dbtCuit.Cursor:=crHand
  else
    dbtCuit.Cursor:=crDefault;
  // Minimo Retencion iva Facturas M
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value := 'RETIVA';
  DMMain_FD.QOpciones.Open;
  MinimoRetIVA:=DMMain_FD.QOpciones.Fields[0].AsFloat;
  DMMain_FD.QOpciones.Close;
end;

procedure TFormOPago_2.FormDestroy(Sender: TObject);
begin
  inherited;
  FormOPago_2 := NIL;
end;

procedure TFormOPago_2.FormShow(Sender: TObject);
begin
  inherited;
  if lbGrupo<>Nil then
    lbGrupo.Caption:='Grupo';

  if DMMain_FD.UsuarioActivo<>'' Then
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_OPago.ini')
  else
    OPagoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'general_OPago.ini');
  //*************************************************************
  chbModo.Checked          := OPagoIni.ReadBool('Modo', 'Modo', False);
  UsarFiltrado             := OPagoIni.ReadBool('filtro','filtro',False);
  ItemDescto               := OPagoIni.ReadString('codigo','codigo','');

  OPagoIni.Free;
  if ItemDescto='' then
    ShowMessage('No hay defindido Conceptos de descuentos, en el caso que se haga.'+#13+
                'Configurelo, en las opciones de la O.P desde el link de Fecha');
//  sbNormal.Down    :=False;
//  sbAutomatico.Down:=False;
//  sbNormal.Down    :=Modo='N';
//  sbAutomatico.Down:=Modo='A';
  pnAvisoPadron.Visible:=False;
  btNuevo.SetFocus;
end;

procedure TFormOPago_2.FrameMovValoresEgresos1BitBtn2Click(Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.CancelChe3Execute(Sender);

end;

procedure TFormOPago_2.FrameMovValoresEgresos1Button1Click(Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.BuscarChequeraExecute(Sender);

end;

procedure TFormOPago_2.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  aux:= DatosOPago.CDSOPagoTOTAL_NETO.AsFloat -( FrameMovValoresEgresos1.SumaValores +
                                                 DatosOPago.CDSOPagoDESCUENTO.AsFloat +
                                                 DatosOPago.CDSRetIngBrCabTOTAL.AsFloat +
                                                 DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                 DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat+
                                                 DatosOPago.SumaAux );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(DatosOPago.MascaraGral,aux);
end;


procedure TFormOPago_2.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= DatosOPago.CDSOPagoTOTAL_NETO.AsFloat -( FrameMovValoresEgresos1.SumaValores +
                                                 DatosOPago.CDSOPagoDESCUENTO.AsFloat +
                                                 DatosOPago.CDSRetIngBrCabTOTAL.AsFloat +
                                                 DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat +
                                                 DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat+
                                                 DatosOPago.SumaAux );
  FrameMovValoresEgresos1.lbResto.Caption := FormatFloat(DatosOPago.MascaraGral,aux);

end;


procedure TFormOPago_2.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);
end;


procedure TFormOPago_2.FrameMovValoresEgresos1spLoteChequesClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.spLoteChequesClick(Sender);

end;

procedure TFormOPago_2.GenerarRetIIBBExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if (DatosOPago.CDSOPagoRETIENE_IIBB.Value='S') and (datosOPago.CDSMovAplicaCCCompra.RecordCount>0) and (DatosOPago.SumaAplicaciones>0) Then
        begin
          DatosOPago.CDSOPago.edit;
          Agregar_Ret_IngBr.Execute;
          Confirma_Ret_IngBr.Execute;
          DatosOPago.CDSRetIngBrCab.ApplyUpdates(0);
          DatosOPago.CDSRetIngBrDet.ApplyUpdates(0);
//          DatosOPago.CDSOPago.edit;
          datosOPago.CDSOPagoTOTAL_NETOSetText(datosOPago.CDSOPagoTOTAL_NETO,FloatToStr(datosOPago.CDSOPagoTOTAL_NETO.AsFloat+DatosOPago.CDSRetIngBrCabTOTAL.AsFloat));
          DatosOPago.CDSOPagoPERMITIR_MODIF_TOTAL.Value:='S';
          DatosOPago.CDSOPago.Post;
          DatosOPago.CDSOPago.ApplyUpdates(0);
        end
      else
        ShowMessage('No se Retiene Ingr. Brutos..');

    end;
end;

procedure TFormOPago_2.GravarNumeroOperacionExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State = dsBrowse) and (Not(DSBase.DataSet.IsEmpty)) then
    begin
      if Not(Assigned(FormNumeroOperacion)) then
        FormNumeroOperacion    :=TFormNumeroOperacion.Create(Self);
      FormNumeroOperacion.Id   :=DatosOPago.CDSOPagoID_OP.Value;
      FormNumeroOperacion.Tipo :=DatosOPago.CDSOPagoTIPOCPBTE.Value;
      if (DatosOPago.CDSOPagoNUMERO_OPERACION.AsString='') or (length(DatosOPago.CDSOPagoNUMERO_OPERACION.AsString)<8) then
        FormNumeroOperacion.Anio:= Copy(DateToStr(DatosOPago.CDSOPagoFECHA.AsDateTime),7,4)
      else
        begin
          FormNumeroOperacion.Anio  := Copy(DatosOPago.CDSOPagoNUMERO_OPERACION.AsString,1,4);
          FormNumeroOperacion.Numero:= Copy(DatosOPago.CDSOPagoNUMERO_OPERACION.AsString,5,4);
        end;
      FormNumeroOperacion.ShowModal;
      Recuperar.Execute;
    end;
end;

procedure TFormOPago_2.pcDetalleChange(Sender: TObject);
var aux:Extended;
begin
  inherited;
  if DSBase.State<>dsBrowse Then
    begin
      WITH FrameMovValoresEgresos1 DO
        BEGIN
          if (DSBase.State in [dsInsert,dsEdit]) and (ceCaja.Text='') Then
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
          TipoCpbte      := DatosOpago.CDSOPagoTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := DatosOPago.CDSOPagoCLASECPBTE.Value;
          NroCpbte       := DatosOPago.CDSOPagoNROCPBTE.Value;
          FechaOperacion := DatosOPago.CDSOPagoFECHA.AsDateTime;
          IdCpbte        := DatosOPago.CDSOPagoID_OP.Value;
          Origen         := DatosOPago.CDSOPagoRAZONSOCIAL.Value;
        END;
        pnCabecera.Enabled:=False;
    end;
 // pnCabecera.Enabled := pcDetalle.ActivePageIndex = 0;
   aux:= DatosOPago.CDSOPagoTOTAL_NETO.AsFloat -( FrameMovValoresEgresos1.SumaValores +
                                                  DatosOPago.CDSOPagoDESCUENTO.AsFloat +
                                                  DatosOPago.CDSRetIngBrCabTOTAL.AsFloat +
                                                  DatosOPago.CDSRetGananciaIMPUESTO_RETENIDO.AsFloat+
                                                  DatosOPago.CDSRetIVAIMPUESTO_RETENIDO.AsFloat );
   FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(DatosOPago.MascaraGral,aux);
end;

procedure TFormOPago_2.pcDetalleEnter(Sender: TObject);
begin
  inherited;
  IF DatosOPago.CDSOPago.State=dsInsert THEN
    IF (dbeTotal.Text<>'') and
       //(Moneda3D(' ',FrameMovValoresEgresos1.MascaraImportes,StrToFloat(dbeTotal.Text))>0) and
       (dbeFecha.Text<>'') and
       (dbeSuc.Text<>'') and (dbeLetra.Text<>'') and (dbeSuc.Text<>'') and
       (dbeNumero.Text<>'') and (RxDBECodigo.Text<>'') and (DatosOPago.CDSOPagoMUESTRACOMPROBANTE.AsString<>'')
    THEN
      begin
        pcDetalle.Enabled:=True;
       // pnCabecera.Enabled:=True;
      end
    else
      begin
        if DSBase.State<>dsBrowse Then
          begin
            ShowMessage('Faltan datos en el encabezado...');
            pcDetalle.ActivePageIndex:=0;
            pnCabecera.Enabled:= True;
            dbeFecha.SetFocus;
          end;  
      end;

end;

procedure TFormOPago_2.DSBaseStateChange(Sender: TObject);
begin
  inherited;
//  if (pnPrincipal <> nil) then

  pnPrincipal.Enabled       := True;
  pnCabecera.Enabled        := DSBase.State IN [dsInsert];
  pcDetalle.Enabled         := True;
  VerImputaciones.Enabled   := DSBase.State IN [dsInsert];
  BuscarPendientes.Enabled  := DSBase.State IN [dsInsert, dsEdit];
  dbgAplicaciones.ReadOnly  := DSBase.State=dsBrowse;
  dbgMovCC.Enabled          := DSBase.State IN [dsInsert, dsEdit];
  Modificar.Enabled         := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  Borrar.Enabled            := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
 // pcDetalle.Enabled         := (NOT (DSBase.DataSet.IsEmpty));
  Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  //ImprimirRetencionRanancia.Enabled  := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));

  Agregar_Ret_IngBr.Enabled := (DSBase.State IN [dsInsert, dsEdit]) and (NOT (DSBase.DataSet.IsEmpty));
  dbgAplicaciones.Refresh;
  dbgMovCC.Refresh;
  Recalcular.Enabled        := DSBase.State IN [dsInsert, dsEdit];
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsTransf.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  btImprimir.Enabled:= (DSBase.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  if DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled:= DSBase.State IN [dsInsert];
  RxDBESucursal.Enabled     :=DMMain_FD.ModificaSucursal;

  CambiarClaseCpbte.Enabled := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);

  CambiarCodigo.Enabled           := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  EnviarCorreo.Enabled            := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]);
  BorrarTodasAplicaciones.Enabled := (NOT (DSBase.DataSet.IsEmpty)) and  (DSBase.State IN [dsInsert,dsEdit]);

  RevisiondeNetosMes.Enabled      :=(DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) and
                                    ((DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master'));

end;


procedure TFormOPago_2.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;

  DatosOPago.QComprob.Close;
  DatosOPago.QComprob.ParamByName('id').Value :=DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.Value;
  DatosOPago.QComprob.ParamByName('suc').Value:=DatosOPago.CDSOPagoSUCURSAL.Value;
  DatosOPago.QComprob.Open;

  frOPago.PrintOptions.Printer:=PrNomCpbte;
  frOPago.SelectPrinter;

  frOPago.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosOPago.QComprobREPORTE.AsString);
  frOPago.Variables['Mascara']     :=''''+DatosOPago.MascaraGral+'''';
  frOPago.Variables['importeletra']:=''''+numero2letras(DatosOPago.CDSOPagoTOTAL.AsFloat)+'''';
  frOPago.Variables['sucursal']    :=''''+dbeSucursal.Text+'''';

  frOPago.PrintOptions.Copies :=1;

  DatosOPago.QComprob.Close;
  frxPDFExport1.ShowDialog :=False;
  frxPDFExport1.FileName   :=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
  frOPago.PrepareReport;
  frOPago.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog :=True;

  if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) and (DatosOPago.CDSRetIngBrCabTOTAL.AsFloat>0) Then
    begin
      DatosOPago.QComprobRetIngBr.Close;
      DatosOPago.QComprobRetIngBr.ParamByName('suc').Value:=DatosOPago.CDSOPagoSUCURSAL.Value;
      DatosOPago.QComprobRetIngBr.Open;

      frRentIngBr.PrintOptions.Printer:=PrNomCpbte;
      frRentIngBr.SelectPrinter;

      frRentIngBr.LoadFromFile(DMMain_FD.PathReportesLst+'\'+DatosOPago.QComprobRetIngBrREPORTE.AsString);

      frRentIngBr.Variables['Mascara']  :=''''+DatosOPago.MascaraGral+'''';
      frxPDFExport1.EmbeddedFonts:=True;
      frxPDFExport1.ShowDialog   :=False;
      frxPDFExport1.FileName     :=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionIIBB'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
      frRentIngBr.PrepareReport;
      frRentIngBr.Export(frxPDFExport1);
      frxPDFExport1.ShowDialog   :=True;
      DatosOPago.QComprobRetIngBr.Close;

    end;


  if (Not(DatosOPago.CDSRetGanancia.IsEmpty)) Then
    begin
      frRetGanancia.PrintOptions.Printer:=PrNomCpbte;
      frRetGanancia.SelectPrinter;

      frRetGanancia.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionGanancia.fr3');
      frxPDFExport1.EmbeddedFonts :=True;
      frxPDFExport1.ShowDialog    :=False;
      frxPDFExport1.FileName      :=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionGanacia'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
      frRetGanancia.PrepareReport;
      frRetGanancia.Export(frxPDFExport1);
      frxPDFExport1.ShowDialog :=True;
    end;

  if (Not(DatosOPago.CDSRetIVA.IsEmpty)) Then
    begin
      frRetencionIVA.PrintOptions.Printer:=PrNomCpbte;
      frRetencionIVA.SelectPrinter;

      frRetencionIVA.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionIVA.fr3');

      frxPDFExport1.ShowDialog:=False;
      frxPDFExport1.EmbeddedFonts:=True;
      frxPDFExport1.FileName:=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionIVA'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
      frRetencionIVA.PrepareReport;
      frRetencionIVA.Export(frxPDFExport1);
      frxPDFExport1.ShowDialog:=True;
    end;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.Destinatario        :=DatosOPago.CDSOPagoNOMBRE.AsString;
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.CorreoDestino       :=DatosOPago.CDSOPagoMUESTRACORREO.Value;
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
  FormCorreo.Asunto              :='Orden Pago - '+ DatosOPago.CDSOPagoLETRAOP.AsString+
                                   '-'+ DatosOPago.CDSOPagoSUCOP.AsString+
                                   '-'+ DatosOPago.CDSOPagoNUMEROOP.AsString+
                                   ' del '+ FormatDateTime('dd-mm-yy',DatosOPago.CDSOPagoFECHA.AsDateTime);
 // FormCorreo.Adjunto             :=ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf';

  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
  if (Not(DatosOPago.CDSRetGanancia.IsEmpty)) Then
    FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionGanacia'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
  if (Not(DatosOPago.CDSRetIVA.IsEmpty)) Then
    FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionIVA'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');
  if (Not(DatosOPago.CDSRetIngBrCab.IsEmpty)) Then
    FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\OrdenPago_RetencionIIBB'+DatosOPago.CDSOPagoNROCPBTE.AsString+'.pdf');

  FormCorreo.Show;
end;

procedure TFormOPago_2.RecalcularExecute(Sender: TObject);
begin
  inherited;
  DatosOPago.CalcularAplicaciones;
end;

procedure TFormOPago_2.RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOPago.CDSOPagoSUCURSAL.Clear;
      DatosOPago.CDSOPagoMUESTRASUCURSAL.Clear;
      DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.Clear;
      DatosOPago.CDSOPagoMUESTRACOMPROBANTE.Clear;
      DatosOPago.CDSOPagoLETRAOP.Clear;
      DatosOPago.CDSOPagoSUCOP.Clear;
      DatosOPago.CDSOPagoNUMEROOP.Clear;
    end;

end;

procedure TFormOPago_2.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frOPago.DesignReport;
end;

procedure TFormOPago_2.SumarNetosAcumulados1Click(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsEdit) then
    DatosOPago.SumarNetosAcumulados;
end;

procedure TFormOPago_2.SumarNetosAplicadosExecute(Sender: TObject);
begin
  inherited;
  DatosOPago.SumarNetosAplicados;
  Recuperar.Execute;
end;

procedure TFormOPago_2.TraerCtaCteExecute(Sender: TObject);
VAR
  Debe, Haber,SaldoInicial: Real;
BEGIN
  if (Hasta.Date>=Desde.Date) Then
    begin
      DatosOPago.QSaldoInicial.Close;
      DatosOPago.QSaldoInicial.ParamByName('Codigo').Value:= DatosOPago.CDSOPagoCODIGO.AsString;
      DatosOPago.QSaldoInicial.ParamByName('Desde').Value := Desde.Date;
      DatosOPago.QSaldoInicial.SQL.Text:= 'select sum(debe)as debe, sum(haber) as haber from SALDO_INICIAL_CTACTE_COMP (:codigo,:desde ) ';
      DatosOPago.QSaldoInicial.Open;

      SaldoInicial:=0;

      DatosOPago.QSaldoInicial.First;
      while not(DatosOPago.QSaldoInicial.Eof) do
        begin
          SaldoInicial:= SaldoInicial + DatosOPago.QSaldoInicialHaber.AsFloat-DatosOPago.QSaldoInicialDebe.AsFloat;
          DatosOPago.QSaldoInicial.Next;
        end;

      DatosOPago.QSaldoInicial.Close;

      DatosOPago.CDSMovCC.Close;
      DatosOPago.CDSMovCC.CommandText:= 'select * from MOV_CTACTE_COMP (:codigo,:desde,:hasta ) '+
                                        ' order by fechaCompra,tipocpbte ';
      DatosOPago.CDSMovCC.Params.ParamByName('Codigo').Value := DatosOPago.CDSOPagoCODIGO.AsString;
      DatosOPago.CDSMovCC.Params.ParamByName('Desde').Value  := Desde.Date;
      DatosOPago.CDSMovCC.Params.ParamByName('Hasta').Value  := Hasta.Date;
      DatosOPago.CDSMovCC.Open;
      Debe  := 0;
      Haber := SaldoInicial;
      DatosOPago.CDSMovCC.DisableControls;
      DatosOPago.CDSMovCC.First;
      WHILE NOT (DatosOPago.CDSMovCC.Eof) DO
        BEGIN
          Debe  := DatosOPago.CDSMovCCDEBE.AsFloat + Debe;
          Haber := DatosOPago.CDSMovCCHABER.AsFloat + Haber;
          DatosOPago.CDSMovCC.Edit;
          DatosOPago.CDSMovCCSaldoCC.Value := Haber - Debe;
          DatosOPago.CDSMovCC.Post;
          DatosOPago.CDSMovCC.Next;
        END;
      DatosOPago.CDSMovCC.EnableControls;
    end
  else
    ShowMessage('La fecha HASTA debe ser mayor o igual a DESDE');
end;

procedure TFormOPago_2.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  inherited;
  if Button=btnext Then
    Desde.Date := IncMonth(Desde.Date,1)
  else
    if Button=btPrev Then
      Desde.Date := IncMonth(Desde.Date,-1);
  TraerCtaCte.Execute;
end;

procedure TFormOPago_2.VerImputacionesExecute(Sender: TObject);
begin
  inherited;
 if not(Assigned(FormAplicacionesCCCompra_2)) then
    FormAplicacionesCCCompra_2:=TFormAplicacionesCCCompra_2.Create(Self);
  FormAplicacionesCCCompra_2.edCodigo.Text:=RxDBECodigo.Text;
  FormAplicacionesCCCompra_2.VerCCte.Execute;
  FormAplicacionesCCCompra_2.Show;
  BuscarPendientes.Execute;
end;

procedure TFormOPago_2.btnSumaClick(Sender: TObject);
begin
  inherited;
  BorrarTodasAplicaciones.Execute;
  BuscarPendientes.Execute;
  FormSumaAplicaciones.ShowModal;
end;

procedure TFormOPago_2.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.Clear;
      DatosOPago.CDSOPagoMUESTRACOMPROBANTE.Clear;
      DatosOPago.CDSOPagoLETRAOP.Clear;
      DatosOPago.CDSOPagoSUCOP.Clear;
      DatosOPago.CDSOPagoNUMEROOP.Clear;
    end;

end;

procedure TFormOPago_2.RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosOPago.CDSOPagoCODIGO .Clear;
      DatosOPago.CDSOPagoRAZONSOCIAL.Clear;
    end;
end;

procedure TFormOPago_2.Panel1Click(Sender: TObject);
begin
  inherited;
  if pcDetalle.ActivePageIndex=4 Then   frRetGanancia.DesignReport
  else
  frOPago.DesignReport;
end;

procedure TFormOPago_2.Agregar_Ret_IngBrExecute(Sender: TObject);
begin
  inherited;
  if DatosOPago.CDSOPagoRETIENE_IIBB.Value='S' Then
    if (DSBase.DataSet.State in [dsInsert,dsEdit]) Then
      if (Not(DSBase.DataSet.IsEmpty)) Then
        if (DatosOPago.CDSMovAplicaCCCompra.RecordCount>0) then
           DatosOPago.CDSRetIngBrCab.Insert
        else
          ShowMessage('No Hay Aplicaciones')
      else
        ShowMessage('No Hay O.de Pago Inciada')
    else
      ShowMessage('No esta en modo Insert o Edicion')
  else
    ShowMessage('No Corresponde retencion');
end;

procedure TFormOPago_2.Confirma_Ret_IngBrExecute(Sender: TObject);
begin
  inherited;
  if DatosOPago.CDSRetIngBrDet.state<>dsBrowse Then
    DatosOPago.CDSRetIngBrDet.Post;
  if DatosOPago.CDSRetIngBrCab.state<>dsBrowse Then
    DatosOPago.CDSRetIngBrCab.Post;
  //DatosOPago.CalcularAplicaciones;
end;

procedure TFormOPago_2.ConsultarReprowebExecute(Sender: TObject);
begin
  inherited;
  if ReproWeb then
    begin
      if Not(Assigned(FormReproWeb)) then
        FormReproWeb:=TFormReproWeb.Create(self);
      FormReproWeb.CuitEmpresa   := DatosOPago.CDSEmpresaCUIT.ASString;
      FormReproWeb.CuitProveedor := DatosOPago.CDSOPagoCUIT.AsString;
      FormReproWeb.Periodo       := DatosOPago.CDSOPagoFECHA.AsDateTime;
      FormReproWeb.ClavePrivada  := ClaveElectronica;
      FormReproWeb.Certificado   := CertificadoElectronico;
      FormReproWeb.Modo          := ModoFcElectronica;
      FormReproWeb.ShowModal;
      if (FormReproWeb.CodigoReq<>'') and (FormReproWeb.CodigoReq[1] in ['1','2','4']) then
        DatosOPago.RetenerIva:=True
      else
        DatosOPago.RetenerIva:=False;
    end;
end;

procedure TFormOPago_2.Cancelar_Ret_IngBrExecute(Sender: TObject);
begin
  inherited;
  DatosOPago.CDSRetIngBrDet.First;
  if Not(DatosOPago.CDSRetIngBrDet.IsEmpty) Then
   while not (DatosOPago.CDSRetIngBrDet.Eof) do
     DatosOPago.CDSRetIngBrDet.DELETE;
//  DatosOPago.CDSRetIngBrDet.Cancel;
  DatosOPago.CDSRetIngBrCab.Cancel;
  DatosOPago.CalcularAplicaciones;
end;

procedure TFormOPago_2.chbModoClick(Sender: TObject);
begin
  inherited;
  if chbModo.Checked then
    chbModo.Caption:='Suma Pendiente'
  else
    if Not(chbModo.Checked) then
      chbModo.Caption:='No Suma Pendiente';

end;

procedure TFormOPago_2.Imprimir_Ret_IngBrExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosOPago.CDSRetIngBrCab.IsEmpty) then
    begin
      DMMain_FD.QOpciones.Close;
      DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
      DMMain_FD.QOpciones.Open;

      DatosOPago.QComprobRetIngBr.Close;
      DatosOPago.QComprobRetIngBr.ParamByName('suc').Value:=DatosOPago.CDSOPagoSUCURSAL.Value;
      DatosOPago.QComprobRetIngBr.Open;

      frRentIngBr.PrintOptions.Printer:=PrNomCpbte;
      frRentIngBr.SelectPrinter;

      frRentIngBr.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\'+DatosOPago.QComprobRetIngBrREPORTE.AsString);
      frRentIngBr.PrintOptions.Copies :=DatosOPago.QComprobRetIngBrCOPIAS.Value;

      frRentIngBr.Variables['Mascara']  :=''''+DatosOPago.MascaraGral+'''';

      DatosOPago.QComprobRetIngBr.Close;
      DMMain_FD.QOpciones.Close;
      frRentIngBr.PrepareReport;
      frRentIngBr.ShowReport;
    end;
end;

procedure TFormOPago_2.pnConfigReporteDblClick(Sender: TObject);
begin
  inherited;
  frRentIngBr.DesignReport;
end;

procedure TFormOPago_2.pnRetencionExit(Sender: TObject);
begin
  inherited;
  pnRetencion.Enabled:=False;
end;

procedure TFormOPago_2.PrevExecute(Sender: TObject);
begin
  condicion:=' and tipocpbte ='+AnsiQuotedStr( DatosOPago.CDSOPagoTIPOCPBTE.AsString,'''') +
             ' and clasecpbte='+AnsiQuotedStr(DatosOPago.CDSOPagoCLASECPBTE.AsString,'''') +
             ' and sucursal  ='+DatosOPago.CDSOPagoSUCURSAL.AsString;
   inherited;

end;

procedure TFormOPago_2.QuitarMarcaGananciaExecute(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  DatosOPago.CDSOPagoRETIENE_GANACIAS.Value:='N';
  Confirma.Execute;
end;

procedure TFormOPago_2.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  FormSumaAplicaciones.Visible := False;

//  if (FormSumaAplicaciones.Visible=True) then
//    FormSumaAplicaciones.Close;

  DatosOPago.CDSOPago.close;
  DatosOPago.CDSOPago.Params.ParamByName('id').Value := DatoNew;
  DatosOPago.CDSOPago.Open;

  if Not(DatosOPago.CDSOPago.IsEmpty) then
    condicion:=' and tipocpbte ='+AnsiQuotedStr(DatosOPago.CDSOPagoTIPOCPBTE.AsString,'''') +
               ' and clasecpbte='+AnsiQuotedStr(DatosOPago.CDSOPagoCLASECPBTE.AsString,'''');



  DatosOPago.CDSMovAplicaCCCompra.Close;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('id').Value   := DatoNew;
  DatosOPago.CDSMovAplicaCCCompra.Params.ParamByName('Tipo').Value := TipoCpbte;
  DatosOPago.CDSMovAplicaCCCompra.Open;

  DatosOPago.CDSMovCCCompra.Close;
  DatosOPago.CDSMovCCCompra.Params.ParamByName('Codigo').Clear;
  DatosOPago.CDSMovCCCompra.Open;

  DatosOPago.CDSACta.Close;
  DatosOPago.CDSACta.IndexDefs.Clear;
  DatosOPago.CDSACta.Params.ParamByName('codigo').Clear;
  DatosOPago.CDSACta.Open;

  DatosOPago.CDSRetIngBrCab.Close;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('id').Value  := DatoNew;
  DatosOPago.CDSRetIngBrCab.Params.ParamByName('Tipo').Value:= TipoCpbte;
  DatosOPago.CDSRetIngBrCab.Open;

  DatosOPago.CDSRetIngBrDet.Close;
  DatosOPago.CDSRetIngBrDet.Params.ParamByName('id').Value:=DatosOPago.CDSRetIngBrCabID.Value;
  DatosOPago.CDSRetIngBrDet.Open;

  DatosOPago.CDSRetGanancia.Close;
  DatosOPago.CDSRetGanancia.Params.ParamByName('id').Value:= DatoNew;
  DatosOPago.CDSRetGanancia.Open;

  DatosOPago.CDSMovRetGanancia.Close;
  DatosOPago.CDSMovRetGanancia.Params.ParamByName('id_op').Value:= DatoNew;
  DatosOPago.CDSMovRetGanancia.Open;

  DatosOPago.CDSRetIVA.Close;
  DatosOPago.CDSRetIVA.Params.ParamByName('id').Value:= DatoNew;
  DatosOPago.CDSRetIVA.Open;

  DatosOPago.CDSMovAux.Close;
  DatosOPago.CDSMovAux.Params.ParamByName('id').Value:= DatoNew;
  DatosOPago.CDSMovAux.Open;

  FrameMovValoresEgresos1.TipoOperacion := 'E';

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text        := FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text := FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja            := FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresEgresos1.id_Cuenta_caja     := FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresEgresos1.FechaCaja          := FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Value  := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSMovTCCompraID_CUPON.Value;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.CalcularValores;

  //DatosOPago.CalcularAplicaciones;
  DatosOPago.SumarAplicaciones;
  DatosOPago.SumarAux;

  IF DatosOPago.CDSOPago.State <> dsBrowse THEN
    DatosOPago.CDSOPago.Cancel;

  pcDetalle.Enabled  :=True;
  pnPrincipal.Enabled:=true;

  // VERIFICO SI LA CAJA ESTA CERRADA
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
    begin
      sbEstado.SimpleText:='La caja de está cerrada, no se puede modificar ni borrar';
      btModificar.Enabled              := False;
      btBorrar.Enabled                 := False;
      RevisionValoresEgresados.Enabled := False;
    end
  else
    begin
      btModificar.Enabled              := True;
      btBorrar.Enabled                 := True;
      RevisionValoresEgresados.Enabled := True;

    end;
  ceImpuestoCalculado.Value:=0;
  ceImpuestoAPagar.Value   :=0;
  DatoNew:=''+DatoNew+'';
  FormOPago_2.Caption:='Orden de Pago -- '+DatosOPago.CDSOPagoFECHA_HORA.AsString+'//'+Copy(DatosOPago.CDSOPagoUSUARIO.Value,1,15);

  if DMMain_FD.HayFiltros then
    FormOPago_2.GrupoOpa:=DMMain_FD.GrupoCpbteCompras(DatosOPago.CDSOPagoID_TIPOCOMPROBANTE.AsInteger);

  BorrarAplicacion1.Enabled        := (NOT (DSBase.DataSet.IsEmpty)) AND (DSBase.State IN [dsBrowse]) and (DatosOPago.CDSMovAplicaCCCompra.IsEmpty=False);
  BorrarTodasAplicaciones.Enabled  := (NOT (DSBase.DataSet.IsEmpty)) AND (Not(DSBase.State IN [dsBrowse])) and (DatosOPago.CDSMovAplicaCCCompra.IsEmpty=False);
  if RevisionValoresEgresados.Enabled then
    RevisionValoresEgresados.Enabled := (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master');

end;

procedure TFormOPago_2.RevisiondeNetosMesExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.DataSet.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    if (DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master') then
      begin
        if Not(Assigned(FormControlNetosOPago)) then
          FormControlNetosOPago:=TFormControlNetosOPago.Create(self);
        FormControlNetosOPago.Codigo  := DSBase.DataSet.FieldByName('Codigo').Value;
        FormControlNetosOPago.Fecha   := DSBase.DataSet.FieldByName('Fecha').AsDateTime;
        FormControlNetosOPago.ShowModal;
        FreeAndNil(FormControlNetosOPago);
        Recuperar.Execute;
      end;

end;

procedure TFormOPago_2.RevisionValoresEgresadosExecute(Sender: TObject);
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
        FormRevisionValoresEgresados.Id_Comprobante  := DSBase.DataSet.FieldByName('Id_op').Value;
        FormRevisionValoresEgresados.TipoComprobante := DSBase.DataSet.FieldByName('TipoCpbte').Value;
        FormRevisionValoresEgresados.ClaseComprob    := DSBase.DataSet.FieldByName('ClaseCpbte').Value;
        FormRevisionValoresEgresados.ImporteOriginal := StrToFloat(Aux);
        FormRevisionValoresEgresados.Id_Caja         := FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
        FormRevisionValoresEgresados.Id_Cta_Caja     := FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
        FormRevisionValoresEgresados.NroComprobante  := DSBase.DataSet.FieldByName('NroCpbte').Value;
        FormRevisionValoresEgresados.FechaOperacion  := DSBase.DataSet.FieldByName('Fecha').Value;
        FormRevisionValoresEgresados.Origen          := DSBase.DataSet.FieldByName('RAZONSOCIAL').Value;
        FormRevisionValoresEgresados.Show;
      end;
end;

procedure TFormOPago_2.dbgMovCCTitleBtnClick(Sender: TObject; ACol: Integer;
  Field: TField);
VAR campo:String;
begin
 try
   Campo := Field.FieldName;
   with dbgMovCC.DataSource.DataSet as TClientDataSet do
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

procedure TFormOPago_2.dbgMovCCTitleClick(Column: TColumn);
var i:Byte;
begin
  inherited;
  for i:=0 to dbgMovCC.Columns.Count-1 do
    begin
      dbgMovCC.Columns[i].Title.Font.Style:=[fsBold];
      dbgMovCC.Columns[i].Title.Font.Color:=clwhite;
    end;
  dbgMovCC.Columns[Column.Index].Title.Font.Style:=[];
  dbgMovCC.Columns[Column.Index].Title.Font.Color:=clYellow;
 
end;


procedure TFormOPago_2.dbgMovEnter(Sender: TObject);
begin
  inherited;
  if dbgMov.SelectedIndex<1 then
    dbgMov.SelectedIndex:=1;
end;

procedure TFormOPago_2.dbgMovKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
 IF Key = #13 THEN
    BEGIN
      Key := #0;

      IF (dbgMov.SelectedIndex < 2) THEN
        dbgMov.SelectedIndex := dbgMov.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgMov.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgMov.DataSource.DataSet.Append;
          dbgMov.SelectedIndex := 1;
        END;
    END
  ELSE
    if (key = #27) then
      dbgMov.DataSource.DataSet.Cancel;
end;

procedure TFormOPago_2.DBText1DblClick(Sender: TObject);
begin
  inherited;
  if pnRetencion.Enabled=False then
    pnRetencion.Enabled:=True;
end;

procedure TFormOPago_2.onsuxt2Click(Sender: TObject);
begin
  inherited;
  ConsultarReproweb.Execute;
end;

procedure TFormOPago_2.dbtNC_NROCOMPROBClick(Sender: TObject);
begin
  inherited;
  if DatosOPago.CDSOPagoNC_ID_FC.AsString<>'' then
    begin
      if not(Assigned(FormCompra_2)) then
        FormCompra_2:=TFormCompra_2.Create(Application);
      FormCompra_2.DatoNew  :=DatosOPago.CDSOPagoNC_ID_FC.AsString;
      FormCompra_2.TipoCpbte:='NC';
      FormCompra_2.Recuperar.Execute;
    end
end;

procedure TFormOPago_2.dbgMovCCMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if Y<=16 Then
    dbgMovCC.DragMode:=dmManual
  else
    dbgMovCC.DragMode:=dmAutomatic;
end;

procedure TFormOPago_2.dbgAplicacionesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Key=VK_F3) and (Shift=[ssCtrl])	Then
    BorrarAplicacion.Execute;
end;

procedure TFormOPago_2.BorrarAplicacionExecute(Sender: TObject);
var HayRet,HayRetIIBB:Boolean;
begin
  inherited;
  HayRet    :=DatosOPago.CDSRetGananciaID.AsString<>'';
  HayRetIIBB:=DatosOPago.CDSRetIngBrCabID.AsString<>'';

  if (HayRet) then
    Raise Exception.Create ('No se puede Borrar Los Movimientos, hay retenciones de ganancia ...');

  if (HayRetIIBB) then
    Raise Exception.Create ('No se puede Borrar Los Movimientos, hay Ret. de IIBB ...');

  if DMMain_FD.UsuarioAdministrador=True Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        DMStoreProcedure.spBorrarAplicacionesComp.Close;
        DMStoreProcedure.spBorrarAplicacionesComp.ParamByName('id').Value  :=DatosOPago.CDSOPagoID_OP.Value;
        DMStoreProcedure.spBorrarAplicacionesComp.ParamByName('tipo').Value:='OP';
        DMStoreProcedure.spBorrarAplicacionesComp.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No se pudo hacer la Operación');
      end;
      DMStoreProcedure.spBorrarAplicacionesVta.Close;
      Recuperar.Execute;
    end
  else
    ShowMessage('No esta autorizado para esta Operación....Solo los Administradores.');
end;

procedure TFormOPago_2.dbeFechaExit(Sender: TObject);
begin
  inherited;
   if (FormOPago_2<>nil) and (FormOPago_2.Visible=True) and (DSBase.DataSet.State in [dsInsert,dsEdit]) then
     begin
       if dbeFecha.EditText[1]=' ' Then
         dbeFecha.SetFocus;
       DatosOPago.CDSOPagoFECHASetText(DatosOPago.CDSOPagoFECHA,dbeFecha.Text);
     end;
end;

procedure TFormOPago_2.ImprimirRetencionRananciaExecute(Sender: TObject);
begin
  inherited;
 if (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty)) and (Not(DatosOPago.CDSRetGanancia.IsEmpty)) Then
   begin
    
     frRetGanancia.PrintOptions.Printer:=PrNomCpbte;
     frRetGanancia.SelectPrinter;

     frRetGanancia.LoadFromFile(DMMain_FD.PathReportesLst+'\RetencionGanancia.fr3');

     DMMain_FD.QOpciones.Close;
     frRetGanancia.PrepareReport;
     frRetGanancia.ShowReport;
     //btImprimirRetencion.SetFocus;
   end
 else
   ShowMessage('Debe terminar la carga del comprobante.......');

end;

procedure TFormOPago_2.Panel2DblClick(Sender: TObject);
begin
  inherited;
  frRentIngBr.DesignReport;
end;

procedure TFormOPago_2.AplicaAutoExecute(Sender: TObject);
begin
  inherited;
  DatosOPago.CDSMovCCCompra.First;
  while (Trunc(DatosOPago.CDSOPagoSALDO_APLICAR.AsFloat * 1000)>0) and (Not(DatosOPago.CDSMovCCCompra.Eof)) do
    begin
      if (DMMain_FD.HayFiltros=True) then
        begin
          DMStoreProcedure.spMovCtaCteComp_Grupo.Close;
          DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('Id_Mov').Value:= DatosOPago.CDSMovCCCompraID_MOVCCCOMPRA.Value;
          DMStoreProcedure.spMovCtaCteComp_Grupo.ExecProc;
          if DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('id_grupo').AsString<>'' then
            GrupoMov:=DMStoreProcedure.spMovCtaCteComp_Grupo.ParamByName('id_grupo').Value
          else
            GrupoMov:=-1;
//          GrupoMov:=DMMain.spMovCtaCteComp_Grupo.ParamByName('id_grupo').Value;
          DMStoreProcedure.spMovCtaCteComp_Grupo.Close;
        end
      else
        GrupoMov := -1;

      if (GrupoMov=GrupoOpa) then
        dbgAplicacionesDragDrop( Sender, dbgMovCC,10,10);
      DatosOPago.CDSMovCCCompra.Next;
    end;
end;

procedure TFormOPago_2.AsignarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAsignaObras)) then
    FormAsignaObras:=TFormAsignaObras.Create(self);
  FormAsignaObras.Tipo      := DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
  FormAsignaObras.id_origen := DSBase.DataSet.FieldByName('ID_OP').Value;
  FormAsignaObras.Id_Obra   := DSBase.DataSet.FieldByName('ID_OBRA').Value;
  FormAsignaObras.ShowModal;
  DatoNew:=DSBase.DataSet.FieldByName('ID_OP').AsString;
  Recuperar.Execute;
  if (Assigned(FormAsignaObras)) then
    FreeAndNil(FormAsignaObras);
end;

end.

