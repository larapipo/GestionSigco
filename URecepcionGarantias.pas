unit URecepcionGarantias;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DBClient, Provider, DB, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, JvExMask, JvToolEdit, Mask, DBCtrls, frxClass, frxDBSet,
  frxExportText, frxExportRTF, frxExportPDF, JvDBLookup, IBGenerator,
  JvAppStorage, JvAppIniStorage, System.Actions, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  frxExportBaseDialog, System.ImageList, frCoreClasses;

type
  TFormRecepGarantia = class(TFormABMBase)
    QRtoGtia: TFDQuery;
    DSPRtoGtia: TDataSetProvider;
    CDSRtoGtia: TClientDataSet;
    QRtoGtiaID: TIntegerField;
    QRtoGtiaNROCPBTE: TStringField;
    QRtoGtiaCODIGO: TStringField;
    QRtoGtiaNOMBRE: TStringField;
    QRtoGtiaDIRECCION: TStringField;
    QRtoGtiaTELEFONO: TStringField;
    QRtoGtiaTRANSPORTISTA: TStringField;
    QRtoGtiaFECHA_ENTRADA: TSQLTimeStampField;
    QRtoGtiaFECHA_SALIDA: TSQLTimeStampField;
    QRtoGtiaCODIGOARTICULO: TStringField;
    QRtoGtiaDETALLE: TStringField;
    QRtoGtiaSERIE: TStringField;
    QRtoGtiaCON_FLETE: TStringField;
    QRtoGtiaTIPO_OP: TStringField;
    QRtoGtiaDEVOLUCION: TStringField;
    QRtoGtiaNOTAS: TStringField;
    QRtoGtiaESTADO: TIntegerField;
    QRtoGtiaANULADA: TStringField;
    QRtoGtiaUSUARIO: TStringField;
    QRtoGtiaFECHA_HORA: TSQLTimeStampField;
    CDSRtoGtiaID: TIntegerField;
    CDSRtoGtiaNROCPBTE: TStringField;
    CDSRtoGtiaCODIGO: TStringField;
    CDSRtoGtiaNOMBRE: TStringField;
    CDSRtoGtiaDIRECCION: TStringField;
    CDSRtoGtiaTELEFONO: TStringField;
    CDSRtoGtiaTRANSPORTISTA: TStringField;
    CDSRtoGtiaFECHA_ENTRADA: TSQLTimeStampField;
    CDSRtoGtiaFECHA_SALIDA: TSQLTimeStampField;
    CDSRtoGtiaCODIGOARTICULO: TStringField;
    CDSRtoGtiaDETALLE: TStringField;
    CDSRtoGtiaSERIE: TStringField;
    CDSRtoGtiaCON_FLETE: TStringField;
    CDSRtoGtiaTIPO_OP: TStringField;
    CDSRtoGtiaDEVOLUCION: TStringField;
    CDSRtoGtiaNOTAS: TStringField;
    CDSRtoGtiaESTADO: TIntegerField;
    CDSRtoGtiaANULADA: TStringField;
    CDSRtoGtiaUSUARIO: TStringField;
    CDSRtoGtiaFECHA_HORA: TSQLTimeStampField;
    Label1: TLabel;
    dbeNro: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    dbeNombre: TDBEdit;
    Label4: TLabel;
    dbeDireccion: TDBEdit;
    Label5: TLabel;
    dbeTelefono: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    dbedetalle: TDBEdit;
    Label10: TLabel;
    dbeSerie: TDBEdit;
    Label11: TLabel;
    DBEdit11: TDBEdit;
    dbeFecha: TJvDBDateEdit;
    dbeFechaFin: TJvDBDateEdit;
    QUltimoNumero: TFDQuery;
    QUltimoNumeroMAX: TStringField;
    dbchDevolucion: TDBCheckBox;
    dbchAnulada: TDBCheckBox;
    dbchConFlete: TDBCheckBox;
    Label9: TLabel;
    dbrTransporte: TDBEdit;
    dbrgTipoOperacion: TDBRadioGroup;
    dbcCodigo: TJvDBComboEdit;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    BuscarArticulo: TAction;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    dbcCodigoArticulo: TJvDBComboEdit;
    BuscarSerie: TAction;
    CDSBuscaNroSerie: TClientDataSet;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    DSPBuscaNroSerie: TDataSetProvider;
    spBuscarSerie: TSpeedButton;
    btImprimir: TBitBtn;
    ToolButton1: TToolButton;
    Imprimir: TAction;
    frFactura: TfrxReport;
    frxDBRto: TfrxDBDataset;
    QBuscador: TFDQuery;
    DSPBuscador: TDataSetProvider;
    CDSBuscador: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    SQLTimeStampField4: TSQLTimeStampField;
    dbgEstado: TDBRadioGroup;
    QRtoGtiaMOTIVO_RECHAZO: TStringField;
    Label12: TLabel;
    DBEdit1: TDBEdit;
    CDSRtoGtiaMOTIVO_RECHAZO: TStringField;
    QNroSerie: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    spMail: TSpeedButton;
    EnviarCorreo: TAction;
    frxPDFExport: TfrxPDFExport;
    QRtoGtiaID_NC: TIntegerField;
    QRtoGtiaNROCPBTE_NC: TStringField;
    CDSRtoGtiaID_NC: TIntegerField;
    CDSRtoGtiaNROCPBTE_NC: TStringField;
    Facturar: TAction;
    QNCPorDefecto: TFDQuery;
    QNCPorDefectoID_NOTACREDITOPORDEFECTO: TIntegerField;
    QNCPorDefectoDENOMINACION: TStringField;
    QNCPorDefectoCLASE_COMPROB: TStringField;
    QNCPorDefectoTIPO_COMPROB: TStringField;
    QNCPorDefectoSUCURSAL: TIntegerField;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    VerComprobante: TAction;
    pnNC: TPanel;
    dbtNotaCredito: TDBText;
    lbNc: TLabel;
    spCopiaNP: TSpeedButton;
    QRtoGtiaFECHA_ENTREGADO: TSQLTimeStampField;
    QRtoGtiaFECHA_CAMBIOESTADO: TSQLTimeStampField;
    QRtoGtiaENTREGADO: TStringField;
    CDSRtoGtiaFECHA_ENTREGADO: TSQLTimeStampField;
    CDSRtoGtiaFECHA_CAMBIOESTADO: TSQLTimeStampField;
    CDSRtoGtiaENTREGADO: TStringField;
    dbeEntregado: TJvDBDateEdit;
    Label13: TLabel;
    dbchEntregado: TDBCheckBox;
    DBMemo1: TDBMemo;
    Label14: TLabel;
    CDSRtoGtiaOBS: TMemoField;
    QRtoGtiaEN_ST_EXTERNO: TStringField;
    QRtoGtiaID_SERVICIO_TECNICO: TIntegerField;
    CDSRtoGtiaEN_ST_EXTERNO: TStringField;
    CDSRtoGtiaID_SERVICIO_TECNICO: TIntegerField;
    dbchSTExterno: TDBCheckBox;
    QSTecnico: TFDQuery;
    DSPSTecnico: TDataSetProvider;
    CDSSTecnico: TClientDataSet;
    CDSBuscadorNOMBRE: TStringField;
    CDSBuscadorID: TIntegerField;
    DSSTecnico: TDataSource;
    Label15: TLabel;
    EnvioST: TJvDBDateEdit;
    RecepcionST: TJvDBDateEdit;
    Label16: TLabel;
    QRtoGtiaFECHA_ENVIO_ST: TSQLTimeStampField;
    QRtoGtiaFECHA_RECECP_ST: TSQLTimeStampField;
    CDSRtoGtiaFECHA_ENVIO_ST: TSQLTimeStampField;
    CDSRtoGtiaFECHA_RECECP_ST: TSQLTimeStampField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    QRtoGtiaOBS: TMemoField;
    ibgId: TIBGenerator;
    ComBuscadorSerie: TComBuscador;
    procedure CDSRtoGtiaNewRecord(DataSet: TDataSet);
    procedure CDSRtoGtiaNROCPBTESetText(Sender: TField; const Text: string);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarClienteExecute(Sender: TObject);
    procedure CDSRtoGtiaCODIGOSetText(Sender: TField; const Text: string);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSRtoGtiaCODIGOARTICULOSetText(Sender: TField;
      const Text: string);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSRtoGtiaSERIESetText(Sender: TField; const Text: string);
    procedure ImprimirExecute(Sender: TObject);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure EnviarCorreoExecute(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure VerComprobanteExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbchEntregadoClick(Sender: TObject);
    procedure dbchSTExternoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    SucursalComprobante :Integer;
    IDComprobante       :Integer;
    SeHizoNC:Boolean;
    CorreoDestino          :String;
    function AsignarCliente(dato:String):boolean;
    function AsignarArticulo(dato:String):boolean;
    procedure AgregarCabNC;
    procedure AgregarDetNC;
  end;

var
  FormRecepGarantia: TFormRecepGarantia;

implementation

uses  UDMain_FD, UBuscadorClientes, UBuscadorArticulos, UCorreo, UFactura_2,
      UBuscadorTipoCpbte, DMVenta, DMBuscadoresForm, UBuscadorDepositos;

{$R *.dfm}


procedure TFormRecepGarantia.AgregarCabNC;
begin
  with DatosVentas DO
    begin
      FormCpbte_2.SucursalPorDefecto:=SucursalComprobante;
     // FormCpbte_2.DepositoPorDefecto:=DepositoPorDefecto;
       FormCpbte_2.DiscriminaIva:='S';
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(SucursalComprobante));
      CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtoGtiaCODIGO.AsString);
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
      CDSVentaCabDepositoSetText(CDSVentaCabDeposito,IntToStr(DepositoPorDefecto));
      CDSVentaCabANULADO.Value     :='N';

      CDSVentaCabIMPRESO.Value     :='N';
      CDSVentaCabOBSERVACION1.Value:='N.C POR DEVOLUCION MERCA.RMA '+CDSRtoGtiaNROCPBTE.Value;
      CDSVentaCabOBSERVACION2.Value:='';
      CDSVentaCabCPTE_MANUAL.Value :='N';

      CDSVentaCabID_RECEPCION_GTIA.Value := CDSRtoGtiaID.Value;
      CDSVentaCabUSUARIO.Value     :=DMMain_FD.UsuarioActivo;
    // por que si no me agreagaba el iva
    //  FormCpbte_2.DiscriminaIva:='S';
    end;
end;

procedure TFormRecepGarantia.AgregarDetNC;
begin
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtoGtiaCODIGOARTICULO.Value);
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,'1');
//      CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,DSPVentaCab'0');
      CDSVentaDet.Post;
    end;
 end;




FUNCTION TFormRecepGarantia.AsignarCliente(Dato: STRING): Boolean;
BEGIN
  QClientes.Close;
  QClientes.ParamByName('codigo').Value:= dato;
  QClientes.Open;
  if (QClientesCODIGO.Value<>'') then
    begin
      Result:=True;
      CDSRtoGtiaCODIGO.Value   :=QClientesCODIGO.Value;
      CDSRtoGtiaNOMBRE.Value   :=QClientesNOMBRE.Value;
      CDSRtoGtiaDIRECCION.Value:=QClientesDIRECCION_COMERCIAL.Value;
      CDSRtoGtiaTELEFONO.Value :=QClientesTELEFONO_COMERCIAL_1.Value;
    end
  else
    begin
      Result:=False;
      CDSRtoGtiaCODIGO.Clear;
      CDSRtoGtiaNOMBRE.Clear;
      CDSRtoGtiaDIRECCION.Clear;
      CDSRtoGtiaTELEFONO.Clear;
    end;
  QClientes.Close;
END;

procedure TFormRecepGarantia.dbchSTExternoClick(Sender: TObject);
begin
  inherited;
//  dblSTecnico.Enabled:=dbchSTExterno.Checked;
//  if dblSTecnico.Enabled then
//    dblSTecnico.Color:=clWhite
//  else
//    dblSTecnico.Color:=clBtnFace;

 // if ((dbchSTExterno.Checked=False) and (CDSRtoGtia.State<>dsBrowse)) then
 //   CDSRtoGtiaID_SERVICIO_TECNICO.Value := -1;
  //  EnvioST.Enabled:=dbchSTExterno.Checked;

end;

FUNCTION TFormRecepGarantia.AsignarArticulo(Dato: STRING): Boolean;
BEGIN
  QStock.Close;
  QStock.ParamByName('codigo').Value:= dato;
  QStock.Open;
  if (QStockCODIGO_STK.Value<>'') then
    begin
      Result:=True;
      CDSRtoGtiaCODIGOARTICULO.Value  :=QStockCODIGO_STK.Value;
      CDSRtoGtiaDETALLE.Value         :=QStockDETALLE_STK.Value;
    end
  else
    begin
      Result:=False;
      CDSRtoGtiaCODIGOARTICULO.Clear;
      CDSRtoGtiaDETALLE.Clear;
    end;
END;

procedure TFormRecepGarantia.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  if not(Assigned(FormBuscadorArticulos)) then
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Self);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;
  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' then
    CDSRtoGtiaCODIGOARTICULOSetText(CDSRtoGtiaCODIGOARTICULO,FormBuscadorArticulos.Codigo);
end;

procedure TFormRecepGarantia.BuscarClienteExecute(Sender: TObject);
begin
  inherited;
   IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     CDSRtoGtiaCODIGOSetText(CDSRtoGtiaCODIGO,FormBuscadorClientes.Codigo);
end;

procedure TFormRecepGarantia.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscador.Close;
  CDSBuscador.Open;
  ComBuscadorBase.Execute;
  if comBuscadorBase.rOk then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormRecepGarantia.BuscarSerieExecute(Sender: TObject);
VAR I:Integer;
begin
  inherited;
  CDSBuscaNroSerie.Close;
  CDSBuscaNroSerie.CommandText:='';
  CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                                'where  (ss.codigo_stk = :codigo  and Not(ss.id_cpbte_egreso is null))  and ( ss.deposito = :deposito or  :deposito = -1 ) ';
  CDSBuscaNroSerie.Params.ParamByName('codigo').Value   := CDSRtoGtiaCODIGOARTICULO.Value;
  CDSBuscaNroSerie.Params.ParamByName('deposito').Value := -1;
  CDSBuscaNroSerie.Open;
      // DatosVentas.CDSBuscaNroSerie.FieldList.Clear;
  comBuscadorSerie.Execute;
  if comBuscadorSerie.rOk Then
    CDSRtoGtiaSERIESetText(CDSRtoGtiaSERIE,comBuscadorSerie.Id);
  CDSBuscaNroSerie.Close;
end;

procedure TFormRecepGarantia.CDSRtoGtiaCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      IF NOT (AsignarArticulo(Text)) THEN
        BEGIN
          ShowMessage('Codigo No válido');
          Sender.AsString:= '';
          dbcCodigoArticulo.SetFocus;
        END;
    end;
END;

procedure TFormRecepGarantia.CDSRtoGtiaCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
          dbcCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      dbcCodigo.Text:=Aux;
      //HabilitarLabel;
    end;
END;

procedure TFormRecepGarantia.CDSRtoGtiaNewRecord(DataSet: TDataSet);
var id_aux:Integer;
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' then
    CDSRtoGtiaID.Value:=1
  else
    CDSRtoGtiaID.Value:=QUltimoCodigo2.Fields[0].value+1;
  QUltimoCodigo2.Close;

  Id_aux:=ibgId.IncrementFD(1);
  // esto es para que se auto corrija el id
  //por que antes lo tomabda desde la tabla y no del generador
  while (id_aux < CDSRtoGtiaID.Value) do
    Id_aux:=ibgId.IncrementFD(CDSRtoGtiaID.Value);
  //***********************************
  CDSRtoGtiaID.Value:=Id_Aux;

  CDSRtoGtiaFECHA_ENTRADA.AsDateTime := Date;
  CDSRtoGtiaANULADA.Value            := 'N';
  CDSRtoGtiaUSUARIO.value            := DMMain_FD.UsuarioActivo;
  CDSRtoGtiaFECHA_HORA.AsDateTime    := Now;

  QUltimoNumero.Open;
  if (QUltimoNumero.Fields[0].AsString='') then
    CDSRtoGtiaNROCPBTESetText(CDSRtoGtiaNROCPBTE,'1')
  else
    CDSRtoGtiaNROCPBTESetText(CDSRtoGtiaNROCPBTE,IntToStr(QUltimoNumero.Fields[0].AsInteger+1));
  QUltimoNumero.Close;

  CDSRtoGtiaCON_FLETE.Value := 'N';
  CDSRtoGtiaESTADO.Value    := 0;
  CDSRtoGtiaCON_FLETE.Value := 'N';
  CDSRtoGtiaTIPO_OP.Value   := 'R';
  CDSRtoGtiaANULADA.Value   := 'N';
  CDSRtoGtiaDEVOLUCION.Value:= 'N';
  CDSRtoGtiaFECHA_ENTREGADO.Clear;
  CDSRtoGtiaENTREGADO.Value    :='N';
  CDSRtoGtiaEN_ST_EXTERNO.Value:='N';
  CDSRtoGtiaID_SERVICIO_TECNICO.Value := -1;
end;

procedure TFormRecepGarantia.CDSRtoGtiaNROCPBTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if CDSRtoGtia.State=dsBrowse then
    CDSRtoGtia.Edit;
  Sender.AsString:=Copy('00000000',1,8-Length(Text))+Text;
end;

procedure TFormRecepGarantia.CDSRtoGtiaSERIESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  QNroSerie.Close;
  QNroSerie.ParamByName('Codigo').Value     := CDSRtoGtiaCODIGOARTICULO.Value;
  QNroSerie.ParamByName('CodigoSerie').Value:= Sender.Value;
  QNroSerie.Open;
  if (QNroSerieID.AsString='') then
    begin
      ShowMessage('Este serie no tiene registro de haber sido entregado');
      Sender.AsString:=''
    end;
  QNroSerie.Close;
end;

procedure TFormRecepGarantia.ConfirmaExecute(Sender: TObject);
begin
  DatoNew := CDSRtoGtiaID.AsString;
  if ((dbchEntregado.Checked) and (CDSRtoGtiaFECHA_ENTREGADO.AsString='')) then
    Raise Exception.Create('Si esta entregada debe inidcar la fecha...');
  //    begin
 ///     Facturar.Execute;
  //   if FormCpbte_2.Generado=false then
  //     CDSRtoGtiaESTADO.Value:=1;
  //  end;
  inherited;
  Recuperar.Execute;
end;

procedure TFormRecepGarantia.dbchEntregadoClick(Sender: TObject);
begin
  inherited;
  dbeEntregado.Enabled:=dbchEntregado.Checked;
end;

procedure TFormRecepGarantia.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Facturar.Enabled:= (CDSRtoGtiaESTADO.Value=3) and ((DSBase.State in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty)));  ;
end;

procedure TFormRecepGarantia.EnviarCorreoExecute(Sender: TObject);
begin
  inherited;
 if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
    CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');

  frFactura.PrintOptions.Printer:=PrNomCpbte;
  frFactura.SelectPrinter;

  frFactura.LoadFromFile(DMMain_FD.PathReportesLst+'\RtoRecepcionRMA.fr3');
  frFactura.PrepareReport;

  frxPDFExport.ShowDialog:=False;
  frxPDFExport.FileName:=(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RetRecepcio_'+CDSRtoGtiaNROCPBTE.AsString+'.pdf');
  frFactura.Export(frxPDFExport);
  frxPDFExport.ShowDialog:=True;
  CorreoDestino:='';

  if CorreoDestino='' Then
    CorreoDestino:=DMMain_FD.GetCorreoCliente_1(CDSRtoGtiaCODIGO.AsString);

  if Not(Assigned(FormCorreo)) Then
    FormCorreo:=TFormCorreo.Create(Application);
  FormCorreo.CorreoOrigen        := DirCorreo;
  FormCorreo.Remitente           := Remitente;
  FormCorreo.Destinatario        := CDSRtoGtiaNOMBRE.ASString;
  FormCorreo.Puerto              := Puerto;
  FormCorreo.CorreoDestino       := CorreoDestino;
  FormCorreo.NombreServidorCorreo:= NombreServidor;
  FormCorreo.NombreCuentaCorreo  := NombreCuenta;
  FormCorreo.Clave               := Clave;
  FormCorreo.Autenticacion       := Autotenticacion;
  FormCorreo.Asunto              := 'Recepcion Gtia - '+ CDSRtoGtiaNROCPBTE.AsString+
                                    ' del '+ FormatDateTime('dd-mm-yy',CDSRtoGtiaFECHA_ENTRADA.AsDateTime);
  FormCorreo.Adjuntos.Add(ExtractFilePath(ParamStr(0))+'Archivos Temporales\RetRecepcio_'+CDSRtoGtiaNROCPBTE.AsString+'.pdf');
  FormCorreo.Show;
end;

procedure TFormRecepGarantia.FacturarExecute(Sender: TObject);
var opOk:Boolean;
DepositoDefectoActual:Integer;
begin
  //******************************************************************
  // Si el Valor Aceptada=3 hago la NC
  //******************************************************************
    begin
      opOk:=False;
      //Buscao si teiene un comprobante asignado por defecto el cliente
      //****************************************************************
      QNCPorDefecto.Close;
      QNCPorDefecto.ParamByName('codigo').Value:=CDSRtoGtiaCODIGO.Value;
      QNCPorDefecto.Open;
      if (QNCPorDefecto.Fields[0].AsString='') then
        begin
          QClientes.Close;
          QClientes.ParamByName('codigo').Value:=CDSRtoGtiaCODIGO.AsString;
          QClientes.Open;

          CDSInscripcion.Close;
          CDSInscripcion.Params.ParamByName('Codigo').AsInteger := QClientesCONDICION_IVA.AsInteger;
          CDSInscripcion.Open;
          IF NOT (CDSInscripcion.Eof) THEN
            begin
              CDSComprobantePorDefecto.Close;
              CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= CDSInscripcionDISCRIMINAIVA.Value;
              CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   :=  FormRecepGarantia.SucursalPorDefecto;//1;//CDSReciboSUCURSAL.Value;
              CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
              CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'NC';
              CDSComprobantePorDefecto.Open;
              if (CDSComprobantePorDefecto.RecordCount=1) and (CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
                begin
                  IDComprobante       := CDSComprobantePorDefecto.Fields[0].AsInteger;
                  SucursalComprobante := FormRecepGarantia.SucursalPorDefecto;// 1;//CDSReciboSUCURSAL.Value;
                  opOk:=True;
                end
              else
                begin
                  if Not(Assigned(FormBuscadorTipoCpbte)) then
                    FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                  FormBuscadorTipoCpbte.TipoCpbte1:='NC';
                  FormBuscadorTipoCpbte.TipoCpbte2:='';
                  FormBuscadorTipoCpbte.TipoCpbte3:='';
                  FormBuscadorTipoCpbte.CV        :='V';
                  FormBuscadorTipoCpbte.Sucursal  := FormRecepGarantia.SucursalPorDefecto;// 1;//DatosRecibos.CDSReciboSUCURSAL.Value;
                  FormBuscadorTipoCpbte.DiscriminaIVA:= CDSInscripcionDISCRIMINAIVA.AsString;
                  FormBuscadorTipoCpbte.ShowModal;
                  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
                  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
                  opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
                end;
            end;
        end
      else
        BEGIN
          if (MessageDlg('Comprobante por defecto NC '+QNCPorDefectoDENOMINACION.Value+' Confirma?',mtInformation,[mbYes, mbNo], 0, mbYes)=mrYes) then
            begin
              SucursalComprobante:=QNCPorDefectoSUCURSAL.Value;
              IDComprobante      :=QNCPorDefectoID_NOTACREDITOPORDEFECTO.Value;
              opOk:=True;
            end
          else
            begin
              if Not(Assigned(FormBuscadorTipoCpbte)) then
                FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
              FormBuscadorTipoCpbte.TipoCpbte1:='NC';
              FormBuscadorTipoCpbte.TipoCpbte2:='';
              FormBuscadorTipoCpbte.TipoCpbte3:='';
              FormBuscadorTipoCpbte.CV        :='V';
              FormBuscadorTipoCpbte.Sucursal  := FormRecepGarantia.SucursalPorDefecto;//1;//DatosRecibos.CDSReciboSUCURSAL.Value;
              FormBuscadorTipoCpbte.DiscriminaIVA:= CDSInscripcionDISCRIMINAIVA.AsString;
              FormBuscadorTipoCpbte.ShowModal;
              SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
              IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
              opOk               :=FormBuscadorTipoCpbte.ModalResult=mrOk;
            end;
        end;

      if (opOk) Then
        begin
          //guardo momentaneo el valor del deposito
          DepositoDefectoActual := DepositoPorDefecto;
          if Not(Assigned(FormBuscadorDepositos)) then
            FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
          FormBuscadorDepositos.Deposito:=  DepositoPorDefecto;
          FormBuscadorDepositos.ShowModal;
          if (FormBuscadorDepositos.ModalResult=mrok) Then
            DepositoPorDefecto:= FormBuscadorDepositos.Deposito;

          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.Show;

         // FormCpbte_2.Visible:=False;
          FormCpbte_2.Agregar.Execute;
          AgregarCabNC;
          AgregarDetNC;
          SeHizoNC:=False;
          //restauro el deposito original
          DepositoPorDefecto:=DepositoDefectoActual;

        //  FormCpbte_2.Show;

//          if FormCpbte_2.Generado then
//            begin
//              CDSRtoGtiaID_NC.Value          :=DatosVentas.CDSVentaCabID_FC.Value;
//              CDSRtoGtiaNROCPBTE_NC.Value    :=DatosVentas.CDSVentaCabNROCPBTE.Value;
//              SeHizoNC:=True;
//              FormCpbte_2.Close;
//              FreeAndNil(FormCpbte_2);
//            end;

        end;
    end;
end;

procedure TFormRecepGarantia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  CDSRtoGtia.CLose;
  CDSSTecnico.Close;
  Action:=caFree;
  inherited;
end;

procedure TFormRecepGarantia.FormCreate(Sender: TObject);
begin
  inherited;
  SInBde:=2;
  AutoSize:=True;
  AddClientDataSet(CDSRtoGtia,DSPRtoGtia);
  CDSRtoGtia.Open;
  CDSSTecnico.Open;

  //pnNC.BevelKind :=bvNone;
  pnNC.BevelInner:=bvNone;
  pnNC.BevelOuter:=bvNone;

  Tabla:='RTO_RECEP_GARANTIA';
  Campo:='id';
end;

procedure TFormRecepGarantia.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRecepGarantia:=nil;
end;

procedure TFormRecepGarantia.ImprimirExecute(Sender: TObject);
begin
  inherited;

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('opcion').AsString:='REPORTES';
  DMMain_FD.QOpciones.Open;

  frFactura.LoadFromFile(DMMain_FD.QOpciones.Fields[0].AsString+'\RtoRecepcionRMA.fr3');
  DMMain_FD.QOpciones.Close;

 // frFactura.Variables['MascaraUnitario']  :=''''+DatosVentas.MascaraDetalleUnitario+'''';
 // frFactura.Variables['MascaraCantidad']  :=''''+DatosVentas.MascaraDetalleCantidad+'''';
//  frFactura.Variables['MascaraTotal']     :=''''+DatosVentas.MascaraDetalleTotal+'''';
 // frFactura.Variables['MascaraTotalGral'] :=''''+DatosVentas.MascaraCabecera+'''';
 // frFactura.Variables['MascaraIvaTasa']   :=''''+DatosVentas.MascaraIvaTasa+'''';
//  frFactura.Variables['MascaraIvaImporte']:=''''+DatosVentas.MascaraIvaImporte+'''';
//  frFactura.Variables['SaldoAnterior']    :=''''+Saldo.Caption+'''';
  frFactura.ShowReport;
end;

procedure TFormRecepGarantia.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRtoGtia.Close;
  CDSRtoGtia.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSRtoGtia.Open;
  Modificar.Enabled := not( CDSRtoGtiaESTADO.Value in [2,3,4]);
  Borrar.Enabled    := not( CDSRtoGtiaESTADO.Value in [2,3,4]);

end;

procedure TFormRecepGarantia.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frFactura.DesignReport;
end;

procedure TFormRecepGarantia.VerComprobanteExecute(Sender: TObject);
begin
  inherited;
  if CDSRtoGtiaID_NC.AsString<>'' then
    begin
      IF NOT (Assigned(FormCpbte_2)) THEN
        FormCpbte_2  := TFormCpbte_2.Create(self);
      FormCpbte_2.DatoNew   := CDSRtoGtiaID_NC.AsString;
      FormCpbte_2.TipoCpbte := 'NC';
      FormCpbte_2.Recuperar.Execute;
    end;
end;

end.
