unit DMVentaReducida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, IBGenerator, Db, DBClient, wwclient, Provider, Wwdatsrc,
  Wwquery,Librerias,Variants;

type
  TDatosVentaReducida = class(TDataModule)
    QAnulacion: TQuery;
    wwDSImpuestos: TwwDataSource;
    DSPVentaCab: TDataSetProvider;
    DSPCondVenta: TDataSetProvider;
    wwCDSVentaCab: TwwClientDataSet;
    wwCDSVentaCabLDR: TIntegerField;
    wwCDSVentaCabDeposito: TIntegerField;
    wwCDSVentaCabID_FC: TIntegerField;
    wwCDSVentaCabTIPOCPBTE: TStringField;
    wwCDSVentaCabNROCPBTE: TStringField;
    wwCDSVentaCabLETRAFAC: TStringField;
    wwCDSVentaCabNOMBRE: TStringField;
    wwCDSVentaCabRAZONSOCIAL: TStringField;
    wwCDSVentaCabDIRECCION: TStringField;
    wwCDSVentaCabCPOSTAL: TStringField;
    wwCDSVentaCabLOCALIDAD: TStringField;
    wwCDSVentaCabTIPOIVA: TIntegerField;
    wwCDSVentaCabCUIT: TStringField;
    wwCDSVentaCabFECHAVTA: TDateTimeField;
    wwCDSVentaCabFECHAVTO: TDateTimeField;
    wwCDSVentaCabANULADO: TStringField;
    wwCDSVentaCabNRORTO: TStringField;
    wwCDSVentaCabN_OPERACION2: TFloatField;
    wwCDSVentaCabNETOGRAV1: TFloatField;
    wwCDSVentaCabDSTO: TFloatField;
    wwCDSVentaCabDSTOIMPORTE: TFloatField;
    wwCDSVentaCabNETOEXEN1: TFloatField;
    wwCDSVentaCabNETOEXEN2: TFloatField;
    wwCDSVentaCabTOTAL: TFloatField;
    wwCDSVentaCabDEBE: TFloatField;
    wwCDSVentaCabIMPRESO: TStringField;
    wwCDSVentaCabOBSERVACION1: TStringField;
    wwCDSVentaCabOBSERVACION2: TStringField;
    wwCDSVentaCabCPTE_MANUAL: TStringField;
    wwCDSVentaCabFACTURANRO: TStringField;
    wwCDSVentaCabZONA: TIntegerField;
    wwCDSVentaCabCALCULA_SOBRETASA: TStringField;
    wwCDSVentaCabDESGLOZAIVA: TStringField;
    wwCDSVentaCabNROENTREGA: TIntegerField;
    wwCDSVentaCabMUESTRACONDVENTA: TStringField;
    wwCDSVentaCabMUESTRADEPOSITO: TStringField;
    wwCDSVentaCabMUESTRASUCURSAL: TStringField;
    wwCDSVentaCabMUESTRALDR: TStringField;
    wwCDSVentaCabMUESTRAIVA: TStringField;
    wwCDSVentaCabMUESTRACOMPROBANTE: TStringField;
    wwCDSVentaCabINGRESA_A_CTACTE: TStringField;
    wwCDSVentaCabINGRESA_LIBRO_IVA: TStringField;
    wwCDSVentaCabCLASECPBTE: TStringField;
    wwCDSVentaCabCODIGO: TStringField;
    wwCDSVentaCabSUCFAC: TStringField;
    wwCDSVentaCabNUMEROFAC: TStringField;
    wwCDSVentaCabCONDICIONVTA: TIntegerField;
    wwCDSVentaCabNETOGRAV2: TFloatField;
    wwCDSVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    wwCDSCondVenta: TwwClientDataSet;
    wwCDSCondVentaCodigoPago: TIntegerField;
    wwCDSCondVentaDetalle: TStringField;
    wwCDSCondVentaCodigoCliente: TStringField;
    wwCDSCondVentaDescuento: TFloatField;
    wwCDSCondVentaDias: TIntegerField;
    wwCDSCondVentaDescuento_FPago: TFloatField;
    DSPImpuestos: TDataSetProvider;
    wwCDSImpuestos: TwwClientDataSet;
    wwCDSImpuestosID_IMPUESTO: TIntegerField;
    wwCDSImpuestosID_FCVTACAB: TIntegerField;
    wwCDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    wwCDSImpuestosDETALLE: TStringField;
    wwCDSImpuestosNETO: TFloatField;
    wwCDSImpuestosTASA: TFloatField;
    wwCDSImpuestosIMPORTE: TFloatField;
    wwCDSClientes: TwwClientDataSet;
    wwCDSClientesCODIGO: TStringField;
    wwCDSClientesNOMBRE: TStringField;
    wwCDSClientesRAZON_SOCIAL: TStringField;
    wwCDSClientesDIRECCION_PARTICULAR: TStringField;
    wwCDSClientesDIRECCION_COMERCIAL: TStringField;
    wwCDSClientesTELEFONO_PARTICULAR: TStringField;
    wwCDSClientesTELEFONO_COMERCIAL_1: TStringField;
    wwCDSClientesTELEFONO_COMERCIAL_2: TStringField;
    wwCDSClientesTELEFONO_CELULAR: TStringField;
    wwCDSClientesID_COD_POSTAL: TIntegerField;
    wwCDSClientesCPOSTAL: TStringField;
    wwCDSClientesLOCALIDAD: TStringField;
    wwCDSClientesCONDICION_IVA: TIntegerField;
    wwCDSClientesEMITE_REMITO: TStringField;
    wwCDSClientesEMITE_FACTURA: TStringField;
    wwCDSClientesNRO_DE_CUIT: TStringField;
    wwCDSClientesACTIVO: TStringField;
    wwCDSClientesLIMITE_CREDITO: TFloatField;
    wwCDSClientesSALDOINICIAL: TFloatField;
    wwCDSClientesOBSERVACIONES: TMemoField;
    wwCDSClientesFECHAULTIMACOMPRA: TDateTimeField;
    wwCDSClientesFECHAALTA: TDateTimeField;
    wwCDSClientesSUCURSAL: TIntegerField;
    wwCDSClientesZONA: TIntegerField;
    DSPClientes: TDataSetProvider;
    wwCDSInscripcion: TwwClientDataSet;
    wwCDSInscripcionCODIGO: TIntegerField;
    wwCDSInscripcionDETALLE: TStringField;
    wwCDSInscripcionCOBRASOBRETASA: TStringField;
    wwCDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    wwCDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    wwCDSInscripcionDISCRIMINAIVA: TStringField;
    DSPInscripcion: TDataSetProvider;
    DSPDeposito: TDataSetProvider;
    DSPIva: TDataSetProvider;
    wwCDSIva: TwwClientDataSet;
    wwCDSIvaCodigo: TIntegerField;
    wwCDSIvaDescripcion: TStringField;
    wwCDSIvaTasa: TFloatField;
    wwCDSSucursal: TwwClientDataSet;
    wwCDSSucursalCODIGO: TIntegerField;
    wwCDSSucursalDETALLE: TStringField;
    wwCDSSucursalDIRECCION: TStringField;
    wwCDSSucursalLOCALIDAD: TStringField;
    wwCDSSucursalTELEFONO1: TStringField;
    wwCDSSucursalTELEFONO2: TStringField;
    wwCDSSucursalRECARGO: TFloatField;
    DSPSucursal: TDataSetProvider;
    QDepositoStk: TQuery;
    QDepositoStkID_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_DEPOSITO: TIntegerField;
    QDepositoStkCODIGO_STK: TStringField;
    QDepositoStkSUCURSAL: TIntegerField;
    QDepositoStkINICIAL: TFloatField;
    QDepositoStkMINIMO: TFloatField;
    QDepositoStkMEDIO: TFloatField;
    QDepositoStkFISICO: TFloatField;
    QDepositoStkRECARGO: TFloatField;
    QDepositoStkFUAPRECIOS: TDateTimeField;
    DSPLdr: TDataSetProvider;
    wwCDSLdr: TwwClientDataSet;
    wwCDSLdrCodigo_Ldr: TIntegerField;
    wwCDSLdrNombre: TStringField;
    wwCDSLdrDireccion: TStringField;
    wwCDSLdrCodigo_Cliente: TStringField;
    wwCDSLdrCPostal: TStringField;
    QComprob: TQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobREPORTE: TStringField;
    QComprobCOPIAS: TIntegerField;
    IBGFc_Cab: TIBGenerator;
    QPrimerLdr: TQuery;
    QPrimerConVta: TQuery;
    spVerificaPeriodFiscal: TStoredProc;
    IBGFc_Impuestos: TIBGenerator;
    QLdr: TQuery;
    QLdrCODIGO_CLIENTE: TStringField;
    QLdrCODIGO_LDR: TIntegerField;
    QLdrNOMBRE: TStringField;
    QLdrDIRECCION: TStringField;
    QLdrCPOSTAL: TStringField;
    QGravamen: TQuery;
    QGravamenCODIGO: TIntegerField;
    QGravamenDESCRIPCION: TStringField;
    QGravamenTASA: TFloatField;
    wwCDSClientesID_FACTURAPORDEFECTO: TIntegerField;
    wwQCajaMov: TwwQuery;
    wwQCajaMovID_MOV_CAJA: TIntegerField;
    wwQCajaMovID_CAJA: TIntegerField;
    wwQCajaMovFECHA_CAJA: TDateTimeField;
    wwQCajaMovFECHA_OPERACION: TDateTimeField;
    wwQCajaMovTIPO_OPERACION: TStringField;
    wwQCajaMovID_COMPROBANTE: TIntegerField;
    wwQCajaMovTIPO_COMPROB: TStringField;
    wwQCajaMovNRO_COMPROBANTE: TStringField;
    wwQCajaMovHABER: TFloatField;
    wwQCajaMovDEBE: TFloatField;
    wwQCajaMovID_TPAGO: TIntegerField;
    wwQCajaMovID_FPAGO: TIntegerField;
    wwQCajaMovUNIDADES: TFloatField;
    wwQCajaMovCOTIZACION: TFloatField;
    wwQCajaMovMUESTRAFORMAPAGO: TStringField;
    wwQCajaMovCLASE_COMPROB: TStringField;
    wwQCajaMovID_CUENTA_CAJA: TIntegerField;
    wwQCajaMovMONEDA: TIntegerField;
    wwQCajaMovMUESTRAIDCTACAJA: TIntegerField;
    wwQCajaMovMUESTRACAJA: TStringField;
    wwCDSCajaMov: TwwClientDataSet;
    wwCDSCajaMovID_MOV_CAJA: TIntegerField;
    wwCDSCajaMovID_CAJA: TIntegerField;
    wwCDSCajaMovFECHA_CAJA: TDateTimeField;
    wwCDSCajaMovFECHA_OPERACION: TDateTimeField;
    wwCDSCajaMovTIPO_OPERACION: TStringField;
    wwCDSCajaMovID_COMPROBANTE: TIntegerField;
    wwCDSCajaMovTIPO_COMPROB: TStringField;
    wwCDSCajaMovNRO_COMPROBANTE: TStringField;
    wwCDSCajaMovHABER: TFloatField;
    wwCDSCajaMovDEBE: TFloatField;
    wwCDSCajaMovID_TPAGO: TIntegerField;
    wwCDSCajaMovID_FPAGO: TIntegerField;
    wwCDSCajaMovUNIDADES: TFloatField;
    wwCDSCajaMovCOTIZACION: TFloatField;
    wwCDSCajaMovMUESTRAFORMAPAGO: TStringField;
    wwCDSCajaMovCLASE_COMPROB: TStringField;
    wwCDSCajaMovID_CUENTA_CAJA: TIntegerField;
    wwCDSCajaMovMONEDA: TIntegerField;
    wwCDSCajaMovMUESTRAIDCTACAJA: TIntegerField;
    wwCDSCajaMovMUESTRACAJA: TStringField;
    DSPCajaMov: TDataSetProvider;
    DSPMovEfectivo: TDataSetProvider;
    wwCDSMovEfectivo: TwwClientDataSet;
    wwCDSMovEfectivoID_EFECTIVO: TIntegerField;
    wwCDSMovEfectivoID_CAJA: TIntegerField;
    wwCDSMovEfectivoID_MOV_CAJA: TIntegerField;
    wwCDSMovEfectivoID_FPAGO: TIntegerField;
    wwCDSMovEfectivoCOTIZACION: TFloatField;
    wwCDSMovEfectivoUNIDADES: TFloatField;
    wwCDSMovEfectivoIMPORTE: TFloatField;
    wwCDSMovEfectivoID_CUENTA_CAJA: TIntegerField;
    wwCDSMovEfectivoMONEDA: TIntegerField;
    wwQMovEfectivo: TwwQuery;
    wwQMovEfectivoID_EFECTIVO: TIntegerField;
    wwQMovEfectivoID_CAJA: TIntegerField;
    wwQMovEfectivoID_MOV_CAJA: TIntegerField;
    wwQMovEfectivoID_FPAGO: TIntegerField;
    wwQMovEfectivoCOTIZACION: TFloatField;
    wwQMovEfectivoUNIDADES: TFloatField;
    wwQMovEfectivoIMPORTE: TFloatField;
    wwQMovEfectivoID_CUENTA_CAJA: TIntegerField;
    wwQMovEfectivoMONEDA: TIntegerField;
    IBGId_Efectivo: TIBGenerator;
    IBGId_Caja_Mov: TIBGenerator;
    wwCDSCajaCab: TwwClientDataSet;
    wwCDSCajaCabID_CAJA: TIntegerField;
    wwCDSCajaCabID_CUENTA_CAJA: TIntegerField;
    wwCDSCajaCabFECHA_INCIO: TDateTimeField;
    wwCDSCajaCabFECHA_CIERRE: TDateTimeField;
    wwCDSCajaCabSALDO_INCIAL: TFloatField;
    wwCDSCajaCabESTADO: TIntegerField;
    wwCDSCajaCabOBS: TMemoField;
    wwCDSCajaCabMUESTRACTACAJA: TStringField;
    DSPCajaCab: TDataSetProvider;
    QFormaPago: TQuery;
    QFormaPagoID_FPAGO: TIntegerField;
    QFormaPagoID_TPAGO: TIntegerField;
    QFormaPagoDESCRIPCION: TStringField;
    QFormaPagoCOTIZACION: TFloatField;
    QFormaPagoSIGNO: TStringField;
    QFormaPagoMONEDA: TIntegerField;
    wwCDSVentaCabREDUCIDA: TStringField;
    wwCDSVentaCabMUESTRAVENDEDOR: TStringField;
    wwCDSVentaCabCOMSIONVENDEDOR: TFloatField;
    wwCDSVentaCabLIQUIDADA: TStringField;
    wwCDSVentaCabVENDEDOR: TStringField;
    wwCDSClientesVENDEDOR: TStringField;
    wwCDSVentaCabUSUARIO: TStringField;
    wwCDSVentaCabCAJA_POR_DEFECTO: TIntegerField;
    wwCDSVentaCabNC_CONTADO: TStringField;
    wwCDSVentaCabSUCURSAL: TIntegerField;
    wwQClientes: TwwQuery;
    wwCDSVentaCabRENGLONES: TSmallintField;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSDeposito: TClientDataSet;
    CDSDepositoId: TIntegerField;
    CDSDepositoNombre: TStringField;
    CDSDepositoSucursal: TIntegerField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCOMISION: TFMTBCDField;
    DSPBuscaVendedor: TDataSetProvider;
    CDSBuscaVendedor: TClientDataSet;
    CDSBuscaVendedorCODIGO: TStringField;
    CDSBuscaVendedorNOMBRE: TStringField;
    CDSBuscaVendedorCOMISION: TFMTBCDField;
    DSPBuscaCondVenta: TDataSetProvider;
    CDSBuscaCondVenta: TClientDataSet;
    CDSBuscaCondVentaCODIGOCLIENTE: TStringField;
    CDSBuscaCondVentaCODIGOPAGO: TIntegerField;
    CDSBuscaCondVentaDESCUENTO: TFMTBCDField;
    CDSBuscaCondVentaPOR_DEFECTO: TStringField;
    CDSBuscaCondVentaDETALLE: TStringField;
    procedure wwCDSImpuestosCODIGO_GRAVAMENSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabLDRSetText(Sender: TField; const Text: String);
    procedure wwCDSVentaCabDepositoSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabNETOGRAV1GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure wwCDSVentaCabDSTOSetText(Sender: TField; const Text: String);
    procedure wwCDSVentaCabCODIGOSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabSUCFACSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabNUMEROFACSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabCONDICIONVTASetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabNETOGRAV2GetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure wwCDSVentaCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabBeforePost(DataSet: TDataSet);
    procedure wwCDSVentaCabNewRecord(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
    procedure wwCDSVentaCabNETOGRAV1SetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabNETOEXEN1SetText(Sender: TField;
      const Text: String);
    procedure wwCDSImpuestosNETOSetText(Sender: TField;
      const Text: String);
    procedure wwCDSImpuestosNewRecord(DataSet: TDataSet);
    procedure wwCDSCajaMovNewRecord(DataSet: TDataSet);
    procedure wwCDSVentaCabVENDEDORSetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabFECHAVTASetText(Sender: TField;
      const Text: String);
    procedure wwCDSImpuestosIMPORTESetText(Sender: TField;
      const Text: String);
    procedure wwCDSVentaCabDSTOIMPORTEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure wwCDSVentaCabNETOGRAV2SetText(Sender: TField; const Text: string);
  private
    { Private declarations }
  public
    { Public declarations }
    Var_TasaIva:Real;
    MascaraIvaImporte      :String;
    MascaraIvaTasa         :String;
    MascaraCabecera        :String;
    PROCEDURE HabilitarLabel;
    PROCEDURE CalcularTotales;
    PROCEDURE AplicarMascarasNumericas;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    function AsignaIva(dato:Integer):boolean;
    FUNCTION AsignarVendedor(Dato: String): Boolean;
  end;

var
  DatosVentaReducida: TDatosVentaReducida;

implementation

uses UFacturaReducidaCtaCte, DMMainForm_2,
     DMBuscadoresForm;

{$R *.DFM}

PROCEDURE TDatosVentaReducida.HabilitarLabel;
BEGIN
  {Si la Factura  discrimina IVA}
  FormCpbteCtaCteReducida.dbgIva.Visible:=wwCDSVentaCabDesglozaIva.Value = 'S';
  WITH FormCpbteCtaCteReducida DO
    BEGIN
      IF wwCDSVentaCab.State = dsBrowse THEN
        BEGIN
          BtAnular.Enabled    :=(wwCDSVentaCabAnulado.Value = 'N');
          btModificar.Enabled :=(wwCDSVentaCabAnulado.Value = 'N');
        END;
    END;
END;

PROCEDURE TDatosVentaReducida.CalcularTotales;
VAR
  Acumulador: Real;
BEGIN
  wwCDSVentaCabTotal.Value:=0;
  Acumulador:=0;
  wwCDSVentaCabNetoGrav2.Value  :=wwCDSVentaCabNetoGrav1.Value * (1-wwCDSVentaCabDsto.Value * 0.01);
  wwCDSVentaCabNetoExen2.Value  :=wwCDSVentaCabNetoExen1.Value * (1-wwCDSVentaCabDsto.Value * 0.01);
  wwCDSVentaCabDstoImporte.Value:=(wwCDSVentaCabNetoGrav1.Value + wwCDSVentaCabNetoExen1.Value) * wwCDSVentaCabDsto.Value * 0.01;
  wwCDSImpuestos.First;
  WHILE NOT (wwCDSimpuestos.Eof) DO
    BEGIN
      Acumulador                  :=Acumulador + wwCDSImpuestosImporte.Value;
      wwCDSImpuestos.Next;
    END;
  wwCDSVentaCabTotal.Value:=Moneda3D('+',MascaraCabecera,wwCDSVentaCabNetoGrav2.Value + wwCDSVentaCabNetoExen2.Value + Acumulador);
  TRY
    if wwCDSVentaCabNetoGrav2.Value>0 Then
      Var_TasaIVA:=(((wwCDSVentaCabTotal.Value - wwCDSVentaCabNetoGrav2.Value) *100) / wwCDSVentaCabNetoGrav2.Value)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
  wwCDSVentaCabNetoGrav2.Value  :=(wwCDSVentaCabNetoGrav1.Value -(wwCDSVentaCabNetoGrav1.Value * wwCDSVentaCabDsto.Value * 0.01));
  wwCDSVentaCabNetoGrav1.Value  :=(wwCDSVentaCabNetoGrav1.Value);
END;


procedure TDatosVentaReducida.AplicarMascarasNumericas;
VAR I:Byte;
begin
  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVATASA';
  DMMain_2.QOpciones.Open;
  MascaraIvaTasa:=DMMain_2.QOpciones.Fields[0].AsString;
  TFloatField(wwCDSImpuestosTASA).EditFormat           := MascaraIvaTasa;
  TFloatField(wwCDSImpuestosTASA).DisplayFormat        := MascaraIvaTasa;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='IVAIMPORTES';
  DMMain_2.QOpciones.Open;
  MascaraIvaImporte:=DMMain_2.QOpciones.Fields[0].AsString;
  TFloatField(wwCDSImpuestosIMPORTE).EditFormat        := MascaraIvaImporte;
  TFloatField(wwCDSImpuestosIMPORTE).DisplayFormat     := MascaraIvaImporte;
  TFloatField(wwCDSImpuestosNETO).EditFormat           := MascaraIvaImporte;
  TFloatField(wwCDSImpuestosNETO).DisplayFormat        := MascaraIvaImporte;

  DMMain_2.QOpciones.Close;
  DMMain_2.QOpciones.ParamByName('Opcion').AsString:='VTACABECERA';
  DMMain_2.QOpciones.Open;
  MascaraCabecera:=DMMain_2.QOpciones.Fields[0].AsString;
  For i:=0 to wwCDSVentaCab.FieldCount-1 do
    begin
      if (wwCDSVentaCab.Fields[i].DataType=ftBCD) or
         (wwCDSVentaCab.Fields[i].DataType=ftFMTBcd) or
         (wwCDSVentaCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(wwCDSVentaDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(wwCDSVentaCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(wwCDSVentaCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
  DMMain_2.QOpciones.Close;
end;


FUNCTION TDatosVentaReducida.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value:=dato;
  QComprob.ParamByName('suc').Value:=wwCDSVentaCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      FormCpbteCtaCteReducida.RxCConVta.Enabled:=True;
      FormCpbteCtaCteReducida.RxCConVta.Color  :=clWindow;
      wwCDSVentaCabMUESTRACOMPROBANTE.Value:=QComprobDENOMINACION.Value;
      wwCDSVentaCabLETRAFAC.Value          :=QComprobLETRA.Value;
      wwCDSVentaCabTIPOCPBTE.Value         :=QComprobTIPO_COMPROB.Value;
      wwCDSVentaCabCLASECPBTE.Value        :=QComprobCLASE_COMPROB.Value;
      wwCDSVentaCabCONDICIONVTA.Clear;
      wwCDSVentaCabMUESTRACONDVENTA.Clear;
      if QComprobTIPO_COMPROB.Value='FO' Then
        begin
          wwCDSVentaCabCONDICIONVTA.Value:=0;
          wwCDSVentaCabMUESTRACONDVENTA.Value:='CONTADO';
          FormCpbteCtaCteReducida.RxCConVta.Enabled:=False;
          FormCpbteCtaCteReducida.RxCConVta.Color  :=clBtnFace;
          wwCDSVentaCabFECHAVTO.Value:=wwCDSVentaCabFECHAVTA.Value;
        end;
    END
  ELSE
    BEGIN
      Result:=False;
      wwCDSVentaCabMUESTRACOMPROBANTE.Value:= '';
      wwCDSVentaCabLETRAFAC.Value          := '';
      wwCDSVentaCabCLASECPBTE.Value        := '';
      wwCDSVentaCabTIPOCPBTE.Value         := '';
      wwCDSVentaCabCONDICIONVTA.Clear;
      wwCDSVentaCabMUESTRACONDVENTA.Value:='';

    END;
END;


FUNCTION TDatosVentaReducida.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  WITH FormCpbteCtaCteReducida DO
    BEGIN
      wwCDSClientes.Close;
      wwCDSClientes.Params.ParamByName('Codigo').Value:=Dato;
      wwCDSClientes.Open;
      IF NOT (wwCDSClientes.Eof) THEN
        BEGIN
          wwCDSVentaCabNombre.AsString     := wwCDSClientesNombre.AsString;
          wwCDSVentaCabRazonSocial.AsString:= wwCDSClientesRazon_Social.ASString;
          wwCDSVentaCabCuit.AsString       := wwCDSClientesNro_de_Cuit.AsString;
          wwCDSVentaCabDireccion.AsString  := wwCDSClientesDireccion_Comercial.AsString;
          wwCDSVentaCabTipoIVA.AsInteger   := wwCDSClientesCondicion_Iva.Value;
          wwCDSVentaCabCPostal.AsString    := wwCDSClientesCPostal.AsString;
          wwCDSVentaCabLocalidad.AsString  := wwCDSClientesLocalidad.AsString;
          wwCDSVentaCabZona.AsInteger      :=wwCDSClientesZona.AsInteger;
         // IF wwCDSClientesSUCURSAL.Value <> wwCDSVentaCabSucursal.Value THEN
         //   wwCDSVentaCabSucursalSetText(wwCDSVentaCabSucursal,wwCDSClientesSucursal.AsString);
          wwCDSVentaCabLdr.Clear;
          wwCDSInscripcion.Close;
          wwCDSInscripcion.Params.ParamByName('Codigo').Value:= wwCDSVentaCabTipoIva.Value;
          wwCDSInscripcion.Open;
          IF NOT (wwCDSInscripcion.Eof) THEN
            BEGIN
              wwCDSVentaCabCalcula_SobreTasa.Value:= wwCDSInscripcionCobraSobretasa.Value;
              wwCDSVentaCabMUESTRAIVA.Value       := wwCDSInscripcionDETALLE.Value;
              wwCDSVentaCabDESGLOZAIVA.Value      := wwCDSInscripcionDISCRIMINAIVA.Value;
            END;
          //asigno el comprobante segun condicoin de Inscripcion
          // si el cliente no tiene asignado un comprobante traigo el que le
          // corresponde por el tipo de Iva
           if (wwCDSClientesSUCURSAL.Value=wwCDSVentaCabSUCURSAL.Value) and
              (Not(VarIsNull(wwCDSClientesID_FACTURAPORDEFECTO.Value))) and
              (wwCDSClientesID_FACTURAPORDEFECTO.Value<>0) Then
                  wwCDSVentaCabID_TIPOCOMPROBANTESetText(wwCDSVentaCabID_TIPOCOMPROBANTE,wwCDSClientesID_FACTURAPORDEFECTO.AsString)
            else
              begin
                DMMain_2.CDSCompPorTipo.Close;
                DMMain_2.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:=wwCDSVentaCabDESGLOZAIVA.Value;
                DMMain_2.CDSCompPorTipo.Params.ParamByName('sucursal').Value:=SucursalPorDefecto;
                DMMain_2.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='V';
                DMMain_2.CDSCompPorTipo.Params.ParamByName('tipo').Value:='FC';
                DMMain_2.CDSCompPorTipo.Open;
                DMMain_2.CDSCompPorTipo.First;
                if DMMain_2.CDSCompPorTipo.Fields[0].AsString<>'' Then
                  wwCDSVentaCabID_TIPOCOMPROBANTESetText(wwCDSVentaCabID_TIPOCOMPROBANTE,DMMain_2.CDSCompPorTipo.Fields[0].AsString);
              end;
           //Traigo el Primer LDR
          QPrimerLdr.CLose;
          QPrimerLdr.ParamByName('codigo').AsString:=Dato;
          QPrimerLdr.Open;
          if Not(QPrimerLdr.IsEmpty) Then
            if QPrimerLdr.Fields[0].AsString<>'' Then
              wwCDSVentaCabLDRSetText(wwCDSVentaCabLDR,QPrimerLdr.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Ldr cargado....');
                wwCDSVentaCabLDR.Clear;
                wwCDSVentaCabMUESTRALDR.Clear;
              end;
          QPrimerLdr.CLose;
          //Traigo La primera condicion de vta
          QPrimerConVta.CLose;
          QPrimerConVta.ParamByName('codigo').AsString:=Dato;
          QPrimerConVta.Open;
          if Not(QPrimerConVta.IsEmpty) Then
            if QPrimerConVta.Fields[0].AsString<>'' Then
              wwCDSVentaCabCONDICIONVTASetText(wwCDSVentaCabCONDICIONVTA,QPrimerConVta.Fields[0].AsString)
            else
              begin
                ShowMessage('No tiene Condiciones de Vta. cargadas....');
                wwCDSVentaCabCONDICIONVTA.Clear;
                wwCDSVentaCabMUESTRACONDVENTA.Clear;
              end;
          QPrimerConVta.CLose;
          if wwCDSClientesVENDEDOR.AsString<>'' Then
            wwCDSVentaCabVENDEDORSetText(wwCDSVentaCabVENDEDOR,wwCDSClientesVENDEDOR.AsString)
          else
            wwCDSVentaCabVENDEDORSetText(wwCDSVentaCabVENDEDOR,EmpleadoPorDefecto);
//          RxCDeposito.SetFocus;
          result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosVentaReducida.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  wwCDSLdr.Close;
  wwCDSLdr.Params.ParamByName('Codigo').Value:=Cliente;
  wwCDSLdr.Params.ParamByName('Ldr').Value:=Dato;
  wwCDSLdr.Open;
  IF NOT (wwCDSLdr.IsEmpty) THEN
    BEGIN
      Result:=True;
      wwCDSVentaCabMuestraLdr.Value:=wwCDSLdrNombre.Value;
    END
  ELSE
    BEGIN
      wwCDSVentaCabMuestraLdr.Value:= '';
      Result:=False;
    END;
  wwCDSLdr.Close;
END;

FUNCTION TDatosVentaReducida.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  wwCDSSucursal.Close;
  wwCDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  wwCDSSucursal.Open;
  IF NOT (wwCDSSucursal.IsEmpty) THEN
    BEGIN
      wwCDSVentaCabID_TIPOCOMPROBANTE.Clear;
      wwCDSVentaCabMUESTRACOMPROBANTE.Clear;
      FormCpbteCtaCteReducida.QBuscaComprob.close;
      FormCpbteCtaCteReducida.QBuscaComprob.ParamByName('suc').Value:=Dato;
      FormCpbteCtaCteReducida.QBuscaComprob.Open;
      if FormCpbteCtaCteReducida.QBuscaComprob.RecordCount=1 Then
        begin
          wwCDSVentaCabID_TIPOCOMPROBANTESetText(wwCDSVentaCabID_TIPOCOMPROBANTE,FormCpbteCtaCteReducida.QBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormCpbteCtaCteReducida.RxCCodigo.SetFocus;
        end;
      Result:=True;
      wwCDSVentaCabMuestraSucursal.Value:=wwCDSSucursalDetalle.Value;
    END
  ELSE
    Result:=False;
  wwCDSSucursal.Close;
END;

FUNCTION TDatosVentaReducida.AsignarCondVenta(Cliente: STRING; Dato: Integer): Boolean;
BEGIN
  wwCDSCondVenta.Close;
  wwCDSCondVenta.Params.ParamByName('Codigo').Value:=Cliente;
  wwCDSCondVenta.Params.ParamByName('CodigoPago').Value:=Dato;
  wwCDSCondVenta.Open;
  IF NOT (wwCDSCondVenta.Eof) THEN
    BEGIN
      Result:=True;
      wwCDSVentaCabMuestraCondVenta.Value:=wwCDSCondVentaDetalle.Value;
      wwCDSVentaCabFECHAVTO.Value:=wwCDSVentaCabFECHAVTA.Value + wwCDSCondVentaDias.Value;
      wwCDSVentaCabDSTO.Value:=wwCDSCondVentaDescuento.Value;
    END
  ELSE
    Result:=False;
  wwCDSCondVenta.Close;
END;

FUNCTION TDatosVentaReducida.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      wwCDSVentaCabMuestraDeposito.Value:=CDSDepositoNombre.Value;
    END
  ELSE
    Result:=False;
  CDSDeposito.Close;
END;

function TDatosVentaReducida.AsignaIva(dato:Integer):boolean;
begin
  QGravamen.close;
  QGravamen.ParamByName('codigo').Value:=Dato;
  QGravamen.Open;
  if Not(QGravamen.IsEmpty) Then
    begin
      Result:=True;
      wwCDSImpuestosDETALLE.Value:=QGravamenDESCRIPCION.Value;
      wwCDSImpuestosTASA.Value   :=QGravamenTASA.Value;
    end
  else
    begin
      Result:=False;
      wwCDSImpuestosDETALLE.Value:='';
      wwCDSImpuestosTASA.Value   :=0;
    end;
end;

FUNCTION TDatosVentaReducida.AsignarVendedor(Dato: String): Boolean;
BEGIN
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      wwCDSVentaCabMUESTRAVENDEDOR.Value := CDSPersonalNOMBRE.Value;
      wwCDSVentaCabCOMSIONVENDEDOR.Value := CDSPersonalCOMISION.AsFloat;
    END
  ELSE
    begin
      Result:=False;
      wwCDSVentaCabMUESTRAVENDEDOR.Clear;
      wwCDSVentaCabCOMSIONVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
END;

procedure TDatosVentaReducida.wwCDSImpuestosCODIGO_GRAVAMENSetText(
  Sender: TField; const Text: String);
begin
  if (Text<>#13) and (Text<>'') Then
    begin
      if wwCDSImpuestos.State =dsbrowse Then wwCDSImpuestos.Edit;
      Sender.AsString:=Text;
      if Not(AsignaIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TDatosVentaReducida.wwCDSVentaCabLDRSetText(Sender: TField;
  const Text: String);
begin
    IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarLdr(wwCDSVentaCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo L.D.R no Válido');
          FormCpbteCtaCteReducida.RxCLdr.SetFocus;
        END;
    END;

end;

procedure TDatosVentaReducida.wwCDSVentaCabDepositoSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
          FormCpbteCtaCteReducida.RxCDeposito.SetFocus;
        END;
    END;
end;

procedure TDatosVentaReducida.wwCDSVentaCabNETOGRAV1GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=Sender.AsFloat;
  if wwCDSVentaCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);
end;

procedure TDatosVentaReducida.wwCDSVentaCabDSTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  CalcularTotales;
end;


procedure TDatosVentaReducida.wwCDSVentaCabCODIGOSetText(Sender: TField;
  const Text: String);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Copy('000000', 1, Sender.Size - Length(Text)) + Text;
      IF NOT (AsignarCliente(Sender.AsString)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
          FormCpbteCtaCteReducida.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
//      FormCpbteCtaCteReducida.RxCCodigo.Text:=Sender.Aux;
    end;
    HabilitarLabel;
end;

procedure TDatosVentaReducida.wwCDSVentaCabSUCFACSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  wwCDSVentaCabNroCpbte.Value := wwCDSVentaCabLetraFac.Value + wwCDSVentaCabSucFac.Value + wwCDSVentaCabNumeroFac.Value;
end;

procedure TDatosVentaReducida.wwCDSVentaCabNUMEROFACSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Copy('00000000', 1, Sender.Size - Length(Text)) + Text;
  wwCDSVentaCabNroCpbte.Value := wwCDSVentaCabLetraFac.Value + wwCDSVentaCabSucFac.Value + wwCDSVentaCabNumeroFac.Value;
end;

procedure TDatosVentaReducida.wwCDSVentaCabCONDICIONVTASetText(
  Sender: TField; const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF (NOT (AsignarCondVenta(wwCDSVentaCabCodigo.Value, Sender.AsInteger))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Cond.Vta no Válido');
          FormCpbteCtaCteReducida.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosVentaReducida.wwCDSVentaCabNETOGRAV2GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=Moneda3D(' ',MascaraCabecera,Sender.AsFloat);
  if wwCDSVentaCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);
end;

procedure TDatosVentaReducida.wwCDSVentaCabNETOGRAV2SetText(Sender: TField;
  const Text: string);
var aux:real;
begin
  if (Text<>'') and (Text <>#13) then
    begin
      aux:=StrToFloat(Text);
      if wwCDSVentaCabDESGLOZAIVA.Value='N' then
        begin
          Aux:=StrToFloat(Text)/1.21;
        end;
      Sender.AsString:=FloatToStr(Aux);
  end;
end;

procedure TDatosVentaReducida.wwCDSVentaCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormCpbteCtaCteReducida.RxCSucursal.SetFocus;
        END
      ELSE IF wwCDSVentaCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  if (Text<>'') and (text[1]<>#13) Then
  begin
    Sender.AsString:=Text;
    IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
      BEGIN
        Sender.AsString:= '';
        ShowMessage('Dato no Valido');
        FormCpbteCtaCteReducida.RxCTipoCpbte.SetFocus;
      END;
    IF wwCDSVentaCab.State = dsInsert THEN
      UltimoComprobante;
  end;
  HabilitarLabel;
end;

procedure TDatosVentaReducida.wwCDSVentaCabBeforePost(DataSet: TDataSet);
begin
  wwCDSVentaCabNroCpbte.Value:=wwCDSVentaCabLetraFac.Value + wwCDSVentaCabSucFac.Value + wwCDSVentaCabNumeroFac.Value;
  if wwCDSVentaCabTIPOCPBTE.Value='FO' Then
    begin
      wwCDSCajaMov.Insert;
      if wwCDSCajaMov.State <> dsBrowse Then
        wwCDSCajaMov.Post;
      if wwCDSMovEfectivo.State <> dsBrowse Then
        wwCDSMovEfectivo.Post;
     // wwCDSMovEfectivo.Insert;
    end;

end;

procedure TDatosVentaReducida.wwCDSVentaCabNewRecord(DataSet: TDataSet);
begin
  wwCDSVentaCabId_Fc.Value          :=IBGFc_Cab.Increment(1);
  wwCDSVentaCabNombre.AsString      := '';
  wwCDSVentaCabRazonSocial.AsString := '';
  wwCDSVentaCabCuit.AsString        := '';
  wwCDSVentaCabDireccion.AsString   := '';
  wwCDSVentaCabTipoIVA.AsString     := '';
  wwCDSVentaCabCPostal.AsString     := '';
  wwCDSVentaCabLetraFac.AsString    := 'A';
  wwCDSVentaCabCpte_Manual.Value    := 'N';
  wwCDSVentaCabImpreso.AsString     := 'N';
  wwCDSVentaCabAnulado.AsString     := 'N';
  wwCDSVentaCabSucFac.AsString      := '0000';
  wwCDSVentaCabNumeroFac.AsString   := '00000000';
  wwCDSventaCabDsto.ASFloat         :=0;
  wwCDSVentaCabNetoExen1.AsFloat    :=0;
  wwCDSVentaCabNetoExen2.AsFloat    :=0;
  wwCDSVentaCabFechaVta.AsDateTime  :=Date;
  wwCDSVentaCabNroRto.AsString      := '';
  wwCDSVentaCabNroEntrega.Value     :=1;
  wwCDSVentaCabDeposito.Clear;
  wwCDSVentaCabTipoCpbte.AsString   := '';
  wwCDSVentaCabSucursalSetText(wwCDSVentaCabSucursal,IntToStr(FormCpbteCtaCteReducida.SucursalPorDefecto));
  wwCDSVentaCabDEPOSITOSetText(wwCDSVentaCabDEPOSITO,IntToStr(FormCpbteCtaCteReducida.DepositoPorDefecto));
  wwCDSVentaCabCPTE_MANUAL.Value    :='S';
  wwCDSVentaCabREDUCIDA.Value       :='S';
  wwCDSVentaCabLIQUIDADA.Value      :='N';
  wwCDSVentaCabCOMSIONVENDEDOR.Value:=0;
  wwCDSVentaCabUSUARIO.Value         :=DMMain_2.UsuarioActivo;
  wwCDSVentaCabNC_CONTADO.Value   :='N';
  wwCDSVentaCabCAJA_POR_DEFECTO.Value:=FormCpbteCtaCteReducida.CajaPorDefecto;
  FormCpbteCtaCteReducida.dbeFechaVta.SetFocus;
  FormCpbteCtaCteReducida.dbeFechaVta.SelectAll;
end;

procedure TDatosVentaReducida.DataModuleDestroy(Sender: TObject);
begin
  DatosVentaReducida:=NIL;
end;

procedure TDatosVentaReducida.wwCDSVentaCabNETOGRAV1SetText(Sender: TField;
  const Text: String);
var aux:real;
begin
  if (Text<>'') and (Text <>#13) then
    begin
      aux:=StrToFloat(Text);
      if wwCDSVentaCabDESGLOZAIVA.Value='N' then
        begin
          Aux:=StrToFloat(Text)/1.21;
        end;
      Sender.AsString:=FloatToStr(Aux);
      Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,Aux));
      CalcularTotales;
    end;
end;

procedure TDatosVentaReducida.wwCDSVentaCabNETOEXEN1SetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  CalcularTotales;
end;

procedure TDatosVentaReducida.wwCDSImpuestosNETOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=FloatToStr(Moneda3D(' ',MascaraCabecera,StrToFloat(Text)));
  wwCDSImpuestosIMPORTE.Value:=Moneda3D(' ',MascaraIvaImporte,wwCDSImpuestosTASA.Value*Sender.AsFloat*0.01);
  CalcularTotales;
end;

procedure TDatosVentaReducida.wwCDSImpuestosNewRecord(DataSet: TDataSet);
begin
  wwCDSImpuestosId_Impuesto.Value := IBGFc_Impuestos.Increment(1);
  wwCDSImpuestosID_FCVTACAB.Value := wwCDSVentaCabID_FC.Value;
end;

procedure TDatosVentaReducida.wwCDSCajaMovNewRecord(DataSet: TDataSet);
begin
  wwCDSCajaCab.Close;
  wwCDSCajaCab.Params.ParamByName('id').Value:=FormCpbteCtaCteReducida.CajaPorDefecto;
  wwCDSCajaCab.Open;
  if Not(wwCDSCajaCab.IsEmpty) Then
    begin
      wwCDSCajaMovID_MOV_CAJA.Value    :=IBGId_Caja_Mov.Increment(1);
      wwCDSCajaMovID_CAJA.Value        :=wwCDSCajaCabID_CAJA.Value;
      wwCDSCajaMovFECHA_CAJA.Value     :=wwCDSCajaCabFECHA_INCIO.Value;
      wwCDSCajaMovFECHA_OPERACION.Value:=wwCDSVentaCabFECHAVTA.Value;
      wwCDSCajaMovTIPO_OPERACION.Value :='I';
      wwCDSCajaMovID_COMPROBANTE.Value :=wwCDSVentaCabID_FC.Value;
      wwCDSCajaMovTIPO_COMPROB.Value   :=wwCDSVentaCabTIPOCPBTE.Value;
      wwCDSCajaMovNRO_COMPROBANTE.Value:=wwCDSVentaCabNROCPBTE.Value;
      wwCDSCajaMovHABER.Value          :=0;
      wwCDSCajaMovDEBE.Value           :=wwCDSVentaCabTOTAL.Value;
      QFormaPago.Close;
      QFormaPago.Open;
      QFormaPago.First;
      wwCDSCajaMovID_TPAGO.Value       :=1;
      wwCDSCajaMovID_FPAGO.Value       :=QFormaPagoID_FPAGO.Value;
      wwCDSCajaMovUNIDADES.Value       :=wwCDSVentaCabTOTAL.Value;
      wwCDSCajaMovCOTIZACION.Value     :=QFormaPagoCOTIZACION.Value;
      wwCDSCajaMovCLASE_COMPROB.Value  :=wwCDSVentaCabCLASECPBTE.Value;
      wwCDSCajaMovID_CUENTA_CAJA.Value :=wwCDSCajaCabID_CUENTA_CAJA.Value;
      wwCDSCajaMovMONEDA.Value         :=QFormaPagoMONEDA.Value;
      QFormaPago.Close;
      wwCDSMovEfectivo.Insert;
      wwCDSMovEfectivoID_EFECTIVO.Value    :=IBGId_Efectivo.Increment(1);
      wwCDSMovEfectivoID_CAJA.Value        :=wwCDSCajaMovID_CAJA.Value;
      wwCDSMovEfectivoID_MOV_CAJA.Value    :=wwCDSCajaMovID_MOV_CAJA.Value;
      wwCDSMovEfectivoID_FPAGO.Value       :=wwCDSCajaMovID_FPAGO.Value;
      wwCDSMovEfectivoCOTIZACION.Value     :=wwCDSCajaMovCOTIZACION.Value;
      wwCDSMovEfectivoUNIDADES.Value       :=wwCDSCajaMovUNIDADES.Value;
      wwCDSMovEfectivoIMPORTE.Value        :=wwCDSVentaCabTOTAL.Value;
      wwCDSMovEfectivoID_CUENTA_CAJA.Value :=wwCDSCajaMovID_CUENTA_CAJA.Value;
      wwCDSMovEfectivoMONEDA.Value         :=wwCDSCajaMovMONEDA.Value;
    end
  else
    ShowMessage('La Caja por defecto esta cerrada...');
  wwCDSCajaCab.Close;
end;

procedure TDatosVentaReducida.wwCDSVentaCabVENDEDORSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarVendedor(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          //FormCpbte_2.RxCConVta.SetFocus;
        END;
    END;
end;

procedure TDatosVentaReducida.wwCDSVentaCabFECHAVTASetText(Sender: TField;
  const Text: String);
var d,d2,m,m2,y,y2:word;
BEGIN
  if sender.AsString<>'' Then
    if wwCDSVentaCab.State In [dsInsert,dsEdit] Then
      begin
        Sender.AsString := Text;
        DecodeDate(Sender.AsDateTime,y,m,d);
        DecodeDate(Date,y2,m2,d2);
        begin
          spVerificaPeriodFiscal.Close;
          spVerificaPeriodFiscal.ParamByName('anio').Value:=y;
          spVerificaPeriodFiscal.ParamByName('mes').Value :=m;
          spVerificaPeriodFiscal.ParamByName('compra_venta').Value:='V';
          spVerificaPeriodFiscal.ExecProc;
          if (Sender.AsDateTime<Date) and (wwCDSVentaCabCPTE_MANUAL.AsString='N') Then
         // if (y<y2) or (m<m2) or (d<d2) Then
            begin
              ShowMessage('Fecha fuera de rango');
              wwCDSVentaCabFECHAVTA.Clear;
              Sender.Clear;
            end
          else
            if spVerificaPeriodFiscal.ParamByName('estado').Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                wwCDSVentaCabFECHAVTA.Clear;
                Sender.Clear;
              end
            else
              wwCDSVentaCabFECHAVTA.Value:=Sender.AsDateTime;
          if wwCDSVentaCabCONDICIONVTA.Value<>0 Then
            AsignarCondVenta(wwCDSVentaCabCODIGO.Value,wwCDSVentaCabCONDICIONVTA.Value);
          spVerificaPeriodFiscal.Close;
        end;
      end;
END;

procedure TDatosVentaReducida.wwCDSImpuestosIMPORTESetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Text;
  CalcularTotales;
end;

procedure TDatosVentaReducida.wwCDSVentaCabDSTOIMPORTEGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR Aux:Real;
begin
  Aux:=Sender.AsFloat;
  if wwCDSVentaCabDESGLOZAIVA.Value='N' Then
    Aux:=Aux * (1+Var_TasaIva * 0.01);
  Text:=FormatFloat(MascaraCabecera,Aux);
end;

end.
