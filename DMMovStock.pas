UNIT DMMovStock;

INTERFACE

USES
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Wwdatsrc, DBTables, Wwtable;

TYPE
  TDatosMovStock = CLASS(TDataModule)
    wwTTransferenciaCab: TwwTable;
    wwDSTransferenciaCab: TwwDataSource;
    wwDSTransferenciaDet: TwwDataSource;
    wwTTransferenciaDet: TwwTable;
    wwDSDeposito: TwwDataSource;
    wwTDeposito: TwwTable;
    wwDSSucursal: TwwDataSource;
    wwTSucursal: TwwTable;
    wwTTransferenciaCabNroCpbte: TStringField;
    wwTTransferenciaCabCodigo: TStringField;
    wwTTransferenciaCabLetraFac: TStringField;
    wwTTransferenciaCabSucFac: TStringField;
    wwTTransferenciaCabNumeroFac: TStringField;
    wwTTransferenciaCabFechaVta: TDateField;
    wwTTransferenciaCabFechaVto: TDateField;
    wwTTransferenciaCabCondicionVta: TStringField;
    wwTTransferenciaCabAnulado: TBooleanField;
    wwTTransferenciaCabTipoCpbte: TStringField;
    wwTTransferenciaCabN_Operacion2: TFloatField;
    wwTTransferenciaCabVendedor: TStringField;
    wwTTransferenciaCabDebe: TFloatField;
    wwTTransferenciaCabAplica: TStringField;
    wwTTransferenciaCabImpreso: TBooleanField;
    wwTTransferenciaCabObservacion1: TStringField;
    wwTTransferenciaCabObservacion2: TStringField;
    wwTTransferenciaCabManual: TBooleanField;
    wwTTransferenciaDetTipoCpbte: TStringField;
    wwTTransferenciaDetNroCpbte: TStringField;
    wwTTransferenciaDetRenglon: TFloatField;
    wwTTransferenciaDetFechaVta: TDateField;
    wwTTransferenciaDetDetalle: TStringField;
    wwTTransferenciaDetUnidad: TStringField;
    wwTTransferenciaDetCantidad: TFloatField;
    wwTTransferenciaDetUnitario: TFloatField;
    wwTTransferenciaDetIncluyeIVA: TStringField;
    wwTTransferenciaDetIVA: TFloatField;
    wwTTransferenciaDetTipoIva: TStringField;
    wwTTransferenciaDetCosto: TFloatField;
    wwTTransferenciaDetDescuento: TFloatField;
    wwTTransferenciaDetTotal: TFloatField;
    wwTTransferenciaDetSucursal: TStringField;
    wwTSucursalCodigo: TStringField;
    wwTSucursalDetalle: TStringField;
    wwTSucursalRecargo: TFloatField;
    wwTSucursalFacturaA: TStringField;
    wwTSucursalFacturaB: TStringField;
    wwTSucursalRecibo: TStringField;
    wwTSucursalRemito: TStringField;
    wwTSucursalPresupuesto: TStringField;
    wwTSucursalNotaDebitoA: TStringField;
    wwTSucursalNotaDebitoB: TStringField;
    wwTSucursalNotaCreditoA: TStringField;
    wwTSucursalNotaCreditoB: TStringField;
    wwTSucursalTransferencias: TStringField;
    wwTStock: TwwTable;
    wwDSStock: TwwDataSource;
    wwDSIva: TwwDataSource;
    wwTIva: TwwTable;
    wwTStockCodigo_Stk: TStringField;
    wwTStockDetalle_Stk: TStringField;
    wwTStockCodigo_Barras: TStringField;
    wwTStockRubro_Stk: TStringField;
    wwTStockSubRubro_Stk: TStringField;
    wwTStockMarca_Stk: TStringField;
    wwTStockIva_Articulo: TStringField;
    wwTStockImpuesto_Interno: TStringField;
    wwTStockCosto_Bruto_Stk: TFloatField;
    wwTStockCosto_Neto_Stk: TFloatField;
    wwTStockReemplazo_Stk: TStringField;
    wwTStockFijacion_Precios: TFloatField;
    wwTStockFUAP: TDateField;
    wwTStockUnidad: TStringField;
    wwTInscripcion: TwwTable;
    wwDSInscripcion: TwwDataSource;
    wwTDepositoCodigo_Stk: TStringField;
    wwTDepositoCodigo_Sucursal: TStringField;
    wwTDepositoInicial: TFloatField;
    wwTDepositoMinimo: TFloatField;
    wwTDepositoMedio: TFloatField;
    wwTDepositoFisico: TFloatField;
    wwTDepositoRecargo: TFloatField;
    wwTDepositoFUAPrecios: TDateField;
    wwTTransferenciaCabASucursal: TStringField;
    wwTTransferenciaCabTipoIVA: TStringField;
    wwTTransferenciaCabDetalleDesde: TStringField;
    wwTTransferenciaCabDetalleHasta: TStringField;
    wwTTransferenciaDetCodigoArticulo: TStringField;
    PROCEDURE wwTTransferenciaDetNewRecord(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaCabNewRecord(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaDetBeforePost(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaCabBeforePost(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaCabBeforeDelete(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaDetBeforeDelete(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaCabAfterScroll(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaDetBeforeEdit(DataSet: TDataSet);
    PROCEDURE wwDSTransferenciaCabStateChange(Sender: TObject);
    PROCEDURE wwTTransferenciaDetAfterInsert(DataSet: TDataSet);
    PROCEDURE wwTTransferenciaDetCodigoArticuloChange(Sender: TField);
    PROCEDURE wwTTransferenciaDetCodigoArticuloSetText(Sender: TField;
      CONST Text: STRING);

  private
    { Private declarations }
  public
    { Public declarations }
  END;

VAR
  DatosMovStock: TDatosMovStock;

IMPLEMENTATION

USES UMovStock;

{$R *.DFM}

PROCEDURE TDatosMovStock.wwTTransferenciaDetNewRecord(DataSet: TDataSet);
BEGIN
  wwTTransferenciaDetTipoCpbte.Value := wwTTransferenciaDetTipoCpbte.Value;
  wwTTransferenciaDetNroCpbte.Value := wwTTransferenciaCabNroCpbte.Value;
  wwTTransferenciaDetRenglon.Value := wwTTransferenciaDet.RecordCount + 1;
  wwTtransferenciaDetFechaVta.Value := wwTTransferenciaCabFechaVta.Value;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaCabNewRecord(DataSet: TDataSet);
BEGIN
  wwTtransferenciaCabfechaVta.Value := Date;
  wwTTransferenciaCabLetraFac.AsString := 'X';
  wwTTransferenciaCabCodigo.Value := '000000';
  wwTTransferenciaCabManual.Value := False;
  wwTTransferenciaCabImpreso.Value := True;
  wwTTransferenciaCabAplica.Value := '';
  wwTTransferenciaCabFechaVto.Value := Date;
  wwTTransferenciaCabCondicionVta.value := '01';
  wwTTransferenciaCabAnulado.Value := False;
  wwTTransferenciaCabTipoCpbte.Value := 'TX';
  wwTTransferenciaCabSucFac.Value := '';
  wwTTransferenciaCabASucursal.Value := '';
  //FormMovStock.wwDBLookupCombo2.Enabled:=True;
  FormMovStock.wwDBDateTimePicker1.SetFocus;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetBeforePost(DataSet: TDataSet);
BEGIN
  //  IF wwTTransferenciaCabSucFac.AsString<>wwTTransferenciaCabASucursal.AsString THEN
  //  BEGIN
  IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
    VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
      wwTTransferenciaCabSucFac.AsString]), []) THEN
    BEGIN
      wwTDeposito.Edit;
      IF wwTTransferenciaCabTipoCpbte.Value = 'AJ' THEN
        wwTDepositoFisico.Value := wwTDepositoFisico.Value +
          wwTTransferenciaDetCantidad.Value
      ELSE
        wwTDepositoFisico.Value := wwTDepositoFisico.Value -
          wwTTransferenciaDetCantidad.Value;
      IF (wwTDepositoInicial.Value = 0) AND (wwTTransferenciaCabTipoCpbte.Value =
        'AJ')
        THEN
        wwTDepositoInicial.AsFloat := wwTDepositoFisico.Value;
      wwTDeposito.Post;
    END
  ELSE
    BEGIN
      wwTDeposito.Insert;
      wwTDepositoCodigo_Stk.Value := wwtTransferenciaDetCodigoArticulo.Value;
      wwTDepositoCodigo_Sucursal.Value :=
        FormMovStock.wwDBLookupCombo1.LookupValue;
      IF wwTTransferenciaCabTipoCpbte.Value = 'TX' THEN
        wwTDepositoInicial.Value := 0
      ELSE
        wwTDepositoInicial.Value := wwTTransferenciaDetCantidad.Value;
      wwTDepositoMinimo.Value := 0;
      wwTDepositoMedio.Value := 0;
      wwTDepositoFisico.Value := wwTTransferenciaDetCantidad.Value;
      IF wwTTransferenciaCabTipoCpbte.Value = 'TX' THEN
        wwTdepositoFisico.Value := (-1) * wwTTransferenciaDetCantidad.Value;
      wwTDepositoRecargo.Value := 0;
      wwTDepositoFUAPrecios.Value := wwTTransferenciaCabFechaVta.Value;
      wwTDeposito.Post;
    END;
  IF wwTTransferenciaCabTipoCpbte.Value = 'TX' THEN
    BEGIN
      IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
        VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
          wwTTransferenciaCabASucursal.AsString]), []) THEN
        BEGIN
          wwTDeposito.Edit;
          wwTDepositoFisico.Value := wwTDepositoFisico.Value +
            wwTTransferenciaDetCantidad.Value;
          wwTDeposito.Post;
        END
      ELSE
        BEGIN
          wwTDeposito.Insert;
          wwTDepositoCodigo_Stk.Value :=
            wwtTransferenciaDetCodigoArticulo.Value;
          wwTDepositoCodigo_Sucursal.Value :=
            FormMovStock.wwDBLookupCombo2.LookupValue;
          wwTDepositoInicial.Value := wwTTransferenciaDetCantidad.Value;
          wwTDepositoMinimo.Value := 0;
          wwTDepositoMedio.Value := 0;
          wwTdepositoFisico.Value := wwTTransferenciaDetCantidad.Value;
          wwTDepositoRecargo.Value := 0;
          wwTDepositoFUAPrecios.Value := wwTTransferenciaCabFechaVta.Value;
          wwTDeposito.Post;
        END;
    END;
  //  END
  //  ELSE
  //  BEGIN
  //    wwTTransferenciaDet.Cancel;
  //    wwTTransferenciaCab.Cancel;
  //    wwTDeposito.Cancel;
  //    wwtTransferenciaDet.CancelUpdates;
  //    wwtTransferenciaCab.CancelUpdates;
  //    wwTDeposito.CancelUpdates;
     // FormMovStock.wwDBGrid1.RefreshDisplay;
  //    ShowMessage('En las Transferencias entre'#13'Sucursales, Desde y Hasta'#13'DEBEN SER DISTINTAS');
  //  END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaCabBeforePost(DataSet: TDataSet);
BEGIN
  IF wwDSTransferenciaCab.State IN [dsInsert, dsEdit] THEN
    BEGIN
      wwTTransferenciaCabNroCpbte.AsString :=
        wwTTransferenciaCabLetraFac.AsString +
        wwTTransferenciaCabSucFac.AsString +
        wwTTransferenciaCabNumeroFac.AsString;
      IF wwTSucursal.Locate('Codigo', wwTTransferenciaCabSucFac.AsString, [])
        THEN
        BEGIN
          wwTSucursal.Edit;
          wwTSucursalTransferencias.AsString :=
            wwTTransferenciaCabNumeroFac.ASString;
          wwTSucursal.Post;
        END;
      IF wwTTransferenciaCabTipoCpbte.Value = 'AJ'
        THEN
        wwTTransferenciaCabASucursal.Value := wwTTransferenciaCabSucFac.Value;
    END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaCabBeforeDelete(
  DataSet: TDataSet);
BEGIN
  WITH DatosMovStock DO
    BEGIN
      wwTTransferenciaDet.First;
      WHILE NOT (wwTTransferenciaDet.Eof) DO
        BEGIN
          wwTTransferenciaDet.Delete;
          wwTTransferenciaDet.First;
        END;
    END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetBeforeDelete(
  DataSet: TDataSet);
BEGIN
  IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
    VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
      wwTTransferenciaCabSucFac.AsString]), []) THEN
    BEGIN
      wwTDeposito.Edit;
      wwTDepositoFisico.Value := wwTDepositoFisico.Value +
        wwTTransferenciaDetCantidad.Value;
      wwTDeposito.Post;
    END;
  IF wwTTransferenciaCabTipoCpbte.Value = 'TX' THEN
    BEGIN
      IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
        VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
          wwTTransferenciaCabASucursal.AsString]), []) THEN
        BEGIN
          wwTDeposito.Edit;
          wwTDepositoFisico.Value := wwTDepositoFisico.Value -
            wwTTransferenciaDetCantidad.Value;
          wwTDeposito.Post;
        END;
    END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaCabAfterScroll(DataSet: TDataSet);
BEGIN
  IF (FormMovStock.wwDBLookupCombo2 <> NIL) THEN
    BEGIN
      IF (DatosMovStock.wwTTransferenciaCabTipoCpbte.AsString = 'AJ') THEN
        FormMovStock.wwDBLookupCombo2.Enabled := False
      ELSE
        FormMovStock.wwDBLookupCombo2.Enabled := True;
    END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetBeforeEdit(DataSet: TDataSet);
BEGIN
  IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
    VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
      wwTTransferenciaCabSucFac.AsString]), []) THEN
    BEGIN
      wwTDeposito.Edit;
      wwTDepositoFisico.Value := wwTDepositoFisico.Value -
        wwTTransferenciaDetCantidad.Value;
      wwTDeposito.Post;
    END;
  IF wwTTransferenciaCabTipoCpbte.Value = 'TX' THEN
    BEGIN
      IF wwTDeposito.Locate('Codigo_Stk;Codigo_Sucursal',
        VarArrayOf([wwTTransferenciaDetCodigoArticulo.AsString,
          wwTTransferenciaCabASucursal.AsString]), []) THEN
        BEGIN
          wwTDeposito.Edit;
          wwTDepositoFisico.Value := wwTDepositoFisico.Value +
            wwTTransferenciaDetCantidad.Value;
          wwTDeposito.Post;
        END;
    END;
END;

PROCEDURE TDatosMovStock.wwDSTransferenciaCabStateChange(Sender: TObject);
BEGIN
  IF Sender = wwDSTransferenciaCab THEN
    FormMovStock.BitBtn1.Enabled := (wwDSTransferenciaCab.State = dsBrowse);
  IF Sender = wwDSTransferenciaDet THEN
    FormMovStock.BitBtn1.Enabled := (wwDSTransferenciaDet.State = dsBrowse);
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetAfterInsert(DataSet: TDataSet);
BEGIN
  IF (wwtTransferenciaCabNumeroFac.AsString = '') OR
    (wwTTransferenciaCabNumeroFac.AsString[1] = ' ') THEN
    wwTTransferenciaDet.Cancel;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetCodigoArticuloChange(
  Sender: TField);
BEGIN
  IF wwTStock.Locate('Codigo_Stk', wwTTransferenciaDetCodigoArticulo.AsString,
    []) THEN
    BEGIN
      wwTTransferenciaDetDetalle.AsString := wwTStockDetalle_Stk.AsString;
      wwTTransferenciaDetIncluyeIva.AsString :=
        VarToStr(wwTInscripcion.Lookup('Codigo',
        wwTTransferenciaCabTipoIva.AsString, 'Desglosa_Iva'));
      wwTTransferenciaDetIva.AsFloat := wwTIva.Lookup('Codigo',
        wwTStockIva_Articulo.ASString, 'Porcentaje');
      wwTTransferenciaDetCosto.AsFloat := wwTStockCosto_Bruto_Stk.AsFloat;
      wwTTransferenciaDetTipoIva.AsString := wwTStockIva_Articulo.AsString;
      wwTTransferenciaDetUnidad.ASString := wwTStockUnidad.AsString;
    END;
END;

PROCEDURE TDatosMovStock.wwTTransferenciaDetCodigoArticuloSetText(
  Sender: TField; CONST Text: STRING);
VAR
  S: STRING;
BEGIN
  S := Text;
  S := Copy('00000000', 1, 8 - Length(s)) + S;
  Sender.AsString := s;
END;

END.
