unit UFacturaReducidaCtaCte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, Db, StdCtrls,   Mask,
  DBCtrls, wwdbdatetimepicker, wwDialog,
  wwidlg, DBTables, ActnList, Buttons, ToolWin, ComCtrls, ExtCtrls, Wwintl,
  JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, JvExMask, JvToolEdit, FMTBcd, SqlExpr;

type
  TFormCpbteCtaCteReducida = class(TFormABMBase)
    pnCabecera: TPanel;
    DBText66: TDBText;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeRemitos: TDBEdit;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeEntrega: TDBEdit;
    pnPieFactura: TPanel;
    Label6: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    dbeDscto: TDBEdit;
    wwLookupLdr: TwwLookupDialog;
    wwBuscadorSucursal: TwwLookupDialog;
    QBuscaComprob: TQuery;
    wwBuscadorDeposito: TwwLookupDialog;
    wwLookupStock: TwwLookupDialog;
    wwLookupCondVta: TwwLookupDialog;
    dbeSubTotal: TDBEdit;
    dbeExento: TDBEdit;
    dbeDescuento: TDBEdit;
    dbgIva: TDBGrid;
    BuscadorIva: TwwLookupDialog;
    BtAnular: TSpeedButton;
    ToolButton1: TToolButton;
    Anular: TAction;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVenta: TAction;
    BuscarTipoCpbte: TAction;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText7: TDBText;
    DBText6: TDBText;
    Label17: TLabel;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    dbeMuestraVendedor: TDBEdit;
    wwBuscadorVendedor: TwwLookupDialog;
    BuscarVendedor: TAction;
    dbeFechaVta: TJvDBDateEdit;
    RxCCodigo: TJvDBComboEdit;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCConVta: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel62: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    procedure dbgIvaColEnter(Sender: TObject);
    procedure dbgIvaEditButtonClick(Sender: TObject);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure AnularExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVentaExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCLdrKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCConVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbeFechaVtaExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Anulado:Tpanel;
  end;

var
  FormCpbteCtaCteReducida: TFormCpbteCtaCteReducida;

PROCEDURE UltimoComprobante;

implementation

uses DMVentaReducida, UBuscadorCpbte, UBuscadorClientes,
  DMStoreProcedureForm;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosVentaReducida,DMStoreProcedure, FormCpbteCtaCteReducida DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (wwCDSVentaCabLETRAFAC.AsString <> '') AND (wwCDSVentaCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := wwCDSVentaCabLETRAFAC.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := wwCDSVentaCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := wwCDSVentaCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := wwCDSVentaCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              wwCDSVentaCabSucFacSetText(wwCDSVentaCabSucFac,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              wwCDSVentaCabNumeroFacSetText(wwCDSVentaCabNumeroFac,IntToStr(Numero));
            END;
          wwCDSVentaCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          wwCDSVentaCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
          wwCDSVentaCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          wwCDSVentaCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          wwCDSVentaCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      wwCDSVentaCabNroCpbte.AsString := wwCDSVentaCabLetraFac.AsString + wwCDSVentaCabSucFac.AsString + wwCDSVentaCabNumeroFac.AsString;
    END;
END;



procedure TFormCpbteCtaCteReducida.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
  if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormCpbteCtaCteReducida.dbgIvaEditButtonClick(Sender: TObject);
begin
  inherited;
  //DMMain.QBuscaIva.Close;
 // DMMain.QBuscaIva.Open;
  if BuscadorIva.Execute Then
    if BuscadorIva.LookupTable.FieldByName('codigo').AsString<>'' Then
      DatosVentaReducida.wwCDSImpuestosCODIGO_GRAVAMENSetText(DatosVentaReducida.wwCDSImpuestosCODIGO_GRAVAMEN,BuscadorIva.LookupTable.FieldByName('codigo').AsString);
 // DMMain.QBuscaIva.Close;
end;

procedure TFormCpbteCtaCteReducida.dbgIvaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
    IF (Key = VK_LEFT) THEN
      BEGIN
        if (dbgIva.SelectedIndex = 3) THEN
          dbgIva.SelectedIndex := 0
        else
          if (dbgIva.SelectedIndex = 4) THEN
            dbgIva.SelectedIndex := 3;
        key := 0;
      END;

end;

procedure TFormCpbteCtaCteReducida.dbgIvaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgIva.SelectedIndex<4 Then dbgIva.SelectedIndex:= dbgIva.SelectedIndex+1
  else
    if Key=#10 Then
      dbgIva.OnEditButtonClick(Sender);  
end;

procedure TFormCpbteCtaCteReducida.FormCreate(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(DatosVentaReducida)) THEN
    DatosVentaReducida := TDatosVentaReducida.Create(Application);
  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosVentaReducida.wwCDSVentaCab;
  wwBuscador.LookupTable:=QBuscaComprob;
  WITH DatosVentaReducida DO
    BEGIN
      AddClientDataset(wwCDSVentaCab, DSPVentaCab);
      AddClientDataset(wwCDSImpuestos,DSPImpuestos);
      AddClientDataSet(wwCDSCajaMov,DSPCajaMov);
      AddClientDataSet(wwCDSMovEfectivo,DSPMovEfectivo);
      wwCDSVentaCab.Open;
      wwCDSImpuestos.Open;
      wwCDSCajaMov.Open;
      wwCDSMovEfectivo.Open;

      wwCDSCajaMov.EmptyDataSet;
      wwCDSMovEfectivo.EmptyDataSet;
      wwCDSVentaCab.EmptyDataSet;
      wwCDSImpuestos.EmptyDataSet;
      AplicarMascarasNumericas;
      // Asigno la cantidad de renglones de la factura;
    END;
   Tabla:='FcVtaCab';
   Campo:='Id_Fc';
end;

procedure TFormCpbteCtaCteReducida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  inherited;
end;

procedure TFormCpbteCtaCteReducida.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCpbteCtaCteReducida:=nil;
end;

procedure TFormCpbteCtaCteReducida.AgregarExecute(Sender: TObject);
begin
//  BtAnular.Enabled         :=True;
//  btModificar.Enabled      :=True;
  DatosVentaReducida.wwCDSVentaCab.close;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSVentaCab.Open;

  DatosVentaReducida.wwCDSImpuestos.Close;
  DatosVentaReducida.wwCDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSImpuestos.Open;

  DatosVentaReducida.wwCDSCajaMov.Close;
  DatosVentaReducida.wwCDSCajaMov.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSCajaMov.open;

  DatosVentaReducida.wwCDSMovEfectivo.Close;
  DatosVentaReducida.wwCDSMovEfectivo.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSMovEfectivo.Open;
  inherited;
  sbEstado.SimpleText:='';
  DatosVentaReducida.wwCDSImpuestos.EmptyDataSet;
  pnCabecera.Enabled:=True;
  RxCCodigo.SetFocus;
end;

procedure TFormCpbteCtaCteReducida.ConfirmaExecute(Sender: TObject);
begin
  WITH DatosVentaReducida DO
    BEGIN
        if wwCDSVentaCabTOTAL.Value>0 Then
          if wwCDSVentaCabFECHAVTA.AsString<>'' Then
            if wwCDSVentaCabCODIGO.AsString<>'' Then
              if wwCDSVentaCabLDR.AsString<>'' Then
                if wwCDSVentaCabCONDICIONVTA.AsString<>'' Then
                  IF wwCDSVentaCabDeposito.AsString<>'' Then
                    if wwCDSVentaCabSUCFAC.AsString<>'' Then
                      if wwCDSVentaCabNUMEROFAC.AsString<>'' Then
                        if wwCDSVentaCabID_TIPOCOMPROBANTE.AsString<>'' Then
                          if wwCDSVentaCabSUCURSAL.AsString<>'' Then
                            begin
                              DatoNew     :=IntToStr(wwCDSVentaCabID_FC.Value);
                              TipoCpbte   :=wwCDSVentaCabTIPOCPBTE.Value;
                              wwCDSVentaCabDebe.ASFloat := DatosVentaReducida.wwCDSVentaCabTotal.Value;
                              wwCDSVentaCabRENGLONES.Value:=-1;

                              if wwCDSVentaCab.State<>dsBrowse Then
                                wwCDSVentaCab.Post;
                              inherited;
                              Recuperar.Execute;
                            end
                          else
                            ShowMessage('Falta Sucursal de Vta.')
                        else
                          ShowMessage('Falta Tipo Comprobante')
                      else
                        ShowMessage('Falta Numero')
                    else
                      ShowMessage('Falta Prefijo')
                  else
                    ShowMessage('Falta Depósito')
                else
                  ShowMessage('Falta Condición de Vta.')
              else
                ShowMessage('Falta L.D.R')
            else
              ShowMessage('Falta Cliente')
          else
            ShowMessage('Falta Fecha')
        else
          ShowMessage('Comprobante con Valor 0(cero)');
    END;

end;

procedure TFormCpbteCtaCteReducida.CancelarExecute(Sender: TObject);
begin
  inherited;
  if DatosVentaReducida.wwCDSVentaCab.State in [dsInsert,dsEdit] Then
    begin
      DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentaReducida.wwCDSVentaCab.Cancel;
    end;
  DatosVentaReducida.wwCDSImpuestos.Cancel;
  DatosVentaReducida.wwCDSVentaCab.close;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('TipoCpbte').Clear;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSVentaCab.Open;

  DatosVentaReducida.wwCDSImpuestos.Close;
  DatosVentaReducida.wwCDSImpuestos.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSImpuestos.Open;

  DatosVentaReducida.wwCDSCajaMov.Close;
  DatosVentaReducida.wwCDSCajaMov.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSCajaMov.open;

  DatosVentaReducida.wwCDSMovEfectivo.Close;
  DatosVentaReducida.wwCDSMovEfectivo.Params.ParamByName('id').Clear;
  DatosVentaReducida.wwCDSMovEfectivo.Open;
  inherited;
  pnCabecera.Enabled:=True;
  if btNuevo.Enabled Then
    btNuevo.SetFocus;
end;

procedure TFormCpbteCtaCteReducida.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 0;
  FormBuscaCpbte.TipoCpbte1:='FC';
  FormBuscaCpbte.TipoCpbte2:='NC';
  FormBuscaCpbte.TipoCpbte3:='ND';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
   end;
end;

procedure TFormCpbteCtaCteReducida.BorrarExecute(Sender: TObject);
begin
//  inherited;
  ShowMessage('Operación no permitida');
end;

procedure TFormCpbteCtaCteReducida.AnularExecute(Sender: TObject);
begin
  inherited;
  IF NOT (DatosVentaReducida.wwCDSVentaCab.IsEmpty) THEN
    BEGIN
      IF MessageDlg('Ud. está por hacer una operación de' + #13 +
        'anulación.....' + #13 +
        'Está seguro de hacerlo?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
          THEN
        BEGIN
          DatosVentaReducida.wwCDSVentaCab.Edit;
          DatosVentaReducida.wwCDSVentaCabANULADO.Value := 'S';
          //    DatosVentas.wwCDSVentaCab.Post;
          Confirma.Execute;
        END
    END
  ELSE
    ShowMessage('No hay regsitro Activo');
end;

procedure TFormCpbteCtaCteReducida.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Anular.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
end;

procedure TFormCpbteCtaCteReducida.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
{  DMMain.QClientes.Close;
  DMMain.QClientes.Open;
   IF wwLookupClientes.Execute THEN
    if wwLookupClientes.LookupTable.fieldByName('Codigo').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabCodigoSetText(DatosVentaReducida.wwCDSVentaCabCodigo,wwLookupClientes.LookupTable.fieldByName('Codigo').AsString);
   DMMain.QClientes.Close;
 }

   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosVentaReducida.wwCDSVentaCabCodigoSetText(DatosVentaReducida.wwCDSVentaCabCodigo,FormBuscadorClientes.Codigo);

end;

procedure TFormCpbteCtaCteReducida.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.QLdr.Close;
  DatosVentaReducida.QLdr.ParamByName('Codigo').Value := DatosVentaReducida.wwCDSVentaCabCodigo.Value;
  DatosVentaReducida.QLdr.Open;
  IF wwLookupLdr.Execute THEN
    if wwLookupLdr.LookupTable.fieldByName('Codigo_Ldr').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabLDRSetText(DatosVentaReducida.wwCDSVentaCabLDR, wwLookupLdr.LookupTable.fieldByName('Codigo_Ldr').AsString);
  DatosVentaReducida.QLdr.Close;
end;

procedure TFormCpbteCtaCteReducida.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.CDSBuscaSucursal.Close;
  DatosVentaReducida.CDSBuscaSucursal.Open;
  IF wwBuscadorSucursal.Execute THEN
    if wwBuscadorSucursal.LookupTable.fieldByName('Codigo').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabSucursalSetText(DatosVentaReducida.wwCDSVentaCabSucursal, wwBuscadorSucursal.LookupTable.fieldByName('Codigo').AsString);
  DatosVentaReducida.CDSBuscaSucursal.Close;
end;

procedure TFormCpbteCtaCteReducida.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.CDSBuscaDeposito.Close;
  DatosVentaReducida.CDSBuscaDeposito.Open;
  IF wwBuscadorDeposito.Execute THEN
    if wwBuscadorDeposito.LookupTable.fieldByName('Id').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabDepositoSetText(DatosVentaReducida.wwCDSVentaCabDeposito, wwBuscadorDeposito.LookupTable.fieldByName('Id').AsString);
  DatosVentaReducida.CDSBuscaDeposito.Close;
end;

procedure TFormCpbteCtaCteReducida.BuscarCondVentaExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.wwCDSVentaCabCONDICIONVTA.Clear;
  DatosVentaReducida.CDSBuscaCondVenta.Close;
  DatosVentaReducida.CDSBuscaCondVenta.Params.ParamByName('Codigo').Value := DatosVentaReducida.wwCDSVentaCabCodigo.Value;
  DatosVentaReducida.CDSBuscaCondVenta.Open;
  IF wwLookupCondVta.Execute THEN
    if wwLookupCondVta.LookupTable.FieldByName('CodigoPago').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabCondicionVtaSetText(DatosVentaReducida.wwCDSVentaCabCondicionVta, wwLookupCondVta.LookupTable.fieldByName('CodigoPago').AsString);
  DatosVentaReducida.CDSBuscaCondVenta.Close;
end;

procedure TFormCpbteCtaCteReducida.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTE.Clear;
  QBuscaComprob.Close;
  QBuscaComprob.ParamByName('Suc').Value := DatosVentaReducida.wwCDSVentaCabSucursal.Value;
  QBuscaComprob.Open;
  IF NOT (QBuscaComprob.IsEmpty) THEN
    BEGIN
      IF wwBuscador.Execute THEN
        if wwBuscador.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
          DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTE, wwBuscador.LookupTable.FieldByName('id_comprobante').AsString);
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  QBuscaComprob.Close;
end;

procedure TFormCpbteCtaCteReducida.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabSUCURSAL.Clear;
      DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRASUCURSAL.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentaReducida.wwCDSVentaCabLETRAFAC.Clear;
      DatosVentaReducida.wwCDSVentaCabSUCFAC.Clear;
      DatosVentaReducida.wwCDSVentaCabNUMEROFAC.Clear;
    end;

end;

procedure TFormCpbteCtaCteReducida.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabID_TIPOCOMPROBANTE.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRACOMPROBANTE.Clear;
      DatosVentaReducida.wwCDSVentaCabLETRAFAC.Clear;
      DatosVentaReducida.wwCDSVentaCabSUCFAC.Clear;
      DatosVentaReducida.wwCDSVentaCabNUMEROFAC.Clear;
    end;
end;

procedure TFormCpbteCtaCteReducida.RxCCodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabCODIGO.Clear;
      DatosVentaReducida.wwCDSVentaCabNOMBRE.Clear;
      DatosVentaReducida.wwCDSVentaCabLDR.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRALDR.Clear;
      DatosVentaReducida.wwCDSVentaCabCONDICIONVTA.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormCpbteCtaCteReducida.RxCLdrKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabLDR.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRALDR.Clear;
    end;
end;

procedure TFormCpbteCtaCteReducida.RxCDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabDEPOSITO.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormCpbteCtaCteReducida.RxCConVtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosVentaReducida.wwCDSVentaCabCONDICIONVTA.Clear;
      DatosVentaReducida.wwCDSVentaCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormCpbteCtaCteReducida.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.CDSBuscaVendedor.Close;
  DatosVentaReducida.CDSBuscaVendedor.Open;
  IF wwBuscadorVendedor.Execute THEN
    if wwBuscadorVendedor.LookupTable.fieldByName('codigo').AsString<>'' Then
      DatosVentaReducida.wwCDSVentaCabVENDEDORSetText(DatosVentaReducida.wwCDSVentaCabVENDEDOR,wwBuscadorVendedor.LookupTable.fieldByName('codigo').AsString);
  DatosVentaReducida.CDSBuscaVendedor.Close;
end;

procedure TFormCpbteCtaCteReducida.RecuperarExecute(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  sbEstado.SimpleText:='';
  DatosVentaReducida.wwCDSVentaCab.close;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('TipoCpbte').Value :=TipoCpbte;
  DatosVentaReducida.wwCDSVentaCab.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
  DatosVentaReducida.wwCDSVentaCab.Open;

  if DatosVentaReducida.wwCDSVentaCabANULADO.Value='S' Then
    begin
       if Anulado=nil Then
          Anulado:=TPanel.Create(Self);
       Anulado.Parent:=Self;
       Anulado.Caption:='ANULADA';
       Anulado.Top:= Trunc(FormCpbteCtaCteReducida.Height*0.5)-20;
       Anulado.Left:=Trunc(FormCpbteCtaCteReducida.Width*0.5)-100;
       Anulado.Height:=40;
       Anulado.Width :=200;
       Anulado.Font.Size:=30;
       Anulado.Font.Color:=clRed;
       Anulado.Font.Name:='Arial';
       Anulado.Font.Style:=[fsBold];
       Anulado.Visible:=True;
       ANulado.BringToFront;
    end
  else
    if Anulado<>nil Then
      begin
        FreeAndNil(Anulado);
      end;

  if DatosVentaReducida.wwCDSVentaCabNETOGRAV2.Value>0 Then
    DatosVentaReducida.Var_TasaIva := (((DatosVentaReducida.wwCDSVentaCabTotal.Value - DatosVentaReducida.wwCDSVentaCabNetoGrav2.Value) * 100) /
    DatosVentaReducida.wwCDSVentaCabNetoGrav2.Value)
  else
    DatosVentaReducida.Var_TasaIva:=0;

  DatosVentaReducida.wwCDSImpuestos.Close;
  DatosVentaReducida.wwCDSImpuestos.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosVentaReducida.wwCDSImpuestos.Open;
  DatosVentaReducida.HabilitarLabel;
  pnPrincipal.Enabled:=True;
  //ShowMessage('numero:'+IntToStr(FormBuscaCpbte.Id_Rec));
  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DecodeDate(DatosVentaReducida.wwCDSVentaCabFECHAVTA.AsDateTime,y,m,d);
    DatosVentaReducida.spVerificaPeriodFiscal.Close;
    DatosVentaReducida.spVerificaPeriodFiscal.ParamByName('anio').Value:=y;
    DatosVentaReducida.spVerificaPeriodFiscal.ParamByName('mes').Value:=m;
    DatosVentaReducida.spVerificaPeriodFiscal.ParamByName('compra_venta').Value:='V';
    DatosVentaReducida.spVerificaPeriodFiscal.ExecProc;
    if DatosVentaReducida.spVerificaPeriodFiscal.ParamByName('estado').Value='C' Then
      begin
        sbEstado.SimpleText:='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        BtAnular.Enabled         :=False;
        btModificar.Enabled      :=false;
        btBorrar.Enabled         :=False;
        dbgIva.ReadOnly          :=True;
      end
    else
      begin
        if DatosVentaReducida.wwCDSVentaCabANULADO.Value='N' Then
          begin
            BtAnular.Enabled         :=True;
            btModificar.Enabled      :=True;
            btBorrar.Enabled         :=True;
            DBGIva.ReadOnly          :=False;
           end
        else
          begin
            BtAnular.Enabled        :=False;
            btModificar.Enabled     :=False;
            btBorrar.Enabled        :=False;
            DBGIva.ReadOnly         :=False;
          end;
      end;
    DatosVentaReducida.spVerificaPeriodFiscal.Close;
    DatoNew:=''+DatoNew+'';
  end;
end;

procedure TFormCpbteCtaCteReducida.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCpbteCtaCteReducida.dbeFechaVtaExit(Sender: TObject);
begin
  inherited;
  DatosVentaReducida.wwCDSVentaCabFECHAVTASetText(DatosVentaReducida.wwCDSVentaCabFECHAVTA,dbeFechaVta.Text);
end;

end.