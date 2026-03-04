unit URecepcionMercaderia;

interface

uses
  Windows, Messages, SysUtils, UABMBase, Grids, DBGrids,
  ExtCtrls, ComCtrls, JvExMask, JvToolEdit, JvDBControls, StdCtrls, DBCtrls,
  vcl.Forms, Mask, JvComponentBase, JvFormPlacement, ImgList, Controls,Vcl.Dialogs,
    Classes, ActnList, JvLabel, JvExControls,Vcl.graphics,
  DBXCommon,DB, frxClass, frxDBSet, Menus, JvAppStorage, JvAppIniStorage, System.Actions,
  Data.FMTBcd, Data.SqlExpr, JvGradient, Vcl.Buttons, Vcl.ToolWin, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList, frCoreClasses;

type
  TFormRecepcionMercaderia = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label19: TLabel;
    SpeedButton2: TSpeedButton;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeOCompra: TDBEdit;
    dbeDeposito: TDBEdit;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    DBGrillaDetalle: TDBGrid;
    PagImpuestos: TTabSheet;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Label6: TLabel;
    Label1: TLabel;
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
    dbtTotalFinal: TDBText;
    Label2: TLabel;
    Bevel2: TBevel;
    DBText2: TDBText;
    Label3: TLabel;
    DBText4: TDBText;
    Label4: TLabel;
    Bevel5: TBevel;
    Label5: TLabel;
    Bevel7: TBevel;
    DBText8: TDBText;
    Label7: TLabel;
    Bevel8: TBevel;
    DBText9: TDBText;
    dbeDscto: TDBEdit;
    dbgIva: TDBGrid;
    PagNroSeries: TTabSheet;
    dbtCantidad: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    dbgDetalleRecepcion: TDBGrid;
    dbgSeries: TDBGrid;
    Label15: TLabel;
    dbeRemitos: TDBEdit;
    BuscarProveedor: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    BuscarTipoComprobante: TAction;
    AgregarProveedor: TAction;
    dbchConsignacion: TDBCheckBox;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    dbeFechaCompra: TJvDBDateEdit;
    DBStatusLabel2: TJvDBStatusLabel;
    RxLabel4: TJvLabel;
    frReporte: TfrxReport;
    frDetalle: TfrxDBDataset;
    frCabecera: TfrxDBDataset;
    btImprimir: TBitBtn;
    Imprimir: TAction;
    pnIdOC: TPanel;
    DBText11: TDBText;
    Label13: TLabel;
    RecuperarRecp: TAction;
    MarcarCompletada: TAction;
    PopupMenu1: TPopupMenu;
    RecuperarRecpcion1: TMenuItem;
    MarcarCompletada1: TMenuItem;
    N1: TMenuItem;
    CambiarFecha: TAction;
    CambiarFecha1: TMenuItem;
    pmMenu: TPopupMenu;
    CopiaralPortaPaplesdeWindows1: TMenuItem;
    N15: TMenuItem;
    VerCodigoAlternativo1: TMenuItem;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorComprobantes: TComBuscador;
    DBText12: TDBText;
    ComBuscadorSucursal: TComBuscador;
    Panel2: TPanel;
    Label17: TLabel;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    Label23: TLabel;
    lbCompletada: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    pagLotes: TTabSheet;
    dbgDetalleLotes: TDBGrid;
    pnLote: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TJvDBDateEdit;
    DBEdit3: TJvDBDateEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    BuscarPorReferencia: TAction;
    CambiarProveedor: TAction;
    N2: TMenuItem;
    ImprimirEtiquetas: TAction;
    N3: TMenuItem;
    ImprimirEtiquetas1: TMenuItem;
    N4: TMenuItem;
    ImprimirEtiquetas2: TMenuItem;
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBEDepositoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure BuscarTipoComprobanteExecute(Sender: TObject);
    procedure AgregarProveedorExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgDetalleRecepcionDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure DBText11Click(Sender: TObject);
    procedure RecuperarRecpExecute(Sender: TObject);
    procedure MarcarCompletadaExecute(Sender: TObject);
    procedure CambiarFechaExecute(Sender: TObject);
    procedure VerCodigoAlternativo1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgDetalleLotesDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBGrillaDetalleDblClick(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure CambiarProveedorExecute(Sender: TObject);
    procedure ImprimirEtiquetasExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      CodigosSeries:TStringList;
     PROCEDURE UltimoComprobante;
     function ControlSerie:Boolean;
     function ControlaLotes:Boolean;

  end;

var
  FormRecepcionMercaderia: TFormRecepcionMercaderia;

implementation

uses DMRecepMerca, UBuscadorArticulos, UProveedor_2,
     UBuscadorCpbte,Librerias, UBuscadorProveedor, UDMain_FD,
     DMStoreProcedureForm, UOrdenCompra, UFecha, UStock_2,
  UBuscarPorNroReferencia, UCambioProveedorFactura, UEtiquetas_Compra;

{$R *.DFM}



PROCEDURE TFormRecepcionMercaderia.UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DatosRecepMerca,DMStoreProcedure DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
      IF (CDSRecepCabLETRARECMER.AsString <> '') AND (CDSRecepCabCLASECPBTE.Value <> '') THEN
        BEGIN
          spNumeroCpbte.Close;
          spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSRecepCabLETRARECMER.AsString;
          spNumeroCpbte.ParamByName('Sucursal').Value    := CDSRecepCabSUCURSALCOMPRA.Value;
          spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSRecepCabCLASECPBTE.Value;
          spNumeroCpbte.ParamByName('TipoComp').Value    := CDSRecepCabTIPOCPBTE.AsString;
          spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
          spNumeroCpbte.ExecProc;
          IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
            BEGIN
              IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
              ELSE
                Numero := 1;
              CDSRecepCabSUCRECMERSetText(CDSRecepCabSUCRECMER,IntToStr(Numero));
              IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
              ELSE
                Numero := 1;
              CDSRecepCabNUMERORECMERSetText(CDSRecepCabNUMERORECMER,IntToStr(Numero));
            END;
          CDSRecepCabDESGLOZAIVA.Value        := spNumeroCpbte.ParamByName('desgloza_Iva').AsString;
          CDSRecepCabTIPOCPBTE.Value          := spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
          CDSRecepCabCLASECPBTE.Value         := spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
          spNumeroCpbte.CLose;
        END;
      CDSRecepCabNROCPBTE.AsString := CDSRecepCabLETRARECMER.AsString + CDSRecepCabSUCRECMER.AsString +
                                      CDSRecepCabNUMERORECMER.AsString;
      FormRecepcionMercaderia.dbgIva.Enabled := CDSRecepCabDESGLOZAIVA.Value = 'S';
    END;
END;

procedure TFormRecepcionMercaderia.VerCodigoAlternativo1Click(Sender: TObject);
begin
  inherited;
  VerCodigoAlternativo1.Checked:=Not(VerCodigoAlternativo1.Checked);
  DBGrillaDetalle.Refresh;
end;

function TFormRecepcionMercaderia.ControlaLotes: Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.wwCDSCompraDet.DisableControls;
  DatosRecepMerca.CDSRecepDet.First;
  while not(DatosRecepMerca.CDSRecepDet.Eof) and Aux=True do
    begin
      Aux:=True;
      if (DatosRecepMerca.CDSRecepDetCONTROL_TRAZABILIDAD.Value='S') then
        begin
          if (DatosRecepMerca.CDSRecepLote.IsEmpty) then
            Aux:=False;
        end;
      DatosRecepMerca.CDSRecepDet.Next;
    end;
  DatosRecepMerca.CDSRecepDet.First;
  Result:=Aux;
end;

function TFormRecepcionMercaderia.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.wwCDSCompraDet.DisableControls;
  DatosRecepMerca.CDSRecepDet.First;
  while not(DatosRecepMerca.CDSRecepDet.Eof) and aux=True do
    begin
      aux:=True;
      if (DatosRecepMerca.CDSRecepDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(DatosRecepMerca.CDSRecepDetCantidad.AsFloat)=DatosRecepMerca.CDSRecepSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      DatosRecepMerca.CDSRecepDet.Next;
    end;
  DatosRecepMerca.CDSRecepDet.First;
 // DatosCompra.wwCDSCompraDet.EnableControls;
  Result:=Aux;
end;

procedure TFormRecepcionMercaderia.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecepMerca.CDSRecepCabSucursalCompra.Clear;
      DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTE.Clear;
      DatosRecepMerca.CDSRecepCabMUESTRASUCURSAL.Clear;
      DatosRecepMerca.CDSRecepCabMUESTRACOMPROBANTE.Clear;
      DatosRecepMerca.CDSRecepCabLETRARECMER.Clear;
      DatosRecepMerca.CDSRecepCabSUCRECMER.Clear;
      DatosRecepMerca.CDSRecepCabNUMERORECMER.Clear;
    end;

end;

procedure TFormRecepcionMercaderia.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReporte.DesignReport;
end;

procedure TFormRecepcionMercaderia.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTE.Clear;
      DatosRecepMerca.CDSRecepCabMUESTRACOMPROBANTE.Clear;
      DatosRecepMerca.CDSRecepCabLETRARECMER.Clear;
      DatosRecepMerca.CDSRecepCabSUCRECMER.Clear;
      DatosRecepMerca.CDSRecepCabNUMERORECMER.Clear;
    end;

end;

procedure TFormRecepcionMercaderia.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecepMerca.CDSRecepCabCodigo.Clear;
      DatosRecepMerca.CDSRecepCabRAZONSOCIAL.Clear;
    end;
end;


procedure TFormRecepcionMercaderia.RxDBEDepositoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      DatosRecepMerca.CDSRecepCabDeposito.Clear;
      DatosRecepMerca.CDSRecepCabMUESTRADEPOSITO.Clear;
    end;

end;

procedure TFormRecepcionMercaderia.DBGrillaDetalleColEnter(
  Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 4 else
  IF DBGrillaDetalle.SelectedIndex = 3 THEN
    DBGrillaDetalle.SelectedIndex := 4 else
  IF DBGrillaDetalle.SelectedIndex = 6 THEN
    DBGrillaDetalle.SelectedIndex := 5;

end;

procedure TFormRecepcionMercaderia.DBGrillaDetalleDblClick(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty)) and (not(DBGrillaDetalle.DataSource.DataSet.IsEmpty)) then
    begin
      if not(Assigned(FormStock_2)) then
        FormStock_2:=TFormStock_2.Create(Self);
      FormStock_2.DatoNew:=DBGrillaDetalle.DataSource.DataSet.FieldByName('codigoArticulo').Value;
      formstock_2.recuperar.Execute;
      FormStock_2.Show;
    end;
end;

procedure TFormRecepcionMercaderia.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;

end;

procedure TFormRecepcionMercaderia.DBGrillaDetalleKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  IF (Key = VK_LEFT) and (Shift =[ssCtrl]) THEN
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

procedure TFormRecepcionMercaderia.DBGrillaDetalleKeyPress(Sender: TObject;
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
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
      IF DBGrillaDetalle.SelectedField = DatosRecepMerca.CDSRecepDetCodigoArticulo THEN
        BuscarArticulo.Execute;
    END;

end;

procedure TFormRecepcionMercaderia.RecuperarExecute(Sender: TObject);
var y,m,d:Word;
begin
  inherited;
  sbEstado.SimpleText:='';
  DatosRecepMerca.CDSRecepCab.close;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('TipoCpbte').Value := TipoCpbte;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosRecepMerca.CDSRecepCab.Open;

  DatosRecepMerca.CDSRecepDet.Close;
  DatosRecepMerca.CDSRecepDet.Params.ParamByName('id').Value        := StrToInt(DatoNew);
  DatosRecepMerca.CDSRecepDet.Open;

  DatosRecepMerca.CDSImpuestos.Close;
  DatosRecepMerca.CDSImpuestos.Params.ParamByName('id').Value       := StrToInt(DatoNew);
  DatosRecepMerca.CDSImpuestos.Open;


  DatosRecepMerca.CDSProveedor.Close;
  DatosRecepMerca.CDSProveedor.Params.ParamByName('Codigo').Value   := DatosRecepMerca.CDSRecepCabCodigo.Value;
  DatosRecepMerca.CDSProveedor.Open;

  DatosRecepMerca.CDSRecepLote.Close;
  DatosRecepMerca.CDSRecepLote.MasterFields:='';
  DatosRecepMerca.CDSRecepLote.MasterSource:=Nil;
  DatosRecepMerca.CDSRecepLote.Params.ParamByName('id').Value       := StrToInt(DatoNew);//  DatosCompra.CDSCompraDetID.AsInteger;// StrToInt(DatoNew);
  DatosRecepMerca.CDSRecepLote.Open;

  DatosRecepMerca.CDSRecepLote.MasterFields:='ID';
  DatosRecepMerca.CDSRecepLote.MasterSource:=DatosRecepMerca.DSRecepDet;

  DatosRecepMerca.CDSRecepSubDetalle.Close;
  DatosRecepMerca.CDSRecepSubDetalle.Params.ParamByName('id').Value := StrToInt(DatoNew);
  DatosRecepMerca.CDSRecepSubDetalle.Open;

  DatosRecepMerca.CDSProveedor.Close;
  pnPrincipal.Enabled      := True;
  pcDetalleFactura.Enabled := True;
  sbEstado.SimpleText      := '';
  // segun el periodo fiscal habilito o no para borrar y modificar
  if DatosRecepMerca.CDSRecepCabPROCESADA.Value='S' Then
    begin
      btBorrar.Enabled         := False;
      btModificar.Enabled      := False;
      CambiarProveedor.Enabled := False;
      lbCompletada.Visible     := True;
    end
  else
    begin
      btBorrar.Enabled     := True;
      btModificar.Enabled  := True;
     lbCompletada.Visible  := False;
    end;
  if DatosRecepMerca.CDSRecepCabMERCADERIA_CONSIGNACION.Value='S' Then
    begin
      if DatosRecepMerca.SumaSaldosMercaderia then
        begin
          btBorrar.Enabled         := True;
          btModificar.Enabled      := False;
          lbCompletada.Visible     := True;
          CambiarProveedor.Enabled := False;
        end
      else
        begin
          btBorrar.Enabled        := False;
          btModificar.Enabled     := False;
          lbCompletada.Visible    := True;
          CambiarProveedor.Enabled:= True;

        end
    end;
  DatoNew:=''+DatoNew+'';
  FormRecepcionMercaderia.Caption:='Recepcion de Mercadería -- '+DatosRecepMerca.CDSRecepCabFECHA_HORA.AsString+'//'+Copy(DatosRecepMerca.CDSRecepCabUSUARIO.Value,1,15);

end;

procedure TFormRecepcionMercaderia.RecuperarRecpExecute(Sender: TObject);
begin
  inherited;
  if Not(DSBase.DataSet.IsEmpty) and
        (DatosRecepMerca.CDSRecepCabPROCESADA.Value='S') and
        (DMMain_FD.UsuarioAdministrador) then
    begin
      Modificar.Execute;
      DatosRecepMerca.CDSRecepCabPROCESADA.Value:='N';
      Confirma.Execute;
    end;
end;

procedure TFormRecepcionMercaderia.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(Application);
  FormBuscarPorNroReferenica.CompraVta:='RM';
  FormBuscarPorNroReferenica.ShowModal;
  IF FormBuscarPorNroReferenica.Id > 0 THEN
    BEGIN
      if FormBuscarPorNroReferenica.Tipo='RM' then
        begin
          TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
          DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
          Recuperar.Execute;
        end;

   end
 else
    ShowMessage('No Hay Comprobante con ese Nro...');

end;

procedure TFormRecepcionMercaderia.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       DatosRecepMerca.CDSRecepCabCodigoSetText(DatosRecepMerca.CDSRecepCabCodigo, FormBuscadorProveedor.Codigo);
     end;

end;

procedure TFormRecepcionMercaderia.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  DatosRecepMerca.CDSBuscaSucursal.Close;
  DatosRecepMerca.CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    DatosRecepMerca.CDSRecepCabSUCURSALCOMPRASetText(DatosRecepMerca.CDSRecepCabSUCURSALCOMPRA, IntToStr(comBuscadorSucursal.Id));
  DatosRecepMerca.CDSBuscaSucursal.Close;

end;

procedure TFormRecepcionMercaderia.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  DatosRecepMerca.CDSBuscaDeposito.Close;
  DatosRecepMerca.CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  IF comBuscadorDeposito.rOk THEN
    DatosRecepMerca.CDSRecepCabDepositoSetText(DatosRecepMerca.CDSRecepCabDeposito, IntToStr(comBuscadorDeposito.Id));
  DatosRecepMerca.CDSBuscaDeposito.Close;
end;

procedure TFormRecepcionMercaderia.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.ListaPrecio:= DatosRecepMerca.ListaPrecios;
  FormBuscadorArticulos.Param1:=3;
  FormBuscadorArticulos.Param2:=2;
  FormBuscadorArticulos.Param3:=3;
  FormBuscadorArticulos.Esquema   := -1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
    DatosRecepMerca.CDSRecepDetCodigoArticuloSetText(DatosRecepMerca.CDSRecepDetCodigoArticulo, FormBuscadorArticulos.Codigo);

end;

procedure TFormRecepcionMercaderia.BuscarTipoComprobanteExecute(
  Sender: TObject);
begin
  inherited;
  DatosRecepMerca.CDSBuscaComprob.Close;
  DatosRecepMerca.CDSBuscaComprob.Params.ParamByName('Suc').Value := DatosRecepMerca.CDSRecepCabSucursalCOMPRA.Value;
  DatosRecepMerca.CDSBuscaComprob.Open;
  IF NOT (DatosRecepMerca.CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorComprobantes.Execute;
        if comBuscadorComprobantes.rOk Then
          DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTESetText(DatosRecepMerca.CDSRecepCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  DatosRecepMerca.CDSBuscaComprob.Close;

end;

procedure TFormRecepcionMercaderia.AgregarProveedorExecute(
  Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormProveedor_2)) Then
    FormProveedor_2:=TFormProveedor_2.Create(Application);
  FormProveedor_2.Agregar.Execute;

end;


procedure TFormRecepcionMercaderia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  with DatosRecepMerca do
  begin
    CDSRecepCab.Close;
    CDSRecepDet.Close;
    CDSImpuestos.Close;
  end;
  Action:=caFree;
  inherited;
end;

procedure TFormRecepcionMercaderia.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  SinBde   :=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  pcDetalleFactura.ActivePageIndex := 0;
  IF NOT (Assigned(DatosRecepMerca)) THEN
    DatosRecepMerca := TDatosRecepMerca.Create(Application);
  dsBase.DataSet:=DatosRecepMerca.CDSRecepCab;
  WITH DatosRecepMerca DO
    BEGIN
      AddClientDataSet(CDSRecepCab, DSPRecepCab);
      AddClientDataSet(CDSRecepDet, DSPRecepDet);
      AddClientDataSet(CDSImpuestos, DSPImpuestos);
      AddClientDataSet(CDSRecepLote,DSPRecepLote);
      AddClientDataSet(CDSRecepSubDetalle,DSPRecepSubDet);

      DatosRecepMerca.CDSRecepCab.Params.ParamByName('TipoCpbte').Clear;
      DatosRecepMerca.CDSRecepCab.Params.ParamByName('id').Clear;
      DatosRecepMerca.CDSRecepDet.Params.ParamByName('id').Clear;


      DatosRecepMerca.CDSImpuestos.Params.ParamByName('id').Clear;

      DatosRecepMerca.CDSRecepSubDetalle.Params.ParamByName('id').Clear;

      CDSRecepCab.Open;
      CDSRecepDet.Open;
      CDSImpuestos.Open;
      CDSRecepSubDetalle.Open;

      CDSRecepLote.MasterFields:='';
      CDSRecepLote.MasterSource:=Nil;
      CDSRecepLote.Open;
      CDSRecepLote.MasterFields:='ID';
      CDSRecepLote.MasterSource:=DatosRecepMerca.DSRecepDet;

      AplicarMascarasNumericas;
    END;
   // Listado de Serie en memoria
   CodigosSeries :=TStringList.Create;
   CodigosSeries.Clear;
   Tabla   :='RecepMercaCab';
   Campo   :='id_recmer';
end;

procedure TFormRecepcionMercaderia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRecepcionMercaderia:=nil;
end;

procedure TFormRecepcionMercaderia.FormResize(Sender: TObject);
begin
  inherited;
  if FormRecepcionMercaderia<>nil then
    if (Width<>855) then Width:=855;
end;

procedure TFormRecepcionMercaderia.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormRecepcionMercaderia.ImprimirEtiquetasExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormEtiquetasCompra)) then
    FormEtiquetasCompra:=TFormEtiquetasCompra.Create(self);
  FormEtiquetasCompra.CDSEtiquetas.CloneCursor(DatosRecepMerca.CDSRecepDet,True,True);

  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('MUESTRAPRECIOVTA')).DisplayFormat  :=',0.00';
  TFloatField(FormEtiquetasCompra.CDSEtiquetas.FieldByName('CANTIDAD')).DisplayFormat          :=',0.00';

  FormEtiquetasCompra.dbgEtiquetas.Columns[0].FieldName:='CODIGOARTICULO';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Caption    :='Codigo';
  FormEtiquetasCompra.dbgEtiquetas.Columns[0].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[1].FieldName:='DETALLE';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Caption    :='Detalle';
  FormEtiquetasCompra.dbgEtiquetas.Columns[1].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[2].FieldName:='MUESTRACODIGOBARRA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Caption    :='Codigo Barra';
  FormEtiquetasCompra.dbgEtiquetas.Columns[2].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[3].FieldName:='MUESTRAPRECIOVTA';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Caption    :='Precio Vta';
  FormEtiquetasCompra.dbgEtiquetas.Columns[3].Title.Alignment  :=taCenter;

  FormEtiquetasCompra.dbgEtiquetas.Columns[4].FieldName:='CANTIDAD';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Caption    :='Cantidad';
  FormEtiquetasCompra.dbgEtiquetas.Columns[4].Title.Alignment  :=taCenter;

 // FormEtiquetasCompra.frDSEtiq. datafields
  FormEtiquetasCompra.ShowModal;
  FormEtiquetasCompra.BringToFront;
end;

procedure TFormRecepcionMercaderia.ImprimirExecute(Sender: TObject);
begin
  inherited;

  IF MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0) = mrYes THEN
    begin
      frReporte.LoadFromFile(DMMain_FD.PathReportesCpbte+'\Recepcion.fr3');
      frReporte.PrintOptions.Copies :=1;
      frReporte.PrepareReport;
      frReporte.ShowReport
    end;
end;

procedure TFormRecepcionMercaderia.ConfirmaExecute(Sender: TObject);
begin
  if DatosRecepMerca.CDSRecepDet.State in [dsInsert,dsEdit] Then
    DatosRecepMerca.CDSRecepDet.Post;
  if DatosRecepMerca.CDSRecepSubDetalle.State in [dsInsert,dsEdit] Then
    DatosRecepMerca.CDSRecepSubDetalle.Post;
//  TRY
//    IF Moneda3D(' ',DatosRecepMerca.MascaraCabecera, DatosRecepMerca.wwCDSRecepCabTotal.Value) = 0 THEN
//      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
//  FINALLY
//  END;

  //  Verificao si hay series y si puedo o no ingresar la factura sin las series;
  if (not DMMain_FD.SerieCompra) and (DMMain_FD.ControlaSerie) Then
    if Not(ControlSerie) and (DSBase.State=dsInsert) then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

  DatoNew     := IntToStr(DatosRecepMerca.CDSRecepCabID_RECMER.Value);
  TipoCpbte   := DatosRecepMerca.CDSRecepCabTIPOCPBTE.Value;
  if DatosRecepMerca.CDSRecepCabMERCADERIA_CONSIGNACION.Value='S' then
    begin
      DatosRecepMerca.CDSRecepCabPROCESADA.Value:='S';
      DatosRecepMerca.ControlDetalleConsignacion;
    end;
  DatosRecepMerca.ReAsignaDetalle;

  if Not(ControlaLotes) and (DSBase.State=dsInsert) then
    RAISE Exception.Create('Hay items sin lote asignado......!!!!');

  if DatosRecepMerca.CDSRecepCab.state<>dsBrowse Then
    DatosRecepMerca.CDSRecepCab.Post;

  inherited;
  Recuperar.Execute;
  pcDetalleFactura.ActivePageIndex := 0;
end;

procedure TFormRecepcionMercaderia.AgregarExecute(Sender: TObject);
begin
  DBGrillaDetalle.ReadOnly  := False;
  pnCabecera.Enabled        := True;

  DatosRecepMerca.CDSRecepCab.close;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepCab.Open;

  DatosRecepMerca.CDSRecepDet.Close;
  DatosRecepMerca.CDSRecepDet.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepDet.Open;

  DatosRecepMerca.CDSImpuestos.Close;
  DatosRecepMerca.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSImpuestos.Open;

  DatosRecepMerca.CDSRecepSubDetalle.Close;
  DatosRecepMerca.CDSRecepSubDetalle.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepSubDetalle.Open;

  inherited;
  sbEstado.SimpleText:='';
  pcDetalleFactura.ActivePageIndex := 0;
  dbeFechaCompra.SetFocus;
  dbeFechaCompra.SelectAll;
end;

procedure TFormRecepcionMercaderia.CambiarFechaExecute(Sender: TObject);
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) then
    begin
      if Not(Assigned(FormFecha)) Then
        FormFecha:=TFormFecha.Create(Self);
      FormFecha.dbcCtaBco.Visible  :=False;
      FormFecha.dbcSucursal.Visible:=False;
      FormFecha.lbCta.Visible      :=False;
      FormFecha.Label1.Visible     :=False;
      FormFecha.fecha:=DatosRecepMerca.CDSRecepCabFECHARECEPCION.AsDateTime;
      FormFecha.ShowModal;
      if FormFecha.ModalResult=mrOk then
        begin
          Modificar.Execute;
          DatosRecepMerca.CDSRecepCabFECHARECEPCION.AsDateTime:=FormFecha.fecha;
          Confirma.Execute;
          Recuperar.Execute;
        end;
      FreeAndNil(FormFecha);
    end;
  
end;

procedure TFormRecepcionMercaderia.CambiarProveedorExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormCambiaProveedorFactura)) then
    FormCambiaProveedorFactura:=TFormCambiaProveedorFactura.Create(self);
  FormCambiaProveedorFactura.codigo       :=DSBase.DataSet.FieldByName('codigo').AsString;
  FormCambiaProveedorFactura.reazonsocial :=DSBase.DataSet.FieldByName('razonsocial').AsString;
  FormCambiaProveedorFactura.nombre       :=DSBase.DataSet.FieldByName('nombre').AsString;
  FormCambiaProveedorFactura.direccion    :=DSBase.DataSet.FieldByName('direccion').AsString;
  FormCambiaProveedorFactura.localidad    :=DSBase.DataSet.FieldByName('localidad').AsString;
  FormCambiaProveedorFactura.cpostal      :=DSBase.DataSet.FieldByName('cpostal').AsString;
  FormCambiaProveedorFactura.tipoiva      :=DSBase.DataSet.FieldByName('Tipoiva').Value;
  FormCambiaProveedorFactura.Tipo         :=DSBase.DataSet.FieldByName('TipoCpbte').Value;
  FormCambiaProveedorFactura.Id_Cpbte     :=DSBase.DataSet.FieldByName('id_recmer').Value;
  FormCambiaProveedorFactura.Showmodal;
  Recuperar.Execute;
end;

procedure TFormRecepcionMercaderia.CancelarExecute(Sender: TObject);
begin
  DBGrillaDetalle.ReadOnly  :=True;
  dbgIva.ReadOnly           :=True;
  pnCabecera.Enabled:=True;

  if DatosRecepMerca.CDSRecepSubDetalle.State in [dsInsert,dsEdit] Then
    DatosRecepMerca.CDSRecepSubDetalle.Cancel;

  DatosRecepMerca.CDSRecepCab.close;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('TipoCpbte').Clear;
  DatosRecepMerca.CDSRecepCab.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepCab.Open;

  DatosRecepMerca.CDSRecepDet.Close;
  DatosRecepMerca.CDSRecepDet.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepDet.Open;
  DatosRecepMerca.CDSRecepDet.EmptyDataSet;

  DatosRecepMerca.CDSImpuestos.Close;
  DatosRecepMerca.CDSImpuestos.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSImpuestos.Open;
  DatosRecepMerca.CDSImpuestos.EmptyDataSet;

  DatosRecepMerca.CDSProveedor.Close;
  DatosRecepMerca.CDSProveedor.Params.ParamByName('Codigo').Clear;
  DatosRecepMerca.CDSProveedor.Open;

  DatosRecepMerca.CDSRecepSubDetalle.Close;
  DatosRecepMerca.CDSRecepSubDetalle.Params.ParamByName('id').Clear;
  DatosRecepMerca.CDSRecepSubDetalle.Open;

  inherited;

  pnCabecera.Enabled:=False;
  pcDetalleFactura.ActivePageIndex := 0;
  if btNuevo.Enabled Then
    btNuevo.SetFocus;
end;

procedure TFormRecepcionMercaderia.MarcarCompletadaExecute(Sender: TObject);
begin
  inherited;
 if Not(DSBase.DataSet.IsEmpty) and
        (DatosRecepMerca.CDSRecepCabPROCESADA.Value='N') and
        (DMMain_FD.UsuarioAdministrador) then
    begin
      Modificar.Execute;
      DatosRecepMerca.CDSRecepCabPROCESADA.Value:='S';
      Confirma.Execute;
    end;
end;

procedure TFormRecepcionMercaderia.ModificarExecute(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled:=False;

end;

procedure TFormRecepcionMercaderia.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 21;
  FormBuscaCpbte.TipoCpbte1 := 'RM';
  FormBuscaCpbte.TipoCpbte2 := '';
  FormBuscaCpbte.TipoCpbte3 := '';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    BEGIN
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
   end;
end;

procedure TFormRecepcionMercaderia.BorrarExecute(Sender: TObject);
begin
  if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
    if Not(DatosRecepMerca.CDSRecepCab.IsEmpty) Then
      begin
        DMMain_FD.LogFileFD(1,4,'Borrado Recepcion Mercaderia '+DSBase.DataSet.FieldByName('NROCPBTE').AsString+' '+
                            'Proveedor: '+DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString+' Fecha: '+
                            DateToStr(DSBase.DataSet.FieldByName('FECHARECEPCION').AsDateTime),'RECEP');
        inherited
      end
    else
      ShowMessage('No hay registro Seleccionado');
end;

procedure TFormRecepcionMercaderia.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;

end;

procedure TFormRecepcionMercaderia.DBText11Click(Sender: TObject);
begin
  inherited;
  if (DatosRecepMerca.CDSRecepCabID_ORDENCOMPRA.AsString<>'') and
     (DatosRecepMerca.CDSRecepCabID_ORDENCOMPRA.AsInteger>0) and
     (DSBase.State = dsBrowse) then
     begin
       if Not(Assigned(FormOrdenCompra)) then
         FormOrdenCompra:=TFormOrdenCompra.Create(self);
       FormOrdenCompra.DatoNew:=DatosRecepMerca.CDSRecepCabID_ORDENCOMPRA.AsString;
       FormOrdenCOmpra.TipoCpbte:='OC';
       FormOrdenCompra.Recuperar.Execute;
       FormOrdenCompra.Show;
     end;

end;

procedure TFormRecepcionMercaderia.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnCabecera.Enabled       := DSBase.DataSet.State IN [dsInsert];
  pcDetalleFactura.Enabled := True;
  DBGrillaDetalle.ReadOnly := DSBase.DataSet.State IN [dsBrowse];
  dbgIva.ReadOnly          := DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly       := DSBase.DataSet.State IN [dsBrowse];
  RecuperarRecp.Enabled    := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) and (DatosRecepMerca.CDSRecepCabPROCESADA.Value='S') ;
  MarcarCompletada.Enabled := (DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)) and (DatosRecepMerca.CDSRecepCabPROCESADA.Value='N') ;
end;

procedure TFormRecepcionMercaderia.dbgDetalleLotesDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgDetalleLotes.DataSource.DataSet.FieldByName('CONTROL_TRAZABILIDAD').Value='S' Then
    dbgDetalleLotes.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleLotes.Canvas.Font.Style:=[];
  dbgDetalleLotes.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormRecepcionMercaderia.dbgDetalleRecepcionDrawColumnCell(
  Sender: TObject; const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  if dbgDetalleRecepcion.DataSource.DataSet.FieldByName('Con_Nro_Serie').Value='S' Then
    dbgDetalleRecepcion.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalleRecepcion.Canvas.Font.Style:=[];
  dbgDetalleRecepcion.DefaultDrawColumnCell(Rect,DataCol,Column,State);

end;

end.