unit URemitoObra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,Variants,
  Db,   ActnList, Buttons, ToolWin, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, SqlExpr, JvExMask, JvToolEdit, StdCtrls, DBCtrls, Grids, DBGrids,
  JvAppIniStorage, System.Actions, frxClass, frxDBSet, Vcl.ComCtrls, Vcl.Mask,
  Vcl.ExtCtrls, JvAppStorage, CompBuscador, Vcl.Menus, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormRemitoObra = class(TFormABMBase)
    pcDetalleRto: TPageControl;
    PagDetalles: TTabSheet;
    Label17: TLabel;
    Bevel21: TBevel;
    DBText60: TDBText;
    Label1: TLabel;
    Bevel2: TBevel;
    DBText10: TDBText;
    dbeObservaciones2: TDBEdit;
    dbeObservaciones1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    Panel2: TPanel;
    DBCheckBox1: TDBCheckBox;
    dbgExitencias: TDBGrid;
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText73: TDBText;
    DBText4: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeEntrega: TDBEdit;
    BuscarSucursal: TAction;
    BuscarTipoCpbte: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    BuscarObra: TAction;
    dbeFecha: TJvDBDateEdit;
    RxCCodigo: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    RxLabel5: TJvLabel;
    RxLabel58: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel6: TJvLabel;
    Imprimir: TAction;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    frRemitos: TfrxReport;
    frxDbCabecera: TfrxDBDataset;
    frxDBDetalle: TfrxDBDataset;
    gbLista: TGroupBox;
    dbcLista: TDBLookupComboBox;
    Recalcular: TAction;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    PopupMenu1: TPopupMenu;
    Recalcular1: TMenuItem;
    DBText1: TDBText;
    DBText2: TDBText;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure RxCDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleDragDrop(Sender, Source: TObject; X,
      Y: Integer);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarObraExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RxCCodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcDetalleRtoEnter(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure RecalcularExecute(Sender: TObject);
    procedure dbcListaClick(Sender: TObject);
    procedure Recalcular1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FormRemitoObra: TFormRemitoObra;

PROCEDURE UltimoComprobante;

implementation

uses DMRemitosObra, UBuscadorArticulos,UConsultaStock, UDMain_FD,
  UBuscadorObras, UBuscadorCpbte, DMStoreProcedureForm,
  DMBuscadoresForm, UBuscadorComprobantes;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosRemitosObra,DMStoreProcedure, FormRemitoObra  DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSRtoCabLETRARTO.AsString <> '') AND (CDSRtoCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSRtoCabLETRARTO.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSRtoCabSucursal.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSRtoCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSRtoCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero :=
                  StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSRtoCabSUCRTOSetText(CDSRtoCabSUCRTO,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSRtoCabNumeroRtoSetText(CDSRtoCabNumeroRto,IntToStr(Numero));
            END;
        // el desgloza iva lo manejo segun el cliente. cuando levanto los datos del mismo
        //  wwCDSRtoCabDESGLOZAIVA.Value       := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
        //  wwCDSRtoCabINGRESA_A_CTACTE.Value  := spNumeroCpbte.ParamByName('Va_CtaCte').AsString;
        //  wwCDSRtoCabINGRESA_LIBRO_IVA.Value := spNumeroCpbte.ParamByName('Va_Libro_Iva').AsString;
          CDSRtoCabTIPOCPBTE.Value         := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSRtoCabCLASECPBTE.Value        := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          Imprime                          := spNumeroCpbte.ParamByName('Imprime').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSRtoCabNroCpbte.AsString := CDSRtoCabLetraRto.AsString + CDSRtoCabSucRto.AsString +
        CDSRtoCabNumeroRto.AsString;
    END;
END;


procedure TFormRemitoObra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DatosRemitosObra.CDSRtoCab.Close;
  DatosRemitosObra.CDSRtoDet.Close;
  DatosRemitosObra.CDSRtoSubDetalle.Close;
  Action:=caFree;

end;

procedure TFormRemitoObra.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  SinBDE  :=2;
  pcDetalleRto.ActivePageIndex:=0;
  IF NOT (Assigned(DatosRemitosObra)) THEN
    DatosRemitosObra := TDatosRemitosObra.Create(Self);
  DSBase.DataSet:=DatosRemitosObra.CDSRtoCab;

  AddClientDataSet(DatosRemitosObra.CDSRtoCab,DatosRemitosObra.DSPRtoCab);
  AddClientDataSet(DatosRemitosObra.CDSRtoDet,DatosRemitosObra.DSPRtoDet);
  AddClientDataSet(DatosRemitosObra.CDSRtoSubDetalle,DatosRemitosObra.DSPRtoSubDetalle);

  DatosRemitosObra.CDSRtoCab.close;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoCab.Open;

  DatosRemitosObra.CDSRtoDet.Close;
  DatosRemitosObra.CDSRtoDet.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoDet.Open;

  DatosRemitosObra.CDSRtoSubDetalle.Close;
  DatosRemitosObra.CDSRtoSubDetalle.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoSubDetalle.Open;


  DatosRemitosObra.AplicarMascarasNumericas;

  DatosRemitosObra.CDSListaPrecios.Close;
  DatosRemitosObra.CDSListaPrecios.Params.ParamByName('uso').Value:='*';
  DatosRemitosObra.CDSListaPrecios.Open;

  Tabla:='Rto_ObraCab';
  Campo:='id_rto';

end;

procedure TFormRemitoObra.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRemitoObra:=nil;
end;

procedure TFormRemitoObra.FormResize(Sender: TObject);
begin
  inherited;
  if FormRemitoObra<>nil then
    if FormRemitoObra.Width<>750 then
      FormRemitoObra.Width:=750;
end;

procedure TFormRemitoObra.ImprimirExecute(Sender: TObject);
begin
  inherited;

  DatosRemitosObra.QComprob.Close;
  DatosRemitosObra.QComprob.ParamByName('id').Value :=DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTE.Value;
  DatosRemitosObra.QComprob.ParamByName('suc').Value:=DatosRemitosObra.CDSRtoCabSUCURSAL.Value;
  DatosRemitosObra.QComprob.Open;

  frRemitos.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+DatosRemitosObra.QComprobREPORTE.AsString);

  frRemitos.PrintOptions.Copies :=DatosRemitosObra.QComprobCOPIAS.Value;
  DatosRemitosObra.QComprob.Close;
  frRemitos.PrepareReport;
  frRemitos.ShowReport
end;

procedure TFormRemitoObra.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosRemitosobra.CDSBuscaSucursal.Close;
  DatosRemitosobra.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosRemitosObra.CDSRtoCabSucursalSetText(DatosRemitosObra.CDSRtoCabSucursal, IntToStr(comBuscadorSucursal.Id));
  DatosRemitosobra.CDSBuscaSucursal.Close;
end;

procedure TFormRemitoObra.RxCSucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitosObra.CDSRtoCabSUCURSAL.Clear;
      DatosRemitosObra.CDSRtoCabMUESTRASUCURSAL.Clear;
      DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      DatosRemitosObra.CDSRtoCabMUESTRACOMPROBANTE.Clear;
      DatosRemitosObra.CDSRtoCabLETRARTO.Clear;
      DatosRemitosObra.CDSRtoCabSUCRTO.Clear;
      DatosRemitosObra.CDSRtoCabNUMERORTO.Clear;
    end;

end;

procedure TFormRemitoObra.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTE.Clear;
      DatosRemitosObra.CDSRtoCabMUESTRACOMPROBANTE.Clear;
      DatosRemitosObra.CDSRtoCabLETRARTO.Clear;
      DatosRemitosObra.CDSRtoCabSUCRTO.Clear;
      DatosRemitosObra.CDSRtoCabNUMERORTO.Clear;
    end;

end;

procedure TFormRemitoObra.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frRemitos.DesignReport;
end;

procedure TFormRemitoObra.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  DMBuscadores.CDSBuscaComprob.Close;
  DMBuscadores.CDSBuscaComprob.CommandText:='';
  DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal = :suc and ' +
                                            ' compra_venta = ''V'' and (tipo_comprob= ''RO'') ';

  DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value         := DatosRemitosObra.CDSRtoCabSucursal.Value;


  if Not(Assigned(FormBuscaComprobantes)) then
    FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
  FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
  FormBuscaComprobantes.ShowModal;
  if FormBuscaComprobantes.ModalResult=mrOk Then
    DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTESetText(DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
  DMBuscadores.CDSBuscaComprob.Close;
end;

procedure TFormRemitoObra.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosRemitosObra.CDSBuscaDeposito.Close;
  DatosRemitosObra.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    DatosRemitosObra.CDSRtoCabDepositoSetText(DatosRemitosObra.CDSRtoCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosRemitosObra.CDSBuscaDeposito.Close;
end;

procedure TFormRemitoObra.RxCDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitosObra.CDSRtoCabDEPOSITO.Clear;
      DatosRemitosObra.CDSRtoCabMUESTRADEPOSITO.Clear;
    end;
end;

procedure TFormRemitoObra.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.Param1:=2;    // 1 Venta, 2 Compra, 3 Compra/Venta
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.Param3:=3;

  //*************************************************************************
//  DatosRemitosObra.CDSRtoCabLISTAPRECIO.Value:= DMMain_FD.ListaPorDefecto(DatosRemitosObra.CDSRtoCabSUCURSAL.AsInteger);

  FormBuscadorArticulos.ListaPrecio := DatosRemitosObra.CDSRtoCabLISTAPRECIO.Value;
  FormBuscadorArticulos.Esquema     := -1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosRemitosObra.CDSRtoDetCodigo.Text   :=  FormBuscadorArticulos.Codigo;

end;

procedure TFormRemitoObra.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 3;
  if DBGrillaDetalle.SelectedIndex=3 Then
    begin
      if (DMMain_FD.VerStock) and (DatosRemitosObra.CDSRtoDetAFECTA_STOCK.Value='S') Then
        begin
          DatosRemitosObra.CDSExistencia.Close;
          DatosRemitosObra.CDSExistencia.Params.ParamByName('Unidad').Value:='V';
          DatosRemitosObra.CDSExistencia.Params.ParamByName('Codigo').Value:=DatosRemitosObra.CDSRtoDetCODIGO.Value;
          DatosRemitosObra.CDSExistencia.Params.ParamByName('usuario').AsFloat:=DMMain_FD.UsuarioActivoId;
          DatosRemitosObra.CDSExistencia.Open;
          dbgExitencias.Visible:=True;
        end;
    end
  else
    dbgExitencias.Visible:=False;

end;

procedure TFormRemitoObra.DBGrillaDetalleDragDrop(Sender, Source: TObject;
  X, Y: Integer);
begin
  inherited;
 if (DatosRemitosObra.CDSRtoCab.State in [dsInsert,dsEdit]) Then
    begin
      DatosRemitosObra.CDSRtoDetCODIGOSetText(DatosRemitosObra.CDSRtoDetCODIGO, (Source as TDBGrid).DataSource.DataSet.FieldByName('Codigo_stk').AsString);
      DatosRemitosObra.CDSRtoDetCantidadSetText(DatosRemitosObra.CDSRtoDetCantidad,'1');
      DatosRemitosObra.CDSRtoDetUnitario_TotalSetText(DatosRemitosObra.CDSRtoDetUnitario_Total,(Source as TDBGrid).DataSource.DataSet.FieldByName('MuestraPrecio').Value);
      DatosRemitosObra.CDSRtoDet.Append;
    end;  

end;

procedure TFormRemitoObra.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 4) THEN
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
        IF DBGrillaDetalle.SelectedField = DatosRemitosObra.CDSRtoDetCODIGO THEN
           BuscarArticulo.Execute;
      END
    else
      if (key = #27) then
        DBGrillaDetalle.DataSource.DataSet.Cancel;
end;

procedure TFormRemitoObra.BuscarObraExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorObras)) Then
    FormBuscadorObras:=TFormBuscadorObras.Create(Application);
  FormBuscadorObras.ShowModal;
  if FormBuscadorObras.Codigo>-1 Then
    DatosRemitosObra.CDSRtoCabCODIGOSetText(DatosRemitosObra.CDSRtoCabCODIGO,IntToStr(FormBuscadorObras.Codigo));
end;

procedure TFormRemitoObra.ConfirmaExecute(Sender: TObject);
begin
  DatoNew:=IntToStr(DatosRemitosObra.CDSRtoCabID_RTO.Value);
  TipoCpbte   :=DatosRemitosObra.CDSRtoCabTIPOCPBTE.Value;
  inherited;
  Recuperar.Execute;
end;

procedure TFormRemitoObra.dbcListaClick(Sender: TObject);
begin
  inherited;
  Recalcular.Execute;
end;

procedure TFormRemitoObra.Recalcular1Click(Sender: TObject);
begin
  inherited;
  Modificar.Execute;
  Recalcular.Execute;
end;

procedure TFormRemitoObra.RecalcularExecute(Sender: TObject);
VAR Puntero,Puntero2:TBookmark;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  if (Not(VarIsNull(dbcLista.KeyValue))) and (Trim(dbcLista.Text)<>'') Then
    begin
      Puntero:=DatosRemitosObra.CDSRtoDet.GetBookmark;
      DatosRemitosObra.CDSRtoDet.First;
      DatosRemitosObra.CDSRtoDet.DisableControls;
      while Not(DatosRemitosObra.CDSRtoDet.Eof) DO
        begin
          Puntero2:=DatosRemitosObra.CDSRtoDet.GetBookmark;
          DatosRemitosObra.CDSRtoDet.edit;

          DatosRemitosObra.QMonedas.Close;
          DatosRemitosObra.QMonedas.ParamByName('id').Value := DatosRemitosObra.CDSStockMONEDA.Value;
          DatosRemitosObra.QMonedas.Open;
          DatosRemitosObra.CDSRtoDetMUESTRAMONEDA.Value   := DatosRemitosObra.QMonedasSIGNO.Value;
          if DatosRemitosObra.QMonedasCOTIZACION.AsString<>'' then
            DatosRemitosObra.CDSRtoDetCOTIZACION.AsFloat := DatosRemitosObra.QMonedasCOTIZACION.AsFloat
          else
            DatosRemitosObra.CDSRtoDetCOTIZACION.AsFloat:=1;
          DatosRemitosObra.QMonedas.Close;


          DMMain_FD.CalculaPrecioVta_FD ('N',DMMain_FD.IdListaProveedor, DatosRemitosObra.CDSRtoCabLISTAPRECIO.Value,DatosRemitosObra.CDSRtoCabSUCURSAL.Value,DatosRemitosObra.CDSRtoCabDEPOSITO.Value,
                                         DatosRemitosObra.CDSRtoDetCODIGO.AsString,DatosRemitosObra.CDSRtoCabCODIGO.AsString, DatosRemitosObra.CDSRtoCabTIPOCPBTE.Value,
                                         DatosRemitosObra.CDSRtoDetCOTIZACION.AsFloat, 1,
                                         Gravado,Exento,Total,Iva,Margen,Dscto,PFinal);

          DatosRemitosObra.CDSRtoDetUNITARIO_GRAVADO.AsFloat := Gravado;
          DatosRemitosObra.CDSRtoDetUNITARIO_EXENTO.AsFloat  := Exento;
          DatosRemitosObra.CDSRtoDetUNITARIO_TOTAL.AsFloat   := Total;
          //DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
          //DatosRemitosObra.CDSRtoDetMARGEN.ASFloat          :=Margen;
         // DatosVentas.CDSVentaDetDESCUENTO.ASFloat       :=Dscto;

     //     DatosVentas.CalculaPrecioVta;
          DatosRemitosObra.CDSRtoDetCantidadSetText(DatosRemitosObra.CDSRtoDetCantidad,DatosRemitosObra.CDSRtoDetCantidad.AsString);
          DatosRemitosObra.CDSRtoDet.GotoBookmark(Puntero2);
          DatosRemitosObra.CDSRtoDet.FreeBookmark(Puntero2);
          DatosRemitosObra.CDSRtoDet.Next;
        end;
      DatosRemitosObra.CDSRtoDet.GotoBookmark(Puntero);
      DatosRemitosObra.CDSRtoDet.FreeBookmark(Puntero);
      DatosRemitosObra.CDSRtoDet.EnableControls;
    end
  else
    ShowMessage('No se puede recalcular si no hay lista asignada...');
end;


procedure TFormRemitoObra.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosRemitosObra.CDSRtoCab.Close;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('id').Value       :=StrToInt(DatoNew);
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('TipoCpbte').Value:=TipoCpbte;
  DatosRemitosObra.CDSRtoCab.Open;

  DatosRemitosObra.CDSRtoDet.Close;
  DatosRemitosObra.CDSRtoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosRemitosObra.CDSRtoDet.Open;

  if DatosRemitosObra.CDSRtoCabESTADO.AsString='F' Then
     begin
       sbEstado.SimpleText:='Obra Fianlizada no se puede Borrar ni modificar.....';
      // BtAnular.Enabled         :=False;
       btModificar.Enabled      :=false;
       btBorrar.Enabled         :=false;
       DBGrillaDetalle.ReadOnly :=True;
       
     end;
  DatoNew:=''+DatoNew+'';
  DatosRemitosObra.QComprob.Close;
  DatosRemitosObra.QComprob.ParamByName('id').Value :=DatosRemitosObra.CDSRtoCabID_TIPOCOMPROBANTE.Value;
  DatosRemitosObra.QComprob.ParamByName('Suc').Value:=DatosRemitosObra.CDSRtoCabSUCURSAL.Value;
  DatosRemitosObra.QComprob.Open;
  DatosRemitosObra.Renglones:=DatosRemitosObra.QComprobLINEAS_DETALLE.Value;
  DatosRemitosObra.QComprob.Close;
end;

procedure TFormRemitoObra.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 27;
  FormBuscaCpbte.TipoCpbte1:='RO';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    END;

//   pnPrincipal.Enabled:=True;
  //ShowMessage('numero:'+IntToStr(FormBuscaCpbte.Id_Rec));
end;

procedure TFormRemitoObra.RxCCodigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRemitosObra.CDSRtoCabCODIGO.Clear;
      DatosRemitosObra.CDSRtoCabMUESTRAOBRA.Clear;
    end;

end;

procedure TFormRemitoObra.pcDetalleRtoEnter(Sender: TObject);
begin
  inherited;
  IF (RxCCodigo.Text = '') OR
      (RxCSucursal.Text = '') OR
      (RxCDeposito.Text = '') OR
      (DatosRemitosObra.CDSRtoCabMUESTRACOMPROBANTE.Value='') OR
      (dbeSuc.Text = '') OR
      (dbeNumero.Text = '') OR
      (dbeFecha.Text = '') THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleRto.ActivePageIndex <> 0 THEN
          pcDetalleRto.ActivePageIndex := 0;
        pnCabecera.Enabled := True;
        RxCCodigo.SetFocus;
      END
    else
      begin
        pnCabecera.Enabled:=False;
        pcDetalleRto.Enabled:=True;
      end;
end;

procedure TFormRemitoObra.AgregarExecute(Sender: TObject);
begin
  DatosRemitosObra.CDSRtoCab.close;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoCab.Open;
  DatosRemitosObra.CDSRtoDet.Close;
  DatosRemitosObra.CDSRtoDet.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoDet.Open;

  DatosRemitosObra.CDSRtoSubDetalle.Close;
  DatosRemitosObra.CDSRtoSubDetalle.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoSubDetalle.Open;
  inherited;

  pnCabecera.Enabled:=True;
  DatosRemitosObra.CDSRtoDet.EmptyDataSet;
  DatosRemitosObra.CDSRtoSubDetalle.EmptyDataSet;
  pcDetalleRto.ActivePageIndex := 0;
  RxCCodigo.SetFocus;
end;

procedure TFormRemitoObra.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  //Imprimir.Enabled          := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  Buscar.Enabled            := DSBase.DataSet.State IN [dsBrowse];
  DBGrillaDetalle.ReadOnly  := DSBase.DataSet.State =dsBrowse;
  dbeObservaciones1.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  dbeObservaciones2.Enabled := DSBase.DataSet.State IN [dsInsert, dsEdit];
  pnPrincipal.Enabled:=True;
  pcDetalleRto.Enabled:=True;
  pnCabecera.Enabled        := DSBase.DataSet.State IN [dsInsert];
  gbLista.Enabled           := pnCabecera.Enabled;
 // dbcLista.Enabled          := DSBase.DataSet.State IN [dsInsert, dsEdit];
  if (DSBase.DataSet.State IN [dsBrowse]) and (dbgExitencias.Visible=True) Then
    dbgExitencias.Visible:= False;
end;

procedure TFormRemitoObra.CancelarExecute(Sender: TObject);
begin

  DatosRemitosObra.CDSRtoCab.close;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRemitosObra.CDSRtoCab.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoCab.Open;
  DatosRemitosObra.CDSRtoDet.Close;
  DatosRemitosObra.CDSRtoDet.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoDet.Open;

  DatosRemitosObra.CDSRtoSubDetalle.Close;
  DatosRemitosObra.CDSRtoSubDetalle.Params.ParamByName('id').Clear;
  DatosRemitosObra.CDSRtoSubDetalle.Open;
  inherited;
  pnCabecera.Enabled:=False;
  btNuevo.SetFocus;
end;

end.