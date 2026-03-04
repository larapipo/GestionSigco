unit UNotaVenta;

interface

uses
  Windows, Messages, SysUtils, Variants, FMTBcd, SqlExpr,DBXCommon,Forms,
  UABMBase, Menus, frxClass, frxDBSet, frxExportText,
  frxExportImage, frxExportPDF, DBClient,Dialogs,
  JvArrowButton, ComCtrls, JvExStdCtrls, JvEdit, JvDBSearchEdit, JvExExtCtrls,
  JvExtComponent, JvPanel, Grids, DBGrids, DBCtrls, Controls, StdCtrls,
  JvDBControls, JvExMask, JvToolEdit, Mask, DB, JvComponentBase,Math,
  JvFormPlacement, ImgList, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,
  System.Classes, System.Actions, Vcl.ActnList, JvLabel,Graphics,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, frxExportBaseDialog,
  System.ImageList, frCoreClasses, AdvSmoothButton;

type
  TFormNotaVta = class(TFormABMBase)
    BuscarCliente: TAction;
    pnCabecera: TPanel;
    Label3: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    dbeSubNro: TDBEdit;
    Label1: TLabel;
    dbeLdr: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeDeposito: TDBEdit;
    dbeMuestraVendedor: TDBEdit;
    Label6: TLabel;
    dbeNombre: TDBEdit;
    dbeObservaciones: TDBEdit;
    Label4: TLabel;
    dbeEAN: TDBEdit;
    lb1: TLabel;
    lb2: TLabel;
    cbLotes: TComboBox;
    lb3: TLabel;
    btn1: TToolButton;
    Imprimir: TAction;
    frxPDFExport1: TfrxPDFExport;
    frxDBDet: TfrxDBDataset;
    frReport: TfrxReport;
    frxDBCab: TfrxDBDataset;
    lbEstado: TLabel;
    btnHacerRto: TSpeedButton;
    btn2: TToolButton;
    GenerarRto: TAction;
    btnCumplido: TSpeedButton;
    FinalizaNV: TAction;
    JvDBStatusLabel1: TJvDBStatusLabel;
    lb4: TLabel;
    lb5: TLabel;
    dbePresupuesto: TDBEdit;
    lb7: TLabel;
    dbeNROCPBTE: TDBEdit;
    dbnDetalle: TDBNavigator;
    Clonar: TAction;
    CierraLote: TAction;
    VerRemitos: TAction;
    btnRemitos: TSpeedButton;
    pnRemitos: TJvPanel;
    lb6: TLabel;
    dbg1: TDBGrid;
    VerPresupuesto: TAction;
    dbgDetalle: TDBGrid;
    ModificaLinea: TAction;
    btImpresion: TJvArrowButton;
    pmImpresion: TPopupMenu;
    Imprimir1: TMenuItem;
    ImprimirLote: TAction;
    ImprimirporLote1: TMenuItem;
    ImprimirPendientes: TAction;
    ImprimirPendientes1: TMenuItem;
    dbeRto: TDBEdit;
    lb8: TLabel;
    btnCerrarLote: TSpeedButton;
    btnAbrirLotes: TSpeedButton;
    AbrirLotes: TAction;
    JvDBSearchEdit1: TJvDBSearchEdit;
    lb9: TLabel;
    dbtNroremito: TDBText;
    lb10: TLabel;
    dbeOBSERVACION: TDBEdit;
    dbeOBSERVACION1: TDBEdit;
    lb11: TLabel;
    btn4: TSpeedButton;
    Login: TAction;
    lb12: TLabel;
    lbAutorizado: TLabel;
    RxCLdr: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    RxCDeposito: TJvDBComboEdit;
    rxcVendedor: TJvDBComboEdit;
    RxCCodigo: TJvDBComboEdit;
    dbeFechaVta: TJvDBDateEdit;
    pmExtra: TPopupMenu;
    Clonar1: TMenuItem;
    DarCumplida1: TMenuItem;
    btIngCantidad: TBitBtn;
    RevisionImporte: TAction;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    Button1: TButton;
    QBuscaStock: TFDQuery;
    QBuscaStockCODIGO_STK: TStringField;
    QBuscaStockCLASE_ARTICULO: TIntegerField;
    BuscarPorReferencia: TAction;
    DBText3: TDBText;
    RecuperarNV: TAction;
    Label9: TLabel;
    Label10: TLabel;
    RecuperarNV1: TMenuItem;
    N1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure cbLotesClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FinalizaNVExecute(Sender: TObject);
    procedure dbgDetalleExit(Sender: TObject);
    procedure ClonarExecute(Sender: TObject);
    procedure CierraLoteExecute(Sender: TObject);
    procedure VerRemitosExecute(Sender: TObject);
    procedure dbg1DblClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure dbePresupuestoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure pnCabeceraMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure VerPresupuestoExecute(Sender: TObject);
    procedure ModificaLineaExecute(Sender: TObject);
    procedure dbgDetalleDblClick(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure dbgDetalleKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure dbgDetalleTitleClick(Column: TColumn);
    procedure ImprimirLoteExecute(Sender: TObject);
    procedure ImprimirPendientesExecute(Sender: TObject);
    procedure AbrirLotesExecute(Sender: TObject);
    procedure LoginExecute(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure NextExecute(Sender: TObject);
    procedure btIngCantidadClick(Sender: TObject);
    procedure RevisionImporteExecute(Sender: TObject);
    procedure pnRemitosExit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure BuscarPorReferenciaExecute(Sender: TObject);
    procedure RecuperarNVExecute(Sender: TObject);
    procedure dbgDetalleCellClick(Column: TColumn);

  private
    { Private declarations }
  public
    ListaLote:TStringList;
    Autorizado:Boolean;
    Entregado:Boolean;
    Cumplido:Boolean;
    SucursalComprobante:Integer;
    IDComprobante:Integer;
    Deposito:Integer;
    procedure CerrarLote;
    procedure AbrirLote;
    procedure AgregarCabRto;
    procedure AgregarDetRto;
    { Public declarations }
  end;

var
  FormNotaVta: TFormNotaVta;

implementation

{$R *.dfm}

uses DMNotaVenta,UDMain_FD, UBuscadorClientes, DMRemitos, URemitos,
  UBuscadorTipoCpbte, UBuscadorDepositos, UABMLineaNotaVta, ULogin,
  UBuscadorNotaVenta, UPresupuesto_2, UControlNroRto,
  UIngresoCantNV, UBuscarPorNroReferencia;



procedure TFormNotaVta.AbrirLote;
var P:TBookmark;
begin
  p:=DatosNotaVenta.CDSNVDet.GetBookmark;
  DatosNotaVenta.CDSNVDet.DisableControls;
  DatosNotaVenta.CDSNVDet.First;
  while not(DatosNotaVenta.CDSNVDet.Eof) do
    begin
      DatosNotaVenta.CDSNVDet.Edit;
      if DatosNotaVenta.CDSNVDetLOTECERRADO.Value='S' then
        DatosNotaVenta.CDSNVDetLOTECERRADO.Value:='N';
       DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat:=DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
      DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat  :=0;
      DatosNotaVenta.CDSNVDet.Next;
    end;
  DatosNotaVenta.CDSNVDet.GotoBookmark(p);
  DatosNotaVenta.CDSNVDet.FreeBookmark(p);
  DatosNotaVenta.CDSNVDet.EnableControls;
  DatosNotaVenta.CDSNVDet.Filtered:=False;
  DatosNotaVenta.CDSNVDet.Filter:='';
  DatosNotaVenta.ArmarLotes;
end;



procedure TFormNotaVta.CerrarLote;
var P:TBookmark;
begin
  p:=DatosNotaVenta.CDSNVDet.GetBookmark;
  DatosNotaVenta.CDSNVDet.DisableControls;
  DatosNotaVenta.CDSNVDet.First;
  while not(DatosNotaVenta.CDSNVDet.Eof) do
    begin
      DatosNotaVenta.CDSNVDet.Edit;
      if (DatosNotaVenta.CDSNVDetRTO_ID.AsString='') and (DatosNotaVenta.CDSNVDetLOTE.AsString<>'') then
        begin
          if DatosNotaVenta.CDSNVDetLOTECERRADO.Value='N' then
            DatosNotaVenta.CDSNVDetLOTECERRADO.Value:='S'
        end;
      if DatosNotaVenta.CDSNVDetLOTECERRADO.Value='N' then
        begin
          DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
          DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat:= 0;
        end;
      DatosNotaVenta.CDSNVDet.Next;
    end;
  DatosNotaVenta.CDSNVDet.GotoBookmark(p);
  DatosNotaVenta.CDSNVDet.FreeBookmark(p);
  DatosNotaVenta.CDSNVDet.EnableControls;
  DatosNotaVenta.CDSNVDet.Filtered:=False;
  DatosNotaVenta.CDSNVDet.Filter:='';
  DatosNotaVenta.ArmarLotes;

end;

procedure TFormNotaVta.AbrirLotesExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.State in [dsBrowse]) then
    AbrirLote;
end;

procedure TFormNotaVta.AgregarCabRto;
begin
  with DatosRemitos,DatosNotaVenta DO
  begin
    FormRemitos.SucursalPorDefecto:=SucursalComprobante;
    FormRemitos.DepositoPorDefecto:=Deposito;
    CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
    CDSRtoCabCodigoSetText(CDSRtoCabCodigo,CDSNVCabCODIGO.AsString);
    CDSRtoCabLDRSetText(CDSRtoCabLDR,CDSNVCabLDR.AsString);

    CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

    CDSRtoCabDepositoSetText(CDSRtoCabDeposito,IntToStr(Deposito));
    CDSRtoCabCondicionVtaSetText(CDSRtoCabCondicionVta,CDSNVCabCONDICIONVTA.AsString);
    CDSRtoCabANULADO.Value     :='N';

    CDSRtoCabIMPRESO.Value     :='N';
    CDSRtoCabOBSERVACION1.Value:=CDSNVCabOBSERVACION1.Value;
    CDSRtoCabOBSERVACION2.Value:=CDSNVCabOBSERVACION2.Value;
    CDSRtoCabCPTE_MANUAL.Value :='N';

    CDSRtoCabNOTAVTA_ID.Value       :=CDSNVCabID.Value;
    CDSRtoCabNOTAVTA_NROCPBTE.Value :=CDSNVCabNROCPBTE.Value;

    //wwCDSRtoCabZONA.Value                :=CDSNVCabZONA.Value;
   // wwCDSRtoCabNROENTREGA.Value        :=CDSNotaPedidoCabNROENTREGA.Value;
    if CDSNVCabLISTAPRECIO.AsString<>'' then
      CDSRtoCabLISTAPRECIO.Value         :=CDSNVCabLISTAPRECIO.Value;
    if CDSNVCabVENDEDOR.AsString<>'' Then
      CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,CDSNVCabVENDEDOR.AsString);
    if CDSNVCabDSTO.AsString<>'' then
      CDSRtoCabDSTOSetText(CDSRtoCabDSTO,CDSNVCabDSTO.AsString)
    else
      CDSRtoCabDSTOSetText(CDSRtoCabDSTO,'0');

    CDSRtoCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;

  end;
end;

procedure  TFormNotaVta.AgregarDetRto;
Var UnitarioTotal,Precio:Real;
begin
  inherited;
  with DatosRemitos DO
    begin
      QBuscaStock.Close;
      QBuscaStock.ParamByName('Codigo').Value:=DatosNotaVenta.CDSNVDetCODIGOARTICULO.AsString;
      QBuscaStock.Open;
      if QBuscaStockCLASE_ARTICULO.Value>0 then
        begin
          CDSRtoDet.Append;
          CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,DatosNotaVenta.CDSNVDetCODIGOARTICULO.AsString);
          CDSRtoDetDetalle.Value            := DatosNotaVenta.CDSNVDetDETALLE.Value;
          CDSRtoDetCantidadSetText(CDSRtoDetCantidad,DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsString);
          CDSRtoDetDESGLOZAIVA.Value        := CDSRtoCabDESGLOZAIVA.Value;
          CDSRtoDetDEPOSITO.Value           := CDSRtoCabDeposito.Value;
          CDSRtoDetCLASECPBTE.Value         := CDSRtoCabCLASECPBTE.Value;
          CDSRtoDetTipoCpbte.Value          := CDSRtoCabTIPOCPBTE.Value;
          CDSRtoDetDescuentoSetText(CDSRtoDetDescuento,'0');
          CDSRtoDetOBSERVACION.Value        := DatosNotaVenta.CDSNVDetOBSERVACION.Value;
          CDSRtoDetLOTE.Value               := DatosNotaVenta.CDSNVDetLOTE.Value;
          CDSRtoDetUNITARIO_GRAVADO.AsFloat := DatosNotaVenta.CDSNVDetUNITARIO_GRAVADO.AsFloat;
          CDSRtoDetUNITARIO_EXENTO.AsFloat  := DatosNotaVenta.CDSNVDetUNITARIO_EXENTO.AsFloat;
          CDSRtoDetCOSTO_GRAVADO.AsFloat    := DatosNotaVenta.CDSNVDetCOSTO_GRAVADO.AsFloat;
          CDSRtoDetCOSTO_EXENTO.AsFloat     := DatosNotaVenta.CDSNVDetCOSTO_EXENTO.AsFloat;
          CDSRtoDetCOSTO_TOTAL.AsFloat      := DatosNotaVenta.CDSNVDetCOSTO_TOTAL.AsFloat;
          CDSRtoDetNOTAVENTA_ID.Value       := DatosNotaVenta.CDSNVDetID_CAB.Value;
          CDSRtoDetNOTAVENTA_ID_DET.Value   := DatosNotaVenta.CDSNVDetID.Value;
          UnitarioTotal                     := CDSRtoDetUnitario_Gravado.AsFloat + CDSRtoDetUnitario_Exento.AsFloat;

          if CDSRtoCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=(CDSRtoDetUnitario_Gravado.AsFloat * (1 + CDSRtoDetIVA_Tasa.AsFloat * 0.01)) + CDSRtoDetUnitario_Exento.AsFloat;
          if isZero(UnitarioTotal) then UnitarioTotal:=1;

          CDSRtoDetUnitario_TotalSetText(CDSRtoDetUnitario_Total,FloatToStr(UnitarioTotal));
          CDSRtoDetDescuentoSetText(CDSRtoDetDescuento,DatosNotaVenta.CDSNVDetDESCUENTO.AsString);
          CDSRtoDet.Post;
        end;
    end;
end;



procedure TFormNotaVta.AgregarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
end;

procedure TFormNotaVta.btIngCantidadClick(Sender: TObject);
begin
  inherited;
  FormIngresoCantidad.Show;
end;

procedure TFormNotaVta.BorrarExecute(Sender: TObject);
begin
  if DatosNotaVenta.CDSRemitos.IsEmpty then
    inherited;

end;

procedure TFormNotaVta.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     DatosNotaVenta.CDSNvCabCODIGOSetText(DatosNotaVenta.CDSNvCabCODIGO,FormBuscadorClientes.Codigo);

end;

procedure TFormNotaVta.BuscarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
  if not(Assigned(FormBuscadorNotaVenta)) then
    FormbuscadorNotaVenta:=TFormBuscadorNotaVenta.Create(Self);
  FormBuscadorNotaVenta.ShowModal;
  if FormBuscadorNotaVenta.ModalResult=mrOk then
    begin
      DatoNew:=IntToStr(FormBuscadorNotaVenta.Id);
      Recuperar.Execute;
    end;

end;

procedure TFormNotaVta.BuscarPorReferenciaExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscarPorNroReferenica)) THEN
    FormBuscarPorNroReferenica := TFormBuscarPorNroReferenica.Create(self);
  FormBuscarPorNroReferenica.CompraVta:='nv';
  FormBuscarPorNroReferenica.ShowModal;
  IF (FormBuscarPorNroReferenica.ModalResult=mrOK) then
    begin
      if (FormBuscarPorNroReferenica.Id > 0) THEN
        BEGIN
            //TipoCpbte:= FormBuscarPorNroReferenica.Tipo;
            DatoNew  := IntToStr(FormBuscarPorNroReferenica.id);
            Recuperar.Execute;
        END
      else
        Showmessage('No se encontró el presupuesto');
    end;

end;

procedure TFormNotaVta.Button1Click(Sender: TObject);
begin
  inherited;
   pnRemitos.Visible:=False;
end;

procedure TFormNotaVta.CancelarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
  DatosNotaVenta.CDSNVCab.Close;
  DatosNotaVenta.CDSNVCab.Params.ParamByName('id').Clear;
  DatosNotaVenta.CDSNVCab.Open;
  DatosNotaVenta.CDSNVDet.Close;
  DatosNotaVenta.CDSNVDet.Params.ParamByName('id').Clear;
  DatosNotaVenta.CDSNVDet.Open;
  Autorizado:=False;
  lbAutorizado.Caption:='Bloqueado';
  lbAutorizado.Font.Color:=clRed;
  dbgDetalle.Columns[8].Visible:=Autorizado;
end;

procedure TFormNotaVta.cbLotesClick(Sender: TObject);
begin
  inherited;
   DatosNotaVenta.CDSNVDet.Filtered:=False;
   DatosNotaVenta.CDSNVDet.Filter:='';
  if ( cbLotes.Text<>'-') then
    begin
      DatosNotaVenta.CDSNVDet.Filter:='Lote = '+FormNotaVta.cbLotes.Text;
      DatosNotaVenta.CDSNVDet.Filtered:=True;
    end;

end;

procedure TFormNotaVta.FinalizaNVExecute(Sender: TObject);
begin
  DatoNew :=DatosNotaVenta.CDSNVCabID.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosNotaVenta.CDSNVCab.Edit;
    DatosNotaVenta.CDSNVCabESTADO.Value:='C';
    DatosNotaVenta.CDSNVCab.Post;
    DatosNotaVenta.CDSNVCab.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo marcar como cumplido...');
  end;
  Recuperar.Execute;
end;

procedure TFormNotaVta.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  DatosNotaVenta.CDSNVCab.Close;
//  DatosNotaVenta.CDSNVDet.Close;

//  FreeAndNil(FormIngresoCantidad);
  inherited;
  Action:=caFree;


end;

procedure TFormNotaVta.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  IF NOT (Assigned(DatosNotaVenta)) THEN
    DatosNotaVenta := TDatosNotaVenta.Create(Self);
  if DSBase.DataSet=nil Then
    DSBase.DataSet:=DatosNotaVenta.CDSNVCab;
  AutoSize:=False;
  With DatosNotaVenta do
  begin
    AddClientDataSet(CDSNVCab,DSPNVCab);
    AddClientDataSet(CDSNVDet,DSPNVDet);
    CDSNVCab.Close;
    CDSNVCab.Params.ParamByName('id').Clear;
    CDSNVCab.Open;
    CDSNVDet.IndexDefs.Clear;
    CDSNVDet.Close;
    CDSNVDet.Params.ParamByName('id').Clear;
    CDSNVDet.Open;
//    CDSNVCab.Open;
    CDSNVDet.IndexDefs.Clear;

   // CDSNVDet.Open;
  end;
  if Not(Assigned(FormIngresoCantidad)) then
    FormIngresoCantidad:=TFormIngresoCantidad.Create(self);

  Tabla     := 'NotaVentaCab';
  campo     := 'id';
  ListaLote := TStringList.Create;
  cbLotes.Clear;
  ListaLote.Clear;
  ListaLote.Add('-');
  Autorizado                    := False;
  lbAutorizado.Caption          := 'Bloqueado';
  lbAutorizado.Font.Color       := clRed;
  dbgDetalle.Columns[8].Visible := Autorizado;
end;

procedure TFormNotaVta.FormDestroy(Sender: TObject);
begin
  inherited;
  FormNotaVta:=nil;
end;

procedure TFormNotaVta.FormResize(Sender: TObject);
begin
  inherited;
  if FormNotaVta<>nil then
    if FormNotaVta.Width<>873 then
      FormNotaVta.Width:=873;
end;

procedure TFormNotaVta.GenerarRtoExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
   DatosNotaVenta.CDSNVDet.Filtered:=False;
   DatosNotaVenta.CDSNVDet.Filter  :='';
  if DatosNotaVenta.CDSNVCab.IsEmpty Then
     Raise Exception.Create('No hay Datos para procesar....');

  if DatosNotaVenta.CDSNVCabESTADO.AsString='A' Then
    Raise Exception.Create('Nota de Venta Anulada, no se puede hacer esta Operacion...');

  if (DatosNotaVenta.FaltaLote=True) Then
    Raise Exception.Create('Hay Items sin lote asignado, no se puede hacer esta Operacion...');


  if DatosNotaVenta.HayParaFacturar Then
    begin
      Modificar.Execute;
      CerrarLote;
      Confirma.Execute;
      if Not(Assigned(FormBuscadorTipoCpbte)) then
        FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
      FormBuscadorTipoCpbte.TipoCpbte1:='RE';
      FormBuscadorTipoCpbte.TipoCpbte2:='';
      FormBuscadorTipoCpbte.TipoCpbte3:='';
      FormBuscadorTipoCpbte.CV        :='V';
      FormBuscadorTipoCpbte.Sucursal  :=DatosNotaVenta.CDSNVCabSUCURSAL.Value;
      FormBuscadorTipoCpbte.ShowModal;
      SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
      IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;

      if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
        begin
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DatosNotaVenta.CDSNVCabDEPOSITO.Value;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            begin
              Deposito :=FormBuscadorDepositos.Deposito;
              DatoOld  :=IntToStr(DatosNotaVenta.CDSNVCabID.Value);
              //TipoCpbte   :=DatosNotaVenta.CDSNVCabTIPOCPBTE.Value;
              if Not(Assigned(FormRemitos)) Then
                FormRemitos:=TFormRemitos.Create(Application);
              DatosNotaVenta.CDSNVDet.IndexFieldNames:='Lote';
              DatosNotaVenta.CDSNVDet.First;
              while not(DatosNotaVenta.CDSNVDet.Eof) do
                begin
                  FormRemitos.Agregar.Execute;
                  AgregarCabRto;
 //                 DatosRemitos.wwCDSRtoCabCPTE_MANUAL.Value:='S';
                  if Not(Assigned(FormControlNroRto)) then
                    FormControlNroRto:=TFormControlNroRto.Create(Application);
                  FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.Value;
                  FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.Value;
                  FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.Value;


                  FormControlNroRto.ShowMOdal;

                  if (FormControlNroRto.ModalResult=mrOk) then
                    begin
                       if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.Value) or
                          (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.Value) or
                          (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.Value) Then
                      DatosRemitos.CDSRtoCabCPTE_MANUAL.Value:='S';
                      DatosRemitos.CDSRtoCabLETRARTO.Value:=FormControlNroRto.Let;
                      DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                      DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                    end;
                  while Not(DatosNotaVenta.CDSNVDet.Eof) and (DatosRemitos.CDSRtoDet.RecordCount < (DatosRemitos.Renglones {- ListaLote.Count-1}) ) Do // Ingreso el detalle
                    begin
                      if (DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat>0) and
                         (datosNotaVenta.CDSNVDetLOTECERRADO.AsString='S') and
                         (DatosNotaVenta.CDSNVDetRTO_ID.AsString='')
                      Then
                        begin
                          AgregarDetRto;
                        end;
                      DatosNotaVenta.CDSNVDet.Next;
                      p:=DatosNotaVenta.CDSNVDet.GetBookmark;
                    end;
                  if (Assigned(FormControlNroRto)) then
                    FreeAndNil(FormControlNroRto);

                  FormRemitos.Confirma.Execute;

    //              if not(DatosNotaVenta.CDSNVDet.Eof) then
   //                 begin
                     // if FormRemitos.GravadoOk then
                     //   MarcarDetalleNV(FormRemitos.Id,FormRemitos.NroCpbte);
                     // DatosNotaVenta.CDSNVDet.GotoBookmark(p);
//                    end
 //                 else
  //                  begin
   //                   if FormRemitos.GravadoOk then
    //                    MarcarDetalleNV(FormRemitos.Id,FormRemitos.NroCpbte);
     //                 DatosNotaVenta.CDSNVDet.Last;
     //               end
                end;
    //          DatosNotaVenta.CDSNVDet.FreeBookmark(p);
              if DatosNotaVenta.HayFaltantes then
                  Clonar.Execute;
               DatoNew:= DatoOld;
               Recuperar.Execute;
               FinalizaNV.Execute;
            end;
        end;

    end
  else
    ShowMessage('No hay cantidades de entrega para Generar el Rto......!!!');

end;

procedure TFormNotaVta.ImprimirExecute(Sender: TObject);
begin
  inherited;
  DatosNotaVenta.CDSNVDet.IndexFieldNames:='LOTE;DETALLE';
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaVenta.Fr3');
  frReport.ShowReport;
END;

procedure TFormNotaVta.ImprimirLoteExecute(Sender: TObject);
begin
  inherited;
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
  DatosNotaVenta.CDSNVDet.IndexFieldNames:='LOTE';
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaVentaLotes.Fr3');
  frReport.ShowReport;
end;

procedure TFormNotaVta.ImprimirPendientesExecute(Sender: TObject);
begin
  inherited;
  frReport.PrintOptions.Printer:=PrNomListados;
  frReport.SelectPrinter;
  frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaNotaVentaPendientes.Fr3');
  frReport.ShowReport;
end;

procedure TFormNotaVta.LoginExecute(Sender: TObject);
begin
  inherited;
  if not (Assigned(FormLogin)) then
    FormLogin := TFormLogin.Create(Self);
  FormLogin.ShowModal;
  Autorizado:=FormLogin.Tag=1;
  if Autorizado then
    begin
      lbAutorizado.Caption:='Desbloqueado';
      lbAutorizado.Font.Color:=clGreen;
    end
  else
    begin
      lbAutorizado.Caption:='Bloqueado';
      lbAutorizado.Font.Color:=clRed;
    end;
  dbgDetalle.Columns[8].Visible:=Autorizado;
end;

procedure TFormNotaVta.ModificaLineaExecute(Sender: TObject);
begin
  if DatosNotaVenta.CDSNVDetLOTECERRADO.Value='S' then
    raise Exception.Create('Lote Cerrdado, no se permite esta operación');
  if (DSBase.State in [dsBrowse]) then
    raise Exception.Create('Pulse modificar para hacer los cambios en el detalle...');

  if Autorizado then
    begin
      if not(Assigned(FormABMLineaNotavta)) then
        FormABMLineaNotavta:=TFormABMLineaNotavta.Create(self);
      FormABMLineaNotavta.Modo     :='M';
      FormABMLineaNotavta.Codigo   := DatosNotaVenta.CDSNVDetCODIGOARTICULO.Value;
      FormABMLineaNotavta.Detalle  := DatosNotaVenta.CDSNVDetDETALLE.Value;
      FormABMLineaNotavta.Cantidad := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
      FormABMLineaNotavta.Precio   := DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat;
      FormABMLineaNotavta.Lista    := DMMain_FD.ListaPorDefecto(-1);

      FormABMLineaNotavta.ShowModal;
      if FormABMLineaNotavta.ModalResult=mrOk then
        begin
          DatosNotaVenta.CDSNVDet.Edit;
          if FormABMLineaNotavta.Cantidad<DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat then
            begin
              DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat  := FormABMLineaNotavta.Cantidad;
              DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat:= DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
              DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat-
                                                                  DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat;
            end
          else
            BEGIN
              DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat  := FormABMLineaNotavta.Cantidad;
              DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat-
                                                                  DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat;
            end;
          DatosNotaVenta.CDSNVDetUNITARIO_TOTALSetText(DatosNotaVenta.CDSNVDetUNITARIO_TOTAL,FormatFloat('0.00',FormABMLineaNotavta.Precio));
          DatosNotaVenta.CDSNVDet.Post;
        end;
    end;

end;

procedure TFormNotaVta.NextExecute(Sender: TObject);
begin
 if pnRemitos.Visible=True then
    pnRemitos.Visible:=False;
  inherited;

end;

procedure TFormNotaVta.pnCabeceraMouseMove(Sender: TObject; Shift: TShiftState;
  X, Y: Integer);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormNotaVta.pnRemitosExit(Sender: TObject);
begin
  inherited;
  pnRemitos.Visible:=False;

end;

procedure TFormNotaVta.RecuperarExecute(Sender: TObject);
begin
  inherited;
  DatosNotaVenta.CDSNVDet.Filtered:=False;
  sbEstado.Panels[0].Text:='';
  sbEstado.Panels[1].Text:='';

  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
  DatosNotaVenta.CDSNVCab.Close;
  DatosNotaVenta.CDSNVCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosNotaVenta.CDSNVCab.Open;
  DatosNotaVenta.CDSNVDet.Close;
  DatosNotaVenta.CDSNVDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  DatosNotaVenta.CDSNVDet.Open;

  if DatosNotaVenta.CDSNVCabESTADO.Value='N'then
    lbEstado.Caption:='Nuevo'
  else
    if DatosNotaVenta.CDSNVCabESTADO.Value='E' then
      lbEstado.Caption:='Entrega'
    else
      if DatosNotaVenta.CDSNVCabESTADO.Value='C' then
        lbEstado.Caption:='Cumplido'
      else
        if DatosNotaVenta.CDSNVCabESTADO.Value='A' then
          lbEstado.Caption:='Anulado';
  sbEstado.Panels[1].Text:='Pre:'+Copy(DatosNotaVenta.CDSNVCabPRESUPUESTO_NROCPBTE.Value,1,1)+'-'+
                                  Copy(DatosNotaVenta.CDSNVCabPRESUPUESTO_NROCPBTE.Value,2,4)+'-'+
                                  Copy(DatosNotaVenta.CDSNVCabPRESUPUESTO_NROCPBTE.Value,6,8);

  DatosNotaVenta.CDSRemitos.Close;
  DatosNotaVenta.CDSRemitos.Params.ParamByName('id').Value:= DatosNotaVenta.CDSNVCabID.Value;
  DatosNotaVenta.CDSRemitos.Open;

  if (DatosNotaVenta.CDSRemitos.RecordCount<=0) and (GenerarRto.Enabled=False) then
    GenerarRto.Enabled:=True;
  DatosNotaVenta.ArmarLotes;
  if Autorizado then
    begin
      lbAutorizado.Caption:='Desbloqueado';
      lbAutorizado.Font.Color:=clGreen;
    end
  else
    begin
      lbAutorizado.Caption:='Bloqueado';
      lbAutorizado.Font.Color:=clRed;
    end;
end;

procedure TFormNotaVta.RecuperarNVExecute(Sender: TObject);
begin
  inherited;
  DatoNew :=DatosNotaVenta.CDSNVCabID.AsString;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosNotaVenta.CDSNVCab.Edit;
    DatosNotaVenta.CDSNVCabESTADO.Value:='N';
    DatosNotaVenta.CDSNVCab.Post;
    DatosNotaVenta.CDSNVCab.ApplyUpdates(0);
    DMMain_FD.fdcGestion.Commit;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo marcar como cumplido...');
  end;
  Recuperar.Execute;
end;

procedure TFormNotaVta.RevisionImporteExecute(Sender: TObject);
var codigo,detalle:String;
begin
  inherited;
  if DSBase.State in [dsEdit] then
    begin
      DatosNotaVenta.CDSPresuDet.Close;
      DatosNotaVenta.CDSPresuDet.Params.ParamByName('id').Value:=DatosNotaVenta.CDSNVCabPRESUPUESTO_ID.AsInteger;
      DatosNotaVenta.CDSPresuDet.Open;
      DatosNotaVenta.CDSPresuDet.First;
      DatosNotaVenta.CDSNVDet.First;
      while not(DatosNotaVenta.CDSPresuDet.Eof) do
        begin
          if ((Trunc(DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat*100)) = 0) then
            begin
              codigo :=DatosNotaVenta.CDSNVDetCODIGOARTICULO.AsString;
              detalle:=DatosNotaVenta.CDSNVDetDETALLE.AsString;
              if (DatosNotaVenta.CDSPresuDet.Locate('CODIGOARTICULO;DETALLE',VarArrayOf([Codigo, Detalle]),[])) Then
                begin
                  DatosNotaVenta.CDSNVDet.Edit;
                  DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat  :=DatosNotaVenta.CDSPresuDetUNITARIO_TOTAL.AsFloat;
                  DatosNotaVenta.CDSNVDetUNITARIO_GRAVADO.AsFloat:=DatosNotaVenta.CDSPresuDetUNITARIO_GRAVADO.AsFloat;
                  DatosNotaVenta.CDSNVDetUNITARIO_EXENTO.AsFloat :=DatosNotaVenta.CDSPresuDetUNITARIO_EXENTO.AsFloat;
                  DatosNotaVenta.CDSNVDet.Post;
                end;
            end;
          DatosNotaVenta.CDSPresuDet.Next;
        end;
      DatosNotaVenta.CDSPresuDet.Close;
    end;
end;

procedure TFormNotaVta.SalirExecute(Sender: TObject);
begin
 // DatosNotaVenta.CDSNVCab.EmptyDataSet;
 // DatosNotaVenta.CDSNVDet.EmptyDataSet;
  DatosNotaVenta.CDSNVCab.Close;
  DatosNotaVenta.CDSNVDet.Close;
  if FormIngresoCantidad<>Nil then
    FreeAndNil(FormIngresoCantidad);
  inherited;
  //Close;
end;

procedure TFormNotaVta.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReport.DesignReport;
end;

procedure TFormNotaVta.sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  inherited;
  if x>(sbEstado.Panels[0].Width+10) then
    begin
      sbEstado.Cursor:= crHandPoint;
    end
  else
     sbEstado.Cursor:=crDefault;
end;

procedure TFormNotaVta.VerPresupuestoExecute(Sender: TObject);
begin
  inherited;
  if (DatosNotaVenta.CDSNVCabPRESUPUESTO_ID.AsString<>'') and (sbEstado.Cursor<>crDefault) then
    begin
      if Not(Assigned(FormPresupuesto_2)) then
        FormPresupuesto_2:=TFormPresupuesto_2.Create(Self);
      FormPresupuesto_2.DatoNew:=DatosNotaVenta.CDSNVCabPRESUPUESTO_ID.AsString;
      FormPresupuesto_2.TipoCpbte:='PR';
      FormPresupuesto_2.Recuperar.Execute;
      FormPresupuesto_2.Show;

    end;
end;

procedure TFormNotaVta.VerRemitosExecute(Sender: TObject);
begin
  inherited;
  if pnRemitos.Visible=False then
    pnRemitos.Visible:=True
  else
   pnRemitos.Visible:=False;

end;

procedure TFormNotaVta.CierraLoteExecute(Sender: TObject);
begin
  inherited;
  if not(DSBase.State in [dsBrowse]) then
    if MessageDlg('Esta por hacer un cierre de Lote, esta seguro',mtConfirmation,mbYesNo,0)=mrYes then
      CerrarLote;
end;

procedure TFormNotaVta.ClonarExecute(Sender: TObject);
VAR i,sub:Integer;
Nombre:String;
begin
  inherited;
  DatosNotaVenta.CDSNVCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NVCab.XML');
  DatosNotaVenta.CDSNVDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NVDet.XML');

  DatosNotaVenta.CDSNVCabXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NVCab.xml');
  DatosNotaVenta.CDSNVDetXML.LoadFromFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\NVDet.xml');

 Agregar.Execute;
  //DuplicarFc:=True;
  For i:=0 to DatosNotaVenta.CDSNVCabXML.FieldCount-1 do
    begin
      if (DatosNotaVenta.CDSNVCab.FindField(DatosNotaVenta.CDSNVCabXML.Fields[i].FieldName)<>nil) Then
        begin
          try
            Nombre:=DatosNotaVenta.CDSNvCabXML.Fields[i].FieldName;
            if (Nombre<>'ID') Then
              DatosNotaVenta.CDSNVCab.FieldByName(Nombre).Value:=DatosNotaVenta.CDSNVCabXML.FieldByName(Nombre).Value;
           Except
             ShowMessage(nombre);
           end;
        end;
    end;
   DatosNotaVenta.CDSNVCabESTADO.Value :='N';
   DatosNotaVenta.CDSNVCabID.Value     :=DatosNotaVenta.ibgIdcab.IncrementFD(1);
   sub:=DatosNotaVenta.CDSNVCabXML.FieldByName('SubNro').AsInteger+1;
   DatosNotaVenta.CDSNVCabSUBNRO.Value  :=Copy('00',1,length(IntToStr(sub)))+IntToStr(sub);

   while not(DatosNotaVenta.CDSNVDetXML.Eof) do
     begin
       if (DatosNotaVenta.CDSNVDetXML.FieldByName('CANTIDAD_FALTANTE').Value>0) Then
         begin
           DatosNotaVenta.CDSNVDet.Append;
           For i:=0 to DatosNotaVenta.CDSNVDetXML.FieldCount-1 do
             begin
               if (DatosNotaVenta.CDSNVDet.FindField(DatosNotaVenta.CDSNVDetXML.Fields[i].FieldName)<>nil) Then
                 begin
                   Nombre:=DatosNotaVenta.CDSNVDetXML.Fields[i].FieldName;
                   if Nombre<>'ID' Then
                     DatosNotaVenta.CDSNVDet.FieldByName(Nombre).Value:=DatosNotaVenta.CDSNVDetXML.FieldByName(Nombre).Value;
                 end;
             end;
           DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat  := DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat;
           DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat:= DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat;
           DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat := 0;
           DatosNotaVenta.CDSNVDetID_CAB.Value            := DatosNotaVenta.CDSNVCabID.Value;
           DatosNotaVenta.CDSNVDetID.Value                := DatosNotaVenta.ibgIdDet.IncrementFD(1);
           DatosNotaVenta.CDSNVDetLOTECERRADO.Value       := 'N';
           DatosNotaVenta.CDSNVDetLOTE.Clear;
           DatosNotaVenta.CDSNVDet.Post;
         end;
       DatosNotaVenta.CDSNVDetXML.Next;
     end;
   Confirma.Execute;
end;


procedure TFormNotaVta.ConfirmaExecute(Sender: TObject);
begin
  DatosNotaVenta.CDSNVDet.Filtered:=False;
  DatoNew:=DatosNotaVenta.CDSNVCabID.AsString;
  DatosNotaVenta.SumarEntregados;
  if (Entregado) and (DSBase.State in [dsEdit]) then
    DatosNotaVenta.CDSNVCabESTADO.Value:='E';
 // if (Cumplido) and (DSBase.State in [dsEdit]) Then
 //   DatosNotaVenta.CDSNVCabESTADO.Value:='C';
  inherited;
  DatosNotaVenta.CDSNVDet.IndexDefs.Clear;
  Recuperar.Execute;
  Autorizado:=False;
  lbAutorizado.Caption:='Bloqueado';
  lbAutorizado.Font.Color:=clRed;
  dbgDetalle.Columns[8].Visible:=Autorizado;
end;

procedure TFormNotaVta.dbePresupuestoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  sbEstado.Panels[0].Text:='Doble Click Abre el Presupuesto';
end;

procedure TFormNotaVta.dbg1DblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormRemitos)) then
    FormRemitos:=TFormRemitos.Create(Self);
  FormRemitos.DatoNew:=DatosNotaVenta.CDSRemitosID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Show;
  FormRemitos.Recuperar.Execute;
end;


procedure TFormNotaVta.dbgDetalleCellClick(Column: TColumn);
begin
  inherited;
  if (dbgDetalle.DataSource.DataSet.FieldByName('LOTECERRADO').Value='S') and (Column.Index=3) then
    dbgDetalle.SelectedIndex:=6;
end;

procedure TFormNotaVta.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if (dbgDetalle.DataSource.DataSet.FieldByName('LOTECERRADO').Value='S') and (dbgDetalle.SelectedIndex=3) then
     dbgDetalle.SelectedIndex:=6
  else
    if dbgDetalle.SelectedIndex<3 then
      begin
        if (dbgDetalle.DataSource.DataSet.FieldByName('LOTECERRADO').Value='N') and (dbgDetalle.SelectedIndex=3) then
          dbgDetalle.SelectedIndex:=3
        else
          dbgDetalle.SelectedIndex:=6;
      end

    else
      if (dbgDetalle.SelectedIndex=4) or (dbgDetalle.SelectedIndex=7) then
       dbgDetalle.SelectedIndex:=6;

end;

procedure TFormNotaVta.dbgDetalleDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var Check: Integer;
begin
  inherited;
  if gdSelected in State Then
     begin
       dbgDetalle.Canvas.Font.Color:=clWhite;
       dbgDetalle.Canvas.Brush.Color:=clNavy ;
     end
  else
    begin
      if (Trunc( DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat*1000)) =
         (Trunc( DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat * 1000)) then
        begin
          dbgDetalle.Canvas.Font.Color:=clYellow;
          dbgDetalle.Canvas.Brush.Color:=clAqua;
          if DataCol in [0,1,2,4,5,7] then
            begin
              dbgDetalle.Canvas.Brush.Color:=clInfoBk;
              dbgDetalle.Canvas.Font.Color:=clBlack;
            end;
         end
      else
        begin
          dbgDetalle.Canvas.Font.Color:=clBlack;
          dbgDetalle.Canvas.Brush.Color:=clWhite;
          if DataCol in [0,1,2,4,5,7] then
            begin
              dbgDetalle.Canvas.Brush.Color:=clInfoBk;
              dbgDetalle.Canvas.Font.Color :=clBlack;
            end;
         end;
    end;


  if (DatosNotaVenta.CDSNVDetLOTECERRADO.Value = 'S') then
    dbgDetalle.Canvas.Font.Style:=[fsBold]
  else
    dbgDetalle.Canvas.Font.Style:=[];

  if (Trunc(DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat * 100) = 0) then
    dbgDetalle.Canvas.Font.Color:=clRed
  else
    begin
      if gdSelected in State Then
        dbgDetalle.Canvas.Font.Color:=clWhite
      else
        dbgDetalle.Canvas.Font.Color:=clBlack

    end;

    //        Check := 0;
//        if DatosNotaVenta.CDSNVDetLOTECERRADO.Value = 'S' then
//          Check := DFCS_CHECKED;
//         dbgDetalle.Canvas.FillRect(Rect);
//         DrawFrameControl(dbgDetalle.Canvas.Handle, Rect,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
//      end;
    //else
    // dbgrid1.DefaultDrawColumnCell(Rect,DataCol,Column,State);

  dbgDetalle.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;


procedure TFormNotaVta.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  dbgDetalle.SelectedIndex:=3;
  sbEstado.Panels[0].Text:='Dbl-Clik:Edita Renglon||Ctrl+Del:Borra Renglon ';
end;

procedure TFormNotaVta.dbgDetalleKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ((Key=VK_DELETE) or (Key=VK_BACK)) and (dbgDetalle.SelectedIndex=6) and (not(DSBase.State in [dsBrowse])) then
    begin
      if ( dbgDetalle.DataSource.DataSet.State in [dsBrowse] )  then
        dbgDetalle.DataSource.DataSet.Edit;
      dbgDetalle.DataSource.DataSet.FieldByName('LOTE').Clear;
      dbgDetalle.DataSource.DataSet.Post;
    end;

end;

procedure TFormNotaVta.dbgDetalleTitleClick(Column: TColumn);
var campo:string;
  i: Integer;
begin
  inherited;
  try
    for i := 0 to dbgDetalle.Columns.Count-1  do
      dbgDetalle.Columns[i].Title.Font.Style:=[];
    Column.Title.Font.Style:=[fsBold];
    Campo := Column.FieldName;
    with dbgDetalle.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;
end;

procedure TFormNotaVta.dbgDetalleDblClick(Sender: TObject);
begin
  inherited;
  ModificaLinea.Execute;
end;

procedure TFormNotaVta.dbgDetalleExit(Sender: TObject);
begin
  inherited;
  sbEstado.Panels[0].Text:='';
end;

procedure TFormNotaVta.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled      := True;
  pnCabecera.Enabled       := False;
  dbgDetalle.ReadOnly      := DSBase.State in [dsBrowse];
  dbnDetalle.Enabled       := not(DSBase.State in [dsBrowse]);
  GenerarRto.Enabled       := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]) and
                              (DatosNotaVenta.CDSNVCabESTADO.Value<>'C');
  Imprimir.Enabled         := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]);
  btImpresion.Enabled      := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]);
  FinalizaNV.Enabled       := (not(DSBase.DataSet.IsEmpty)) and (DSBase.State in [dsBrowse]) and
                              (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (DatosNotaVenta.CDSNVCabESTADO.Value<>'A') ;
  Modificar.Enabled        := (DSBase.state in [dsBrowse]) and (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (not(DSBase.DataSet.IsEmpty));
  Borrar.Enabled           := (DSBase.state in [dsBrowse]) and (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (not(DSBase.DataSet.IsEmpty));
  CierraLote.Enabled       := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
  (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (DatosNotaVenta.CDSNVCabESTADO.Value<>'A') ;
  AbrirLotes.Enabled       := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
                              (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (DatosNotaVenta.CDSNVCabESTADO.Value<>'A') ;
  dbeObservaciones.Enabled := not(DSBase.State in [dsBrowse]);
  VerRemitos.Enabled       := (DSBase.State in [dsBrowse]);
  VerPresupuesto.Enabled   := (DSBase.State in [dsBrowse]);
  Login.Enabled            := (not(DSBase.DataSet.IsEmpty)) and (not(DSBase.State in [dsBrowse])) and
                              (DatosNotaVenta.CDSNVCabESTADO.Value<>'C') and (DatosNotaVenta.CDSNVCabESTADO.Value<>'A') ;
end;


end.
