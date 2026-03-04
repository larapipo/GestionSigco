unit UFacModelo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, StdCtrls, DBCtrls, Grids, DBGrids, ExtCtrls, ComCtrls, Mask,
  Db, JvComponentBase, ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel,
  JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr, JvAppStorage,
  JvAppIniStorage, System.Actions, Datasnap.DBClient, Datasnap.Provider,
  Vcl.ActnList, Vcl.Buttons, Vcl.ToolWin, CompBuscador, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList;

type
  TFormFacModelo = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    dbeConVta: TDBEdit;
    dbeNombre: TDBEdit;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeMuestraVendedor: TDBEdit;
    pcDetalleFactura: TPageControl;
    PagDetalles: TTabSheet;
    Bevel8: TBevel;
    Bevel21: TBevel;
    DBText60: TDBText;
    dbtTotal: TDBText;
    Label1: TLabel;
    DBGrillaDetalle: TDBGrid;
    PagPieCpbte: TTabSheet;
    Label6: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Bevel6: TBevel;
    Bevel22: TBevel;
    Bevel28: TBevel;
    DBText1: TDBText;
    DBText5: TDBText;
    DBText7: TDBText;
    DBText6: TDBText;
    Label21: TLabel;
    Bevel32: TBevel;
    DBText3: TDBText;
    DBText9: TDBText;
    Label2: TLabel;
    Label4: TLabel;
    DBText2: TDBText;
    DBGrillaIva: TDBGrid;
    dbeDscto: TDBEdit;
    BuscarArticulo: TAction;
    BuscarCliente: TAction;
    BuscarLdr: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarCondVta: TAction;
    BuscarTipoCpbte: TAction;
    BuscarVendedor: TAction;
    dbeLetra: TDBEdit;
    dbcGrupo: TDBLookupComboBox;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    RxCCodigo: TJvDBComboEdit;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCConVta: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    CDSBuscadorID_FC: TIntegerField;
    CDSBuscadorTIPOCPBTE: TStringField;
    CDSBuscadorCLASECPBTE: TStringField;
    CDSBuscadorCODIGO: TStringField;
    CDSBuscadorNOMBRE: TStringField;
    RxLabel59: TJvLabel;
    RxLabel62: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel7: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel8: TJvLabel;
    DBText4: TDBText;
    DBText8: TDBText;
    JvLabel1: TJvLabel;
    JvLabel2: TJvLabel;
    DBText10: TDBText;
    ComBuscadorConVta: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorVendedor: TComBuscador;
    ComBuscadorComprobantes: TComBuscador;
    ComBuscadorLdr: TComBuscador;
    procedure FormCreate(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
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
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarLdrExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarCondVtaExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarVendedorExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure rxcVendedorKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormFacModelo: TFormFacModelo;

PROCEDURE UltimoComprobante;

implementation

uses DMFacModelo, UDMain_FD, ComposicionPrecio,
  UBuscadorArticulos, DMStoreProcedureForm, UBuscadorClientes;

{$R *.DFM}

PROCEDURE UltimoComprobante;
BEGIN
  WITH DatosModelo,DMStoreProcedure, FormFacModelo DO
    BEGIN
        BEGIN
          //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
          IF (CDSModeloCabLETRA.AsString <> '') AND (CDSModeloCabCLASECPBTE.Value <> '') THEN
            BEGIN
              spNumeroCpbte.Close;
              spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSModeloCabLETRA.AsString;
              spNumeroCpbte.ParamByName('Sucursal').Value    := CDSModeloCabSucursal.Value;
              spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSModeloCabCLASECPBTE.Value;
              spNumeroCpbte.ParamByName('TipoComp').Value    := CDSModeloCabTIPOCPBTE.AsString;
              spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
              spNumeroCpbte.ExecProc;
              CDSModeloCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
              CDSModeloCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
              CDSModeloCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
              CDSModeloCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
              CDSModeloCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
              Imprime                             := spNumeroCpbte.ParamByName('Imprime').AsString;
              spNumeroCpbte.CLose;
            END;
        END;
    END;
END;

procedure TFormFacModelo.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  pcDetalleFactura.ActivePageIndex:=0;
  IF NOT (Assigned(DatosModelo)) THEN
    DatosModelo := TDatosModelo.Create(Application);
  if DSBase.DataSet=nil Then
  DSBase.DataSet:=DatosModelo.CDSModeloCab;
  WITH DatosModelo DO
    BEGIN
      AddClientDataset(CDSModeloCab, DSPModeloCab);
      AddClientDataset(CDSModeloDet, DSPModeloDet);
      AddClientDataset(CDSImpuestos,DSPImpuestos);

      CDSModeloCab.Open;
      CDSModeloDet.Open;
      CDSImpuestos.Open;
      CDSListaGrupo.OPen;

      CDSModeloCab.EmptyDataSet;
      CDSModeloDet.EmptyDataSet;
      CDSImpuestos.EmptyDataSet;
      AplicarMascarasNumericas;
      // Asigno la cantidad de renglones de la factura;
      Renglones := DMMain_FD.Renglones;     //2.QOpciones.Fields[0].AsString<>'' Then
      if Renglones<1 then Renglones:=20;
    END;
  pnPrincipal.Enabled:=True;
  Tabla:='FcModeloCab';
  Campo:='id_fc';

end;

procedure TFormFacModelo.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 4;
  IF DBGrillaDetalle.SelectedIndex = 7 THEN
    DBGrillaDetalle.SelectedIndex := 6;
  IF (DBGrillaDetalle.SelectedIndex = 5) and (DBGrillaDetalle.Fields[0].AsString<>'') THEN
    BEGIN
      IF (DatosModelo.CDSModeloDet.State IN [dsEdit, dsInsert]) AND
        (DatosModelo.CDSModeloDetModo_Gravamen.Value = 'M') THEN
        BEGIN
          FormComposicionPrecio              := TFormComposicionPrecio.Create(Application);
          FormComposicionPrecio.ValorGravado := DatosModelo.CDSModeloDetUNITARIO_GRAVADO.AsFloat;
          FormComposicionPrecio.ValorExento  := DatosModelo.CDSModeloDetUNITARIO_EXENTO.AsFloat;
          FormComposicionPrecio.ShowModal;
          // FreeAndNil(ComposicionPrecioForm);
          DatosModelo.CDSModeloDetUNITARIO_EXENTO.AsFloat  := FormComposicionPrecio.ValorExento;
          DatosModelo.CDSModeloDetUNITARIO_GRAVADO.AsFloat := FormComposicionPrecio.ValorGravado;
          DatosModelo.CDSModeloDetUnitario_TotalSetText(DatosModelo.CDSModeloDetUNITARIO_TOTAL,DatosModelo.CDSModeloDetUNITARIO_TOTAL.AsString);
        END;
    END;


end;

procedure TFormFacModelo.DBGrillaDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormFacModelo.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) then
    BEGIN
      if (DBGrillaDetalle.SelectedIndex = 1) THEN
        DBGrillaDetalle.SelectedIndex := 0
      else
        if (DBGrillaDetalle.SelectedIndex = 4) THEN
          DBGrillaDetalle.SelectedIndex := 1
        else
          if (DBGrillaDetalle.SelectedIndex = 5) THEN
            DBGrillaDetalle.SelectedIndex := 4
          else
            if (DBGrillaDetalle.SelectedIndex = 6) THEN
              DBGrillaDetalle.SelectedIndex := 5;
      key := 0;
    END;
 
end;

procedure TFormFacModelo.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 5) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE
    IF (Key = #10) THEN
      BEGIN
        Key := #0;
        IF DBGrillaDetalle.SelectedField = DatosModelo.CDSModeloDetCodigoArticulo THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;

end;

procedure TFormFacModelo.BuscarArticuloExecute(Sender: TObject);
begin
  if (DSBase.State in [dsInsert,dsEdit]) then
    begin
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
      //FormBuscadorArticulos.CampoNro          := 1;
      FormBuscadorArticulos.Param1:=1;
      FormBuscadorArticulos.Param2:=3;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto();
      FormBuscadorArticulos.Esquema     := -1;
      if FormBuscadorArticulos.Visible=False Then
        FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        DatosModelo.CDSModeloDetCodigoArticuloSetText(DatosModelo.CDSModeloDetCodigoArticulo, FormBuscadorArticulos.Codigo);
    end;
end;

procedure TFormFacModelo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DatosModelo.CDSListaGrupo.Close;
  Action:=caFree;
end;

procedure TFormFacModelo.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacModelo:=nil;
end;

procedure TFormFacModelo.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabSUCURSAL.Clear;
      DatosModelo.CDSModeloCabID_TIPOCOMPROBANTE.Clear;
      DatosModelo.CDSModeloCabMUESTRASUCURSAL.Clear;
      DatosModelo.CDSModeloCabMUESTRACOMPROBANTE.Clear;
      DatosModelo.CDSModeloCabLETRA.Clear;
    end;
end;

procedure TFormFacModelo.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabID_TIPOCOMPROBANTE.Clear;
      DatosModelo.CDSModeloCabMUESTRACOMPROBANTE.Clear;
      DatosModelo.CDSModeloCabLETRA.Clear;
    end;

end;

procedure TFormFacModelo.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabCODIGO.Clear;
      DatosModelo.CDSModeloCabNOMBRE.Clear;
      DatosModelo.CDSModeloCabLDR.Clear;
      DatosModelo.CDSModeloCabMUESTRALDR.Clear;
      DatosModelo.CDSModeloCabCONDICIONVTA.Clear;
      DatosModelo.CDSModeloCabMUESTRACONDVENTA.Clear;
    end;
end;

procedure TFormFacModelo.RxCLdrKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabLDR.Clear;
      DatosModelo.CDSModeloCabMUESTRALDR.Clear;
    end;
end;

procedure TFormFacModelo.RxCDepositoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabDEPOSITO.Clear;
      DatosModelo.CDSModeloCabMUESTRADEPOSITO.Clear;
    end;

end;

procedure TFormFacModelo.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosModelo.CDSModeloCabCODIGOSetText(DatosModelo.CDSModeloCabCODIGO,FormBuscadorClientes.Codigo);
 end;

procedure TFormFacModelo.BuscarLdrExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSBuscaLdr.Close;
  DatosModelo.CDSBuscaLdr.Params.ParamByName('Codigo').Value := DatosModelo.CDSModeloCabCodigo.Value;
  DatosModelo.CDSBuscaLdr.Open;
  comBuscadorLdr.Execute;
  if comBuscadorLdr.rOk Then
    DatosModelo.CDSModeloCabLDRSetText(DatosModelo.CDSModeloCabLDR, IntToSTr(comBuscadorLdr.Id));
  DatosModelo.CDSBuscaLdr.Close;
end;

procedure TFormFacModelo.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSBuscaSucursal.Close;
  DatosModelo.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosModelo.CDSModeloCabSucursalSetText(DatosModelo.CDSModeloCabSucursal, IntToStr(comBuscadorSucursal.id));
  DatosModelo.CDSBuscaSucursal.Close;
end;

procedure TFormFacModelo.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSBuscaDeposito.Close;
  DatosModelo.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.Rok Then
    DatosModelo.CDSModeloCabDepositoSetText(DatosModelo.CDSModeloCabDeposito, IntToStr(comBuscadorDeposito.id));
 DatosModelo.CDSBuscaDeposito.Close;

end;

procedure TFormFacModelo.BuscarCondVtaExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSModeloCabCONDICIONVTA.Clear;
  DatosModelo.CDSBuscaCondVenta.Close;
  DatosModelo.CDSBuscaCondVenta.Params.ParamByName('Codigo').Value := DatosModelo.CDSModeloCabCodigo.Value;
  DatosModelo.CDSBuscaCondVenta.Open;
  ComBuscadorConVta.Execute;
  if comBuscadorConVta.rOk Then
    DatosModelo.CDSModeloCabCondicionVtaSetText(DatosModelo.CDSModeloCabCondicionVta, IntToStr(comBuscadorConVta.Id));
  DatosModelo.CDSBuscaCondVenta.Close;

end;

procedure TFormFacModelo.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSModeloCabID_TIPOCOMPROBANTE.Clear;
  DatosModelo.CDSBuscaComprob.Close;
  DatosModelo.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosModelo.CDSModeloCabSucursal.Value;
  DatosModelo.CDSBuscaComprob.Open;
  IF not (DatosModelo.CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      ComBuscadorComprobantes.Execute;
      if ComBuscadorComprobantes.rOk Then
        DatosModelo.CDSModeloCabID_TIPOCOMPROBANTESetText(DatosModelo.CDSModeloCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DatosModelo.CDSBuscaComprob.Close;
end;

procedure TFormFacModelo.BuscarVendedorExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSBuscaVendedor.Close;
  DatosModelo.CDSBuscaVendedor.Open;
  comBuscadorVendedor.Execute;
  if comBuscadorVendedor.rOk Then
      DatosModelo.CDSModeloCabVENDEDORSetText(DatosModelo.CDSModeloCabVENDEDOR,comBuscadorVendedor.Id);
  DatosModelo.CDSBuscaVendedor.Close;
end;

procedure TFormFacModelo.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormFacModelo.DSBaseStateChange(Sender: TObject);
begin
  inherited;
 // pnPrincipal.Enabled:=True;
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State IN [dsBrowse];
  dbeDscto.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
end;

procedure TFormFacModelo.rxcVendedorKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosModelo.CDSModeloCabVENDEDOR.Clear;
      DatosModelo.CDSModeloCabMUESTRAVENDEDOR.Clear;
    end;

end;

procedure TFormFacModelo.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
   IF (RxCCodigo.Text = '') OR
      (RxCLdr.Text = '') OR
      (RxCSucursal.Text = '') OR
      (RxCDeposito.Text = '') OR
      (DatosModelo.CDSModeloCabMUESTRACOMPROBANTE.Value='') OR
      (RxCConVta.TExt='') THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleFactura.ActivePageIndex <> 0 THEN
          pcDetalleFactura.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
      END
    else
      begin
        pnCabecera.Enabled:=False;
        pcDetalleFactura.Enabled:=True;
      end;

end;

procedure TFormFacModelo.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=ComBuscadorBase.Id;
      Recuperar.Execute;
    end;
  CDSBuscador.Close;
end;

procedure TFormFacModelo.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=DatosModelo.CDSModeloCabID_FC.AsString;
  inherited;
  Recuperar.Execute;
end;

procedure TFormFacModelo.AgregarExecute(Sender: TObject);
begin
  DatosModelo.CDSModeloCab.Close;
  DatosModelo.CDSModeloCab.Params.ParamByName('id').Clear;
  DatosModelo.CDSModeloCab.Open;
  DatosModelo.CDSModeloDet.Close;
  DatosModelo.CDSModeloDet.Params.ParamByName('id').Clear;
  DatosModelo.CDSModeloDet.Open;
  DatosModelo.CDSImpuestos.Close;
  DatosModelo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosModelo.CDSImpuestos.Open;
  inherited;
  RxCSucursal.SetFocus;
end;

procedure TFormFacModelo.CancelarExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSModeloCab.Close;
  DatosModelo.CDSModeloCab.Params.ParamByName('id').Clear;
  DatosModelo.CDSModeloCab.Open;
  DatosModelo.CDSModeloDet.Close;
  DatosModelo.CDSModeloDet.Params.ParamByName('id').Clear;
  DatosModelo.CDSModeloDet.Open;
  DatosModelo.CDSImpuestos.Close;
  DatosModelo.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosModelo.CDSImpuestos.Open;
end;

procedure TFormFacModelo.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosModelo.CDSModeloCab.Close;
  DatosModelo.CDSModeloCab.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosModelo.CDSModeloCab.Open;
  DatosModelo.CDSModeloDet.Close;
  DatosModelo.CDSModeloDet.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  DatosModelo.CDSModeloDet.Open;
  DatosModelo.CDSImpuestos.Close;
  DatosModelo.CDSImpuestos.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  DatosModelo.CDSImpuestos.Open;
  DatoNew:=''+DatoNew+'';
end;

end.