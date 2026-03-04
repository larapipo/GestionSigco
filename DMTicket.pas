{   esto es despues de set unitario de la condion de carga del tipo si es iva dis
    else
        if (CDSVentaCabDESGLOZAIVA.Value='S') and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M']) Then
          begin
            // *** Calculo el total de la linea
            P_Gravado                       := RoundTo((CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetIVA_UNITARIO.ASFloat),-2)/TasaIva;
            CDSVentaDetIVA_UNITARIO.AsFloat := RoundTo((CDSVentaDetUNITARIO_GRAVADO.AsFloat+CDSVentaDetIVA_UNITARIO.ASFloat),-2)- P_Gravado;
            // *** Calculo el total de la linea
            Pt_Final   :=  (P_Gravado + CDSVentaDetIVA_UNITARIO.ASFloat ) * Cantidad * Descuento;

            Pt_Gravado :=  Pt_Final  / TasaIva;
            Pt_Exento  :=  P_Exento * Cantidad * Descuento;
            // Calculo de IVA
            ImporteIva :=  Pt_Final - Pt_gravado;
          end;

}
unit DMTicket;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DMVentaCtdo, Db,   IBGenerator, Provider, DBClient, variants,
  Librerias, FMTBcd, SqlExpr,Types,System.StrUtils, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosVentasTicket = class(TDatosVentasCtdo)
    QReAbrirCaja: TFDQuery;
    QCerrarCaja: TFDQuery;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSVentaDetITEM_OCOMPRA: TIntegerField;
    CDSVentaDetID_DET_REMITO: TIntegerField;
    CDSVentaDetRUBRO_STK: TStringField;
    CDSVentaDetSUBRUBRO_STK: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSVentaDetMUESTRAORDENPRODUCCION: TIntegerField;
  //  CDSVentaCabID_RECEPCION_GTIA: TIntegerField;
    procedure CDSVentaCabNewRecord(DataSet: TDataSet); override;
    procedure CDSVentaCabSUCURSALSetText(Sender: TField;const Text: String);override;
    procedure CDSVentaCabID_TIPOCOMPROBANTESetText(Sender: TField; const Text: String);override;
    procedure CDSVentaCabCodigoSetText(Sender: TField; const Text: String); override;
    procedure CDSVentaDetAfterScroll(DataSet: TDataSet);override;
    procedure CDSVentaDetAfterPost(DataSet: TDataSet); override;
    procedure CDSVentaDetCodigoArticuloSetText(Sender: TField; const Text: String);override;
    procedure CDSVentaDetAfterInsert(DataSet: TDataSet);override;
    procedure CDSVentaDetUnitario_TotalGetText(Sender: TField; var Text: String; DisplayText: Boolean);override;
    procedure CDSVentaDetUnitario_TotalSetText(Sender: TField; const Text: String);override;
    procedure CDSVentaDetTotalGetText(Sender: TField; var Text: String; DisplayText: Boolean);override;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSVentaDetCantidadSetText(Sender: TField;const Text: String);override;
    procedure CDSVentaCabDSTOIMPORTEGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSVentaCabDEPOSITOSetText(Sender: TField; const Text: string);
    procedure CDSVentaCabVENDEDORSetText(Sender: TField; const Text: string);
    procedure CDSVentaCabBeforePost(DataSet: TDataSet);
    procedure CDSVentaCabDSTOSetText(Sender: TField; const Text: string);
    procedure CDSVentaDetBeforePost(DataSet: TDataSet);
    procedure CDSVentaCabDSTOIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSVentaDetDESCUENTOSetText(Sender: TField; const Text: string);
    procedure CDSVentaDetTOTALSetText(Sender: TField; const Text: string);
    procedure CDSVentaCabLISTAPRECIOChange(Sender: TField);
    procedure CDSVentaDetCODIGOARTICULOGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure CDSVentaDetBeforeInsert(DataSet: TDataSet);
    procedure CDSFc_Prod_MovCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSFc_Prod_DetCANTIDADSetText(Sender: TField; const Text: string);
    procedure CDSVentaLoteID_LOTESetText(Sender: TField; const Text: string);
    procedure CDSVentaCabLDRSetText(Sender: TField; const Text: string);
    procedure CDSVentaCabPROVEEDORSetText(Sender: TField; const Text: string); override;
    procedure CDSVtaDetConsigNewRecord(DataSet: TDataSet);
    procedure CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(Sender: TField; const Text: string);override;
    procedure CDSVentaDetNewRecord(DataSet: TDataSet);
    procedure CDSVentaCabNETOGRAV2GetText(Sender: TField; var Text: string; DisplayText: Boolean);override;
    procedure CDSVentaCabNETOGRAV1GetText(Sender: TField; var Text: string; DisplayText: Boolean);override;
    procedure CDSVentaCabReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure CDSPercepcionIVANewRecord(DataSet: TDataSet);
    procedure CDSVentaCabPERCIBE_IVAChange(Sender: TField);
    procedure CDSVentaDetAfterEdit(DataSet: TDataSet);

  private
    { Private declarations }
  public
    { Public declarations }
    CantidadItem   : Extended;
    MargenUtilidad : Extended;
    Function VerificaProduccion:boolean;
    procedure SincronizarConsignaciones;
    procedure ReCalcularTodo;override;
    PROCEDURE AplicarMascarasNumericas;override;
    PROCEDURE HabilitarLabel;Override;
    PROCEDURE SumarDetalle;Override;
    PROCEDURE CalcularTotales;Override;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;override;
    FUNCTION AsignarCliente(Dato:String):Boolean;Override;
    FUNCTION AsignarLdr(Cliente: STRING; Dato: integer): Boolean;Override;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;Override;
    function AsignarArticulo(Dato:String):Boolean;Override;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;Override;
    FUNCTION AsignarVendedor(Dato: String): Boolean;Override;
    FUNCTION ASignarArticuloProduccion(Dato: STRING): Boolean;Override;
    FUNCTION AsignarProveedor(Dato: String): Boolean; Override;
//    FUNCTION BuscaCantXCodigoBarras(Codigo: string): extended;  Override;

    procedure GenerarRtoProduccion;override;
    procedure ReAsignarDetalle;Override;

    published
      property HayProduccion : Boolean   Read VerificaProduccion;
  end;

var
  DatosVentasTicket: TDatosVentasTicket;

implementation

uses UTiketVta, UMuestraListaCodBarra, UBuscadorArticulos,
  DMBuscadoresForm, DMStoreProcedureForm,Math, UMuestraEstadoCta,
  UOrdenProduccion, UDMain_FD,DMOrdenProduccion;
{$R *.DFM}


Function TDatosVentasTicket.VerificaProduccion:boolean;
VAR P:TBookmark;
begin
  Result:=False;
  p:=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  while not(CDSVentaDet.Eof) and (Result=false) do
    begin
      if CDSVentaDetDE_PRODUCCION.AsString='S' Then
        Result:=True;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.GotoBookmark(p);
  CDSVentaDet.EnableControls;
  CDSVentaDet.FreeBookmark(p);
end;


procedure TDatosVentasTicket.SincronizarConsignaciones;
VAR P:TBookmark;
begin
  p :=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  while not(CDSVentaDet.Eof) do
    begin
      if CDSVtaDetConsig.Locate('ID_DETFAC',CDSVentaDetId.AsString,[]) Then
        begin
          CDSVtaDetConsig.Edit;
          CDSVtaDetConsigCODIGO.Value              := CDSVentaDetCodigoArticulo.Value;
          CDSVtaDetConsigDETALLE.Value             := CDSVentaDetDetalle.Value;
          CDSVtaDetConsigCANTIDAD.AsFloat          := CDSVentaDetCANTIDAD.AsFloat;
          CDSVtaDetConsigPRECIO_VTA.AsFloat        := CDSVentaDetUNITARIO_TOTAL.AsFloat;
          CDSVtaDetConsig.Post;

          QRecepMayor.Close;
          QRecepMayor.ParamByName('CODIGO').Value   := CDSVentaDetCodigoArticulo.Value;
          QRecepMayor.ParamByName('PROVEEDOR').Value:= CDSVentaCabPROVEEDOR.Value;
          QRecepMayor.Open;
          ////// Si el saldo es mayor en Consignacion///////////////////////////
          if QRecepMayor.RecordCount=1 then
            begin
              if (QRecepMayorCANTIDAD_SALDO.Value >= CDSVtaDetConsigCANTIDAD.AsFloat) then
                begin
                  CDSVtaDetConsig.Edit;
                  CDSVtaDetConsigCANTIDAD.AsFloat := CDSVentaDetCANTIDAD.AsFloat;
                  CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(CDSVtaDetConsigID_MOV_RECEPCION_DET,QRecepMayorID.AsString);
                  CDSVtaDetConsig.Post;
                end;
            end;
          /////////////////////////////////////////////////////////////////////
        end
      else
        begin
          CDSVtaDetConsig.Append;
          CDSVtaDetConsigCODIGO.Value              := CDSVentaDetCodigoArticulo.Value;
          CDSVtaDetConsigDETALLE.Value             := CDSVentaDetDetalle.Value;
          CDSVtaDetConsigCANTIDAD.AsFloat          := CDSVentaDetCANTIDAD.AsFloat;
          CDSVtaDetConsigPRECIO_VTA.AsFloat        := CDSVentaDetUNITARIO_TOTAL.AsFloat;
          CDSVtaDetConsig.Post;
          QRecepMayor.Close;
          QRecepMayor.ParamByName('CODIGO').Value   := CDSVentaDetCodigoArticulo.Value;
          QRecepMayor.ParamByName('PROVEEDOR').Value:= CDSVentaCabPROVEEDOR.Value;
          QRecepMayor.Open;
          if QRecepMayor.RecordCount=1 then
            begin
              if (QRecepMayorCANTIDAD_SALDO.Value >= CDSVtaDetConsigCANTIDAD.AsFloat) then
                begin
                  CDSVtaDetConsig.Edit;
                  CDSVtaDetConsigCANTIDAD.AsFloat := CDSVentaDetCANTIDAD.AsFloat;
                  CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(CDSVtaDetConsigID_MOV_RECEPCION_DET,QRecepMayorID.AsString);
                  CDSVtaDetConsig.Post;
                end;
            end;
        end;
      CDSVentaDet.Next;
    end;
  CDSVentaDet.GotoBookmark(p);
  CDSVentaDet.EnableControls;
  CDSVentaDet.FreeBookmark(p);
end;

PROCEDURE TDatosVentasTicket.SumarDetalle;
VAR
  Puntero:TBookmark;
  CDSClone:TClientDataSet;
  ValorAux:String;
BEGIN
 // FormTicketVta.RecalculoSuma00.Execute;

  Puntero:=CDSVentaDet.GetBookmark;
  CDSVentaDet.DisableControls;
  CDSVentaDet.First;
  CDSClone:=TClientDataSet.Create(Self);
  CDSClone.CloneCursor(CDSVentaDet,True);

  IF CDSVentaCab.State = dsBrowse THEN
    CDSVentaCab.Edit;
  CDSVentaCabNetoGrav1.ASFloat                   := 0;
  CDSVentaCabNetoExen1.ASFloat                   := 0;
  CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;
  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
  WHILE NOT (CDSImpuestos.Eof) DO
    BEGIN
      CDSImpuestos.Edit;
      CDSImpuestosNeto.AsFloat   :=0;
      CDSImpuestosIMPORTE.AsFloat:=0;
      CDSImpuestos.Next;
    END;

  CDSPercepcionIVA.First;
  CDSPercepcionIVA.DisableControls;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      CDSPercepcionIVA.Edit;
      CDSPercepcionIVANETO.AsFloat   :=0;
      CDSPercepcionIVAIMPORTE.AsFloat:=0;
      CDSPercepcionIVA.Next;
    END;
  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;

  WHILE (NOT CDSClone.Eof) DO
    BEGIN
      ValorAux:=CDSClone.FieldByName('TOTAL_GRAVADO').AsVariant ;
      IF (CDSClone.FieldByName('TIPOIVA_TASA').AsInteger <> 0) AND
         (NOT (VarIsNull(CDSClone.FieldByName('TIPOIVA_TASA').AsInteger))) AND
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value <> 'E') THEN
        BEGIN
          IF CDSImpuestos.Locate('CODIGO_GRAVAMEN', CDSClone.FieldByName('TIPOIVA_TASA').AsInteger, []) THEN
            BEGIN
              CDSImpuestos.Edit;
              CDSImpuestosNeto.AsFloat    := CDSImpuestosNeto.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
              CDSImpuestosImporte.AsFloat := CDSImpuestosIMPORTE.AsFloat + CDSClone.FieldByName('IVA_TOTAL').AsFloat;
              CDSImpuestos.Post;
            END
          ELSE
            BEGIN
              CDSImpuestos.Insert;
              CDSImpuestosCODIGO_GRAVAMEN.Value     := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
              CDSIva.Close;
              CDSIva.Params.ParamByName('id').Value := CDSClone.FieldByName('TIPOIVA_TASA').AsInteger;
              CDSIva.Open;
              CDSImpuestosDETALLE.Value             := CDSIvaDESCRIPCION.Value;
              CDSImpuestosID_FCVTACAB.Value         := CDSVentaCabID_FC.Value;
              CDSImpuestosNETO.AsFloat              := CDSImpuestosNeto.AsFloat + CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat;
              CDSImpuestosTASA.AsFloat              := CDSClone.FieldByName('IVA_TASA').AsFLoat;
              CDSImpuestosIMPORTE.AsFloat           := CDSImpuestosIMPORTE.AsFloat + CDSClone.FieldByName('IVA_TOTAL').AsFloat;
              CDSImpuestos.Post;
            END;

         // Suma Percepcion IVA ************************************************
          IF (CDSVentaCabPERCIBE_IVA.Value='S') Then
            begin
              IF (CDSClone.FieldByName('PERCIBE_IVA').Value='S') then
                begin
                  if CDSPercepcionIVA.Locate('Codigo_percepcion',CDSClone.FieldByName('ID_TASA_PERCEPCION_IVA').Value, []) THEN
                    BEGIN
                      CDSPercepcionIVA.Edit;
                      CDSPercepcionIVANETO.AsFloat    := CDSPercepcionIVANETO.AsFloat + CDSClone.fieldByName('TOTAL_GRAVADO').AsFloat ;
                      CDSPercepcionIVAIMPORTE.AsFloat := CDSPercepcionIVANETO.AsFloat * CDSClone.fieldByName('TASA_PERCEP_IVA').AsFloat * 0.01;
                      CDSPercepcionIVA.Post;
                    END
                  ELSE
                    BEGIN
                      CDSPercepcionIVA.Insert;
                      CDSPercepcionIVACODIGO_PERCEPCION.Value := CDSVentaDetID_TASA_PERCEPCION_IVA.AsInteger;
                      CDSPercepcionIVADETALLE.Value           := 'Percep IVA %'+FormatFloat('0.00',CDSVentaDetTASA_PERCEP_IVA.AsFLoat) ;
                      CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaDetID_CABFAC.Value;
                      CDSPercepcionIVANETO.AsFloat            := CDSVentaDetTOTAL_GRAVADO.AsFloat;
                      CDSPercepcionIVATASA.AsFloat            := CDSVentaDetTASA_PERCEP_IVA.AsFLoat;
                      CDSPercepcionIVAIMPORTE.AsFloat         := CDSVentaDetTOTAL_GRAVADO.AsFloat * CDSVentaDetTASA_PERCEP_IVA.AsFloat * 0.01;
                      CDSPercepcionIVA.Post;
                    END;
                end;
            end;

        END;



      CDSVentaCabNETOGRAV1.AsFloat := CDSClone.FieldByName('TOTAL_GRAVADO').AsFloat + CDSVentaCabNETOGRAV1.AsFloat;

      if (CDSClone.FieldByName('MODO_GRAVAMEN').Value='E') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='M') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='Y') or
         (CDSClone.FieldByName('MODO_GRAVAMEN').Value='I') then
        CDSVentaCabNETOEXEN1.AsFloat := CDSClone.FieldByName('TOTAL_EXENTO').AsFloat  + CDSVentaCabNetoExen1.AsFloat
      else
        if CDSClone.FieldByName('MODO_GRAVAMEN').Value='N' then // modificacion de acumulado Neto No Gravado
          CDSVentaCabNETONOGRAV1.AsFloat := CDSClone.FieldByName('TOTAL_EXENTO').AsFloat  + CDSVentaCabNETONOGRAV1.AsFloat;

      if ((CDSClone.FieldByName('GRAVADO_IB').Value='S') and (CDSVentaCabDESGLOZAIVA.Value='S')) Then
        CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat
      else
        if ((CDSClone.FieldByName('GRAVADO_IB').Value='S' ) and (CDSVentaCabDESGLOZAIVA.Value='N')) Then
          CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := CDSClone.FieldByName('TOTAL').AsFloat +
                                                            CDSClone.FieldByName('IVA_TOTAL').AsFloat +
                                                            CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat;

      CDSClone.Next;
    END;
  CDSClone.Free;
  CDSVentaDet.GotoBookmark(Puntero);
  CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
  { aca voy a los calculos de los totoales de la factura }
END;



procedure TDatosVentasTicket.ReCalcularTodo;
begin
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosImporte.AsFloat <= 0) OR
         (CDSImpuestosTasa.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        CDSImpuestos.Next;
    END;

  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      IF (CDSPercepcionIVAIMPORTE.AsFloat <= 0) OR
         (CDSPercepcionIVATASA.AsFloat <= 0) THEN
        begin
          CDSPercepcionIVA.Delete;
          CDSPercepcionIVA.First;
        end
      else
        CDSPercepcionIVA.Next;
    END;

  if FormTicketVta.IngresoAutomatico='S' Then
    FormTicketVta.DBGrillaDetalle.SelectedIndex:=0;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
     FormTicketVta.DBGrillaDetalle.Columns[4].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
  //***************************************************************

  FormTicketVta.Confirma.Execute;

 
end;

procedure TDatosVentasTicket.AplicarMascarasNumericas;
VAR I:Byte;
begin
  MascaraDetalleUnitario                               := DMMain_FD.MascaraDetalleUnitario;
  TFloatField(CDSVentaDetUnitario_Total).EditFormat    := MascaraDetalleUnitario;
  TFloatField(CDSVentaDetUnitario_Total).DisplayFormat := MascaraDetalleUnitario;

  MascaraDetalleCantidad                         := DMMain_FD.MascaraDetalleCantidad;
  TFloatField(CDSVentaDetCantidad).DisplayFormat := MascaraDetalleCantidad;

  MascaraDetalleDescuento   := DMMain_FD.MascaraDetalleDescuento;
  TFloatField(CDSVentaDetDescuento).EditFormat    :='0.00';
  TFloatField(CDSVentaDetDescuento).DisplayFormat :=',0.00';

  MascaraDetalleTotal       := DMMain_FD.MascaraDetalleTotal;
  TFloatField(CDSVentaDetTotal).EditFormat        := '0.00';
  TFloatField(CDSVentaDetTotal).DisplayFormat     := ',0.00';

  MascaraIvaTasa            := DMMain_FD.MascaraIvaTasa;

  TFloatField(CDSVentaDetIVA_Tasa).EditFormat        := '0.0';
  TFloatField(CDSVentaDetIVA_Tasa).DisplayFormat     := ',0.0';
  TFloatField(CDSVentaDetIVA_SobreTasa).EditFormat   := '0.0';
  TFloatField(CDSVentaDetIVA_SobreTasa).DisplayFormat:= ',0.0';
  TFloatField(CDSImpuestosTASA).EditFormat           := '0.0';
  TFloatField(CDSImpuestosTASA).DisplayFormat        := ',0.0';

  MascaraIvaImporte         := DMMain_FD.MascaraIvaImporte;

  TFloatField(CDSImpuestosIMPORTE).EditFormat        := '0.00';
  TFloatField(CDSImpuestosIMPORTE).DisplayFormat     := ',0.00';
  TFloatField(CDSImpuestosNETO).EditFormat           := '0.00';
  TFloatField(CDSImpuestosNETO).DisplayFormat        := ',0.00';

  MascaraCabecera           := DMMain_FD.MascaraCabecera;

  For i:=0 to CDSVentaCab.FieldCount-1 do
    begin
     if  (CDSVentaCab.Fields[i].DataType=ftFMTBcd) or
         (CDSVentaCab.Fields[i].DataType=ftFloat) Then
        begin
          TFloatField(CDSVentaCab.Fields[i]).EditFormat   :='0.00';
          TFloatField(CDSVentaCab.fields[i]).DisplayFormat:=',0.00';
       end;
    end;

  CDSVentaCabMONEDA_CPBTE_COTIZACION.EditFormat   :='0.000';
  CDSVentaCabMONEDA_CPBTE_COTIZACION.DisplayFormat:='0.000';

end;


FUNCTION TDatosVentasTicket.AsignarLdr(Cliente: STRING; Dato: integer): Boolean;
BEGIN
  if Trim(Cliente)<>'' then
    begin
      CDSLdr.Close;
      CDSLdr.Params.ParamByName('Codigo').Value := Cliente;
      CDSLdr.Params.ParamByName('Ldr').Value    := Dato;
      CDSLdr.Open;
      IF NOT (CDSLdr.IsEmpty) THEN
        BEGIN
          Result := True;
          CDSVentaCabMuestraLdr.Value         := CDSLdrNombre.Value;
          CDSVentaCabMUESTRADIRECCIONLDR.Value:= CDSLdrDireccion.Value;
        END
      ELSE
        BEGIN
          Result := False;
          CDSVentaCabMuestraLdr.Value         := '';
          CDSVentaCabMUESTRADIRECCIONLDR.Value:= '';
        END;
      CDSLdr.Close;
    end;
END;

function TDatosVentasTicket.AsignarProveedor(Dato: String): Boolean;
begin
  QProveedores.Close;
  QProveedores.ParamByName('codigo').Value:= Dato;
  QProveedores.Open;
  if QProveedoresCODIGO.AsString<>'' then
    begin
      Result:=True;
      CDSVentaCabMUESTRAPROVEEDOR.Value:=QProveedoresNOMBRE.Value;
      CDSVentaCabPROVEEDOR.Value       :=QProveedoresCODIGO.Value;
    end
  else
    begin
      Result:=False;
      CDSVentaCabMUESTRAPROVEEDOR.Clear;
      CDSVentaCabPROVEEDOR.Clear;
    end;
  QProveedores.Close;
end;

PROCEDURE TDatosVentasTicket.HabilitarLabel;
BEGIN
  WITH FormTicketVta DO
    BEGIN
      pnIva.Visible   := CDSVentaCabDESGLOZAIVA.Value='S';
      pnPercep.Visible:= CDSVentaCabPERCIBE_IVA.Value='S';
      IF CDSVentaCab.State = dsBrowse THEN
        BEGIN
          btModificar.Enabled := (CDSVentaCabAnulado.Value = 'N');
          btModificar.Enabled := (CDSVentaCabIMPRESO.Value = 'N');
        END;
    END;
END;

FUNCTION TDatosVentasTicket.AsignarSucursal(Dato: Integer): Boolean;
var
  Perc, Ret: Extended;
BEGIN
  DMMain_FD.Cuit_SUCURSAL        := '';
  DMMain_FD.Certificado_SUCURSAL := '';

  CDSSucursal.Close;
  CDSSucursal.Params.ParamByName('Codigo').Value := dato;
  CDSSucursal.Open;
  IF NOT (CDSSucursal.IsEmpty) THEN
    BEGIN
      SucursalPercibeIIBB := CDSSucursalAPLICA_PERCEPCION_IIBB.AsString;
      CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
      //aca cargo si la suc. le correspone
      //hacer  o no Percepcion de IIBB cuando la empresa
      //es Agente de percepcion
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := CDSVentaCabCODIGO.Value;
      QClientes.Open;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Close;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.ParamByName('cuit').Value:= QClientesNRO_DE_CUIT.AsString;
//      DMMain_FD.QTasaPercep_Retencion_IIBB.Open;
//      if DMMain_FD.QTasaPercep_Retencion_IIBBCUIT.AsString<>'' Then

       if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString,Perc,Ret) then
        CDSVentaCabPERCEPCION_IB_TASA.AsFloat :=  Perc
      else
        if SucursalPercibeIIBB='N' Then
          CDSVentaCabPERCIBE_IB.Value := 'N'
        else
          CDSVentaCabPERCIBE_IB.Value := 'S';

      QClientes.Close;
      //**************************************************************************
      //**************************************************************************
      //***** si hay otro certificado ********************************************
      DMMain_FD.Cuit_SUCURSAL        := CDSSucursalCUIT.AsString;
      DMMain_FD.Certificado_SUCURSAL := CDSSucursalCERTIFICADO_ELEC.AsString;
      //**************************************************************************
      //**************************************************************************
      CDSVentaCabID_TIPOCOMPROBANTE.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
      CDSVentaCabCLASECPBTE.Clear;
      CDSVentaCabTIPOCPBTE.Clear;
      CDSVentaCabSUCFAC.Value   :='';
      CDSVentaCabNUMEROFAC.Value:='';

      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      DMBuscadores.CDSBuscaComprob.Open;
      if DMBuscadores.CDSBuscaComprob.RecordCount = 1 Then
        begin
          DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,DMBuscadores.CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
          FormTicketVta.RxCCodigo.SetFocus;
        end;
      DMBuscadores.CDSBuscaComprob.close;

      Result := True;
      CDSVentaCabMuestraSucursal.Value := CDSSucursalDetalle.Value;

      //**************************************************************************
      //****Asigno la Lsta Por defecto  o la lista asignada **********************
      //**************************************************************************
//      DMMain_FD.QListaPrecioPorDefecto.CLose;
//      DMMain_FD.QListaPrecioPorDefecto.Open;
//      if DMMain_FD.QListaPrecioPorDefecto.Fields[0].AsString<>'' Then
//        CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QListaPrecioPorDefecto.Fields[0].Value
//      else
//        begin
//          DMMain_FD.QPrimeraListaPrecios.Close;
//          DMMain_FD.QPrimeraListaPrecios.Open;
//          if DMMain_FD.QPrimeraListaPrecios.Fields[0].AsString<>'' Then
//            CDSVentaCabLISTAPRECIO.Value:=DMMain_FD.QPrimeraListaPrecios.Fields[0].Value;
//          DMMain_FD.QPrimeraListaPrecios.Close;
//       end;
//      DMMain_FD.QListaPrecioPorDefecto.CLose;

      //***********************************************************
      // Asigno la lista por sucursal
      //***********************************************************
//      DMMain_FD.QListaDefectoSuc.Close;
//      DMMain_FD.QListaDefectoSuc.ParamByName('sucursal').Value:= CDSVentaCabSUCURSAL.Value;
//      DMMain_FD.QListaDefectoSuc.Open;
//      if (DMMain_FD.QListaDefectoSuc.Fields[0].AsString<>'') then
//        begin
//          CDSVentaCabLISTAPRECIO.Value:= DMMain_FD.QListaDefectoSuc.Fields[0].AsInteger;
//        end;
//       DMMain_FD.QListaDefectoSuc.Close;
       //***************************************************************

      CDSVentaCabLISTAPRECIO.AsInteger    :=  DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAL.AsInteger);
      // aca tomo la lista de precio del cliente si no dejo la que esta
      //***************************************************************
      if (CDSVentaCabCODIGO.AsString<>'') then
        begin
          QClientes.Close;
          QClientes.ParamByName('Codigo').Value:=CDSVentaCabCODIGO.AsString;
          QClientes.Open;
          if QClientesLISTAPRECIOS.AsString<>'' then
            begin
              CDSVentaCabLISTAPRECIO.Value:=QClientesLISTAPRECIOS.Value;
            end;
          QClientes.Close;
        end;
      //***************************************************************
      //***************************************************************

    END
  ELSE
    Result := False;
END;

FUNCTION TDatosVentasTicket.AsignarCliente(Dato: String): Boolean;
Var Escape:Char;
var Ret,Perc:Extended;  IIBBDesde, IIBBHasta: TDateTime;
Autoriza:Boolean;
BEGIN
   Escape:=#27;
  WITH FormTicketVta DO
    BEGIN
      CDSVentaCabPERCIBE_IB.AsString          := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
      CDSVentaCabPERCEPCION_IB_TASA.AsFloat   := DMMain_FD.TasaPercepcionIB;


      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := Dato;
      QClientes.Open;
      if (QClientesCODIGO.AsString<>'') then
        begin
          if DMMain_FD.ModificaSucursal=False Then
            begin
              if QClientesSUCURSAL.Value<>SucursalPorDefecto Then
                QClientes.Close;
            end;
          IF NOT (QClientes.IsEmpty) THEN
            BEGIN
              CDSVentaCabNOMBRE.AsString      := QClientesNOMBRE.AsString;
              CDSVentaCabRAZONSOCIAL.AsString := QClientesRAZON_SOCIAL.ASString;
              CDSVentaCabTIPOIVA.Value        := QClientesCONDICION_IVA.Value;

              {Buscar Condicion de Inscripciion en  IVA}
              CDSInscripcion.Close;
              CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSVentaCabTipoIva.AsInteger;
              CDSInscripcion.Open;
              IF NOT (CDSInscripcion.Eof) THEN
                BEGIN
                  CDSVentaCabCALCULA_SOBRETASA.AsString := CDSInscripcionCOBRASOBRETASA.AsString;
                  CDSVentaCabMUESTRAIVA.AsString        := CDSInscripcionDETALLE.AsString;
                  CDSVentaCabDESGLOZAIVA.AsString       := CDSInscripcionDISCRIMINAIVA.AsString;
                  CDSVentaCabPERCIBE_IB.Value           := CDSInscripcionAPLICAPERCEPCIONIIBB.Value;
                  CDSVentaCabPERCIBE_IVA.Value          := CDSInscripcionAPLICAPERCEPCIONIVA.Value;
                  if (DMMain_FD.AgentePercepcionIVA='N') then
                    CDSVentaCabPERCIBE_IVA.Value  := 'N';
                  if Not(DMMain_FD.AgentePercepcionIB) then
                    CDSVentaCabPERCIBE_IB.Value   :='N';
                END;
              CDSInscripcion.Close;

              if (QClientesNRO_DE_CUIT.AsString='') or (QClientesNRO_DE_CUIT.AsString[1]='-') Then
                CDSVentaCabCUIT.AsString:='00-00000000-0'
              ELSE
                CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString;

              if (CDSVentaCabCUIT.AsString<>'00-00000000-0') and (CDSVentaCabTIPOIVA.Value<>3 ) then
                begin
                  if ValidarCuit(CDSVentaCabCUIT.AsString) Then
                    CDSVentaCabCUIT.AsString        := QClientesNRO_DE_CUIT.AsString
                  else
                    begin
                      ShowMessage('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...');
                      CDSVentaCabCODIGO.Clear;
                      CDSVentaCabNOMBRE.Clear;
                      CDSVentaCabRAZONSOCIAL.Clear;
                      CDSVentaCab.Cancel;
                      SysUtils.Abort;
                    end;
                end;

              if (CDSVentaCabTIPOIVA.Value=1 )  and (CDSVentaCabCUIT.AsString='00-00000000-0')then
                    begin
                      ShowMessage('El numero de Cuit no es Valido... Verificar en la Ficha del Cliente...');
                      CDSVentaCabCODIGO.Clear;
                      CDSVentaCabNOMBRE.Clear;
                      CDSVentaCabRAZONSOCIAL.Clear;
                      CDSVentaCab.Cancel;
                      SysUtils.Abort;
                    end;

              //*****************************************
              // aca controlo si percibe I.Brutos o No
              //*****************************************
              if (SucursalPercibeIIBB='N') Then
                CDSVentaCabPERCIBE_IB.AsString := 'N';
              if (QClientesPERCIBIR_IB.Value='N') Then
                 CDSVentaCabPERCIBE_IB.Value:='N';

              if (CDSVentaCabPERCIBE_IB.AsString[1]='S') and (CDSVentaCabTIPOIVA.Value<>3) Then
                begin
                  // Verifico si esta en el listado de Tasa Percepcion..
                  // el valor de la tasa se carga al hacer un nuevo comprobante
                  Perc:=CDSVentaCabPERCEPCION_IB_TASA.AsFloat;
                  Ret :=0;
                  if DMMain_FD.TasaPerRetIIBB_CUIT(QClientesNRO_DE_CUIT.AsString, Perc, Ret, IIBBDesde, IIBBHasta) then
                    begin
                      if ((CDSVentaCabFECHAVTA.AsDateTime >= IIBBDesde) and       //DMMain_FD.QTasaPercep_Retencion_IIBBHASTA.AsDateTime) and
                          (CDSVentaCabFECHAVTA.AsDAteTime <= IIBBHasta))          //DMMain_FD.QTasaPercep_Retencion_IIBBDESDE.AsDateTime))
                      then
                         CDSVentaCabPERCEPCION_IB_TASA.AsFloat    :=  Perc    //DMMain_FD.QTasaPercep_Retencion_IIBBTASA_PERCEPCION.AsFloat
                      else
                        begin
                          DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
                          CDSVentaCabPERCEPCION_IB_TASA.AsFloat   :=  Perc;
                        end;
                    end
                  else
                    begin
                      DMMain_FD.Consulta_PadronIIBB(QClientesNRO_DE_CUIT.AsString,CDSVentaCabFECHAVTA.AsDateTime,Perc,Ret);
                      CDSVentaCabPERCEPCION_IB_TASA.AsFloat       :=  Perc;
                    end;

                  if CDSVentaCabPERCEPCION_IB_TASA.AsFloat<=0 then
                    CDSVentaCabPERCIBE_IB.AsString := 'N';

                  if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                     (CDSVentaCabFECHAVTA.AsDateTime<=QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                    CDSVentaCabPERCIBE_IB.Value    := 'N'
                  else
                    if (QClientesINSCRIPTO_MULTICONVENIO.Value='S') and
                       (CDSVentaCabFECHAVTA.AsDateTime > QClientesFECHA_VENCIMI_DDJJ_MULTI.AsDateTime) Then
                       Begin
                         ShowMessage('Fecha de DDJJ Fuera de Termino..... Se aplica percepciones...');
                         CDSVentaCabPERCIBE_IB.Value    := 'S'
                       end;
                end
              else
                begin
                  // aca le pongo la tasa de percepcion de IIBB  General
                  CDSVentaCabPERCIBE_IB.Value          := 'N';
                  CDSVentaCabPERCEPCION_IB_TASA.AsFloat:= 0;
                  // ******************************************************
                end;

              CDSVentaCabCODIGO.AsString      := QClientesCODIGO.AsString;
              CDSVentaCabDIRECCION.AsString   := QClientesDIRECCION_COMERCIAL.AsString;

              if CDSVentaCabTIPOIVA.Value=3 Then  // si es consumidor final
                CDSVentaCabCUIT.AsString      := QClientesNRODOCUMENTO.AsString;

              if CDSVentaCabTIPOIVA.Value=3 Then  // si es consumidor final
                begin
                  CDSVentaCabPERCIBE_IB.Value          := 'N';
                  CDSVentaCabPERCEPCION_IB_TASA.AsFloat:= 0;
                  CDSVentaCabPERCIBE_IVA.Value         := 'N';
                end;

              CDSVentaCabCPOSTAL.AsString     := QClientesCPOSTAL.AsString;
              CDSVentaCabLOCALIDAD.AsString   := QClientesLOCALIDAD.AsString;
              CDSVentaCabZONA.AsInteger       := QClientesZONA.AsInteger;
              CDSVentaCabLdr.Clear;
              {Buscar condicion de Pago}
              CDSVentaCabCondicionVta.Value   := 0;
              CDSVentaCabFechaVto.AsDateTime  := CDSVentaCabFechaVta.AsDateTime;

              //asigno el comprobante segun condicion de Inscripcion
              // si el cliente no tiene asignado un comprobante traigo el que le
              // corresponde por el tipo de Iva
              if (QClientesSUCURSAL.AsInteger = CDSVentaCabSUCURSAL.AsInteger)  and
                 (Not QClientesID_TIKETPORDEFECTO.IsNull)                       and
                 (QClientesID_TIKETPORDEFECTO.AsInteger > 0)
              Then
                CDSVentaCabID_TIPOCOMPROBANTE.Text   := QClientesID_TIKETPORDEFECTO.AsString
              else
                CDSVentaCabID_TIPOCOMPROBANTE.Text   := DMMain_FD.CpbtePorDefecto('TK','V',CDSVentaCabSUCURSAL.AsInteger,
                                                                                  CDSVentaCabDESGLOZAIVA.AsString,-1);

//                begin
//                  DMMain_FD.QOpciones.Close;
//                  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='COMPUSER';
//                  DMMain_FD.QOpciones.Open;
//                  if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='N') then
//                    begin
//                      DMMain_FD.QComprobantePorDefecto.Close;
//                      DMMain_FD.QComprobantePorDefecto.ParamByName('desglozaIva').Value:=CDSVentaCabDESGLOZAIVA.Value;
//                      DMMain_FD.QComprobantePorDefecto.ParamByName('sucursal').Value   :=CDSVentaCabSUCURSAL.Value;
//                      DMMain_FD.QComprobantePorDefecto.ParamByName('compraventa').Value:='V';
//                      DMMain_FD.QComprobantePorDefecto.ParamByName('tipo').Value       :='TK';
//                      DMMain_FD.QComprobantePorDefecto.Open;
//                      if (DMMain_FD.QComprobantePorDefecto.Fields[0].AsString<>'') Then
//                        CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.QComprobantePorDefecto.Fields[0].AsString)
//                      else
//                        begin
//                          DMMain_FD.CDSCompPorTipo.Close;
//                          DMMain_FD.CDSCompPorTipo.Params.ParamByName('desglozaIva').Value:=CDSVentaCabDESGLOZAIVA.Value;
//                          DMMain_FD.CDSCompPorTipo.Params.ParamByName('sucursal').Value   :=CDSVentaCabSUCURSAL.Value;
//                          DMMain_FD.CDSCompPorTipo.Params.ParamByName('compraventa').Value:='V';
//                          DMMain_FD.CDSCompPorTipo.Params.ParamByName('tipo').Value       :='TK';
//                          DMMain_FD.CDSCompPorTipo.Open;
//                          DMMain_FD.CDSCompPorTipo.First;
//                          if (DMMain_FD.CDSCompPorTipo.Fields[0].AsString<>'') Then
//                            CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipo.Fields[0].AsString)
//                          else
//                            begin
//                              CDSVentaCabID_TIPOCOMPROBANTE.Clear;
//                              CDSVentaCabMUESTRACOMPROBANTE.Clear;
//                            end;
//                        end;
//                      DMMain_FD.QComprobantePorDefecto.Close;
//                    end
//                  else
//                    if (Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='S') then
//                      begin
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.Close;
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.ParamByName('desglozaIva').Value:=CDSVentaCabDESGLOZAIVA.Value;
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.ParamByName('sucursal').Value   :=CDSVentaCabSUCURSAL.Value;
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.ParamByName('compraventa').Value:='V';
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.ParamByName('tipo').Value       :='TK';
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.ParamByName('Usuario').Value    :=DMMain_FD.UsuarioActivoId;
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.Open;
//                        if DMMain_FD.QComprobantePorDefectoPorUsuario.Fields[0].AsString<>'' Then
//                          CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.QComprobantePorDefectoPorUsuario.Fields[0].AsString)
//                        else
//                          begin
//                            DMMain_FD.CDSCompPorTipoUsuario.Close;
//                            DMMain_FD.CDSCompPorTipoUsuario.Params.ParamByName('desglozaIva').Value:= CDSVentaCabDESGLOZAIVA.Value;
//                            DMMain_FD.CDSCompPorTipoUsuario.Params.ParamByName('sucursal').Value   := CDSVentaCabSUCURSAL.Value;
//                            DMMain_FD.CDSCompPorTipoUsuario.Params.ParamByName('compraventa').Value:= 'V';
//                            DMMain_FD.CDSCompPorTipoUsuario.Params.ParamByName('tipo').Value       := 'TK';
//                            DMMain_FD.CDSCompPorTipoUsuario.Params.ParamByName('Usuario').Value    := DMMain_FD.UsuarioActivoId;
//                            DMMain_FD.CDSCompPorTipoUsuario.Open;
//                            DMMain_FD.CDSCompPorTipoUsuario.First;
//                            if DMMain_FD.CDSCompPorTipoUsuario.Fields[0].AsString<>'' Then
//                              CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,DMMain_FD.CDSCompPorTipoUsuario.Fields[0].AsString)
//                            else
//                              BEGIN
//                                CDSVentaCabID_TIPOCOMPROBANTE.Clear;
//                                CDSVentaCabMUESTRACOMPROBANTE.Clear;
//                             end;
//                            DMMain_FD.CDSCompPorTipoUsuario.Close;
//                          end;
//                        DMMain_FD.QComprobantePorDefectoPorUsuario.Close;
//                      end;
//                  DMMain_FD.QOpciones.Close;
//                end;
              //Traigo el primer ldr
               QPrimerLdr.CLose;
               QPrimerLdr.ParamByName('codigo').AsString:=Dato;
               QPrimerLdr.Open;
               if Not(QPrimerLdr.IsEmpty) Then
                 if QPrimerLdr.Fields[0].AsString<>'' Then
                   CDSVentaCabLDRSetText(CDSVentaCabLDR,QPrimerLdr.Fields[0].AsString)
                 else
                   begin
                     ShowMessage('No tiene Ldr cargado....');
                     CDSVentaCabLDR.Clear;
                     CDSVentaCabMUESTRALDR.Clear;
                   end;
               QPrimerLdr.CLose;

               if QClientesVENDEDOR.AsString<>'' Then
                 begin
                   CDSPersonal.Close;
                   CDSPersonal.Params.ParamByName('Codigo').Value:=QClientesVENDEDOR.AsString;
                   CDSPersonal.Open;
                   IF NOT (CDSPersonal.IsEmpty) THEN
                     CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,QClientesVENDEDOR.AsString)
                   else
                     CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
                   CDSPersonal.Close;
                 end
               else
                 begin
                   if (DMMain_FD.EmpleadoPorDefecto<>'') and (DMMain_FD.EmpleadoPorDefecto<>'-1')  then
                     CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,DMMain_FD.EmpleadoPorDefecto);
                 end;
               // aca tomo la lista de precio del cliente si no dejo la que esta
               if (QClientesLISTAPRECIOS.AsString<>'') and (QClientesLISTAPRECIOS.AsInteger>0) Then
                 CDSVentaCabLISTAPRECIO.Value:=QClientesLISTAPRECIOS.Value;
               result := True;

           END;
         END
      ELSE
        Result := False;
    END;
  FormTicketVta.pnIva.Visible:=(CDSVentaCabDESGLOZAIVA.Value='S');
  //******************************************************************************************
  if (Result=True) then
    begin

      DMStoreProcedure.QSaldoCtaCte.Close;
      DMStoreProcedure.QSaldoCtaCte.ParamByName('codigo').Value:=Dato;
      DMStoreProcedure.QSaldoCtaCte.Open;

      Autoriza  :=  DMMain_FD.AutorizaVtaCtdo;

      CDSVentaCabSALDO_ACTUAL_CC.AsFloat := DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat;
      if (DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat > QClientesLIMITE_CREDITO.AsFloat) and (Autoriza=False) then
        begin
          ShowMessage('Cliente con saldo .....');
          if Not(Assigned(formEstadoCta)) then
            formEstadoCta:=TformEstadoCta.create(self);

          formEstadoCta.Saldo          := FormatFloat('0.00',DMStoreProcedure.QSaldoCtaCte.Fields[0].AsFloat);
          formEstadoCta.Limite         := FormatFloat('0.00',QClientesLIMITE_CREDITO.AsFloat);
          formEstadoCta.ShowModal;

          DatosVentasTicket.CDSVentaCab.close;
          DatosVentasTicket.CDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
          DatosVentasTicket.CDSVentaCab.Params.ParamByName('id').Clear;
          DatosVentasTicket.CDSVentaCab.Open;

          DatosVentasTicket.CDSVentaDet.Close;
          DatosVentasTicket.CDSVentaDet.Params.ParamByName('id').Clear;
          DatosVentasTicket.CDSVentaDet.Open;

          DatosVentasTicket.CDSImpuestos.Close;
          DatosVentasTicket.CDSImpuestos.Params.ParamByName('id').Clear;
          DatosVentasTicket.CDSImpuestos.Open;

          DatosVentasTicket.CDSVtaSubDetalle.Close;
          DatosVentasTicket.CDSVtaSubDetalle.Params.ParamByName('id').Clear;
          DatosVentasTicket.CDSVtaSubDetalle.Open;

          with FormTicketVta do
            begin
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

              FrameMovValoresIngreso1.CDSMovTCredito.Close;
              FrameMovValoresIngreso1.CDSMovTCredito.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSMovTCredito.Open;

              FrameMovValoresIngreso1.CDSTransBco.Close;
              FrameMovValoresIngreso1.CDSTransBco.Params.ParamByName('id').Clear;
              FrameMovValoresIngreso1.CDSTransBco.Open;

              FrameMovValoresIngreso1.ceCaja.Text       :='';
              FrameMovValoresIngreso1.edMuestraCaja.Text:='';
              FrameMovValoresIngreso1.Id_Caja           :=0;
              pcDetalleFactura.ActivePageIndex := 0;
              IF btNuevo.Enabled THEN
                btNuevo.SetFocus;
            end;
        end;
    end;
//******************************************************************************************

END;

FUNCTION TDatosVentasTicket.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('Id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSVentaCabSUCURSAL.Value;
  if FormTicketVta.FiltraCpbteCondIva='S' Then
    QComprob.ParamByName('DesglozaIva').Value := CDSVentaCabDESGLOZAIVA.Value
  else
    QComprob.ParamByName('DesglozaIva').Value := '*';
  QComprob.Open;

  IF NOT(QComprob.IsEmpty) and (DMMain_FD.Autoriza_Comprobante(dato)) then
    begin
      if (QComprobFISCAL.AsString[1]='S') and (CDSVentaCabDESGLOZAIVA.AsString[1]=QComprobDESGLOZA_IVA.AsString[1]) THEN // verifico si esta autorizado
        begin
          Result := True;
          //*****************************************************************************
          // Seccion Nueva , asigna la caja segun el comprobante seleccionado  10/12/2012
          //*****************************************************************************
          if TForm(Self.Owner).Name<>'FormLecturaXML' then
            begin
              if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
                FormTicketVta.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
              else
                FormTicketVta.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
         //*****************************************************************************
         //*****************************************************************************
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);
          CDSVentaCabMUESTRACOMPROBANTE.Value  := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value            := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value           := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value          := QComprobCLASE_COMPROB.Value;
          CDSVentaCabFACTURA_ELECTRONICA.Value := QComprobFACTURAELECTRONICA.Value;
          CDSVentaCabCON_CAEA.Value            := QComprobUSAR_CAEA.Value;
          FormTicketVta.Calcula_iva_articulo   := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormTicketVta.Divide_iva             := QComprobDIVIDE_IVA.Value='S';

          Renglones                           := QComprobLINEAS_DETALLE.Value;
         ///// si es fiscal le desabilito el si puede o no ser manual
        end
      else
        begin
          Result := False;
          CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
          CDSVentaCabLETRAFAC.Value            := '';
          CDSVentaCabTIPOCPBTE.Value           := '';
          CDSVentaCabCLASECPBTE.Value          := '';
          CDSVentaCabCON_CAEA.Value            := 'N';
         // CDSVentaCabPERCIBE_IVA.Value         := 'N';
        end;
      if (QComprobFISCAL.AsString[1]='N') THEN // verifico si esta autorizado
        BEGIN
          Result := True;
          CDSVentaCabMUESTRACOMPROBANTE.Value  := QComprobDENOMINACION.Value;
          CDSVentaCabLETRAFAC.Value            := QComprobLETRA.Value;
          CDSVentaCabTIPOCPBTE.Value           := QComprobTIPO_COMPROB.Value;
          CDSVentaCabCLASECPBTE.Value          := QComprobCLASE_COMPROB.Value;
          CDSVentaCabFACTURA_ELECTRONICA.Value := QComprobFACTURAELECTRONICA.Value;
          CDSVentaCabCON_CAEA.Value            := QComprobUSAR_CAEA.Value;
          Renglones                            := QComprobLINEAS_DETALLE.Value;
          if TForm(Self.Owner).Name<>'FormLecturaXML' then
            begin
              if (QComprobCAJA_DEFECTO.AsString<>'') and (QComprobCAJA_DEFECTO.Value>0) then
                FormTicketVta.CajaPorDefecto:=QComprobCAJA_DEFECTO.Value
              else
                FormTicketVta.CajaPorDefecto:=DMMain_FD.CajaSeleccionada;
            end;
          FormTicketVta.Calcula_iva_articulo   := QComprobCALCULA_IVA_ARTICULOS.Value='S';
          FormTicketVta.Divide_iva             := QComprobDIVIDE_IVA.Value='S';
          if (QComprobDEPOSITO.AsString<>'') and (QComprobDEPOSITO.Value>0) then
            CDSVentaCabDepositoSetText(CDSVentaCabDeposito,QComprobDEPOSITO.AsString);

    ///// si es fiscal le desabilito el si puede o no ser manual
        end;
    end
  else
    BEGIN
      Result := False;
      CDSVentaCabMUESTRACOMPROBANTE.Value  := '';
      CDSVentaCabLETRAFAC.Value            := '';
      CDSVentaCabTIPOCPBTE.Value           := '';
      CDSVentaCabCLASECPBTE.Value          := '';
      CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
      CDSVentaCabCON_CAEA.Value            := 'N';
      Renglones                            := 0;
    END;

//******************************************************************************
  if FormTicketVta.VerificaIvaCpbte then
    begin
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSVentaCabTipoIva.AsInteger;
      CDSInscripcion.Open;
      IF (CDSInscripcionCODIGO.AsString<>'') Then
        BEGIN
          if (CDSInscripcionDISCRIMINAIVA.Value='S') Then
            begin
              if (QComprobDESGLOZA_IVA.Value='N') and (QComprobAFECTA_IVA.Value='S') then
               begin
                 CDSVentaCabID_TIPOCOMPROBANTE.Clear;
                 CDSVentaCabMUESTRACOMPROBANTE.Clear;
                 CDSVentaCabLETRAFAC.Clear;
                 CDSVentaCabSUCFAC.Clear;
                 CDSVentaCabNUMEROFAC.Clear;
                 CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
                 ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
               end;
            end
          else
            if (CDSInscripcionDISCRIMINAIVA.Value='N') Then
              begin
                if (QComprobDESGLOZA_IVA.Value='S') then
                  begin
                    CDSVentaCabID_TIPOCOMPROBANTE.Clear;
                    CDSVentaCabMUESTRACOMPROBANTE.Clear;
                    CDSVentaCabLETRAFAC.Clear;
                    CDSVentaCabSUCFAC.Clear;
                    CDSVentaCabNUMEROFAC.Clear;
                    CDSVentaCabFACTURA_ELECTRONICA.Value := 'N';
                    ShowMessage('Comprobante no permitido para la condición de iva del cliente....');
                  end;
              end;

          if DMMain_FD.AgentePercepcionIVA='S' then
            CDSVentaCabPERCIBE_IVA.Value:=CDSInscripcionAPLICAPERCEPCIONIVA.Value
          else
            CDSVentaCabPERCIBE_IVA.Value:='N';

          if (CDSVentaCabPERCIBE_IVA.Value='S') and (CDSVentaCabINGRESA_LIBRO_IVA.Value='N') Then
            CDSVentaCabPERCIBE_IVA.Value:='N';

        end;
      CDSInscripcion.Close;
    end;
//******************************************************************************
END;

function TDatosVentasTicket.AsignarArticulo(dato:String):Boolean;
var Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
ModoIva:Integer;
Enter:char;
PrecioPLU  :Extended;
PrecioFinal:Extended;
FiltroRubUser:Boolean;
begin
  IF CDSVentaDet.State = dsBrowse THEN
    CDSVentaDet.Edit;
  WITH DatosVentasTicket DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value := Dato;
      CDSStock.Open;
      //Verifica Filtro por Rubro de Articulos....
      FiltroRubUser := DMMain_FD.FiltroRubroUsurio(DMMain_FD.UsuarioActivoId,CDSStockRUBRO_STK.AsString);
      //************************************************************************************
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0))  and (FiltroRubUser=False) THEN
        BEGIN
          // ***********************************
          // asigno si es de producion.....
          // ***********************************
          if (CDSStockDEPRODUCCION.AsString='S') and
             (CDSStockPRODUCCIONDIRECTA.AsString='S') and
              FormTicketVta.GenerarOProducion then
               CDSVentaDetDE_PRODUCCION.AsString    := 'S'
          else
            CDSVentaDetDE_PRODUCCION.AsString       := 'N';

          if CDSVentaCabTIPOCPBTE.AsString='NC' then
            CDSVentaDetDE_PRODUCCION.AsString       := 'N';

          //vacio todo los importes por si hay un cambio de codigo y no queden cargados los valores
          CDSVentaDetCantidad.AsFloat              :=0;
          CDSVentaDetUnitario_Total.AsFloat        :=0;
          CDSVentaDetUnitario_Gravado.AsFloat      :=0;
          CDSVentaDetUnitario_Exento.AsFloat       :=0;
          CDSVentaDetTotal.AsFloat                 :=0;

          DMMain_FD.FechaUltimaActulizacionPrecio  := CDSStockFUAP.AsDateTime;
          CDSVentaDetIB_TASA.AsFloat               := CDSStockMUESTRATASAIB.AsFloat;  // el codigo de Tasa
          CDSVentaDetGRAVADO_IB.AsString           := CDSStockGRAVADO_IB.AsString;
          CDSVentaDetTIPOIB_TASA.AsInteger         := CDSStockTASA_IB.AsInteger;       // Codigo de IB
          CDSVentaDetCON_NRO_SERIE.AsString        := CDSStockCONTROL_SERIE.AsString;
          CDSVentaDetCON_CODIGO_BARRA.Value        := CDSStockUSA_CODIGOBARRA.Value;
          CDSVentaDetDETALLE.AsString              := CDSStockDETALLE_STK.AsString;
          CDSVentaDetDETALLE_ADICIONAL.AsString    := CDSStockDETALLE_STK_ADICIONAL.AsString;
          CDSVentaDetMUESTRACODALTERNATIVO.AsString:= CDSStockREEMPLAZO_STK.Value;
          CDSVentaDetDETALLE_ADICIONAL.AsString    := CDSStockDETALLE_STK_ADICIONAL.AsString;
          CDSVentaDetUNIDAD.AsString               := CDSStockUNIDAD.AsString;
          CDSVentaDetCOSTO_GRAVADO.AsFloat         := RoundTo((CDSStockFIJACION_PRECIO_GRAVADO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_EXENTO.AsFloat          := RoundTo((CDSStockFIJACION_PRECIO_EXENTO.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetCOSTO_TOTAL.AsFloat           := RoundTo((CDSStockFIJACION_PRECIO_TOTAL.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat),DMMain_FD.DecRedondeo);
          CDSVentaDetAFECTA_STOCK.AsString         := CDSStockCONTROLASTOCK.AsString;
          CDSVentaDetMODO_GRAVAMEN.AsString        := CDSStockMODO_GRAVAMEN.AsString;
          CDSVentaDetTIPOIVA_TASA.Value            := CDSStockTASA_IVA.Value;
          CDSVentaDetTIPOIVA_SOBRETASA.Value       := CDSStockSOBRETASA_IVA.Value;
          CDSVentaDetGRAVADO_IB.AsString           := CDSStockGRAVADO_IB.AsString;
          CDSVentaDetPRECIO_EDITABLE.AsString      := CDSStockEDITAPRECIO.AsString;
          CDSVentaDetMUESTRAIVAMODIFICADO.AsString := CDSStockIVA_MODIFICADO.AsString;
          //***************************************************************
          // Normativa de Macri para los consumidores finales
          ModoIva:=0;
          if (FormTicketVta.AplicaIvaDif) and (CDSVentaDetMUESTRAIVAMODIFICADO.AsString='S') and (CDSVentaCabTIPOIVA.Value=3) then
            begin
              CDSVentaDetCosto_Gravado.AsFloat      := CDSStockFijacion_Precio_Exento.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSVentaDetCosto_Exento.AsFloat       := CDSStockFijacion_Precio_Gravado.AsFloat/CDSStockCONTENIDO_COMPRA.AsFloat;
              CDSVentaDetCosto_Total.AsFloat        := CDSStockFijacion_Precio_Total.AsFloat/CDSStockCONTENIDO_COMPRA.AsFLoat;
              CDSVentaDetModo_Gravamen.Value        := 'E';
              CDSVentaDetTipoIva_Tasa.Value         := 3;
              CDSVentaDetTipoIva_SobreTasa.Value    := 3;
              ModoIva:=1;
            end;

          if VarIsNull(CDSStockEDITAPRECIO.Value) then
            CDSVentaDetPRECIO_EDITABLE.Value:='S';
          //Asigno el deposito que tengo en el encabezado...
          CDSVentaDetDEPOSITO.Value              := CDSVentaCabDEPOSITO.Value;
          //segun el tipo de inscripcion verifico si descrimina o no iva y si cobra Sobre tasa
          CDSVentaDetDESGLOZAIVA.Value           := CDSVentaCabDESGLOZAIVA.Value;
          CDSVentaDetCALCULA_SOBRETASA.Value     := CDSVentaCabCALCULA_SOBRETASA.Value;
          CDSVentaDetCONTROL_TRAZABILIDAD.Value  := CDSStockCONTROL_TRAZABILIDAD.Value;
          // traigo en un Variant los porcentajes de Iva
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value  := CDSVentaDetTipoIva_Tasa.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSVentaDetIVA_Tasa.AsFloat := CDSIvaTasa.AsFloat;
          CDSIva.Close;
          CDSIva.Params.ParamByName('id').Value := CDSVentaDetTIPOIVA_SOBRETASA.Value;
          CDSIva.Open;
          IF NOT (CDSIva.IsEmpty) THEN
            CDSVentaDetIVA_SOBRETASA.AsFloat  := CDSIvaTASA.AsFloat;
          CDSVentaDetMUESTRACONTENIDO.AsFloat := CDSStockCONTENIDO_COMPRA.AsFloat;
          CDSIva.Close;

          CDSVentaDetPERCIBE_IVA.AsString             := CDSStockPERCIBE_IVA.AsString;
          CDSVentaDetID_TASA_PERCEPCION_IVA.Value     := CDSStockID_TASA_PERCEP_IVA.Value;
          CDSVentaDetTASA_PERCEP_IVA.Value            := DMMain_FD.GetTasaPercepcionIVA(CDSStockID_TASA_PERCEP_IVA.Value);
          CDSVentaDetPERCEPCION_IVA_DIFERENCIAL.Value := CDSStockAPLICA_TASA_DIF.Value;


          if (FormTicketVta.Calcula_iva_articulo=False) then
            CDSVentaDetIVA_Tasa.AsFloat :=0;

          if (FormTicketVta.Calcula_iva_articulo=True) and (FormTicketVta.Divide_iva=True) then
            CDSVentaDetIVA_Tasa.AsFloat:=CDSVentaDetIVA_Tasa.AsFloat * 0.5;

          CDSVentaDetID_MONEDA.Value  := CDSStockMONEDA.Value;
          QMonedas.Close;
          QMonedas.ParamByName('id').Value:= CDSStockMONEDA.Value;
          QMonedas.Open;
          if QMonedasCOTIZACION.AsString<>'' then
            CDSVentaDetCOTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
          else
            CDSVentaDetCOTIZACION.AsFloat :=1;
          QMonedas.Close;

          CDSVentaDetCosto_Gravado.AsFloat       := (CDSVentaDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Exento.AsFloat        := (CDSVentaDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCosto_Total.AsFloat         := (CDSVentaDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;


          DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.Value,DMMain_FD.IdListaProveedor, CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                        CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                        CDSVentaDetCOTIZACION.AsFloat,
                                        CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                        Gravado,exento,Total,Iva,Margen,dscto,PFinal);


          if (FormTicketVta.Divide_iva=True) then
            Iva:=Iva/2;

          if (FormTicketVta.Calcula_iva_articulo=False) then
            Iva:=0;

          CDSVentaDetUNITARIO_GRAVADO.AsFloat     := Gravado;
          CDSVentaDetUNITARIO_EXENTO.AsFloat      := Exento;
          CDSVentaDetUNITARIO_TOTAL.AsFloat       := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat   := Total;
          CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat := Total;

          CDSVentaDetIVA_UNITARIO.AsFloat         := Iva;
          CDSVentaDetMARGEN.ASFloat               := Margen;
          CDSVentaDetDESCUENTO.ASFloat            := Dscto;

          if CDSStockPRESENTACION_CANTIDAD.ASFloat>0 then
            CDSVentaDetPRESENTACION_CANT.AsFloat   := CDSStockPRESENTACION_CANTIDAD.AsFloat
          else
            CDSVentaDetPRESENTACION_CANT.AsFloat   := 1;

          if CDSStockPRESENTACION_UNIDAD.AsString<>'' then
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockPRESENTACION_UNIDAD.AsString
          else
            CDSVentaDetPRESENTACION_UNIDAD.AsString   := CDSStockUNIDAD.AsString;


          // control de Ingreso PLU
          if (FormTicketVta.IngresoAutomatico='S'){ or (DMMain_FD.DesdePLU)}  Then
            begin
              Enter:=#13;
              if CantidadItem>0 then
                CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(CantidadItem))
              else
                CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');

              FormTicketVta.DBGrillaDetalle.SelectedIndex:=3;
              FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
              Enter:=#0;
            end;
{
          if (FormTicketVta.IngresoAutomatico='S') Then
            begin
              Enter:=#13;
              CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
              FormTicketVta.DBGrillaDetalle.SelectedIndex:=3;
              FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
            end;
          // ****************************************************
          // **** Cantidad desde PLU ********************************
          // **************************************************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
              //    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr((StrToFloat(DMMain_FD.PrecioPLU)*0.01)/CDSVentaDetUNITARIO_TOTAL.AsFloat));
                  CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.01));
                  FormTicketVta.DBGrillaDetalle.SelectedIndex:=3;
                 // FormCpbteCtdo_2.DBGrillaDetalleKeyPress(FormCpbteCtdo_2.DBGrillaDetalle,Enter);
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormTicketVta.DBGrillaDetalle.SelectedIndex:=3;
                    FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                  end;
            end;
          // **** Fin desde PLU ********************************
 }


          // ************************************************************************************
          // Genera el detalle de produccion.....
          if (CDSVentaDetDE_PRODUCCION.Value='S') and (FormTicketVta.GenerarOProducion) and (CDSVentaCabTIPOCPBTE.AsString<>'NC') then
            GenerarDetalleProduccion;
          FormTicketVta.spProduccion.Enabled:= CDSVentaDetDE_PRODUCCION.Value='S';
          // ****************************************************
          // **** Cantidad desde PLU ****************************
          // ************************************************************************************
          if DMMain_FD.DesdePLU then
            begin
              Enter:=#13;
              if DMMain_FD.ModoPLU=0 then  //Precio
                begin
                  PrecioPLU   := StrToFloat(DMMain_FD.PrecioPLU) * DMMain_FD.PluCoeficiente{0.01};
                  PrecioFinal := CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;
                  if PrecioFinal>0 then
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(PrecioPlu/PrecioFinal))
                  else
                    begin
                      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
                      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*DMMain_FD.PluCoeficiente{0.01}));
                    end;
                  FormTicketVta.DBGrillaDetalle.SelectedIndex:=4;
                 // FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                  Enter:=#0;
                end
              else
                if DMMain_FD.ModoPLU=1 then //Cantidad
                  begin
                   // FormTicketVta.DBGrillaDetalle.SelectedIndex:=4;
                    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FLoatToStr(StrToFloat(DMMain_FD.PrecioPLU)*0.001));
                    FormTicketVta.DBGrillaDetalle.SelectedIndex:=4;
                  //  FormTicketVta.DBGrillaDetalleKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
                  end;
            end;
          // **** Fin desde PLU *********************************
          // ****************************************************

          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

function TDatosVentasTicket.AsignarDeposito(Dato: Integer): Boolean;
begin
  CDSDeposito.Close;
  CDSDeposito.Params.ParamByName('Id').Value := Dato;
  CDSDeposito.Open;
  IF NOT (CDSDeposito.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSVentaCabMuestraDeposito.Value := CDSDepositoNombre.Value;
    END
  ELSE
    Result := False;
end;

FUNCTION TDatosVentasTicket.AsignarVendedor(Dato: String): Boolean;
begin
  CDSPersonal.Close;
  CDSPersonal.Params.ParamByName('codigo').Value:=Dato;
  CDSPersonal.Open;
  IF NOT (CDSPersonal.IsEmpty) THEN
    BEGIN
      Result:=True;
      CDSVentaCabMUESTRAVENDEDOR.Value  :=CDSPersonalNOMBRE.Value;
      CDSVentaCabCOMSIONVENDEDOR.AsFloat:=CDSPersonalCOMISION.AsFloat;
    END
  ELSE
    begin
      Result:=False;
      CDSVentaCabMUESTRAVENDEDOR.Clear;
      CDSVentaCabCOMSIONVENDEDOR.Clear;
    end;
  CDSPersonal.Close;
end;


procedure TDatosVentasTicket.GenerarRtoProduccion;
VAR Puntero:TBookmark;
cont,i:Integer;
begin
  CDSVentaDet.First;
  while Not(CDSVentaDet.Eof) do
    begin
      if CDSVentaDetDE_PRODUCCION.Value='S' then
        begin
          if Not(Assigned(FormOrdenProduccion)) then
            FormOrdenProduccion:=TFormOrdenProduccion.Create(Self);
          FormOrdenProduccion.Show;
          FormOrdenProduccion.Agregar.Execute;
          DatosOProduccion.CDSOProdCabDEPOSITO_DESTINOSetText(DatosOProduccion.CDSOProdCabDEPOSITO_DESTINO,DatosVentasTicket.CDSFc_Prod_DetDEPOSITO_DESTINO.AsString);
          DatosOProduccion.CDSOProdCabOBS1.Value:='Generada desde Fac.de Vta Ctdo '+Copy(CDSVentaCabNROCPBTE.AsString,1,1)+'-'+
                                                                                       Copy(CDSVentaCabNROCPBTE.AsString,2,4)+'-'+
                                                                                       Copy(CDSVentaCabNROCPBTE.AsString,6,8)+ ' del '+
                                                                                       FormatDateTime('dd/mm/yyyy',CDSVentaCabFECHAVTA.AsDateTime);
          DatosOProduccion.CDSOProdCabID_FCVTA.Value := CDSVentaCabID_FC.Value;

          DatosOProduccion.CDSOProdDet.Append;
          DatosOProduccion.CDSOProdDetCODIGOSetText(DatosOProduccion.CDSOProdDetCODIGO,DatosVentasTicket.CDSFc_Prod_DetCODIGO.AsString);
          DatosOProduccion.CDSOProdDetCANTIDAD.AsFloat := DatosVentasTicket.CDSFc_Prod_DetCANTIDAD.AsFloat;
          DatosOProduccion.CDSOProdDet.Post;
          DatosOProduccion.CDSOProdDet.First;
          while Not(DatosOProduccion.CDSOProdMov.Eof) do
            begin
              DatosOProduccion.CDSOProdMov.Delete;
              DatosOProduccion.CDSOProdMov.First;
            end;
          CDSFc_Prod_Mov.First;
          while Not(CDSFc_Prod_Mov.Eof) do
            begin
              if DatosVentasTicket.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat>0 then
                begin
                  DatosOProduccion.CDSOProdMov.Append;
                  DatosOProduccion.CDSOProdMovCODIGO.AsString           :=DatosVentasTicket.CDSFc_Prod_MovCODIGO.AsString;
                  DatosOProduccion.CDSOProdMovCANTIDAD_ESTIMADA.AsFloat :=DatosVentasTicket.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovCANTIDAD_REAL.AsFloat     :=DatosVentasTicket.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovCANTIDAD_UNITARIA.AsFloat :=DatosVentasTicket.CDSFc_Prod_MovCANTIDAD_REAL.AsFloat;
                  DatosOProduccion.CDSOProdMovDETALLE.Value             :=DatosVentasTicket.CDSFc_Prod_MovDETALLE.Value;
                  DatosOProduccion.CDSOProdMovAFECTA_STOCK.Value        :=DatosVentasTicket.CDSFc_Prod_MovAFECTA_STOCK.Value;
                  DatosOProduccion.CDSOProdMov.Post;
                end;
              DatosVentasTicket.CDSFc_Prod_Mov.Next;
            end;
          FormOrdenProduccion.Confirma.Execute;
          FormOrdenProduccion.AProduccion.Execute;
          FormOrdenProduccion.RecepcionProducto.Execute;
          FormOrdenProduccion.Salir.Execute;
        end;
      CDSVentaDet.Next;
    end;
end;




FUNCTION TDatosVentasTicket.ASignarArticuloProduccion(Dato: STRING): Boolean;
BEGIN
  IF DatosVentasTicket.CDSFc_Prod_Mov.State = dsBrowse THEN
    DatosVentasTicket.CDSFc_Prod_Mov.Edit;
  WITH DatosVentasTicket DO
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value:=Dato;
      CDSStock.Open;
      IF (( NOT (CDSStock.IsEmpty)) and (CDSStockCLASE_ARTICULO.Value<>0)) THEN
        BEGIN
          CDSFc_Prod_MovCODIGO.Value      := Dato;
          CDSFc_Prod_MovDETALLE.Value     := CDSStockDETALLE_STK.AsString;
          CDSFc_Prod_MovAFECTA_STOCK.Value:= CDSStockACTUALIZACOSTO.AsString;
         // CDSFc_Prod_MovDEPOSITO_ORIGEN.Value:= CDSFc_Prod_Detde
          Result:=True;
        END
      ELSE
        Result:=False;
    END;
END;

Procedure TDatosVentasTicket.ReAsignarDetalle;
VAR Puntero:TBookmark;
cont:Integer;
begin
  //Puntero:=CDSVentaDet.GetBookmark;
  cont:=1;
  CDSVentaDet.First;
  CDSVentaDet.DisableControls;
  CDSVentaDet.AfterPost:=nil;
  while Not(CDSVentaDet.Eof) do
    begin
      if CDSVentaDetTOTAL.AsFloat>0 then
        BEGIN
          CDSVentaDet.edit;
          CDSVentaDetDesglozaIVA.Value   := CDSVentaCabDESGLOZAIVA.Value;
          CDSVentaDetDeposito.Value      := CDSVentaCabDeposito.Value;
          CDSVentaDetTipoCpbte.Value     := CDSVentaCabTIPOCPBTE.Value;
          CDSVentaDetCLASECPBTE.Value    := CDSVentaCabCLASECPBTE.Value;
          CDSVentaDetNroCpbte.Value      := CDSVentaCabNROCPBTE.Value;
          CDSVentaDetRenglon.AsFloat     := cont;
          CDSVentaDetFECHAVTA.AsDateTime := CDSVentaCabFECHAVTA.AsDateTime;
        END;
      Inc(cont);
      CDSVentaDet.Next;
    end;
  CDSVentaDet.AfterPost := CDSVentaDetAfterPost;
 // CDSVentaDet.GotoBookmark(Puntero);
 // CDSVentaDet.FreeBookmark(Puntero);
  CDSVentaDet.EnableControls;
end;

procedure TDatosVentasTicket.CDSVentaCabNETOGRAV1GetText(Sender: TField; var Text: string; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Currency;//real
begin
  if FormTicketVta<>Nil Then
    begin
      TotalGral := CDSVentaCabTotal.AsFloat -
                   CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat -
                   CDSVentaCabNETOEXEN2.AsFloat -
                   CDSVentaCabNETONOGRAV2.ASFloat;
      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

      if CDSVentaCabNETOGRAV2.AsFloat>0 Then
        Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
      else
        Var_TasaIva:=0;

      if Var_TasaIva<0 then Var_TasaIva :=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N') Then
        Aux:= (Aux * (1+Var_TasaIva * 0.01));

      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);

      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabNETOGRAV2GetText(Sender: TField; var Text: string; DisplayText: Boolean);
VAR TotalGral,NetoTotal,Aux:Real;
begin
  if FormTicketVta<>Nil Then
    begin
      TotalGral := CDSVentaCabTotal.AsFloat-CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat-CDSVentaCabNETOEXEN2.AsFloat;
      NetoTotal := CDSVentaCabNetoGrav2.AsFloat;

      if CDSVentaCabNETOGRAV2.AsFloat>0 Then
        Var_TasaIVA:= ((TotalGral/NetoTotal)-1)*100
      else
        Var_TasaIva:=0;

      Aux:=Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      Aux:= RoundTo(Aux ,-3);
      Aux:= RoundTo(Aux ,-2);
      Text:=FormatFloat(MascaraCabecera,Aux);
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabNewRecord(DataSet: TDataSet);
begin
  //inherited;
  CDSVentaCabID_FC.Value                := IBGFc_Cab.IncrementFD(1);
  CDSVentaCabNOMBRE.AsString            := '';
  CDSVentaCabRAZONSOCIAL.AsString       := '';
  CDSVentaCabCUIT.AsString              := '';
  CDSVentaCabDIRECCION.AsString         := '';
  CDSVentaCabTipoIVA.Value              := 0;
  CDSVentaCabCPOSTAL.AsString           := '';
  CDSVentaCabLETRAFAC.AsString          := '';
  CDSVentaCabSUCFAC.AsString            := '0000';
  CDSVentaCabNUMEROFAC.AsString         := '00000000';
  CDSVentaCabDSTO.ASFloat               := 0;
  CDSVentaCabDSTOIMPORTE.AsFloat        := 0;
  CDSVentaCabNETOEXEN1.AsFloat          := 0;
  CDSVentaCabNETOEXEN2.AsFloat          := 0;
  CDSVentaCabNETONOGRAV1.AsFloat        := 0;
  CDSVentaCabNETONOGRAV2.AsFloat        := 0;
  CDSVentaCabVUELTO.AsFloat             := 0;

  CDSVentaCabINF_X.AsString             := 'N';
  CDSVentaCabFECHAVTA.AsDateTime        := Date;
  CDSVentaCabFECHA_FISCAL.AsDateTime    := Date;
  CDSVentaCabNC_POR_DIFERENCIA.AsString := 'N';

  CDSVentaCabFECHAVTO.AsDateTime        := CDSVentaCabFECHAVTA.AsDateTime;
  CDSVentaCabPERCIBE_IB.AsString        := BoolToStr(DMMain_FD.AgentePercepcionIB,True);
  CDSVentaCabPERCEPCION_IB_TASA.AsFloat := DMMain_FD.TasaPercepcionIB;
  CDSVentaCabNRORTO.AsString            := '';
  CDSVentaCabANULADO.AsString           := 'N';
  CDSVentaCabIMPRESO.AsString           := 'N';
  CDSVentaCabCPTE_MANUAL.AsString       := 'N';
  CDSVentaCabDEPOSITO.Clear;
  CDSVentaCabTIPOCPBTE.AsString         := ''; //Factura de Vta contado...
  CDSVentaCabCONDICIONVTA.Value         := 0; //...... Condicion de Vta contado=0(cero)
  CDSVentaCabNROENTREGA.Value           := 1;
  CDSVentaCabREDUCIDA.AsString          := 'N';
  CDSVentaCabSUCURSALSetText(CDSVentaCabSUCURSAL,IntToStr(FormTicketVta.sucursalpordefecto));
  CDSVentaCabDEPOSITOSetText(CDSVentaCabDEPOSITO,IntToStr(FormTicketVta.DepositoPorDefecto));
  CDSVentaCabLIQUIDADA.Value                 := 'N';
  CDSVentaCabCOMSIONVENDEDOR.AsFloat         := 0;
  CDSVentaCabNC_CONTADO.Value                := 'N';
  CDSVentaCabCAJA_POR_DEFECTO.Value          := FormTicketVta.CajaPorDefecto;
  CDSVentaCabUSUARIO.Value                   := DMMain_FD.UsuarioActivo;
  CDSVentaCabFECHA_HORA.AsDateTime           := now;
  CDSVentaCabVALORES_RECIBIDOS.AsFloat       := 0;
  CDSVentaCabPOR_CTA_Y_ORDEN.Value           := 'N';
  CDSVentaCabINGRESA_A_CTACTE.Value          := 'N';
  CDSVentaCabANULADO.Value                   := 'N';
  CDSVentaCabPERCIBE_IB.Value                := 'N';
  CDSVentaCabPROVEEDOR.Value                 := '';
  CDSVentaCabMUESTRAPROVEEDOR.Value          := '';
  CDSVentaCabTIPO_VTA.AsString               := 'M';
  CDSVentaCabCON_GTIA_EXTENDIDA.Value        := 'N';
  CDSVentaCabCAE.Value                       := '0';
  CDSVentaCabCAE_VENCIMIENTO.Clear;
  CDSVentaCabFACTURA_ELECTRONICA.Value       := 'N';
  CDSVentaCabCANT_BULTOS.Value               := 1;
  CDSVentaCabCUOTAS_CC.Value                 := 1;
  CDSVentaCabINTERVALO_CUOTA.Value           := 30;
  CDSVentaCabPAGO_A_CTA.AsFloat              := 0;
  CDSVentaCabID_FC_CON_ADEL.Value            := -1;
  CDSVentaCabCENTRO_COSTO.Value              := -1;
  CDSVentaCabID_PEDIDO_MORPHI.Value          := -1;
  CDSVentaCabMONEDA_CPBTE.Value              := 1;
  CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := 1;
  CDSVentaCabFOB_TOTAL.Value                 := 0;
  CDSVentaCabNOTAS.Value                     := '';
  CDSVentaCabPOR_CTA_Y_ORDEN.Value           := 'N';
  CDSVentaCabASOCIADO_TIPO.Value             := 0;
  CDSVentaCabASOCIADO_PTOVTA.Value           := 0;
  CDSVentaCabASOCIADO_NRO.Value              := 0;
  CDSVentaCabASOCIADO_CPTEFCH.Value          := '00000000';
  CDSVentaCabASOCIADO_ID_CPBTE.Value         := -1;
  CDSVentaCabCONDICIONPEDIDO.Value           :=-1;
  CDSVentaCabCON_CAEA.Value                  := 'N';
  CDSVentaCabCBU.AsString                    := CDSEmpresaCBU.AsString;

  CDSVentaCabPERCIBE_IVA.Value               := DMMain_FD.AgentePercepcionIVA;
  CDSVentaCabMINIMO_PERCI_IVA.Value          := DMMain_FD.Minim_Imp_Perc_IVA;
  CDSVentaCabHONORARIOS.Value                := 0;
  CDSVentaCabHONORARIOS_PROCENTAJ.Value      := 0;

  CDSVentaCabCON_CAEA.VALUE                  := 'N';
  CDSVentaCabCAEA_INFORMADO.AsString         := 'N';
  CDSVentaCabFACTURA_DE_ANTICIPO.AsString    := 'N';
  CDSVentaCabCONDICIONPEDIDO.Value           := -1;

  if (Trim(CDSEmpresaCOD_ACTIVIDAD.AsString)='') then
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := '**********'
  else
    CDSVentaCabCODIGO_ACTIVIDAD.Value        := CDSEmpresaCOD_ACTIVIDAD.AsString;

  CDSVentaCabMUESTRAOBRA.AsString            := '';
  CDSVentaCabID_OBRA.Value                   := -1;
  CDSVentaCabPROCESADA.Value                 := 'S';
    //  pongo la cotizacion y el tipo de moneda del comprobante
//  DMMain_FD.QOpciones.Close;
//  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='MONEDAVTA';
//  DMMain_FD.QOpciones.Open;
//  if DMMain_FD.QOpciones.Fields[0].AsString<>'' then
//    CDSVentaCabMONEDA_CPBTE.Value           :=DMMain_FD.QOpciones.Fields[0].AsInteger
//  else
//    CDSVentaCabMONEDA_CPBTE.Value := 1;
//  DMMain_FD.QOpciones.Close;

  CDSVentaCabMONEDA_CPBTE.AsInteger := DMMain_FD.MonedaVta;

  QMonedas.Close;
  QMonedas.ParamByName('id').Value  := CDSVentaCabMONEDA_CPBTE.AsInteger;
  QMonedas.Open;

  if QMonedasCOTIZACION.AsString<>'' Then
    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat := QMonedasCOTIZACION.AsFloat
  else
    CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFLoat :=1;

  CDSVentaCabMUESTRAMONEDACPBTE.Value        := QMonedasMONEDA.Value;
  CDSVentaCabMUESTRASIGNOMONEDACPBTE.Value   := QMonedasSIGNO.Value;
  QMonedas.Close;

  CDSVentaCabMESES_DE_GARANTIA.Value:=0;


  //***********************************************************
  //***********************************************************
  CDSVentaCabLISTAPRECIO.AsInteger    :=  DMMain_FD.ListaPorDefecto(CDSVentaCabSUCURSAl.AsInteger);

  if FormTicketVta.ClientePorDefecto<>'' Then
    CDSVentaCabCodigoSetText(CDSVentaCabCODIGO,FormTicketVta.ClientePorDefecto);

  if (FormTicketVta.Visible) then
    if ((FormTicketVta.dbeFechaVta.Enabled) and (FormTicketVta.dbeFechaVta.Visible) and FormTicketVta.pnCabecera.Enabled) then
      begin
        FormTicketVta.dbeFechaVta.SetFocus;
        FormTicketVta.dbeFechaVta.SelectAll;
      end;
  FormTicketVta.ItemRedondeo:='*';
end;

procedure TDatosVentasTicket.CDSVentaCabPERCIBE_IVAChange(Sender: TField);
begin
  //inherited;

end;

procedure TDatosVentasTicket.CDSVentaCabPROVEEDORSetText(Sender: TField; const Text: string);
begin
 // inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarProveedor(Text)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          FormTicketVta.ceProveedor.SetFocus;
        END;
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabReconcileError(DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
begin
  inherited;
  ShowMessage(e.Message);
end;

procedure TDatosVentasTicket.CDSVentaCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
//  inherited;
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarSucursal(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Sucursal No Valido');
          FormTicketVta.RxCSucursal.SetFocus;
        END
      ELSE IF CDSVentaCab.State = dsInsert THEN
        FormTicketVta.UltimoComprobante;
    end;

end;

procedure TDatosVentasTicket.CDSVentaCabVENDEDORSetText(Sender: TField;
  const Text: string);
begin
 IF  (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      Sender.AsString:=copy('000000',1,Sender.Size-Length(Text))+Text;
      IF (NOT (AsignarVendedor(Sender.AsString))) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo Vendedor no Válido');
          FormTicketVta.rxcVendedor.SetFocus;
        END;
    END;
end;

procedure TDatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
 // inherited;
  if (Text<>'') and (text[1]<>#13) and (CDSVentaCabCODIGO.AsString<>'') Then
    BEGIN
      Sender.AsString := Text;
      IF NOT (AsignarComprobante(sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo Comprobante no Válido');
          FormTicketVta.RxCTipoCpbte.SetFocus;
        END;
    END
  ELSE
    begin
      Sender.Clear;
      CDSVentaCabMUESTRACOMPROBANTE.Clear;
    end;

  IF CDSVentaCab.State = dsInsert THEN
    FormTicketVta.UltimoComprobante;
  HabilitarLabel;
end;

procedure TDatosVentasTicket.CDSVentaCabLDRSetText(Sender: TField;
  const Text: string);
begin
//  inherited;
 if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarLdr(CDSVentaCabCodigo.Value, Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo L.D.R no Válido');
          //FormTicketVta.RxCLdr.SetFocus;
        END;
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabLISTAPRECIOChange(Sender: TField);
begin
  //inherited;

end;

procedure TDatosVentasTicket.CalcularTotales;
VAR
  Modo: TFPURoundingMode;
  Acumulador,AcumuladorPIVA,Descuento,TotalOld,TotalNew,
  TotalGral,NetoTotal,SumaTotal: Currency;// Extended;
  NetoGrav2,NetoExento2,NetoNoGrav2, ImpuestoNeto,ImpuestoImporte:Currency;
BEGIN
  CDSVentaCabTotal.AsFloat := 0;
  Acumulador               := 0;
  AcumuladorPIVA           := 0;
  Descuento                := CDSVentaCabDsto.AsFloat * 0.01;
  // Ultima modificacion 16/10/2017 agregado del  - Neto No Gravado -
  NetoGrav2                := RoundTo( CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento),-3);
  NetoExento2              := RoundTo( CDSVentaCabNetoExen1.AsFloat * (1 - Descuento),-3);
  NetoNoGrav2              := RoundTo( CDSVentaCabNETONOGRAV1.AsFloat * (1 - Descuento),-3);

  Modo := GetRoundMode;
  SetRoundMode(rmUp);
  CDSVentaCabNETOGRAV2.AsFloat   := RoundTo(NetoGrav2,-2);
  CDSVentaCabNETONOGRAV2.AsFloat := RoundTo(NetoNoGrav2,-2);
  CDSVentaCabNETOEXEN2.AsFloat   := RoundTo(NetoExento2,-2);
  SetRoundMode(Modo);
  // Si percibo IB calculo la percepcion
  if CDSVentaCabPERCIBE_IB.Value='S' Then
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := RoundTo (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat * (1 - Descuento),-2)
  else
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat := 0;

  CDSVentaCabDSTOIMPORTE.AsFloat := (RoundTo(CDSVentaCabNetoGrav1.AsFloat,-2) +
                                     RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-2) +
                                     RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-2)) -
                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat + CDSVentaCabNETONOGRAV2.ASFloat);

  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;

  CDSImpuestos.First;
  CDSImpuestos.DisableControls;
    WHILE NOT (CDSimpuestos.Eof) DO
      BEGIN
        TotalOld := (CDSImpuestosNETO.AsFloat+CDSImpuestosIMPORTE.AsFloat);
        TotalOld := RoundTo(TotalOld,-3);
        TotalOld := RoundTo(TotalOld,-2);
        TotalNew := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSImpuestos.Edit;
        CDSImpuestosNETO.AsFloat    := 0;
        CDSImpuestosNETO.AsFloat    := TotalOld - CDSImpuestosIMPORTE.AsFloat;
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-3);
        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-2);

        SetRoundMode(Modo);

        CDSImpuestosNETO.AsFloat    := RoundTo(CDSImpuestosNETO.AsFloat,-2);

        if Trunc(CDSVentaCabDSTO.AsFloat*100)<>0 then
          begin
            ImpuestoNETO    := RoundTo( TotalNew / (1+CDSImpuestosTASA.AsFloat*0.01),-3);
            ImpuestoNeto    := RoundTo( ImpuestoNeto,-2);
            ImpuestoIMPORTE := TotalNew - ImpuestoNeto ;

            CDSImpuestosNETO.AsFloat    := ImpuestoNeto;
            CDSImpuestosIMPORTE.AsFloat := ImpuestoImporte;
          end;
        Acumulador                  := Acumulador + CDSImpuestosIMPORTE.AsFloat;
        CDSImpuestos.Next;
      END;
    CDSImpuestos.EnableControls;

  CDSPercepcionIVA.First;
  CDSPercepcionIVA.DisableControls;
    WHILE NOT (CDSPercepcionIVA.Eof) DO
      BEGIN
        TotalOld                        := Roundto(CDSPercepcionIVANETO.AsFloat+CDSPercepcionIVAIMPORTE.AsFloat,-3);
        TotalOld                        := RoundTo(TotalOld,-2);
        TotalNew                        := RoundTo(TotalOld * (1 - Descuento),-2);
        CDSPercepcionIVA.Edit;
        CDSPercepcionIVANETO.AsFloat    := 0;
        CDSPercepcionIVANETO.AsFloat    := TotalOld - CDSPercepcionIVAIMPORTE.AsFloat;
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSPercepcionIVANETO.AsFloat    := RoundTo(CDSPercepcionIVANETO.AsFloat,-3);
        SetRoundMode(Modo);

        CDSPercepcionIVANETO.AsFloat    := RoundTo(CDSPercepcionIVANETO.AsFloat,-2);

        if Trunc(CDSVentaCabDSTO.AsFloat*100)<>0 then
          begin
            ImpuestoNETO                    := RoundTo( TotalNew / (1+CDSPercepcionIVATASA.AsFloat*0.01),-3);
            ImpuestoNeto                    := RoundTo( ImpuestoNeto,-2);
            ImpuestoIMPORTE                 := TotalNew - ImpuestoNeto ;

            CDSPercepcionIVANETO.AsFloat    := ImpuestoNeto;
            CDSPercepcionIVAIMPORTE.AsFloat := ImpuestoImporte;
          end;
        AcumuladorPIVA                      := AcumuladorPIVA + CDSPercepcionIVAIMPORTE.AsFloat;
        CDSPercepcionIVA.Next;
      END;
  CDSPercepcionIVA.EnableControls;

  if AcumuladorPIVA<= DMMain_FD.Minim_Imp_Perc_IVA {3000} then
    begin
      CDSPercepcionIVA.first;
      AcumuladorPIVA:=0;
      while not(CDSPercepcionIVA.eof) do
        begin
         CDSPercepcionIVA.Delete;
         CDSPercepcionIVA.Next;
        end;
      CDSPercepcionIVA.Close;
      CDSPercepcionIVA.Open;
    end;

  Modo:=GetRoundMode;
  SetRoundMode(rmUp);
  Acumulador:=RoundTo(Acumulador,-3);
  Acumulador:=RoundTo(Acumulador,-2);
  SetRoundMode(Modo);


  if (CDSVentaCabPERCIBE_IB.Value='S') and (CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat>DMMain_FD.Minim_Imp_IB_Perc)
  Then
    begin
      CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat := RoundTo(CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE.AsFloat *
                                                          CDSVentaCabPERCEPCION_IB_TASA.AsFloat * 0.01,-2)
    end
  else
    CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat :=0;


  SumaTotal     := roundTo(CDSVentaCabNETOGRAV2.AsFloat +
                           CDSVentaCabNETOEXEN2.AsFloat +
                           CDSVentaCabNETONOGRAV2.AsFloat +
                           Acumulador + AcumuladorPIVA +
                           CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat,-3);

   CDSVentaCabTOTAL.AsFloat := RoundTo(SumaTotal,-2);
    {
    TasaReal: esta tasa la uso como multiplicador para cuando el cliente es del tipo
    Monotributo o consumidor final, as'i muestro los importe con el Iva
    incluido.
    No esta con formato para que la cuenta me de bien..... creo...}

//   ( ( Total/ neto )- 1 ) x 100 = Tasa de Iva usada

//  CDSVentaCabNETOGRAV2.AsFloat  := RoundTo(CDSVentaCabNetoGrav1.AsFloat * (1 - Descuento), -2);
//  CDSVentaCabNetoGrav1.AsFloat  := CDSVentaCabNetoGrav1.AsFloat;

  FormTicketVta.lbPercepcionIVA.Caption := FormatFloat('0.00',AcumuladorPIVA);

  
  TotalGral := CDSVentaCabTOTAL.AsFloat -
               (CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat + AcumuladorPIVA +
                CDSVentaCabNETOEXEN2.AsFloat +
                CDSVentaCabNETONOGRAV2.AsFloat);
  NetoTotal := CDSVentaCabNETOGRAV2.AsFloat;

  TRY
    if CDSVentaCabNetoGrav2.AsFloat>0 Then
//      Var_TasaIVA:=(((wwCDSVentaCabTotal.Value-wwCDSVentaCabPERCEPCION_IB_IMPORTE.Value )- wwCDSVentaCabNetoGrav2.Value) / wwCDSVentaCabNetoGrav2.Value)*100
      Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
    else
      Var_TasaIva:=0;
  EXCEPT
    ON EZeroDivide DO
      Var_TasaIva:=0;
  END;
  // Para que se refresca el OnGetTex de Descuento.... lo reasgino de nuevo
  CDSVentaCabDSTOIMPORTE.AsFloat := (RoundTo(CDSVentaCabNetoGrav1.AsFloat,-2) + RoundTo(CDSVentaCabNETOEXEN1.AsFloat,-2) + RoundTo(CDSVentaCabNETONOGRAV1.AsFloat,-2)) -
                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat);

  if IsZero(Descuento) then CDSVentaCabDSTOIMPORTE.AsFloat :=0;
  //  CDSVentaCabDSTOIMPORTE.AsFloat := (CDSVentaCabNetoGrav1.AsFloat + CDSVentaCabNETOEXEN1.AsFloat) -
  //                                    (CDSVentaCabNetoGrav2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat);


end;

procedure TDatosVentasTicket.CDSFc_Prod_DetCANTIDADSetText(Sender: TField;
  const Text: string);
begin
  //inherited;
 if DatosVentasTicket.CDSFc_Prod_Det.State=dsBrowse then
    DatosVentasTicket.CDSFc_Prod_Det.Edit;
  Sender.AsString:=Text;
  CDSFc_Prod_Mov.First;
  while Not(CDSFc_Prod_Mov.Eof) do
    begin
        CDSFc_Prod_Mov.Edit;
      CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat := CDSFc_Prod_MovCANTIDAD_UNITARIA.AsFloat * Sender.AsFloat;
      CDSFc_Prod_MovCANTIDAD_REAL.AsFloat     := CDSFc_Prod_MovCANTIDAD_ESTIMADA.AsFloat;
      CDSFc_Prod_Mov.Next;
    end;
  if CDSVentaDet.State=dsBrowse then CDSVentaDet.Edit;
  CDSVentaDetCantidadSetText(CDSVentaDetCantidad,Sender.AsString);
end;

procedure TDatosVentasTicket.CDSFc_Prod_MovCODIGOSetText(Sender: TField;
  const Text: string);
var s:String;
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Trim(Text);
      S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));

      Sender.AsString:=s; ;
      IF AsignarArticuloProduccion(s) = False THEN
        BEGIN
          Sender.Clear;
          ShowMessage('Dato no Valido..');
        END;
    end;
end;


procedure TDatosVentasTicket.CDSPercepcionIVANewRecord(DataSet: TDataSet);
begin
 // inherited;
  CDSPercepcionIVAID_Percepcion.Value     := IBGPercepcionIVA.IncrementFD(1);
  CDSPercepcionIVAID_FCVTACAB.Value       := CDSVentaCabID_FC.Value;
  CDSPercepcionIVACODIGOREGIMEN.Value     := -1;
  CDSPercepcionIVANETO.AsFloat            := 0;
  CDSPercepcionIVATASA.AsFloat            := 0;
  CDSPercepcionIVAIMPORTE.AsFloat         := 0;
  CDSPercepcionIVACODIGO_PERCEPCION.Value := -1;
end;

procedure TDatosVentasTicket.CDSVentaCabBeforePost(DataSet: TDataSet);
begin
//  inherited;
  CDSVentaCabNROCPBTE.Value := CDSVentaCabLETRAFAC.Value + CDSVentaCabSUCFAC.Value + CDSVentaCabNUMEROFAC.Value;
end;

procedure TDatosVentasTicket.CDSVentaCabCodigoSetText(Sender: TField;
  const Text: String);
VAR  Aux: STRING;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux := Text;
      Aux := Copy('00000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF AsignarCliente(Aux) = False THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.Clear;
          CDSVentaCabNOMBRE.Clear;
          Aux:='';
          FormTicketVta.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormTicketVta.RxCCodigo.Text := Aux;
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabDEPOSITOSetText(Sender: TField;
  const Text: string);
begin
//  inherited;
   if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
         // FormCpbteCtdo_2.RxCDeposito.SetFocus;
        END;
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabDSTOIMPORTEGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
VAR Aux,TotalGral,NetoTotal:Extended;
begin
  if FormTicketVta<>Nil Then
    begin
      TotalGral  := CDSVentaCabTOTAL.AsFloat - CDSVentaCabPERCEPCION_IB_IMPORTE.AsFloat;
      NetoTotal  := CDSVentaCabNETOGRAV2.AsFloat + CDSVentaCabNETOEXEN2.AsFloat;

      if NetoTotal>0 Then
        Var_TasaIVA:= RoundTo(((TotalGral/NetoTotal)-1) * 100,-2)
      else
        Var_TasaIva:=0;

      if Var_TasaIva>21 then Var_TasaIva:=21;

      Var_TasaIVA:= RoundTo(Var_TasaIVA,-1);

      Aux:= Sender.AsFloat;
      if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N') Then
        Aux:= Aux * (1+Var_TasaIva * 0.01);

      aux:=RoundTo(Aux,-4);
      aux:=RoundTo(Aux,-3);
      aux:=RoundTo(Aux,-2);

      Text:= FormatFloat(',0.00',Aux);
    end;
end;

procedure TDatosVentasTicket.CDSVentaCabDSTOIMPORTESetText(Sender: TField;
  const Text: string);
var Aux1,Aux2,Importe:Extended;
begin
  Sender.AsString:=Text;
  Aux1:=(CDSVentaCabNETOGRAV1.AsFloat+CDSVentaCabNETOEXEN1.AsFloat);
  Aux2:=(CDSVentaCabNETOGRAV1.AsFloat+CDSVentaCabNETOEXEN1.AsFloat)-CDSVentaCabDSTOIMPORTE.AsFloat;
  Importe:=((Aux1-Aux2)/Aux1)*100;
  if (CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N') Then
    Importe:= RoundTo((Importe/(1+(Var_TasaIva * 0.01))),-2);

  CDSVentaCabDSTOSetText(CDSVentaCabDSTO,FloatToStr(Importe));

end;

procedure TDatosVentasTicket.CDSVentaCabDSTOSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:= FormatFloat(MascaraCabecera,StrToFloat(Text));
  if (Sender.AsFloat > DMMain_FD.TopeDsctoGral) then
    Sender.AsFloat:=DMMain_FD.TopeDsctoGral;
  if Sender.AsFloat<0 Then Sender.AsString:='0.00';
  SumarDetalle;
  CalcularTotales;
end;

procedure TDatosVentasTicket.CDSVentaDetAfterScroll(DataSet: TDataSet);
begin
//  inherited;
  FormTicketVta.sbEstado.SimpleText:='';
//  FormTicketVta.spProduccion.Enabled:=  CDSVentaDetDE_PRODUCCION.Value='S';
//  if (FormTicketVta.DBGrillaDetalle.SelectedIndex=3) and
//    (CDSVentaDetDE_PRODUCCION.Value='S') then
//  FormTicketVta.EditarProduccion.Execute;

end;

procedure TDatosVentasTicket.CDSVentaDetBeforeInsert(DataSet: TDataSet);
begin
//  inherited;
  IF ( CDSVentaDet.RecordCount >= Renglones) THEN
    BEGIN
      CDSVentaDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;
end;

procedure TDatosVentasTicket.CDSVentaDetBeforePost(DataSet: TDataSet);
BEGIN
  IF CDSVentaDet.State IN [dsInsert, dsEdit] THEN
    begin
      CDSVentaDetNroCpbte.Value      := CDSVentaCabLetraFac.Value + CDSVentaCabSucFac.Value + CDSVentaCabNumeroFac.Value;
      CDSVentaDetFechaVta.AsDateTime := CDSVentaCabFechaVta.AsDateTime;
    end;
  IF ((CDSVentaDetCodigoArticulo.AsString = '') OR (CDSVentaDet.RecordCount-1 > Renglones)) AND
    (CDSVentaDet.State IN [dsInsert, dsEdit])
    THEN
    BEGIN
      CDSVentaDet.Cancel;
      showMessage('no se puede ingreasr mas renglones');
      SysUtils.Abort;
    END;
// Controlo el Marge de ganancia...

  if (CDSVentaDetMargen.AsFloat<MargenUtilidad) and  (CDSVentaCabTIPOCPBTE.AsString='TK') then
      begin
        //ShowMessage('El precio de Venta esta por debajo de la renta Minima');
        if DMMain_FD.VenderDebajoMinimo=False then
          begin
            ShowMessage('No está Autorizado a vender por debajo de la renta Minima...');
            CDSVentaDet.Cancel;
            SysUtils.Abort;
          end;
      end;
  if (CDSVentaDetTOTAL.AsFloat<=0) and (CDSVentaCabTIPOCPBTE.AsString='TK') then
      begin
        if DMMain_FD.ControlaLineaCero then
          begin
            if MessageDlg('Renglon con importe 0(cero), lo acepta??..',mtConfirmation,mbYesNo,0) = mrNo Then
              begin
                CDSVentaDet.Cancel;
                SysUtils.Abort;
              end
            else
              begin
                if (DMMain_FD.AutorizadoLineaConCero=False) then
                  begin
                    ShowMessage('No esta Autorizado para cargar lineas con valor cero...');
                    CDSVentaDet.Cancel;
                    SysUtils.Abort;
                  end;
              end;
          end;
      end;
  //***********************************************************************
  // Nueva Asignacion de Valores Old
  //***********************************************************************
  if CDSVentaDetUNI_C_REC.AsString='N' then
    begin
      CDSVentaDetUNITARIO_TOTAL_OLD.Value:=CDSVentaDetUNITARIO_TOTAL.Value;
      CDSVentaDetUNITARIO_IVA_OLD.Value  :=CDSVentaDetIVA_UNITARIO.Value;
    end;
  //***********************************************************************
  //***********************************************************************
end;



procedure TDatosVentasTicket.CDSVentaDetAfterPost(DataSet: TDataSet);
var aux:Extended;
Mensaje,Modo:String;
begin
  if CDSVentaCab.State=dsInsert then Modo:='Ingreso de Comprobante'
  else
  if CDSVentaCab.State=dsEdit then Modo:='Modificacion de Comprobante';

  if CDSVentaDetCODIGOARTICULO.NewValue<>CDSVentaDetCODIGOARTICULO.OldValue then
    begin
      Mensaje:='Modificacion de Articulo del Codigo:'+CDSVentaDetCODIGOARTICULO.NewValue+' por '+
                CDSVentaDetCODIGOARTICULO.OldValue+
               'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
               ' En modo:'+Modo;
      DMMain_FD.LogFileFD(1,2,Mensaje,'TKCVTA');
      AgregrarNovedadDetalle(DataSet,'M');
    end
  else
    if CDSVentaDetDETALLE.NewValue<>CDSVentaDetDETALLE.OldValue then
      begin
        Mensaje:='Modificacion Detalle Articulo :'+CDSVentaDetDETALLE.NewValue+' por '+
                  CDSVentaDetDETALLE.OldValue+
                 'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
                 'Em modo:'+Modo;
        DMMain_FD.LogFileFD(1,2,Mensaje,'TKCVTA');
        AgregrarNovedadDetalle(DataSet,'M');
      end
    else
      if (CompareValue(CDSVentaDetUNITARIO_TOTAL.Value,CDSVentaDetUNITARIO_TOTAL_OLD.Value,0.1)<>EqualsValue) then
        begin
          Mensaje:='Modificacion Precio Detalle Articulo :'+FloatToStr(CDSVentaDetUNITARIO_TOTAL.Value)+' por '+
                    FloatToStr(CDSVentaDetUNITARIO_TOTAL_OLD.Value)+
                   'Fatura Nro Provisiorio '+CDSVentaCabNROCPBTE.AsString +'('+CDSVentaCabID_FC.AsString+')'+
                   ' En modo:'+Modo;
          DMMain_FD.LogFileFD(1,2,Mensaje,'TKCVTA');
          AgregrarNovedadDetalle(DataSet,'M');
        end;

  VerificaPromos;
  SumarDetalle;
  CalcularTotales;
  // Borrar Los renglones con valor 0 (cero)....
  aux:=0;
  CDSImpuestos.EnableControls;
  CDSImpuestos.First;
  WHILE NOT (CDSimpuestos.Eof) DO
    BEGIN
      IF (CDSImpuestosImporte.AsFloat <= 0) OR
         (CDSImpuestosTasa.AsFloat <= 0) THEN
        begin
          CDSImpuestos.Delete;
          CDSImpuestos.First;
        end
      else
        begin
          aux:=aux+CDSImpuestosImporte.AsFloat;
          CDSImpuestos.Next;
        end;
    END;

  CDSPercepcionIVA.EnableControls;
  CDSPercepcionIVA.First;
  WHILE NOT (CDSPercepcionIVA.Eof) DO
    BEGIN
      IF (CDSPercepcionIVAIMPORTE.AsFloat <= 0) OR
         (CDSPercepcionIVATASA.AsFloat <= 0) THEN
        begin
          CDSPercepcionIVA.Delete;
          CDSPercepcionIVA.First;
        end
      else
        CDSPercepcionIVA.Next;
    END;

  FormTicketVta.lbIva.Caption:=FormatFloat(',0.00',Aux);

  if (FormTicketVta.IngresoAutomatico='S') and  (FormTicketVta.DBGrillaDetalle.DataSource.DataSet.Eof) Then
    FormTicketVta.DBGrillaDetalle.SelectedIndex:=0;
  //***************************************************************
  // Si no puede modificar precio el usuario pongo la
  // columna en la grilla como solo lectura
     FormTicketVta.DBGrillaDetalle.Columns[4].ReadOnly:=NOt(DMMain_FD.ModificaPrecioVta);
  //***************************************************************
  // ****** sincronizo los datos con las consignaciones **********
   if (CDSVentaCabPOR_CTA_Y_ORDEN.Value='S') and (CDSVentaCabTIPOCPBTE.Value='TK') then
     if (CDSVentaCab.State in [dsInsert]) then
       SincronizarConsignaciones;
  DMMain_FD.TopeDsctoLinea          := DMMain_FD.DsctoLineaTemp;
  // Rastaura estado del Ingreso Automatico

end;

procedure TDatosVentasTicket.CDSVentaDetCodigoArticuloSetText(
  Sender: TField; const Text: String);
VAR S,CodTxt: STRING;
Enter:Char;
BEGIN
  Enter:=#13;
  CantidadItem:=0;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      // Quitar enter de la cadena....
      CodTxt:=Trim(AnsiReplaceStr(Text, #13, ''));
      CodTxt:=Trim(AnsiReplaceStr(CodTxt, #10, ''));

      if (AnsiPos('+',CodTxt)>0) then
        begin
          if Trim(Copy(CodTxt,1, AnsiPos('+',CodTxt)-1))<>'' then
            CantidadItem := StrToFLoat(Copy(CodTxt,1, AnsiPos('+',CodTxt)-1))
          else
            CantidadItem:=1;
          CodTxt       := AnsiMidStr(CodTxt,AnsiPos('+',CodTxt)+1,20);
        end;


      Sender.AsString := DMMain_FD.SearchCodigo(CodTxt,DSVentaDet,FormTicketVta.VerCodigoALternativo1.Checked);

      IF AsignarArticulo(Sender.AsString) = False THEN
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
          FormBuscadorArticulos.ListaPrecio:= DatosVentasTicket.CDSVentaCabLISTAPRECIO.Value;
          FormBuscadorArticulos.Dato       := Text;
          FormBuscadorArticulos.Esquema    := DMMain_FD.GetEsquemaLista(DatosVentasTicket.CDSVentaCabCODIGO.AsString);

          if FormBuscadorArticulos.Visible=False Then
            FormBuscadorArticulos.ShowModal;
          if FormBuscadorArticulos.Codigo<>'' Then
            begin
              IF CDSVentaDet.State = dsBrowse THEN
                CDSVentaDet.Edit;
              CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,FormBuscadorArticulos.Codigo);
            end
          else
            Sender.AsString:='';
        end;
      if (DMMain_FD.EncontroCodigoBarra) Then
        begin
         // esto no se que es no lo borro.... 14/09/2021
         // CDSVentaDetCANTIDAD.Text  := FloatToStr(BuscaCantXCodigoBarras(CodTxt));
          if (FormTicketVta.IngresoAutomatico='N') then
            FormTicketVta.DBGrillaDetalle.OnKeyPress(FormTicketVta.DBGrillaDetalle,Enter);
        end;
    END;
END;


procedure TDatosVentasTicket.CDSVentaDetDESCUENTOSetText(Sender: TField;
  const Text: string);
VAR PrecioUnitario: Extended;
BEGIN
  if Text<>'' Then
    begin
      DMBuscadores.QDesctoArticulo.Close;
      DMBuscadores.QDesctoArticulo.ParamByName('Codigo').AsString:=CDSVentaDetCODIGOARTICULO.AsString;
      DMBuscadores.QDesctoArticulo.ParamByName('Fecha').AsDate   :=CDSVentaCabFECHAVTA.AsDateTime;
      DMBuscadores.QDesctoArticulo.Open;
      if DMBuscadores.QDesctoArticuloDESCUENTO.AsString<>'' then
         begin
           DMMain_FD.DsctoLineaTemp:=DMMain_FD.TopeDsctoLinea;
           DMMain_FD.TopeDsctoLinea:=DMBuscadores.QDesctoArticuloDESCUENTO.AsFloat;
         end;
      DMBuscadores.QDesctoArticulo.Close;

      Sender.AsString := Text;
      if (Sender.AsFloat > DMMain_FD.TopeDsctoLinea) then
        Sender.AsFloat:=DMMain_FD.TopeDsctoLinea;
      Sender.AsFloat  := RoundTo(Sender.AsFloat,-2);
      PrecioUnitario  := CDSVentaDetUNITARIO_TOTAL.AsFloat;
      if (CDSVentaDetModo_Gravamen.Value<>'') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M']) then
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormTicketVta.DiscriminaIva='N')) Then
          PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.ASFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N')  Then
            PrecioUnitario := CDSVentaDetUNITARIO_GRAVADO.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUNITARIO_EXENTO.ASFloat;

      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(PrecioUnitario));
    end;
end;

procedure TDatosVentasTicket.CDSVentaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  if FormTicketVta.DBGrillaDetalle.DataSource.DataSet.RecordCount>0 then
    FormTicketVta.DBGrillaDetalle.SelectedIndex:=0;
end;

procedure TDatosVentasTicket.CDSVentaDetAfterEdit(DataSet: TDataSet);
begin
 // inherited;
  CDSVentaDetUNITARIO_TOTAL_OLD.AsFloat   := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVentaDetUNITARIO_TOTAL_OLD_2.AsFloat := CDSVentaDetUNITARIO_TOTAL.AsFloat;

end;

procedure TDatosVentasTicket.CDSVentaDetAfterInsert(DataSet: TDataSet);
begin
//  inherited;
 IF (CDSVentaDet.RecordCount > Renglones) THEN
    BEGIN
      ShowMessage('No se pueden Ingresar más Items' + #13 +
        'Evento - (AfterInsert)');
      SysUtils.Abort;
      CDSVentaDet.Cancel;
    END
  ELSE IF (CDSVentaCabCodigo.AsString = '') OR (CDSVentaCabNumeroFac.AsString = '') THEN
    BEGIN
      SysUtils.Abort;
      CDSVentaDet.Cancel;
    END
  ELSE IF (CDSVentaCabImpreso.Value = 'S') or (CDSVentaCabANULADO.AsString='S') THEN
    BEGIN
      ShowMessage('No se puede modificar'#13'un comprobante ya impreso o anulado');
      SysUtils.Abort;
      IF CDSVentaDet.State IN [dsEdit, dsInsert] THEN
        CDSVentaDet.Cancel;
      IF CDSVentaCab.State IN [dsEdit, dsInsert] THEN
        CDSVentaCab.Cancel;
    END;

end;

procedure TDatosVentasTicket.CDSVentaDetUnitario_TotalGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSVentaDetUNITARIO_TOTAL.AsFloat;
  if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I']) Then
    if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormTicketVta.DiscriminaIva='N') then
      Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat
    else
      if (CDSVentaCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSVentaDetUNITARIO_TOTAL.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

  Text:= FormatFloat(MascaraDetalleUnitario,Aux1);
END;

procedure TDatosVentasTicket.CDSVentaDetUnitario_TotalSetText(Sender: TField; const Text: String);
VAR Num, P_Exento, P_Gravado,Pt_Exento,
    Pt_Gravado,Pt_Final, Descuento,Cantidad,TasaIva,Aux3,ImporteIva:  Extended;
  TextAux:String;
  Decimales:String;
  Modo:TFPURoundingMode;
BEGIN
   if ((Text<>'') and (CDSVentaDetCODIGOARTICULO.AsString<>'')) Then
    begin
      TextAux:=Text;
//      if (Sender.OldValue<>Sender.NewValue) then
//        ShowMessage('Cambio Precio: '+VarToStr(Sender.OldValue)+'  '+VarToStr(Sender.NewValue));
      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      if CDSVentaDet.State=dsBrowse Then CDSVentaDet.Edit;

      Num:=StrToFloat(TextAux);
      if Num>10000000 then Num:=0;

      IF CDSVentaDetMODO_GRAVAMEN.Value <> '' THEN
        CASE CDSVentaDetMODO_GRAVAMEN.Value[1] OF
          'E','N'    : CDSVentaDetUNITARIO_EXENTO.AsFloat := Num;
          'G'        : CDSVentaDetUNITARIO_GRAVADO.AsFloat:= Num;
          'M','I','Y': CDSVentaDetUNITARIO_GRAVADO.AsFloat:= Num-CDSVentaDetUNITARIO_EXENTO.AsFloat
        END;
      Cantidad  := CDSVentaDetCANTIDAD.AsFloat;
      Descuento := 1 - CDSVentaDetDESCUENTO.AsFloat * 0.01;
      TasaIva   := 1 + CDSVentaDetIVA_TASA.AsFloat * 0.01;

      P_Exento  := CDSVentaDetUNITARIO_EXENTO.AsFloat ;
      P_Gravado := CDSVentaDetUNITARIO_GRAVADO.AsFloat;

      // calculo el total de la linea
      Pt_Gravado :=  P_Gravado * Cantidad * Descuento;
      Pt_Exento  :=  P_Exento * Cantidad * Descuento;
      // calculo de IVA
      ImporteIva :=  (Pt_gravado * TasaIva)- Pt_Gravado;

      CDSVentaDetIVA_UNITARIO.AsFloat := (P_Gravado * TasaIva) - P_Gravado;

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','I','Y']) Then
        begin
          P_Gravado                       := CDSVentaDetUNITARIO_GRAVADO.AsFloat / TasaIva;
          CDSVentaDetIVA_UNITARIO.AsFloat := CDSVentaDetUNITARIO_GRAVADO.AsFloat - P_Gravado;
          // *** Calculo el total de la linea
          Pt_Final   :=  (P_Gravado + CDSVentaDetIVA_UNITARIO.ASFloat) * Cantidad * Descuento;

          Modo:=GetRoundMode;
          SetRoundMode(rmUp);

          Pt_Final   := SimpleRoundTo(Pt_Final,-3);
          Pt_Final   := SimpleRoundTo(Pt_Final,-2);

          Pt_Gravado :=  Pt_Final  / TasaIva;

          Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-3);
          Pt_Gravado :=  SimpleRoundTo(Pt_Gravado,-2);


          Pt_Exento  :=  P_Exento * Cantidad * Descuento;
          // Calculo de IVA
          ImporteIva :=  Pt_Final - Pt_gravado;
        end;

      CDSVentaDetUNITARIO_GRAVADO.AsFloat := P_Gravado;

      CDSVentaDetTOTAL_GRAVADO.AsFloat    := SimpleRoundTo(Pt_Gravado,-3);
      CDSVentaDetTOTAL_GRAVADO.AsFloat    := SimpleRoundTo(CDSVentaDetTOTAL_GRAVADO.AsFloat,-2);

      CDSVentaDetTOTAL_EXENTO.AsFloat     := SimpleRoundTo(Pt_Exento,-3);
      CDSVentaDetTOTAL_EXENTO.AsFloat     := SimpleRoundTo(CDSVentaDetTOTAL_EXENTO.AsFloat,-2);

      ImporteIva                          := SimpleRoundTo(ImporteIva,-3);
      CDSVentaDetIVA_TOTAL.AsFloat        := SimpleRoundTo(ImporteIva,-3);

      // esto pisa las 2 lineas anteriores no las borro para probar

      if ((CDSVentaCabDESGLOZAIVA.Value='N') or (FormTicketVta.DiscriminaIva='N')) and (CDSVentaDetMODO_GRAVAMEN.AsString[1] in ['G','M','Y','I']) Then
        CDSVentaDetIVA_TOTAL.AsFloat     := (Pt_Final)-Pt_Gravado;

      CDSVentaDetTOTAL.AsFloat         := RoundTo((Pt_Gravado+Pt_Exento),-2);

      SetRoundMode(Modo);

      // **************** Calculo el Margen ******************
      if (CDSVentaDetCOSTO_TOTAL.AsFloat>0) and (CDSVentaDetUNITARIO_TOTAL.AsFloat>0) then
          CDSVentaDetMARGEN.AsFloat := RoundTo(((CDSVentaDetUNITARIO_TOTAL.AsFloat - CDSVentaDetCosto_Total.AsFloat)/
                                                 CDSVentaDetUNITARIO_TOTAL.AsFloat)*100,-2)
      else
        CDSVentaDetMARGEN.AsFloat:= 100;
      // *****************************************************

      Aux3            := P_Gravado + P_Exento;
      Sender.AsString := FloatToStr(Aux3);

      if (CDSVentaDetMODO_GRAVAMEN.Value[1] in['E','N']) and (CDSVentaDetUNITARIO_GRAVADO.AsFloat>0) Then
        begin
          Sender.AsString:='0';
          CDSVentaDetUNITARIO_GRAVADO.AsFloat:=0;
          CDSVentaDetUNITARIO_EXENTO.AsFloat :=0;
          CDSVentaDetUNITARIO_TOTAL.AsFloat  :=0;
          CDSVentaDetTOTAL.AsFloat           :=0;
          raise Exception.Create('El artículo Figura Como Exento y tiene Costo Gravado...');
        end
      else
        if (CDSVentaDetMODO_GRAVAMEN.Value[1]='G') and (CDSVentaDetUNITARIO_EXENTO.AsFloat>0) Then
          begin
            Sender.AsString:='0';
            CDSVentaDetUNITARIO_GRAVADO.AsFloat:=0;
            CDSVentaDetUNITARIO_EXENTO.AsFloat :=0;
            CDSVentaDetUNITARIO_TOTAL.AsFloat  :=0;
            CDSVentaDetTOTAL.AsFloat           :=0;
            raise Exception.Create('El artículo Figura Como Gravado y tiene Costo exento...');
          end;
   end;

  Decimales:=(Copy(MascaraDetalleUnitario,pos('.',MascaraDetalleUnitario)+1,length(MascaraDetalleUnitario)));
  if Length(Decimales)=2 then
    begin
      //Primero con 3 decimales y despues 2
      CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
      CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
      CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-3);
      Modo:=GetRoundMode;
      SetRoundMode(rmUp);
      CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-3);
      SetRoundMode(Modo);

      CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-2);
      CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-2);
      CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-2);
      CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-2);
    end
  else
    if Length(Decimales)=3 then
      begin
        CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-4);
        CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-4);
        CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-4);
        Modo:=GetRoundMode;
        SetRoundMode(rmUp);
        CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-4);
        SetRoundMode(Modo);

        CDSVentaDetUNITARIO_GRAVADO.AsFloat:=RoundTo(CDSVentaDetUNITARIO_GRAVADO.AsFloat,-3);
        CDSVentaDetUNITARIO_EXENTO.AsFloat :=RoundTo(CDSVentaDetUNITARIO_EXENTO.AsFloat,-3);
        CDSVentaDetUNITARIO_TOTAL.AsFloat  :=RoundTo(CDSVentaDetUNITARIO_TOTAL.AsFloat,-3);
        CDSVentaDetIVA_UNITARIO.AsFloat    :=RoundTo(CDSVentaDetIVA_UNITARIO.AsFloat,-3);
      end;

END;


procedure TDatosVentasTicket.CDSVentaLoteID_LOTESetText(Sender: TField;
  const Text: string);

 // inherited;
 var Estado: TValueRelationship;
begin
  if (Text<>'') and (Text<>#13) then
    BEGIN
      if CDSVentaLote.State=dsBrowse then
        CDSVentaLote.Edit;
      Sender.AsString:=Text;
      DMMain_FD.QStockLote.Close;
      DMMain_FD.QStockLote.ParamByName('idlote').Value:=Sender.AsInteger;
      DMMain_FD.QStockLote.Open;
      CDSVentaLoteID_LOTE.Value  := Sender.AsInteger;
      CDSVentaLoteDEPOSITO.Value := CDSVentaCabDEPOSITO.Value;
      CDSVentaLoteLOTE.Value     := DMMain_FD.QStockLoteLote.Value;
      CDSVentaLoteDESPACHO.Value := DMMain_FD.QStockLoteDESPACHO.Value;
      CDSVentaLoteFECHA.Value    := DMMain_FD.QStockLoteFECHA_ENTRADA.Value;
      CDSVentaLoteFECHAVTO.Value := DMMain_FD.QStockLoteFECHA_VTO.Value;

      if CDSVentaCabTIPOCPBTE.Value='TK' then
        begin
          Estado:= Math.CompareValue(CDSVentaDetCANTIDAD.AsFloat,DMMain_FD.QStockLoteSALDO.AsFloat,0.02);
          if (Estado=EqualsValue) then
            CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat
          else
            if (estado=GreaterThanValue) then
              begin
                CDSVentaLoteCANTIDAD.AsFloat:=DMMain_FD.QStockLoteSALDO.AsFloat;
                if CDSVentaDet.State=dsBrowse Then CDSVentaDet.Edit;
                CDSVentaDetCantidadSetText(CDSVentaDetCantidad,FloatToStr(DMMain_FD.QStockLoteSALDO.AsFloat));
              end
            else
              if (estado=LessThanValue) then
                CDSVentaLoteCANTIDAD.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
        end
      ELSE
        if CDSVentaCabTIPOCPBTE.Value='NC' then
          begin
            CDSVentaLoteCANTIDAD.AsFloat:=CDSVentaDetCANTIDAD.AsFloat;
          end


    END;

end;

procedure TDatosVentasTicket.CDSVtaDetConsigID_MOV_RECEPCION_DETSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  IF (Text<>'') and (Text[1]<>#13) THEN
    BEGIN
      if CDSVtaDetConsig.State=dsBrowse then
        CDSVtaDetConsig.Edit;
      Sender.AsString:=Text;
      IF NOT (AsignarRecepcion(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString:= '';
          ShowMessage('Codigo No Valido');
        END;
    END;
end;

procedure TDatosVentasTicket.CDSVtaDetConsigNewRecord(DataSet: TDataSet);
begin
  // inherited;
  CDSVtaDetConsigID.Value               := ibgFcVtaConsig.IncrementFD(1);
  CDSVtaDetConsigID_CABFAC.Value        := CDSVentaDetID_CABFAC.Value;
  CDSVtaDetConsigID_DETFAC.Value        := CDSVentaDetID.Value;
  CDSVtaDetConsigCODIGO.Value           := CDSVentaDetCODIGOARTICULO.Value;
  CDSVtaDetConsigDETALLE.Value          := CDSVentaDetDETALLE.Value;
  CDSVtaDetConsigCANTIDAD.AsFloat       := CDSVentaDetCantidad.AsFloat;
  CDSVtaDetConsigCODIGO_PROVEEDOR.Value := CDSVentaCabPROVEEDOR.Value;
  CDSVtaDetConsigLIQUIDADA.Value        := 'N';
  CDSVtaDetConsigPRECIO_VTA.AsFloat     := CDSVentaDetUNITARIO_TOTAL.AsFloat;
  CDSVtaDetConsigPRECIO_COMPRA.AsFloat  := 0;
end;

procedure TDatosVentasTicket.CDSVentaDetTotalGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
VAR
  Aux1: Extended;
BEGIN
  Aux1:=CDSVentaDetTOTAL.AsFloat;
  if (CDSVentaDetMODO_GRAVAMEN.Value<>'') and (CDSVentaDetMODO_GRAVAMEN.Value[1] in ['G','M','I','Y']) Then
    if (CDSVentaCabDESGLOZAIVA.Value='S') and (FormTicketVta.DiscriminaIva='N') then
      Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat
    else
      if (CDSVentaCabDESGLOZAIVA.Value='N')then
        Aux1:= CDSVentaDetTOTAL.AsFloat + CDSVentaDetIVA_TOTAL.AsFloat;
  Text := FormatFloat(',0.00', Aux1);
END;

procedure TDatosVentasTicket.CDSVentaDetTOTALSetText(Sender: TField;
  const Text: string);
Var Desc: Extended;
begin
//  inherited;
  Sender.AsString:=Text;
  if CDSVentaDetDESGLOZAIVA.Value='N' then
    Sender.AsFloat:=Sender.AsFloat/(1+CDSVentaDetIVA_TASA.AsFloat*0.01);
  Desc:=((CDSVentaDetUNITARIO_TOTAL.AsFloat * CDSVentaDetCANTIDAD.AsFloat) - Sender.AsFloat);
  Desc:=Desc/(CDSVentaDetUNITARIO_TOTAL.AsFloat * CDSVentaDetCANTIDAD.AsFloat);
  Desc:=Desc * 100;
  CDSVentaDetDescuentoSetText(CDSVentaDetDescuento,FloatToStr(desc));

end;

procedure TDatosVentasTicket.DataModuleDestroy(Sender: TObject);
begin
  //herited;
  DatosVentasTicket:=nil;
end;

procedure TDatosVentasTicket.CDSVentaDetCantidadSetText(Sender: TField;
  const Text: String);
VAR
  Aux1, Aux2, Aux3: Extended;
  TextAux:String;
BEGIN
  if (Text<>'') and (CDSVentaDetCODIGOARTICULO.AsString<>'') Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;

      // Verific tambien si no viene de un rto....
     if NOt(DMMain_FD.GetClienteConPrecio(CDSVentaCabCODIGO.AsString, CDSVentaDetCODIGOARTICULO.AsString)) then
        begin
          DMStoreProcedure.QPrecioPorCantidad.Close;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('codigo').Value:=CDSVentaDetCODIGOARTICULO.Value;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('cant').Value  :=Sender.AsFloat;
          DMStoreProcedure.QPrecioPorCantidad.ParamByName('Lista').Value :=CDSVentaCabLISTAPRECIO.Value;
          DMStoreProcedure.QPrecioPorCantidad.Open;

          if (DMStoreProcedure.QPrecioPorCantidadCANTIDAD.AsFloat<>0) then
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat;
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := DMStoreProcedure.QPrecioPorCantidadPRECIO_GRAVADO.AsFloat+
                                                     DMStoreProcedure.QPrecioPorCantidadPRECIO_EXENTO.AsFloat;
              CDSVentaDetIVA_UNITARIO.AsFloat     := DMStoreProcedure.QPrecioPorCantidadIVA_IMPORTE.AsFloat;
            end;
        end;

      if (DMMain_FD.VenderSinStock=False) and  (DatosVentasTicket.CDSVentaDetAfecta_Stock.Value='S') and
         (DatosVentasTicket.CDSVentaCabIDREMITO.AsString='') Then
         begin
           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSVentaDetCodigoArticulo.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSVentaCabDeposito.Value;
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

      Aux1:= CDSVentaDetUNITARIO_EXENTO.AsFloat;
      Aux2:= CDSVentaDetUNITARIO_GRAVADO.AsFloat;// + CDSVentaDetIVA_UNITARIO.AsFloat;;

      if (CDSVentaDetModo_Gravamen.Value<>'') then
        if ((CDSVentaCabDesglozaIva.Value = 'S') and (FormTicketVta.DiscriminaIva='N')) and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
          Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat
        else
          if (CDSVentaCabDesglozaIva.Value = 'N') and (CDSVentaDetModo_Gravamen.Value[1] in ['G','M','I','Y']) THEN
            Aux2:= Aux2 + CDSVentaDetIVA_UNITARIO.AsFloat;

    
       TextAux:='0.0000';//MascaraDetalleUnitario;

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);

      Aux3:= StrToFloat(FormatFloat(TextAux, (Aux1 + Aux2)));
    //  Aux3:= Aux1 + Aux2;

      CDSVentaDetUNITARIO_TOTALSetText(CDSVentaDetUNITARIO_TOTAL,FloatToStr(Aux3));

      if CDSVentaDetPRESENTACION_CANT.AsFloat>0 then
        begin
          if CDSVentaDetPRESENTACION_UNIDAD.Value=CDSVentaDetUNIDAD.Value Then
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat/CDSVentaDetPRESENTACION_CANT.AsFloat
          else
            if CDSVentaDetPRESENTACION_UNIDAD.Value<>CDSVentaDetUNIDAD.Value Then
              CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat*CDSVentaDetPRESENTACION_CANT.AsFloat

        end
      else
        CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=Sender.AsFloat;
     end;
end;

procedure TDatosVentasTicket.CDSVentaDetCODIGOARTICULOGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
 // inherited;
  Text:=Trim(CDSVentaDetCODIGOARTICULO.Value);

 if FormTicketVta<>nil then
    begin
      if FormTicketVta.VerCodigoAlternativo1.Checked=True then
        Text:=Trim(CDSVentaDetMUESTRACODALTERNATIVO.Value)
      else
        Text:=Trim(CDSVentaDetCODIGOARTICULO.Value);
    end;

end;

end.