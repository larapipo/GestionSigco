unit URemplazoChequesTercero;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, UMovValoresIngreso, Db, ActnList, ComCtrls, Buttons,
  ToolWin, ExtCtrls, IBGenerator, DBClient,Librerias,
  frxExportBaseDialog, System.ImageList, frxClass, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, frxExportPDF, frxDBSet, Datasnap.Provider,
  JvDBControls, JvExMask, JvToolEdit, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  JvLabel, FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador,
  JvAppStorage, JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  Vcl.ImgList, System.Actions, JvExControls, JvGradient,Data.DBXCommon,
  frCoreClasses;

type
  TFormRemplazoChequesTerceros = class(TFormABMBase)
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
    pnValores: TPanel;
    FrameMovValoresIngreso1: TFrameMovValoresIngreso;
    DSPRempChe: TDataSetProvider;
    ibgIdRemp: TIBGenerator;
    BuscaCheCartera: TAction;
    DSPSucrusal: TDataSetProvider;
    dbeDetalle: TDBEdit;
    BitBtn1: TBitBtn;
    DSPCajaMov: TDataSetProvider;
    IBGId_Caja_Mov: TIBGenerator;
    DBText7: TDBText;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
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
    QRempCheMUESTRASUCURSAL: TStringField;
    QRempCheMUESTRACOMPROBANTE: TStringField;
    QRempCheID_TIPOCOMPROBANTE: TIntegerField;
    QRempCheMUESTRAEMISION: TSQLTimeStampField;
    QRempCheMUESTRACOBRO: TSQLTimeStampField;
    QRempCheMUESTRAENTRADA: TSQLTimeStampField;
    QRempCheMUESTRACHENUMERO: TIntegerField;
    QRempCheMUESTRAUNIDADES: TFloatField;
    QRempCheMUESTRACOTIZACION: TFloatField;
    QRempCheMUESTRAMONEDA: TIntegerField;
    QRempCheMUESTRAFPAGOCHE: TIntegerField;
    QRempCheMUESTRAORIGEN: TStringField;
    QRempCheMUESTRAIDCAJA: TIntegerField;
    QRempCheMUESTRACAJA: TStringField;
    QRempCheMUESTRABANCO: TStringField;
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
    CDSRempCheIMPORTE: TFloatField;
    CDSRempCheOBSERVACIONES: TStringField;
    CDSRempCheMUESTRASUCURSAL: TStringField;
    CDSRempCheMUESTRACOMPROBANTE: TStringField;
    CDSRempCheID_TIPOCOMPROBANTE: TIntegerField;
    CDSRempCheMUESTRAEMISION: TSQLTimeStampField;
    CDSRempCheMUESTRACOBRO: TSQLTimeStampField;
    CDSRempCheMUESTRAENTRADA: TSQLTimeStampField;
    CDSRempCheMUESTRACHENUMERO: TIntegerField;
    CDSRempCheMUESTRAUNIDADES: TFloatField;
    CDSRempCheMUESTRACOTIZACION: TFloatField;
    CDSRempCheMUESTRAMONEDA: TIntegerField;
    CDSRempCheMUESTRAFPAGOCHE: TIntegerField;
    CDSRempCheMUESTRAORIGEN: TStringField;
    CDSRempCheMUESTRAIDCAJA: TIntegerField;
    CDSRempCheMUESTRACAJA: TStringField;
    CDSRempCheMUESTRABANCO: TStringField;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QComprob: TFDQuery;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
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
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    QBuscaComp: TFDQuery;
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
    CDSCajaMov: TClientDataSet;
    CDSCajaMovID_MOV_CAJA: TIntegerField;
    CDSCajaMovID_CAJA: TIntegerField;
    CDSCajaMovFECHA_CAJA: TSQLTimeStampField;
    CDSCajaMovFECHA_OPERACION: TSQLTimeStampField;
    CDSCajaMovTIPO_OPERACION: TStringField;
    CDSCajaMovTIPO_COMPROB: TStringField;
    CDSCajaMovCLASE_COMPROB: TStringField;
    CDSCajaMovID_COMPROBANTE: TIntegerField;
    CDSCajaMovNRO_COMPROBANTE: TStringField;
    CDSCajaMovHABER: TFloatField;
    CDSCajaMovDEBE: TFloatField;
    CDSCajaMovID_TPAGO: TIntegerField;
    CDSCajaMovID_FPAGO: TIntegerField;
    CDSCajaMovUNIDADES: TFloatField;
    CDSCajaMovCOTIZACION: TFloatField;
    CDSCajaMovID_CUENTA_CAJA: TIntegerField;
    CDSCajaMovMONEDA: TIntegerField;
    CDSCajaMovMUESTRAFORMAPAGO: TStringField;
    DSCajaMov: TDataSource;
    QCajaPorIdCuenta: TFDQuery;
    IntegerField1: TIntegerField;
    QCtaCajaBco: TFDQuery;
    QCtaCajaBcoNOMBRE: TStringField;
    dbeFecha: TJvDBDateEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
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
    RxLabel8: TJvLabel;
    RxLabel1: TJvLabel;
    frReporte: TfrxReport;
    frDBCajaMov: TfrxDBDataset;
    frDBCab: TfrxDBDataset;
    frDBChe3: TfrxDBDataset;
    frDBEfectivo: TfrxDBDataset;
    frDBTx: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    ToolButton1: TToolButton;
    frxPDFExport1: TfrxPDFExport;
    ComBuscadorTipoCpbte: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    frEmpresa: TfrxDBDataset;
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
    DBText8: TDBText;
    DBText9: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
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
    procedure CancelarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscaCheCarteraExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSRempCheNUMEROSetText(Sender: TField; const Text: string);
    procedure CDSRempCheSUCSetText(Sender: TField; const Text: string);
    procedure ImprimirExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer):Boolean;
  end;

var
  FormRemplazoChequesTerceros: TFormRemplazoChequesTerceros;

PROCEDURE UltimoComprobante;

implementation

USES  UCarteraCheques, UBuscadorCpbte, DMBuscadoresForm,
  DMStoreProcedureForm, UDMain_FD;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH FormRemplazoChequesTerceros,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSRempCheLETRA.AsString <> '') AND (CDSRempCheCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value := CDSRempCheLETRA.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value  := CDSRempCheSUCURSAL.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value := CDSRempCheCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value  := CDSRempCheTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
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
          CDSRempCheTIPOCPBTE.Value  := spNumeroCpbte.ParamByName('Tipo_Comprob').Value;
          CDSRempCheCLASECPBTE.Value := spNumeroCpbte.ParamByName('Clase_Comprob').Value;
          Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSRempCheNROCPBTE.AsString := CDSRempCheLETRA.AsString +
                                     CDSRempCheSUC.AsString +
                                     CDSRempCheNUMERO.AsString;
    END;

END;

FUNCTION TFormRemplazoChequesTerceros.AsignarSucursal(Dato: Integer): Boolean;
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

FUNCTION TFormRemplazoChequesTerceros.AsignarComprobante(Dato: Integer):Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value  := dato;
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


procedure TFormRemplazoChequesTerceros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSEmpresa.Close;
  Action:=caFree;
end;

procedure TFormRemplazoChequesTerceros.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  SinBde:=2;
  IF DSBase.DataSet=Nil Then
    DSBase.DataSet:=CDSRempChe;

  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);

  FrameMovValoresIngreso1.tsEfectivo.TabVisible           := True;
  FrameMovValoresIngreso1.tsChe3.TabVisible               := True;
  FrameMovValoresIngreso1.tsTCredito.TabVisible           := False;
  FrameMovValoresIngreso1.tsTransf.TabVisible             := True;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;
  FrameMovValoresIngreso1.tsValoresCompartidos.TabVisible := False;
  FrameMovValoresIngreso1.tsCheques.TabVisible            := False;
  FrameMovValoresIngreso1.tsDebito.TabVisible             := False;
  FrameMovValoresIngreso1.tsCtaCte.TabVisible             := False;


  AddClientDataSet(CDSRempChe,DSPRempChe);
  AddClientDataSet(CDSCajaMov,DSPCajaMov);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresIngreso1.CDSCajaMov,FrameMovValoresIngreso1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresIngreso1.CDSMovEfectivo,FrameMovValoresIngreso1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresIngreso1.CDSTransBco,FrameMovValoresIngreso1.DSPTransBco);
  AddClientDataSet(FrameMovValoresIngreso1.CDSChe3,FrameMovValoresIngreso1.DSPChe3);

  FrameMovValoresIngreso1.pcValores.ActivePageIndex:=0;

  FrameMovValoresIngreso1.CDSChe3.Open;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;
  FrameMovValoresIngreso1.CDSCajaMov.Open;
  FrameMovValoresIngreso1.CDSTransBco.OPen;

  FrameMovValoresIngreso1.CDSChe3.EmptyDataSet;
  FrameMovValoresIngreso1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;
  FrameMovValoresIngreso1.CDSTransBco.EmptyDataSet;

  FrameMovValoresIngreso1.InicicalizaMascarasNumericas;

//  FrameMovValoresIngreso1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
  // solo en la caja que tiene el cheque

  FrameMovValoresIngreso1.ceCaja.Enabled:=False;

  // Traigo el formato de la mascara
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('OPCION').AsString:='CHEQUES';
//  DMMain_FD.QOpciones.Open;

  Tabla:='Remplazo_Cheques_Tercero';
  Campo:='id';

  CDSRempChe.Open;
  CDSCajaMov.Open;
  CDSEmpresa.Open;

end;

procedure TFormRemplazoChequesTerceros.CDSRempCheID_TIPOCOMPROBANTESetText(
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

procedure TFormRemplazoChequesTerceros.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Self);
  FormBuscaCpbte.TipoCpbte1:='QT';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.Tag := 20;
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

end;

procedure TFormRemplazoChequesTerceros.RecuperarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id').Clear;
  CDSCajaMov.Params.ParamByName('Tipo').Clear;
  CDSCajaMov.Open;
  CDSCajaMov.EmptyDataSet;

  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  CDSRempChe.Params.ParamByName('Tipo').Value := TipoCpbte;
  CDSRempChe.Open;

  FrameMovValoresIngreso1.TipoOperacion := 'I';

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Value   := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Value := TipoCpbte;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :=FrameMovValoresIngreso1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresIngreso1.edMuestraCaja.Text:=FrameMovValoresIngreso1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresIngreso1.Id_Caja           :=FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.CalcularValores;

  pnPrincipal.Enabled := True;
  pnValores.Enabled   := True;
  pnCabecera.Enabled  := False;
  // VERIFICO SI LA CAJA ESTA CERRADA
  //  QCaja.Close;
  //  QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  //  QCaja.Open;
  // se paso a una funcion en el DMMain_FD
  if DMMain_FD.CajaCerrada(FrameMovValoresIngreso1.CDSCajaMovID_CAJA.Value) Then
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
  //QCaja.Close;
  DatoNew:=''+DatoNew+'';
  btNuevo.SetFocus;
end;

procedure TFormRemplazoChequesTerceros.CDSRempCheSUCSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSRempCheNROCPBTE.Value:=CDSRempCheLETRA.Value+CDSRempCheSUC.Value+CDSRempCheNUMERO.Value;
end;

procedure TFormRemplazoChequesTerceros.CDSRempCheSUCURSALSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
     Sender.AsString:=Text;
     if Not(AsignarSucursal(Sender.AsInteger)) Then
       begin
         ShowMessage('Dato No Válido');
         Sender.AsString:='';
         RxDBESucursal.SetFocus;
       end;
     end;

end;

procedure TFormRemplazoChequesTerceros.CDSRempCheNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  CDSRempCheID.Value          := ibgIdRemp.IncrementFD(1);
  CDSRempCheFECHA.AsDateTime  := Date;
  CDSRempCheSUCURSALSetText(CDSRempCheSUCURSAL,IntToStr(SucursalPorDefecto));
end;

procedure TFormRemplazoChequesTerceros.CDSRempCheNUMEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString          := Copy('00000000',1,Sender.Size-Length(Text)) + Text;
  CDSRempCheNROCPBTE.Value := CDSRempCheLETRA.Value + CDSRempCheSUC.Value + CDSRempCheNUMERO.Value;
end;

procedure TFormRemplazoChequesTerceros.pnValoresEnter(Sender: TObject);
begin
  inherited;
 if DSBase.State=dsInsert Then
   IF (dbeSuc.Text<>'') AND (dbeNumero.Text<>'') and
     (RxDBESucursal.Text<>'') and (RxCTipoCpbte.Text<>'') and
     (dbeFecha.Text<>'') and (CDSRempCheIMPORTE.AsFloat>0) then
   begin
     pnCabecera.Enabled:=False;
     WITH FrameMovValoresIngreso1 DO
       BEGIN
         if (DSBase.State=dsInsert) and (FrameMovValoresIngreso1.ceCaja.Text='') Then
           begin
             QCajaCab.Close;
             QCajaCab.ParamByName('Id').Value := CDSRempCheMUESTRAIDCAJA.Value;
             QCajaCab.Open;
             IF NOT (QCajaCab.IsEmpty) THEN
               BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
               end;
             TipoCpbte      := CDSRempCheTIPOCPBTE.Value;
             TipoOperacion  := 'I';
             ClaseCpbte     := CDSRempCheCLASECPBTE.Value;
             NroCpbte       := CDSRempCheNROCPBTE.Value;
             FechaOperacion := CDSRempCheFECHA.AsDateTime;
             IdCpbte        := CDSRempCheID.Value;
             Origen         := 'Cambio de Che ';
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

procedure TFormRemplazoChequesTerceros.ConfirmaExecute(Sender: TObject);
begin
  if CDSRempCheID_CHE_REMPLAZADO.AsString<>'' Then
    if Moneda3D(' ','0.00',FrameMovValoresIngreso1.SumaValores)>0 Then
      if Moneda3D(' ','0.00',FrameMovValoresIngreso1.SumaValores)=Moneda3D(' ','0.00',CDSRempCheIMPORTE.AsFloat) Then
        begin
          FrameMovValoresIngreso1.CDSCajaMov.First;
          FrameMovValoresIngreso1.CDSCajaMov.DisableControls;
          CDSCajaMov.Insert;
          CDSCajaMovID_CAJA.Value         := FrameMovValoresIngreso1.Id_Caja;
          CDSCajaMovID_CUENTA_CAJA.Value  := FrameMovValoresIngreso1.id_cuenta_caja;
          CDSCajaMovID_MOV_CAJA.Value     := IBGId_Caja_Mov.IncrementFD(1);
          CDSCajaMovFECHA_CAJA.AsDateTime := FrameMovValoresIngreso1.CDSCajaMovFECHA_CAJA.AsDateTime;
          CDSCajaMovFECHA_OPERACION.Value := CDSRempCheFECHA.Value;
          CDSCajaMovTIPO_OPERACION.Value  := 'E';
          CDSCajaMovID_COMPROBANTE.Value  := CDSRempCheID.Value;
          CDSCajaMovTIPO_COMPROB.Value    := CDSRempCheTIPOCPBTE.Value;
          CDSCajaMovCLASE_COMPROB.Value   := CDSRempCheCLASECPBTE.Value;
          CDSCajaMovNRO_COMPROBANTE.Value := CDSRempCheNROCPBTE.Value;
          CDSCajaMovDEBE.AsFloat          := 0;
          CDSCajaMovHABER.Value           := CDSRempCheIMPORTE.Value;
          CDSCajaMovID_TPAGO.Value        := 3;                                 // cheque de tercero
          CDSCajaMovID_FPAGO.Value        := CDSRempCheMUESTRAFPAGOCHE.Value;   // QBuscaFormadePago.Fields[0].AsInteger;
          CDSCajaMovUNIDADES.Value        := CDSRempCheMUESTRAUNIDADES.Value;
          CDSCajaMovCOTIZACION.Value      := CDSRempCheMUESTRACOTIZACION.Value;
          CDSCajaMovMONEDA.Value          := CDSRempCheMUESTRAMONEDA.Value;
          CDSCajaMov.post;
          FormCarteraCheques.CDSCarteraChe.edit;
          FormCarteraCheques.CDSCarteraCheFECHA_SALIDA.AsDateTime   := CDSRempCheFECHA.AsDateTime;
          FormCarteraCheques.CDSCarteraCheID_MOV_CAJA_EGRESOS.Value := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
          FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat     := 0;
          FormCarteraCheques.CDSCarteraCheSALDO_UNIDADES.AsFloat    := 0;
          FormCarteraCheques.CDSCarteraChe.Post;
          FrameMovValoresIngreso1.CDSCajaMov.EnableControls;
        // wwCDSRempCheIMPORTE.Value:=wwCDSRempCheMUESTRACHEIMPORTE.Value;
          DatoNew   :=IntToStr(CDSRempCheID.Value);
          TipoCpbte :=CDSRempCheTIPOCPBTE.Value;
          inherited;
          Recuperar.Execute;
         // if Imprime='S' Then
        end
      else ShowMessage('No coinciden los valores ingresados con el che. a remplazar')
    else ShowMessage('No hay valores ingresados')
  else
    ShowMessage('No hay cheque selecionada');

end;



procedure TFormRemplazoChequesTerceros.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  btImprimir.Enabled := (Not(DSBase.DataSet.IsEmpty)) and (DSBase.State=dsBrowse);
  Modificar.Enabled  := False;
 // Modificar.Visible:=False;
end;

procedure TFormRemplazoChequesTerceros.AgregarExecute(Sender: TObject);
begin
  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Clear;
  CDSRempChe.Params.ParamByName('Tipo').Clear;
  CDSRempChe.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;

  FrameMovValoresIngreso1.ceCaja.Text        := '';
  FrameMovValoresIngreso1.edMuestraCaja.Text := '';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;

  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  inherited;
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques
  FrameMovValoresIngreso1.CDSCajaMov.EmptyDataSet;

  pnCabecera.Enabled:=True;

end;

procedure TFormRemplazoChequesTerceros.CancelarExecute(Sender: TObject);
begin
  inherited;
  CDSRempChe.close;
  CDSRempChe.Params.ParamByName('id').Clear;
  CDSRempChe.Params.ParamByName('Tipo').Clear;
  CDSRempChe.Open;

  CDSCajaMov.Close;
  CDSCajaMov.Params.ParamByName('id').Clear;
  CDSCajaMov.Params.ParamByName('Tipo').Clear;
  CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Close;

  FrameMovValoresIngreso1.ceCaja.Text       :='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';

  FrameMovValoresIngreso1.CDSCajaMov.Close;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresIngreso1.CDSCajaMov.Open;

  FrameMovValoresIngreso1.CDSChe3.Close;
  FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSChe3.Open;

  FrameMovValoresIngreso1.CDSMovEfectivo.Close;
  FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSMovEfectivo.Open;


  FrameMovValoresIngreso1.CDSTransBco.Close;
  FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresIngreso1.CDSTransBco.Open;

  FrameMovValoresIngreso1.ceCaja.Text:='';
  FrameMovValoresIngreso1.edMuestraCaja.Text:='';
  btNuevo.SetFocus;
end;

procedure TFormRemplazoChequesTerceros.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRemplazoChequesTerceros:=nil;
end;

procedure TFormRemplazoChequesTerceros.BuscaCheCarteraExecute(Sender: TObject);
 VAR Key: Word; Shift: TShiftState;
begin
  inherited;
  Key    := vk_return;Shift:=[];
  FormCarteraCheques.ShowModal;
  if FormCarteraCheques.Aceptado Then
    begin
      QCajaPorIdCuenta.Close;
      QCajaPorIdCuenta.ParamByName('id').Value:=FormCarteraCheques.CDSCarteraCheID_CUENTA_CAJA.Value;
      QCajaPorIdCuenta.Open;
      if Not(QCajaPorIdCuenta.isEmpty) and
         (Trunc(FormCarteraCheques.CDSCarteraCheIMPORTE.AsFloat*1000) = Trunc(FormCarteraCheques.CDSCarteraCheSALDO_IMPORTE.AsFloat*1000)) Then
        begin

          CDSRempCheMUESTRAEMISION.AsDateTime := FormCarteraCheques.CDSCarteraCheFECHA_EMISION.AsDateTime;
          CDSRempCheMUESTRACOBRO.AsDateTime   := FormCarteraCheques.CDSCarteraCheFECHA_COBRO.AsDateTime;
          CDSRempCheMUESTRAENTRADA.AsDateTime := FormCarteraCheques.CDSCarteraCheFECHA_ENTRADA.AsDateTime;
          CDSRempCheIMPORTE.AsFloat           := StrToFloat(FormatFloat('0.00',FormCarteraCheques.CDSCarteraCheIMPORTE.AsFloat));
          CDSRempCheMUESTRAUNIDADES.AsFloat   := StrToFloat(FormatFloat('0.00',FormCarteraCheques.CDSCarteraCheUNIDADES.AsFloat));
          CDSRempCheMUESTRABANCO.Value        := FormCarteraCheques.CDSCarteraCheMUESTRABANCO.Value;
          CDSRempCheMUESTRACHENUMERO.Value    := FormCarteraCheques.CDSCarteraCheNUMERO.Value;
          CDSRempCheID_CHE_REMPLAZADO.Value   := FormCarteraCheques.CDSCarteraCheID_CHEQUE_TER.Value;
          CDSRempCheMUESTRAMONEDA.Value       := FormCarteraCheques.CDSCarteraCheMONEDA.Value;
          CDSRempCheMUESTRACOTIZACION.AsFloat := FormCarteraCheques.CDSCarteraCheCOTIZACION.AsFloat;
          CDSRempCheMUESTRAFPAGOCHE.Value     := FormCarteraCheques.CDSCarteraCheID_FPAGO.Value;
          CDSRempCheMUESTRAORIGEN.Value       := FormCarteraCheques.CDSCarteraCheORIGEN.Value;
          CDSRempCheMUESTRAIDCAJA.Value       := FormCarteraCheques.CDSCarteraCheID_CUENTA_CAJA.Value;
          QCtaCajaBco.Close;
          QCtaCajaBco.ParamByName('id').Value := CDSRempCheMUESTRAIDCAJA.Value;
          QCtaCajaBco.Open;
          CDSRempCheMUESTRACAJA.Value         := QCtaCajaBcoNOMBRE.Value;
          QCtaCajaBco.Close;
 //         FrameMovValoresIngreso1.ceCaja.OnKeyDown(Sender,Key,Shift);
          FormCarteraCheques.CDSCarteraChe.edit;
          FormCarteraCheques.CDSCarteraCheDESTINO.Value             := 'Reemplazado';
          FormCarteraCheques.CDSCarteraCheDISPONIBLE.Value          := 'N';
          FormCarteraCheques.CDSCarteraCheFECHA_SALIDA.AsDateTime   := CDSRempCheFECHA.AsDateTime;
          FormCarteraCheques.CDSCarteraCheID_MOV_CAJA_EGRESOS.Value := FrameMovValoresIngreso1.CDSCajaMovID_MOV_CAJA.Value;
          FormCarteraCheques.CDSCarteraChe.Post;
          CDSRempCheDETALLE.Value:='Reemplazo de Che.';
          pnValores.SetFocus;
          dbeDetalle.SetFocus;
        end
      else
        begin
          ShowMessage(' Este cheque pertenece a una caja que está cerrada ...'+#13+
                      ' o tiene un saldo parcial aplicado ...'+#13+
                      ' no se pude canjear...');
          CDSRempCheMUESTRAEMISION.AsString   :='';
          CDSRempCheMUESTRACOBRO.AsString     :='';
          CDSRempCheMUESTRAENTRADA.AsString   :='';
          CDSRempCheIMPORTE.AsFloat           :=StrToFloat(FormatFloat('0.00',0));
          CDSRempCheMUESTRABANCO.AsString     :='';
          CDSRempCheMUESTRACHENUMERO.AsString :='';
          CDSRempCheID_CHE_REMPLAZADO.AsString:='';
          CDSRempCheMUESTRAMONEDA.AsString    :='';
          CDSRempCheMUESTRACOTIZACION.AsString:='';
          CDSRempCheDETALLE.Value             :='';
         end;
    end
  else
    begin
      CDSRempCheMUESTRAEMISION.AsString := '';
      CDSRempCheMUESTRACOBRO.AsString   := '';
      CDSRempCheMUESTRAENTRADA.AsString := '';
      CDSRempCheIMPORTE.AsFloat         := 0;
      CDSRempCheMUESTRABANCO.Value      := '';
      CDSRempCheID_CHE_REMPLAZADO.Value := -1;
    end;
end;

procedure TFormRemplazoChequesTerceros.FormShow(Sender: TObject);
begin
  inherited;
  if btNuevo.Enabled then
    btNuevo.SetFocus;
end;

procedure TFormRemplazoChequesTerceros.ImprimirExecute(Sender: TObject);
begin
  inherited;
  QComprob.Close;
  QComprob.ParamByName('id').Value := CDSRempCheID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:= CDSRempCheSUCURSAL.Value;
  QComprob.Open;

  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  FrameMovValoresIngreso1.CDSCajaMov.First;
  frReporte.PrintOptions.Printer:=PrNomCpbte;
  frReporte.SelectPrinter;
  frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frReporte.PrepareReport;
  frReporte.ShowReport;
  //CDSEmpresa.Close;
  QComprob.Close;
end;

procedure TFormRemplazoChequesTerceros.BorrarExecute(Sender: TObject);
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

          FrameMovValoresIngreso1.CDSChe3.Close;
          FrameMovValoresIngreso1.CDSMovEfectivo.Close;

          FrameMovValoresIngreso1.ceCaja.Text       :='';
          FrameMovValoresIngreso1.edMuestraCaja.Text:='';

          FrameMovValoresIngreso1.CDSCajaMov.Close;
          FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('id').Clear;
          FrameMovValoresIngreso1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
          FrameMovValoresIngreso1.CDSCajaMov.Open;

          FrameMovValoresIngreso1.CDSChe3.Close;
          FrameMovValoresIngreso1.CDSChe3.Params.ParamByName('id').Clear;
          FrameMovValoresIngreso1.CDSChe3.Open;

          FrameMovValoresIngreso1.CDSMovEfectivo.Close;
          FrameMovValoresIngreso1.CDSMovEfectivo.Params.ParamByName('id').Clear;
          FrameMovValoresIngreso1.CDSMovEfectivo.Open;

          FrameMovValoresIngreso1.CDSTransBco.Close;
          FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
          FrameMovValoresIngreso1.CDSTransBco.Open;

          FrameMovValoresIngreso1.ceCaja.Text:='';
          FrameMovValoresIngreso1.edMuestraCaja.Text:='';


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

procedure TFormRemplazoChequesTerceros.BuscarTipoCpbteExecute( Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Params.ParamByName('Suc').Value := CDSRempCheSUCURSAL.Value;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorTipoCpbte.Execute;
      if comBuscadorTipoCpbte.rOk Then
          CDSRempCheID_TIPOCOMPROBANTESetText(CDSRempCheID_TIPOCOMPROBANTE, IntToStr(comBuscadorTipoCpbte.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;
end;

procedure TFormRemplazoChequesTerceros.RxCTipoCpbteKeyDown(Sender: TObject;
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

procedure TFormRemplazoChequesTerceros.BuscarSucursalExecute(
  Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSRempCheSUCURSALSetText(CDSRempCheSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;

end;

procedure TFormRemplazoChequesTerceros.RxDBESucursalKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
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

procedure TFormRemplazoChequesTerceros.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

end.