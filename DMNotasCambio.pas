unit DMNotasCambio;

interface

uses
  SysUtils, Classes, FMTBcd, DB, Provider, DBClient, SqlExpr, IBGenerator,
  Forms,Dialogs,Librerias,System.StrUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosNotasCambio = class(TDataModule)
    CDSNotaCab: TClientDataSet;
    DSPNotaCab: TDataSetProvider;
    CDSNotaCabID: TIntegerField;
    CDSNotaCabFECHA: TSQLTimeStampField;
    CDSNotaCabNUMERO: TIntegerField;
    CDSNotaCabOBSERVACION1: TStringField;
    CDSNotaCabOBSERVACION2: TStringField;
    CDSNotaCabID_LISTA: TIntegerField;
    CDSNotaCabFECHA_HORA: TSQLTimeStampField;
    CDSNotaCabID_AJUSTE: TIntegerField;
    CDSNotaCabID_FACTURA: TIntegerField;
    CDSNotaDet: TClientDataSet;
    DSPNotaDet: TDataSetProvider;
    CDSNotaDetID: TIntegerField;
    CDSNotaDetID_CAB: TIntegerField;
    CDSNotaDetCODIGO: TStringField;
    CDSNotaDetDETALLE: TStringField;
    CDSNotaDetPRECIO_TOTAL: TFloatField;
    DSNotaDet: TDataSource;
    ibgCab: TIBGenerator;
    ibgDet: TIBGenerator;
    CDSNotaCabUSUARIO: TStringField;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPrecios: TClientDataSet;
    DSListaPrecios: TDataSource;
    DSPStock: TDataSetProvider;
    CDSStock: TClientDataSet;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    CDSNotaCabCLIENTE: TStringField;
    CDSNotaCabCONDICION_IVA: TIntegerField;
    CDSNotaCabDEPOSITO: TIntegerField;
    CDSNotaCabSUCURSAL: TIntegerField;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSDeposito: TClientDataSet;
    DSPDeposito: TDataSetProvider;
    CDSNotaCabNOMBRE: TStringField;
    CDSNotaCabMUESTRASUCURSAL: TStringField;
    CDSNotaCabMUESTRADEPOSITO: TStringField;
    CDSNotaCabDESGLOZA_IVA: TStringField;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSSucursalRECARGO: TFloatField;
    CDSSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    CDSDepositoID: TIntegerField;
    CDSDepositoNOMBRE: TStringField;
    CDSDepositoSUCURSAL: TIntegerField;
    CDSDepositoCENTRALIZA_STOCK: TStringField;
    QActualizaNotaIdFac: TFDQuery;
    IntegerField1: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    IntegerField2: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    SQLTimeStampField2: TSQLTimeStampField;
    IntegerField4: TIntegerField;
    IntegerField5: TIntegerField;
    FMTBCDField1: TFloatField;
    StringField3: TStringField;
    StringField4: TStringField;
    IntegerField6: TIntegerField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    CDSNotaCabMUESTRATIPOFACTURA: TStringField;
    CDSNotaCabMUESTRACLASECPBT: TStringField;
    CDSNotaCabMUESTRANROFAC: TStringField;
    CDSNotaCabMUESTRATIPOAJUSTE: TStringField;
    CDSNotaCabMUESTRACLASEAJUSTE: TStringField;
    CDSNotaCabMUESTRANROAJUSTE: TStringField;
    QActualizaNotaIdAjus: TFDQuery;
    IntegerField9: TIntegerField;
    SQLTimeStampField3: TSQLTimeStampField;
    IntegerField10: TIntegerField;
    StringField9: TStringField;
    StringField10: TStringField;
    IntegerField11: TIntegerField;
    SQLTimeStampField4: TSQLTimeStampField;
    IntegerField12: TIntegerField;
    IntegerField13: TIntegerField;
    FMTBCDField2: TFloatField;
    StringField11: TStringField;
    StringField12: TStringField;
    IntegerField14: TIntegerField;
    IntegerField15: TIntegerField;
    IntegerField16: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    CDSNotaDetMUESTRACONTROLASTK: TStringField;
    DSPExistencia: TDataSetProvider;
    CDSExistencia: TClientDataSet;
    CDSExistenciaCODIGO_STK: TStringField;
    CDSExistenciaDETALLE_STK: TStringField;
    CDSExistenciaFISICO: TFloatField;
    CDSExistenciaCOMPROMETIDO: TFloatField;
    CDSExistenciaSALDO: TFloatField;
    CDSExistenciaDEPOSITO_STK: TIntegerField;
    CDSExistenciaEN_TRANSITO: TFloatField;
    CDSExistenciaDEPOSITO_NOMBRE: TStringField;
    DSExistencia: TDataSource;
    CDSNotaDetMUESTRACODALTERNATIVO: TStringField;
    QStock: TFDQuery;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockDISPONIBLE: TStringField;
    CDSStockMUESTRAPRECIO: TFloatField;
    CDSStockMUESTRAPRECIOIVA: TFloatField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QNotaCab: TFDQuery;
    QNotaCabID: TIntegerField;
    QNotaCabFECHA: TSQLTimeStampField;
    QNotaCabNUMERO: TIntegerField;
    QNotaCabID_LISTA: TIntegerField;
    QNotaCabID_AJUSTE: TIntegerField;
    QNotaCabID_FACTURA: TIntegerField;
    QNotaCabIMPORTE: TFloatField;
    QNotaCabCLIENTE: TStringField;
    QNotaCabNOMBRE: TStringField;
    QNotaCabCONDICION_IVA: TIntegerField;
    QNotaCabDEPOSITO: TIntegerField;
    QNotaCabSUCURSAL: TIntegerField;
    QNotaCabDESGLOZA_IVA: TStringField;
    QNotaCabOBSERVACION1: TStringField;
    QNotaCabOBSERVACION2: TStringField;
    QNotaCabUSUARIO: TStringField;
    QNotaCabFECHA_HORA: TSQLTimeStampField;
    QNotaCabMUESTRASUCURSAL: TStringField;
    QNotaCabMUESTRADEPOSITO: TStringField;
    QNotaCabMUESTRATIPOFACTURA: TStringField;
    QNotaCabMUESTRACLASECPBT: TStringField;
    QNotaCabMUESTRANROFAC: TStringField;
    QNotaCabMUESTRATIPOAJUSTE: TStringField;
    QNotaCabMUESTRACLASEAJUSTE: TStringField;
    QNotaCabMUESTRANROAJUSTE: TStringField;
    CDSNotaCabIMPORTE: TFloatField;
    QNotaDet: TFDQuery;
    QNotaDetID: TIntegerField;
    QNotaDetID_CAB: TIntegerField;
    QNotaDetCODIGO: TStringField;
    QNotaDetDETALLE: TStringField;
    QNotaDetPRECIO_UNITARIO: TFloatField;
    QNotaDetCANTIDAD: TFloatField;
    QNotaDetPRECIO_TOTAL: TFloatField;
    QNotaDetMUESTRACONTROLASTK: TStringField;
    QNotaDetMUESTRACODALTERNATIVO: TStringField;
    CDSNotaDetPRECIO_UNITARIO: TFloatField;
    CDSNotaDetCANTIDAD: TFloatField;
    procedure SumarDetalle;
    FUNCTION  ASignarArticulo(Dato: STRING): Boolean;
    procedure CDSNotaCabNewRecord(DataSet: TDataSet);
    procedure CDSNotaDetNewRecord(DataSet: TDataSet);
    procedure CDSNotaDetCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSNotaDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSNotaDetAfterPost(DataSet: TDataSet);
    procedure CDSNotaDetAfterDelete(DataSet: TDataSet);
    procedure CDSNotaDetPRECIO_UNITARIOSetText(Sender: TField;
      const Text: string);
    procedure CDSNotaCabDEPOSITOSetText(Sender: TField; const Text: string);
    procedure CDSNotaCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure CDSNotaCabCLIENTESetText(Sender: TField; const Text: string);
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSNotaDetCODIGOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarCliente(Dato: STRING): Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
  end;

var
  DatosNotasCambio: TDatosNotasCambio;

implementation

uses UDMain_FD, UNotasCambio, DMBuscadoresForm, UMuestraListaCodBarra,
  UBuscadorArticulos, DMStoreProcedureForm;
{$R *.dfm}


FUNCTION TDatosNotasCambio.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  WITH FormNotas_Cambio DO
    BEGIN
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      IF NOT (QClientes.IsEmpty) THEN
        BEGIN
          CDSNotaCabCONDICION_IVA.Value := QClientesCONDICION_IVA.Value;
          CDSNotaCabNOMBRE.Value        := QClientesNOMBRE.Value;
          CDSNotaCabCLIENTE.Value       := QClientesCODIGO.Value;
            {Buscar Condicion de Inscripciion en  IVA}
          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').Value := QClientesCONDICION_IVA.Value;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            CDSNotaCabDESGLOZA_IVA.Value := CDSInscripcionDISCRIMINAIVA.Value;
          CDSInscripcion.Close;
          result := True;
        END
      ELSE
        begin
          Result := False;
          CDSNotaCabCONDICION_IVA.Clear;
          CDSNotaCabNOMBRE.Clear;
          CDSNotaCabCLIENTE.Clear;
          CDSNotaCabDESGLOZA_IVA.Value := 'N';
        END;
    END;
END;

FUNCTION TDatosNotasCambio.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSNotaCabSUCURSAL.Value       := CDSSucursalCODIGO.Value;
      CDSNotaCabMUESTRASUCURSAL.Value:=CDSSucursalDETALLE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSNotaCabSUCURSAL.Clear;
      CDSNotaCabMUESTRASUCURSAL.Clear;
    end;
  CDSSucursal.Close;
END;

FUNCTION TDatosNotasCambio.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value:=Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.Eof) THEN
    BEGIN
      Result:=True;
      CDSNotaCabDEPOSITO.Value       :=CDSDepositoID.Value;
      CDSNotaCabMUESTRADEPOSITO.Value:=CDSDepositoNOMBRE.Value;
    END
  ELSE
    begin
      Result:=False;
      CDSNotaCabDEPOSITO.Clear;
      CDSNotaCabMUESTRADEPOSITO.Clear;
    end;
  CDSDeposito.Close;
END;


PROCEDURE TDatosNotasCambio.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero:=CDSNotaDet.GetBookmark;
  CDSNotaDet.DisableControls;
  CDSNotaDet.First;
  IF CDSNotaCab.State = dsBrowse THEN
    CDSNotaCab.Edit;
  CDSNotaCabIMPORTE.ASFloat:=0;
  WHILE (NOT CDSNotaDet.Eof) DO
    BEGIN
      CDSNotaCabImporte.AsFloat := CDSNotaCabIMPORTE.AsFloat + CDSNotaDetPRECIO_TOTAL.AsFloat;
      CDSNotaDet.Next;
    END;
  CDSNotaDet.GotoBookmark(Puntero);
  CDSNotaDet.FreeBookmark(Puntero);
  CDSNotaDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;


FUNCTION TDatosNotasCambio.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen:Extended;
BEGIN
  IF DatosNotasCambio.CDSNotaDet.State = dsBrowse THEN
    DatosNotasCambio.CDSNotaDet.Edit;
  WITH DatosNotasCambio DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value     :=Dato;
      CDSStock.Params.ParamByName('lista').AsInteger  :=CDSNotaCabID_LISTA.AsInteger;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSNotaDetCODIGO.Value                := CDSStockCODIGO_STK.Value;
          CDSNotaDetDETALLE.Value               := CDSStockDETALLE_STK.Value;
          CDSNotaDetPRECIO_UNITARIO.AsFloat     := CDSStockMUESTRAPRECIOIVA.AsFloat;
          CDSNotaDetMUESTRACONTROLASTK.Value    := CDSStockCONTROLASTOCK.Value;
          CDSNotaDetMUESTRACODALTERNATIVO.Value := CDSStockREEMPLAZO_STK.Value;

          Result:=True;
        END
      ELSE
        begin
          Result:=False;
          CDSNotaDetCODIGO.Clear;
          CDSNotaDetDETALLE.Clear;
          CDSNotaDetPRECIO_UNITARIO.AsFloat     := 0;
          CDSNotaDetMUESTRACONTROLASTK.Value    := '';
          CDSNotaDetMUESTRACODALTERNATIVO.Value := '';
        end;
    END;
END;




procedure TDatosNotasCambio.CDSNotaCabCLIENTESetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('00000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF AsignarCliente(Aux) = False THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString := '';
          FormNotas_Cambio.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormNotas_Cambio.RxCCodigo.Text := Aux;
    end;
end;

procedure TDatosNotasCambio.CDSNotaCabDEPOSITOSetText(Sender: TField;
  const Text: string);
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
          FormNotas_Cambio.RxCDeposito.SetFocus;
        END;
    end;
end;

procedure TDatosNotasCambio.CDSNotaCabNewRecord(DataSet: TDataSet);
begin
  CDSNotaCabID.Value              := ibgCab.IncrementFD(1);
  CDSNotaCabFECHA.AsDateTime      := Date;
  CDSNotaCabFECHA_HORA.AsDateTime := Now;
  CDSNotaCabUSUARIO.Value   := DMMain_FD.UsuarioActivo;
  CDSNotaCabIMPORTE.AsFloat := 0;


 // DMMain_FD.QListaPrecioPorDefecto.CLose;
//  DMMain_FD.QListaPrecioPorDefecto.Open;
//  if Not(DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString='') Then
//    CDSNotaCabID_LISTA.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value;
//  DMMain_FD.QListaPrecioPorDefecto.CLose;

  FormNotas_Cambio.QUltimoCodigo2.Close;
  FormNotas_Cambio.QUltimoCodigo2.Open;
  if FormNotas_Cambio.QUltimoCodigo2.Fields[0].AsString<>'' then
    CDSNotaCabNUMERO.Value:=FormNotas_Cambio.QUltimoCodigo2.Fields[0].AsInteger+1
  else
    CDSNotaCabNUMERO.Value:=1;
  FormNotas_Cambio.QUltimoCodigo2.Close;

  CDSNotaCabSUCURSALSetText(CDSNotaCabSUCURSAL,IntToStr(FormNotas_Cambio.SucursalPorDefecto));
  CDSNotaCabDEPOSITOSetText(CDSNotaCabDEPOSITO,IntToStr(FormNotas_Cambio.DepositoPorDefecto));

  //**************************************************************************
  //****Asigno la Lsta Por defecto o la primera ******************************
  //**************************************************************************
  CDSNotaCabID_LISTA.Value:=DMMain_FD.ListaPorDefecto(CDSNotaCabSUCURSAL.Value);
  //***********************************************************
  //***********************************************************

  CDSNotaCabID_AJUSTE.Value := -1;
  CDSNotaCabID_FACTURA.Value:= -1;
  if FormNotas_Cambio.ClientePorDefecto<>'' Then
    CDSNotaCabCLIENTESetText(CDSNotaCabCLIENTE,FormNotas_Cambio.ClientePorDefecto);

  end;

procedure TDatosNotasCambio.CDSNotaCabSUCURSALSetText(Sender: TField;
  const Text: string);
begin
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormNotas_Cambio.RxCSucursal.SetFocus;
        END
    end;
end;

procedure TDatosNotasCambio.CDSNotaDetAfterDelete(DataSet: TDataSet);
begin
  SumarDetalle;
end;

procedure TDatosNotasCambio.CDSNotaDetAfterPost(DataSet: TDataSet);
begin
  SumarDetalle;
end;

procedure TDatosNotasCambio.CDSNotaDetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  if (DMMain_FD.VenderSinStock=False) and (Sender.AsFloat<0) and (CDSNotaDetMUESTRACONTROLASTK.Value='S') Then
    begin
      DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSNotaDetCODIGO.Value;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSNotaCabDEPOSITO.Value;
      DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
      DMStoreProcedure.QExistenciaStockArticuloDepo.Open;
      if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
         (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
          Moneda3D(' ','0.00',Sender.AsFloat)) Then
        begin
          Sender.AsFloat:=0;
          ShowMessage('No Hay stock Suficiente para esta operación......');
        end;
      DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
    end;
  CDSNotaDetPRECIO_TOTAL.AsFloat:=CDSNotaDetCANTIDAD.AsFloat*CDSNotaDetPRECIO_UNITARIO.AsFloat;
end;

procedure TDatosNotasCambio.CDSNotaDetCODIGOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  if FormNotas_Cambio<>nil then
    begin
      Text:=CDSNotaDetCODIGO.AsString;
      if FormNotas_Cambio.VerCodigoAlternativo.Checked then
        Text:=CDSNotaDetMUESTRACODALTERNATIVO.AsString;
    end;
end;

procedure TDatosNotasCambio.CDSNotaDetCODIGOSetText(Sender: TField;
  const Text: string);
var s,CodTxt,Aux:String;
 Enter:char;
begin
  Enter:=#13;
  if (Text<>'') and (Text[1]<>#13) then
    begin
      If CDSNotaDet.State=dsBrowse Then
        CDSNotaDet.edit;



     { CodTxt:=copy(Text,1,8);

      if FormNotas_Cambio.VerCodigoAlternativo.Checked then
        CodTxt:='********';

      DMBuscadores.QBuscaStock.Close;

      if (Length(Trim(Text))<=8) and (FormNotas_Cambio.VerCodigoAlternativo.Checked=False) then
        begin
          if DMMain_FD.JustificaCodigo='D' Then
            CodTxt:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt)) + CodTxt
          else
            if DMMain_FD.JustificaCodigo='I' Then
          CodTxt:=CodTxt+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(CodTxt));
          DMBuscadores.QBuscaStock.ParamByName('Codigo').Value:=CodTxt;
          DMbuscadores.QBuscaStock.Open;
        end
      else
        begin
          DMbuscadores.QBuscaStock.Close;
          DMBuscadores.QBuscaStock.ParamByName('Codigo').Clear;
          DMbuscadores.QBuscaStock.Open;
        end;

      if Trim(DMBuscadores.QbuscaStockCODIGO_STK.AsString)='' then
        begin
          DMMain_FD.CDSCodigoBarra.Close;
          DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
          DMMain_FD.CDSCodigoBarra.Open;
          If DMMain_FD.CDSCodigoBarra.Fields[0].AsString<>'' Then
            begin
              if DMMain_FD.CDSCodigoBarra.RecordCount>1 Then
                begin
                  if Not(Assigned(FormMuestraListaCodigoBarra)) Then
                    FormMuestraListaCodigoBarra:=TFormMuestraListaCodigoBarra.Create(application);
                  FormMuestraListaCodigoBarra.CodigoBarra:=UpperCase(Text);
                  FormMuestraListaCodigoBarra.ShowModal;
                  Sender.AsString:=FormMuestraListaCodigoBarra.Codigo;
                end
              else
                Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
              DMMain_FD.EncontroCodigoBarra:=True;
            end;
        end;

        //**************************************
        // Busqueda por PLU Balanza
        DMMain_FD.DesdePLU:=False;
        If (DMMain_FD.CDSCodigoBarra.Fields[0].AsString='') and (Sender.ASString='') Then
          begin
            DMMain_FD.DesdePLU:=False;
            //Busca PLU Agregado para los chinos
            if Length(Trim(Text))>8 then
              CodTxt:= Copy(Trim(Text),DMMain_FD.CodInicioPlu,DMMain_FD.CodLongPlu)
            else
              CodTxt:='';
            if CodTxt<>'' then
              begin
                CodTxt:= '00000000'+CodTxt;
                CodTxt:= AnsiRightStr(CodTxt,5);
                DMbuscadores.QBuscaStockPLU.Close;
                DMBuscadores.QBuscaStockPLU.ParamByName('Codigo').Value:=CodTxt;
                DMbuscadores.QBuscaStockPLU.Open;
                if Not(DMbuscadores.QBuscaStockPLU.IsEmpty) then
                  begin
                    DMMain_FD.DesdePLU := True;
                    Sender.AsString   := DMbuscadores.QBuscaStockPLUCODIGO_STK.AsString;
                    Aux      := Copy(Trim(Text),DMMain_FD.PesoInioPLU,DMMain_FD.PesoLongPLU);
                    if Aux='' then Aux:='0';
                    DMMain_FD.PrecioPlu:= Aux;
                  end
                else
                  Sender.AsString:='';
              end
            else
              Sender.AsString:='';
          end;
        //********* fin Busqueda PLU ********************
        //***********************************************
        if (DMMain_FD.DesdePLU=False) and (Sender.AsString='') Then
          begin
            // BUsco por el serie ...
            DMBuscadores.QConsultaCodigoSerie.Close;
            DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=UpperCase(Text);
            DMBuscadores.QConsultaCodigoSerie.Open;
            If DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString='' Then
              begin
                // Sender.AsString:=Text;
                DMMain_FD.EncontroCodigoBarra:=False;
                // **** BUsco por Alternativo **************************...
                DMBuscadores.QConsultaPorCodAlt.Close;
                DMBuscadores.QConsultaPorCodAlt.ParamByName('Codigo').AsString:=Trim(Text);
                DMBuscadores.QConsultaPorCodAlt.Open;
                If DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString='' Then
                  begin
                    Sender.AsString             :=Text;
                    DMMain_FD.EncontroCodigoBarra:=False;
                  end
                else
                  begin
                    Sender.AsString:=DMBuscadores.QConsultaPorCodAltCODIGO_STK.AsString;
                    DMMain_FD.EncontroCodigoBarra:=False;
                  end;
                //***************************************************
              end
            else
              begin
                Sender.AsString:=DMBuscadores.QConsultaCodigoSerieCODIGO_STK.AsString;
                DMMain_FD.EncontroCodigoBarra:=True;
              end;
            DMBuscadores.QConsultaCodigoSerie.Close;
         end;

      DMMain_FD.CDSCodigoBarra.Close;

      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
                                            }
      s:= DMMain_FD.SearchCodigo(Text,DSNotaDet,FormNotas_Cambio.VerCodigoAlternativo.Checked);
      Sender.AsString:= s;
      if ASignarArticulo(s)=False then
        BEGIN
        // Busqueda por codigo
          IF (Assigned(FormBuscadorArticulos)) THEN
            FreeAndNil(FormBuscadorArticulos);
          IF Not(Assigned(FormBuscadorArticulos)) THEN
            FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
          FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
          FormBuscadorArticulos.CampoNro          := 0;
          FormBuscadorArticulos.Param1:=1;
          FormBuscadorArticulos.Param2:=3;
          FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
          FormBuscadorArticulos.Esquema     :=-1;

          FormBuscadorArticulos.Dato              := s;//Text;
          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSNotaDet.State = dsBrowse THEN
                CDSNotaDet.Edit;
              CDSNotaDetCodigoSetText(CDSNotaDetCodigo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        END;
      if DMMain_FD.EncontroCodigoBarra Then
        FormNotas_Cambio.DBGDetalle.OnKeyPress(FormNotas_Cambio.DBGDetalle,Enter);
    end;//
end;

procedure TDatosNotasCambio.CDSNotaDetNewRecord(DataSet: TDataSet);
begin
  CDSNotaDetID.Value               :=ibgDet.IncrementFD(1);
  CDSNotaDetID_CAB.Value           :=CDSNotaCabID.Value;
  CDSNotaDetPRECIO_UNITARIO.AsFloat:=0;
  CDSNotaDetCANTIDAD.AsFloat       :=0;
  CDSNotaDetPRECIO_TOTAL.AsFloat   :=0;
  CDSNotaDetMUESTRACONTROLASTK.Value:='N';

end;

procedure TDatosNotasCambio.CDSNotaDetPRECIO_UNITARIOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
  CDSNotaDetPRECIO_TOTAL.AsFloat:=CDSNotaDetCANTIDAD.AsFloat*Sender.AsFloat;
end;

procedure TDatosNotasCambio.DataModuleDestroy(Sender: TObject);
begin
  DatosNotasCambio:=nil;
end;

end.
