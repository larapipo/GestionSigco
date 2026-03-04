unit UCompraReducidaCtaCte;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, StdCtrls, ExtCtrls,  Mask, DBCtrls,  wwDialog,
  wwidlg, Db, DBTables, ActnList, Buttons,DateUtils,
  JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls, JvExMask,
  JvToolEdit, FMTBcd, SqlExpr, JvAppStorage, JvAppIniStorage, JvComponentBase,
  Vcl.ImgList, System.Actions, Vcl.ComCtrls, Vcl.ToolWin, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador;

type
  TFormCompraCtaCteReducida = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeCondCompra: TDBEdit;
    dbeOCompra: TDBEdit;
    pnDetalle: TPanel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label1: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    DBText2: TDBText;
    Label3: TLabel;
    Label4: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Bevel7: TBevel;
    DBText8: TDBText;
    Label7: TLabel;
    dbeDscto: TDBEdit;
    Label17: TLabel;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    wwBuscadorSucursal: TwwLookupDialog;
    wwLookupCondCompra: TwwLookupDialog;
    wwBuscadorComprobantes: TwwLookupDialog;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarCondCompra: TAction;
    BuscarTipoCpbte: TAction;
    BuscadorIva: TwwLookupDialog;
    BuscadorPercepcionIva: TwwLookupDialog;
    BuscadorPercepcionIB: TwwLookupDialog;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    dbgPercepcionIVA: TDBGrid;
    SpeedButton2: TSpeedButton;
    AgregarProveedor: TAction;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxDBECondCompra: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    dbeFechaCompra: TJvDBDateEdit;
    dbeFechaFiscal: TJvDBDateEdit;
    dbeFechaVencimiento: TJvDBDateEdit;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarCondCompraExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure RxDBECondCompraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AgregarExecute(Sender: TObject);
    procedure dbgPercepcionIVAColEnter(Sender: TObject);
    procedure dbgPercepcionIBColEnter(Sender: TObject);
    procedure dbgIvaColEnter(Sender: TObject);
    procedure DBGrid1ColEnter(Sender: TObject);
    procedure dbgPrecepcionIBColEnter(Sender: TObject);
    procedure dbgIvaEditButtonClick(Sender: TObject);
    procedure dbgPercepcionIVAEditButtonClick(Sender: TObject);
    procedure dbgPercepcionIBEditButtonClick(Sender: TObject);
    procedure dbgIvaKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPrecepcionIVAEditButtonClick(Sender: TObject);
    procedure dbgPercepcionIVAKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPercepcionIBKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbeFechaCompraExit(Sender: TObject);
    procedure AgregarProveedorExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    PROCEDURE UltimoComprobante;
  end;

var
  FormCompraCtaCteReducida: TFormCompraCtaCteReducida;

implementation

uses DMCompraReducida, UBuscadorCpbte, UProveedor_2,
  UBuscadorProveedor, DMStoreProcedureForm;
{$R *.DFM}

PROCEDURE TFormCompraCtaCteReducida.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosCompraReducida,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSCompraCabLetraFac.AsString <> '') AND (CDSCompraCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSCompraCabLetraFac.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSCompraCabSucursalCompra.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSCompraCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSCompraCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSCompraCabSucFacSetText(CDSCompraCabSucFac,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSCompraCabNumeroFacSetText(CDSCompraCabNumeroFac,IntToStr(Numero));
            END;
          CDSCompraCabDESGLOZAIVA.Value        := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          CDSCompraCabINGRESA_A_CTACTE.Value   := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
          CDSCompraCabINGRESA_LIBRO_IVA.Value  := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          CDSCompraCabTIPOCPBTE.Value          := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSCompraCabCLASECPBTE.Value         := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSCompraCabNROCPBTE.AsString := CDSCompraCabLetraFac.AsString + CDSCompraCabSucFac.AsString +
        CDSCompraCabNumeroFac.AsString;
      dbgIva.Enabled := CDSCompraCabDESGLOZAIVA.Value = 'S';
    END;
END;


procedure TFormCompraCtaCteReducida.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     DatosCompraReducida.CDSCompraCabCodigoSetText(DatosCompraReducida.CDSCompraCabCodigo, FormBuscadorProveedor.Codigo);
end;

procedure TFormCompraCtaCteReducida.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosCompraReducida.CDSBuscaSucursal.Close;
  DatosCompraReducida.CDSBuscaSucursal.Open;
  IF wwBuscadorSucursal.Execute THEN
    if wwBuscadorSucursal.LookupTable.FieldByName('Codigo').AsString<>'' Then
      DatosCompraReducida.CDSCompraCabSucursalCompraSetText(DatosCompraReducida.CDSCompraCabSucursalCompra, wwBuscadorSucursal.LookupTable.FieldByName('Codigo').AsString);
  DatosCompraReducida.CDSBuscaSucursal.Close;
end;

procedure TFormCompraCtaCteReducida.BuscarCondCompraExecute(Sender: TObject);
begin
  inherited;
  DatosCompraReducida.CDSBuscaCondCompra.Close;
  DatosCompraReducida.CDSBuscaCondCompra.Params.ParamByName('Codigo').Value := DatosCompraReducida.CDSCompraCabCodigo.Value;
  DatosCompraReducida.CDSBuscaCondCompra.Open;
  IF wwLookupCondCompra.Execute THEN
    if wwLookupCondCompra.LookupTable.FieldByName('CodigoPago').AsString<>'' Then
      DatosCompraReducida.CDSCompraCabCondicionCompraSetText(DatosCompraReducida.CDSCompraCabCondicionCompra, wwLookupCondCompra.LookupTable.FieldByName('CodigoPago').AsString);
  DatosCompraReducida.CDSBuscaCondCompra.Close;
end;

procedure TFormCompraCtaCteReducida.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosCompraReducida.QBuscaComprob.Close;
  DatosCompraReducida.QBuscaComprob.ParamByName('Suc').Value := DatosCompraReducida.CDSCompraCabSucursalCompra.Value;
  DatosCompraReducida.QBuscaComprob.Open;
  IF NOT (DatosCompraReducida.QBuscaComprob.IsEmpty) THEN
    BEGIN
      IF wwBuscadorComprobantes.Execute THEN
        if wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString<>'' Then
          DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTESetText(DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTE, wwBuscadorComprobantes.LookupTable.FieldByName('id_comprobante').AsString);
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DatosCompraReducida.QBuscaComprob.Close;
end;

procedure TFormCompraCtaCteReducida.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraReducida.CDSCompraCabSucursalCompra.Clear;
      DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompraReducida.CDSCompraCabMUESTRASUCURSAL.Clear;
      DatosCompraReducida.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompraReducida.CDSCompraCabLetraFac.Clear;
      DatosCompraReducida.CDSCompraCabSucFac.Clear;
      DatosCompraReducida.CDSCompraCabNumeroFac.Clear;
    end;
end;

procedure TFormCompraCtaCteReducida.RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTE.Clear;
      DatosCompraReducida.CDSCompraCabMUESTRACOMPROBANTE.Clear;
      DatosCompraReducida.CDSCompraCabLetraFac.Clear;
      DatosCompraReducida.CDSCompraCabSucFac.Clear;
      DatosCompraReducida.CDSCompraCabNumeroFac.Clear;
    end;
end;

procedure TFormCompraCtaCteReducida.RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraReducida.CDSCompraCabCodigo.Clear;
      DatosCompraReducida.CDSCompraCabRAZONSOCIAL.Clear;
      DatosCompraReducida.CDSCompraCabCondicionCompra.Clear;
      DatosCompraReducida.CDSCompraCabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormCompraCtaCteReducida.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := True;
  SinBDE:=1;
  IF NOT (Assigned(DatosCompraReducida)) THEN
    DatosCompraReducida:= TDatosCompraReducida.Create(Application);
  dsBase.DataSet:=DatosCompraReducida.CDSCompraCab;
  wwBuscadorSucursal.LookupTable    :=DatosCompraReducida.CDSBuscaSucursal;
  wwBuscadorComprobantes.LookupTable:=DatosCompraReducida.CDSBuscaComprob;
  WITH DatosCompraReducida DO
    BEGIN
      AddClientDataSet(CDSCompraCab, DSPCompraCab);
      AddClientDataSet(CDSImpuestos, DSPImpuestos);
      AddClientDataSet(CDSPercepcionIVA, DSPPercepcionIVA);
      AddClientDataSet(CDSPercepcionIB, DSPPercepcionIB);
      AddClientDataSet(wwCDSCajaMov,DSPCajaMov);
      AddClientDataSet(wwCDSMovEfectivo,DSPMovEfectivo);

      CDSCompraCab.Params.ParamByName('TipoCpbte').Value := '';
      CDSCompraCab.Params.ParamByName('id').Value        := 0;


      CDSImpuestos.Params.ParamByName('id').Value:= 0;
      CDSPercepcionIB.Params.ParamByName('id').Value:= 0;

      CDSPercepcionIVA.Params.ParamByName('id').Value:= 0;

      //wwCDSCondPago.Params.ParamByName('id').Value:= 0;


      CDSCompraCab.Open;
      CDSImpuestos.Open;
      //wwCDSCondPago.Open;
      CDSPercepcionIB.Open;
      CDSPercepcionIVA.Open;
      wwCDSCajaMov.Open;
      wwCDSMovEfectivo.Open;

      CDSCompraCab.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      //wwCDSCondPago.EmptyDataSet;
      CDSPercepcionIB.EmptyDataSet;
      CDSPercepcionIVA.EmptyDataSet;
      wwCDSCajaMov.EmptyDataSet;
      wwCDSMovEfectivo.EmptyDataSet;

      AplicarMascarasNumericas;

    END;
   Tabla:='FcCompCab';
   Campo:='id_fc';
end;

procedure TFormCompraCtaCteReducida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with DatosCompraReducida DO
    begin
      CDSCompraCab.Close;
      CDSImpuestos.Close;
      CDSPercepcionIB.Close;
      CDSPercepcionIVA.Close;
    end;
  Action:=caFree;
  inherited;
end;

procedure TFormCompraCtaCteReducida.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCompraCtaCteReducida:=nil;
end;

procedure TFormCompraCtaCteReducida.RxDBECondCompraKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosCompraReducida.CDSCompraCabCondicionCompra.Clear;
      DatosCompraReducida.CDSCompraCabMUESTRACONDCOMPRA.Clear;
    end;
end;

procedure TFormCompraCtaCteReducida.AgregarExecute(Sender: TObject);
begin
  sbEstado.SimpleText:='';
  dbgIva.ReadOnly           :=False;
  dbgPercepcionIVA.ReadOnly :=False;
  dbgPercepcionIB.ReadOnly  :=False;
  pnCabecera.Enabled:=True;
  DatosCompraReducida.CDSImpuestos.EmptyDataSet;
  DatosCompraReducida.CDSPercepcionIVA.EmptyDataSet;
  DatosCompraReducida.CDSPercepcionIB.EmptyDataSet;
  DatosCompraReducida.CDSCompraCab.close;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSCompraCab.Open;

  DatosCompraReducida.CDSImpuestos.Close;
  DatosCompraReducida.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSImpuestos.Open;

  DatosCompraReducida.CDSPercepcionIB.Close;
  DatosCompraReducida.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSPercepcionIB.Open;

  DatosCompraReducida.CDSPercepcionIVA.Close;
  DatosCompraReducida.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSPercepcionIVA.Open;

  inherited;
  dbeFechaCompra.SetFocus;
  dbeFechaCompra.SelectAll;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIVAColEnter(
  Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIVA.SelectedIndex=1) or (dbgPercepcionIVA.SelectedIndex=2) Then
    dbgPercepcionIVA.SelectedIndex:=3;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIBColEnter(
  Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIB.SelectedIndex=1) or (dbgPercepcionIB.SelectedIndex=2) Then
    dbgPercepcionIB.SelectedIndex:=3;
end;

procedure TFormCompraCtaCteReducida.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
  if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormCompraCtaCteReducida.DBGrid1ColEnter(Sender: TObject);
begin
  inherited;
  if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormCompraCtaCteReducida.dbgPrecepcionIBColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIB.SelectedIndex=1) or (dbgPercepcionIB.SelectedIndex=2) Then
    dbgPercepcionIB.SelectedIndex:=3;
end;

procedure TFormCompraCtaCteReducida.dbgIvaEditButtonClick(Sender: TObject);
begin
  inherited;
  //DMMain.QBuscaIva.Close;
  //DMMain.QBuscaIva.Open;
  if BuscadorIva.Execute Then
    if BuscadorIva.LookupTable.FieldByName('codigo').AsString<>'' Then
      DatosCompraReducida.CDSImpuestosCODIGO_GRAVAMENSetText(DatosCompraReducida.CDSImpuestosCODIGO_GRAVAMEN,BuscadorIva.LookupTable.FieldByName('codigo').AsString);
  //DMMain.QBuscaIva.Close;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIVAEditButtonClick(
  Sender: TObject);
begin
  inherited;
  //DatosCompraReducida.cdsbusca.QBuscaPercepcionIVA.Close;
  //DMMain.QBuscaPercepcionIVA.Open;
  if BuscadorPercepcionIva.Execute Then
    if BuscadorPercepcionIva.LookupTable.FieldByName('codigo').AsString<>'' Then
      DatosCompraReducida.CDSPercepcionIVACODIGO_PERCEPCIONSetText(DatosCompraReducida.CDSPercepcionIVACODIGO_PERCEPCION,BuscadorPercepcionIva.LookupTable.FieldByName('codigo').AsString);
  //DMMain.QBuscaPercepcionIVA.Close;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIBEditButtonClick(
  Sender: TObject);
begin
  inherited;
  //DMMain.QBuscaPercepcionIB.Close;
  //DMMain.QBuscaPercepcionIB.Open;
  if BuscadorPercepcionIB.Execute Then
    if BuscadorPercepcionIB.LookupTable.FieldByName('codigo').AsString<>'' Then
      DatosCompraReducida.CDSPercepcionIBCODIGO_PERCEPCIONSetText(DatosCompraReducida.CDSPercepcionIBCODIGO_PERCEPCION,BuscadorPercepcionIB.LookupTable.FieldByName('codigo').AsString);
 // DMMain.QBuscaPercepcionIB.Close;
end;

procedure TFormCompraCtaCteReducida.dbgIvaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgIva.SelectedIndex<4 Then dbgIva.SelectedIndex:= dbgIva.SelectedIndex+1;
end;

procedure TFormCompraCtaCteReducida.ConfirmaExecute(Sender: TObject);
begin
  if DatosCompraReducida.CDSCompraCabFECHACOMPRA.AsString<>'' Then
    if DatosCompraReducida.CDSCompraCabCodigo.AsString<>'' Then
      if DatosCompraReducida.CDSCompraCabTOTAL.AsFloat>0 Then
        if DatosCompraReducida.CDSCompraCabSucFac.AsString <>'' Then
          if DatosCompraReducida.CDSCompraCabNumeroFac.AsString<> '' Then
            if DatosCompraReducida.CDSCompraCabSUCURSALCOMPRA.AsString<>'' Then
              if DatosCompraReducida.CDSCompraCabCondicionCompra.AsString<>'' Then
                if DatosCompraReducida.CDSCompraCabID_TIPOCOMPROBANTE.AsString<> '' Then
                  begin
                    IF DatosCompraReducida.CDSImpuestos.State in [dsInsert,dsEdit] Then
                        DatosCompraReducida.CDSImpuestos.Post;
                    IF DatosCompraReducida.CDSPercepcionIVA.State in [dsInsert,dsEdit] Then
                      DatosCompraReducida.CDSImpuestos.Post;
                    IF DatosCompraReducida.CDSPercepcionIB.State in [dsInsert,dsEdit] Then
                      DatosCompraReducida.CDSImpuestos.Post;
                     DatosCompraReducida.CDSCompraCabNROCPBTE.Value:=DatosCompraReducida.CDSCompraCabLetraFac.Value+DatosCompraReducida.CDSCompraCabSucFac.Value+DatosCompraReducida.CDSCompraCabNumeroFac.Value;
                    DatoNew     :=IntToStr(DatosCompraReducida.CDSCompraCabID_FC.Value);
                    TipoCpbte   :=DatosCompraReducida.CDSCompraCabTIPOCPBTE.Value;
                    inherited;
                    Recuperar.Execute;
                  end
                else
                  ShowMessage('Falta dato de tipo comprobante')
              else
                ShowMessage('Falta dato de Condicon de compra')
            else
              ShowMessage('Falta dato de Sucursal')
          else
            ShowMessage('Falta dato de Numero de Comprobante')
        else
          ShowMessage('Falta dato de Prefijo de Comprobante')
      else
        ShowMessage('Importe en cero')
    else
      ShowMessage('Falta Codigo Proveedor')
  else
    ShowMessage('Falta Fecha');
end;

procedure TFormCompraCtaCteReducida.CancelarExecute(Sender: TObject);
begin
  inherited;
  dbgIva.Visible:=TRUE;
  dbgPercepcionIVA.Visible:=True;
  dbgPercepcionIB.Visible:=true;
end;

procedure TFormCompraCtaCteReducida.dbgIvaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFormCompraCtaCteReducida.dbgPercepcionIVAKeyDown(
  Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  inherited;
    IF (Key = VK_LEFT) THEN
    BEGIN
      if (dbgPercepcionIVA.SelectedIndex = 3) THEN
        dbgPercepcionIVA.SelectedIndex := 0
      else
        if (dbgPercepcionIVA.SelectedIndex = 4) THEN
          dbgPercepcionIVA.SelectedIndex := 3;
      key := 0;
    END;

end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIBKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
    IF (Key = VK_LEFT) THEN
    BEGIN
      if (dbgPercepcionIB.SelectedIndex = 3) THEN
        dbgPercepcionIB.SelectedIndex := 0
      else
        if (dbgPercepcionIB.SelectedIndex = 4) THEN
          dbgPercepcionIB.SelectedIndex := 3;
      key := 0;
    END;

end;

procedure TFormCompraCtaCteReducida.dbgPrecepcionIVAEditButtonClick(
  Sender: TObject);
begin
  inherited;
  //DMMain.QBuscaPercepcionIVA.Close;
  //DMMain.QBuscaPercepcionIVA.Open;
  if BuscadorPercepcionIva.Execute Then
    if BuscadorPercepcionIva.LookupTable.FieldByName('codigo').AsString<>'' Then
      DatosCompraReducida.CDSPercepcionIVACODIGO_PERCEPCIONSetText(DatosCompraReducida.CDSPercepcionIVACODIGO_PERCEPCION,BuscadorPercepcionIva.LookupTable.FieldByName('codigo').AsString);
 // DMMain.QBuscaPercepcionIVA.Close;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIVAKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgPercepcionIVA.SelectedIndex<4 Then dbgPercepcionIVA.SelectedIndex:= dbgPercepcionIVA.SelectedIndex+1;
end;

procedure TFormCompraCtaCteReducida.dbgPercepcionIBKeyPress(
  Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgPercepcionIB.SelectedIndex<4 Then dbgPercepcionIB.SelectedIndex:= dbgPercepcionIB.SelectedIndex+1;
end;

procedure TFormCompraCtaCteReducida.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 1;
  FormBuscaCpbte.TipoCpbte1 := 'FC';
  FormBuscaCpbte.TipoCpbte2 := 'NC';
  FormBuscaCpbte.TipoCpbte3 := 'ND';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
   end;
end;

procedure TFormCompraCtaCteReducida.RecuperarExecute(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  sbEstado.SimpleText:='';
  DatosCompraReducida.CDSCompraCab.close;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosCompraReducida.CDSCompraCab.Open;

  DatosCompraReducida.CDSImpuestos.Close;
  DatosCompraReducida.CDSImpuestos.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraReducida.CDSImpuestos.Open;

  DatosCompraReducida.CDSPercepcionIB.Close;
  DatosCompraReducida.CDSPercepcionIB.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraReducida.CDSPercepcionIB.Open;

  DatosCompraReducida.CDSPercepcionIVA.Close;
  DatosCompraReducida.CDSPercepcionIVA.Params.ParamByName('id').Value:= StrToInt(DatoNew);
  DatosCompraReducida.CDSPercepcionIVA.Open;

  DatosCompraReducida.PerciveIva     := DatosCompraReducida.CDSProveedorRetiene_IVA.Value;
  DatosCompraReducida.PerciveIB      := DatosCompraReducida.CDSProveedorRetiene_IB.Value;
  with DatosCompraReducida DO
    begin
      IF PerciveIva = 'S' THEN
        BEGIN
          Codigo_PercepcionIva := CDSProveedorId_Perc_Iva.Value;
          CDSTasaPercepIVA.Close;
          CDSTasaPercepIVA.Params.ParamByName('id').value := Codigo_PercepcionIva;
          CDSTasaPercepIVA.Open;
          if not (CDSTasaPercepIVA.IsEmpty) then
            begin
              Tasa_PercepcionIva    := CDSTasaPercepIVATASA.AsFloat;
              Minimo_PercepcionIva  := CDSTasaPercepIVAMINIMOAPLICABLE.AsFloat;
              Detalle_PercepcionIVA := CDSTasaPercepIVADESCRIPCION.Value;
            end;
          CDSTasaPercepIVA.Close;
        END;
      IF PerciveIB = 'S' THEN
        BEGIN
          Codigo_PercepcionIB := CDSProveedorId_Perc_IBB.Value;
          CDSTasaPercepIIBB.Close;
          CDSTasaPercepIIBB.Params.ParamByName('id').value := Codigo_PercepcionIB;
          CDSTasaPercepIIBB.Open;
          if not(CDSTasaPercepIIBB.IsEmpty) then
            begin
              Tasa_PercepcionIB    := CDSTasaPercepIIBBTASA.AsFloat;
              Minimo_PercepcionIB  := CDSTasaPercepIIBBMINIMOAPLICABLE.AsFloat;
              Detalle_PercepcionIB := CDSTasaPercepIIBBDESCRIPCION.Value;
            end;
          CDSTasaPercepIIBB.Close;
        END;
    end;
  DatosCompraReducida.CDSProveedor.Close;
  pnPrincipal.Enabled:=True;
  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DecodeDate(DatosCompraReducida.CDSCompraCabFECHACOMPRA.AsDateTime,y,m,d);
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := DatosCompraReducida.CDSCompraCabFECHACOMPRA.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.Panels[0].Text:='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        Borrar.Enabled    :=False;
        Modificar.Enabled :=False;
      end
    else
      begin
        Borrar.Enabled    :=True;
        Modificar.Enabled :=True;
      end;
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  end;

  DatosCompraReducida.HabilitarLabel;
  DatoNew:=''+DatoNew+'';
  FormCompraCtaCteReducida.Caption:='Comprobante de Compra Reducido -- '+DatosCompraReducida.CDSCompraCabFECHA_HORA.AsString+'//'+Copy(DatosCompraReducida.CDSCompraCabUSUARIO.Value,1,15);

end;

procedure TFormCompraCtaCteReducida.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  dbgIva.ReadOnly           :=DSBase.State=dsBrowse;
  dbgPercepcionIB.ReadOnly  :=DSBase.State=dsBrowse;
  dbgPercepcionIVA.ReadOnly :=DSBase.State=dsBrowse;
 // DatosCompraReducida.wwCDSCompraCab.ReadOnly:=DSBase.State=dsBrowse;
end;

procedure TFormCompraCtaCteReducida.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormCompraCtaCteReducida.BorrarExecute(Sender: TObject);
begin
  inherited;
  sbEstado.SimpleText:='';
  dbgIva.ReadOnly           :=False;
  dbgPercepcionIVA.ReadOnly :=False;
  dbgPercepcionIB.ReadOnly  :=False;
  pnCabecera.Enabled:=True;
  DatosCompraReducida.CDSImpuestos.EmptyDataSet;
  DatosCompraReducida.CDSPercepcionIVA.EmptyDataSet;
  DatosCompraReducida.CDSPercepcionIB.EmptyDataSet;

  DatosCompraReducida.CDSCompraCab.close;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('TipoCpbte').Clear;
  DatosCompraReducida.CDSCompraCab.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSCompraCab.Open;

  DatosCompraReducida.CDSImpuestos.Close;
  DatosCompraReducida.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSImpuestos.Open;

  DatosCompraReducida.CDSPercepcionIB.Close;
  DatosCompraReducida.CDSPercepcionIB.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSPercepcionIB.Open;

  DatosCompraReducida.CDSPercepcionIVA.Close;
  DatosCompraReducida.CDSPercepcionIVA.Params.ParamByName('id').Clear;
  DatosCompraReducida.CDSPercepcionIVA.Open;

end;

procedure TFormCompraCtaCteReducida.dbeFechaCompraExit(Sender: TObject);
begin
  inherited;
  if (dbeFechaCompra.Date>Date) or ( YearOf(dbeFechaCompra.Date)<1900) Then
    begin
      if MessageDlg('Fecha Fuera de Rango... Acepta Igual???',mtConfirmation,mbYesNo,0,mbNo)=mrNo then
        begin
          FormCompraCtaCteReducida.dbeFechaCompra.Clear;
          FormCompraCtaCteReducida.dbeFechaCompra.SetFocus;
        end;
    end;
  if (DatosCompraReducida.CDSCompraCabFECHAFISCAL.AsString='') Then
    begin
      if (FormCompraCtaCteReducida.dbeFechaCompra.Date>0) then
        DatosCompraReducida.CDSCompraCabFECHAFISCALSetText(DatosCompraReducida.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));
    end
  else
    if (CompareDate(DatosCompraReducida.CDSCompraCabFECHAFISCAL.AsDateTime,DatosCompraReducida.CDSCompraCabFECHACOMPRA.AsDateTime)<>0) {and (ControlaFechaFiscal.Checked)} Then
      if MessageDlg('Actualiza Fecha Fisca...??',mtConfirmation,mbYesNo,0,mbNo)=mrYes then
        DatosCompraReducida.CDSCompraCabFECHAFISCALSetText(DatosCompraReducida.CDSCompraCabFECHAFISCAL,DateToStr(dbeFechaCompra.date));



//  DatosCompraReducida.CDSCompraCabFECHACOMPRASetText(DatosCompraReducida.CDSCompraCabFECHACOMPRA,dbeFechaCompra.Text);
end;

procedure TFormCompraCtaCteReducida.AgregarProveedorExecute(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormProveedor_2)) Then
    FormProveedor_2:=TFormProveedor_2.Create(Application);
  FormProveedor_2.Agregar.Execute;
end;

end.
