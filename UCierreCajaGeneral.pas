unit UCierreCajaGeneral;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBasic, dxSkinBlack, dxSkinBlue,
  dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkroom, dxSkinDarkSide,
  dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle, dxSkinFoggy,
  dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary, dxSkinLilian,
  dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin, dxSkinMetropolis,
  dxSkinMetropolisDark, dxSkinMoneyTwins, dxSkinOffice2007Black,
  dxSkinOffice2007Blue, dxSkinOffice2007Green, dxSkinOffice2007Pink,
  dxSkinOffice2007Silver, dxSkinOffice2010Black, dxSkinOffice2010Blue,
  dxSkinOffice2010Silver, dxSkinOffice2013DarkGray, dxSkinOffice2013LightGray,
  dxSkinOffice2013White, dxSkinOffice2016Colorful, dxSkinOffice2016Dark,
  dxSkinOffice2019Black, dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray,
  dxSkinOffice2019White, dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic,
  dxSkinSharp, dxSkinSharpPlus, dxSkinSilver, dxSkinSpringtime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinTheBezier,
  dxSkinsDefaultPainters, dxSkinValentine, dxSkinVisualStudio2013Blue,
  dxSkinVisualStudio2013Dark, dxSkinVisualStudio2013Light, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  dxScrollbarAnnotations, Data.DB, cxDBData, JvToolEdit, JvDBControls,
  AeroButtons, Vcl.StdCtrls, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.DBCtrls, JvExMask, Vcl.Mask, JvExControls, JvDBLookup,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, JvComponentBase, JvFormPlacement,
  System.ImageList, Vcl.ImgList, System.Actions, Vcl.ActnList, Vcl.ComCtrls,
  JvLabel, JvGradient, Vcl.Buttons, Vcl.ToolWin, Vcl.ExtCtrls, Datasnap.DBClient,
  Datasnap.Provider, System.strUtils, System.IniFiles, IBGenerator, Vcl.Grids,
  Vcl.DBGrids, JvExDBGrids, JvDBGrid, cxButtonEdit, JvExStdCtrls, JvEdit, UMovValoresIngreso, DMVentaCtdo,
  cxDataControllerConditionalFormattingRulesManagerDialog, DateUtils,
  dxLayoutContainer, cxGridInplaceEditForm, AdvEdit, DBAdvEd, AdvOfficeButtons,
  cxContainer, cxLabel, cxDBLabel,System.UITypes, JvBaseEdits, AdvScrollBox;

type
  TMovTc =record
          ID         :Integer;
          NroCupon   :Integer;
          Lote       :String[5];
          Terminal   :string[8];
          Importe    :Extended;
        end;

  TFormCierreCajaGeneral = class(TFormABMBase)
    pnCab: TPanel;
    Label10: TLabel;
    pcPrincipal: TPageControl;
    pgCaja: TTabSheet;
    pgConfiguracion: TTabSheet;
    Label2: TLabel;
    DSTarjetas: TDataSource;
    BuscaCpbteTarjeta: TAction;
    DSCaja: TDataSource;
    BuscaCaja: TAction;
    edFechaVta: TDateTimePicker;
    ComBuscadorCaja: TComBuscador;
    DSEgresoCajaDetalle: TDataSource;
    BuscaSucursal: TAction;
    QCtaGasto: TFDQuery;
    Label3: TLabel;
    ceCpbteEgreso: TJvComboEdit;
    edCpbteEgreso: TEdit;
    BuscaCpbteEgreso: TAction;
    DSAdelantos: TDataSource;
    Label12: TLabel;
    ceCpbteAdelantos: TJvComboEdit;
    edCpbteAdelantos: TEdit;
    BuscaCpbteAdelantos: TAction;
    comBuscadorPersonal: TComBuscador;
    BuscaCpbteTransf: TAction;
    BuscaCpbteVta: TAction;
    edCliente: TEdit;
    ceCliente: TJvComboEdit;
    Label16: TLabel;
    BuscaCliente: TAction;
    edArticulo: TEdit;
    Label17: TLabel;
    ceArticulo: TJvComboEdit;
    BuscaArticulo: TAction;
    GroupBox1: TGroupBox;
    edCpbteVta: TEdit;
    Label15: TLabel;
    ceCpbteVta: TJvComboEdit;
    chTransferencia: TCheckBox;
    chAbreCaja: TCheckBox;
    pnEgresos: TPanel;
    pnGastos: TPanel;
    pnPersonal: TPanel;
    pnIngresos: TPanel;
    Label4: TLabel;
    pnSaldos: TPanel;
    lbCaja: TLabel;
    cbCaja: TJvDBLookupCombo;
    chCierraCaja: TAdvOfficeCheckBox;
    DSCajaTx: TDataSource;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Label11: TLabel;
    dbcComprobaTx: TJvDBLookupCombo;
    DSComprobaTx: TDataSource;
    dbcSucursal: TJvDBLookupCombo;
    DSSucursal: TDataSource;
    Label13: TLabel;
    QBuscaCuentaGasto: TFDQuery;
    QBuscaCuentaGastoCODIGO: TStringField;
    QBuscaCuentaGastoCODIGO_RUBRO: TStringField;
    QBuscaCuentaGastoDETALLE: TStringField;
    QBuscaCuentaGastoEXCLUYE: TStringField;
    QBuscaCuentaGastoMUESTRARUBRO: TStringField;
    mtAdelantos: TFDMemTable;
    mtAdelantosCODIGO: TStringField;
    mtAdelantosNOMBRE: TStringField;
    mtAdelantosIMPORTE: TFloatField;
    edTotalVta: TJvCalcEdit;
    mtDetalleEgresos: TFDMemTable;
    mtDetalleEgresosCODIGOCTA: TStringField;
    mtDetalleEgresosDETALLE: TStringField;
    mtDetalleEgresosIMPORTE: TFloatField;
    dbgEgresos: TDBGrid;
    pnPieGastos: TPanel;
    edTotalEgresos: TJvCalcEdit;
    QCtaGastoCODIGO: TStringField;
    QCtaGastoCODIGO_RUBRO: TStringField;
    QCtaGastoDETALLE: TStringField;
    QCtaGastoEXCLUYE: TStringField;
    pnPiePersonal: TPanel;
    edTotalAdelantos: TJvCalcEdit;
    dbgAdelantos: TDBGrid;
    CDSTarjetas: TClientDataSet;
    CDSTarjetasID_TC: TIntegerField;
    CDSTarjetasDESCRIPCION: TStringField;
    CDSTarjetasNROLOTE: TStringField;
    CDSTarjetasTERMINAL: TStringField;
    CDSTarjetasIMPORTE: TFloatField;
    DSPTarjetas: TDataSetProvider;
    pnCabGastos: TPanel;
    pnCabPersonañ: TPanel;
    Label9: TLabel;
    cbCajaDest: TJvDBLookupCombo;
    edMontoATransf: TJvCalcEdit;
    Label1: TLabel;
    Label5: TLabel;
    edSaldoEFT: TJvCalcEdit;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    pnTarjetas: TPanel;
    dbgTarjetas: TDBGrid;
    Panel4: TPanel;
    edTotalTarjetas: TJvCalcEdit;
    Panel5: TPanel;
    Label6: TLabel;
    edGastos: TJvCalcEdit;
    edRetiros: TJvCalcEdit;
    edSaldoCaja: TJvCalcEdit;
    edSaldoInicial: TJvCalcEdit;
    pnOPagos: TPanel;
    AdvScrollBox1: TAdvScrollBox;
    pnCabOPagos: TPanel;
    dbgOPagos: TDBGrid;
    pnPieOPagos: TPanel;
    JvCalcEdit1: TJvCalcEdit;
    Label7: TLabel;
    ceCpbteOPago: TJvComboEdit;
    edCpbteOPago: TEdit;
    BuscarCpbteOPago: TAction;
    procedure FormCreate(Sender: TObject);
    procedure CDSTarjetasNROLOTESetText(Sender: TField; const Text: string);
    procedure CDSTarjetasTERMINALSetText(Sender: TField; const Text: string);
    procedure ConfirmaLoteTarjeta;
//    procedure ConfirmaLoteTarjetaReemplazo;
    function ConfirmaEgreso:boolean;
    function ConfirmaAdelantos:boolean;
    function ConfirmaVta:boolean;
    function ConfirmaTransferencia:Boolean;
    function CierreCaja:boolean;
    function AbreCaja:boolean;
    procedure AgregarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure IniciaPersonal;
    procedure IniciaCuentasGasto;
    function  IniciaCaja:   boolean;
    function  AsignarCtaGasto(Dato: STRING): string;
    function  AsignarCpbteEgreso(dato: integer)     :Boolean;
    function  AsignarCpbteAdelantos(dato: integer)  :Boolean;
    function  AsignarCpbteVta(Dato: integer)     :boolean;
    function  AsignarCliente(Dato: string)       :boolean;
    function  AsignarArticulo(Dato: string)      :boolean;
    function  AsignarEmpleado(Dato: string) :string;
    procedure BuscaCpbteEgresoExecute(Sender: TObject);
    procedure BuscaCpbteTarjetaExecute(Sender: TObject);
    procedure BuscaCpbteAdelantosExecute(Sender: TObject);
    procedure BuscaCajaExecute(Sender: TObject);
    function  BuscaCuentaGasto: boolean;
    function  BuscaEmpleado:    string;

    procedure CDSTarjetasAfterPost(DataSet: TDataSet);
    procedure CDSAdelantosAfterPost(DataSet: TDataSet);
    procedure CDSEfectivoMontoATransfSetText(Sender: TField;
      const Text: string);
    procedure BuscaCpbteVtaExecute(Sender: TObject);
    procedure BuscaClienteExecute(Sender: TObject);
    procedure BuscaArticuloExecute(Sender: TObject);
    procedure ceClienteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceArticuloKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCpbteVtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCpbteEgresoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ceCpbteAdelantosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgAdelantosDetCODIGOPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure gAdelantosEnter(Sender: TObject);
    procedure gAdelantosDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure chCierraCajaClick(Sender: TObject);
//    procedure MuestraPlanillaCaja;
    procedure CDSAdelantosReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure mtAdelantosCODIGOSetText(Sender: TField; const Text: string);
    procedure mtAdelantosAfterPost(DataSet: TDataSet);
    procedure mtCtasGastosCODIGOGASTOSetText(Sender: TField;
      const Text: string);
    procedure mtDetalleEgresosCODIGOCTASetText(Sender: TField;
      const Text: string);
    procedure mtDetalleEgresosNewRecord(DataSet: TDataSet);
    procedure gEgresosEnter(Sender: TObject);
    procedure dbgEgresosColEnter(Sender: TObject);
    procedure dbgEgresosEditButtonClick(Sender: TObject);
    procedure dbgEgresosKeyPress(Sender: TObject; var Key: Char);
    procedure mtDetalleEgresosAfterPost(DataSet: TDataSet);
    procedure dbgEgresosEnter(Sender: TObject);
    procedure dbgAdelantosColEnter(Sender: TObject);
    procedure dbgAdelantosEnter(Sender: TObject);
    procedure dbgAdelantosKeyPress(Sender: TObject; var Key: Char);
    procedure mtAdelantosNewRecord(DataSet: TDataSet);
    procedure dbgAdelantosEditButtonClick(Sender: TObject);
    procedure edTotalVtaChange(Sender: TObject);
    procedure gTarjetaExit(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure mtDetalleEgresosBeforeClose(DataSet: TDataSet);
    procedure mtAdelantosBeforeClose(DataSet: TDataSet);
    procedure dbgTarjetasColEnter(Sender: TObject);
    procedure DSTarjetasStateChange(Sender: TObject);
    procedure dbgTarjetasExit(Sender: TObject);
    procedure dbgTarjetasEnter(Sender: TObject);
    procedure edMontoATransfExit(Sender: TObject);
    procedure BuscarCpbteOPagoExecute(Sender: TObject);
    procedure ceCpbteOPagoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);

  private
    { Private declarations }

 //   FormAct:  TFormABMBase;
 //   FrameAct: TFrameMovValoresIngreso;
 //   DatosVta: TDatosVentasCtdo;
    Id_Caja_Act:  Integer;


    function GeneraFCCtdo:boolean;
    procedure CalculaEFT;
    procedure IngresarTCredito(IDTCredito,Lote,Terminal:String; Importe: Extended);
    procedure IngresarEft(Importe: Extended);
    function AsignarCpbteOPago(Dato: integer): Boolean;

  public
    { Public declarations }


  end;

var
  FormCierreCajaGeneral: TFormCierreCajaGeneral;

implementation

uses UDMain_FD, DMCierreCajaGeneral, DMStoreProcedureForm, DMBuscadoresForm,
     UBuscadorComprobantes, UMontoATransferir, UFacturaCtdo_2, UBuscadorClientes,
     UBuscadorArticulos, UBuscadorCuentaGastos, UAperturaCaja, UCaja;

{$R *.dfm}

procedure TFormCierreCajaGeneral.IniciaPersonal;
begin
//  mtAdelantos.Close;
//  if FileExists(ExtractFilePath(ParamStr(0))+'\CierreCajaPersonal.xml') then
//    mtAdelantos.LoadFromFile(ExtractFilePath(ParamStr(0))+'\CierreCajaPersonal.xml');

  mtAdelantos.Open;
  if mtAdelantos.RecordCount>0 then
    begin
      mtAdelantos.AfterPost:=nil;
      mtAdelantos.First;
      while not(mtAdelantos.Eof) do
        begin
          mtAdelantos.Edit;
          mtAdelantosIMPORTE.Value:=0;
          mtAdelantos.Next;
        end;
      mtAdelantos.First;
     mtAdelantos.AfterPost:=mtAdelantosAfterPost;
    end;
end;

procedure TFormCierreCajaGeneral.IniciaCuentasGasto;
begin
//  mtDetalleEgresos.Close;
//  if FileExists(ExtractFilePath(ParamStr(0))+'\CierreCajaCuentasGastos.xml') then
//    mtDetalleEgresos.LoadFromFile(ExtractFilePath(ParamStr(0))+'\CierreCajaCuentasGastos.xml');

  mtDetalleEgresos.Open;
  if mtDetalleEgresos.RecordCount>0 then
    begin
      mtDetalleEgresos.AfterPost:=nil;
      mtDetalleEgresos.First;
      while not(mtDetalleEgresos.Eof) do
        begin
          mtDetalleEgresos.Edit;
          mtDetalleEgresosIMPORTE.Value:=0;
          mtDetalleEgresos.Next;
        end;
      mtDetalleEgresos.First;
      mtDetalleEgresos.AfterPost:=mtDetalleEgresosAfterPost;
    end;
end;


procedure TFormCierreCajaGeneral.AgregarExecute(Sender: TObject);
begin
  if IniciaCaja then
    begin
      pcPrincipal.ActivePage  :=  pgCaja;
      with DatosCierreCajaGeneral do
        begin
          QSaldoIni.Close;
          QSaldoIni.ParamByName('id_caja').Value  :=  Id_Caja_Act;
          QSaldoIni.Open;
          if not QSaldoIni.IsEmpty then
           edSaldoInicial.Value :=  QSaldoIniIMPORTE.AsFloat;
          QSaldoIni.Close;
        end;

      CDSTarjetas.Close;
      CDSTarjetas.Open;

      IniciaCuentasGasto;
      IniciaPersonal;

      pnPrincipal.Enabled :=True;
      btNuevo.Enabled    := False;
      btCancelar.Enabled := True;
      btConfirma.Enabled := True;
      CalculaEFT;
      edTotalVta.SetFocus;
    end
  else
    Showmessage(' Caja Cerrada o inválida.');
end;



procedure TFormCierreCajaGeneral.BuscaArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(self);
  FormBuscadorArticulos.Param1:=1;
  FormBuscadorArticulos.Param2:=3;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
      AsignarArticulo(FormBuscadorArticulos.Codigo);
end;

procedure TFormCierreCajaGeneral.BuscaCajaExecute(Sender: TObject);
begin
  inherited;
  DatosCierreCajaGeneral.CDSCaja.Close;
  DatosCierreCajaGeneral.CDSCaja.CommandText := 'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc '+
                                    'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja '+
                                    'where cc.estado=0 '+
                                    'order by cc.id_caja,cc.estado,cc.fecha_incio desc';
  if ((DMMain_FD.FiltraCajaUser) and (DMMain_FD.ModificaCaja)) then
    begin
      DatosCierreCajaGeneral.CDSCaja.CommandText:= 'select cc.*, cta.nombre as MuestraCtaCaja from Caja_cab cc '+
                                       'left join cuenta_caja cta on cta.id_cuenta=cc.id_cuenta_caja '+
                                       'where cc.estado=0 and (cc.id_cuenta_caja in (select u.caja from cajausuario u where u.usuario = :usuario)) '+
                                       'order by cc.id_caja,cc.estado,cc.fecha_incio desc';
      DatosCierreCajaGeneral.CDSCaja.Params.ParamByName('usuario').Value:=DMMain_FD.UsuarioActivo;
    end;
  DatosCierreCajaGeneral.CDSCaja.Open;
end;

procedure TFormCierreCajaGeneral.BuscaClienteExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
    FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''S'''; // Activos
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
    begin
      ceCliente.Text    :=  FormBuscadorClientes.Codigo;
      edCliente.Text    :=  FormBuscadorClientes.Nombre;
    end
  else
    begin
      ceCliente.Text    :=  '';
      edCliente.Text    :=  '';
    end;
end;

procedure TFormCierreCajaGeneral.BuscaCpbteAdelantosExecute(Sender: TObject);
begin
  inherited;
  if ( dbcSucursal.KeyValue>-1) then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';

      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and '+
                                                '(tipo_comprob=''VA'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;


      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;
      if FormBuscaComprobantes.ModalResult=mrOk Then
        BEGIN
          ceCpbteAdelantos.Text  :=  IntToStr(FormBuscaComprobantes.Id_Comp);
          edCpbteAdelantos.Text  :=  DMBuscadores.CDSBuscaComprobDENOMINACION.AsString;
        END;
    end;

end;

procedure TFormCierreCajaGeneral.BuscaCpbteEgresoExecute(Sender: TObject);
begin
  inherited;
  if dbcSucursal.KeyValue>-1 then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';
      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and compra_venta=''C'' and '+
                                                '(tipo_comprob=''EC'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value :=  dbcSucursal.KeyValue;


      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;
      if FormBuscaComprobantes.ModalResult=mrOk Then
        BEGIN
    //      DatosRecibos.CDSReciboID_TIPOCOMPROBANTESetText(DatosRecibos.CDSReciboID_TIPOCOMPROBANTE, IntToStr(FormBuscaComprobantes.Id_Comp));
          ceCpbteEgreso.Text  :=  IntToStr(FormBuscaComprobantes.Id_Comp);
          edCpbteEgreso.Text  :=  DMBuscadores.CDSBuscaComprobDENOMINACION.AsString;
        END;
    end;

end;

procedure TFormCierreCajaGeneral.BuscaCpbteTarjetaExecute(Sender: TObject);
begin
  inherited;
  if dbcSucursal.KeyValue>-1 then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';

      DMBuscadores.CDSBuscaComprob.CommandText  :=  'select * from comprobantes c ' +
                                                    'where c.tipo_comprob=''ZI'' and c.compra_venta=''V'' and c.sucursal=:Suc';


      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;


      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;

    end;
end;


procedure TFormCierreCajaGeneral.BuscaCpbteVtaExecute(Sender: TObject);
begin
  inherited;
  if dbcSucursal.KeyValue>-1 then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';

      DMBuscadores.CDSBuscaComprob.CommandText  :=  'select * from comprobantes c ' +
                                                    'where c.tipo_comprob in (''FO'') and c.compra_venta=''V'' and c.sucursal=:suc';
;
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;


      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;
      if FormBuscaComprobantes.ModalResult=mrOk Then
        BEGIN
          ceCpbteVta.Text  :=  IntToStr(FormBuscaComprobantes.Id_Comp);
          edCpbteVta.Text  :=  DMBuscadores.CDSBuscaComprobDENOMINACION.AsString;
        END;
    end;

end;


FUNCTION TFormCierreCajaGeneral.AsignarCtaGasto(Dato: STRING): string;
BEGIN
  QCtaGasto.Close;
  QCtaGasto.ParamByName('codigo').AsString := dato;
  QCtaGasto.Open;
  IF NOT (QCtaGasto.IsEmpty) THEN
    Result :=  QCtaGastoDETALLE.AsString
  ELSE
    Result := '';
  QCtaGasto.Close;
END;

function TFormCierreCajaGeneral.AsignarEmpleado(Dato: string) :string;
begin
  DatosCierreCajaGeneral.CDSBuscaPersonal.Close;
  DatosCierreCajaGeneral.CDSBuscaPersonal.ParamByName('codigo').value :=  Dato;
  DatosCierreCajaGeneral.CDSBuscaPersonal.Open;
  if not DatosCierreCajaGeneral.CDSBuscaPersonal.IsEmpty then
    Result    :=  DatosCierreCajaGeneral.CDSBuscaPersonalNOMBRE.AsString
  else
    Result    :=  '';
  DatosCierreCajaGeneral.CDSBuscaPersonal.Close;

end;

function TFormCierreCajaGeneral.AsignarArticulo(Dato: string) :boolean;
begin
  Dato  :=  RightStr('00000000'+Dato,8);
  DatosCierreCajaGeneral.QArticulo.Close;
  DatosCierreCajaGeneral.QArticulo.ParamByName('codigo').value  :=  Dato;
  DatosCierreCajaGeneral.QArticulo.Open;
  if not DatosCierreCajaGeneral.QArticulo.IsEmpty then
    begin
      ceArticulo.Text     :=  DatosCierreCajaGeneral.QArticuloCODIGO_STK.AsString;
      edArticulo.Text     :=  DatosCierreCajaGeneral.QArticuloDETALLE_STK.AsString;
      Result              :=  True;
    end
  else
    begin
      ceArticulo.Text     :=  '';
      edArticulo.Text     :=  '';
      Result              :=  False;
    end;
  DatosCierreCajaGeneral.QArticulo.Close;
end;

function TFormCierreCajaGeneral.AsignarCliente(Dato: string) :boolean;
begin
  Dato    :=  RightStr('000000'+Dato,6);
  DatosCierreCajaGeneral.QCliente.Close;
  DatosCierreCajaGeneral.QCliente.ParamByName('codigo').value  :=  Dato;
  DatosCierreCajaGeneral.QCliente.Open;
  if not DatosCierreCajaGeneral.QCliente.IsEmpty then
    begin
      ceCliente.Text    :=  DatosCierreCajaGeneral.QClienteCODIGO.AsString;
      edCliente.Text    :=  DatosCierreCajaGeneral.QClienteNOMBRE.AsString;
      Result            :=  True;
    end
  else
    begin
      ceCliente.Text    :=  '';
      edCliente.Text    :=  '';
      Result            :=  False;
    end;
  DatosCierreCajaGeneral.QCliente.Close;
end;

function TFormCierreCajaGeneral.BuscaCuentaGasto: Boolean;
begin
  inherited;
  if not Assigned(FormBuscadorCuentaGastos) then
    FormBuscadorCuentaGastos        :=  TFormBuscadorCuentaGastos.Create(Self);
    FormBuscadorCuentaGastos.Rubro  :=  '';
  FormBuscadorCuentaGastos.ShowModal;

  if  (FormBuscadorCuentaGastos.ModalResult = mrOk) and
      (FormBuscadorCuentaGastos.Cuenta <> '') then
    begin
      mtDetalleEgresosCODIGOCTA.AsString   :=  FormBuscadorCuentaGastos.Cuenta;
      mtDetalleEgresosDETALLE.AsString     :=  FormBuscadorCuentaGastos.DetalleCuenta;
      Result  :=  True;
    end
  else
    Result  :=  False;

end;

function TFormCierreCajaGeneral.BuscaEmpleado: string;
begin
  inherited;
  DatosCierreCajaGeneral.CDSBuscaPersonal.Close;
  DatosCierreCajaGeneral.CDSBuscaPersonal.ParamByName('codigo').Clear;
  DatosCierreCajaGeneral.CDSBuscaPersonal.Open;
  comBuscadorPersonal.Execute;
  if comBuscadorPersonal.rOk then
    Result  :=  comBuscadorPersonal.id
  else
    Result  :=  '';
  DatosCierreCajaGeneral.CDSBuscaPersonal.Close;
end;



procedure TFormCierreCajaGeneral.BuscarCpbteOPagoExecute(Sender: TObject);
begin
  inherited;
  if ( dbcSucursal.KeyValue>-1) then
    begin
      DMBuscadores.CDSBuscaComprob.Close;
      DMBuscadores.CDSBuscaComprob.CommandText:='';

      DMBuscadores.CDSBuscaComprob.CommandText:='select * from comprobantes where sucursal=:suc and '+
                                                '(tipo_comprob=''OP'') ';
      DMBuscadores.CDSBuscaComprob.Params.ParamByName('Suc').Value := dbcSucursal.KeyValue;


      FormBuscaComprobantes:=TFormBuscaComprobantes.Create(Self);
      FormBuscaComprobantes.CDSDatos:=DMBuscadores.CDSBuscaComprob;
      FormBuscaComprobantes.ShowModal;
      if FormBuscaComprobantes.ModalResult=mrOk Then
        BEGIN
          ceCpbteOPago.Text  :=  IntToStr(FormBuscaComprobantes.Id_Comp);
          edCpbteOPago.Text  :=  DMBuscadores.CDSBuscaComprobDENOMINACION.AsString;
        END;
    end;

end;

procedure TFormCierreCajaGeneral.CDSAdelantosAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalculaEFT;
end;


procedure TFormCierreCajaGeneral.CDSAdelantosReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError; UpdateKind: TUpdateKind;
  var Action: TReconcileAction);
begin
  inherited;
  Showmessage(E.Message);
end;

procedure TFormCierreCajaGeneral.CalculaEFT;
var
  p:TBookmark;
//  AIndex: integer;
//  AValue: variant;
begin
//  with gTarjetaDet.DataController.Summary do
//    begin
//      AIndex :=  FooterSummaryItems.IndexOfItemLink(gTarjetaDetIMPORTE);
//      AValue :=  FooterSummaryValues[AIndex]
//    end;

  p:=CDSTarjetas.GetBookmark;
  edTotalTarjetas.Value:=0;
  CDSTarjetas.DisableControls;
  CDSTarjetas.First;
  while Not(CDSTarjetas.Eof) do
    begin
      edTotalTarjetas.Value:=edTotalTarjetas.Value+CDSTarjetasIMPORTE.AsFloat;
      CDSTarjetas.Next;
    end;
  CDSTarjetas.GotoBookmark(P);
  CDSTarjetas.FreeBookmark(P);
  CDSTarjetas.EnableControls;

  edTotalEgresos.Value:=0;
  p:=mtDetalleEgresos.GetBookmark;
  mtDetalleEgresos.DisableControls;
  mtDetalleEgresos.First;
  while not(mtDetalleEgresos.Eof) do
    begin
      edTotalEgresos.Value:=edTotalEgresos.Value+mtDetalleEgresosIMPORTE.AsFloat;
      mtDetalleEgresos.Next;
    end;
  mtDetalleEgresos.First;
  mtDetalleEgresos.GotoBookmark(p);
  mtDetalleEgresos.FreeBookmark(P);
  mtDetalleEgresos.EnableControls;

  edTotalAdelantos.Value :=0;
  p:=mtAdelantos.GetBookmark;
  mtAdelantos.DisableControls;
  mtAdelantos.First;
  while not(mtAdelantos.Eof) do
    begin
      edTotalAdelantos.Value := edTotalAdelantos.Value + mtAdelantosIMPORTE.AsFloat;
      mtAdelantos.Next;
    end;
  mtAdelantos.First;
  mtAdelantos.GotoBookmark(P);
  mtAdelantos.FreeBookmark(P);
  mtAdelantos.EnableControls;


  edSaldoEFT.Value     := edTotalVta.Value - edTotalTarjetas.Value ;
  edGastos.Value       := edTotalEgresos.Value;
  edRetiros.Value      := edTotalAdelantos.Value;
  edSaldoCaja.Value    := edTotalVta.Value - edGastos.Value - edRetiros.Value;

  edMontoATransf.Value := edSaldoEFT.Value;
end;

procedure TFormCierreCajaGeneral.CancelarExecute(Sender: TObject);
begin
  CDSTarjetas.Close;
  mtAdelantos.Close;
  mtDetalleEgresos.Close;

  CDSTarjetas.Open;
  mtAdelantos.Open;
  mtDetalleEgresos.Open;

  btNuevo.Enabled    := True;
  btCancelar.Enabled := False;
  btConfirma.Enabled := False;
end;

procedure TFormCierreCajaGeneral.CDSEfectivoMontoATransfSetText(Sender: TField;
  const Text: string);
var Aux:  double;
begin
  if (Trim(Text)<>'') and TryStrToFloat(Text,Aux) then
    begin
      if Aux > edMontoATransf.MaxValue then    Aux :=  edMontoATransf.MaxValue;
      Sender.AsFloat  :=  Aux;
    end
  else
    Sender.Value  :=  Sender.OldValue;
end;


function TFormCierreCajaGeneral.AsignarCpbteVta(Dato: integer): Boolean;
begin
  if dbcSucursal.KeyValue>-1 then
    begin
      DatosCierreCajaGeneral.QCpbteVta.Close;
      DatosCierreCajaGeneral.QCpbteVta.ParamByName('codigo').Value := dato;
      DatosCierreCajaGeneral.QCpbteVta.ParamByName('suc').Value    := dbcSucursal.KeyValue;        //CDSEgresoCajaSUCURSALVENTA.Value;
      DatosCierreCajaGeneral.QCpbteVta.Open;
      IF NOT (DatosCierreCajaGeneral.QCpbteVta.IsEmpty) THEN
        BEGIN
          ceCpbteVta.Text  :=  DatosCierreCajaGeneral.QCpbteVtaID_COMPROBANTE.AsString;
          edCpbteVta.Text  :=  DatosCierreCajaGeneral.QCpbteVtaDENOMINACION.AsString;
          Result := True;
        END
      ELSE
        BEGIN
          ceCpbteVta.Text  :=  '';
          edCpbteVta.Text  :=  '';
          Result := False;
        END;
      DatosCierreCajaGeneral.QCpbteVta.Close;
    end;
 end;


function TFormCierreCajaGeneral.AsignarCpbteEgreso(Dato: integer):  Boolean;
begin
  if dbcSucursal.KeyValue>-1 then
    begin
      DatosCierreCajaGeneral.QCpbteEgreso.Close;
      DatosCierreCajaGeneral.QCpbteEgreso.ParamByName('id').Value  := dato;
      DatosCierreCajaGeneral.QCpbteEgreso.ParamByName('suc').Value := dbcSucursal.KeyValue;        //CDSEgresoCajaSUCURSALVENTA.Value;
      DatosCierreCajaGeneral.QCpbteEgreso.Open;
      IF NOT (DatosCierreCajaGeneral.QCpbteEgreso.IsEmpty) THEN
        BEGIN
          ceCpbteEgreso.Text  := DatosCierreCajaGeneral.QCpbteEgresoID_COMPROBANTE.AsString;
          edCpbteEgreso.Text  := DatosCierreCajaGeneral.QCpbteEgresoDENOMINACION.AsString;

          Result := True;
        END
      ELSE
        BEGIN
          ceCpbteEgreso.Text  :=  '';
          edCpbteEgreso.Text  :=  '';

          Result := False;
        END;
      DatosCierreCajaGeneral.QCpbteEgreso.Close;
    end;
end;

function TFormCierreCajaGeneral.AsignarCpbteAdelantos(Dato: integer):  Boolean;
begin
  if dbcSucursal.KeyValue>-1 then
    begin
      DatosCierreCajaGeneral.QCpbteAdelantos.Close;
      DatosCierreCajaGeneral.QCpbteAdelantos.ParamByName('codigo').Value   := dato;
      DatosCierreCajaGeneral.QCpbteAdelantos.ParamByName('sucursal').Value := dbcSucursal.KeyValue;        //CDSEgresoCajaSUCURSALVENTA.Value;
      DatosCierreCajaGeneral.QCpbteAdelantos.Open;
      IF NOT (DatosCierreCajaGeneral.QCpbteAdelantos.IsEmpty) THEN
        BEGIN
          ceCpbteAdelantos.Text  := DatosCierreCajaGeneral.QCpbteAdelantosID_COMPROBANTE.AsString;
          edCpbteAdelantos.Text  := DatosCierreCajaGeneral.QCpbteAdelantosDENOMINACION.AsString;
          Result := True;
        END
      ELSE
        BEGIN
          ceCpbteAdelantos.Text  :=  '';
          edCpbteAdelantos.Text  :=  '';
          Result := False;
        END;
      DatosCierreCajaGeneral.QCpbteAdelantos.Close;
    end;
end;

function TFormCierreCajaGeneral.AsignarCpbteOPago(Dato: integer):  Boolean;
var Q:TFDQuery;
begin
  if dbcSucursal.KeyValue>-1 then
    begin
      Q:=TFDQuery.Create(nil);
      Q.Connection:=DMMain_FD.fdcGestion;
      q.SQL.Text:='''
                  select   c.ID_COMPROBANTE,c.TIPO_COMPROB,c.LETRA,c.prefijo, c.numero,
                    c.CLASE_COMPROB, c.DENOMINACION,c.SUCURSAL from comprobantes c
                    where (c.tipo_comprob='OP') and (c.sucursal=:sucursal) and ((:codigo is null) or (c.ID_COMPROBANTE=:codigo))
                  ''';

      Q.ParamByName('codigo').Value   := dato;
      Q.ParamByName('sucursal').Value := dbcSucursal.KeyValue;        //CDSEgresoCajaSUCURSALVENTA.Value;
      Q.Open;
      IF NOT (Q.IsEmpty) THEN
        BEGIN
          ceCpbteOPago.Text  := Q.FieldByName('ID_COMPROBANTE').AsString;
          edCpbteOPago.Text  := Q.FieldByName('DENOMINACION').AsString;
          Result := True;
        END
      ELSE
        BEGIN
          ceCpbteOPago.Text  :=  '';
          edCpbteOPago.Text  :=  '';
          Result := False;
        END;
      Q.Close;
    end;
  FreeAndNil(Q);
end;

procedure TFormCierreCajaGeneral.CDSTarjetasAfterPost(DataSet: TDataSet);
begin
  inherited;
  CalculaEFT;
end;

procedure TFormCierreCajaGeneral.CDSTarjetasNROLOTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=AnsiRightStr('00000'+Text,5);
end;

procedure TFormCierreCajaGeneral.CDSTarjetasTERMINALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=AnsiRightStr('000000000'+Text,8);
end;


procedure TFormCierreCajaGeneral.chCierraCajaClick(Sender: TObject);
begin
  inherited;
  chAbreCaja.Enabled  :=  chCierraCaja.Checked;
end;


procedure TFormCierreCajaGeneral.ConfirmaExecute(Sender: TObject);
begin
  if MessageDlg('¿Confirma hacer el cierre de caja? Luego no podrá deshacer los cambios.',mtWarning,mbYesNo,0 )= mrYes then
    begin
      btNuevo.Enabled    := True;
      btCancelar.Enabled := False;
      btConfirma.Enabled := False;
      try
        if ConfirmaVta Then
          begin
            ConfirmaEgreso;
            ConfirmaAdelantos;
            if chTransferencia.Checked then
              ConfirmaTransferencia;
            if chCierraCaja.Checked then
              begin
                CierreCaja;
                if chAbreCaja.Checked then
                 AbreCaja;
              end;
          end;
        cbCaja.KeyValue        :=-1;
        edTotalVta.Value       := 0;
        edTotalEgresos.Value   := 0;
        edTotalAdelantos.Value := 0;
        edTotalTarjetas.Value  := 0;
        edMontoATransf.Value   := 0;
        edSaldoEFT.Value       := 0;
        edGastos.Value         := 0;
        edRetiros.Value        := 0;
        edSaldoCaja.Value      := 0;
        edSaldoInicial.Value   := 0;
        mtAdelantos.Close;
        mtDetalleEgresos.Close;
        CDSTarjetas.Close;
        DatosCierreCajaGeneral.CDSCaja.Close;
        DatosCierreCajaGeneral.CDSCaja.Open;

      except
        on E: Exception do
          begin
            Showmessage(E.Message);
            Cancelar.Execute;
          end;
      end;
    end;
end;


function TFormCierreCajaGeneral.ConfirmaAdelantos:Boolean;
begin
  Result:=True;
  if mtAdelantos.State in [dsInsert,dsEdit] then mtAdelantos.Post;
  if (edTotalAdelantos.Value>0) and Not(VarIsNull( edTotalAdelantos.Value)) then
    begin
      mtAdelantos.First;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        while not mtAdelantos.Eof do
          begin
            if (not mtAdelantosIMPORTE.IsNull) and (mtAdelantosIMPORTE.Value > 0) then
              begin
                DatosCierreCajaGeneral.spAgregarVale.Close;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('ID_COMPROBANTE').Value := StrToInt(ceCpbteAdelantos.Text);
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('FECHA').Value          := edFechaVta.Date;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('ID_MOTIVO').Value      := 1;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('EMPLEADO').Value       := mtAdelantosCODIGO.Value;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('IMPORTE').Value        := mtAdelantosIMPORTE.AsFloat;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('DETALLE').Value        := 'Retiro x Cierre de Caja'+ DateToStr(edFechaVta.Date);
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('USUARIO').Value        := DMMain_FD.UsuarioActivo;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('ID_CTA_CAJA').Value    := cbCaja.KeyValue ;
                DatosCierreCajaGeneral.spAgregarVale.ParamByName('OBS').Value            := 'Cierre de Caja General '+ DateToStr(edFechaVta.Date);
                DatosCierreCajaGeneral.spAgregarVale.ExecProc;
                DatosCierreCajaGeneral.spAgregarVale.Close;
              end;
            mtAdelantos.Next;
          end;

        DMMain_FD.fdcGestion.Commit;
        Result:=True;
      except
        Result:=False;
        DMMain_FD.fdcGestion.Rollback;
      end;
    end
  else
    Result  :=  False;
end;

function TFormCierreCajaGeneral.ConfirmaVta:boolean;
var TipoCpbte, IdCpbte: string;
begin
  if (edTotalVta.Value>0) and (Not(VarIsNull(edTotalVta.Value))) then
    begin
      TipoCpbte :=  '';
      IdCpbte   :=  '';
      DatosCierreCajaGeneral.QCpbteVta.Close;
      DatosCierreCajaGeneral.QCpbteVta.ParamByName('suc').Value    :=  dbcSucursal.KeyValue;
      DatosCierreCajaGeneral.QCpbteVta.ParamByName('codigo').Value :=  ceCpbteVta.Text;
      DatosCierreCajaGeneral.QCpbteVta.Open;
      if not DatosCierreCajaGeneral.QCpbteVta.IsEmpty then
        begin
          TipoCpbte :=  DatosCierreCajaGeneral.QCpbteVtaTIPO_COMPROB.AsString;
          IdCpbte   :=  DatosCierreCajaGeneral.QCpbteVtaID_COMPROBANTE.AsString;
        end;
      DatosCierreCajaGeneral.QCpbteVta.Close;
      if (TipoCpbte<>'') and (IdCpbte<>'') then
        begin
          if ceArticulo.Text = '' then  BuscaArticulo.Execute;
          if ceArticulo.Text <> '' then
            begin
              if Not(Assigned(FormCpbteCtdo_2)) Then
                FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
              result:=GeneraFCCtdo;
            end;
        end
      else
        begin
          Result:=False;
          raise Exception.Create(' Falta Tipo de Comprobante de Venta');
        end;
    end;
end;

function TFormCierreCajaGeneral.ConfirmaTransferencia:boolean;
begin
 // if CDSTrans.State <> dsBrowse then   CDSTrans.Post;
 result:=True;
 if (chTransferencia.Checked) and (edMontoATransf.Value > 0) then
   begin
     DatosCierreCajaGeneral.QSaldoCajaActual.Close;
     DatosCierreCajaGeneral.QSaldoCajaActual.ParamByName('id').Value:=cbCaja.LookupSource.DataSet.FieldByName('ID_CAJA').Value;
     DatosCierreCajaGeneral.QSaldoCajaActual.Open();
     if (edMontoATransf.Value <= DatosCierreCajaGeneral.QSaldoCajaActualSALDO.AsFloat+edSaldoEFT.Value) then
       begin
         if Not(Assigned(FormMontoATransferir)) then
           FormMontoATransferir:=TFormMontoATransferir.Create(Self);
         FormMontoATransferir.CajaOrigen     := cbCaja.KeyValue;
         FormMontoATransferir.CajaDestino    := cbCajaDest.KeyValue;
         FormMontoATransferir.ImporteOrigen  := edMontoATransf.Value;
         FormMontoATransferir.IdCpbte        := dbcComprobaTx.KeyValue;
         FormMontoATransferir.Fecha          := edFechaVta.Date;
         FormMontoATransferir.ShowModal;
         result:=FormMontoATransferir.TxOk;
       end;
    //FormMontoATransferir.Transferir;
   end
 else
   Result:=False;
end;

function TFormCierreCajaGeneral.AbreCaja:boolean;
begin
  if not (Assigned(FormAperturaCaja)) then
    FormAperturaCaja := TFormAperturaCaja.Create(self);
  FormAperturaCaja.Agregar.Execute;
  FormAperturaCaja.CDSCajaCabID_CUENTA_CAJA.Text          := cbCaja.KeyValue;
  FormAperturaCaja.CDSCajaCabFECHA_INCIO.AsDateTime       := Date;//EncodeDateTime(YearOf(FechaAux),MonthOf(FechaAux),DayOf(FechaAux),0,0,0,0);
//    FormAperturaCaja.Show;
  FormAperturaCaja.Confirma.Execute;
  if Not(FormAperturaCaja.DSBase.DataSet.IsEmpty) then
    Result:=True
  else
    Result:=False;

  FormAperturaCaja.Salir.Execute;

end;


function TFormCierreCajaGeneral.CierreCaja:boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
 //   id:=DatosCaja.CDSCajaCabID_CAJA.AsInteger;
    DatosCierreCajaGeneral.spCerrar_Caja.Close;
    DatosCierreCajaGeneral.spCerrar_Caja.ParamByName('id_caja').Value := Id_Caja_Act;//CDSCajaID_CAJA.AsInteger;
    DatosCierreCajaGeneral.spCerrar_Caja.ParamByName('fecha').Value   := edFechaVta.Date;
    DatosCierreCajaGeneral.spCerrar_Caja.ExecProc;
    DatosCierreCajaGeneral.spCerrar_Caja.Close;
    DMMain_FD.LogFileFD(0,2,'Cierre de Caja Cta.:'+ IntToStr(cbCaja.KeyValue)+'-'+ cbCaja.Text+'-'+
                            'Fecha Inicio:'+ cbCaja.LookupSource.DataSet.FieldByName('FECHA_INCIO').AsString+
                            'Cierre :'+DateToStr(edFechaVta.Date),
                            'CAJACAB');
    DMMain_FD.fdcGestion.Commit;
    Result:=True;

  except
    Result:=False;
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer el cierre...');
  end;


end;

procedure TFormCierreCajaGeneral.IngresarEft(Importe: Extended);
begin
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovHABER.AsFloat             := 0;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovDEBE.AsFloat              := Importe;
  if FormCpbteCtdo_2.FrameMovValoresIngreso1.AsignaFormaPago(1) then
    begin
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO.AsInteger        := 1;

      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Append;
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivoUNIDADES.Text         :=  FloatToStr(Importe);
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovEfectivo.Post;
    end;

end;

procedure TFormCierreCajaGeneral.IngresarTCredito(IDTCredito, Lote, Terminal:String; Importe: Extended);
begin
  DatosCierreCajaGeneral.QFormaPagoTC.Close;
  DatosCierreCajaGeneral.QFormaPagoTC.Open;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMov.Append;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovHABER.AsFloat             := 0;
  FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovDEBE.AsFloat              := 0;//Importe;//DatosVentasTicket.CDSVentaCabTOTAL.AsFloat;
  if FormCpbteCtdo_2.FrameMovValoresIngreso1.AsignaFormaPago(DatosCierreCajaGeneral.QFormaPagoTCID_FPAGO.Value) then
    begin

      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSCajaMovID_FPAGO.Text        := DatosCierreCajaGeneral.QFormaPagoTCID_FPAGO.AsString;//  '7';
      if FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCredito.State=dsBrowse then
        FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCredito.Append;
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoID_TC.Text            := IDTCredito;
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoCAN_CUOTAS.Text       := '1';
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoLOTE.Text             :=  Lote;
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoTERMINAL.Text         :=  Terminal;

      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCreditoUNIDADES_NETO.Text    := FloatToStr(Importe);
      FormCpbteCtdo_2.FrameMovValoresIngreso1.CDSMovTCredito.Post;
    end;
  DatosCierreCajaGeneral.QFormaPagoTC.Close;

end;

function TFormCierreCajaGeneral.GeneraFCCtdo:boolean;
var
  DialogoValores: boolean;
  Enter:Word;
begin
 // FormCpbteCtdo_2.Visible
//  if FormAct.ClassNameIs('TFormTicketVta') then        // GUARDO LA CONFIGURACION DE DIALOGO DE VALORES, LA EVITO Y LUEGO LA VUELVO A SU ESTADO ORIGINAL
//    begin
//      DialogoValores  :=  (FormAct as TFormTicketVta).ActivarDialogoValores1.Checked;
//      (FormAct as TFormTicketVta).ActivarDialogoValores1.Checked  :=  False;
//    end;
  Enter:=13;
  FormCpbteCtdo_2.SucursalPorDefecto := dbcSucursal.KeyValue;
  FormCpbteCtdo_2.DepositoPorDefecto := DepositoPorDefecto;
  FormCpbteCtdo_2.ClientePorDefecto  := ceCliente.Text;
  FormCpbteCtdo_2.CajaPorDefecto     := cbCaja.KeyValue;

  try
    FormCpbteCtdo_2.Agregar.Execute;
    with DatosVentasCtdo DO
      begin
        if ceCliente.Text <> '' then
          CDSVentaCabCODIGO.Text              := ceCliente.Text;
        CDSVentaCabID_TIPOCOMPROBANTE.Text    := ceCpbteVta.Text;
        CDSVentaCabFECHAVTA.AsDateTime        := edFechaVta.Date;
        CDSVentaCabIMPRESO.AsString           := 'N';
        CDSVentaCabOBSERVACION1.AsString      := 'Cierre Caja General '+DateToStr(edFechaVta.Date);
        CDSVentaCabUSUARIO.AsString           := DMMain_FD.UsuarioActivo;
        FormCpbteCtdo_2.DiscriminaIva         := 'S';
        CDSVentaDet.Append;
        CDSVentaDetCODIGOARTICULO.Text        := ceArticulo.Text;
        CDSVentaDetDETALLE.Text               := 'Cierre Caja General '+DateToStr(edFechaVta.Date); //edArticulo.Text;
        CDSVentaDetCANTIDAD.Text              := '1';
        CDSVentaDetUNITARIO_TOTAL.Text        := FloatToStr(edTotalVta.Value); //FloatToStr(UnitarioTotal);
        CDSVentaDet.Post;
      end;

    FormCpbteCtdo_2.pcDetalleFactura.ActivePageIndex       := 2;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja.Text    := IntToStr(cbCaja.KeyValue);
    FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCajaKeyDown(FormCpbteCtdo_2.FrameMovValoresIngreso1.ceCaja,Enter,[]);

    FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.Value;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.TipoOperacion  := 'I';
    FormCpbteCtdo_2.FrameMovValoresIngreso1.ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.Value;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.Value;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.Value;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
    FormCpbteCtdo_2.FrameMovValoresIngreso1.Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.Value;

    ConfirmaLoteTarjeta;

    FormCpbteCtdo_2.Imprime   :=  'N';

//    if FormAct.ClassNameIs('TFormTicketVta') then
//      (FormAct as TFormTicketVta).ActivarDialogoValores1.Checked  :=  DialogoValores;

    FormCpbteCtdo_2.Confirma.Execute;
    result:=True
  except
    Result:=False;
    FormCpbteCtdo_2.Cancelar.Execute;

  end;
  FormCpbteCtdo_2.Salir.Execute;
//  FormAct.Free;
end;


procedure TFormCierreCajaGeneral.gTarjetaExit(Sender: TObject);
begin
  inherited;
  if (DSTarjetas.DataSet.State<>dsBrowse) then
    DSTarjetas.DataSet.Post;
end;

function TFormCierreCajaGeneral.ConfirmaEgreso:boolean;
begin
  Result:=True;
    try
      DMMain_FD.fdcGestion.StartTransaction;
      with DatosCierreCajaGeneral,DMStoreProcedure do
        begin
          spAgregarGasto.Close;
          spAgregarGasto.ParamByName('ID_COMPROBANTE').Value := ceCpbteEgreso.Text;
          spAgregarGasto.ParamByName('FECHA').Value          := edFechaVta.Date;
          spAgregarGasto.ParamByName('IMPORTE').AsFloat      := edTotalEgresos.Value;
          spAgregarGasto.ParamByName('USUARIO').Value        := DMMain_FD.UsuarioActivo;
          spAgregarGasto.ParamByName('DETALLE').Value        := 'Generado desde Cierre de Caja '+ DateToStr(edFechaVta.Date);
          spAgregarGasto.ExecProc;

          mtDetalleEgresos.First;
          while Not(mtDetalleEgresos.Eof) do
            begin
              spAgregarGastoDetalle.Close;
              spAgregarGastoDetalle.ParamByName('ID_EGRESO').Value   := spAgregarGasto.ParamByName('ID_EGRESO').AsInteger;
              spAgregarGastoDetalle.ParamByName('TIPO').Value        := spAgregarGasto.ParamByName('TIPO_CPBTE').AsString;
              spAgregarGastoDetalle.ParamByName('CLASE').Value       := spAgregarGasto.ParamByName('CLASE_CPBTE').AsString;
              spAgregarGastoDetalle.ParamByName('NROCPBTE').Value    := spAgregarGasto.ParamByName('LETRA').AsString+spAgregarGasto.ParamByName('SUC').AsString+spAgregarGasto.ParamByName('NUMERO').AsString;
              spAgregarGastoDetalle.ParamByName('FECHA').Value       := edFechaVta.Date;
              spAgregarGastoDetalle.ParamByName('CODIGOGASTO').Value := mtDetalleEgresosCODIGOCTA.Value;
              spAgregarGastoDetalle.ParamByName('IMPORTE').Value     := mtDetalleEgresosIMPORTE.AsFloat;
              spAgregarGastoDetalle.ParamByName('SUCURSAL').Value    := spAgregarGasto.ParamByName('SUCURSAL').AsInteger;
              spAgregarGastoDetalle.ExecProc;
              mtDetalleEgresos.Next;
            end;


          spEgresoMovEfectivo.Close;
          spEgresoMovEfectivo.ParamByName('id_cpbte').Value           := spAgregarGasto.ParamByName('ID_EGRESO').AsInteger;
          spEgresoMovEfectivo.ParamByName('tipo_comprob').Value       := spAgregarGasto.ParamByName('TIPO_CPBTE').AsString;
          spEgresoMovEfectivo.ParamByName('clase_comprob').Value      := spAgregarGasto.ParamByName('CLASE_CPBTE').AsString;
          spEgresoMovEfectivo.ParamByName('nrocpbte').Value           := spAgregarGasto.ParamByName('LETRA').AsString+spAgregarGasto.ParamByName('SUC').AsString+spAgregarGasto.ParamByName('NUMERO').AsString;
          spEgresoMovEfectivo.ParamByName('id_cuenta_caja').Value     := cbCaja.KeyValue;
          spEgresoMovEfectivo.ParamByName('fecha_movimiento').Value   := edFechaVta.Date;
          spEgresoMovEfectivo.ParamByName('debe').Value               := 0;
          spEgresoMovEfectivo.ParamByName('haber').Value              := edTotalEgresos.Value;
          spEgresoMovEfectivo.ParamByName('tipooperacion').Value      := 'E';
          spEgresoMovEfectivo.ExecProc;

          spEgresoMovEfectivo.Close;
          Result:=true;
          DMMain_FD.fdcGestion.Commit;
        end;
    except
      Result:=false;
      DMMain_FD.fdcGestion.Rollback;
    end;


end;

procedure TFormCierreCajaGeneral.ConfirmaLoteTarjeta;
begin
  if CDSTarjetas.State<>dsBrowse then CDSTarjetas.Post;

    begin
      with FormCpbteCtdo_2.FrameMovValoresIngreso1 do
        begin
          if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := cbCaja.KeyValue;
              QCajaCab.Open;
              if QCajaCab.Fields[0].AsString='' Then
                Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
              IF NOT (QCajaCab.IsEmpty) and (DSBase.State=dsInsert) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.AsString;
                  Id_Caja            := QCajaCabID_CAJA.AsInteger;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
              QCajaCab.Close;

              TipoCpbte      := DatosVentasCtdo.CDSVentaCabTIPOCPBTE.AsString;
              TipoOperacion  := 'I';
              ClaseCpbte     := DatosVentasCtdo.CDSVentaCabCLASECPBTE.AsString;
              NroCpbte       := DatosVentasCtdo.CDSVentaCabNROCPBTE.AsString;
              IdCpbte        := DatosVentasCtdo.CDSVentaCabID_FC.AsInteger;
              FechaOperacion := DatosVentasCtdo.CDSVentaCabFECHAVTA.AsDateTime;
              Origen         := DatosVentasCtdo.CDSVentaCabRAZONSOCIAL.AsString;
            end;
        end;

      CDSTarjetas.First;

      while not(CDSTarjetas.Eof) do
        begin
          if CDSTarjetasIMPORTE.AsFloat > 0.0 then
              IngresarTCredito(CDSTarjetasID_TC.AsString,CDSTarjetasNROLOTE.AsString, CDSTarjetasTERMINAL.AsString, CDSTarjetasIMPORTE.AsFloat);
          CDSTarjetas.Next;
        end;

      IngresarEft(edSaldoEFT.Value);
    end;

end;



procedure TFormCierreCajaGeneral.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  dbcComprobaTx.ClearValue;
  ceCpbteVta.Clear;
  edCpbteVta.Clear;
  ceCpbteAdelantos.Clear;
  edCpbteAdelantos.Clear;
  ceCpbteEgreso.Clear;
  edCpbteEgreso.Clear;
  ceCpbteOPago.Clear;
  edCpbteOPago.Clear;
end;

procedure TFormCierreCajaGeneral.dbgAdelantosColEnter(Sender: TObject);
begin
  inherited;
  if dbgAdelantos.SelectedIndex=1 then
    dbgAdelantos.SelectedIndex:=2;
  if dbgAdelantos.SelectedIndex>2 then
    dbgAdelantos.SelectedIndex:=2;
end;

procedure TFormCierreCajaGeneral.dbgAdelantosDetCODIGOPropertiesButtonClick(
  Sender: TObject; AButtonIndex: Integer);
begin
  inherited;
  mtAdelantosCODIGO.Text :=  BuscaEmpleado;
end;

procedure TFormCierreCajaGeneral.dbgAdelantosEditButtonClick(Sender: TObject);
begin
  inherited;
  if (Trim(Text)<>'') and (Text[1]<>#13) then
    begin
      if BuscaEmpleado<>'' Then
        mtAdelantosCODIGO.Text   :=  BuscaEmpleado;

    end;

end;

procedure TFormCierreCajaGeneral.dbgAdelantosEnter(Sender: TObject);
begin
  inherited;
    dbgEgresos.SelectedIndex:=0;
end;

procedure TFormCierreCajaGeneral.dbgAdelantosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgAdelantos.SelectedIndex<2 then
        dbgAdelantos.SelectedIndex:=dbgAdelantos.SelectedIndex+1
      else
        begin
          dbgAdelantos.SelectedIndex:=0;
          dbgAdelantos.DataSource.DataSet.Append;
        end;
    end
  else
    if key=#10 then
      begin
        BuscaEmpleado;
      end;
end;

procedure TFormCierreCajaGeneral.dbgEgresosColEnter(Sender: TObject);
begin
  inherited;
  if dbgEgresos.SelectedIndex=1 then
    dbgEgresos.SelectedIndex:=2;
  if dbgEgresos.SelectedIndex>2 then
    dbgEgresos.SelectedIndex:=2;



end;

procedure TFormCierreCajaGeneral.dbgEgresosEditButtonClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorCuentaGastos)) Then
    FormBuscadorCuentaGastos:=TFormBuscadorCuentaGastos.Create(self);
  FormBuscadorCuentaGastos.ShowModal;
  if FormBuscadorCuentaGastos.ModalResult=mrOk then
    begin
      if mtDetalleEgresos.State=dsBrowse then
        mtDetalleEgresos.Edit;
      mtDetalleEgresosCODIGOCTASetText(mtDetalleEgresosCODIGOCTA,FormBuscadorCuentaGastos.Cuenta);
    end;

end;

procedure TFormCierreCajaGeneral.dbgEgresosEnter(Sender: TObject);
begin
  inherited;
  dbgEgresos.SelectedIndex:=0;
end;

procedure TFormCierreCajaGeneral.dbgEgresosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    begin
      Key:=#0;
      if dbgEgresos.SelectedIndex<2 then
        dbgEgresos.SelectedIndex:=dbgEgresos.SelectedIndex+1
      else
        begin
          dbgEgresos.SelectedIndex:=0;
          dbgEgresos.DataSource.DataSet.Append;
        end;
    end
  else
    if key=#10 then
      begin
        BuscaCuentaGasto;
      end;
end;

procedure TFormCierreCajaGeneral.dbgTarjetasColEnter(Sender: TObject);
begin
  inherited;
  if dbgTarjetas.SelectedIndex<3 then
    dbgTarjetas.SelectedIndex:=3;

end;

procedure TFormCierreCajaGeneral.dbgTarjetasEnter(Sender: TObject);
begin
  inherited;
  dbgTarjetas.SelectedIndex:=3;
end;

procedure TFormCierreCajaGeneral.dbgTarjetasExit(Sender: TObject);
begin
  inherited;
  if dbgTarjetas.DataSource.DataSet.State in [dsEdit,dsInsert] then
    dbgTarjetas.DataSource.DataSet.Post;
end;

procedure TFormCierreCajaGeneral.gAdelantosDetKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift=[ssCtrl]) and (Key = VK_RETURN) and
     (mtAdelantos.State in [dsInsert,dsEdit]) then
        mtAdelantosCODIGO.Text := BuscaEmpleado;
end;

procedure TFormCierreCajaGeneral.gAdelantosEnter(Sender: TObject);
begin
  if ceCpbteAdelantos.Text = '' then
    Showmessage(' Falta indicar comprobante de Adelantos. Chequear Configuración.')
  else
    begin
      inherited;
      if (mtAdelantos.State = dsBrowse) and (mtAdelantos.IsEmpty) then
        mtAdelantos.Append;
    end;
end;



procedure TFormCierreCajaGeneral.gEgresosEnter(Sender: TObject);
begin
  inherited;
  if (mtDetalleEgresos.State=dsBrowse) and (mtDetalleEgresos.IsEmpty) then
    mtDetalleEgresos.Append;
end;

procedure TFormCierreCajaGeneral.DSBaseStateChange(Sender: TObject);
begin
  //inherited;
//  btNuevo.Enabled    := Not(DSBase.DataSet.State in [dsInsert]);
//  btConfirma.Enabled := DSBase.DataSet.State in [dsInsert];
//  btCancelar.Enabled := DSBase.DataSet.State in [dsInsert];

  pnPrincipal.Enabled := True;
end;

procedure TFormCierreCajaGeneral.DSTarjetasStateChange(Sender: TObject);
begin
  inherited;
  edTotalVta.Enabled     := Not(DSTarjetas.DataSet.State in [dsInactive]);
  edMontoATransf.Enabled := Not(DSTarjetas.DataSet.State in [dsInactive]);
  cbCajaDest.Enabled     := Not(DSTarjetas.DataSet.State in [dsInactive]);

  pnTarjetas.Enabled     := Not(DSTarjetas.DataSet.State in [dsInactive]);
  pnGastos.Enabled       := Not(DSTarjetas.DataSet.State in [dsInactive]);
  pnPersonal.Enabled     := Not(DSTarjetas.DataSet.State in [dsInactive]);

end;

procedure TFormCierreCajaGeneral.edMontoATransfExit(Sender: TObject);
begin
  inherited;
  if edMontoATransf.Value>edSaldoEFT.Value then
    edMontoATransf.Value:=edSaldoEFT.Value;
end;

procedure TFormCierreCajaGeneral.edTotalVtaChange(Sender: TObject);
begin
  inherited;
  CalculaEFT;
end;

procedure TFormCierreCajaGeneral.FormClose(Sender: TObject;
  var Action: TCloseAction);
var ArchivoIni: TIniFile;
begin
  inherited;
  ArchivoIni                :=  TIniFile.Create(ExtractFilePath(ParamStr(0))+'CierreCajaGeneral.ini');

  ArchivoIni.WriteInteger('SUCURSAL','ID_SUCURSAL',dbcSucursal.KeyValue);
  if cbCaja.Text<>'' then
    ArchivoIni.WriteInteger('CAJA','ID_CUENTA_CAJA',cbCaja.KeyValue);
  if cbCajaDest.Text<>'' then
    ArchivoIni.WriteString('TRANSFERENCIAS','ID_CUENTA_CAJA_DEST',IntToStr(cbCajaDest.KeyValue));
  ArchivoIni.WriteBool  ('CAJA','CierraCaja',chCierraCaja.Checked);
  ArchivoIni.WriteBool  ('CAJA','AbreCaja',chAbreCaja.Checked);
  ArchivoIni.WriteString('EGRESOS','ID_CPBTE_EGRESO',ceCpbteEgreso.Text);
  ArchivoIni.WriteString('PERSONAL','ID_CPBTE_ADELANTOS',ceCpbteAdelantos.Text);
  ArchivoIni.WriteBool  ('TRANSFERENCIAS','TransfiereSaldos',chTransferencia.Checked);
  ArchivoIni.WriteInteger('TRANSFERENCIAS','ID_CPBTE_TRANSF',dbcComprobaTx.KeyValue);

  ArchivoIni.WriteString('VENTA','ID_CPBTE_VTA',ceCpbteVta.Text);
  ArchivoIni.WriteString('VENTA','CLIENTE',ceCliente.Text);
  ArchivoIni.WriteString('VENTA','ARTICULO',ceArticulo.Text);


  ArchivoIni.WriteString('Pagos','ID_CPBTE_OP',ceCpbteOPago.Text);

  //mtAdelantos.SaveToFile(ExtractFilePath(ParamStr(0))+'\CierreCajaPersonal.xml');
 // mtDetalleEgresos.SaveToFile(ExtractFilePath(ParamStr(0))+'\CierreCajaCuentasGastos.xml');


  DatosCierreCajaGeneral.CDSCaja.Close;
  CDSTarjetas.Close;

  FreeAndNil(DatosCierreCajaGeneral);

  ArchivoIni.Free;

  Action  :=  caFree;
end;

procedure TFormCierreCajaGeneral.FormCreate(Sender: TObject);
var ArchIni: TIniFile;
 VarAux:Integer;
begin
  inherited;
  AutoSize :=False;
  pnPrincipal.Enabled:=True;
  if not(Assigned(DatosCierreCajaGeneral)) then
    DatosCierreCajaGeneral := TDatosCierreCajaGeneral.Create(Self);

  With DatosCierreCajaGeneral do
    begin
      CDSSucursal.Close;
      CDSSucursal.Open;

      CDSCaja.Close;
      CDSCaja.Open;

      CDSCajaTx.Close;
      CDSCajaTx.Open;
    end;

  edFechaVta.DateTime       := Date;

  ArchivoIni                := TIniFile.Create(ExtractFilePath(ParamStr(0))+'CierreCajaGeneral.ini');

  cbCaja.KeyValue           := ArchivoIni.ReadInteger('CAJA','ID_CUENTA_CAJA',-1);
  chCierraCaja.Checked      := ArchivoIni.ReadBool  ('CAJA','CierraCaja',TRUE);
  chAbreCaja.Checked        := ArchivoIni.ReadBool  ('CAJA','AbreCaja',TRUE) and (chCierraCaja.Checked);

  dbcSucursal.KeyValue      := ArchivoIni.ReadInteger('SUCURSAL','ID_SUCURSAL',-1);
  ceCpbteEgreso.Text        := ArchivoIni.ReadString('EGRESOS','ID_CPBTE_EGRESO','-1');
  ceCpbteAdelantos.Text     := ArchivoIni.ReadString('PERSONAL','ID_CPBTE_ADELANTOS','-1');

  chTransferencia.Checked   := ArchivoIni.ReadBool  ('TRANSFERENCIAS','TransfiereSaldos',false);
  cbCajaDest.KeyValue       := ArchivoIni.ReadString('TRANSFERENCIAS','ID_CUENTA_CAJA_DEST','-1');
  dbcComprobaTx.KeyValue    := ArchivoIni.ReadInteger('TRANSFERENCIAS','ID_CPBTE_TRANSF',-1);

  ceCpbteVta.Text           := ArchivoIni.ReadString('VENTA','ID_CPBTE_VTA','');
  ceCliente.Text            := ArchivoIni.ReadString('VENTA','CLIENTE','');
  ceArticulo.Text           := ArchivoIni.ReadString('VENTA','ARTICULO','');

  ceCpbteOPago.Text         := ArchivoIni.ReadString('Pagos','ID_CPBTE_OP','');

  DatosCierreCajaGeneral.CDSComprobaTx.Close;
  DatosCierreCajaGeneral.CDSComprobaTx.Params.ParamByName('SUCURSAL').Value:=dbcSucursal.KeyValue;
  DatosCierreCajaGeneral.CDSComprobaTx.Open;

  if (ceCpbteEgreso.Text<>'')    and (TryStrToInt(ceCpbteEgreso.Text,VarAux)) then
    AsignarCpbteEgreso(VarAux);

  if (ceCpbteAdelantos.Text<>'') and (TryStrToInt(ceCpbteAdelantos.Text,VarAux)) then
    AsignarCpbteAdelantos(VarAux);

  if (ceCpbteVta.Text<>'') and (TryStrToInt(ceCpbteVta.Text,VarAux)) then
    AsignarCpbteVta(VarAux);

  if (ceCpbteOPago.Text<>'') and (TryStrToInt(ceCpbteOPago.Text,VarAux)) then
    AsignarCpbteOPago(VarAux);

  if Trim(ceCliente.Text)  <> '' then  AsignarCliente(Trim(ceCliente.Text));
  if Trim(ceArticulo.Text) <> '' then  AsignarArticulo(Trim(ceArticulo.Text));


  edTotalVta.Enabled     := False;
  edMontoATransf.Enabled := False;
  cbCajaDest.Enabled     := False;

  pnTarjetas.Enabled     := False;
  pnGastos.Enabled       := False;
  pnPersonal.Enabled     := False;


  ArchivoIni.Free;
  pcPrincipal.ActivePageIndex := 0;
end;


procedure TFormCierreCajaGeneral.mtAdelantosAfterPost(DataSet: TDataSet);
var P:TBookmark;
begin
  inherited;


  CalculaEFT;
end;

procedure TFormCierreCajaGeneral.mtAdelantosBeforeClose(DataSet: TDataSet);
begin
  inherited;
//  mtAdelantos.SaveToFile(ExtractFilePath(ParamStr(0))+'\CierreCajaPersonal.xml');
end;

procedure TFormCierreCajaGeneral.mtAdelantosCODIGOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if mtAdelantos.State=dsBrowse then
        mtAdelantos.Edit;
      Sender.AsString                 := AnsiRightStr('00000'+Text,6);
      if Trim(AsignarEmpleado(Sender.AsString))<>'' then
        begin
          mtAdelantosNOMBRE.AsString:= AsignarEmpleado(Sender.AsString);
        end
      else
        begin
          Sender.Clear;
          mtAdelantos.Cancel;
        end;
    end;

end;

procedure TFormCierreCajaGeneral.mtAdelantosNewRecord(DataSet: TDataSet);
begin
  inherited;
  mtAdelantosIMPORTE.Value:=0;
end;

procedure TFormCierreCajaGeneral.mtCtasGastosCODIGOGASTOSetText(Sender: TField;
  const Text: string);
var cuenta: string;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := copy('00000000', 1, Sender.Size - Length(Text)) + Text;
       if (not BuscaCuentaGasto) then
            Sender.AsString := '';
    end
  else
    if not BuscaCuentaGasto then
      Sender.AsString   := '';
end;


procedure TFormCierreCajaGeneral.mtDetalleEgresosAfterPost(DataSet: TDataSet);
var p:TBookmark;
begin
  inherited;

  CalculaEFT;
end;

procedure TFormCierreCajaGeneral.mtDetalleEgresosBeforeClose(DataSet: TDataSet);
begin
  inherited;
 // mtDetalleEgresos.SaveToFile(ExtractFilePath(ParamStr(0))+'\CierreCajaCuentasGastos.xml');
end;

procedure TFormCierreCajaGeneral.mtDetalleEgresosCODIGOCTASetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if mtDetalleEgresos.State=dsBrowse then
        mtDetalleEgresos.Edit;
      Sender.AsString                 := AnsiRightStr('00000'+Text,6);
      if Trim(AsignarCtaGasto(Sender.AsString))<>'' then
        begin
          mtDetalleEgresosDETALLE.AsString:= AsignarCtaGasto(Sender.AsString);
        end
      else
        begin
          Sender.Clear;
          mtDetalleEgresos.Cancel;
        end;
    end;
end;

procedure TFormCierreCajaGeneral.mtDetalleEgresosNewRecord(DataSet: TDataSet);
begin
  inherited;
  mtDetalleEgresosIMPORTE.Value:=0;
end;



function  TFormCierreCajaGeneral.IniciaCaja: boolean;
begin
  DatosCierreCajaGeneral.QIdCaja.Close;
  DatosCierreCajaGeneral.QIdCaja.ParamByName('id').AsInteger   :=  cbCaja.KeyValue;
  DatosCierreCajaGeneral.QIdCaja.Open;
  if not DatosCierreCajaGeneral.QIdCaja.IsEmpty then
    begin
      Id_Caja_Act   :=  DatosCierreCajaGeneral.QIdCajaID_CAJA.AsInteger;
      Result        :=  True;
    end
  else
    Result      := False;
  DatosCierreCajaGeneral.QIdCaja.Close;
end;


procedure TFormCierreCajaGeneral.FormDestroy(Sender: TObject);
begin
  inherited;
  FormCierreCajaGeneral :=  nil;
end;


procedure TFormCierreCajaGeneral.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(ActiveControl is TDBGrid) then
    inherited;
end;

procedure TFormCierreCajaGeneral.FormResize(Sender: TObject);
begin
  inherited;
  if FormCierreCajaGeneral<>nil then
    if FormCierreCajaGeneral.Width<>1120 then
      FormCierreCajaGeneral.Width:=1120;
end;

procedure TFormCierreCajaGeneral.FormShow(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
  btNuevo.SetFocus;
end;


procedure TFormCierreCajaGeneral.ceArticuloKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (key=VK_RETURN) and (not AsignarArticulo(ceArticulo.Text)) then
      BuscaArticulo.Execute;
  inherited;

end;

procedure TFormCierreCajaGeneral.ceClienteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key=VK_RETURN) and (not AsignarCliente(ceCliente.Text)) then
    BuscaCLiente.Execute;
  inherited;

end;

procedure TFormCierreCajaGeneral.ceCpbteAdelantosKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Aux: integer;
begin
  if (key=VK_RETURN) and (TryStrToInt(ceCpbteAdelantos.Text,Aux)) and (not AsignarCpbteAdelantos(Aux)) then
      BuscaCpbteAdelantos.Execute;
  inherited;

end;

procedure TFormCierreCajaGeneral.ceCpbteEgresoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Aux: integer;
begin
  if (key=VK_RETURN) and (TryStrToInt(ceCpbteEgreso.Text,Aux)) and (not AsignarCpbteEgreso(Aux)) then
      BuscaCpbteEgreso.Execute;
  inherited;

end;



procedure TFormCierreCajaGeneral.ceCpbteOPagoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Aux:Integer;
begin
  inherited;
  if (key=VK_RETURN) and (TryStrToInt(ceCpbteOPago.Text,Aux)) and (not AsignarCpbteOPago(Aux)) then
      BuscarCpbteOPago.Execute;
  inherited;
end;

procedure TFormCierreCajaGeneral.ceCpbteVtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
var Aux: integer;
begin
  if (Key=VK_RETURN) and (TryStrToInt(ceCpbteVta.Text,Aux)) and (not AsignarCpbteVta(Aux)) then
    BuscaCpbteVta.Execute;
  inherited;
end;






end.
