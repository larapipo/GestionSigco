unit DMRemitosObra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Db,   Provider, DBClient, IBGenerator,
  Librerias, Variants, FMTBcd, SqlExpr, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatosRemitosObra = class(TDataModule)
    CDSRtoCab: TClientDataSet;
    CDSRtoDet: TClientDataSet;
    CDSRtoSubDetalle: TClientDataSet;
    DSPRtoCab: TDataSetProvider;
    DSPRtoDet: TDataSetProvider;
    DSPRtoSubDetalle: TDataSetProvider;
    DSRetDet: TDataSource;
    DSRtoSubDetalle: TDataSource;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    CDSSucursalDIRECCION: TStringField;
    CDSSucursalLOCALIDAD: TStringField;
    CDSSucursalTELEFONO1: TStringField;
    CDSSucursalTELEFONO2: TStringField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    IBGRto_Cab: TIBGenerator;
    IBGRto_Det: TIBGenerator;
    IBGRto_Sub: TIBGenerator;
    DSPStock: TDataSetProvider;
    DSPobras: TDataSetProvider;
    CDSObras: TClientDataSet;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
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
    DSPExistencia: TDataSetProvider;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSRtoCabID_RTO: TIntegerField;
    CDSRtoCabTIPOCPBTE: TStringField;
    CDSRtoCabCLASECPBTE: TStringField;
    CDSRtoCabNROCPBTE: TStringField;
    CDSRtoCabCODIGO: TIntegerField;
    CDSRtoCabLETRARTO: TStringField;
    CDSRtoCabSUCRTO: TStringField;
    CDSRtoCabNUMERORTO: TStringField;
    CDSRtoCabLISTAPRECIO: TIntegerField;
    CDSRtoCabFECHA: TSQLTimeStampField;
    CDSRtoCabFECHAVTO: TSQLTimeStampField;
    CDSRtoCabESTADO: TStringField;
    CDSRtoCabANULADO: TStringField;
    CDSRtoCabNROFACT: TStringField;
    CDSRtoCabN_OPERACION2: TFloatField;
    CDSRtoCabTOTAL: TFloatField;
    CDSRtoCabIMPRESO: TStringField;
    CDSRtoCabOBSERVACION1: TStringField;
    CDSRtoCabOBSERVACION2: TStringField;
    CDSRtoCabSUCURSAL: TIntegerField;
    CDSRtoCabDEPOSITO: TIntegerField;
    CDSRtoCabNROENTREGA: TIntegerField;
    CDSRtoCabUSUARIO: TStringField;
    CDSRtoCabRENGLONES: TSmallintField;
    CDSRtoCabMUESTRADEPOSITO: TStringField;
    CDSRtoCabMUESTRASUCURSAL: TStringField;
    CDSRtoCabMUESTRACOMPROBANTE: TStringField;
    CDSRtoCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSRtoCabMUESTRAOBRA: TStringField;
    CDSRtoDetCANTIDAD: TFloatField;
    CDSRtoDetUNITARIO_TOTAL: TFloatField;
    CDSRtoSubDetalleID: TIntegerField;
    CDSRtoSubDetalleID_RTODET: TIntegerField;
    CDSRtoSubDetalleID_RTOCAB: TIntegerField;
    CDSRtoSubDetalleTIPOCPBTE: TStringField;
    CDSRtoSubDetalleCLASECPBTE: TStringField;
    CDSRtoSubDetalleFECHA: TSQLTimeStampField;
    CDSRtoSubDetalleNROCPBTE: TStringField;
    CDSRtoSubDetalleCODIGO: TStringField;
    CDSRtoSubDetalleSERIE: TStringField;
    CDSRtoSubDetalleDEPOSITO: TIntegerField;
    CDSRtoSubDetalleTIPO: TStringField;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
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
    CDSStockMUESTRARUBRO: TStringField;
    CDSStockMUESTRASUBRUBRO: TStringField;
    CDSStockMUESTRAMARCA: TStringField;
    CDSStockMUESTRATASA: TStringField;
    CDSStockMUESTRATASAPORCENTAJE: TFloatField;
    CDSStockMUESTRASOBRETASA: TStringField;
    CDSStockMUESTRASOBRETASAPROCENTAJE: TFloatField;
    CDSStockMUESTRATASAIB: TFloatField;
    CDSStockMUESTRATABLAPRECIODETALLE: TStringField;
    CDSStockMUESTRATABLAPRECIO1: TFloatField;
    CDSStockMUESTRATABLAPRECIO2: TFloatField;
    QComprob: TFDQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QNroEntrega: TFDQuery;
    CDSObrasCODIGO: TIntegerField;
    CDSObrasDETALLE: TStringField;
    CDSObrasFEHCHAINCIO: TSQLTimeStampField;
    CDSObrasFECHAFINAL: TSQLTimeStampField;
    CDSObrasESTADO: TStringField;
    CDSObrasRESPONSABLE: TStringField;
    CDSObrasDIREECION: TStringField;
    CDSListaPrecios: TClientDataSet;
    DSListaPrecios: TDataSource;
    DSPListaPrecios: TDataSetProvider;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosNOMBRE: TStringField;
    CDSListaPreciosF_PAGO: TIntegerField;
    CDSObrasLISTAPRECIOS: TIntegerField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    CDSRtoDetID: TIntegerField;
    CDSRtoDetID_CABRTO: TIntegerField;
    CDSRtoDetTIPOCPBTE: TStringField;
    CDSRtoDetCLASECPBTE: TStringField;
    CDSRtoDetNROCPBTE: TStringField;
    CDSRtoDetRENGLON: TFloatField;
    CDSRtoDetFECHA: TSQLTimeStampField;
    CDSRtoDetCODIGO: TStringField;
    CDSRtoDetDETALLE: TStringField;
    CDSRtoDetUNIDAD: TStringField;
    CDSRtoDetUNITARIO_GRAVADO: TFloatField;
    CDSRtoDetUNITARIO_EXENTO: TFloatField;
    CDSRtoDetDESGLOZAIVA: TStringField;
    CDSRtoDetMODO_GRAVAMEN: TStringField;
    CDSRtoDetIVA_TASA: TFloatField;
    CDSRtoDetTIPOIVA_TASA: TIntegerField;
    CDSRtoDetIVA_SOBRETASA: TFloatField;
    CDSRtoDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtoDetCOSTO_GRAVADO: TFloatField;
    CDSRtoDetCOSTO_EXENTO: TFloatField;
    CDSRtoDetCOSTO_TOTAL: TFloatField;
    CDSRtoDetTOTAL: TFloatField;
    CDSRtoDetDEPOSITO: TIntegerField;
    CDSRtoDetAFECTA_STOCK: TStringField;
    CDSRtoDetCON_NRO_SERIE: TStringField;
    CDSRtoDetCON_CODIGO_BARRA: TStringField;
    CDSRtoDetID_MONEDA: TIntegerField;
    CDSRtoDetCOTIZACION: TFloatField;
    CDSRtoDetMUESTRAMONEDA: TStringField;
    CDSRtoDetMUESTRASIGNO: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSRtoCabSUCURSALSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabSUCRTOSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabNUMERORTOSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoCabDEPOSITOSetText(Sender: TField; const Text: String);
    procedure CDSRtoCabNewRecord(DataSet: TDataSet);
    procedure CDSRtoDetCODIGOSetText(Sender: TField; const Text: String);
    procedure CDSRtoDetCANTIDADSetText(Sender: TField; const Text: String);
    procedure CDSRtoDetUNITARIO_TOTALSetText(Sender: TField;
      const Text: String);
    procedure CDSRtoDetNewRecord(DataSet: TDataSet);
    procedure CDSRtoDetAfterInsert(DataSet: TDataSet);
    procedure CDSRtoDetBeforePost(DataSet: TDataSet);
    procedure CDSRtoCabCODIGOSetText(Sender: TField; const Text: String);
    procedure CDSRtoDetAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Renglones:Byte;
    MascaraDetalleUnitario :String;
    MascaraDetalleCantidad :String;
    MascaraDetalleTotal    :String;
    MascaraCabecera        :String;

    PROCEDURE SumarDetalle;
    procedure AplicarMascarasNumericas;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    FUNCTION ASignarObra(Dato: Integer): Boolean;

  end;

var
  DatosRemitosObra: TDatosRemitosObra;

implementation

uses DMBuscadoresForm, UDMain_FD,
     URemitoObra, UBuscadorArticulos, DMStoreProcedureForm;

{$R *.DFM}


PROCEDURE TDatosRemitosObra.SumarDetalle;
VAR
  Dscto: Real;
  Puntero:TBookmark;
BEGIN
  Puntero:=CDSRtoDet.GetBookmark;
  CDSRtoDet.DisableControls;
  CDSRtoDet.First;
  IF CDSRtoCab.State = dsBrowse THEN
    CDSRtoCab.Edit;
  CDSRtoCabTOTAL.ASFloat:=0;
  WHILE (NOT CDSRtoDet.Eof) DO
    BEGIN
      IF (CDSRtoDetTipoIva_Tasa.Value <> 0) AND (NOT (VarIsNull(CDSRtoDetTipoIva_Tasa.Value))) AND (CDSRtoDetModo_Gravamen.Value <> 'E') THEN
        BEGIN
        END;
      CDSRtoCabTOTAL.AsFloat:= CDSRtoDetUnitario_Gravado.AsFloat * CDSRtoDetCantidad.AsFloat + CDSRtoCabTOTAL.AsFloat;
      CDSRtoCabTotal.AsFloat:= CDSRtoDetUnitario_Exento.AsFloat * CDSRtoDetCantidad.AsFloat + CDSRtoCabTOTAL.AsFloat;

      CDSRtoDet.Next;
    END;
  CDSRtoDet.EnableControls;
  CDSRtoDet.GotoBookmark(Puntero);
  CDSRtoDet.FreeBookmark(puntero);
  { aca voy a los calculos de los totoales de la factura }
END;



procedure TDatosRemitosObra.AplicarMascarasNumericas;
VAR I:Byte;
begin
  MascaraDetalleUnitario:=DMMain_FD.MascaraDetalleUnitario;
  TFloatField(CDSRtoDetUnitario_Total).EditFormat    :=MascaraDetalleUnitario;
  TFloatField(CDSRtoDetUnitario_Total).DisplayFormat :=MascaraDetalleUnitario;

  MascaraDetalleCantidad:=DMMain_FD.MascaraDetalleCantidad;
  TFloatField(CDSRtoDetCantidad).EditFormat    :=MascaraDetalleCantidad;
  TFloatField(CDSRtoDetCantidad).DisplayFormat :=MascaraDetalleCantidad;


  MascaraDetalleTotal:=DMMain_FD.MascaraDetalleTotal;
  TFloatField(CDSRtoDetTotal).EditFormat        := MascaraDetalleTotal;
  TFloatField(CDSRtoDetTotal).DisplayFormat     := MascaraDetalleTotal;


  MascaraCabecera:=DMMain_FD.MascaraCabecera;
  For i:=0 to CDSRtoCab.FieldCount-1 do
    begin
      if (CDSRtoCab.Fields[i].DataType=ftFloat) Then
       begin
         // TFloatField(wwCDSRtoDet.Fields[i]).EditMask:='###,##0.0';
          TFloatField(CDSRtoCab.Fields[i]).EditFormat   :=MascaraCabecera;
          TFloatField(CDSRtoCab.fields[i]).DisplayFormat:=MascaraCabecera;
       end;
    end;
end;




FUNCTION TDatosRemitosObra.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value:=dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      CDSRtoCabMUESTRACOMPROBANTE.Clear;
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                                ' compra_venta = ''V'' and (tipo_comprob= ''RO'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;

      if DMBuscadores.CDSBuscaComprob.RecordCount=1 Then
        begin
           CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormRemitoObra.RxCCodigo.SetFocus;
        end;
      Result:=True;
      CDSRtoCabMuestraSucursal.Value:=CDSSucursalDetalle.Value;
    END
  ELSE
    Result:=False;
  CDSSucursal.Close;
  DMBuscadores.CDSBuscaComprob.Close;
END;

FUNCTION TDatosRemitosObra.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value:=dato;
  QComprob.ParamByName('suc').Value:=CDSRtoCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRACOMPROBANTE.Value:=QComprobDENOMINACION.Value;
      CDSRtoCabLETRARTO.Value          :=QComprobLETRA.Value;
      CDSRtoCabTIPOCPBTE.Value         :=QComprobTIPO_COMPROB.Value;
      CDSRtoCabCLASECPBTE.Value        :=QComprobCLASE_COMPROB.Value;
      Renglones                        :=QComprobLINEAS_DETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSRtoCabMUESTRACOMPROBANTE.Value:= '';
      CDSRtoCabLETRARTO.Value          := '';
      CDSRtoCabCLASECPBTE.Value        := '';
      CDSRtoCabTIPOCPBTE.Value         := '';
      Renglones                        := 0;
    END;
END;

FUNCTION TDatosRemitosObra.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  CDSDepositos.Close;
  CDSDepositos.Params.ParamByName('Id').Value:=Dato;
  CDSDepositos.Open;
  IF NOT (CDSDepositos.Eof) THEN
    BEGIN
      Result:=True;
      CDSRtoCabMuestraDeposito.Value:=CDSDepositosNombre.Value;
    END
  ELSE
    Result:=False;
  CDSDepositos.Close;
END;

FUNCTION TDatosRemitosObra.ASignarArticulo(Dato: STRING): Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
BEGIN
  IF DatosRemitosObra.CDSRtoDet.State = dsBrowse THEN
    DatosRemitosObra.CDSRtoDet.Edit;
  WITH DatosRemitosObra DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSRtoDetCantidad.AsFloat        := 0;
          CDSRtoDetUnitario_Total.AsFloat  := 0;
          CDSRtoDetUnitario_Gravado.AsFloat:= 0;
          CDSRtoDetUnitario_Exento.AsFloat := 0;
          CDSRtoDetTotal.AsFloat           := 0;

          CDSRtoDetID_MONEDA.Value        := CDSStockMONEDA.Value;

          QMonedas.Close;
          QMonedas.ParamByName('id').Value := CDSStockMONEDA.Value;
          QMonedas.Open;
          CDSRtoDetMUESTRAMONEDA.Value   := QMonedasSIGNO.Value;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSRtoDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSRtoDetCOTIZACION.AsFloat:=1;
          QMonedas.Close;


          CDSRtoDetDetalle.AsString       := CDSStockDetalle_Stk.AsString;
          CDSRtoDetUnidad.Value           := CDSStockUnidad.Value;
          CDSRtoDetCOSTO_GRAVADO.AsFloat  := (CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSRtoDetCOTIZACION.AsFloat;
          CDSRtoDetCOSTO_EXENTO.AsFloat   := (CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSRtoDetCOTIZACION.AsFloat;
          CDSRtoDetCOSTO_TOTAL.AsFloat    := (CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat)*CDSRtoDetCOTIZACION.AsFloat;

          CDSRtoDetUNITARIO_TOTAL.Value   := CDSRtoDetCOSTO_TOTAL.Value;
          CDSRtoDetUNITARIO_GRAVADO.Value := CDSRtoDetCosto_Gravado.Value;
          CDSRtoDetUNITARIO_EXENTO.Value  := CDSRtoDetCosto_Exento.Value;

          CDSRtoDetAfecta_Stock.Value     := CDSStockControlaStock.Value;
          CDSRtoDetModo_Gravamen.Value    := CDSStockModo_Gravamen.Value;
          CDSRtoDetTipoIva_Tasa.Value     := CDSStockTasa_Iva.Value;
          CDSRtoDetTipoIva_SobreTasa.Value:= CDSStockSobreTasa_Iva.Value;
          CDSRtoDetCON_NRO_SERIE.Value    := CDSStockCONTROL_SERIE.Value;
          CDSRtoDetCON_CODIGO_BARRA.Value := CDSStockUSA_CODIGOBARRA.Value;



          DMMain_FD.CalculaPrecioVta_FD('N',DMMain_FD.IdListaProveedor, CDSRtoCabLISTAPRECIO.Value,CDSRtoCabSUCURSAL.Value,CDSRtoCabDEPOSITO.Value,
                                        CDSRtoDetCODIGO.AsString,CDSRtoCabCODIGO.AsString, CDSRtoCabTIPOCPBTE.Value,
                                        CDSRtoDetCOTIZACION.AsFloat, 1,
                                        Gravado, Exento, Total, Iva, Margen, Dscto, PFinal);

          CDSRtoDetUNITARIO_GRAVADO.AsFloat:=Gravado;
          CDSRtoDetUNITARIO_EXENTO.AsFloat :=Exento;
          CDSRtoDetUNITARIO_TOTAL.AsFloat  :=Total;

          //Asigno el deposito que tengo en el encabezado...
          CDSRtoDetDeposito.Value:=CDSRtoCabDeposito.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

FUNCTION TDatosRemitosObra.AsignarObra(Dato: Integer): Boolean;
BEGIN
  CDSObras.Close;
  CDSObras.Params.ParamByName('Codigo').Value:=Dato;
  CDSObras.Open;
  IF (NOT (CDSObras.Eof)) and (CDSObrasESTADO.AsString='A') THEN
    BEGIN
      Result:=True;
      CDSRtoCabMUESTRAOBRA.Value:=CDSObrasDETALLE.Value;
      if (CDSObrasLISTAPRECIOS.AsString<>'') and (CDSObrasLISTAPRECIOS.Value>0) then
        CDSRtoCabLISTAPRECIO.Value:=CDSObrasLISTAPRECIOS.Value;
      QNroEntrega.Close;
      QNroEntrega.ParamByName('codigo').Value:=Dato;
      QNroEntrega.Open;
      if QNroEntrega.Fields[0].AsString='' Then
        CDSRtoCabNROENTREGA.Value:=1
      else
        CDSRtoCabNROENTREGA.Value:=QNroEntrega.Fields[0].Value+1;
      QNroEntrega.Close;

    END
  ELSE
    Result:=False;
  CDSObras.Close;
END;

procedure TDatosRemitosObra.DataModuleDestroy(Sender: TObject);
begin
  DatosRemitosObra:=nil;
end;

procedure TDatosRemitosObra.CDSRtoCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
 IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Sucursal No Valido');
          FormRemitoObra.RxCSucursal.SetFocus;
        END
      ELSE IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    END;
end;

procedure TDatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarComprobante(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Dato no Valido');
          FormRemitoObra.RxCTipoCpbte.SetFocus;
        END;
      IF CDSRtoCab.State = dsInsert THEN
        UltimoComprobante;
    end;
end;

procedure TDatosRemitosObra.CDSRtoCabSUCRTOSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  Aux:=Text;
  Aux:=Copy('0000', 1, 4 - Length(Aux)) + Aux;
  Sender.AsString:=Aux;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value +
  CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRemitosObra.CDSRtoCabNUMERORTOSetText(Sender: TField;
  const Text: String);
begin
  Sender.AsString:=Copy('000000000', 1, Sender.Size - Length(Text)) + Text;
  CDSRtoCabNROCPBTE.Value := CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
end;

procedure TDatosRemitosObra.CDSRtoCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo depósito no Válido');
        END;
    END;

end;

procedure TDatosRemitosObra.CDSRtoCabNewRecord(DataSet: TDataSet);
begin
  CDSRtoCabID_RTO.Value         :=IBGRto_Cab.IncrementFD(1);
  CDSRtoCabMUESTRAOBRA.AsString := '';
  CDSRtoCabLETRARTO.AsString    := 'X';
  CDSRtoCabImpreso.AsString     := 'N';
  CDSRtoCabAnulado.AsString     := 'N';
  CDSRtoCabSUCRTO.AsString      := '0000';
  CDSRtoCabNUMERORTO.AsString   := '00000000';
  CDSRtoCabFECHA.AsDateTime     := Date;
  CDSRtoCabNroEntrega.Value     := 1;
  CDSRtoCabDeposito.Clear;
  CDSRtoCabTipoCpbte.AsString   := '';
  CDSRtoCabSUCURSALSetText(CDSRtoCabSUCURSAL,IntToStr(FormRemitoObra.SucursalPorDefecto));
  CDSRtoCabDEPOSITOSetText(CDSRtoCabDEPOSITO,IntToStr(FormRemitoObra.DepositoPorDefecto));
  CDSRtoCabUSUARIO.Value :=DMMain_FD.UsuarioActivo;

 //**************************************************************************
  //****Asigno la Lista Por defecto o la lista asignada **********************
  //**************************************************************************

  CDSRtoCabLISTAPRECIO.AsInteger  :=  DMMain_FD.ListaPorDefecto(CDSRtoCabSUCURSAL.AsInteger);
  //***********************************************************
  //***********************************************************



  CDSRtoCabESTADO.Value  :='A';
  FormRemitoObra.dbeFecha.SetFocus;
  FormRemitoObra.dbeFecha.SelectAll;

end;

procedure TDatosRemitosObra.CDSRtoDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR
 Enter:char;
BEGIN
   Enter:=#13;
  If CDSRtoDet.State=dsBrowse Then
    CDSRtoDet.edit;

  Sender.AsString   := DMMain_FD.SearchCodigo(Text,DSRetDet,False);

//  S:=Text;
//  S:=Copy('00000000', 1, 8 - Length(S)) + S;
//  Sender.AsString:=S;


  IF AsignarArticulo(Sender.AsString) = False THEN
    BEGIN
     // Busqueda por codigo
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
      FormBuscadorArticulos.CampoNro          := 0;
      FormBuscadorArticulos.Param1:=2;  // 1 Venta. 2 Compra. 3 Compra/Venta
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.Esquema     := -1;
      FormBuscadorArticulos.ListaPrecio := CDSRtoCabLISTAPRECIO.Value;// DMMain_FD.ListaPorDefecto(-1);

      FormBuscadorArticulos.Dato              := Text;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        begin
          IF CDSRtoDet.State = dsBrowse THEN
            CDSRtoDet.Edit;
          CDSRtoDetCodigoSetText(CDSRtoDetCodigo,FormBuscadorArticulos.Codigo);
        end
      else
        Sender.AsString:='';
    END;
  if DMMain_FD.EncontroCodigoBarra Then
    FormRemitoObra.DBGrillaDetalle.OnKeyPress(FormRemitoObra.DBGrillaDetalle,Enter);
END;

procedure TDatosRemitosObra.CDSRtoDetCANTIDADSetText(Sender: TField;
  const Text: String);
VAR
  Aux1, Aux2, Aux3: real;
BEGIN
  if Text<>'' Then
    begin
      Sender.AsString :=Text;
      Sender.AsFloat  :=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      if (DMMain_FD.VenderSinStock=False) and (CDSRtoDetAfecta_Stock.Value='S') Then
         begin
//           DMStoreProcedure.spExistenciaStockArticuloDepo.Close;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('codigo').Value  :=CDSRtoDetCodigo.Value;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('deposito').Value:=CDSRtoDetDeposito.Value;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('unidad').Value  :='V';
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ExecProc;

           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSRtoDetCODIGO.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSRtoDetDEPOSITO.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
           DMStoreProcedure.QExistenciaStockArticuloDepo.Open;


//           if (DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').Value<=0) or
//               (Moneda3D(' ','0.00',DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').AsFloat)<
//                Moneda3D(' ','0.00',Sender.AsFloat)) Then
           if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
              (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
               Moneda3D(' ','0.00',Sender.AsFloat)) Then

             begin
               Sender.AsFloat:=0;
               ShowMessage('No Hay stock Suficiente para esta operación......');
             end;
         end;
      Aux1:= CDSRtoDetUnitario_Exento.AsFloat;
      Aux2:= CDSRtoDetUnitario_Gravado.AsFloat;
      Aux3:=Aux1 + Aux2;
      CDSRtoDetTotal.AsFloat:=CDSRtoDetCantidad.AsFloat * Aux3 ;

      Aux2:= Moneda3D('+',MascaraDetalleUnitario,Aux2);
      Aux3:= Aux1 + Aux2;
      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(Aux3));
   END;
END;


procedure TDatosRemitosObra.CDSRtoDetUNITARIO_TOTALSetText(Sender: TField;
  const Text: String);
VAR
  Num, Aux1, Aux2, Aux3: Extended;
BEGIN
  if Text<>'' Then
    begin
      Num:=Moneda3D(' ',MascaraDetalleUnitario,StrToFloat(Text));
      IF CDSRtoDetModo_Gravamen.Value <> '' THEN
        CASE CDSRtoDetModo_Gravamen.Value[1] OF
          'E': CDSRtoDetUnitario_Exento.AsFloat :=Num;
          'G': CDSRtoDetUnitario_Gravado.AsFloat:=Num;
        END;

      Aux1:=CDSRtoDetUnitario_Exento.AsFloat;
      Aux2:=CDSRtoDetUnitario_Gravado.AsFloat;

      CDSRtoDetUnitario_Gravado.AsFloat:= Aux2;

      Aux3:=Aux1 + Aux2;
      CDSRtoDetTotal.AsFloat:=CDSRtoDetCantidad.AsFloat * Aux3 ;
      Sender.AsString:= FloatToStr(Aux3);//FormatFloat(MascaraDetalleUnitario,Aux3);//FloatToStrF(Aux3, ffgeneral, 8, 3);

      if (CDSRtoDetModo_Gravamen.Value[1]='E') and (CDSRtoDetUnitario_Gravado.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSRtoDetUnitario_Gravado.AsFloat:=0;
          CDSRtoDetUnitario_Exento.AsFloat :=0;
          CDSRtoDetUnitario_Total.AsFloat  :=0;
          CDSRtoDetTotal.AsFloat           :=0;
          raise Exception.Create('El articulo Figura Como Exento y tiene Costo Gravado...');
        end;
      if (CDSRtoDetModo_Gravamen.Value[1]='G') and (CDSRtoDetUnitario_Exento.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSRtoDetUnitario_Gravado.AsFloat:=0;
          CDSRtoDetUnitario_Exento.AsFloat :=0;
          CDSRtoDetUnitario_Total.AsFloat  :=0;
          CDSRtoDetTotal.AsFloat           :=0;
          raise Exception.Create('El articulo Figura Como Gravado y tiene Costo exento...');
        end;
  end;
END;


procedure TDatosRemitosObra.CDSRtoDetNewRecord(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount > Renglones) THEN
    CDSRtoDet.Cancel
  ELSE
    BEGIN
      CDSRtoDetId.Value                :=IBGRto_Det.IncrementFD(1);
      CDSRtoDetRenglon.AsInteger       :=CDSRtoDet.RecordCount + 1;
      CDSRtoDetDetalle.Value           := '';
      CDSRtoDetUnidad.Value            := '';
      CDSRtoDetCantidad.AsFloat        := 0;
      CDSRtoDetCosto_Exento.AsFloat    := 0;
      CDSRtoDetCosto_Gravado.AsFloat   := 0;
      CDSRtoDetCosto_Total.AsFloat     := 0;
      CDSRtoDetUnitario_Exento.AsFloat := 0;
      CDSRtoDetUnitario_Gravado.AsFloat:= 0;
      CDSRtoDetUnitario_Total.AsFloat  := 0;
      CDSRtoDetTotal.AsFloat           := 0;
      CDSRtoDetDesglozaIva.Value       := '';
      CDSRtoDetModo_Gravamen.Value     := '';
      CDSRtoDetTipoIva_Tasa.AsFloat    := 0;
      CDSRtoDetID_CABRTO.Value         := CDSRtoCabID_RTO.Value;
      CDSRtoDetNroCpbte.AsString       := CDSRtoCabNroCpbte.AsString;
      CDSRtoDetFecha.AsDateTime        := CDSRtoCabFecha.AsDateTime;
      CDSRtoDetTipoCpbte.AsString      := CDSRtoCabTipoCpbte.AsString;
      CDSRtoDetCLASECPBTE.AsString     := CDSRtoCabCLASECPBTE.AsString;
      CDSRtoDetCON_NRO_SERIE.Value     :='N';
      CDSRtoDetCON_CODIGO_BARRA.Value  :='N';
    END;
end;

procedure TDatosRemitosObra.CDSRtoDetAfterInsert(DataSet: TDataSet);
begin
  IF (CDSRtoDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSRtoDet.Cancel;
    END
  ELSE IF (CDSRtoCabCODIGO.AsString = '') OR (CDSRtoCabNUMERORTO.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSRtoDet.Cancel;
    END
  ELSE IF (CDSRtoCabImpreso.Value = 'S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso');
      SysUtils.Abort;
      IF CDSRtoDet.State IN [dsEdit, dsInsert] THEN
        CDSRtoDet.Cancel;
      IF CDSRtoCab.State IN [dsEdit, dsInsert] THEN
        CDSRtoCab.Cancel;
    END;
end;

procedure TDatosRemitosObra.CDSRtoDetBeforePost(DataSet: TDataSet);
begin
 IF CDSRtoDet.State IN [dsInsert, dsEdit] THEN
    CDSRtoDetNroCpbte.Value:=CDSRtoCabLETRARTO.Value + CDSRtoCabSUCRTO.Value + CDSRtoCabNUMERORTO.Value;
  IF ((CDSRtoDetCODIGO.AsString = '') OR (CDSRtoDet.RecordCount > Renglones)) AND
    (CDSRtoDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSRtoDet.Cancel;
      SysUtils.Abort;
    END;
end;

procedure TDatosRemitosObra.CDSRtoCabCODIGOSetText(Sender: TField;
  const Text: String);
begin
  if (text<>'') and (text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarObra(Sender.ASInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Codigo no valido...');
        end;

    end;
end;

procedure TDatosRemitosObra.CDSRtoDetAfterPost(DataSet: TDataSet);
begin
  SumarDetalle;
end;

end.