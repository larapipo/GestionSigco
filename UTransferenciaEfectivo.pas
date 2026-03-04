unit UTransferenciaEfectivo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, Mask, Provider, Db, DBClient,
  ActnList, ImgList, Buttons, ToolWin, ComCtrls, ExtCtrls,
  DBCtrls,  IBGenerator, Grids, DBGrids, DBXCommon, IniFiles, frxClass, Librerias,
  JvExStdCtrls, JvDBCombobox, JvFormPlacement, JvLabel, JvDBControls, FMTBcd,
  SqlExpr, JvExMask, JvToolEdit, frxExportPDF, JvAppStorage, JvAppIniStorage,
  System.Actions,Math,System.Types, frxDBSet, JvComponentBase, JvExControls,
  JvGradient, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, frxExportBaseDialog, System.ImageList, Vcl.Menus, frCoreClasses;

type
  TFormTransferenciaEfectivo = class(TFormABMBase)
    DSPBuscaCajaCab: TDataSetProvider;
    DSSaldo: TDataSource;
    BuscarCaja: TAction;
    DSPCajaMov: TDataSetProvider;
    IBGId_Caja_Mov: TIBGenerator;
    dbgSaldos: TDBGrid;
    DSPSaldo: TDataSetProvider;
    DSPTrans: TDataSetProvider;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    DSPSucrusal: TDataSetProvider;
    btTraeSaldos: TBitBtn;
    ToolButton1: TToolButton;
    BuscarSaldo: TAction;
    edMuestraCajaOrigen: TDBEdit;
    edMuestraCajaDestino: TDBEdit;
    Label1: TLabel;
    dbeImporte: TDBEdit;
    BitBtn1: TBitBtn;
    Imprimir: TAction;
    frTransferencia: TfrxReport;
    DSPEmpresa: TDataSetProvider;
    DSListaMov: TDataSource;
    DBEdit1: TDBEdit;
    ibgIdTransferencia: TIBGenerator;
    frDBTransferencia: TfrxDBDataset;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    ConfirmaTransaccion: TAction;
    btConfirmaTx: TBitBtn;
    pnlEstado: TPanel;
    RechazarTransaccion: TAction;
    btRechazarTx: TBitBtn;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSEmpresa: TClientDataSet;
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
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSaldo: TClientDataSet;
    CDSSaldoATransferir: TFloatField;
    CDSSaldoMONEDA: TIntegerField;
    CDSSaldoSALDO: TFloatField;
    CDSSaldoDEBE: TFloatField;
    CDSSaldoHABER: TFloatField;
    CDSSaldoFPAGO: TSmallintField;
    CDSSaldoTPAGO: TSmallintField;
    CDSSaldoCOTIZACION: TFloatField;
    CDSSaldoDETALLE: TStringField;
    CDSBuscaCajaCab: TClientDataSet;
    CDSBuscaCajaCabID_CAJA: TIntegerField;
    CDSBuscaCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSBuscaCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSBuscaCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSBuscaCajaCabESTADO: TIntegerField;
    CDSBuscaCajaCabOBS: TMemoField;
    CDSBuscaCajaCabNUMEROCAJA: TIntegerField;
    CDSBuscaCajaCabMUESTRACAJA: TStringField;
    CDSTrans: TClientDataSet;
    CDSTransID: TIntegerField;
    CDSTransTIPOCPBTE: TStringField;
    CDSTransCLASECPBTE: TStringField;
    CDSTransSUCURSAL: TIntegerField;
    CDSTransLETRA: TStringField;
    CDSTransSUC: TStringField;
    CDSTransNUMERO: TStringField;
    CDSTransCAJA_ORIGEN: TIntegerField;
    CDSTransCAJA_DESTINO: TIntegerField;
    CDSTransTIPO_TRANSFERENCIA: TStringField;
    CDSTransNROCPBTE: TStringField;
    CDSTransOBSERVACIONES: TStringField;
    CDSTransUSUARIO: TStringField;
    CDSTransESTADO: TStringField;
    CDSTransMUESTRASUCURSAL: TStringField;
    CDSTransMUESTRACAJAORIGEN: TStringField;
    CDSTransMUESTRACAJADESTINO: TStringField;
    CDSTransMUESTRACOMPROBANTE: TStringField;
    CDSTransID_TIPOCOMPROBANTE: TIntegerField;
    CDSCajaMov: TClientDataSet;
    DSCajaMov: TDataSource;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovID_CAJA: TIntegerField;
    CDSCajaMovFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSCajaMovCLASE_COMPROB: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovNRO_COMPROBANTE: TStringField;
    CDSCajaMovID_TPAGO: TIntegerField;
    CDSCajaMovID_FPAGO: TIntegerField;
    CDSCajaMovID_CUENTA_CAJA: TIntegerField;
    CDSCajaMovMONEDA: TIntegerField;
    CDSCajaMovMUESTRAFORMAPAGO: TStringField;
    CDSListaMov: TClientDataSet;
    DSPListaMov: TDataSetProvider;
    CDSListaMovID_MOV_CAJA: TIntegerField;
    CDSListaMovID_CAJA: TIntegerField;
    CDSListaMovFECHA_CAJA: TSQLTimeStampField;
    CDSListaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSListaMovTIPO_OPERACION: TStringField;
    CDSListaMovTIPO_COMPROB: TStringField;
    CDSListaMovCLASE_COMPROB: TStringField;
    CDSListaMovID_COMPROBANTE: TIntegerField;
    CDSListaMovNRO_COMPROBANTE: TStringField;
    CDSListaMovID_TPAGO: TIntegerField;
    CDSListaMovID_FPAGO: TIntegerField;
    CDSListaMovID_CUENTA_CAJA: TIntegerField;
    CDSListaMovMONEDA: TIntegerField;
    CDSListaMovMUESTRACAJA: TStringField;
    CDSListaMovNUMEROCAJA: TIntegerField;
    CDSListaMovSIGNO: TStringField;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTOMA_NRO_DE: TIntegerField;
    CDSBuscaComprobAFECTA_IVA: TStringField;
    CDSBuscaComprobAFECTA_CC: TStringField;
    CDSBuscaComprobDESGLOZA_IVA: TStringField;
    CDSBuscaComprobCOMPRA_VENTA: TStringField;
    CDSBuscaComprobCOPIAS: TIntegerField;
    CDSBuscaComprobREPORTE: TStringField;
    CDSBuscaComprobIMPRIME: TStringField;
    CDSBuscaComprobFISCAL: TStringField;
    CDSBuscaComprobNOMBREIMPRESORA: TStringField;
    CDSBuscaComprobPENDIENTEIMPRESION: TStringField;
    CDSBuscaComprobLINEAS_DETALLE: TSmallintField;
    CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscaComprobDEFECTO: TStringField;
    DSPCajaCab: TDataSetProvider;
    CDSCajaCab: TClientDataSet;
    CDSCajaCabID_CAJA: TIntegerField;
    CDSCajaCabID_CUENTA_CAJA: TIntegerField;
    CDSCajaCabFECHA_INCIO: TSQLTimeStampField;
    CDSCajaCabFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaCabSALDO_INCIAL: TFloatField;
    CDSCajaCabESTADO: TIntegerField;
    CDSCajaCabOBS: TMemoField;
    CDSCajaCabNUMEROCAJA: TIntegerField;
    CDSCajaCabMUESTRACTACAJA: TStringField;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    ceCajaOrigen: TJvDBComboEdit;
    ceCajaDestino: TJvDBComboEdit;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel8: TJvLabel;
    frxPDFExport1: TfrxPDFExport;
    SpeedButton1: TSpeedButton;
    ToolButton2: TToolButton;
    EnviarCorreo: TAction;
    BusquedaPorReferencia: TAction;
    DBText1: TDBText;
    CambioFecha: TAction;
    dbgMov: TDBGrid;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorCaja: TComBuscador;
    ComBuscadorTipoCpbte: TComBuscador;
    QListaMov: TFDQuery;
    CDSListaMovHABER: TFloatField;
    CDSListaMovDEBE: TFloatField;
    CDSListaMovESTADO: TStringField;
    CDSListaMovUNIDADES: TFloatField;
    CDSListaMovCOTIZACION: TFloatField;
    spMovEfectioDebe: TFDStoredProc;
    QSaldo: TFDQuery;
    CDSSaldoDISPONIBILIDAD: TFloatField;
    QBuscaCajaCab: TFDQuery;
    CDSBuscaCajaCabSALDO_INCIAL: TFloatField;
    QBuscaComprob: TFDQuery;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QTrans: TFDQuery;
    QTransID: TIntegerField;
    QTransTIPOCPBTE: TStringField;
    QTransCLASECPBTE: TStringField;
    QTransSUCURSAL: TIntegerField;
    QTransLETRA: TStringField;
    QTransSUC: TStringField;
    QTransNUMERO: TStringField;
    QTransCAJA_ORIGEN: TIntegerField;
    QTransCAJA_DESTINO: TIntegerField;
    QTransIMPORTE: TFloatField;
    QTransTIPO_TRANSFERENCIA: TStringField;
    QTransNROCPBTE: TStringField;
    QTransOBSERVACIONES: TStringField;
    QTransUSUARIO: TStringField;
    QTransESTADO: TStringField;
    QTransMUESTRASUCURSAL: TStringField;
    QTransMUESTRACAJAORIGEN: TStringField;
    QTransMUESTRACAJADESTINO: TStringField;
    QTransMUESTRACOMPROBANTE: TStringField;
    QTransID_TIPOCOMPROBANTE: TIntegerField;
    CDSTransIMPORTE: TFloatField;
    QCajaMov: TFDQuery;
    QCajaMovID_MOV_CAJA: TIntegerField;
    QCajaMovID_CAJA: TIntegerField;
    QCajaMovFECHA_CAJA: TSQLTimeStampField;
    QCajaMovFECHA_OPERACION: TSQLTimeStampField;
    QCajaMovTIPO_OPERACION: TStringField;
    QCajaMovTIPO_COMPROB: TStringField;
    QCajaMovCLASE_COMPROB: TStringField;
    QCajaMovID_COMPROBANTE: TIntegerField;
    QCajaMovNRO_COMPROBANTE: TStringField;
    QCajaMovHABER: TFloatField;
    QCajaMovDEBE: TFloatField;
    QCajaMovID_TPAGO: TIntegerField;
    QCajaMovID_FPAGO: TIntegerField;
    QCajaMovUNIDADES: TFloatField;
    QCajaMovCOTIZACION: TFloatField;
    QCajaMovID_CUENTA_CAJA: TIntegerField;
    QCajaMovMONEDA: TIntegerField;
    QCajaMovMUESTRAFORMAPAGO: TStringField;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    CDSCajaMovUNIDADES: TFloatField;
    CDSCajaMovCOTIZACION: TFloatField;
    QVerificaEstadoCaja: TFDQuery;
    QVerificaEstadoCajaESTADO: TIntegerField;
    QCotizacion: TFDQuery;
    QCotizacionCOTIZACION: TFloatField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    PopupMenu1: TPopupMenu;
    AbrirCaja: TAction;
    AbrirCaja1: TMenuItem;
    MarcarConfirmada: TAction;
    CDSListaMovDESCRIPCION: TStringField;
    N1: TMenuItem;
    MarcarConfirmada1: TMenuItem;
    VerCaja: TAction;
    N2: TMenuItem;
    VerCaja1: TMenuItem;
    QTransFECHA: TSQLTimeStampField;
    QTransFECHA_HORA: TSQLTimeStampField;
    CDSTransFECHA: TSQLTimeStampField;
    CDSTransFECHA_HORA: TSQLTimeStampField;
    procedure BuscarCajaExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgSaldosColEnter(Sender: TObject);
    procedure CDSSaldoATransferirSetText(Sender: TField;
      const Text: String);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSTransSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure CDSTransSUCSetText(Sender: TField; const Text: String);
    procedure CDSTransNUMEROSetText(Sender: TField; const Text: String);
    procedure CDSTransNewRecord(DataSet: TDataSet);
    procedure BuscarSaldoExecute(Sender: TObject);
    procedure CDSTransCAJA_ORIGENSetText(Sender: TField;
      const Text: String);
    procedure CDSTransCAJA_DESTINOSetText(Sender: TField;
      const Text: String);
    procedure BuscarExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCajaOrigenKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCajaDestinoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSTransID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSSaldoAfterInsert(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure PrevExecute(Sender: TObject);
    procedure NextExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure ConfirmaTransaccionExecute(Sender: TObject);
    procedure RechazarTransaccionExecute(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure BusquedaPorReferenciaExecute(Sender: TObject);
    procedure CambioFechaExecute(Sender: TObject);
    procedure dbgMovDblClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure AbrirCajaExecute(Sender: TObject);
    procedure MarcarConfirmadaExecute(Sender: TObject);
    procedure VerCajaExecute(Sender: TObject);
    procedure dbeFechaExit(Sender: TObject);
  private
    { Private declarations }
    FMovOk:boolean;
  public
    { Public declarations }
    CajaCerrada:Boolean;
    id_caja_Origen  :Integer;
    id_caja_destino :Integer;
    id_cuenta_caja_Origen :Integer;
    id_Cuenta_caja_Destino:Integer;
    Fecha_caja_Origen :TDate;
    Fecha_Caja_destino:TDate;
    Mascara:String;
    AutoConfirma,Rechazada:Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    function AsignarCaja(dato,cual:Integer):Boolean;
    procedure sumar;
    function CargaMovimientos_Caja:Boolean;
  published
    property MovOk:boolean read FMovOk write FMovOk;
  end;

var
  FormTransferenciaEfectivo: TFormTransferenciaEfectivo;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorCpbte,DMBuscadoresForm,UDMain_FD,
  DMStoreProcedureForm, UCorreo, UBuscarPorNroReferencia,
  UCambioFechaTransferenciaEfe, UCaja, UControlAperturaCaja;

{$R *.DFM}

procedure TFormTransferenciaEfectivo.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
 frTransferencia.DesignReport;
end;

procedure TFormTransferenciaEfectivo.sumar;
var p:tbookmark;
begin
  CDSTransIMPORTE.AsFloat:=0;
  CDSSaldo.DisableControls;
  p:=CDSSaldo.GetBookmark;
  CDSSaldo.First;
  while Not(CDSSaldo.Eof) Do
    begin
      QCotizacion.Close;
      QCotizacion.ParamByName('id_Tpago').Value:=CDSSaldoTPAGO.Value;
      QCotizacion.ParamByName('id_Fpago').Value:=CDSSaldoFPAGO.Value;
      QCotizacion.Open;
      CDSTransIMPORTE.AsFloat:= CDSTransIMPORTE.AsFloat + CDSSaldoATransferir.AsFloat;// * QCotizacionCOTIZACION.AsFloat;
      QCotizacion.Close;
      CDSSaldo.Next;
    end;
  CDSSaldo.GotoBookmark(p);
  CDSSaldo.FreeBookmark(p);
  CDSSaldo.EnableControls;
end;

procedure TFormTransferenciaEfectivo.VerCajaExecute(Sender: TObject);
begin
  inherited;
  begin
    if Not(Assigned(FormCaja)) then
      FormCaja:=TFormCaja.Create(Self);
    FormCaja.Recuperar(CDSListaMovID_CAJA.Value);
    FormCaja.Show;
  end;
end;

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormTransferenciaEfectivo DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSTransLETRA.AsString <> '') AND (CDSTransCLASECPBTE.Value <>'') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSTransLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSTransSUCURSAL.AsInteger;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSTransCLASECPBTE.AsString;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSTransTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSTransSUCSetText(CDSTransSUC,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSTransNUMEROSetText(CDSTransNUMERO,IntToStr(Numero));
            END;
          CDSTransTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSTransCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSTransNROCPBTE.AsString := CDSTransLETRA.AsString + CDSTransSUC.AsString + CDSTransNUMERO.AsString;
    END;
END;

FUNCTION TFormTransferenciaEfectivo.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      Result := True;
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransMuestraSucursal.Value := CDSSucursalDetalle.Value;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSTransID_TIPOCOMPROBANTESetText(CDSTransID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          //RxDBECodigo.SetFocus;
        end;
      QBuscaComprob.Close;

    END
  ELSE
    BEGIN
      Result := False;
      CDSTransMuestraSucursal.Value := '';
    END;
   CDSSucursal.Close;
END;

FUNCTION TFormTransferenciaEfectivo.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSTransSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSTransMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSTransLETRA.Value              := QComprobLETRA.Value;
      CDSTransTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSTransCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSTransMUESTRACOMPROBANTE.Value := '';
      CDSTransLETRA.Value              := '';
      CDSTransTIPOCPBTE.Value          := '';
      CDSTransCLASECPBTE.Value         := '';
    END;
END;

FUNCTION TFormTransferenciaEfectivo.AsignarCaja(Dato,Cual: Integer): Boolean;
BEGIN
  CDSCajaCab.Close;
  CDSCajaCab.Params.ParamByName('Id').Value := Dato;
  CDSCajaCab.Open;
  IF NOT (CDSCajaCab.IsEmpty) THEN
      BEGIN
        CDSTransIMPORTE.AsFloat:=0; // lo pongo en cero por si se hizo una cambio de caja
        Result:=True;
        if cual=1 Then //'ceCajaOrigen'
          begin
            CDSTransCAJA_ORIGEN.AsInteger   := CDSCajaCabID_CUENTA_CAJA.AsInteger;
            CDSTransMUESTRACAJAORIGEN.Value := CDSCajaCabMUESTRACTACAJA.Value;
            id_caja_Origen                  := CDSCajaCabID_CAJA.Value;
            Id_cuenta_caja_origen           := CDSCajaCabID_CUENTA_CAJA.Value;
            fecha_caja_Origen               := CDSCajaCabFECHA_INCIO.AsDateTime;
          end
        else
          if cual=2 Then //'ceCajaDestino'
            begin
              CDSTransCAJA_DESTINO.AsInteger   := CDSCajaCabID_CUENTA_CAJA.Asinteger;
              CDSTransMUESTRACAJADESTINO.Value := CDSCajaCabMUESTRACTACAJA.Value;
              id_caja_destino                  := CDSCajaCabID_CAJA.Value;
              id_Cuenta_caja_Destino           := CDSCajaCabID_CUENTA_CAJA.Value;
              Fecha_Caja_destino               := CDSCajaCabFECHA_INCIO.AsDateTime;
            end;
         BuscarSaldo.Execute;
      END
    ELSE
      BEGIN
        Result:=False;
        //ShowMessage('Dato no encontrado');
      END;
END;


procedure TFormTransferenciaEfectivo.BorrarExecute(Sender: TObject);
begin
  if (DMMain_FD.UsuarioActivo<>'master' ) and Not(DSBase.DataSet.IsEmpty) Then
    begin
      if (DMMain_FD.UsuarioAdministrador ) Then
        begin
          CDSListaMov.First;
          CajaCerrada := UpperCase(CDSListaMovESTADO.Value)='CERRADA';
          if CajaCerrada=False then
            begin
              CDSListaMov.Next;
              CajaCerrada := UpperCase(CDSListaMovESTADO.Value)='CERRADA';
            end;
          if (CDSTransESTADO.Value='N') then
            if (CajaCerrada=False) then
              begin
                if MessageDlg('Confima Borrado?',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
                  begin
                    inherited;
                    Recuperar.Execute;
                  end;
              end
            else
              ShowMessage('Cajas Cerradas...')
          else
            ShowMessage('Ya fue confirmada...');
        end
      else
        ShowMessage('No está Autorizado para esta Operación...');
    end
  else
    if (DMMain_FD.UsuarioActivo='master') and Not(DSBase.DataSet.IsEmpty) Then
      begin
        CDSListaMov.First;
        CajaCerrada := UpperCase(CDSListaMovESTADO.Value)='CERRADA';
        if CajaCerrada=False then
          begin
            CDSListaMov.Next;
            CajaCerrada:=UpperCase(CDSListaMovESTADO.Value)='CERRADA';
          end;
         if (CajaCerrada=False) then
           if MessageDlg('Confima Borrado?',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
             begin
               inherited;
               Recuperar.Execute;
             end
           else
            ShowMessage('Cajas Cerradas...');
      end;
   CDSListaMov.EnableControls;

end;

procedure TFormTransferenciaEfectivo.BuscarCajaExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaCajaCab.Close;
  if (Sender as TJvDBComboEdit).Name='ceCajaOrigen' Then
    begin
      if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
        begin
          CDSBuscaCajaCab.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                       'inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                       'where ca.Estado=0 and cta.id_tipo_cta=1 and '+
                                       '(ca.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) ';

          CDSBuscaCajaCab.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
        end;
    end
  else
    if (Sender as TJvDBComboEdit).Name='ceCajaDestino' Then
      begin
        if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
          begin
            CDSBuscaCajaCab.CommandText:='select ca.*, cta.Nombre as MuestraCaja from Caja_Cab ca '+
                                         'inner join cuenta_caja cta on cta.id_cuenta=ca.id_cuenta_caja '+
                                         'where ca.Estado=0 and cta.id_tipo_cta=1 and '+
                                         'ca.id_cuenta_caja<>'+ceCajaOrigen.Text;
          end;
      end;


  CDSBuscaCajaCab.Open;
  comBuscadorCaja.Execute;
  if comBuscadorCaja.ROk Then
      begin
        if (Sender as TJvDBComboEdit).Name='ceCajaOrigen' Then
          CDSTransCAJA_ORIGENSetText(CDSTransCAJA_ORIGEN,IntToStr(comBuscadorCaja.Id));
        if (Sender as TJvDBComboEdit).Name='ceCajaDestino' Then
          CDSTransCAJA_DESTINOSetText(CDSTransCAJA_DESTINO,IntToStr(comBuscadorCaja.Id));
      end;
  CDSBuscaCajaCab.Close;
end;

procedure TFormTransferenciaEfectivo.ConfirmaExecute(Sender: TObject);
begin
  FMovOk:=false;
  if CDSSaldo.State<>dsBrowse then
    CDSSaldo.Post;

  if CDSTransIMPORTE.AsFloat<=0 Then
     RAISE Exception.Create('No hay montos para transferir...');

  if (Trim(ceCajaDestino.Text)='') then
     RAISE Exception.Create('Falta indicar la caja Destino...');


  if (Trim(ceCajaOrigen.Text)='') then
     RAISE Exception.Create('Falta indicar la caja Origen...');

  if (Trim(ceCajaDestino.Text)='') then
     RAISE Exception.Create('Falta indicar la caja Destino...');


  if (Trim(dbeSuc.Text)='') or (Trim(dbeFecha.text)='') or (Trim(dbeSuc.Text)='') or (Trim(dbeLetra.Text)='') or (Trim(dbeNumero.text)='') Then
    RAISE Exception.Create('Falta algun dato en el encabezado...');

  if (Trim(RxCTipoCpbte.Text)='')  Then
    RAISE Exception.Create('Falta Tipo Comprobante...');

  if (StrToInt(ceCajaOrigen.Text)) <> (StrToInt(ceCajaDestino.Text)) then
    if (CDSTransIMPORTE.AsFloat>0) and (Not(CDSSaldo.IsEmpty)) Then
      if Not(dbeFecha.Text[1]=' ') Then
        begin
          DatoNew   := IntToStr(CDSTransID.Value);
          TipoCpbte := CDSTransTIPOCPBTE.Value;
          if CDSSaldo.State in [dsInsert,dsEdit] then CDSSaldo.Post;
          sumar;
          inherited;

          Recuperar.Execute;

          if Not(DSBase.DataSet.IsEmpty) then
            if CargaMovimientos_Caja=False Then   // aca se hace la confirmacion
              Borrar.Execute
            else
              begin
                if imprime='S' Then
                  if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
                    Imprimir.Execute;
              end;
        end
      else
         ShowMessage('Falta Ingresar la fecha de Transeferncia....')
    else
      ShowMessage('No hay montos para transferir....')
  else
    ShowMessage('Las caja de origen y destino deben ser distintas.....!!!');
end;

procedure TFormTransferenciaEfectivo.ConfirmaTransaccionExecute(Sender: TObject);
begin
  //ShowMessage((Sender as TBitBtn).Name);
  CDSCajaCab.Close;
  CDSCajaCab.Params.ParamByName('Id').Value := CDSTransCAJA_DESTINO.Value;
  CDSCajaCab.Open;
  IF NOT (CDSCajaCab.IsEmpty) THEN
    begin
     id_caja_destino           := CDSCajaCabID_CAJA.Value;
     id_Cuenta_caja_Destino    := CDSCajaCabID_CUENTA_CAJA.Value;
     Fecha_Caja_destino        := CDSCajaCabFECHA_INCIO.AsDateTime;
    end
  else
    RAISE Exception.Create('No se puede encontrar caja disponble...');

  //Modificar.Execute;

  if (StrToInt(ceCajaOrigen.Text)) <> (StrToInt(ceCajaDestino.Text)) then
    if (CDSTransIMPORTE.AsFloat>0)  Then
      if Not(dbeFecha.Text[1]=' ') Then
        begin
          DatoNew   := IntToStr(CDSTransID.Value);
          TipoCpbte := CDSTransTIPOCPBTE.Value;
          //sumar;
          CDSListaMov.First;
          if CDSListaMovHABER.AsFloat>0 Then
            begin

              DMMain_FD.fdcGestion.StartTransaction;
              try
                if CDSTrans.State=dsBrowse then
                  CDSTrans.Edit;
                CDSTransESTADO.Value:='C';
                if Rechazada then
                  begin
                    CDSTransESTADO.Value:='R';
                    CDSTransOBSERVACIONES.Value:='RECHAZADA POR :'+DMMain_FD.UsuarioActivo;
                  end;
                CDSTrans.Post;
                DatoNew := CDSTransID.AsString;
                CDSTrans.ApplyUpdates(0);

                spMovEfectioDebe.Close;
                spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger       := CDSTransID.Value;
                spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString    := CDSTransTIPOCPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString   := CDSTransCLASECPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString        := CDSTransNROCPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger := CDSTransCAJA_DESTINO.Value;
                spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate  := CDSTransFECHA.AsDateTime;
                spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat             := CDSListaMovHABER.value;// CDSSaldoATransferir.AsFloat*QCotizacionCOTIZACION.AsFloat;
                spMovEfectioDebe.Params.ParamByName('HABER').AsFloat            := 0;
                spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString   :='I';
                spMovEfectioDebe.Params.ParamByName('FPAGO').AsInteger          := CDSListaMovID_FPAGO.Value;

                spMovEfectioDebe.ExecProc;
                spMovEfectioDebe.Close;


                DMMain_FD.fdcGestion.Commit;
                ShowMessage('Transferencia realizada...');
                CDSCajaMov.Close;


              except
                DMMain_FD.fdcGestion.Rollback;
                CDSCajaMov.Close;
                ShowMessage('Opercaion no realizada...');
              end;
              Recuperar.Execute;
            end;
         end
      else
         ShowMessage('Falta Ingresar la fecha de Transeferncia....')
    else
      ShowMessage('No hay montos para transferir....')
  else
    ShowMessage('Las caja de origen y destino deben ser distintas.....!!!');
end;

procedure TFormTransferenciaEfectivo.dbeFechaExit(Sender: TObject);
var a,m,d:Word;
begin
  inherited;
 try
    DecodeDate(StrToDate(CDSTransFECHA.Text),a,m,d);
  except
    ShowMessage('Fecha no Valida');
    dbeFecha.SetFocus;
  end;

end;

procedure TFormTransferenciaEfectivo.dbgMovDblClick(Sender: TObject);
begin
  inherited;
  if CDSListaMovID_CAJA.AsString<>'' then
    begin
      if Not(Assigned(FormCaja)) then
        FormCaja:=TFormCaja.Create(Self);
      formCaja.Recuperar(CDSListaMovID_CAJA.Value);
     // FormCaja.Show;
    end;

end;

procedure TFormTransferenciaEfectivo.dbgSaldosColEnter(Sender: TObject);
begin
  inherited;
  if dbgSaldos.SelectedIndex<3 Then
    dbgSaldos.SelectedIndex:=3;
end;

procedure TFormTransferenciaEfectivo.CDSSaldoATransferirSetText(Sender: TField; const Text: String);
begin
  inherited;
  if Text<>'' then
    begin
      Sender.AsString:=FloatToStr(Moneda3D(' ',Mascara,StrToFloat(Text)));
     // if ( Moneda3D(' ',Mascara, Sender.AsFloat))>(Moneda3D(' ',Mascara, CDSSaldoSALDO.AsFloat+0.01)) Then
      if CompareValue(Sender.AsFloat,CDSSaldoSALDO.AsFloat,0.1)= GreaterThanValue then
        begin
          ShowMessage('Importe mayor al disponible.....!!!');
          Sender.AsString:='';
        end
      else
        if DSSaldo.DataSet.State in [dsInsert,dsEdit] then DSSaldo.DataSet.Post;
      sumar;
    end
  else
    Sender.AsString:='0';  
end;

procedure TFormTransferenciaEfectivo.CambioFechaExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambioFechaTransferencia)) then
    FormCambioFechaTransferencia:=TFormCambioFechaTransferencia.Create(Self);
  FormCambioFechaTransferencia.Fecha:=CDSTransFECHA.AsDateTime;
  FormCambioFechaTransferencia.Id   :=CDSTransID.Value;
  FormCambioFechaTransferencia.ShowModal;
  Recuperar.Execute;


end;

procedure TFormTransferenciaEfectivo.CancelarExecute(Sender: TObject);
begin
 if MessageDlg('Cancelar los cambios..?',mtConfirmation,mbYesNo,0)=mrNo then
    Exit;
  inherited;
  if CDSSaldo.State in [dsInsert,dsEdit,dsBrowse] Then
    begin
      CDSSaldo.Cancel;
      CDSSaldo.EmptyDataSet;
      CDSSaldo.Close;
    end;
end;

function TFormTransferenciaEfectivo.CargaMovimientos_Caja:Boolean;
begin
  CDSSaldo.First;
  CDSSaldo.DisableControls;
  DMMain_FD.fdcGestion.StartTransaction;
    Try
      While Not(CDSSaldo.Eof) do
        begin
          if CDSSaldoATransferir.Value>0 Then
            begin
              QCotizacion.Close;
              QCotizacion.ParamByName('id_Tpago').Value:=CDSSaldoTPAGO.Value;
              QCotizacion.ParamByName('id_Fpago').Value:=CDSSaldoFPAGO.Value;
              QCotizacion.Open;

              spMovEfectioDebe.Close;
              spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger          := CDSTransID.Value;
              spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString       := CDSTransTIPOCPBTE.AsString;
              spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString      := CDSTransCLASECPBTE.AsString;
              spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString           := CDSTransNROCPBTE.AsString;
              spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger    := CDSTransCAJA_ORIGEN.Value;
              spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate     := CDSTransFECHA.AsDateTime;
              spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat                := 0;
              spMovEfectioDebe.Params.ParamByName('HABER').AsFloat               := CDSSaldoATransferir.AsFloat;// * QCotizacionCOTIZACION.AsFloat;
              spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString      :='E';
              spMovEfectioDebe.Params.ParamByName('FPAGO').AsInteger             := CDSSaldoFPAGO.Value;

              spMovEfectioDebe.ExecProc;
              spMovEfectioDebe.Close;

              if AutoConfirma then
                begin
                  CDSTrans.Edit;
                  CDSTransESTADO.Value            :='C';
                  CDSTrans.Post;
                  CDSTrans.ApplyUpdates(0);
                  spMovEfectioDebe.Close;
                  spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger          := CDSTransID.Value;
                  spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString       := CDSTransTIPOCPBTE.AsString;
                  spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString      := CDSTransCLASECPBTE.AsString;
                  spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString           := CDSTransNROCPBTE.AsString;
                  spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger    := CDSTransCAJA_DESTINO.Value;
                  spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate     := CDSTransFECHA.AsDateTime;
                  spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat                := CDSSaldoATransferir.AsFloat;// * QCotizacionCOTIZACION.AsFloat;
                  spMovEfectioDebe.Params.ParamByName('HABER').AsFloat               := 0;
                  spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString      :='I';
                  spMovEfectioDebe.Params.ParamByName('FPAGO').AsInteger             := CDSSaldoFPAGO.Value;
                  spMovEfectioDebe.ExecProc;
                  spMovEfectioDebe.Close;
                end;
              QCotizacion.Close;
            end;
          CDSSaldo.Next;
        end;
      //DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
      DMMain_FD.fdcGestion.Commit;
      FMovOk:=True;
      result:=True;
    except
      Result:=False;
      FMovOk:=False;
      //DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
      DMMain_FD.fdcGestion.Rollback;
      ShowMessage('Transacción no finalizada....!');
    end;
  CDSSaldo.EnableControls;

  CDSListaMov.Close;
  CDSListaMov.Params.ParamByName('id').Value  :=StrToInt(DatoNew);
  CDSListaMov.Params.ParamByName('tipo').Value:=TipoCpbte;
  CDSListaMov.Open;
  CDSListaMov.First;
  CDSListaMovDEBE.DisplayFormat :=Mascara;
  CDSListaMovHABER.DisplayFormat:=Mascara;
  CDSSaldo.Close;
  CDSSaldo.Params.ParamByName('id').Clear;
  CDSSaldo.Open;
  ceCajaOrigen.Enabled:=DMMain_FD.ModificaCaja;

  DatoNew:=''+DatoNew+'';

  if CDSTransESTADO.Value='N' then
     pnlEstado.Caption := 'Nueva'
  else
    if CDSTransESTADO.Value='C' then
       pnlEstado.Caption := 'Confirmada'
    else
      if CDSTransESTADO.Value='R' then
        pnlEstado.Caption := 'Rechazada'
      else
        pnlEstado.Caption := '';

  if (AutoConfirma=False) and
     (CajaPorDefecto=CDSTransCAJA_ORIGEN.Value) and
     (DMMain_FD.ModificaCaja=False) Then
    begin
      ConfirmaTransaccion.Enabled:=False;
      RechazarTransaccion.Enabled:=False;
    end;

  // VERIFICO SI LA CAJA ESTA CERRADA
  sbEstado.SimpleText:='';

  CDSListaMov.First;
  QVerificaEstadoCaja.Close;
  QVerificaEstadoCaja.ParamByName('id').Value:=CDSListaMovID_CAJA.Value;
  QVerificaEstadoCaja.Open;
  CajaCerrada:=False;
  if QVerificaEstadoCajaESTADO.Value=1 Then
    begin
      sbEstado.SimpleText:='Caja Cerrada..';
      CajaCerrada        :=True;
    end;

  if CajaCerrada=False then
    begin
      CDSListaMov.Next;
      QVerificaEstadoCaja.Close;
      QVerificaEstadoCaja.ParamByName('id').Value:=CDSListaMovID_CAJA.Value;
      QVerificaEstadoCaja.Open;
      if QVerificaEstadoCajaESTADO.Value=1 Then
        begin
          sbEstado.SimpleText:='Caja Cerrada..';
          CajaCerrada        :=True;
        end;
    end;

  borrar.Enabled:=Not(CajaCerrada);

end;

procedure TFormTransferenciaEfectivo.FormActivate(Sender: TObject);
begin
  inherited;
  if FormTransferenciaEfectivo<>nil then
    if Not(DSBase.DataSet.IsEmpty) and (DSBase.DataSet.State=dsBrowse) then
      begin
        DatoNew:=CDSTransID.AsString;
        Recuperar.Execute;
      end;
end;

procedure TFormTransferenciaEfectivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSTrans.Close;
  Action:=caFree;
end;

procedure TFormTransferenciaEfectivo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormTransferenciaEfectivo:=nil;
end;

procedure TFormTransferenciaEfectivo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  AddClientDataSet(CDSTrans,DSPTrans);
  CDSTrans.Open;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='VALORES';
  DMMain_FD.QOpciones.Open;

  Mascara:=DMMain_FD.QOpciones.Fields[0].AsString;
  DMMain_FD.QOpciones.Close;

  Campo:='id';
  Tabla:='transferencias_caja';

  CDSTransIMPORTE.DisplayFormat:= Mascara;
  CDSTransIMPORTE.EditFormat   := '0.000';//Mascara;

  AutoConfirma:=False;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='AUTOTXCAJA';
  DMMain_FD.QOpciones.Open;

  if DMMain_FD.QOpciones.Fields[0].AsString[1]<>'' then
    AutoConfirma := DMMain_FD.QOpciones.Fields[0].AsString[1]='S';

  ceCajaOrigen.Enabled:=DMMain_FD.ModificaCaja;
  Rechazada:=False;
end;

procedure TFormTransferenciaEfectivo.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSTransSucursalSetText(CDSTransSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormTransferenciaEfectivo.CDSTransSUCURSALSetText(Sender: TField; const Text: String);
begin
  inherited;
  IF (Text<>'') and (Text[1] <> #13) THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          SysUtils.Abort;
        END
      ELSE IF CDSTrans.State = dsInsert THEN
        UltimoComprobante;
    END;

end;

procedure TFormTransferenciaEfectivo.BuscarTipoCpbteExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSTransSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
        CDSTransID_TIPOCOMPROBANTESetText(CDSTransID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;
end;

procedure TFormTransferenciaEfectivo.BusquedaPorReferenciaExecute(
  Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='X';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
      DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
      Recuperar.Execute;
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormTransferenciaEfectivo.CDSTransSUCSetText(Sender: TField;
  const Text: String);
BEGIN
  Sender.AsString := Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSTransNROCPBTE.Value := CDSTransLETRA.Value + CDSTransSUC.Value + CDSTransNUMERO.Value;
END;

procedure TFormTransferenciaEfectivo.CDSTransNUMEROSetText(
  Sender: TField; const Text: String);
BEGIN
  Sender.AsString := Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSTransNROCPBTE.Value := CDSTransLETRA.Value + CDSTransSUC.Value + CDSTransNUMERO.Value;
END;

procedure TFormTransferenciaEfectivo.CDSTransNewRecord( DataSet: TDataSet);
begin
  inherited;
  CDSTransFECHA.AsDateTime:=Date;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if (ibgIdTransferencia.IncrementFD(0)=0) or
     (ibgIdTransferencia.IncrementFD(0)<QUltimoCodigo2.Fields[0].AsInteger) Then
    begin
      //este codigo se ejecuta la primera vez luego toma del Generador
      if QUltimoCodigo2.Fields[0].AsString='' Then
        CDSTransID.Value:=1
      else
        CDSTransID.Value:=QUltimoCodigo2.Fields[0].AsInteger+1;
      ibgIdTransferencia.IncrementFD(QUltimoCodigo2.Fields[0].AsInteger+1);
    end
  else
    CDSTransID.Value:=ibgIdTransferencia.IncrementFD(1);
  CDSTransSUCURSALSetText(CDSTransSUCURSAL,IntToStr(SucursalPorDefecto));
  CDSTransCAJA_ORIGENSetText(CDSTransCAJA_ORIGEN,IntToStr(CajaPorDefecto));
  CDSTransTIPO_TRANSFERENCIA.Value:= 'E';
  CDSTransUSUARIO.Value           := DMMain_FD.UsuarioActivo;
  CDSTransESTADO.Value            := 'N';//nueva
  CDSTransFECHA_HORA.AsDateTime   := now;
  pnlEstado.Caption               := 'Nueva';
  QUltimoCodigo2.Close;
end;

procedure TFormTransferenciaEfectivo.BuscarSaldoExecute(Sender: TObject);
begin
  inherited;
  if (dbeFecha.Text<>'') and (RxDBESucursal.Text<>'') and (dbeSucursal.Text<>'') and
     (RxCTipoCpbte.Text<>'') and (dbeLetra.Text<>'') and (dbeSuc.Text<>'') and
     (dbeNumero.Text<>'') and (ceCajaOrigen.Text<>'') Then
    BEGIN
      CDSSaldo.Close;
      CDSSaldo.Params.ParamByName('id').Value:=id_Caja_Origen;
      CDSSaldo.Open;
      if Trunc(CDSSaldoDISPONIBILIDAD.AsFloat*1000)=0 Then
        ShowMessage(' No hay fondos Suficientes para transferir.... en la caja de '+ edMuestraCajaOrigen.Text);

      CDSSaldoSALDO.DisplayFormat      :=Mascara;
      CDSSaldoDEBE.DisplayFormat       :=Mascara;
      CDSSaldoHABER.DisplayFormat      :=Mascara;
      CDSSaldoATransferir.DisplayFormat:=Mascara;
      CDSSaldoSALDO.EditFormat         :=Mascara;
      CDSSaldoDEBE.EditFormat          :=Mascara;
      CDSSaldoHABER.EditFormat         :=Mascara;
      CDSSaldoATransferir.EditFormat   :=Mascara;
      dbgSaldos.SelectedIndex:=3;

    END
  ELSE
    ShowMessage('Faltan datos');


end;

procedure TFormTransferenciaEfectivo.CDSTransCAJA_ORIGENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      If Not(AsignarCaja(Sender.AsInteger,1)) Then
        BEGIN
          ShowMessage('Dato no válido o Caja Cerrada...');
          Sender.AsString := '';
        END;
    end;
end;

procedure TFormTransferenciaEfectivo.CDSTransCAJA_DESTINOSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      If Not(AsignarCaja(Sender.AsInteger,2)) Then
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
    end;

end;

procedure TFormTransferenciaEfectivo.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='CX';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 11;
  if DMMain_FD.ModificaCaja Then
    FormBuscaCpbte.ModificaCaja:='S'
  else
    FormBuscaCpbte.ModificaCaja:='N';
  FormBuscaCpbte.CuentaCaja  :=CajaPorDefecto;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
end;
   
procedure TFormTransferenciaEfectivo.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransSUCURSAL.Clear;
      CDSTransMUESTRASUCURSAL.Clear;
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransLETRA.Clear;
      CDSTransSUC.Clear;
      CDSTransNUMERO.Clear;
    end;
end;

procedure TFormTransferenciaEfectivo.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransID_TIPOCOMPROBANTE.Clear;
      CDSTransMUESTRACOMPROBANTE.Clear;
      CDSTransLETRA.Clear;
      CDSTransSUC.Clear;
      CDSTransNUMERO.Clear;
    end;
end;

procedure TFormTransferenciaEfectivo.ceCajaOrigenKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransCAJA_ORIGEN.Clear;
      CDSTransMUESTRACAJAORIGEN.Clear;
    end;

end;

procedure TFormTransferenciaEfectivo.ceCajaDestinoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSTransCAJA_DESTINO.Clear;
      CDSTransMUESTRACAJADESTINO.Clear;
    end;

end;

procedure TFormTransferenciaEfectivo.CDSTransID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF text[1] <> #13 THEN
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          ShowMessage('Dato no válido');
          Sender.AsString := '';
        END;
      IF CDSTrans.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TFormTransferenciaEfectivo.AbrirCajaExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormControlAperturaCaja)) then
        FormControlAperturaCaja:=TFormControlAperturaCaja.Create(Self);
      FormControlAperturaCaja.Show;
      formControlAperturaCaja.cbCuentas.KeyValue:= CDSListaMovID_CUENTA_CAJA.Value;
      FormControlAperturaCaja.CDSCaja.Locate('ID_CAJA',CDSListaMovID_CAJA.AsString,[])
    end;
end;

procedure TFormTransferenciaEfectivo.AgregarExecute(Sender: TObject);
begin
  inherited;
  CDSListaMov.Close;
  if FormTransferenciaEfectivo.Visible=True then
    begin
      if ceCajaOrigen.Enabled Then
         ceCajaOrigen.SetFocus
      else
        ceCajaDestino.SetFocus;
    end;
  Rechazada:=False;
end;

procedure TFormTransferenciaEfectivo.CDSSaldoAfterInsert(
  DataSet: TDataSet);
begin
  inherited;
  CDSSaldo.Cancel;
end;

procedure TFormTransferenciaEfectivo.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  BuscarSaldo.Enabled:=DSBase.State in [dsInsert,dsEdit];
  Imprimir.Enabled            := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  ConfirmaTransaccion.Enabled := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty))
                                 and (CDSTransESTADO.Value='N');
  RechazarTransaccion.Enabled := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty))
                                 and (CDSTransESTADO.Value='N');
  Borrar.Enabled              := ((DMMain_FD.UsuarioAdministrador) or (DMMain_FD.UsuarioActivo='master')) and
                                 ((CDSTransESTADO.AsString='N') or (CDSTransESTADO.AsString='C')) and
                                 (CajaCerrada=False) and (DSBase.DataSet.State=dsBrowse) and
                                 (not(DSBase.DataSet.IsEmpty));
  dbgMov.Enabled              := (DSBase.DataSet.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));

end;

procedure TFormTransferenciaEfectivo.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
  if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frTransferencia.PrintOptions.Printer:=PrNomCpbte;
  frTransferencia.SelectPrinter;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').Value:='CPBTES';
  DMMain_FD.QOpciones.Open;

  QComprob.Close;
  QComprob.ParamByName('id').Value :=CDSTransID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:=CDSTransSUCURSAL.Value;
  QComprob.Open;

  frTransferencia.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\'+QComprobREPORTE.AsString);
  DMMain_FD.QOpciones.Close;
  QComprob.Close;
  frTransferencia.PrepareReport;

  frxPDFExport1.ShowDialog:=False;
  frxPDFExport1.FileName:=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Tx_'+CDSTransNROCPBTE.AsString+'.pdf');
  frTransferencia.Export(frxPDFExport1);
  frxPDFExport1.ShowDialog:=True;

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        :=DirCorreo;
  FormCorreo.Remitente           :=Remitente;
  FormCorreo.Destinatario        :='Ctral';
  FormCorreo.Puerto              :=Puerto;
  FormCorreo.CorreoDestino       :='';
  FormCorreo.NombreServidorCorreo:=NombreServidor;
  FormCorreo.NombreCuentaCorreo  :=NombreCuenta;
  FormCorreo.Clave               :=Clave;
  FormCorreo.Autenticacion       :=Autotenticacion;
  FormCorreo.Asunto              :='Tx - '+ CDSTransNUMERO.AsString +
                                   ' del '+ FormatDateTime('dd-mm-yy',CDSTransFECHA.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Tx_'+CDSTransNROCPBTE.AsString+'.pdf');
  FormCorreo.Show;

end;

procedure TFormTransferenciaEfectivo.ImprimirExecute(Sender: TObject);
begin
  inherited;

  CDSEmpresa.Open;

  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSTransID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSTransSUCURSAL.Value;
  QComprob.Open;

  frTransferencia.PrintOptions.Printer:=PrNomCpbte;
  frTransferencia.SelectPrinter;

  frTransferencia.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frTransferencia.PrintOptions.Copies:=QComprobCOPIAS.Value;


  frTransferencia.ShowReport;
  CDSEmpresa.Close;

end;

procedure TFormTransferenciaEfectivo.MarcarConfirmadaExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioActivo='master' then
    begin
      CDSTrans.Edit;
      CDSTransESTADO.Value            :='C';
      CDSTrans.Post;
      CDSTrans.ApplyUpdates(0);
      Recuperar.Execute;
    end;
end;

procedure TFormTransferenciaEfectivo.SalirExecute(Sender: TObject);
begin
  inherited;
  CDSListaMov.Close;
  Close;
end;

procedure TFormTransferenciaEfectivo.RechazarTransaccionExecute(
  Sender: TObject);
var CajaOrigen,CajaDestino:String;
FP,Importe:string;
FPago:TStringList;
I:Byte;
Estado:Boolean;
begin
  Rechazada:= True;
  FPago    := TStringList.Create;
  CDSListaMov.First;
  while not(CDSListaMov.Eof) do
    begin
      FPago.Add(IntToStr(CDSListaMovID_FPAGO.Value)+'|'+FormatFloat('0.00',CDSListaMovHABER.AsFloat));
      CDSListaMov.Next;
    end;
  CajaOrigen  := CDSTransCAJA_DESTINO.AsString;
  CajaDestino := CDSTransCAJA_ORIGEN.AsString;

  ConfirmaTransaccion.Execute;

  CajaPorDefecto:=StrToInt(CajaOrigen);

  Estado:=AutoConfirma;
  Agregar.Execute;
  AutoConfirma:=True;

  CDSTransCAJA_ORIGENSetText(CDSTransCAJA_ORIGEN,CajaOrigen);
  CDSTransCAJA_DESTINOSetText(CDSTransCAJA_DESTINO,CajaDestino);
  for I := 0 to  FPago.Count - 1 do
    begin
     FP     := Copy(FPago.Strings[i],1,pos('|',FPago.Strings[i])-1);
     Importe:= Copy(FPago.Strings[i],pos('|',FPago.Strings[i])+1,length(FPago.Strings[i]));
     CDSSaldo.Locate('Fpago',FP,[]);
     CDSSaldo.Edit;
     CDSSaldoATransferirSetText(CDSSaldoATransferir,Importe);
     if CDSSaldo.State<>dsBrowse then
       CDSSaldo.Post;
    end;
  Confirma.Execute;
  ConfirmaTransaccion.Execute;
  FreeAndNil(FPago);
  AutoConfirma := Estado;
  Rechazada    := False;

end;

procedure TFormTransferenciaEfectivo.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSTrans.close;
  CDSTrans.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSTrans.Params.ParamByName('tipo').Value := TipoCpbte;
  CDSTrans.Open;

  CDSListaMov.Close;
  CDSListaMov.Params.ParamByName('id').Value  :=StrToInt(DatoNew);
  CDSListaMov.Params.ParamByName('tipo').Value:=TipoCpbte;
  CDSListaMov.Open;
  CDSListaMov.First;

  CDSListaMovDEBE.DisplayFormat :=Mascara;
  CDSListaMovHABER.DisplayFormat:=Mascara;

//  CDSSaldo.Close;
//  CDSSaldo.Params.ParamByName('id').Clear;
//  CDSSaldo.Open;

  ceCajaOrigen.Enabled:=DMMain_FD.ModificaCaja;

  DatoNew:=''+DatoNew+'';

  if CDSTransESTADO.Value='N' then
     pnlEstado.Caption := 'Nueva'
  else
    if CDSTransESTADO.Value='C' then
       pnlEstado.Caption := 'Confirmada'
    else
      if CDSTransESTADO.Value='R' then
        pnlEstado.Caption := 'Rechazada'
      else
        pnlEstado.Caption := '';

//  if (AutoConfirma=False) and
//     (CajaPorDefecto=CDSTransCAJA_ORIGEN.Value) and
//     (DMMain_FD.ModificaCaja=False) Then
//    begin
//      ConfirmaTransaccion.Enabled:=False;
//      RechazarTransaccion.Enabled:=False;
//    end;

  // VERIFICO SI LA CAJA ESTA CERRADA
  sbEstado.SimpleText:='';

//  CDSListaMov.First;

  QVerificaEstadoCaja.Close;
  QVerificaEstadoCaja.ParamByName('id').Value:=CDSListaMovID_CAJA.Value;
  QVerificaEstadoCaja.Open;
  CajaCerrada:=False;
  if QVerificaEstadoCajaESTADO.Value=1 Then
    begin
      sbEstado.SimpleText:='Caja Cerrada..';
      CajaCerrada        :=True;
    end;

//  if CajaCerrada=False then
//    begin
//      CDSListaMov.Next;
//      QVerificaEstadoCaja.Close;
//      QVerificaEstadoCaja.ParamByName('id').Value:=CDSListaMovID_CAJA.Value;
//      QVerificaEstadoCaja.Open;
//      if QVerificaEstadoCajaESTADO.Value=1 Then
//        begin
//          sbEstado.SimpleText:='Caja Cerrada..';
//          CajaCerrada        :=True;
//        end;
//    end;


  FormTransferenciaEfectivo.Caption:='Transferencias de Efectivo -- '+CDSTransFECHA_HORA.AsString+'//'+Copy(CDSTransUSUARIO.Value,1,15);
end;

procedure TFormTransferenciaEfectivo.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormTransferenciaEfectivo.PrevExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
      ' where '+''+campo+''+' < '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select max('+''+campo+''+') from  '+''+tabla+''+
          ' where '+''+campo+''+' > '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
          QBrowse2.Open;
        end;
      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;
end;

procedure TFormTransferenciaEfectivo.NextExecute(Sender: TObject);
begin
   if (DMMain_FD.ModificaCaja<>True) Then
    begin
      DatoOld:=DatoNew;
      QBrowse2.Close;
      QBrowse2.SQL.Clear;
      QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
      ' where '+''+campo+''+' > '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
      QBrowse2.Open;
      if QBrowse2.Fields[0].AsString='' Then
        begin
          QBrowse2.Close;
          QBrowse2.SQL.Clear;
          QBrowse2.SQL.Add('select min('+''+campo+''+') from  '+''+tabla+''+
          ' where '+''+campo+''+' < '+''+DatoNew+''+' and caja_origen='+IntToStr(CajaPorDefecto)+' and tipocpbte='+''''+TipoCpbte+'''');
          QBrowse2.Open;
        end;
      DatoNew:=QBrowse2.Fields[0].AsString;
      Recuperar.Execute;
    end
  else
    inherited;
end;

{
procedure TFormTransferenciaEfectivo.ConfirmaExecute(Sender: TObject);
begin
  FMovOk:=false;
  if CDSSaldo.State<>dsBrowse then
    CDSSaldo.Post;

  if CDSTransIMPORTE.AsFloat<=0 Then
     RAISE Exception.Create('No hay montos para transferir...');

  if (Trim(ceCajaDestino.Text)='') then
     RAISE Exception.Create('Falta indicar la caja Destino...');

  if (Trim(ceCajaOrigen.Text)='') then
     RAISE Exception.Create('Falta indicar la caja Origen...');

  if (Trim(dbeSuc.Text)='') or (Trim(dbeFecha.text)='') or (Trim(dbeSuc.Text)='') or (Trim(dbeLetra.Text)='') or (Trim(dbeNumero.text)='') Then
    RAISE Exception.Create('Falta algun dato en el encabezado...');

  if (Trim(RxCTipoCpbte.Text)='')  Then
    RAISE Exception.Create('Falta Tipo Comprobante...');

  if (StrToInt(ceCajaOrigen.Text)) <> (StrToInt(ceCajaDestino.Text)) then
    if (CDSTransIMPORTE.AsFloat>0) and (Not(CDSSaldo.IsEmpty)) Then
      if Not(dbeFecha.Text[1]=' ') Then
        begin
          DatoNew   := IntToStr(CDSTransID.Value);
          TipoCpbte := CDSTransTIPOCPBTE.Value;
          if CDSSaldo.State in [dsInsert,dsEdit] then CDSSaldo.Post;
          sumar;
          CDSSaldo.First;
          CDSSaldo.DisableControls;
          //DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
          DMMain_FD.fdcGestion.StartTransaction;
          Try
            While Not(CDSSaldo.Eof) do
              begin
                if CDSSaldoATransferir.Value>0 Then
                  begin
                    QCotizacion.Close;
                    QCotizacion.ParamByName('id_Tpago').Value:=CDSSaldoTPAGO.Value;
                    QCotizacion.ParamByName('id_Fpago').Value:=CDSSaldoFPAGO.Value;
                    QCotizacion.Open;
                    //CDSCajaMov.Close;
//                    CDSCajaMov.Open;
//                    CDSCajaMov.Insert;
//                    CDSCajaMovID_CAJA.Value         := id_caja_Origen;
//                    CDSCajaMovID_CUENTA_CAJA.Value  := CDSTransCAJA_ORIGEN.Value;
//                    CDSCajaMovID_MOV_CAJA.Value     := IBGId_Caja_Mov.IncrementFD(1);
//                    CDSCajaMovFECHA_CAJA.AsDateTime := Fecha_caja_Origen;
//                    CDSCajaMovFECHA_OPERACION.Value := CDSTransFECHA.Value;
//                    CDSCajaMovTIPO_OPERACION.Value  := 'E';
//                    CDSCajaMovID_COMPROBANTE.Value  := CDSTransID.Value;
//                    CDSCajaMovTIPO_COMPROB.Value    := CDSTransTIPOCPBTE.AsString;
//                    CDSCajaMovCLASE_COMPROB.Value   := CDSTransCLASECPBTE.AsString;
//                    CDSCajaMovNRO_COMPROBANTE.Value := CDSTransNROCPBTE.AsString;
//                    CDSCajaMovDEBE.AsFloat          := 0;
//                    CDSCajaMovHABER.AsFLoat         := CDSSaldoATransferir.AsFloat*QCotizacionCOTIZACION.AsFloat;
//                    CDSCajaMovID_FPAGO.Value        := CDSSaldoFPAGO.Value;
//                    CDSCajaMovID_TPAGO.Value        := CDSSaldoTPAGO.Value;
//                    CDSCajaMovUNIDADES.AsFloat      := CDSSaldoATransferir.AsFloat;
//                    CDSCajaMovCOTIZACION.AsFloat    := QCotizacionCOTIZACION.AsFloat;
//                    CDSCajaMovMONEDA.Value          := CDSSaldoMONEDA.Value;
//                    CDSCajaMov.post;
//
//                    spIngresarEfectivoHaber.Close;
//                    spIngresarEfectivoHaber.Params.ParamByName('ID_CAJA').Value       := CDSCajaMovID_CAJA.Value;
//                    spIngresarEfectivoHaber.Params.ParamByName('ID_MOV_CAJA').Value   := CDSCajaMovID_MOV_CAJA.Value;
//                    spIngresarEfectivoHaber.Params.ParamByName('ID_FPAGO').Value      := CDSCajaMovID_FPAGO.Value;
//                    spIngresarEfectivoHaber.Params.ParamByName('COTIZACION').AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
//                    spIngresarEfectivoHaber.Params.ParamByName('UNIDADES').AsFloat    := CDSCajaMovUNIDADES.AsFloat;
//                    spIngresarEfectivoHaber.Params.ParamByName('IMPORTE').AsFloat     := CDSCajaMovHABER.AsFloat;
//                    spIngresarEfectivoHaber.Params.ParamByName('ID_CUENTA_CAJA').Value:= CDSCajaMovID_CUENTA_CAJA.Value;
//                    spIngresarEfectivoHaber.Params.ParamByName('MONEDA').Value        := CDSCajaMovMONEDA.Value;

                    spMovEfectioDebe.Close;
                    spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger          := CDSTransID.Value;
                    spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString       := CDSTransTIPOCPBTE.AsString;
                    spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString      := CDSTransCLASECPBTE.AsString;
                    spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString           := CDSTransNROCPBTE.AsString;
                    spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger    := CDSTransCAJA_ORIGEN.Value;
                    spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate     := CDSTransFECHA.AsDateTime;
                    spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat                := 0;
                    spMovEfectioDebe.Params.ParamByName('HABER').AsFloat               := CDSSaldoATransferir.AsFloat * QCotizacionCOTIZACION.AsFloat;
                    spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString      :='E';
                    spMovEfectioDebe.ExecProc;


                    if AutoConfirma then
                      begin
                        CDSTransESTADO.Value            :='C';

        //                CDSCajaMov.Insert;
//                        CDSCajaMovID_CAJA.Value         := id_caja_Destino;
//                        CDSCajaMovID_CUENTA_CAJA.Value  := CDSTransCAJA_DESTINO.Value;
//                        CDSCajaMovID_MOV_CAJA.Value     := IBGId_Caja_Mov.IncrementFD(1);
//                        CDSCajaMovFECHA_CAJA.AsDateTime := Fecha_caja_Destino;
//                        CDSCajaMovFECHA_OPERACION.Value := CDSTransFECHA.Value;
//                        CDSCajaMovTIPO_OPERACION.Value  := 'I';
//                        CDSCajaMovID_COMPROBANTE.Value  := CDSTransID.Value;
//                        CDSCajaMovTIPO_COMPROB.Value    := CDSTransTIPOCPBTE.AsString;
//                        CDSCajaMovCLASE_COMPROB.Value   := CDSTransCLASECPBTE.AsString;
//                        CDSCajaMovNRO_COMPROBANTE.Value := CDSTransNROCPBTE.AsString;
//                        CDSCajaMovDEBE.AsFloat          := CDSSaldoATransferir.Value*QCotizacionCOTIZACION.AsFloat;;
//                        CDSCajaMovHABER.AsFloat         := 0;
//                        CDSCajaMovID_FPAGO.Value        := CDSSaldoFPAGO.Value;
//                        CDSCajaMovID_TPAGO.Value        := CDSSaldoTPAGO.Value;
//                        CDSCajaMovUNIDADES.AsFloat      := CDSSaldoATransferir.Value;
//                        CDSCajaMovCOTIZACION.AsFloat    := QCotizacionCOTIZACION.AsFloat;
//                        CDSCajaMovMONEDA.Value          := CDSSaldoMONEDA.Value;
//                        CDSCajaMov.post;
//
//                        spIngresarEfectivoDebe.Close;
//                        spIngresarEfectivoDebe.Params.ParamByName('ID_CAJA').Value       := CDSCajaMovID_CAJA.Value;
//                        spIngresarEfectivoDebe.Params.ParamByName('ID_MOV_CAJA').Value   := CDSCajaMovID_MOV_CAJA.Value;
//                        spIngresarEfectivoDebe.Params.ParamByName('ID_FPAGO').Value      := CDSCajaMovID_FPAGO.Value;
//                        spIngresarEfectivoDebe.Params.ParamByName('COTIZACION').AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
//                        spIngresarEfectivoDebe.Params.ParamByName('UNIDADES').AsFloat    := CDSCajaMovUNIDADES.AsFloat;
//                        spIngresarEfectivoDebe.Params.ParamByName('IMPORTE').AsFloat     := CDSCajaMovDEBE.AsFloat;
//                        spIngresarEfectivoDebe.Params.ParamByName('ID_CUENTA_CAJA').Value:= CDSCajaMovID_CUENTA_CAJA.Value;
//                        spIngresarEfectivoDebe.Params.ParamByName('MONEDA').Value        := CDSCajaMovMONEDA.Value;
//
//                        spMovEfectioDebe.Close;
                        spMovEfectioDebe.Close;
                        spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger          := CDSTransID.Value;
                        spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString       := CDSTransTIPOCPBTE.AsString;
                        spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString      := CDSTransCLASECPBTE.AsString;
                        spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString           := CDSTransNROCPBTE.AsString;
                        spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger    := CDSTransCAJA_DESTINO.Value;
                        spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate     := CDSTransFECHA.AsDateTime;
                        spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat                := CDSSaldoATransferir.AsFloat * QCotizacionCOTIZACION.AsFloat;
                        spMovEfectioDebe.Params.ParamByName('HABER').AsFloat               := 0;
                        spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString      :='I';
                        spMovEfectioDebe.ExecProc;
                      end;
                   // CDSCajaMov.ApplyUpdates(0);
                   // spIngresarEfectivoHaber.ExecProc;
                   // spIngresarEfectivoHaber.Close;
                   // if AutoConfirma then
                   //   begin
                   //     spIngresarEfectivoDebe.ExecProc;
                   //     spIngresarEfectivoDebe.Close;
                   //   end;

                  //  CDSCajaMov.EmptyDataSet;
                  //  CDSCajaMov.Close;
                    QCotizacion.Close;
                  end;
                CDSSaldo.Next;
              end;
            //DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
            DMMain_FD.fdcGestion.Commit;
            FMovOk:=True;
          except
            FMovOk:=False;
            //DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
          end;
          CDSSaldo.EnableControls;
          if FMovOk then
            begin
              inherited;
              Recuperar.Execute;
              if imprime='S' Then
                if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes) Then
                  Imprimir.Execute;
            end;
        end
      else
         ShowMessage('Falta Ingresar la fecha de Transeferncia....')
    else
      ShowMessage('No hay montos para transferir....')
  else
    ShowMessage('Las caja de origen y destino deben ser distintas.....!!!');
end;

procedure TFormTransferenciaEfectivo.ConfirmaTransaccionExecute(Sender: TObject);
begin
  //ShowMessage((Sender as TBitBtn).Name);
  CDSCajaCab.Close;
  CDSCajaCab.Params.ParamByName('Id').Value := CDSTransCAJA_DESTINO.Value;
  CDSCajaCab.Open;
  IF NOT (CDSCajaCab.IsEmpty) THEN
    begin
     id_caja_destino           := CDSCajaCabID_CAJA.Value;
     id_Cuenta_caja_Destino    := CDSCajaCabID_CUENTA_CAJA.Value;
     Fecha_Caja_destino        := CDSCajaCabFECHA_INCIO.AsDateTime;
    end
  else
    RAISE Exception.Create('No se puede encontrar caja disponble...');

  //Modificar.Execute;

  if (StrToInt(ceCajaOrigen.Text)) <> (StrToInt(ceCajaDestino.Text)) then
    if (CDSTransIMPORTE.AsFloat>0) and (Not(CDSSaldo.IsEmpty)) Then
      if Not(dbeFecha.Text[1]=' ') Then
        begin
          DatoNew   := IntToStr(CDSTransID.Value);
          TipoCpbte := CDSTransTIPOCPBTE.Value;
          //sumar;
          CDSListaMov.First;
          if CDSListaMovHABER.AsFloat>0 Then
            begin

//              CDSCajaMov.Close;
//              CDSCajaMov.Open;
//              CDSCajaMov.Insert;
//
//              CDSCajaMovID_CAJA.Value         := id_caja_Destino;
//              CDSCajaMovID_CUENTA_CAJA.Value  := CDSTransCAJA_DESTINO.Value;
//              CDSCajaMovID_MOV_CAJA.Value     := IBGId_Caja_Mov.IncrementFD(1);
//              CDSCajaMovFECHA_CAJA.AsDateTime := Fecha_caja_Destino;
//              CDSCajaMovFECHA_OPERACION.Value := CDSTransFECHA.Value;
//              CDSCajaMovTIPO_OPERACION.Value  := 'I';
//              CDSCajaMovID_COMPROBANTE.Value  := CDSTransID.Value;
//              CDSCajaMovTIPO_COMPROB.Value    := CDSTransTIPOCPBTE.AsString;
//              CDSCajaMovCLASE_COMPROB.Value   := CDSTransCLASECPBTE.AsString;
//              CDSCajaMovNRO_COMPROBANTE.Value := CDSTransNROCPBTE.AsString;
//              CDSCajaMovDEBE.Value            := CDSListaMovHABER.Value;
//              CDSCajaMovHABER.AsFloat         := 0;
//              CDSCajaMovID_FPAGO.Value        := CDSListaMovID_FPAGO.Value;
//              CDSCajaMovID_TPAGO.Value        := CDSListaMovID_TPAGO.Value;
//              CDSCajaMovUNIDADES.Value        := CDSListaMovUNIDADES.Value;
//              CDSCajaMovCOTIZACION.Value      := CDSListaMovCOTIZACION.Value;
//              CDSCajaMovMONEDA.Value          := CDSListaMovMONEDA.Value;
//              CDSCajaMov.post;


              //DMMain_FD.DBXt:=DMMain_FD.SQLConectionMain.BeginTransaction(TDBXIsolations.ReadCommitted);
              DMMain_FD.fdcGestion.StartTransaction;
              try
                if CDSTrans.State=dsBrowse then
                  CDSTrans.Edit;
                CDSTransESTADO.Value:='C';
                if Rechazada then
                  begin
                    CDSTransESTADO.Value:='R';
                    CDSTransOBSERVACIONES.Value:='RECHAZADA POR :'+DMMain_FD.UsuarioActivo;
                  end;
                CDSTrans.Post;
                DatoNew := CDSTransID.AsString;
                CDSTrans.ApplyUpdates(0);

 //               CDSCajaMov.ApplyUpdates(0);

//                spIngresarEfectivoDebe.Close;
//                spIngresarEfectivoDebe.Params.ParamByName('ID_CAJA').Value       := id_caja_Destino;
//                spIngresarEfectivoDebe.Params.ParamByName('ID_MOV_CAJA').Value   := CDSCajaMovID_MOV_CAJA.Value;
//                spIngresarEfectivoDebe.Params.ParamByName('ID_FPAGO').Value      := CDSCajaMovID_FPAGO.Value;
//                spIngresarEfectivoDebe.Params.ParamByName('COTIZACION').AsFloat  := CDSCajaMovCOTIZACION.AsFloat;
//                spIngresarEfectivoDebe.Params.ParamByName('UNIDADES').AsFloat    := CDSCajaMovUNIDADES.AsFloat;
//                spIngresarEfectivoDebe.Params.ParamByName('IMPORTE').AsFloat     := CDSCajaMovDEBE.AsFloat;
//                spIngresarEfectivoDebe.Params.ParamByName('ID_CUENTA_CAJA').Value:= CDSCajaMovID_CUENTA_CAJA.Value;
//                spIngresarEfectivoDebe.Params.ParamByName('MONEDA').Value        := CDSCajaMovMONEDA.Value;
//                spIngresarEfectivoDebe.ExecProc;
//                spIngresarEfectivoDebe.Close;

                //DMMain_FD.SQLConectionMain.CommitFreeAndNil(DMMain_FD.DBXt);
                spMovEfectioDebe.Close;
                spMovEfectioDebe.Params.ParamByName('ID_CPBTE').AsInteger       := CDSTransID.Value;
                spMovEfectioDebe.Params.ParamByName('TIPO_COMPROB').AsString    := CDSTransTIPOCPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('CLASE_COMPROB').AsString   := CDSTransCLASECPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('NROCPBTE').AsString        := CDSTransNROCPBTE.AsString;
                spMovEfectioDebe.Params.ParamByName('ID_CUENTA_CAJA').AsInteger := CDSTransCAJA_ORIGEN.Value;
                spMovEfectioDebe.Params.ParamByName('FECHA_MOVIMIENTO').AsDate  := CDSTransFECHA.AsDateTime;
                spMovEfectioDebe.Params.ParamByName('DEBE').AsFloat             := CDSSaldoATransferir.AsFloat*QCotizacionCOTIZACION.AsFloat;
                spMovEfectioDebe.Params.ParamByName('HABER').AsFloat            := 0;
                spMovEfectioDebe.Params.ParamByName('TIPOOPERACION').AsString   :='I';
                spMovEfectioDebe.ExecProc;




                DMMain_FD.fdcGestion.Commit;
                ShowMessage('Transferencia realizada...');
                CDSCajaMov.Close;


              except
                //DMMain_FD.SQLConectionMain.RollbackFreeAndNil(DMMain_FD.DBXt);
                DMMain_FD.fdcGestion.Rollback;
                CDSCajaMov.Close;
                ShowMessage('Opercaion no realizada...');
              end;
              Recuperar.Execute;
            end;
         end
      else
         ShowMessage('Falta Ingresar la fecha de Transeferncia....')
    else
      ShowMessage('No hay montos para transferir....')
  else
    ShowMessage('Las caja de origen y destino deben ser distintas.....!!!');
end;


}


end.