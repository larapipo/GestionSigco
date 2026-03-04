unit URemplazoCheques;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresEgresos, Db, ActnList,
  Buttons, StdCtrls, ToolWin, ComCtrls, ExtCtrls, Mask, DBCtrls, DBClient,
  Provider, IBGenerator,Librerias,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  JvExMask, JvToolEdit, JvDBLookup, DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, frxClass, frxDBSet,Math,System.Types, JvBaseEdits,
  JvComponentBase, Vcl.ImgList, JvExControls, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, Vcl.Grids,
  Vcl.DBGrids, AdvBadge, frCoreClasses;

type
  TFormRemplazoCheques = class(TFormABMBase)
    DSPRempChe: TDataSetProvider;
    DSPSucrusal: TDataSetProvider;
    BuscaCheque: TAction;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    pnValores: TPanel;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    ibgIdRemp: TIBGenerator;
    pnCabecera: TPanel;
    dbtMuestraComprobante: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSucursal: TDBEdit;
    pnCheque: TPanel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    dbeDetalle: TDBEdit;
    BuscarChequeNuevo: TAction;
    BitBtn1: TBitBtn;
    dbeFecha: TJvDBDateEdit;
    ceSucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    RxLabel1: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel9: TJvLabel;
    CDSRempChe: TClientDataSet;
    CDSRempCheID: TIntegerField;
    CDSRempCheFECHA: TSQLTimeStampField;
    CDSRempCheDETALLE: TStringField;
    CDSRempCheTIPOCPBTE: TStringField;
    CDSRempCheCLASECPBTE: TStringField;
    CDSRempCheLETRA: TStringField;
    CDSRempCheSUC: TStringField;
    CDSRempCheNUMERO: TStringField;
    CDSRempCheSUCURSAL: TIntegerField;
    CDSRempCheNROCPBTE: TStringField;
    CDSRempCheID_CHE_REMPLAZADO: TIntegerField;
    CDSRempCheOBSERVACIONES: TStringField;
    CDSRempCheMUESTRASUCURSAL: TStringField;
    CDSRempCheMUESTRACOMPROBANTE: TStringField;
    CDSRempCheID_TIPOCOMPROBANTE: TIntegerField;
    CDSRempCheMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    CDSRempCheMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    CDSRempCheMUESTRACHEORDENDE: TStringField;
    CDSRempCheMUESTRACHEIDBANCO: TIntegerField;
    CDSRempCheMUESTRACHENUMERO: TIntegerField;
    CDSRempCheMUESTRACTABANCO: TStringField;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    ToolButton1: TToolButton;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    frDBCab: TfrxDBDataset;
    frReporte: TfrxReport;
    frDBTx: TfrxDBDataset;
    frDBCajaMov: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBEfectivo: TfrxDBDataset;
    frCheque: TfrxDBDataset;
    JvLabel1: TJvLabel;
    edDeducciones: TDBEdit;
    frxDBDebitos: TfrxDBDataset;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorTipoCpbte: TComBuscador;
    BuscarPorReferencia: TAction;
    DBText7: TDBText;
    DSPEmpresa: TDataSetProvider;
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
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    frEmpresa: TfrxDBDataset;
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
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QComprobCONTROLADOR_NROREG: TStringField;
    QBuscaComprob: TFDQuery;
    QBuscadorCheque_2: TFDQuery;
    QBuscadorCheque_2ID_CHEQUE_PRO: TIntegerField;
    QBuscadorCheque_2ID_CHEQUERA: TIntegerField;
    QBuscadorCheque_2ID_BANCO: TIntegerField;
    QBuscadorCheque_2FECHA_EMISION: TSQLTimeStampField;
    QBuscadorCheque_2FECHA_COBRO: TSQLTimeStampField;
    QBuscadorCheque_2ORDEN_DE: TStringField;
    QBuscadorCheque_2DEBITADO: TStringField;
    QBuscadorCheque_2NUMERO: TIntegerField;
    QBuscadorCheque_2IMPORTE: TFloatField;
    QBuscadorCheque_2UNIDADES: TFloatField;
    QBuscadorCheque_2MUESTRABCO: TStringField;
    QBuscadorCheque_2ID_CUENTA_BANCO: TIntegerField;
    spDebitarFD: TFDStoredProc;
    QRempChe: TFDQuery;
    QRempCheID: TIntegerField;
    QRempCheFECHA: TSQLTimeStampField;
    QRempCheDETALLE: TStringField;
    QRempCheTIPOCPBTE: TStringField;
    QRempCheCLASECPBTE: TStringField;
    QRempCheLETRA: TStringField;
    QRempCheSUC: TStringField;
    QRempCheNUMERO: TStringField;
    QRempCheSUCURSAL: TIntegerField;
    QRempCheNROCPBTE: TStringField;
    QRempCheID_CHE_REMPLAZADO: TIntegerField;
    QRempCheIMPORTE: TFloatField;
    QRempCheOBSERVACIONES: TStringField;
    QRempCheDEDUCIONES: TFloatField;
    QRempCheMUESTRASUCURSAL: TStringField;
    QRempCheMUESTRACOMPROBANTE: TStringField;
    QRempCheID_TIPOCOMPROBANTE: TIntegerField;
    QRempCheMUESTRACHEFECHAEMISION: TSQLTimeStampField;
    QRempCheMUESTRACHEFECHACOBRO: TSQLTimeStampField;
    QRempCheMUESTRACHEIMPORTE: TFloatField;
    QRempCheMUESTRACHEORDENDE: TStringField;
    QRempCheMUESTRACHEIDBANCO: TIntegerField;
    QRempCheMUESTRACHENUMERO: TIntegerField;
    QRempCheMUESTRAUNIDADES: TFloatField;
    QRempCheMUESTRACTABANCO: TStringField;
    CDSRempCheIMPORTE: TFloatField;
    CDSRempCheMUESTRACHEIMPORTE: TFloatField;
    CDSRempCheMUESTRAUNIDADES: TFloatField;
    CDSRempCheDEDUCIONES: TFloatField;
    QRempCheMUESTRAFECHADEBITO: TSQLTimeStampField;
    CDSRempCheMUESTRAFECHADEBITO: TSQLTimeStampField;
    DBText8: TDBText;
    JvLabel2: TJvLabel;
    QBuscadorCheque_2FECHA_DEBITO: TSQLTimeStampField;
    QRempCheMUESTRAFUEDEBITADO: TStringField;
    CDSRempCheMUESTRAFUEDEBITADO: TStringField;
    chDebitado: TDBCheckBox;
    Panel2: TPanel;
    dbgCheques: TDBGrid;
    edImporte: TDBEdit;
    QDetalleChe: TFDQuery;
    DSDetalleChe: TDataSource;
    CDSDetalleChe: TClientDataSet;
    DSPDetalleChe: TDataSetProvider;
    QDetalleCheID: TIntegerField;
    QDetalleCheID_CAB: TIntegerField;
    QDetalleCheID_CHE_REMPLAZADO: TIntegerField;
    QDetalleCheFECHA: TSQLTimeStampField;
    QDetalleCheSUCURSAL: TIntegerField;
    QDetalleCheTIPOCPBTE: TStringField;
    QDetalleCheCLASECPBTE: TStringField;
    QDetalleCheLETRA: TStringField;
    QDetalleCheSUC: TStringField;
    QDetalleCheNUMERO: TStringField;
    QDetalleCheNROCPBTE: TStringField;
    QDetalleCheNRO_CHEQUE: TIntegerField;
    QDetalleCheFECHA_EMISION: TSQLTimeStampField;
    QDetalleCheFECHA_COBRO: TSQLTimeStampField;
    QDetalleCheORDEN_DE: TStringField;
    QDetalleCheID_CUENTA_CAJA: TIntegerField;
    QDetalleCheID_CUENTA_BANCO: TIntegerField;
    QDetalleCheIMPORTE: TFloatField;
    QDetalleCheOBSERVACIONES: TStringField;
    CDSDetalleCheID: TIntegerField;
    CDSDetalleCheID_CAB: TIntegerField;
    CDSDetalleCheID_CHE_REMPLAZADO: TIntegerField;
    CDSDetalleCheFECHA: TSQLTimeStampField;
    CDSDetalleCheSUCURSAL: TIntegerField;
    CDSDetalleCheTIPOCPBTE: TStringField;
    CDSDetalleCheCLASECPBTE: TStringField;
    CDSDetalleCheLETRA: TStringField;
    CDSDetalleCheSUC: TStringField;
    CDSDetalleCheNUMERO: TStringField;
    CDSDetalleCheNROCPBTE: TStringField;
    CDSDetalleCheNRO_CHEQUE: TIntegerField;
    CDSDetalleCheFECHA_EMISION: TSQLTimeStampField;
    CDSDetalleCheFECHA_COBRO: TSQLTimeStampField;
    CDSDetalleCheORDEN_DE: TStringField;
    CDSDetalleCheID_CUENTA_CAJA: TIntegerField;
    CDSDetalleCheID_CUENTA_BANCO: TIntegerField;
    CDSDetalleCheIMPORTE: TFloatField;
    CDSDetalleCheOBSERVACIONES: TStringField;
    QDetalleCheMUESTRABCO: TStringField;
    CDSDetalleCheMUESTRABCO: TStringField;
    spAgregarChe: TAdvBadgeSpeedButton;
    spBorrarChe: TAdvBadgeSpeedButton;
    QRempCheMUESTRAID_CTA_CAJA: TIntegerField;
    QRempCheMUESTRAID_CTA_BACO: TIntegerField;
    CDSRempCheMUESTRAID_CTA_CAJA: TIntegerField;
    CDSRempCheMUESTRAID_CTA_BACO: TIntegerField;
    QBuscadorCheque_2ID_CUENTA_CAJA: TIntegerField;
    ibgIdDet: TIBGenerator;
    frxDBDet: TfrxDBDataset;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    frCab: TfrxDBDataset;
    procedure FormCreate(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure ceSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSRempCheSUCSetText(Sender: TField; const Text: String);
    procedure CDSRempCheNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSRempCheID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure CDSRempCheSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSRempCheNewRecord(DataSet: TDataSet);
    procedure pnValoresEnter(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarChequeNuevoExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSChequesNewRecord(DataSet: TDataSet);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn7Click(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn3Click(Sender: TObject);
    procedure FrameMovValoresEgresos1btPostClick(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn8Click(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn6Click(Sender: TObject);
    procedure FrameMovValoresEgresos1BitBtn10Click(Sender: TObject);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure CDSRempCheDEDUCIONESSetText(Sender: TField; const Text: string);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure FrameMovValoresEgresos1spLoteChequesClick(Sender: TObject);
    procedure CDSRempCheReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure spAgregarCheClick(Sender: TObject);
    procedure CDSDetalleCheAfterPost(DataSet: TDataSet);
    procedure spBorrarCheClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Debitado:Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
    procedure AgregarChe_Lista;
  end;

var
  FormRemplazoCheques: TFormRemplazoCheques;

PROCEDURE UltimoComprobante;

implementation

uses  UBuscadorCpbte, UCarteraCheques,UDMain_FD,
     UBuscadorChePropios, DMBuscadoresForm, DMStoreProcedureForm,
  UBuscarPorNroReferencia;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormRemplazoCheques,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSRempCheLETRA.AsString <> '') AND (CDSRempCheCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSRempCheLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSRempCheSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSRempCheCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSRempCheTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
          ELSE
            Numero := 1;
          CDSRempCheSUCSetText(CDSRempCheSUC, IntToStr(Numero));
          IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
            Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
          ELSE
            Numero := 1;
          CDSRempCheNUMEROSetText(CDSRempCheNUMERO, IntToStr(Numero));
          CDSRempCheTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSRempCheCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSRempCheNROCPBTE.AsString := CDSRempCheLETRA.AsString +
                                     CDSRempCheSUC.AsString +
                                     CDSRempCheNUMERO.AsString;
    END;

END;

FUNCTION TFormRemplazoCheques.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.Eof) THEN
    BEGIN
      CDSRempCheID_TIPOCOMPROBANTE.Clear;
      CDSRempCheMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSRempCheID_TIPOCOMPROBANTESetText(CDSRempCheID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          //dbeDetalle.SetFocus;
        end;
      Result := True;
      CDSRempCheMUESTRASUCURSAL.Value := CDSSucursalDetalle.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSRempCheMUESTRASUCURSAL.Value := '';
    END;
END;

FUNCTION TFormRemplazoCheques.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('Suc').Value := CDSRempCheSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSRempCheMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSRempCheLETRA.Value              := QComprobLETRA.Value;
      CDSRempCheTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSRempCheCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSRempCheMUESTRACOMPROBANTE.Value := '';
      CDSRempCheLETRA.Value              := '';
      CDSRempCheTIPOCPBTE.Value          := '';
      CDSRempCheCLASECPBTE.Value         := '';
    END;
  QComprob.Close;
END;

procedure TFormRemplazoCheques.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  IF DSBase.DataSet=Nil Then
    DSBase.DataSet:=CDSRempChe;
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);

 // AddClientDataSet(CDSRempChe,DSPRempChe);

  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
  AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos,FrameMovValoresEgresos1.DSPDebitos);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCompra,FrameMovValoresEgresos1.DSPMovTCCompra);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCuota,FrameMovValoresEgresos1.DSPMovTCCuota);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3,FrameMovValoresEgresos1.DSPChe3);

  FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;

  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSTransBco.OPen;
  FrameMovValoresEgresos1.CDSDebitos.OPen;
  FrameMovValoresEgresos1.CDSMovTCCompra.OPen;
  FrameMovValoresEgresos1.CDSMovTCCuota.OPen;

  FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCheques.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  FrameMovValoresEgresos1.CDSTransBco.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCompra.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCuota.EmptyDataSet;

  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

  FrameMovValoresEgresos1.ceCaja.Enabled := DMMain_FD.ModificaCaja;

//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='CHEQUES';
//  DMMain_FD.QOpciones.Open;

  Tabla:='Remplazo_Cheques';
  Campo:='id';
  CDSEmpresa.Open;
  CDSRempChe.Open;
  CDSDetalleChe.Open;
end;

procedure TFormRemplazoCheques.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSRempCheSUCURSALSetText(CDSRempCheSUCURSAL, IntToStr(comBuscadorSucursal.id));
  CDSBuscaSucursal.Close;

end;

procedure TFormRemplazoCheques.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSRempCheSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk  Then
        CDSRempCheID_TIPOCOMPROBANTESetText(CDSRempCheID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;
end;

procedure TFormRemplazoCheques.ceSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSRempCheSUCURSAL.Clear;
      CDSRempCheMUESTRASUCURSAL.Clear;
      CDSRempCheID_TIPOCOMPROBANTE.Clear;
      CDSRempCheMUESTRACOMPROBANTE.Clear;
      CDSRempCheLETRA.Clear;
      CDSRempCheSUC.Clear;
      CDSRempCheNUMERO.Clear;
    end;

end;

procedure TFormRemplazoCheques.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
   frReporte.DesignReport;
end;

procedure TFormRemplazoCheques.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSRempCheID_TIPOCOMPROBANTE.Clear;
      CDSRempCheMUESTRACOMPROBANTE.Clear;
      CDSRempCheLETRA.Clear;
      CDSRempCheSUC.Clear;
      CDSRempCheNUMERO.Clear;
    end;

end;

procedure TFormRemplazoCheques.CDSRempCheSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSRempCheNROCPBTE.Value:= CDSRempCheLETRA.Value+
                             CDSRempCheSUC.Value+
                             CDSRempCheNUMERO.Value;
end;

procedure TFormRemplazoCheques.CDSRempCheNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSRempCheNROCPBTE.Value:= CDSRempCheLETRA.Value+
                             CDSRempCheSUC.Value+
                             CDSRempCheNUMERO.Value;
end;

procedure TFormRemplazoCheques.CDSRempCheReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TFormRemplazoCheques.CDSDetalleCheAfterPost(DataSet: TDataSet);
var p:TBookmark;
Aux:Extended;
begin
  inherited;
  p   := CDSDetalleChe.GetBookmark;
  Aux := 0;
  CDSDetalleChe.First;
  CDSDetalleChe.DisableControls;
  if CDSDetalleChe.RecordCount>1 then
    while Not(CDSDetalleChe.Eof) do
      begin
        Aux := Aux + CDSDetalleCheIMPORTE.AsFloat;
        CDSDetalleChe.Next;
      end
    else
      Aux := Aux + CDSDetalleCheIMPORTE.AsFloat;

  CDSRempCheIMPORTE.Value:=Aux;
  FrameMovValoresEgresos1.lbResto.Caption:=FormatFloat(',0.00',(CDSRempCheIMPORTE.Value - CDSRempCheDEDUCIONES.AsFloat));

  CDSDetalleChe.GotoBookmark(P);
  CDSDetalleChe.FreeBookmark(P);
  CDSDetalleChe.EnableControls;
end;

procedure TFormRemplazoCheques.CDSRempCheDEDUCIONESSetText(Sender: TField;
  const Text: string);
var aux:Extended;
begin
  inherited;
  Sender.AsString:=Text;
  aux:= (CDSRempCheIMPORTE.AsFloat-Sender.AsFloat) - FrameMovValoresEgresos1.SumaValores;
  FrameMovValoresEgresos1.lbResto.Caption := FormatFloat(',0.00',aux);
end;

procedure TFormRemplazoCheques.CDSRempCheID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato No Válido');
          RxCTipoCpbte.SetFocus;
        end;
      IF DsBase.State = dsInsert THEN
        UltimoComprobante;
     end;
end;

procedure TFormRemplazoCheques.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='QR';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 16;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;
  // DatosMovValoresRecibo.QCajaCab.Open;

end;

procedure TFormRemplazoCheques.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='H';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='QR' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end
    end
  else
    ShowMessage('No Hay Comprobante con ese Nro...');
end;

procedure TFormRemplazoCheques.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSRempChe.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSRempChe.Open;

  CDSDetalleChe.close;
  CDSDetalleChe.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSDetalleChe.Open;

  FrameMovValoresEgresos1.TipoOperacion := 'E';

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;

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
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Value  := StrToInt(DatoNew);//FrameMovValoresEgresos1.CDSMovTCCompraID_CUPON.Value;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.CalcularValores;

  pnPrincipal.Enabled:=True;
  pnValores.Enabled:=True;
  pnCabecera.Enabled:=False;
  // VERIFICO SI LA CAJA ESTA CERRADA
  //  QCaja.Close;
  //  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  //  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value) Then
    begin
      sbEstado.SimpleText := 'La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
      btModificar.Enabled := False;
      btBorrar.Enabled    := False;
    end
  else
    begin
      sbEstado.SimpleText := '';
      btModificar.Enabled := True;
      btBorrar.Enabled    := True;
    end;
  DatoNew:=''+DatoNew+'';

end;

procedure TFormRemplazoCheques.CDSRempCheSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
     Sender.AsString:=Text;
     if Not(AsignarSucursal(Sender.AsInteger)) Then
       begin
         ShowMessage('Dato No Válido');
         Sender.AsString:='';
         ceSucursal.SetFocus;
       end;
     end;

end;

procedure TFormRemplazoCheques.CDSRempCheNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRempCheID.Value          := ibgIdRemp.IncrementFD(1);
  CDSRempCheFECHA.AsDateTime  := date;
  CDSRempCheDEDUCIONES.AsFloat:= 0;
  CDSRempCheIMPORTE.AsFloat   := 0;
  CDSRempCheSUCURSALSetText(CDSRempCheSUCURSAL,IntToStr(SucursalPorDefecto));
end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1BitBtn10Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostTCExecute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1BitBtn3Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostChe3Execute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1BitBtn6Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PosDebitoExecute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1BitBtn7Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostEfectivoExecute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1BitBtn8Click(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostTransExecute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1btPostClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.PostChequeExecute(Sender);

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
  var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterDelete(DataSet);
  aux:= (CDSRempCheIMPORTE.AsFloat-CDSRempCheDEDUCIONES.AsFloat) - FrameMovValoresEgresos1.SumaValores;
  FrameMovValoresEgresos1.lbResto.Caption := FormatFloat(',0.00',aux);
end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
  var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= (CDSRempCheIMPORTE.AsFloat-CDSRempCheDEDUCIONES.AsFloat) - FrameMovValoresEgresos1.SumaValores;
  FrameMovValoresEgresos1.lbResto.Caption := FormatFloat(',0.00',aux);
end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1CDSChequesNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSChequesNewRecord(DataSet);
  FrameMovValoresEgresos1.CDSChequesUNIDADES.AsFloat    := CDSRempCheIMPORTE.AsFloat;// CDSRempCheMUESTRAUNIDADES.AsFloat;
  FrameMovValoresEgresos1.CDSChequesIMPORTE.AsFloat     := CDSRempCheIMPORTE.AsFloat;// CDSRempCheMUESTRACHEIMPORTE.AsFloat;
 // FrameMovValoresEgresos1.dbObs.Lines.Add('Remplazo de Che.'+wwCDSRempCheMUESTRACHENUMERO.AsString+' del Bco.'+wwCDSRempCheMUESTRACTABANCO.AsString);
 // FrameMovValoresEgresos1.dbObs.Lines.Add(wwCDSRempCheOBSERVACIONES.Value);
  FrameMovValoresEgresos1.CDSChequesORDEN_DE.Value      := CDSRempCheMUESTRACHEORDENDE.Value;
  FrameMovValoresEgresos1.CDSChequesOBSERVACIONES.Value := 'Remplazo de Che.'+CDSRempCheMUESTRACHENUMERO.AsString+' del Bco.'+CDSRempCheMUESTRACTABANCO.AsString;
  FrameMovValoresEgresos1.CDSChequesOBSERVACIONES.Value := FrameMovValoresEgresos1.CDSChequesOBSERVACIONES.AsString+CDSRempCheOBSERVACIONES.AsString;

end;

procedure TFormRemplazoCheques.FrameMovValoresEgresos1spLoteChequesClick(
  Sender: TObject);
begin
  inherited;
  FrameMovValoresEgresos1.spLoteChequesClick(Sender);

end;

procedure TFormRemplazoCheques.ImprimirExecute(Sender: TObject);
begin
  inherited;


  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSRempCheID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSRempCheSUCURSAL.Value;
  QComprob.Open;

  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  FrameMovValoresEgresos1.CDSCajaMov.First;
  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frReporte.PrepareReport;
  frReporte.ShowReport;
  //CDSEmpresa.Close;
  QComprob.Close;
end;

procedure TFormRemplazoCheques.pnValoresEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State=dsInsert Then
  IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (ceSucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') and (CDSRempCheIMPORTE.AsFloat>0) then
   begin
     pnCabecera.Enabled:=False;
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
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
                  Id_Caja            := QCajaCabID_CAJA.AsInteger;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
               end;
             TipoCpbte      := CDSRempCheTIPOCPBTE.AsString;
             TipoOperacion  := 'E';
             ClaseCpbte     := CDSRempCheCLASECPBTE.AsString;
             NroCpbte       := CDSRempCheNROCPBTE.AsString;
             FechaOperacion := CDSRempCheFECHA.AsDateTime;
             IdCpbte        := CDSRempCheID.Value;
             Origen         := 'Cambio de Che '+CDSRempCheMUESTRACHEORDENDE.AsString;
        end;
      END;
   end
  else
    begin
      ShowMessage('Faltan datos en el encabezado...');
//      pnValores.Enabled:=False;
      pnCabecera.Enabled:=True;
      dbeFecha.SetFocus;
    end;

end;

procedure TFormRemplazoCheques.ConfirmaExecute(Sender: TObject);
begin
  if CDSRempCheID_CHE_REMPLAZADO.AsString<>'' Then
    if Moneda3D(' ','0.00',FrameMovValoresEgresos1.SumaValores)>0 Then
//      if Moneda3D(' ','0.00',FrameMovValoresEgresos1.SumaValores)=Moneda3D(' ','0.00',CDSRempCheIMPORTE.AsFloat) Then
      if CompareValue(FrameMovValoresEgresos1.SumaValores,CDSRempCheIMPORTE.AsFloat-CDSRempCheDEDUCIONES.AsFloat,0.1)=EqualsValue Then

        begin
          DatoNew   := IntToStr(CDSRempCheID.Value);
          TipoCpbte := CDSRempCheTIPOCPBTE.Value;
          if CDSRempChe.State<>dsBrowse then
            CDSRempChe.Post;

          if CDSRempChe.ApplyUpdates(0)=0 then
            if CDSDetalleChe.ApplyUpdates(0)=0 then


          inherited;
          Recuperar.Execute;
          CDSDetalleChe.First;
          while Not(CDSDetalleChe.Eof) do
            begin
              QBuscadorCheque_2.Close;
              QBuscadorCheque_2.ParamByName('id').Value:=CDSDetalleCheID_CHE_REMPLAZADO.Value;// CDSRempCheID_CHE_REMPLAZADO.Value;
              QBuscadorCheque_2.Open;
              Debitado:=QBuscadorCheque_2DEBITADO.Value='S';
              if CDSRempCheID.AsString<>'' then
                begin
                  if (Debitado=False) then
                    begin
                      DMMain_FD.fdcGestion.StartTransaction;
                      try
                        spDebitarFD.Close;
                        spDebitarFD.ParamByName('id_cuenta_banco').Value := QBuscadorCheque_2ID_CUENTA_BANCO.Value;
                        spDebitarFD.ParamByName('id_cheque_pro').Value   := QBuscadorCheque_2ID_CHEQUE_PRO.Value;
                        spDebitarFD.ParamByName('Fecha_Debito').Value    := CDSRempCheFECHA.AsDateTime;
                        spDebitarFD.ParamByName('Fecha_Cobro').Value     := QBuscadorCheque_2FECHA_COBRO.AsDateTime;
                        spDebitarFD.ParamByName('Importe').Value         := QBuscadorCheque_2IMPORTE.AsFloat;
                        spDebitarFD.ParamByName('Numero').Value          := QBuscadorCheque_2NUMERO.Value;
                        spDebitarFD.ParamByName('Orden_de').Value        := QBuscadorCheque_2ORDEN_DE.Value;
                        spDebitarFD.ExecProc;
                        DMMain_FD.fdcGestion.Commit;
                        spDebitarFD.Close;
                      except
                        DMMain_FD.fdcGestion.Rollback;
                        ShowMessage('No Se Genero el debito del cheque, controlar la conciliacion de cheques....');
                      end;
                    end;
                end;
              CDSDetalleChe.Next;
            end;
         // if Imprime='S' Then
        end
      else ShowMessage('No coinciden los valores ingresados con el che. a remplazar')
    else ShowMessage('No hay valores ingresados')
  else
    ShowMessage('No hay cheque selecionada');
end;

procedure TFormRemplazoCheques.spAgregarCheClick(Sender: TObject);
begin
  inherited;
  AgregarChe_Lista;
end;

procedure TFormRemplazoCheques.spBorrarCheClick(Sender: TObject);
begin
  inherited;
  CDSDetalleChe.Delete;
end;

procedure TFormRemplazoCheques.AgregarChe_Lista;
begin
  CDSDetalleChe.Append;
  CDSDetalleCheID.Value                := ibgIdDet.IncrementFD(1);
  CDSDetalleCheID_CAB.Value            := CDSRempCheID.Value;
  CDSDetalleCheID_CHE_REMPLAZADO.Value := CDSRempCheID_CHE_REMPLAZADO.Value;
  CDSDetalleCheFECHA.Value             := CDSRempCheFECHA.Value;
  CDSDetalleCheSUCURSAL.Value          := CDSRempCheSUCURSAL.Value;
  CDSDetalleCheTIPOCPBTE.Value         := CDSRempCheTIPOCPBTE.Value;
  CDSDetalleCheCLASECPBTE.Value        := CDSRempCheCLASECPBTE.Value;
  CDSDetalleCheLETRA.Value             := CDSRempCheLETRA.Value;
  CDSDetalleCheSUC.Value               := CDSRempCheSUC.Value;
  CDSDetalleCheNUMERO.Value            := CDSRempCheNUMERO.Value;
  CDSDetalleCheNROCPBTE.Value          := CDSRempCheNROCPBTE.Value;
  CDSDetalleCheNRO_CHEQUE.Value        := CDSRempCheMUESTRACHENUMERO.Value;
  CDSDetalleCheFECHA_EMISION.Value     := CDSRempCheMUESTRACHEFECHAEMISION.Value;
  CDSDetalleCheFECHA_COBRO.Value       := CDSRempCheMUESTRACHEFECHACOBRO.Value;
  CDSDetalleCheORDEN_DE.Value          := CDSRempCheMUESTRACHEORDENDE.Value;
  CDSDetalleCheID_CUENTA_CAJA.Value    := CDSRempCheMUESTRAID_CTA_CAJA.Value;
  CDSDetalleCheID_CUENTA_BANCO.Value   := CDSRempCheMUESTRAID_CTA_BACO.Value;
  CDSDetalleCheIMPORTE.Value           := CDSRempCheMUESTRACHEIMPORTE.Value;
  CDSDetalleCheOBSERVACIONES.Value     := CDSRempCheOBSERVACIONES.Value;;
  CDSDetalleCheMUESTRABCO.Value        := CDSRempCheMUESTRACTABANCO.Value;
  CDSDetalleChe.Post;
end;

procedure TFormRemplazoCheques.AgregarExecute(Sender: TObject);
begin
  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Clear;
  CDSRempChe.Params.ParamByName('Tipo').Clear;
  CDSRempChe.Open;

  CDSDetalleChe.close;
  CDSDetalleChe.Params.ParamByName('id').Clear;
  CDSDetalleChe.Open;

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

  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

  inherited;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;

  pnCabecera.Enabled:=True;
  // RxDBCBancos.SetFocus;
end;

procedure TFormRemplazoCheques.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormRemplazoCheques.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Clear;
  CDSRempChe.Params.ParamByName('Tipo').Clear;
  CDSRempChe.Open;

  CDSDetalleChe.close;
  CDSDetalleChe.Params.ParamByName('id').Clear;
  CDSDetalleChe.Open;

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

  FrameMovValoresEgresos1.ceCaja.Text:='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';

end;

procedure TFormRemplazoCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSDetalleChe.Close;
  CDSRempChe.Close;
  CDSEmpresa.Close;
  Action:=caFree;
 // FreeAndNil(FormCarteraCheques);
end;

procedure TFormRemplazoCheques.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRemplazoCheques:=nil;
end;

procedure TFormRemplazoCheques.BorrarExecute(Sender: TObject);
begin
  if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?',
    mtInformation, [mbYes, mbNo], 0) = mrYes Then
  begin
    IF NOT (CDSRempChe.IsEmpty) THEN
      BEGIN
        DMMain_FD.fdcGestion.StartTransaction;
        try
          // esto borra EL REMPLAZO
          CDSRempChe.Delete;
          CDSRempChe.ApplyUpdates(0);
          CDSRempChe.EmptyDataSet;
          DMMain_FD.fdcGestion.Commit;
          //***********************
          CDSRempChe.close;
          CDSRempChe.Params.ParamByName('id').Clear;
          CDSRempChe.Params.ParamByName('Tipo').Clear;
          CDSRempChe.Open;

          CDSDetalleChe.close;
          CDSDetalleChe.Params.ParamByName('id').Clear;
          CDSDetalleChe.Open;


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

          FrameMovValoresEgresos1.ceCaja.Text:='';
          FrameMovValoresEgresos1.edMuestraCaja.Text:='';


        except
          DMMain_FD.fdcGestion.Rollback;
          ShowMessage('Transaccion no realizada...');
        end;
 //     Cancelar.Execute;
      //DatosOPago.wwCDSOPago.EmptyDataSet;
      END
    ELSE
      ShowMessage('No hay registro activo');
   end;

end;

procedure TFormRemplazoCheques.BuscarChequeNuevoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorChePropios)) Then
    FormBuscadorChePropios:=TFormBuscadorChePropios.Create(Application);
  FormBuscadorChePropios.Estado:='N';
  FormBuscadorChePropios.ShowModal;
  if (FormBuscadorChePropios.IdCheque>0) Then
    begin
       if FormBuscadorChePropios.Debitado='S' then
         if MessageDlg('Cheque Debitado... continua ?',TMsgDlgType.mtConfirmation,mbYesNo,0,mbYes)=mrNo Then Exit ;

       QBuscadorCheque_2.Close;
       QBuscadorCheque_2.ParamByName('id').Value:=FormBuscadorChePropios.IdCheque;
       QBuscadorCheque_2.Open;
       if MessageDlg('Ingresar al Listado de Cheques a reemplazar??',TMsgDlgType.mtConfirmation,mbYesNo,0,TMsgDlgBtn.mbYes)=mrYes Then
         begin
           CDSRempCheMUESTRACHEFECHAEMISION.Value := QBuscadorCheque_2FECHA_EMISION.Value;
           CDSRempCheMUESTRACHEFECHACOBRO.Value   := QBuscadorCheque_2FECHA_COBRO.Value;
           CDSRempCheMUESTRACHEORDENDE.Value      := QBuscadorCheque_2ORDEN_DE.Value;
           CDSRempCheMUESTRACTABANCO.AsString     := QBuscadorCheque_2MUESTRABCO.AsString;
           CDSRempCheMUESTRACHEIMPORTE.Value      := QBuscadorCheque_2IMPORTE.AsFLoat;
           CDSRempCheMUESTRAUNIDADES.Value        := QBuscadorCheque_2UNIDADES.Value;
           CDSRempCheMUESTRACHENUMERO.Value       := QBuscadorCheque_2NUMERO.Value;
           CDSRempCheID_CHE_REMPLAZADO.Value      := QBuscadorCheque_2ID_CHEQUE_PRO.Value;
           CDSRempCheMUESTRAFECHADEBITO.Value     := QBuscadorCheque_2FECHA_DEBITO.Value;
           CDSRempCheMUESTRAID_CTA_CAJA.Value     := QBuscadorCheque_2ID_CUENTA_CAJA.Value;
           CDSRempCheMUESTRAID_CTA_BACO.Value     := QBuscadorCheque_2ID_CUENTA_BANCO.Value;
           CDSRempCheIMPORTE.Value                := CDSRempCheIMPORTE.Value + QBuscadorCheque_2IMPORTE.AsFLoat;
           CDSRempCheDETALLE.Value                := 'Cambio de Che a '+QBuscadorCheque_2ORDEN_DE.Value;
           QBuscadorCheque_2.Close;
           FrameMovValoresEgresos1.lbResto.Caption:=FormatFloat(',0.00',(CDSRempCheIMPORTE.Value-CDSRempCheDEDUCIONES.AsFloat));
           AgregarChe_Lista;
        end;
    end;

end;

end.