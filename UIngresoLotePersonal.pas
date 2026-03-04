unit UIngresoLotePersonal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, StdCtrls, DBCtrls, JvLabel, Provider, DB, DBClient,
  Mask, JvExMask, JvToolEdit, SqlExpr,  ImgList, ActnList,
  JvGradient, Buttons, ToolWin, ExtCtrls, JvMemoryDataset, Grids, DBGrids,
  JvAppStorage, JvAppIniStorage, JvComponentBase, JvFormPlacement,
  System.Actions, Vcl.ComCtrls, JvDBControls, JvExControls, CompBuscador,
  JvDBLookup, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormRetiroLotesPersonal = class(TFormABMBase)
    edFecha: TJvDateEdit;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    DSComprobante: TDataSource;
    DSPComprobante: TDataSetProvider;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursal: TDataSource;
    RxLabel2: TJvLabel;
    dbcSucursal: TDBLookupComboBox;
    RxLabel6: TJvLabel;
    dbcComprobante: TDBLookupComboBox;
    edDetalle: TEdit;
    dbgMovimientos: TDBGrid;
    mdMovimientos: TJvMemoryData;
    mdMovimientosCODIGO: TStringField;
    mdMovimientosNOMBRE: TStringField;
    mdMovimientosIMPORTE: TFloatField;
    DSMovimientos: TDataSource;
    BuscarPersonal: TAction;
    DSPPersonal: TDataSetProvider;
    CDSPersonal: TClientDataSet;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalCODIGO: TStringField;
    CDSListaCajas: TClientDataSet;
    CDSListaCajasID_CAJA: TIntegerField;
    CDSListaCajasID_CUENTA_CAJA: TIntegerField;
    CDSListaCajasNUMEROCAJA: TIntegerField;
    CDSListaCajasMUESTRACAJA: TStringField;
    DSListaCaja: TDataSource;
    DSPListaCaja: TDataSetProvider;
    dbcCaja: TDBLookupComboBox;
    RxLbCaja: TJvLabel;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    CDSPersonalACTIVO: TStringField;
    DSPMotivo: TDataSetProvider;
    CDSMotivo: TClientDataSet;
    CDSMotivoID: TIntegerField;
    CDSMotivoDETALLE: TStringField;
    DSMotivo: TDataSource;
    JvLabel3: TJvLabel;
    dbcMotivo: TJvDBLookupCombo;
    Memo1: TMemo;
    JvLabel4: TJvLabel;
    QBuscaPersonal: TFDQuery;
    QBuscaPersonalNOMBRE: TStringField;
    QBuscaPersonalCODIGO: TStringField;
    QBuscaPersonalACTIVO: TStringField;
    QComproba: TFDQuery;
    QMotivo: TFDQuery;
    QListaCaja: TFDQuery;
    spGenerarAdelantoSueldo: TFDStoredProc;
    GenerarValesProcedimiento: TAction;
    BitBtn2: TBitBtn;
    mdMovimientosNUMERO: TStringField;
    JvLabel5: TJvLabel;
    cbModoPago: TDBLookupComboBox;
    JvLabel6: TJvLabel;
    QModoPago: TFDQuery;
    DSModoPago: TDataSource;
    JvLabel7: TJvLabel;
    QChequera: TFDQuery;
    DSChequera: TDataSource;
    QChequeraID_CHEQUERA: TIntegerField;
    QChequeraID_CUENTA: TIntegerField;
    QChequeraNRO_CUENTA: TStringField;
    QChequeraNUMERO_INCIAL: TIntegerField;
    QChequeraNUMERO_FINAL: TIntegerField;
    QChequeraULTIMO_NUMERO: TIntegerField;
    QChequeraDIFERIDO: TSmallintField;
    QChequeraNOMBRE: TStringField;
    QChequeraID_BANCO: TIntegerField;
    QChequeraMONEDA: TIntegerField;
    QChequeraCANT_CHE_EMITIDOS: TIntegerField;
    QChequeraCHEQUERA_TERMINADA: TStringField;
    QListaCtasBanco: TFDQuery;
    DSListaCtaBanco: TDataSource;
    cbChequera: TJvDBLookupCombo;
    cbCtaBanco: TJvDBLookupCombo;
    QModoPagoID_FPAGO: TIntegerField;
    QModoPagoID_TPAGO: TIntegerField;
    QModoPagoDESCRIPCION: TStringField;
    QModoPagoCOTIZACION: TFloatField;
    QModoPagoSIGNO: TStringField;
    QModoPagoMONEDA: TIntegerField;
    QModoPagoACUMULABLE: TStringField;
    JvLabel8: TJvLabel;
    edFechaCobro: TJvDateEdit;
    QListaCtasBancoID_CUENTA: TIntegerField;
    QListaCtasBancoNOMBRE: TStringField;
    QListaCtasBancoNRO_CUENTA: TStringField;
    QListaCtasBancoNOMBREBANCO: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure dbcComprobanteEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarPersonalExecute(Sender: TObject);
    procedure mdMovimientosCODIGOSetText(Sender: TField; const Text: string);
    procedure dbgMovimientosColEnter(Sender: TObject);
    procedure dbgMovimientosKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSBuscaPersonalBeforePost(DataSet: TDataSet);
//    procedure GenerarValesExecute(Sender: TObject);
    procedure dbgMovimientosEditButtonClick(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure GenerarValesProcedimientoExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure cbModoPagoClick(Sender: TObject);
    procedure mdMovimientosNewRecord(DataSet: TDataSet);
    procedure mdMovimientosAfterInsert(DataSet: TDataSet);
    procedure cbChequeraClick(Sender: TObject);
    procedure cbCtaBancoClick(Sender: TObject);
    procedure mdMovimientosBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
    function NroLote:Integer;
  public
    { Public declarations }
  end;

var
  FormRetiroLotesPersonal: TFormRetiroLotesPersonal;

implementation

uses DMBuscadoresForm, {UAdelantosSueldos,}UDMain_FD;
{$R *.dfm}

procedure TFormRetiroLotesPersonal.BuscarPersonalExecute(Sender: TObject);
begin
  inherited;
  QBuscaPersonal.Close;
  qBuscaPersonal.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    mdMovimientosCODIGOSetText(mdMovimientosCODIGO,comBuscadorBase.Id);
  QBuscaPersonal.Close;
 end;

procedure TFormRetiroLotesPersonal.cbChequeraClick(Sender: TObject);
var contador:Integer;
begin
  inherited;
  contador:=1;
  if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=2) and (cbChequera.KeyValue>-1) then
    begin
      mdMovimientos.First;
      mdMovimientos.DisableControls;
      while not(mdMovimientos.Eof) do
        begin
          mdMovimientos.Edit;
          mdMovimientosNUMERO.Value:=IntToStr(StrToInt(cbChequera.LookupSource.DataSet.FieldByName('ULTIMO_NUMERO').Value) + Contador);
          if mdMovimientosNUMERO.Value>cbChequera.LookupSource.DataSet.FieldByName('NUMERO_FINAL').Value then
             begin
               mdMovimientosIMPORTE.Value := 0;
               mdMovimientosNUMERO.Value  := '';
             end;
          mdMovimientos.Next;
          Contador:=Contador+1;
        end;
      mdMovimientos.First;
      mdMovimientos.EnableControls;
    end;

end;

procedure TFormRetiroLotesPersonal.cbCtaBancoClick(Sender: TObject);
var Contador:Integer;
begin
  inherited;
  Contador:=1;
  if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=5) and (cbCtaBanco.KeyValue>-1) then
    begin
      mdMovimientos.First;
      mdMovimientos.DisableControls;
      while not(mdMovimientos.Eof) do
        begin
          mdMovimientos.Edit;
          mdMovimientosNUMERO.Value:=IntToStr(Contador);
          mdMovimientos.Next;
          Contador:=Contador+1;
        end;
      mdMovimientos.First;
      mdMovimientos.EnableControls;
    end;
end;

procedure TFormRetiroLotesPersonal.cbModoPagoClick(Sender: TObject);
var Contador:Integer;
begin
  inherited;
  cbChequera.Enabled:=cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=2;
  cbCtaBanco.Enabled:=cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=5;

   if cbChequera.Enabled then
    cbChequera.Color      := clWindow
  else
    begin
      cbChequera.Color    := clScrollBar;
      cbChequera.KeyValue := -1;
    end;

  if cbCtaBanco.Enabled then
    cbCtaBanco.Color     := clWindow
  else
    begin
      cbCtaBanco.Color    := clScrollBar;
      cbCtaBanco.KeyValue := -1;
    end;


  if Not(mdMovimientos.IsEmpty) then
    begin
      mdMovimientos.First;
      mdMovimientos.DisableControls;
      while not(mdMovimientos.Eof) do
        begin
          mdMovimientos.Edit;
          mdMovimientosNUMERO.Value:='';
          mdMovimientos.Next;
        end;
      mdMovimientos.First;
      mdMovimientos.EnableControls;
      Contador:=1;

      if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=2) and (cbChequera.KeyValue>-1) then
        begin
          mdMovimientos.First;
          mdMovimientos.DisableControls;
          while not(mdMovimientos.Eof) do
            begin
              mdMovimientos.Edit;
              mdMovimientosNUMERO.Value:=IntToStr(StrToInt(cbChequera.LookupSource.DataSet.FieldByName('ULTIMO_NUMERO').Value) + Contador);
              if mdMovimientosNUMERO.Value>cbChequera.LookupSource.DataSet.FieldByName('NUMERO_FINAL').Value then
                 mdMovimientos.Cancel;
              mdMovimientos.Next;
              Contador:=Contador+1;
            end;
          mdMovimientos.First;
          mdMovimientos.EnableControls;
        end;

      if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=5) and (cbCtaBanco.KeyValue>-1) then
        begin
          mdMovimientos.First;
          mdMovimientos.DisableControls;
          while not(mdMovimientos.Eof) do
            begin
              mdMovimientos.Edit;
              mdMovimientosNUMERO.Value:=IntToStr(Contador);
              mdMovimientos.Next;
              Contador:=Contador+1;
            end;
          mdMovimientos.First;
          mdMovimientos.EnableControls;
        end;
    end;
end;

procedure TFormRetiroLotesPersonal.CDSBuscaPersonalBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  if mdMovimientosCODIGO.AsString='' then
    begin
      mdMovimientos.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormRetiroLotesPersonal.dbcComprobanteEnter(Sender: TObject);
begin
  inherited;
  if Not(CDSSucursal.IsEmpty) Then
    begin
      CDSComprobantes.Close;
      CDSComprobantes.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
      CDSComprobantes.Open;
    end;
end;

procedure TFormRetiroLotesPersonal.dbgMovimientosColEnter(Sender: TObject);
begin
  inherited;
  if dbgMovimientos.SelectedIndex=1 Then
    dbgMovimientos.SelectedIndex:=2;
  if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=1) and (dbgMovimientos.SelectedIndex=2) then
    dbgMovimientos.SelectedIndex:=3;

end;

procedure TFormRetiroLotesPersonal.dbgMovimientosEditButtonClick(
  Sender: TObject);
begin
  inherited;
   BuscarPersonal.Execute;
end;

procedure TFormRetiroLotesPersonal.dbgMovimientosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if key=#13 then
    begin
      Key:=#0;
      if dbgMovimientos.SelectedIndex<3  then
        dbgMovimientos.SelectedIndex:=dbgMovimientos.SelectedIndex+1
      else
        begin
          dbgMovimientos.DataSource.DataSet.Append;
          dbgMovimientos.SelectedIndex:=0;
        end;
    end
  else
    if Key=#10 then
      begin
        Key:=#0;
        if dbgMovimientos.SelectedIndex=0 Then
          BuscarPersonal.Execute;
      end;

end;

procedure TFormRetiroLotesPersonal.DSBaseStateChange(Sender: TObject);
begin
//  inherited;
end;

procedure TFormRetiroLotesPersonal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSSucursal.Close;
  CDSComprobantes.Close;
  CDSMotivo.Close;
  QModoPago.Close;
  QChequera.Close;

  CDSListaCajas.Close;
  QListaCtasBanco.Close;

  Action:=caFree;
end;

procedure TFormRetiroLotesPersonal.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  CDSSucursal.Open;
  CDSComprobantes.Open;
  CDSMotivo.Close;
  CDSMotivo.Open;
  QModoPago.Open;
  QChequera.Open;

  CDSListaCajas.Close;
  CDSListaCajas.Open;

  QListaCtasBanco.Close;
  QListaCtasBanco.Open;

  dbcCaja.DropDownRows := CDSListaCajas.RecordCount;
  QModoPago.First;
  cbModoPago.KeyValue  := QModoPagoID_FPAGO.Value;

end;

procedure TFormRetiroLotesPersonal.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRetiroLotesPersonal:=nil;
end;

procedure TFormRetiroLotesPersonal.FormKeyPress(Sender: TObject; var Key: Char);
begin

  if Not(ActiveControl is TDBGrid) then
  inherited;

end;

procedure TFormRetiroLotesPersonal.FormResize(Sender: TObject);
begin
  inherited;
  if FormRetiroLotesPersonal<>nil then
    if FormRetiroLotesPersonal.Width<>844 then
      FormRetiroLotesPersonal.Width:=844;
end;

procedure TFormRetiroLotesPersonal.FormShow(Sender: TObject);
begin
  //inherited;
  edFecha.Date        :=Date;
  mdMovimientos.Active:=True;
  if CDSMotivo.RecordCount>0 then
    begin
      CDSMotivo.First;
      dbcMotivo.KeyValue  :=CDSMotivoID.Value;
    end
  else
    dbcMotivo.KeyValue  := -1;
end;
{
procedure TFormRetiroLotesPersonal.GenerarValesExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormAdelantosSueldo)) then
    FormAdelantosSueldo:=TFormAdelantosSueldo.Create(Self);
  FormAdelantosSueldo.show;
  if dbcCaja.KeyValue>0 then
    if dbcSucursal.KeyValue>0 then
      if dbcComprobante.KeyValue>0 then
        begin
          mdMovimientos.First;
          while Not(mdMovimientos.Eof) do
            begin
              if (mdMovimientosCODIGO.AsString<>'') and (mdMovimientosIMPORTE.AsString<>'') and (mdMovimientosIMPORTE.AsFloat>0) then
                begin
                  FormAdelantosSueldo.Agregar.Execute;
                  FormAdelantosSueldo.CDSAdelantosSUCURSALSetText(FormAdelantosSueldo.CDSAdelantosSUCURSAL,IntToStr(dbcSucursal.KeyValue));
                  FormAdelantosSueldo.CDSAdelantosID_TIPOCOMPROBANTESetText(FormAdelantosSueldo.CDSAdelantosID_TIPOCOMPROBANTE,IntToStr(dbcComprobante.KeyValue));
                  FormAdelantosSueldo.CDSAdelantosCODIGOSetText(FormAdelantosSueldo.CDSAdelantosCODIGO,mdMovimientosCODIGO.AsString);
                  FormAdelantosSueldo.CDSAdelantosFECHA.AsDateTime := edFecha.Date;
                  FormAdelantosSueldo.CDSAdelantosDETALLE.Value    := edDetalle.Text;
                  FormAdelantosSueldo.CDSAdelantosID_MOTIVO.Value  := dbcMotivo.KeyValue;
                  FormAdelantosSueldo.CDSAdelantosOBS.Value        := Memo1.Lines.Text;
                  WITH FormAdelantosSueldo.FrameMovValoresEgresos1 DO
                    begin
                      QCajaCab.Close;
                      QCajaCab.ParamByName('Id').Value := dbcCaja.KeyValue;
                      QCajaCab.Open;
                      IF NOT (QCajaCab.IsEmpty) and ( FormAdelantosSueldo.DSBase.State=dsInsert) THEN
                        BEGIN
                          ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                          edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                          Id_Caja            := QCajaCabID_CAJA.Value;
                          id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                          FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                        end;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.TipoCpbte      := FormAdelantosSueldo.CDSAdelantosTIPOCPBTE.Value;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.TipoOperacion  := 'E';
                      FormAdelantosSueldo.FrameMovValoresEgresos1.ClaseCpbte     := FormAdelantosSueldo.CDSAdelantosCLASECPBTE.Value;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.NroCpbte       := FormAdelantosSueldo.CDSAdelantosNROCPBTE.Value;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.FechaOperacion := FormAdelantosSueldo.CDSAdelantosFECHA.AsDateTime;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.IdCpbte        := FormAdelantosSueldo.CDSAdelantosID.Value;
                      FormAdelantosSueldo.FrameMovValoresEgresos1.Origen         := FormAdelantosSueldo.CDSAdelantosDETALLE.Value;

                      CDSCajaMov.Insert;
                      CDSCajaMovHABER.AsFloat        := mdMovimientosIMPORTE.AsFloat;
                      CDSCajaMovDEBE.AsFloat         := 0;
                      CDSFormaPagoEfec.Close;
                      CDSFormaPagoEfec.Open;
                      CDSFormaPagoEfec.First;
                      CDSCajaMovID_TPAGO.Value       := 1;
                      CDSCajaMovID_FPAGO.Value       := CDSFormaPagoEfecID_FPAGO.Value;
                      CDSCajaMovUNIDADES.AsFloat     := mdMovimientosIMPORTE.AsFloat;
                      CDSCajaMovCOTIZACION.AsFloat   := CDSFormaPagoEfecCOTIZACION.AsFloat;
                      CDSCajaMovCLASE_COMPROB.Value  := FormAdelantosSueldo.FrameMovValoresEgresos1.ClaseCpbte;
                      CDSCajaMovID_CUENTA_CAJA.Value := id_cuenta_caja;
                      CDSCajaMovMONEDA.Value         := CDSFormaPagoEfecMONEDA.Value;
                      CDSFormaPagoEfec.Close;
                      CDSMovEfectivo.Insert;
                      CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
                      CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
                      CDSMovEfectivoUNIDADES.AsFloat     := CDSCajaMovUNIDADES.AsFloat;
                      CDSMovEfectivoIMPORTE.AsFloat      := mdMovimientosIMPORTE.AsFloat;
                      CDSMovEfectivoID_CUENTA_CAJA.Value := id_cuenta_caja;
                      CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
                      CDSMovEfectivo.Post;
                      QCajaCab.Close;
                    END;
                  FormAdelantosSueldo.Confirma.Execute;
                end;
              mdMovimientos.Next;
            end;
        end
      else
        ShowMessage('No se seleciono el Comprobante...')
     else
       ShowMessage('No se seleciono la sucursal...')
   else
     ShowMessage('No se seleciono la Caja...');

  FormAdelantosSueldo.Close;
  mdMovimientos.Active:=False;
  mdMovimientos.Active:=True;

end;
}

procedure TFormRetiroLotesPersonal.GenerarValesProcedimientoExecute(
  Sender: TObject);
var Lote:Integer;
begin
  inherited;
  if dbcCaja.KeyValue>0 then
    if dbcSucursal.KeyValue>0 then
      if dbcComprobante.KeyValue>0 then
        begin
          Lote:=NroLote;
          mdMovimientos.First;
          while Not(mdMovimientos.Eof) do
            begin
              if (mdMovimientosCODIGO.AsString<>'') and
                 (mdMovimientosIMPORTE.AsString<>'') and
                 (mdMovimientosIMPORTE.AsFloat>0) then
                begin
                  DMMain_FD.fdcGestion.StartTransaction;
                  try
                    spGenerarAdelantoSueldo.Close;
                    spGenerarAdelantoSueldo.ParamByName('ID_comprobante').Value    := dbcComprobante.KeyValue;
                    spGenerarAdelantoSueldo.ParamByName('Fecha').Value             := edFecha.Date;
                    spGenerarAdelantoSueldo.ParamByName('ID_Motivo').Value         := dbcMotivo.KeyValue;
                    spGenerarAdelantoSueldo.ParamByName('EMPLEADO').Value          := mdMovimientosCODIGO.AsString;
                    spGenerarAdelantoSueldo.ParamByName('importe').Value           := mdMovimientosIMPORTE.AsFloat;
                    spGenerarAdelantoSueldo.ParamByName('usuario').Value           := DMMain_FD.UsuarioActivo;
                    spGenerarAdelantoSueldo.ParamByName('ID_cta_caja').Value       := dbcCaja.KeyValue;
                    spGenerarAdelantoSueldo.ParamByName('obs').AsString            := Memo1.Lines.Text;
                    spGenerarAdelantoSueldo.ParamByName('detalle').Value           := edDetalle.Text;
                    spGenerarAdelantoSueldo.ParamByName('lote').Value              := Lote;

                    spGenerarAdelantoSueldo.ParamByName('ID_CTA_CAJA_BANCO').Value := StrToInt(cbCtaBanco.KeyValue);// cbCtaBanco.LookupSource.DataSet.FieldByName('ID_CUENTA_CAJA').Value;
                    spGenerarAdelantoSueldo.ParamByName('ID_CHEQUERA').Value       := StrToInt(cbChequera.KeyValue);// cbChequera.LookupSource.DataSet.FieldByName('ID_CHEQUERA').Value;
                    if mdMovimientosNUMERO.AsString='' then
                      spGenerarAdelantoSueldo.ParamByName('NUMERO_CHE_TX').Value     := 0
                    ELSE
                      spGenerarAdelantoSueldo.ParamByName('NUMERO_CHE_TX').Value     := mdMovimientosNUMERO.AsInteger;

                    spGenerarAdelantoSueldo.ParamByName('ID_FPAGO').Value          := cbModoPago.ListSource.DataSet.FieldByName('ID_FPAGO').Value;
                    spGenerarAdelantoSueldo.ParamByName('FechaCHEQUE').Value       := edFechaCobro.Date;

                    spGenerarAdelantoSueldo.ExecProc;
                    DMMain_FD.fdcGestion.Commit;
                    spGenerarAdelantoSueldo.Close;
                  except
                    DMMain_FD.fdcGestion.Rollback;
                    spGenerarAdelantoSueldo.Close;
                  end;
                end;
              mdMovimientos.Next;
            end;

        end
      else
        ShowMessage('No se seleciono el Comprobante...')
    ELSE
        ShowMessage('No se Puso La Sucursal...')
  ELSE
    ShowMessage('Falta Seleccionar la Caja...');

  if MessageDlg('Da por finalizada la carga ?...',TMsgDlgType.mtConfirmation,mbYesNo,0,mbyes)=mryes then
    begin
      mdMovimientos.Active:=False;
      mdMovimientos.Active:=True;
    end;

end;

procedure TFormRetiroLotesPersonal.mdMovimientosAfterInsert(DataSet: TDataSet);
begin
  inherited;
  dbgMovimientos.SelectedIndex:=0;
end;

procedure TFormRetiroLotesPersonal.mdMovimientosBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=2) and
     (cbChequera.Value='-1') Then
    begin
      mdMovimientos.Cancel;
      SysUtils.Abort
    end
  else
    if (cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=5) and
       (cbCtaBanco.Value='-1') Then
      begin
        mdMovimientos.Cancel;
        SysUtils.Abort
      end;


end;


procedure TFormRetiroLotesPersonal.mdMovimientosCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if ((Text<>'') and (Text<>#13)) then
    begin
      mdMovimientos.Edit;
      Sender.AsString:=copy('000000',1,6-Length(Trim(Text)))+Text;
      CDSPersonal.Close;
      CDSPersonal.Params.ParamByName('codigo').Value:=Sender.AsString;
      CDSPersonal.Open;
      if Not(CDSPersonal.IsEmpty) and (CDSPersonalACTIVO.Value='S') then
        begin
          mdMovimientosNOMBRE.Value:=CDSPersonalNOMBRE.Value;
        end
      else
        begin
          Sender.Clear;
          ShowMessage('Dato No Valido..');
          mdMovimientos.Cancel;
          dbgMovimientos.SetFocus;
          dbgMovimientos.SelectedIndex:=0;
         end;
      CDSPersonal.Close;
    end;
end;

procedure TFormRetiroLotesPersonal.mdMovimientosNewRecord(DataSet: TDataSet);
begin
  inherited;
  mdMovimientosNUMERO.Value :='';
  mdMovimientosIMPORTE.Value:=0;
  if cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=2 then
    begin
      mdMovimientosNUMERO.Value:=IntToStr(StrToInt(cbChequera.LookupSource.DataSet.FieldByName('ULTIMO_NUMERO').Value) +mdMovimientos.RecordCount+1 );

      if mdMovimientosNUMERO.Value>cbChequera.LookupSource.DataSet.FieldByName('NUMERO_FINAL').Value then
        mdMovimientos.Cancel;

    end
  else
    if cbModoPago.ListSource.DataSet.FieldByName('ID_TPAGO').Value=5 then
      begin
        mdMovimientosNUMERO.Value:=IntToStr(mdMovimientos.RecordCount+1);
      end;

  //dbgMovimientos.SelectedIndex:=0;

end;

function TFormRetiroLotesPersonal.NroLote: Integer;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil);
  q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='select max(a.lote) from adelantos_sueldo a ';
  Q.Open;
  if (q.Fields[0].AsInteger<=0) then
    Result:=1
  else
    Result:= q.Fields[0].AsInteger +1;
  Q.Close;
  FreeAndNil(q);
end;

procedure TFormRetiroLotesPersonal.SalirExecute(Sender: TObject);
begin
  if (MessageDlg('Cierra la Venta y anula los cambios? ...',TMsgDlgType.mtConfirmation,mbYesNo,0,mbYes)=mrYes) then
  inherited;

end;

end.
