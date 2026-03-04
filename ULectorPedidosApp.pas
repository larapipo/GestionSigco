unit ULectorPedidosApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  CompBuscador, JvAppStorage, JvAppIniStorage, Data.DB, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, Vcl.ComCtrls, JvLabel, JvDBControls,
  JvExControls, JvGradient, Vcl.Buttons, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, JvDBLookup, Vcl.DBCtrls, AdvOfficeButtons, Vcl.Menus,
  System.Types, AdvGroupBox, frxClass, frxDBSet, frCoreClasses;

type
  TFormLectorPedidosApp = class(TFormABMBase)
    QCabecera: TFDQuery;
    QDetalle: TFDQuery;
    debgDetalle: TDBGrid;
    pnCabecera: TPanel;
    Splitter1: TSplitter;
    dbgCabecera: TDBGrid;
    DSCabecera: TDataSource;
    DSDetalle: TDataSource;
    QDetalleID: TIntegerField;
    QDetalleID_CAB: TIntegerField;
    QDetalleFECHA: TSQLTimeStampField;
    QDetalleCLIENTE: TStringField;
    QDetalleNOMBRE: TStringField;
    QDetalleCODIGO: TStringField;
    QDetalleCANTIDAD_UNIDADES: TFloatField;
    QDetalleDESCRIPCION: TStringField;
    QDetalleCANTIDAD: TFloatField;
    QDetallePRECIO: TFloatField;
    QDetalleESTADO: TStringField;
    QDetalleDESCUENTO: TFloatField;
    QCabeceraID: TIntegerField;
    QCabeceraFECHA: TSQLTimeStampField;
    QCabeceraVENDEDOR: TStringField;
    QCabeceraLISTA_PRECIOS: TIntegerField;
    QCabeceraCLIENTE: TStringField;
    QCabeceraNOMBRE: TStringField;
    QCabeceraTOTAL: TFloatField;
    QCabeceraESTADO: TStringField;
    GenerarRto: TAction;
    GenerarNotaPedidoCliente: TAction;
    Label1: TLabel;
    cbZonas: TJvDBLookupCombo;
    QZonas: TFDQuery;
    DSZonas: TDataSource;
    QCabeceraFECHA_HORA: TSQLTimeStampField;
    QCabeceraMUESTRAZONA: TStringField;
    QZonasID_ZONA: TIntegerField;
    QZonasDETALLE: TStringField;
    QDetalleDESCUENTO_ADICIONAL: TFloatField;
    QCabeceraFECHA_HORA_ENVIO: TSQLTimeStampField;
    QCabeceraZONA: TIntegerField;
    DBText1: TDBText;
    Label2: TLabel;
    Label3: TLabel;
    DBText2: TDBText;
    cbVendedor: TJvDBLookupCombo;
    QVendedores: TFDQuery;
    QVendedoresCODIGO: TStringField;
    QVendedoresNOMBRE: TStringField;
    DSVendedores: TDataSource;
    MarcarRealizado: TAction;
    PopupMenu1: TPopupMenu;
    MarcarRealizado1: TMenuItem;
    Borrar1: TMenuItem;
    N1: TMenuItem;
    QCabeceraMODO_FACTURACION: TSmallintField;
    GenerarRto1: TMenuItem;
    N2: TMenuItem;
    GenerarNotadePedidoCliente1: TMenuItem;
    GenerarFactura: TAction;
    GenerarFactura1: TMenuItem;
    Memo1: TMemo;
    pcPedidos: TPageControl;
    pag1: TTabSheet;
    pag2: TTabSheet;
    QDetallesConsolidado: TFDQuery;
    rgModos: TAdvOfficeRadioGroup;
    dbgDetalles: TDBGrid;
    DSDetallesConsolidado: TDataSource;
    btImprimir: TBitBtn;
    QDetallesCopia: TFDQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    SQLTimeStampField1: TSQLTimeStampField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField1: TFloatField;
    StringField4: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    SmallintField1: TSmallintField;
    IntegerField3: TIntegerField;
    StringField8: TStringField;
    QDetallesConsolidadoCODIGO: TStringField;
    QDetallesConsolidadoDESCRIPCION: TStringField;
    QDetallesConsolidadoCANTIDAD: TFloatField;
    frReport: TfrxReport;
    frDetalle: TfrxDBDataset;
    QCabeceraLDR: TIntegerField;
    QCabeceraID_USUARIO: TIntegerField;
    QDetallesConsolidadoNOMBRE: TStringField;
    QDetallesConsolidadoLDR: TIntegerField;
    QDetallesConsolidadoID: TIntegerField;
    QCabeceraFACTURAPORDEFECTO: TIntegerField;
    chbComprobanteDefecto: TAdvOfficeCheckBox;
    QCabeceraSUCURSAL: TIntegerField;
    Imprimir: TAction;
    frCabecera: TfrxDBDataset;
    frDetPedido: TfrxDBDataset;
    QCabeceraIMPRESO: TStringField;
    BitBtn1: TBitBtn;
    ToolButton1: TToolButton;
    ImprimirPedido: TAction;
    rgImpresos: TAdvOfficeRadioGroup;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure QCabeceraBeforeInsert(DataSet: TDataSet);
    procedure QCabeceraAfterDelete(DataSet: TDataSet);
    procedure QDetalleBeforeInsert(DataSet: TDataSet);
    procedure BuscarExecute(Sender: TObject);
    procedure GenerarRtoExecute(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure GenerarNotaPedidoClienteExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cbZonasClick(Sender: TObject);
    procedure cbVendedorClick(Sender: TObject);
    procedure chbEstadoClick(Sender: TObject);
    procedure MarcarRealizadoExecute(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure QCabeceraMODO_FACTURACIONGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
    procedure GenerarFacturaExecute(Sender: TObject);
    procedure rgModosClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure ImprimirPedidoExecute(Sender: TObject);
    procedure frReportAfterPrintReport(Sender: TObject);
  private
    procedure AgregaDetalleRto;
    procedure AgregarCabRto;
    procedure AgregarCabNP;
    procedure AgregarDetNP;
    procedure AgregaCabecera;
    procedure AgregaDetalle;
    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante,
    Deposito ,DepositoDestino,Sucursal,
    IDComprobante  :Integer;
  end;

var
  FormLectorPedidosApp: TFormLectorPedidosApp;

implementation

uses UDMain_FD,URemitos,DMRemitos, UBuscadorTipoCpbte, UControlNroRto,
  DMNPedidoCliente, UNotaPedidoCliente, UBuscadorDepositos, DMVenta, UFactura_2,
  DMVentaCtdo, UFacturaCtdo_2, DMPresupuesto;

{$R *.dfm}

procedure TFormLectorPedidosApp.AgregaCabecera;
Var Continua:Boolean;
begin
  with DatosVentas DO
    begin
      FormCpbte_2.SucursalPorDefecto:= SucursalComprobante;
      FormCpbte_2.DepositoPorDefecto:= Deposito;
      CDSVentaCabSUCURSALSetText(CDSVentaCabSUCURSAL,IntToStr(SucursalComprobante));
      CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(Deposito));
      CDSVentaCabCODIGOSetText(CDSVentaCabCODIGO,QCabeceraCLIENTE.AsString);
      CDSVentaCabLDRSetText(CDSVentaCabLDR,QCabeceraLDR.AsString);

      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

      CDSVentaCabANULADO.Value         := 'N';
      CDSVentaCabIMPRESO.Value         := 'N';
      CDSVentaCabCPTE_MANUAL.Value     := 'N';
      CDSVentaCabREDUCIDA.Value        := 'N';
      CDSVentaCabCANT_BULTOS.Value     := 1;
      CDSVentaCabDSTO.AsFloat          := 0;
      CDSVentaCabIDREMITO.Value        := QCabeceraID.Value;
      CDSVentaCabTIPO_REMITO.Value     := 'PM'; // Pedidos Moviles
      CDSVentaCabNRORTO.Value          := QCabeceraID.AsString;

      CDSVentaCabFECHA_HORA.AsDateTime := Now;
      CDSVentaCabUSUARIO.Value         := DMMain_FD.UsuarioActivo;


      CDSVentaCabOBSERVACION1.AsString := 'Pedido desde Movil Nro:'+QCabeceraID.AsString;//CDSVentaCabOBSERVACION1.Value;
      CDSVentaCabOBSERVACION2.AsString := '';//CDSVentaCabOBSERVACION2.Value;
      CDSVentaCabCPTE_MANUAL.AsString  := 'N';
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,QCabeceraVENDEDOR.AsString);
    end;
end;

procedure TFormLectorPedidosApp.AgregaDetalle;
Var UnitarioTotal,
    Precio,PrecioRto   :Extended;
    Gravado,Exento,Iva,
    Total,Margen,Dscto :Extended;
    Estado             :TValueRelationship;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,QDetalleCODIGO.AsString);
      CDSVentaDetDetalle.Value        :=QDetalleDESCRIPCION.Value;
      // verificar esta linea por que si no tiene permiso el que factura borra el dscto
      CDSVentaDetDescuento.AsFloat    :=QDetalleDESCUENTO_ADICIONAL.AsFloat;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,QDetalleCANTIDAD.AsString);
      CDSVentaDetDESGLOZAIVA.Value    :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value       :=CDSVentaCabDeposito.Value;
      CDSVentaDetCLASECPBTE.Value     :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDet.Post;
    end;
end;


/////////////////////////////////////////////////////////////////////////////////////////////////
procedure TFormLectorPedidosApp.AgregarDetNP;
Var UnitarioTotal,Precio,coef:Real;
begin
  inherited;
  with DatosNPedidoClientes DO
    begin
      CDSNotaPedidoDet.Append;
      CDSNotaPedidoDetDESGLOZAIVA.Value        := CDSNotaPedidoCabDESGLOZAIVA.Value;
      CDSNotaPedidoDetDEPOSITO.Value           := CDSNotaPedidoCabDeposito.Value;
      CDSNotaPedidoDetCLASECPBTE.Value         := CDSNotaPedidoCabCLASECPBTE.Value;
      CDSNotaPedidoDetTIPOCPBTE.Value          := CDSNotaPedidoCabTIPOCPBTE.Value;
      CDSNotaPedidoDetCODIGOARTICULOSetText(CDSNotaPedidoDetCODIGOARTICULO,QDetalleCODIGO.AsString);
      CDSNotaPedidoDetDETALLE.Value            := QDetalleDESCRIPCION.Value;
      CDSNotaPedidoDetCANTIDAD_PEDIDIASetText(CDSNotaPedidoDetCANTIDAD_PEDIDIA,QDetalleCANTIDAD.AsString);
      CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat := QDetallePRECIO.AsFloat;
      CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat  := 0;

      CDSNotaPedidoDetDescuento.Value          := QDetalleDESCUENTO.Value;

      UnitarioTotal                            := CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

 //     if CDSVentaCabDESGLOZAIVA.Value='N' Then
 //       UnitarioTotal:= CDSNotaPedidoDetUNITARIO_GRAVADO.AsFloat + DatosVentas.CDSVentaDetIVA_UNITARIO.AsFloat + CDSNotaPedidoDetUNITARIO_EXENTO.AsFloat;

      CDSNotaPedidoDetUNITARIO_TOTALSetText(CDSNotaPedidoDetUNITARIO_TOTAL,FloatToStr(UnitarioTotal));

      CDSNotaPedidoDet.Post;
    end;
end;



procedure TFormLectorPedidosApp.AgregarCabNP;
begin
  with DatosNPedidoClientes DO
  begin
    FormNotaPedidoCliente.SucursalPorDefecto := SucursalComprobante;
    FormNotaPedidoCliente.DepositoPorDefecto := DepositoDestino;
    CDSNotaPedidoCabID_TIPOCOMPROBANTESetText(CDSNotaPedidoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSNotaPedidoCabCODIGOSetText(CDSNotaPedidoCabCODIGO,QCabeceraCLIENTE.AsString);
    CDSNotaPedidoCabLDRSetText(CDSNotaPedidoCabLDR,QCabeceraLDR.AsString);
   // CDSNotaPedidoCabNOMBRE.Value       := DSBase.DataSet.FieldByName('NOMBRE').AsString;
   // CDSNotaPedidoCabRAZONSOCIAL.Value  := DSBase.DataSet.FieldByName('RAZONSOCIAL').AsString;
   // CDSNotaPedidoCabCUIT.Value         := DSBase.DataSet.FieldByName('CUIT').AsString;
   // CDSNotaPedidoCabTIPOIVA.Value      := DSBase.DataSet.FieldByName('TIPOIVA').Value;
   // CDSNotaPedidoCabDIRECCION.Value    := DSBase.DataSet.FieldByName('DIRECCION').AsString;
   // CDSNotaPedidoCabLOCALIDAD.Value    := DSBase.DataSet.FieldByName('LOCALIDAD').AsString;
   // CDSNotaPedidoCabCPOSTAL.Value      := DSBase.DataSet.FieldByName('CPOSTAL').Value;

    CDSNotaPedidoCabDEPOSITOSetText(CDSNotaPedidoCabDEPOSITO,IntToStr(DepositoDestino));
    //CDSNotaPedidoCabCONDICIONVTASetText(CDSNotaPedidoCabCONDICIONVTA,DSBase.DataSet.FieldByName('CONDICIONVTA').AsString);

    CDSNotaPedidoCabIMPRESO.Value          := 'N';
    CDSNotaPedidoCabOBSERVACION1.Value     := 'Nota de pedido App ('+QCabeceraID.AsString+')';
    CDSNotaPedidoCabOBSERVACION2.Value     := 'Fecha/Hora del pedido '+DateTimeToStr(QCabeceraFECHA_HORA.AsDateTime);
    CDSNotaPedidoCabID_PEDIDO_MOVIL.Value  := QCabeceraID.AsInteger;

    CDSNotaPedidoCabFACTURA_ID.Value       :=-1;//DSBase.DataSet.fieldbyName('ID_FC').Value;
    CDSNotaPedidoCabFACTURA_NROCPBTE.Value :='';//DSBase.DataSet.fieldbyName('NROCPBTE').AsString;

    if QCabeceraLISTA_PRECIOS.AsString<>'' then
      CDSNotaPedidoCabLISTAPRECIO.Value         :=QCabeceraLISTA_PRECIOS.Value;// DSBase.DataSet.FieldByName('LISTAPRECIO').Value;
    if (QCabeceraVENDEDOR.AsString<>'') and (QCabeceraVENDEDOR.AsString<>'******') Then
      CDSNotaPedidoCabVENDEDORSetText(CDSNotaPedidoCabVENDEDOR,QCabeceraVENDEDOR.AsString);

    CDSNotaPedidoCabUSUARIO.AsString     :=DMMain_FD.UsuarioActivo;

  end;
end;



procedure TFormLectorPedidosApp.AgregarCabRto;
begin
  with DatosRemitos DO
    begin
      FormRemitos.SucursalPorDefecto:= SucursalComprobante;
      FormRemitos.DepositoPorDefecto:= Deposito;
      CDSRtoCabSucursalSetText(CDSRtoCabSucursal, IntToStr(SucursalComprobante));
      CDSRtoCabCodigoSetText(CDSRtoCabCodigo,QCabeceraCLIENTE.AsString);
      CDSRtoCabLDRSetText(CDSRtoCabLDR,QCabeceraLDR.AsString);
      CDSRtoCabFECHAVTA.AsDateTime    :=Date;
      CDSRtoCabID_TIPOCOMPROBANTESetText(CDSRtoCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));

      CDSRtoCabPEDIDO_ID.AsInteger   := QCabeceraID.AsInteger;
      CDSRtoCabLISTAPRECIO.AsInteger := QCabeceraLISTA_PRECIOS.AsInteger;
      CDSRtoCabANULADO.AsString      := 'N';

      CDSRtoCabIMPRESO.AsString      := 'N';
      CDSRtoCabOBSERVACION1.AsString := 'Pedido desde Movil Nro:'+QCabeceraID.AsString;//CDSVentaCabOBSERVACION1.Value;
      CDSRtoCabOBSERVACION2.AsString := '';//CDSVentaCabOBSERVACION2.Value;
      CDSRtoCabCPTE_MANUAL.AsString  := 'N';
      CDSRtoCabVENDEDORSetText(CDSRtoCabVENDEDOR,QCabeceraVENDEDOR.AsString);
      CDSRtoCabUSUARIO.AsString        :=DMMain_FD.UsuarioActivo;
    end;
end;

procedure TFormLectorPedidosApp.chbEstadoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormLectorPedidosApp.AgregaDetalleRto;
Var UnitarioTotal,Precio,PrecioRto:Extended;
Descuento:Extended;
begin
  inherited;
  with DatosRemitos DO
    begin
      CDSRtoDet.Append;
      CDSRtoDetCodigoArticuloSetText(CDSRtoDetCodigoArticulo,QDetalleCODIGO.AsString);
      CDSRtoDetDetalle.AsString       := QDetalleDESCRIPCION.AsString;
      CDSRtoDetDescuento.AsFloat      := QDetalleDESCUENTO.AsFloat;
      CDSRtoDetCantidadSetText(CDSRtoDetCantidad,QDetalleCANTIDAD.AsString);
     // Descuento total=1−(1−Descuento1 )×(1−Descuento2)
      Descuento                       := (1 - (1 - QDetalleDESCUENTO.AsFloat*0.01)*(1-QDetalleDESCUENTO_ADICIONAL.AsFloat*0.01))*100;
      CDSRtoDetDescuentoSetText(CDSRtoDetDESCUENTO,FormatFloat('0.000',Descuento));
      CDSRtoDetUnitario_TotalSetText(CDSRtoDetUNITARIO_TOTAL,QDetallePRECIO.AsString);
      CDSRtoDet.Post;
    end;
end;


procedure TFormLectorPedidosApp.btImprimirClick(Sender: TObject);
begin
  inherited;
  Imprimir.Execute;
end;

procedure TFormLectorPedidosApp.BorrarExecute(Sender: TObject);
begin
 // inherited;
  QCabecera.Delete;
  QCabecera.ApplyUpdates(-1);
end;

procedure TFormLectorPedidosApp.BuscarExecute(Sender: TObject);
begin
  inherited;
  QDetalle.Close;
  QCabecera.Close;
  QCabecera.ParamByName('zona').Value     := cbZonas.KeyValue;
  QCabecera.ParamByName('vendedor').Value := cbVendedor.KeyValue;
  case rgModos.ItemIndex of
   0:    QCabecera.ParamByName('estado').Value   := '*';
   1:    QCabecera.ParamByName('estado').Value   := 'N';
   2:    QCabecera.ParamByName('estado').Value   := 'C';
  end;
  case rgImpresos.ItemIndex of
   0:    QCabecera.ParamByName('impreso').Value   := '*';
   1:    QCabecera.ParamByName('impreso').Value   := 'S';
   2:    QCabecera.ParamByName('impreso').Value   := 'N';
  end;

  QCabecera.Open;
  QDetalle.Open;

  QDetallesConsolidado.Close;
  QDetallesConsolidado.ParamByName('vendedor').Value := cbVendedor.KeyValue;
  case rgModos.ItemIndex of
   0:    QDetallesConsolidado.ParamByName('estado').Value   := '*';
   1:    QDetallesConsolidado.ParamByName('estado').Value   := 'N';
   2:    QDetallesConsolidado.ParamByName('estado').Value   := 'C';
  end;
  QDetallesConsolidado.Open;

end;

procedure TFormLectorPedidosApp.cbZonasClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormLectorPedidosApp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  QVendedores.Close;
  QZonas.Close;
  Action:=TCloseAction.caFree;
end;

procedure TFormLectorPedidosApp.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;

end;

procedure TFormLectorPedidosApp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLectorPedidosApp:=nil;
end;

procedure TFormLectorPedidosApp.FormResize(Sender: TObject);
begin
  inherited;
  if FormLectorPedidosApp<>nil then
    if FormLectorPedidosApp.Width<>1099 Then
      FormLectorPedidosApp.Width:=1099;
end;

procedure TFormLectorPedidosApp.FormShow(Sender: TObject);
begin
  inherited;
  QZonas.Open;
  QVendedores.Open;
  pcPedidos.ActivePageIndex:=0;
  Buscar.Execute;
end;

procedure TFormLectorPedidosApp.frReportAfterPrintReport(Sender: TObject);
var Q:TFDQuery;
begin
  inherited;
  Q:=TFDQuery.Create(nil);
  Q.Connection :=DMMain_FD.fdcGestion;
  Q.SQL.Text   :='update borrador_ped_movil_cab b set b.impreso=''S'' where b.id=:id';
  Q.ParamByName('id').Value:=QCabeceraID.Value;
  Q.ExecSQL;
  Q.Close;
  FreeAndNil(Q);
end;

procedure TFormLectorPedidosApp.GenerarFacturaExecute(Sender: TObject);
var EstadoLista,Aceptado:Boolean;
begin
  inherited;
 //** aca se va a generar la Factura..
  if Not(QCabecera.IsEmpty) then
    begin
      if (QCabeceraESTADO.AsString='N')  then
         begin
           if Not(chbComprobanteDefecto.Checked) then
             begin
               if Not(Assigned(FormBuscadorTipoCpbte)) then
                 FormBuscadorTipoCpbte := TFormBuscadorTipoCpbte.Create(Self);
               FormBuscadorTipoCpbte.TipoCpbte1    :='FC';
               FormBuscadorTipoCpbte.TipoCpbte2    :='';
               FormBuscadorTipoCpbte.TipoCpbte3    :='';
               FormBuscadorTipoCpbte.CV            :='V';
               FormBuscadorTipoCpbte.Sucursal      := DMMain_FD.SucursalPorDef;
               FormBuscadorTipoCpbte.ShowModal;
               if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                 begin
                   SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                   IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
                   if Not(Assigned(FormBuscadorDepositos)) then
                     FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
                   FormBuscadorDepositos.Deposito:=  DMMain_FD.DepositoPorSucursal(SucursalComprobante);
                   FormBuscadorDepositos.ShowModal;
                   if (FormBuscadorDepositos.ModalResult=mrok) Then
                     begin
                       Deposito:=FormBuscadorDepositos.Deposito;
                       if Not(Assigned(FormCpbte_2)) Then
                         FormCpbte_2:=TFormCpbte_2.Create(self);
                       FormCpbte_2.Agregar.Execute;
                       AgregaCabecera;
                       Qdetalle.First;
                       while Not(QDetalle.Eof)  do
                         begin
                           while Not(QDetalle.Eof)  Do // Ingreso el detalle
                             begin
                               if (QDetalleCANTIDAD.AsFloat > 0) then
                                 AgregaDetalle;
                               QDetalle.Next;
                             end;
                         end;
    //                   FormRemitos.Confirma.Execute;
                     end;
                 end;
             end
           else
             if (chbComprobanteDefecto.Checked) then
               begin
                 if QCabeceraFACTURAPORDEFECTO.Value>0 then
                   begin
                     SucursalComprobante := QCabeceraSUCURSAL.Value;
                     IDComprobante       := QCabeceraFACTURAPORDEFECTO.Value;
                     if Not(Assigned(FormBuscadorDepositos)) then
                       FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Self);
                     FormBuscadorDepositos.Deposito:=  DMMain_FD.DepositoPorSucursal(SucursalComprobante);
                     FormBuscadorDepositos.ShowModal;
                     if (FormBuscadorDepositos.ModalResult=mrok) Then
                       begin
                         Deposito:=FormBuscadorDepositos.Deposito;
                         if Not(Assigned(FormCpbte_2)) Then
                           FormCpbte_2:=TFormCpbte_2.Create(self);
                         FormCpbte_2.Agregar.Execute;
                         AgregaCabecera;
                         Qdetalle.First;
                         while Not(QDetalle.Eof)  do
                           begin
                             while Not(QDetalle.Eof)  Do // Ingreso el detalle
                               begin
                                 if (QDetalleCANTIDAD.AsFloat > 0) then
                                   AgregaDetalle;
                                 QDetalle.Next;
                               end;
                           end;
                       end;
                   end;
               end;
         end
       else
         ShowMessage('Ya fue remitado....');
    end;
end;


procedure TFormLectorPedidosApp.GenerarNotaPedidoClienteExecute(
  Sender: TObject);
var Cont,Renglones:Integer;
begin
  inherited;
  if (Trim(QCabeceraESTADO.AsString)<>'N')  then
    raise Exception.Create('Ya fue Entregado...');
  //** aca se va a generar Nota de Pedio..
   if not(DSCabecera.DataSet.IsEmpty) then
     begin
       if Not(Assigned(FormBuscadorTipoCpbte)) then
         FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
       FormBuscadorTipoCpbte.TipoCpbte1 := 'PC';
       FormBuscadorTipoCpbte.TipoCpbte2 := '';
       FormBuscadorTipoCpbte.TipoCpbte3 := '';
       FormBuscadorTipoCpbte.CV         := 'V';
       FormBuscadorTipoCpbte.Sucursal   := DMMain_FD.SucursalPorDef;// DSBase.DataSet.FieldByName('SUCURSAL').Value;
       FormBuscadorTipoCpbte.ShowModal;
       Renglones                        := FormBuscadorTipoCpbte.QTipoCpbteLINEAS_DETALLE.Value;
       SucursalComprobante              := FormBuscadorTipoCpbte.Sucursal;
       IDComprobante                    := FormBuscadorTipoCpbte.Id_Cpbte;
       if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
         begin
        //  flag:=DatosNPedidoClientes.HayParaFacturar(DatosNPedidoClientes.CDSNotaPedidoDet);
           if Not(Assigned(FormBuscadorDepositos)) then
             FormBuscadorDepositos := TFormBuscadorDepositos.Create(Application);
           FormBuscadorDepositos.Deposito :=  DMMain_FD.DepositoPorSucursal(SucursalComprobante);
           FormBuscadorDepositos.ShowModal;
           if (FormBuscadorDepositos.ModalResult=mrok) Then
             begin
               DepositoDestino  := FormBuscadorDepositos.Deposito;
               //DatoNew          := IntToStr(DSBase.DataSet.FieldByName('ID_FC').Value);
               TipoCpbte        := 'PC';// DSBase.DataSet.FieldByName('TIPOCPBTE').Value;
               if Not(Assigned(FormNotaPedidoCliente)) Then
                 FormNotaPedidoCliente:=TFormNotaPedidoCliente.Create(self);
               Cont:=1;
               QDetalle.First;
               while Not(QDetalle.Eof)  do
                 begin
                   FormNotaPedidoCliente.Agregar.Execute;
                   AgregarCabNP;
                   while Not(QDetalle.Eof) and (Cont<=Renglones)  Do // Ingreso el detalle
                     begin
                       if (QDetalleCANTIDAD.AsFloat>0) Then
                        AgregarDetNP;
                       QDetalle.Next;
                       Cont:=cont+1;
                     end;
                   FormNotaPedidoCliente.Confirma.Execute;
                   Cont:=1;
                 end;
              // if FormNotaPedidoCliente.DSBase.State in [dsInsert] then
               FormNotaPedidoCliente.Show;//.Execute;
             end;
         end;
     end
   else
     ShowMessage('No hay cantidades Generar la Nota de Pedido.....!!!');

end;

procedure TFormLectorPedidosApp.GenerarRtoExecute(Sender: TObject);
begin
  inherited;
 //** aca se va a generar el Rto..
  if Not(QCabecera.IsEmpty) then
    begin
      if (QCabeceraESTADO.AsString='N')  then
         begin
           if not(QCabecera.IsEmpty) then
             begin
               if Not(Assigned(FormBuscadorTipoCpbte)) then
                 FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
               FormBuscadorTipoCpbte.TipoCpbte1:='RE';
               FormBuscadorTipoCpbte.TipoCpbte2:='';
               FormBuscadorTipoCpbte.TipoCpbte3:='';
               FormBuscadorTipoCpbte.CV        :='V';
               FormBuscadorTipoCpbte.Sucursal  := Sucursal;
               FormBuscadorTipoCpbte.ShowModal;
               if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                 begin
                   SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                   IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
                   if Not(Assigned(FormBuscadorDepositos)) then
                     FormBuscadorDepositos :=TFormBuscadorDepositos.Create(Self);
                   FormBuscadorDepositos.Deposito :=  DMMain_FD.DepositoPorSucursal(Sucursal);
                   FormBuscadorDepositos.ShowModal;
                   if (FormBuscadorDepositos.ModalResult=mrok) Then
                     begin
                       Deposito:=FormBuscadorDepositos.Deposito;
                       if Not(Assigned(FormRemitos)) Then
                         FormRemitos:=TFormRemitos.Create(self);
                       FormRemitos.Agregar.Execute;
                       AgregarCabRto;
                       if Not(Assigned(FormControlNroRto)) then
                         FormControlNroRto:=TFormControlNroRto.Create(Application);
                       FormControlNroRto.Let:= DatosRemitos.CDSRtoCabLETRARTO.AsString;
                       FormControlNroRto.Suc:= DatosRemitos.CDSRtoCabSUCRTO.AsString;
                       FormControlNroRto.Num:= DatosRemitos.CDSRtoCabNUMERORTO.AsString;
                       FormControlNroRto.ShowMOdal;
                       if (FormControlNroRto.ModalResult=mrOk) then
                         begin
                           if (FormControlNroRto.Let<> DatosRemitos.CDSRtoCabLETRARTO.AsString) or
                              (FormControlNroRto.Suc<> DatosRemitos.CDSRtoCabSUCRTO.AsString) or
                              (FormControlNroRto.Num<> DatosRemitos.CDSRtoCabNUMERORTO.AsString) Then
                           DatosRemitos.CDSRtoCabCPTE_MANUAL.Value:='S';
                           DatosRemitos.CDSRtoCabLETRARTO.AsString:=FormControlNroRto.Let;
                           DatosRemitos.CDSRtoCabSUCRTOSetText(DatosRemitos.CDSRtoCabSUCRTO,FormControlNroRto.Suc);
                           DatosRemitos.CDSRtoCabNUMERORTOSetText(DatosRemitos.CDSRtoCabNUMERORTO,FormControlNroRto.Num);
                         end;
                       Qdetalle.First;
                       while Not(QDetalle.Eof)  do
                         begin
                           while Not(QDetalle.Eof)  Do // Ingreso el detalle
                             begin
                               if (QDetalleCANTIDAD.AsFloat > 0) then
                                 AgregaDetalleRto;
                               QDetalle.Next;
                             end;
                         end;
                       DatosRemitos.CDSRtoDet.AfterPost:=DatosRemitos.CDSRtoDetAfterPost;
                       DatosRemitos.CDSRtoDet.Edit;
                       DatosRemitos.CDSRtoDet.Post;
                       //FormRemitos.Confirma.Execute;
                       FormRemitos.Show;
                     end;
                 end;
             end;
         end
       else
         ShowMessage('Ya fue remitado....');
    end;
end;

procedure TFormLectorPedidosApp.ImprimirPedidoExecute(Sender: TObject);
begin
  inherited;
  if Not(QCabecera.IsEmpty) Then
    begin
      frReport.PrintOptions.Printer:=PrNomListados;
      frReport.PrintOptions.ShowDialog:=False;
      frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\PedidoMovil.fr3');
      frReport.PrepareReport();
      frReport.Print;
     // frReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormLectorPedidosApp.ImprimirExecute(Sender: TObject);
begin
  inherited;
  if Not(QDetallesConsolidado.IsEmpty) Then
    begin
      QDetallesConsolidado.IndexFieldNames:='NOMBRE;DESCRIPCION';
      frReport.PrintOptions.Printer:=PrNomListados;
      frReport.SelectPrinter;
      frReport.LoadFromFile(DMMain_FD.PathReportesLst+'\ListaStockPedido.fr3');
//      frListado.Variables['Marca']   :=chMarca.Checked;// ''''+Desde.Text+'''';
//      frListado.Variables['hasta']   :=''''+Hasta.Text+'''';
//      frListado.Variables['Sucursal']:=''''+dbcSucursal.Text+'''';
//      frListado.Variables['Vendedor']:=''''+dbcVendedor.Text+'''';
//      frListado.Variables['Zona']:=''''+dbcZona.Text+'''';
      frReport.ShowReport;
    end
  else ShowMessage('No Hay datos para Listar......');
end;

procedure TFormLectorPedidosApp.MarcarRealizadoExecute(Sender: TObject);
begin
  inherited;
  QCabecera.Edit;
  QCabeceraESTADO.Value:='C';
  QCabecera.Post;
  QCabecera.ApplyUpdates(-1);
end;

procedure TFormLectorPedidosApp.cbVendedorClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormLectorPedidosApp.QCabeceraAfterDelete(DataSet: TDataSet);
begin
  inherited;
  QCabecera.ApplyUpdates(-1);
end;

procedure TFormLectorPedidosApp.QCabeceraBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  QCabecera.Cancel;
end;

procedure TFormLectorPedidosApp.QCabeceraMODO_FACTURACIONGetText(Sender: TField;
  var Text: string; DisplayText: Boolean);
begin
  inherited;
  if Sender.AsInteger=0 then
    Text:='Fiscal'
  else
    if Sender.AsInteger>0 then
      Text:='No Fiscal';

end;

procedure TFormLectorPedidosApp.QDetalleBeforeInsert(DataSet: TDataSet);
begin
  inherited;
  QDetalle.Cancel;
end;

procedure TFormLectorPedidosApp.rgModosClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormLectorPedidosApp.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frReport.DesignReport;
end;

end.
