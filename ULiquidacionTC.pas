unit ULiquidacionTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Provider, DBClient, DBCtrls, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.SqlExpr, IBGenerator, Data.DB, Vcl.ComCtrls, JvBaseEdits, Vcl.StdCtrls,
  JvExDBGrids, JvDBGrid, Vcl.Grids, Vcl.DBGrids, JvToolEdit, JvDBControls,
  JvExMask, JvExControls, JvDBLookup, Vcl.Mask, JvLabel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, CompBuscador, JvAppStorage, JvAppIniStorage,Data.DBXCommon,
  JvComponentBase, JvFormPlacement, Vcl.ImgList,System.Variants,
  System.Actions, Vcl.ActnList, JvGradient, Vcl.Buttons, Vcl.ToolWin,
  Librerias, Vcl.ExtCtrls, System.ImageList;
type
  TFormLiquidacionTC = class(TFormABMBase)
    CDSLiqCab: TClientDataSet;
    DSPLiq_IIBB: TDataSetProvider;
    CDSLiq_IIBB: TClientDataSet;
    DSLiq_IIBB: TDataSource;
    DSPLiq_Iva: TDataSetProvider;
    CDSLiq_Iva: TClientDataSet;
    DSLiq_Iva: TDataSource;
    pnCabecera: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    dbePeriodo: TDBEdit;
    Label11: TLabel;
    dbeMuestraTarjeta: TDBEdit;
    CDSLiqDet: TClientDataSet;
    DSPLiqDet: TDataSetProvider;
    DSLiqDet: TDataSource;
    BuscarMovTC: TAction;
    BuscarTC: TAction;
    IBGLiqDet: TIBGenerator;
    IBGLiqCab: TIBGenerator;
    DBText1: TDBText;
    Label12: TLabel;
    Label20: TLabel;
    pcDeduciones: TPageControl;
    pagDeduciones: TTabSheet;
    pgRetenciones: TTabSheet;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    Label14: TLabel;
    DSJur_Reg: TDataSource;
    DSRetenciones: TDataSource;
    DSPRetenciones: TDataSetProvider;
    BuscarRetencion: TAction;
    DBText2: TDBText;
    Label15: TLabel;
    dbeSucursal: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit7: TDBEdit;
    Label9: TLabel;
    Label16: TLabel;
    BuscarSucursal: TAction;
    dbeLiquidacion: TDBEdit;
    Label19: TLabel;
    Label21: TLabel;
    SpeedButton1: TSpeedButton;
    Label22: TLabel;
    dbcLote: TJvDBLookupCombo;
    dbcTerminal: TJvDBLookupCombo;
    UpDown1: TUpDown;
    BuscaCtaBco: TAction;
    DBText5: TDBText;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPTRetencion: TDataSetProvider;
    CDSTRetencion: TClientDataSet;
    CDSTRetencionID_RETENCION: TIntegerField;
    CDSTRetencionDETALLE: TStringField;
    CDSTRetencionTIPO: TSmallintField;
    dbcTarjeta: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    dbcCtaBco: TJvDBComboEdit;
    dbFecha: TJvDBDateEdit;
    dbFechaFiscal: TJvDBDateEdit;
    CDSLiqCabID: TIntegerField;
    CDSLiqCabID_TC: TIntegerField;
    CDSLiqCabFECHA: TSQLTimeStampField;
    CDSLiqCabPERIODO_LIQUIDADO: TStringField;
    CDSLiqCabFECHA_FISCAL: TSQLTimeStampField;
    CDSLiqCabLETRA: TStringField;
    CDSLiqCabTIPOCPBTE: TStringField;
    CDSLiqCabCLASECPBTE: TStringField;
    CDSLiqCabSUC: TStringField;
    CDSLiqCabNUMERO: TStringField;
    CDSLiqCabNUMEROCPBTE: TStringField;
    CDSLiqCabTOTAL_PRESENTACION: TFloatField;
    CDSLiqCabARANCEL: TFloatField;
    CDSLiqCabIVA: TFloatField;
    CDSLiqCabIIBB: TFloatField;
    CDSLiqCabGANANCIAS: TFloatField;
    CDSLiqCabCOSTO_FINANCIERO: TFloatField;
    CDSLiqCabTOTAL_ACREDITADO: TFloatField;
    CDSLiqCabCUIT: TStringField;
    CDSLiqCabRAZONSOCIAL: TStringField;
    CDSLiqCabSUCURSAL: TIntegerField;
    CDSLiqCabPRESENTACION_ADICIONAL: TFloatField;
    CDSLiqCabNRO_LIQUIDACION: TStringField;
    CDSLiqCabNRO_LOTE: TStringField;
    CDSLiqCabNRO_TERMINAL: TStringField;
    CDSLiqCabID_CTA_BANCO: TIntegerField;
    CDSLiqCabNOMBRE_CTABCO: TStringField;
    CDSLiqCabMUESTRATARJETA: TStringField;
    CDSLiqCabMUESTRASUCURSAL: TStringField;
    CDSLiqDetID: TIntegerField;
    CDSLiqDetID_LIQCAB: TIntegerField;
    CDSLiqDetID_MOV_TCREDITO: TIntegerField;
    CDSLiqDetIMPORTE: TFloatField;
    CDSLiqDetFECHA_MOV: TSQLTimeStampField;
    CDSLiqDetCUOTAS: TSmallintField;
    CDSLiqDetNRO_CUPON: TIntegerField;
    DSPLiqCab: TDataSetProvider;
    CDSLiq_IvaID_LIQ: TIntegerField;
    CDSLiq_IvaID_IMPUESTO: TIntegerField;
    CDSLiq_IvaCODIGO_GRAVAMEN: TIntegerField;
    CDSLiq_IvaDETALLE: TStringField;
    CDSLiq_IvaNETO: TFloatField;
    CDSLiq_IvaTASA: TFloatField;
    CDSLiq_IvaIMPORTE: TFloatField;
    CDSLiq_IIBBID_LIQ: TIntegerField;
    CDSLiq_IIBBID_PERCEPCION: TIntegerField;
    CDSLiq_IIBBCODIGO_PERCEPCION: TIntegerField;
    CDSLiq_IIBBDETALLE: TStringField;
    CDSLiq_IIBBNETO: TFloatField;
    CDSLiq_IIBBTASA: TFloatField;
    CDSLiq_IIBBIMPORTE: TFloatField;
    CDSLiq_IIBBJURIDICION: TIntegerField;
    CDSRetenciones: TClientDataSet;
    CDSRetencionesID_MOV_RETENCIONES: TIntegerField;
    CDSRetencionesID_RETENCION: TIntegerField;
    CDSRetencionesDETALLE: TStringField;
    CDSRetencionesTIPOCPBTE: TStringField;
    CDSRetencionesCLASECPBTE: TStringField;
    CDSRetencionesNROCPBTE: TStringField;
    CDSRetencionesID_CPBTE: TIntegerField;
    CDSRetencionesFECHA: TSQLTimeStampField;
    CDSRetencionesFECHA_RETENCION: TSQLTimeStampField;
    CDSRetencionesNRO_RETENCION: TStringField;
    CDSRetencionesIMPORTE: TFloatField;
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel8: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    ceTotalRetenciones: TJvCalcEdit;
    CambiarFechaCta: TAction;
    ToolButton1: TToolButton;
    btModificaFecha: TBitBtn;
    CDSLiqCabING_LIBROIVA: TStringField;
    CDSLiqCabCONTABILIZA: TStringField;
    cxDBSpinEdit1: TDBText;
    dbgPercepcionIVA: TDBGrid;
    JvLabel1: TJvLabel;
    DSPLiq_PerIVA: TDataSetProvider;
    CDSLiq_PerIVA: TClientDataSet;
    DSLiq_PerIVA: TDataSource;
    CDSLiq_PerIVAID_PERCEPCION: TIntegerField;
    CDSLiq_PerIVACODIGO_PERCEPCION: TIntegerField;
    CDSLiq_PerIVADETALLE: TStringField;
    CDSLiq_PerIVAID_LIQ: TIntegerField;
    CDSLiq_PerIVANETO: TFloatField;
    CDSLiq_PerIVATASA: TFloatField;
    CDSLiq_PerIVAIMPORTE: TFloatField;
    CDSLiq_PerIVACODIGOREGIMEN: TIntegerField;
    pagCupones: TTabSheet;
    pnDetalle: TPanel;
    Label17: TLabel;
    dbgLiqDet: TDBGrid;
    dbeAdicional: TDBEdit;
    dbgMovTc: TJvDBGrid;
    Label7: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    pnTotales: TPanel;
    dbeIva: TDBEdit;
    dbeIIBB: TDBEdit;
    dbeAcreditado: TDBEdit;
    dbeGanacia: TDBEdit;
    dbePresentacion: TDBEdit;
    dbeArancel: TDBEdit;
    dbeCostosFinanciero: TDBEdit;
    chLibroIva: TDBCheckBox;
    chContabiliza: TDBCheckBox;
    CDSLiqCabIMPORTES_EXENTOS: TFloatField;
    Label23: TLabel;
    dbeExento: TDBEdit;
    btnSuma: TSpeedButton;
    ComBuscadorTarjetas: TComBuscador;
    dbgRetenciones: TJvDBGrid;
    ComBuscadorIva: TComBuscador;
    ComBuscadorPercepcionIVA: TComBuscador;
    ComBuscadorPercepcionIB: TComBuscador;
    ComBuscadorCtaBco: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorRetenciones: TComBuscador;
    chbIngresaResumenBanco: TDBCheckBox;
    CDSLiqCabINGRESAR_RESUMENBANCARIO: TStringField;
    IngresarResumenBco: TAction;
    QControlMovBanco: TFDQuery;
    spIngresaMovBanco: TSpeedButton;
    ToolButton2: TToolButton;
    chTodosLosMovTC: TCheckBox;
    CDSLiqCabMUESTRADEPOSITADO: TIntegerField;
    lbDepositada: TLabel;
    AsignarEntidadPagadora: TAction;
    spAsignaEmtidad: TSpeedButton;
    pnPiePendientes: TPanel;
    Label18: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    LeerLiquidacion: TAction;
    ToolButton3: TToolButton;
    SpeedButton2: TSpeedButton;
    VerCuponTC: TAction;
    lbX: TLabel;
    lbY: TLabel;
    edTotal: TJvCalcEdit;
    procedure CDSLiqCabSUCSetText(Sender: TField; const Text: String);
    procedure CDSLiqCabNUMEROSetText(Sender: TField; const Text: String);
    procedure BuscarMovTCExecute(Sender: TObject);
    procedure BuscarTCExecute(Sender: TObject);
    procedure CDSLiqCabID_TCSetText(Sender: TField; const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure CDSLiqCabNewRecord(DataSet: TDataSet);
    procedure CDSLiq_IvaCODIGO_GRAVAMENSetText(Sender: TField;
      const Text: String);
    procedure CDSLiq_IIBBCODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSLiq_IvaNETOSetText(Sender: TField; const Text: String);
    procedure CDSLiq_IIBBNETOSetText(Sender: TField; const Text: String);
    procedure dbgIvaColEnter(Sender: TObject);
    procedure dbgIvaEditButtonClick(Sender: TObject);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPercepcionIBColEnter(Sender: TObject);
    procedure dbgPercepcionIBEditButtonClick(Sender: TObject);
    procedure dbgPercepcionIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIBKeyPress(Sender: TObject; var Key: Char);
    procedure CDSLiq_IvaNewRecord(DataSet: TDataSet);
    procedure CDSLiq_IIBBNewRecord(DataSet: TDataSet);
    procedure dbgLiqDetDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure dbgLiqDetDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure CDSLiqDetNewRecord(DataSet: TDataSet);
    procedure CDSLiqDetAfterPost(DataSet: TDataSet);
    procedure CDSLiqDetAfterDelete(DataSet: TDataSet);
    procedure CDSLiqDetBeforeDelete(DataSet: TDataSet);
    procedure dbgMovTcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CDSLiqCabARANCELSetText(Sender: TField; const Text: String);
    procedure CDSLiqCabGANANCIASSetText(Sender: TField;
      const Text: String);
    procedure CDSLiq_IvaIMPORTESetText(Sender: TField; const Text: String);
    procedure CDSLiq_IIBBIMPORTESetText(Sender: TField;
      const Text: String);
    procedure CancelarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CDSRetencionesAfterPost(DataSet: TDataSet);
    procedure CDSRetencionesID_RETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesFECHA_RETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesNewRecord(DataSet: TDataSet);
    procedure BuscarRetencionExecute(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSRetencionesBeforePost(DataSet: TDataSet);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure CDSLiqCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure RxCSucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSLiqCabTOTAL_PRESENTACIONSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabCOSTO_FINANCIEROSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabPRESENTACION_ADICIONALSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesAfterDelete(DataSet: TDataSet);
    procedure CDSLiq_IvaAfterDelete(DataSet: TDataSet);
    procedure CDSLiq_IIBBAfterDelete(DataSet: TDataSet);
    procedure CDSLiq_IvaBeforePost(DataSet: TDataSet);
    procedure CDSLiqCabNRO_LIQUIDACIONSetText(Sender: TField;
      const Text: string);
    procedure CDSLiqCabNRO_LOTESetText(Sender: TField; const Text: string);
    procedure CDSLiqCabNRO_TERMINALSetText(Sender: TField; const Text: string);
    procedure JvDBGrid1TitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure BuscaCtaBcoExecute(Sender: TObject);
    procedure CDSLiqCabID_CTA_BANCOSetText(Sender: TField; const Text: string);
    procedure CambiarFechaCtaExecute(Sender: TObject);
    procedure dbgMovTcTitleBtnClick(Sender: TObject; ACol: Integer;
      Field: TField);
    procedure dbgMovTcMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSLiq_PerIVACODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSLiq_PerIVAAfterDelete(DataSet: TDataSet);
    procedure CDSLiq_PerIVANewRecord(DataSet: TDataSet);
    procedure CDSLiq_PerIVABeforePost(DataSet: TDataSet);
    procedure CDSLiq_PerIVANETOSetText(Sender: TField; const Text: string);
    procedure CDSLiq_PerIVAIMPORTESetText(Sender: TField; const Text: string);
    procedure dbgPercepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIVAKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPercepcionIVAColEnter(Sender: TObject);
    procedure dbgPercepcionIVAEditButtonClick(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSLiqCabFECHA_FISCALSetText(Sender: TField; const Text: string);
    procedure dbFechaFiscalExit(Sender: TObject);
    procedure CDSLiqCabFECHA_FISCALChange(Sender: TField);
    procedure CDSLiqDetIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSLiqDetBeforeEdit(DataSet: TDataSet);
    procedure dbgLiqDetColEnter(Sender: TObject);
    procedure dbgLiqDetEnter(Sender: TObject);
    procedure dbgLiqDetKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDSLiqDetAfterOpen(DataSet: TDataSet);
    procedure CDSLiqCabIMPORTES_EXENTOSSetText(Sender: TField;
      const Text: string);
    procedure btnSumaClick(Sender: TObject);
    procedure dbgRetencionesCellClick(Column: TColumn);
    procedure dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
    procedure FormResize(Sender: TObject);
    procedure IngresarResumenBcoExecute(Sender: TObject);
    procedure chTodosLosMovTCClick(Sender: TObject);
    procedure AsignarEntidadPagadoraExecute(Sender: TObject);
    procedure LeerLiquidacionExecute(Sender: TObject);
    procedure DesdeAcceptDate(Sender: TObject; var ADate: TDateTime;
      var Action: Boolean);
    procedure VerCuponTCExecute(Sender: TObject);
  private
    procedure AsignarEntidad(Dato: Integer);
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignaCta(dato: Integer): Boolean;
    procedure Limpiar;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarRetencion(Dato: Integer): Boolean;
    PROCEDURE CalcularRetenciones;
    procedure Calcular;
    function AsignarTC(Dato:Integer):Boolean;
    function AsignaIva(dato:Integer):boolean;
    function AsignaPrecepcionIB(dato:Integer):boolean;
    function AsignaPrecepcionIVA(dato:Integer):boolean;
    procedure AplicarMovimientoDesdeLote(
      const IDMov: Integer;
      const Importe: Double;
      const Fecha: TDateTime;
      const Cupon: Variant;
      const Cuotas: Integer);

  end;

var
  FormLiquidacionTC: TFormLiquidacionTC;
  SumaRetenciones:Real;
implementation

uses UDMain_FD,DMBuscadoresForm, DMStoreProcedureForm,DMLiquidacionTC,
  UCambiaFecha_Cta_LiqTC, UBuscadorLiqTC,UMovTarjetaCredito,
  UListadoTarjetasCSV, UMuestraCuponTarjeta;
{$R *.DFM}


procedure TFormLiquidacionTC.AplicarMovimientoDesdeLote(const IDMov: Integer;
  const Importe: Double; const Fecha: TDateTime; const Cupon: Variant;
  const Cuotas: Integer);
begin
  if not CDSLiqDet.Locate('ID_MOV_TCREDITO', IDMov, []) then
    begin
      CDSLiqDet.Insert;
      CDSLiqDetID_MOV_TCREDITO.Value := IDMov;
      CDSLiqDetIMPORTE.Value         := Importe;
      CDSLiqDetFECHA_MOV.AsDateTime  := Fecha;
      CDSLiqDetCUOTAS.Value          := Cuotas;
      if VarIsNull(Cupon) or VarIsEmpty(Cupon) then
        CDSLiqDetNRO_CUPON.Value := 0
      else
        CDSLiqDetNRO_CUPON.Value := Cupon;
      CDSLiqDet.Post;
    end
  else
    ShowMessage('Ya está acreditada... Verifique!!!');
end;

FUNCTION TFormLiquidacionTC.AsignaCta(dato: Integer): Boolean;
begin
  DatosLiquidacionTC.QCtaCaja.Close;
  DatosLiquidacionTC.QCtaCaja.ParamByName('id').Value := Dato;
  DatosLiquidacionTC.QCtaCaja.Open;
  IF NOT (DatosLiquidacionTC.QCtaCaja.IsEmpty) and (DatosLiquidacionTC.QCtaCajaID_TIPO_CTA.Value=2) THEN
    BEGIN
      Result := True;
      CDSLiqCabNOMBRE_CTABCO.Value   := DatosLiquidacionTC.QCtaCajaNOMBRE.Value;
      CDSLiqCabID_CTA_BANCO.Value    := DatosLiquidacionTC.QCtaCajaID_CUENTA.Value;
    END
  ELSE
    begin
      Result := False;
      CDSLiqCabNOMBRE_CTABCO.Clear;
      CDSLiqCabID_CTA_BANCO.Clear;
    end;
  DatosLiquidacionTC.QCtaCaja.Close;

END;

procedure TFormLiquidacionTC.LeerLiquidacionExecute(Sender: TObject);
begin
  inherited;
  if Not(DatosLiquidacionTC.CDSMovTC.IsEmpty) then
    begin
      if Not(Assigned(formLoteLiquidacion)) then
        FormLoteLiquidacion:=TFormLoteLiquidacion.Create(self);
      FormLoteLiquidacion.OnAplicarMovimiento := Self.AplicarMovimientoDesdeLote;
      FormLoteLiquidacion.CDSDatosTarjetas:= DatosLiquidacionTC.CDSMovTC;
      FormLoteLiquidacion.ShowModal;
      FreeAndNil(FormLoteLiquidacion);
    end;

end;

procedure TFormLiquidacionTC.Limpiar;
begin
  if not(CDSLiqDet.IsEmpty) then
    if MessageDlg('Limpiar Movimientos de Asignacion?...',TMsgDlgType.mtConfirmation,[mbYes,mbNo],0,mbNo)=mrYes then
      begin
        DatosLiquidacionTC.CDSMovTC.Close;
        DatosLiquidacionTC.CDSMovTc.IndexFieldNames:='';
        DatosLiquidacionTC.CDSMovTc.IndexDefs.Clear;
        DatosLiquidacionTC.CDSMovTC.Params.ParamByName('id_TC').Clear;
        DatosLiquidacionTC.CDSMovTC.Params.ParamByName('lote').Value    :='00000';
        DatosLiquidacionTC.CDSMovTC.Params.ParamByName('Terminal').Value:='00000000';
        DatosLiquidacionTC.CDSMovTC.Open;

        CDSLiqDet.Close;
        CDSLiqDet.Params.ParamByName('id').Clear;
        CDSLiqDet.Open;

        CDSLiq_IIBB.Close;
        CDSLiq_IIBB.Params.ParamByName('id').Clear;
        CDSLiq_IIBB.Open;

        CDSLiq_Iva.Close;
        CDSLiq_Iva.Params.ParamByName('id').Clear;
        CDSLiq_Iva.Open;

        CDSLiq_Iva.Close;
        CDSLiq_Iva.Params.ParamByName('id').Clear;
        CDSLiq_Iva.Open;

        CDSRetenciones.Close;
        CDSRetenciones.Params.ParamByName('id').Clear;
        CDSRetenciones.Open;

      end;
    Calcular;
  CalcularRetenciones;
end;

FUNCTION TFormLiquidacionTC.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  DMMain_FD.QSucursal.Close;
  DMMain_FD.QSucursal.ParamByName('Codigo').Value:=dato;
  DMMain_FD.QSucursal.Open;
  IF NOT (DMMain_FD.QSucursal.Eof) THEN
    BEGIN
      Result:=True;
      CDSLiqCabSUCURSAL.Value       :=DMMain_FD.QSucursalCODIGO.Value;
      CDSLiqCabMUESTRASUCURSAL.Value:=DMMain_FD.QSucursalDETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSLiqCabSUCURSAL.Clear;
      CDSLiqCabMUESTRASUCURSAL.Clear;
    END;
  DMMain_FD.QSucursal.Close;
END;

procedure TFormLiquidacionTC.AsignarEntidadPagadoraExecute(Sender: TObject);
begin
  inherited;
  if CDSLiqCabID_TC.AsString<>'' then
    AsignarEntidad(CDSLiqCabID_TC.Value);
end;

FUNCTION TFormLiquidacionTC.AsignarRetencion(Dato: Integer): Boolean;
BEGIN
  DatosLiquidacionTC.CDSRegimen.Close;
  DatosLiquidacionTC.CDSJuridicion.Close;
  CDSTRetencion.Close;
  CDSTRetencion.Params.ParamByName('Id').Value := dato;
  CDSTRetencion.Open;
  IF NOT (CDSTRetencion.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSRetencionesDETALLE.Value := CDSTRetencionDETALLE.Value;
      if CDSTRetencionTIPO.Value=1 Then
        begin
          DSJur_Reg.DataSet:=DatosLiquidacionTC.CDSRegimen;
          DatosLiquidacionTC.CDSRegimen.Open;
        end
      else
      if CDSTRetencionTIPO.Value=2 Then
        begin
          DSJur_Reg.DataSet:=DatosLiquidacionTC.CDSJuridicion;
          DatosLiquidacionTC.CDSJuridicion.Open;
        end;

    END
  ELSE
    Result := False;
  CDSTRetencion.Close;
END;


PROCEDURE TFormLiquidacionTC.CalcularRetenciones;
BEGIN
  SumaRetenciones := 0;
  CDSRetenciones.DisableControls;
  CDSRetenciones.First;
  WHILE NOT (CDSRetenciones.Eof) DO
    BEGIN
      SumaRetenciones := SumaRetenciones + CDSRetencionesIMPORTE.AsFloat;
      CDSRetenciones.Next;
    END;
  CDSRetenciones.EnableControls;
  CDSLiqCabGANANCIAS.AsFloat:=SumaRetenciones;
  ceTotalRetenciones.Text :=FormatFloat('0.00', SumaRetenciones);
END;



procedure TFormLiquidacionTC.CambiarFechaCtaExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormCambioFechaLiqTC)) then
        FormCambioFechaLiqTC:=TFormCambioFechaLiqTC.Create(Self);
      FormCambioFechaLiqTC.FechaOp    :=CDSLiqCabFecha.AsDateTime;
      FormCambioFechaLiqTC.FechaFiscal:=CDSLiqCabFecha_Fiscal.AsDateTime;
      FormCambioFechaLiqTC.IdCta      :=CDSLiqCabID_CTA_BANCO.Value;
      FormCambioFechaLiqTC.Contabiliza:=CDSLiqCabCONTABILIZA.Value='S';
      FormCambioFechaLiqTC.IngIva     :=CDSLiqCabING_LIBROIVA.Value='S';
      FormCambioFechaLiqTC.IdLiq      :=CDSLiqCabID.Value;
      FormCambioFechaLiqTC.ShowModal;
      Recuperar.Execute;
    end
  else
    ShowMessage('No esta autorizado para esta operacion, solo Administradores...');  
end;

procedure TFormLiquidacionTC.Calcular;
var Puntero:TBookmark;
begin
  CalcularRetenciones;
  Puntero:=CDSLiqDet.GetBookmark;
  CDSLiqCabTOTAL_PRESENTACION.AsFloat:=0;
  CDSLiqDet.DisableControls;
  CDSLiqDet.First;
  while Not(CDSLiqDet.Eof) do
    begin
      CDSLiqCabTOTAL_PRESENTACION.AsFLoat:=CDSLiqCabTOTAL_PRESENTACION.AsFloat+
                                           CDSLiqDetIMPORTE.AsFloat;
      CDSLiqDet.Next;
    end;
  CDSLiqCabTOTAL_PRESENTACION.AsFloat:=CDSLiqCabTOTAL_PRESENTACION.AsFloat+
                                       CDSLiqCabPRESENTACION_ADICIONAL.AsFloat;
  CDSLiqDet.GotoBookmark(Puntero);
  CDSLiqDet.EnableControls;
  CDSLiqDet.FreeBookmark(Puntero);

  CDSLiq_Iva.First;
  CDSLiqCabIVA.AsFloat:=0;
  while not(CDSLiq_Iva.Eof) do
    begin
      CDSLiqCabIVA.AsFloat:=CDSLiqCabIVA.AsFloat + CDSLiq_IvaIMPORTE.AsFloat;
      CDSLiq_Iva.Next;
    end;

  CDSLiq_PerIVA.First;
  while not(CDSLiq_PerIVA.Eof) do
    begin
      CDSLiqCabIVA.AsFloat := CDSLiqCabIVA.AsFloat + CDSLiq_PerIVAIMPORTE.AsFloat;
      CDSLiq_PerIVA.Next;
    end;

  CDSLiq_IIBB.First;
  CDSLiqCabIIBB.AsFloat:=0;
  while not(CDSLiq_IIBB.Eof) do
    begin
      CDSLiqCabIIBB.AsFloat := CDSLiqCabIIBB.AsFloat + CDSLiq_IIBBIMPORTE.AsFloat;
      CDSLiq_IIBB.Next;
    end;


  CDSLiqCabTOTAL_ACREDITADO.AsFloat :=CDSLiqCabTOTAL_PRESENTACION.AsFloat -
                                              (CDSLiqCabARANCEL.AsFloat +
                                               CDSLiqCabIMPORTES_EXENTOS.ASFloat+
                                               CDSLiqCabGANANCIAS.AsFloat +
                                               CDSLiqCabIIBB.AsFloat +
                                               CDSLiqCabIVA.AsFloat +
                                               CDSLiqCabCOSTO_FINANCIERO.AsFloat);
end;


function TFormLiquidacionTC.AsignaIva(dato:Integer):boolean;
begin
  DatosLiquidacionTC.QGravamen.close;
  DatosLiquidacionTC.QGravamen.ParamByName('codigo').Value:=Dato;
  DatosLiquidacionTC.QGravamen.Open;
  if Not(DatosLiquidacionTC.QGravamen.IsEmpty) Then
    begin
      Result:=True;
      CDSLiq_IvaDETALLE.Value:=DatosLiquidacionTC.QGravamenDESCRIPCION.Value;
      CDSLiq_IvaTASA.Value   :=DatosLiquidacionTC.QGravamenTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSLiq_IvaDETALLE.Value:='';
      CDSLiq_IvaTASA.AsFloat  := 0;
    end;
end;

function TFormLiquidacionTC.AsignaPrecepcionIB(dato:Integer):boolean;
begin
  DatosLiquidacionTC.QPercepIB.close;
  DatosLiquidacionTC.QPercepIB.ParamByName('codigo').Value:=Dato;
  DatosLiquidacionTC.QPercepIB.Open;
  if Not(DatosLiquidacionTC.QPercepIB.IsEmpty) Then
    begin
      Result:=True;
      CDSLiq_IIBBDETALLE.Value:=DatosLiquidacionTC.QPercepIBDESCRIPCION.Value;
      CDSLiq_IIBBTASA.Value   :=DatosLiquidacionTC.QPercepIBTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSLiq_IIBBDETALLE.Value:='';
      CDSLiq_IIBBTASA.AsFloat :=0;
    end;
end;

function TFormLiquidacionTC.AsignaPrecepcionIva(dato:Integer):boolean;
begin
  DatosLiquidacionTC.QPercepIva.close;
  DatosLiquidacionTC.QPercepIva.ParamByName('codigo').Value:=Dato;
  DatosLiquidacionTC.QPercepIva.Open;
  if Not(DatosLiquidacionTC.QPercepIva.IsEmpty) Then
    begin
      Result:=True;
      CDSLiq_PerIVADETALLE.Value := DatosLiquidacionTC.QPercepIvaDESCRIPCION.Value;
      CDSLiq_PerIVATASA.Value    := DatosLiquidacionTC.QPercepIvaTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSLiq_PerIVADETALLE.Value := '';
      CDSLiq_PerIVATASA.AsFloat  := 0;
    end;
end;

procedure TFormLiquidacionTC.AsignarEntidad(Dato:Integer);
begin
  CDSLiqCab.Edit;
  DMMain_FD.QTCredito.Close;
  DMMain_FD.QTCredito.ParamByName('id').Value:=Dato;
  DMMain_FD.QTCredito.Open;
  if Not(DMMain_FD.QTCredito.IsEmpty) Then
    begin
//      CDSLiqCabMUESTRATARJETA.Value    :=DMMain_FD.QTCreditoDESCRIPCION.Value;
//      CDSLiqCabID_CTA_BANCO.Value      :=DMMain_FD.QTCreditoID_CUENTA_BANCO.Value;
//      CDSLiqCabNOMBRE_CTABCO.Value     :=DMMain_FD.QTCreditoMUESTRACTABCO.Value;
      CDSLiqCabCUIT.Value              :=DMMain_FD.QTCreditoCUIT.Value;
      CDSLiqCabRAZONSOCIAL.Value       :=DMMain_FD.QTCreditoRAZONSOCIAL.Value;
    end;
  DMMain_FD.QTCredito.Close;
  CDSLiqCab.Post;
  CDSLiqCab.ApplyUpdates(0);
end;

function TFormLiquidacionTC.AsignarTC(Dato:Integer):Boolean;
begin
  DMMain_FD.QTCredito.Close;
  DMMain_FD.QTCredito.ParamByName('id').Value:=Dato;
  DMMain_FD.QTCredito.Open;
  if Not(DMMain_FD.QTCredito.IsEmpty) Then
    begin
      Result:=True;
      CDSLiqCabMUESTRATARJETA.Value    :=DMMain_FD.QTCreditoDESCRIPCION.Value;
      CDSLiqCabID_CTA_BANCO.Value      :=DMMain_FD.QTCreditoID_CUENTA_BANCO.Value;
      CDSLiqCabNOMBRE_CTABCO.Value     :=DMMain_FD.QTCreditoMUESTRACTABCO.Value;
      CDSLiqCabCUIT.Value              :=DMMain_FD.QTCreditoCUIT.Value;
      CDSLiqCabRAZONSOCIAL.Value       :=DMMain_FD.QTCreditoRAZONSOCIAL.Value;
      DatosLiquidacionTC.CDSLotes.Close;
      DatosLiquidacionTC.CDSLotes.Params.ParamByName('id').Value:=dato;
      DatosLiquidacionTC.CDSLotes.Open;
      DatosLiquidacionTC.CDSTerminales.Close;
      DatosLiquidacionTC.CDSTerminales.Params.ParamByName('id').Value:=dato;
      DatosLiquidacionTC.CDSTerminales.Open;
      if CDSLiqCabID_CTA_BANCO.AsString='' Then
        begin
          Result:=False;
          CDSLiqCabMUESTRATARJETA.Clear;
          CDSLiqCabID_CTA_BANCO.Clear;
          CDSLiqCabNOMBRE_CTABCO.Clear;
          ShowMessage('La tarjeta no tiene asignada ninguna cta bancaria... Verifique en las propiedades de la misma y completelo....');
        end;
    end
  else
    begin
      Result:=False;
      CDSLiqCabMUESTRATARJETA.Clear;
      CDSLiqCabID_CTA_BANCO.Clear;
      CDSLiqCabNOMBRE_CTABCO.Clear;
      CDSLiqCabCUIT.Clear;
      CDSLiqCabRAZONSOCIAL.Clear
    end;
  DMMain_FD.QTCredito.Close;
end;

procedure TFormLiquidacionTC.CDSLiqCabSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('0000',1,Sender.Size-Length(Text))+Text;
  CDSLiqCabNUMEROCPBTE.AsString:=CDSLiqCabLETRA.AsString+CDSLiqCabSUC.AsString+CDSLiqCabNUMERO.AsString;
end;

procedure TFormLiquidacionTC.CDSLiqCabSUCURSALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>#13) and (Text<>'') then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) then
        begin
          ShowMessage('dato no valido...');
          Sender.Clear;
        end;
    end;
end;

procedure TFormLiquidacionTC.CDSLiqCabTOTAL_PRESENTACIONSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqCabNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSLiqCabNUMEROCPBTE.AsString:=CDSLiqCabLETRA.AsString+CDSLiqCabSUC.AsString+CDSLiqCabNUMERO.AsString;
end;

procedure TFormLiquidacionTC.CDSLiqCabPRESENTACION_ADICIONALSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormLiquidacionTC.BuscarMovTCExecute(Sender: TObject);
var id_tc:Integer;
begin
  inherited;
  edTotal.Value:= 0;
  if ( dbcTarjeta.Text<>'' ) then
    begin
      Limpiar;
      id_tc:= StrToInt(dbcTarjeta.Text);
      if chTodosLosMovTC.Checked then
        id_tc:=-1;
      DatosLiquidacionTC.CDSMovTc.Close;
      DatosLiquidacionTC.CDSMovTc.IndexFieldNames:='';
      DatosLiquidacionTC.CDSMovTc.IndexDefs.Clear;

      DatosLiquidacionTC.CDSMovTc.Params.ParamByName('id_tc').Value    := id_tc;
      DatosLiquidacionTC.CDSMovTc.Params.ParamByName('Lote').Value     := CDSLiqCabNRO_LOTE.Value;
      DatosLiquidacionTC.CDSMovTc.Params.ParamByName('Terminal').Value := CDSLiqCabNRO_TERMINAL.Value;
      DatosLiquidacionTC.CDSMovTc.Params.ParamByName('desde').Value    := Desde.Date;
      DatosLiquidacionTC.CDSMovTc.Params.ParamByName('hasta').Value    := hasta.date;
      DatosLiquidacionTC.CDSMovTc.Open;
      DatosLiquidacionTC.CDSMovTc.IndexFieldNames:='Fecha';

      edTotal.Value:= 0;
      DatosLiquidacionTC.CDSMovTC.First;
      DatosLiquidacionTC.CDSMovTC.DisableControls;
      while not(DatosLiquidacionTC.CDSMovTC.Eof) do
        begin
          edTotal.Value:= edTotal.Value+DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.Value;
          DatosLiquidacionTC.CDSMovTC.Next;
        end;
      DatosLiquidacionTC.CDSMovTC.First;
      DatosLiquidacionTC.CDSMovTC.EnableControls;
    end;

end;

procedure TFormLiquidacionTC.BuscarRetencionExecute(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscadorTRet.Close;
  DatosLiquidacionTC.CDSBuscadorTRet.Open;
  comBuscadorRetenciones.Execute;
  if ComBuscadorRetenciones.rOk then
    CDSRetencionesID_RETENCIONSetText(CDSRetencionesID_RETENCION, IntToStr(comBuscadorRetenciones.Id));
  DatosLiquidacionTC.CDSBuscadorTRet.Close;
end;

procedure TFormLiquidacionTC.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
      CDSLiqCabSUCURSALSetText(CDSLiqCabSucursal, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormLiquidacionTC.BuscarTCExecute(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscadorTC.Close;
  DatosLiquidacionTC.CDSBuscadorTC.Open;
  ComBuscadorTarjetas.Execute;
  if ComBuscadorTarjetas.rOk Then
      begin
        CDSLiqCabID_TCSetText(CDSLiqCabID_TC,IntToStr(ComBuscadorTarjetas.Id));
      end;
  DatosLiquidacionTC.CDSBuscadorTC.Close;
end;

procedure TFormLiquidacionTC.CDSLiqCabID_CTA_BANCOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignaCta(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Válido....');
        end;
    end;

end;

procedure TFormLiquidacionTC.CDSLiqCabID_TCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Limpiar;
      Sender.AsString:=Text;
      if Not(AsignarTC(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Válido....');
        end
      else
        BuscarMovTC.Execute;
    end;
end;

procedure TFormLiquidacionTC.CDSLiqCabIMPORTES_EXENTOSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormLiquidacionTC.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=1;
  AutoSize:=False;
  IF NOT (Assigned(DatosLiquidacionTC)) THEN
    DatosLiquidacionTC := TDatosLiquidacionTC.Create(Self);
  DSBase.DataSet:=CDSLiqCab;

  if Not(Assigned(FormMovTarjetaCredito)) then
    FormMovTarjetaCredito:=TFormMovTarjetaCredito.Create(Self);

  AddClientDataSet(CDSLiqCab,DSPLiqCab);
  AddClientDataSet(CDSLiqDet,DSPLiqDet);
  AddClientDataSet(CDSLiq_Iva,DSPLiq_Iva);
  AddClientDataSet(CDSLiq_IIBB,DSPLiq_IIBB);
  AddClientDataSet(CDSLiq_PerIVA,DSPLiq_PerIVA);
  AddClientDataSet(CDSRetenciones,DSPRetenciones);
  CDSLiqCab.Open;
  CDSLiqDet.Open;
  CDSLiq_Iva.Open;
  CDSLiq_IIBB.Open;
  CDSLiq_PerIVA.Open;
  DatosLiquidacionTC.CDSMovTC.Open;
  CDSRetenciones.Open;
  pnTotales.BevelInner:=bvNone;
  pnTotales.BevelOuter:=bvNone;
  Tabla:='Liquidacion_TC_cab';
  Campo:='id';
  lbDepositada.Visible:=False;
  pcDeduciones.ActivePageIndex:=0;

end;

procedure TFormLiquidacionTC.CDSLiqCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLiqCabID.Value                       := IBGLiqCab.IncrementFD(1);
  CDSLiqCabFECHA.AsDateTime               := Date;
  CDSLiqCabFECHA_FISCAL.AsDateTime        := Date;
  CDSLiqCabTIPOCPBTE.Value                := 'LQ';
  CDSLiqCabCLASECPBTE.Value               := 'LQ';
  CDSLiqCabLETRA.Value                    := 'X';
  CDSLiqCabSUC.Value                      := '0000';
  CDSLiqCabTOTAL_PRESENTACION.AsFloat     := 0;
  CDSLiqCabARANCEL.AsFloat                := 0;
  CDSLiqCabCOSTO_FINANCIERO.AsFloat       := 0;
  CDSLiqCabGANANCIAS.AsFloat              := 0;
  CDSLiqCabIVA.AsFloat                    := 0;
  CDSLiqCabIIBB.AsFloat                   := 0;
  CDSLiqCabTOTAL_ACREDITADO.AsFloat       := 0;
  CDSLiqCabING_LIBROIVA.Value             :='S';
  CDSLiqCabCONTABILIZA.Value              :='S';
  CDSLiqCabINGRESAR_RESUMENBANCARIO.Value :='S';
  CDSLiqCabPRESENTACION_ADICIONAL.AsFloat := 0;
  CDSLiqCabIMPORTES_EXENTOS.AsFloat       := 0;

  CDSLiqCabNRO_LOTESetText(CDSLiqCabNRO_LOTE,'0');
  CDSLiqCabNRO_LIQUIDACIONSetText(CDSLiqCabNRO_LIQUIDACION,'0');
  CDSLiqCabNRO_TERMINALSetText(CDSLiqCabNRO_TERMINAL,'0');

  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSLiqCabNUMEROSetText(CDSLiqCabNUMERO,'1')
  else
    CDSLiqCabNUMEROSetText(CDSLiqCabNUMERO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1));
  QUltimoCodigo2.Close;
  CDSLiqCabSUCURSALSetText(CDSLiqCabSUCURSAL,IntToStr(SucursalPorDefecto));
end;

procedure TFormLiquidacionTC.CDSLiqCabNRO_LIQUIDACIONSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
end;

procedure TFormLiquidacionTC.CDSLiqCabNRO_LOTESetText(Sender: TField;
  const Text: string);
begin
 // inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  BuscarMovTC.Execute;
end;

procedure TFormLiquidacionTC.CDSLiqCabNRO_TERMINALSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
end;

procedure TFormLiquidacionTC.CDSLiq_IvaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiq_IvaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (CDSLiq_IvaCODIGO_GRAVAMEN.AsString='') or (CDSLiq_IvaNETO.AsFloat<0) then
    CDSLiq_Iva.Cancel;
  end;

procedure TFormLiquidacionTC.CDSLiq_IvaCODIGO_GRAVAMENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
   if (Text<>#13) and (Text<>'') Then
    begin
      if CDSLiq_Iva.State =dsbrowse Then CDSLiq_Iva.Edit;
      Sender.AsString:=Text;
      if Not(AsignaIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;

end;

procedure TFormLiquidacionTC.CDSLiq_IIBBAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiq_IIBBCODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSLiq_IIBB.State =dsbrowse Then CDSLiq_IIBB.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIB(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TFormLiquidacionTC.CDSLiq_IvaNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSLiq_IvaCODIGO_GRAVAMEN.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSLiq_IvaIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSLiq_IvaTASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.CDSLiq_IIBBNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSLiq_IIBBCODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSLiq_IIBBIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSLiq_IIBBTASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.dbFechaFiscalExit(Sender: TObject);
begin
  inherited;
  dbFechaFiscal.Color:=clWhite;
  CDSLiqCabFECHA_FISCALSetText(CDSLiqCabFECHA_FISCAL,DateToStr( dbFechaFiscal.Date));
end;

procedure TFormLiquidacionTC.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
  if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormLiquidacionTC.dbgIvaEditButtonClick(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscaIVA.Close;
  DatosLiquidacionTC.CDSBuscaIva.Open;
  comBuscadorIva.Execute;
  if comBuscadorIva.rOk Then
      CDSLiq_IvaCODIGO_GRAVAMENSetText(CDSLiq_IvaCODIGO_GRAVAMEN,IntToStr(ComBuscadorIva.Id));
  DatosLiquidacionTC.CDSBuscaIva.Close;

end;

procedure TFormLiquidacionTC.dbgIvaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormLiquidacionTC.dbgIvaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgIva.SelectedIndex<4 Then
      dbgIva.SelectedIndex:= dbgIva.SelectedIndex+1;
end;

procedure TFormLiquidacionTC.dbgPercepcionIBColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIB.SelectedIndex=1) or (dbgPercepcionIB.SelectedIndex=2) Then
    dbgPercepcionIB.SelectedIndex:=3;
end;

procedure TFormLiquidacionTC.dbgPercepcionIBEditButtonClick(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscaPercepIIBB.Close;
  DatosLiquidacionTC.CDSBuscaPercepIIBB.Open;
  comBuscadorPercepcionIB.Execute;
  if comBuscadorPercepcionIB.rOk Then
    CDSLiq_IIBBCODIGO_PERCEPCIONSetText(CDSLiq_IIBBCODIGO_PERCEPCION,IntToStr(comBuscadorPercepcionIB.id));
  DatosLiquidacionTC.CDSBuscaPercepIIBB.Close;
end;

procedure TFormLiquidacionTC.dbgPercepcionIBKeyDown(Sender: TObject;
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

procedure TFormLiquidacionTC.dbgPercepcionIBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if Key=#13 Then
    if dbgPercepcionIB.SelectedIndex<4 Then
      dbgPercepcionIB.SelectedIndex:= dbgPercepcionIB.SelectedIndex+1;
end;

procedure TFormLiquidacionTC.dbgPercepcionIVAColEnter(Sender: TObject);
begin
  inherited;
 if (dbgPercepcionIVA.SelectedIndex=1) or (dbgPercepcionIVA.SelectedIndex=2) Then
    dbgPercepcionIVA.SelectedIndex:=3;
end;

procedure TFormLiquidacionTC.dbgPercepcionIVAEditButtonClick(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscaPercepIVA.Close;
  DatosLiquidacionTC.CDSBuscaPercepIVA.Open;
  comBuscadorPercepcionIva.Execute;
  if comBuscadorPercepcionIva.rOk Then
    CDSLiq_PerIVACODIGO_PERCEPCIONSetText(CDSLiq_PerIVACODIGO_PERCEPCION,IntToStr(comBuscadorPercepcionIva.Id));
  DatosLiquidacionTC.CDSBuscaPercepIVA.Close;

end;

procedure TFormLiquidacionTC.dbgPercepcionIVAKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
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

procedure TFormLiquidacionTC.dbgPercepcionIVAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if Key=#13 Then
    if dbgPercepcionIVA.SelectedIndex<4 Then
      dbgPercepcionIVA.SelectedIndex:= dbgPercepcionIVA.SelectedIndex+1;

end;

procedure TFormLiquidacionTC.dbgRetencionesCellClick(Column: TColumn);
begin
  inherited;
 if (dbgretenciones.SelectedIndex=1) and (dbgretenciones.DataSource.DataSet.Active=True) then
    begin
      if dbgretenciones.DataSource.State=dsBrowse Then
        dbgretenciones.DataSource.Edit;

      CDSTRetencion.Close;
      CDSTRetencion.Params.ParamByName('Id').Value := CDSRetencionesID_RETENCION.Value;
      CDSTRetencion.Open;

      DatosLiquidacionTC.CDSRegimen.Close;
      IF NOT (CDSTRetencion.IsEmpty) THEN
        BEGIN
          dbgRetenciones.Columns[1].PickList.Clear;
          if CDSTRetencionTIPO.Value=1 Then // Retencion Iva
            begin
              DatosLiquidacionTC.CDSRegimen.CommandText:= 'select * from REGIMENRETENCIONIVA ';
              DatosLiquidacionTC.CDSRegimen.Open;
              DatosLiquidacionTC.CDSRegimen.First;
              while Not(DatosLiquidacionTC.CDSRegimen.Eof) do
                begin
                  dbgRetenciones.Columns[1].PickList.Add(DatosLiquidacionTC.CDSRegimen.FieldByName('codigo').AsString);
                  DatosLiquidacionTC.CDSRegimen.Next;
                end;
            end
          else
            if CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
              begin
                DatosLiquidacionTC.CDSJuridicion.CommandText:= 'select * from juridiccion ';
                DatosLiquidacionTC.CDSJuridicion.Open;
                DatosLiquidacionTC.CDSJuridicion.First;
                while Not(DatosLiquidacionTC.CDSJuridicion.Eof) do
                  begin
                    dbgRetenciones.Columns[1].PickList.Add(DatosLiquidacionTC.CDSJuridicion.FieldByName('codigo').AsString);
                    DatosLiquidacionTC.CDSJuridicion.Next;
                  end;
              end;
          CDSRetencionesDETALLE.Value := CDSTRetencionDETALLE.Value;
          //FormRecibo_2.wwdbgretenciones.RedrawGrid;
        END;

      DatosLiquidacionTC.CDSJuridicion.Close;
    end;
end;

procedure TFormLiquidacionTC.dbgRetencionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (dbgRetenciones.SelectedIndex < 5) THEN
        dbgRetenciones.SelectedIndex := dbgRetenciones.SelectedIndex + 1
      ELSE
        BEGIN
          IF (dbgRetenciones.DataSource.DataSet.Eof) and (Not(DSBase.State in [dsBrowse])) THEN
            dbgRetenciones.DataSource.DataSet.Append;
          dbgRetenciones.SelectedIndex :=0;
        END;
    END
  else
    IF (Key = #10) AND (dbgretenciones.SelectedIndex = 0) THEN
      BEGIN
        Key := #0;
        BuscarRetencion.Execute;
      END;

end;

procedure TFormLiquidacionTC.DesdeAcceptDate(Sender: TObject;
  var ADate: TDateTime; var Action: Boolean);
begin
  inherited;
  Desde.Date:= ADate;
  BuscarMovTC.Execute;
  // (btNext, btPrev);
end;

procedure TFormLiquidacionTC.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled            := True;
  pnDetalle.Enabled              := True;
  pnCabecera.Enabled             := DSBase.State <>dsbrowse;
  CambiarFechaCta.Enabled        := (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  dbgIva.ReadOnly                := DSBase.State=dsBrowse;
  dbgPercepcionIB.ReadOnly       := DSBase.State=dsBrowse;
  dbgLiqDet.ReadOnly             := DSBase.State=dsBrowse;
  dbgretenciones.ReadOnly        := DSBase.State=dsBrowse;
  lbDepositada.Visible           := DSBase.DataSet.FieldByName('MuestraDepositado').Value>0;
  LeerLiquidacion.Enabled        := (DSBase.State<>dsBrowse);// and (dbgMovTc.DataSource.DataSet.RecordCount>0);
  AsignarEntidadPagadora.Enabled := (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
  IngresarResumenBco.Enabled     := (DSBase.State=dsBrowse) and (not(DSBase.DataSet.IsEmpty));
end;

procedure TFormLiquidacionTC.CDSLiq_IvaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLiq_IvaID_IMPUESTO.Value   := DatosLiquidacionTC.IBGIVA.IncrementFD(1);
  CDSLiq_IvaID_LIQ.Value        := CDSLiqCabID.Value;
  CDSLiq_IvaTASA.AsFloat        := 0;
  CDSLiq_IvaNETO.AsFloat        := 0;
  CDSLiq_IvaIMPORTE.AsFloat     := 0;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVAAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVABeforePost(DataSet: TDataSet);
begin
  inherited;
 if (CDSLiq_PerIVACODIGO_PERCEPCION.AsString='') or (CDSLiq_PerIVANETO.AsFloat<0) then
    CDSLiq_PerIVA.Cancel;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVACODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSLiq_PerIVA.State =dsbrowse Then CDSLiq_PerIVA.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    end;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVAIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Trim(CDSLiq_PerIVACODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSLiq_PerIVATASA.AsFloat>0 then
        CDSLiq_PerIVANETO.AsFloat:=Sender.AsFloat*(100/CDSLiq_PerIVATASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVANETOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Trim(CDSLiq_PerIVACODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSLiq_PerIVAIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSLiq_PerIVATASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.CDSLiq_PerIVANewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLiq_PerIVAID_PERCEPCION.Value := DatosLiquidacionTC.IBGIIBB.IncrementFD(1);
  CDSLiq_PerIVAID_LIQ.Value        := CDSLiqCabID.Value;
  CDSLiq_PerIVATASA.AsFloat        := 0;
  CDSLiq_PerIVANETO.AsFloat        := 0;
  CDSLiq_PerIVAIMPORTE.AsFloat     := 0;
end;

procedure TFormLiquidacionTC.CDSLiq_IIBBNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLiq_IIBBID_PERCEPCION.Value := DatosLiquidacionTC.IBGIIBB.IncrementFD(1);
  CDSLiq_IIBBID_LIQ.Value        := CDSLiqCabID.Value;
  CDSLiq_IIBBTASA.AsFloat        := 0;
  CDSLiq_IIBBNETO.AsFloat        := 0;
  CDSLiq_IIBBIMPORTE.AsFloat     := 0;

end;

procedure TFormLiquidacionTC.dbgLiqDetDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF (Source = dbgMovTC) and (DatosLiquidacionTC.CDSMovTCACREDITADA.Value='N') THEN
    accept := True
  ELSE
    begin
      Accept := False;
  //    ShowMessage('operacion no valida...');
    end;
end;

procedure TFormLiquidacionTC.dbgLiqDetEnter(Sender: TObject);
begin
  inherited;
IF dbgLiqDet.SelectedIndex <> 3 THEN
    dbgLiqDet.SelectedIndex := 3;
end;

procedure TFormLiquidacionTC.dbgLiqDetKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (key=VK_DOWN) and (dbgLiqDet.DataSource.DataSet.RecNo=dbgLiqDet.DataSource.DataSet.RecordCount) then
    Key:=0;
end;

procedure TFormLiquidacionTC.dbgLiqDetColEnter(Sender: TObject);
begin
  inherited;
 IF dbgLiqDet.SelectedIndex <> 3 THEN
    dbgLiqDet.SelectedIndex := 3;
end;

procedure TFormLiquidacionTC.dbgLiqDetDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  WITH (Source AS TJvDBGrid).DataSource.DataSet DO
    BEGIN
      if Not(CDSLiqDet.Locate('ID_MOV_TCREDITO',FieldByName('Id_Mov_Tc').AsString,[])) then
        begin
          if FieldByName('Acreditada').Value='N' Then
            begin
              CDSLiqDet.Insert;
              CDSLiqDetID_MOV_TCREDITO.Value := FieldByName('Id_Mov_Tc').Value;
              CDSLiqDetIMPORTE.AsFloat       := FieldByName('SAldo_Importe').AsFloat;
              CDSLiqDetFECHA_MOV.AsDateTime  := FieldByName('Fecha').AsDAteTime;
              if FieldByName('Nro_Cupon').AsString<>'' Then
                CDSLiqDetNRO_CUPON.Value     := FieldByName('Nro_Cupon').Value
              ELSE
                CDSLiqDetNRO_CUPON.Value     := 0;
              CDSLiqDetCUOTAS.Value          := FieldByName('Can_Cuotas').Value;
              CDSLiqDet.Post;
            END;
        end
      ELSE
        begin
          ShowMessage('Ya esta acreditada... Verifique!!!');
//          sysutils.abort;
        end;
    END;
end;

procedure TFormLiquidacionTC.CDSLiqDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSLiqDetID.Value       :=IBGLiqDet.IncrementFD(1);
  CDSLiqDetID_LIQCAB.Value:=CDSLiqCabID.Value;
end;

procedure TFormLiquidacionTC.CDSLiqDetAfterPost(DataSet: TDataSet);
begin
  inherited;
   IF DatosLiquidacionTC.CDSMovTc.Locate('Id_Mov_Tc',CDSLiqDetID_MOV_TCREDITO.Value, []) THEN
    BEGIN
       DatosLiquidacionTC.CDSMovTC.Edit;
       DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat :=DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat- CDSLiqDetIMPORTE.AsFloat;
       if Trunc(DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat*100)<=0 then
        begin
          DatosLiquidacionTC.CDSMovTCACREDITADA.Value        :='S';
          DatosLiquidacionTC.CDSMovTCFECHA_ACREDITACION.Value:=CDSLiqCabFECHA.Value;
        end;
        DatosLiquidacionTC.CDSMovTC.Post;
    END;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqDetAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqDetAfterOpen(DataSet: TDataSet);
begin
  inherited;
  dbgLiqDet.SelectedIndex:= 3;
end;

procedure TFormLiquidacionTC.CDSLiqDetIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
////  IF DatosLiquidacionTC.CDSMovTc.Locate('Id_Mov_Tc',CDSLiqDetID_MOV_TCREDITO.Value, []) THEN
////    begin
////      if Sender.AsFloat>DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.ASFLoat  then
////        Sender.AsFloat:=DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.ASFLoat;
////      DatosLiquidacionTC.CDSMovTC.Edit;
////      DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat := DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat-Sender.AsFloat;
////      DatosLiquidacionTC.CDSMovTC.Post;
////    end;
////  if CDSLiqDet.State<>dsBrowse then
  CDSLiqDet.Post;
 // Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IF DatosLiquidacionTC.CDSMovTc.Locate('Id_Mov_Tc',CDSLiqDetID_MOV_TCREDITO.Value, []) THEN
    BEGIN
      DatosLiquidacionTC.CDSMovTC.Edit;
      DatosLiquidacionTC.CDSMovTCACREDITADA.Value:='N';
      DatosLiquidacionTC.CDSMovTCFECHA_ACREDITACION.Clear;
      DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat := DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE_ORIGINAL.AsFloat;
      DatosLiquidacionTC.CDSMovTC.Post;
    END;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqDetBeforeEdit(DataSet: TDataSet);
begin
  inherited;
  IF DatosLiquidacionTC.CDSMovTc.Locate('Id_Mov_Tc',CDSLiqDetID_MOV_TCREDITO.Value, []) THEN
    BEGIN
      DatosLiquidacionTC.CDSMovTC.Edit;
      DatosLiquidacionTC.CDSMovTCACREDITADA.Value:='N';
      DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE.AsFloat:=DatosLiquidacionTC.CDSMovTCSALDO_IMPORTE_ORIGINAL.AsFloat;
      DatosLiquidacionTC.CDSMovTC.Post;
    END;

end;

procedure TFormLiquidacionTC.dbgMovTcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  IF DatosLiquidacionTC.CDSMovTC.FieldByName('Acreditada').Value = 'S' THEN
    dbgMovTc.Canvas.Font.Style := [fsStrikeout]
  ELSE
    dbgMovTc.Canvas.Font.Style := [];

  dbgMovTc.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormLiquidacionTC.dbgMovTcMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  lbX.Caption:='X:'+InttoStr(x);
  lbY.Caption:='Y:'+IntToStr(y);

  if ((y>16) and (x>69)) then
    dbgMovTc.DragMode:=dmAutomatic
  else
    dbgMovTc.DragMode:=dmManual;  
end;

procedure TFormLiquidacionTC.dbgMovTcTitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
var campos:String;
begin
  inherited;
  try
    Campo := Field.FieldName;
    with dbgMovTc.DataSource.DataSet as TClientDataSet do
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

procedure TFormLiquidacionTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSLiqCab.Close;
  CDSLiqDet.Close;
  CDSLiq_IIBB.Close;
  CDSLiq_Iva.Close;
  CDSLiq_PerIVA.Close;
  Action:=caFree;

end;

procedure TFormLiquidacionTC.CDSLiqCabARANCELSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiqCabCOSTO_FINANCIEROSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormLiquidacionTC.CDSLiqCabFECHA_FISCALChange(Sender: TField);
begin
  inherited;
  if (CDSLiqCab.State in [dsInsert]) and (CDSRetenciones.Active=True)  and (Not(CDSRetenciones.IsEmpty)) then
    begin
      CDSRetenciones.First;
      while Not(CDSRetenciones.Eof) do
        begin
          CDSRetenciones.Edit;
          CDSRetencionesFECHA_RETENCION.Value:=CDSLiqCabFECHA_FISCAL.Value;
          CDSRetenciones.Next;
        end;
    end;
end;

procedure TFormLiquidacionTC.CDSLiqCabFECHA_FISCALSetText(Sender: TField;
  const Text: string);
var d,m,y:word;
BEGIN
  Sender.AsString := Text;
  if sender.AsString<>'' Then
    if CDSLiqCab.State In [dsInsert,dsEdit] Then
      begin
        Sender.AsString := Text;
        DecodeDate(Sender.AsDateTime,y,m,d);
        begin
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
          DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := Sender.AsDateTime;
          DMStoreProcedure.QVerificaPeriodoFiscal.Open;
          if (Sender.AsDateTime>Date) Then
            begin
              ShowMessage('Fecha fuera de rango');
              CDSLiqCabFECHA_FISCAL.Clear;
              Sender.Clear;
              dbFechaFiscal.SetFocus;
            end
          else
            if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
              begin
                ShowMessage('Fecha no Valida, este período fiscal no esta permitido');
                CDSLiqCabFECHA_FISCAL.Clear;
                Sender.Clear;
                dbFechaFiscal.SetFocus;
              end
            else
              CDSLiqCabFECHA_FISCAL.AsDateTime:=Sender.AsDateTime ;
          DMStoreProcedure.QVerificaPeriodoFiscal.Close;
        end;
      end;
end;

procedure TFormLiquidacionTC.CDSLiqCabGANANCIASSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSLiq_IvaIMPORTESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSLiq_IvaCODIGO_GRAVAMEN.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSLiq_IvaTASA.AsFloat>0 then
        CDSLiq_IvaNETO.AsFloat := Sender.AsFloat*(100/CDSLiq_IvaTASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.CDSLiq_IIBBIMPORTESetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSLiq_IIBBCODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSLiq_IIBBTASA.AsFloat>0 then
        CDSLiq_IIBBNETO.AsFloat:=Sender.AsFloat*(100/CDSLiq_IIBBTASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormLiquidacionTC.CancelarExecute(Sender: TObject);
begin
  DatosLiquidacionTC.CDSMovTC.Close;
  DatosLiquidacionTC.CDSMovTC.IndexName:='';
  DatosLiquidacionTC.CDSMovTC.IndexDefs.Clear;
  DatosLiquidacionTC.CDSMovTC.Params.ParamByName('id_TC').Clear;
  DatosLiquidacionTC.CDSMovTC.Open;

  CDSLiqCab.Close;
  CDSLiqCab.Params.ParamByName('id').Clear;
  CDSLiqCab.Open;

  CDSLiqDet.Close;
  CDSLiqDet.Params.ParamByName('id').Clear;
  CDSLiqDet.Open;

  CDSLiq_IIBB.Close;
  CDSLiq_IIBB.Params.ParamByName('id').Clear;
  CDSLiq_IIBB.Open;

  CDSLiq_Iva.Close;
  CDSLiq_Iva.Params.ParamByName('id').Clear;
  CDSLiq_Iva.Open;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Clear;
  CDSRetenciones.Open;
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormLiquidacionTC.ConfirmaExecute(Sender: TObject);
var d,m,y:Word;
begin
   if ( DateToStr(CDSLiqCabFECHA_FISCAL.AsDateTime)='' ) then
     raise Exception.Create('Fecha Fiscal Vacia....');

   DecodeDate(CDSLiqCabFECHA_FISCAL.AsDateTime,y,m,d);
   DMStoreProcedure.QVerificaPeriodoFiscal.Close;
   DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
   DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := CDSLiqCabFECHA_FISCAL.AsDateTime;
   DMStoreProcedure.QVerificaPeriodoFiscal.Open;
   if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
     raise Exception.Create('Fecha no Valida, este período fiscal no esta permitido');
   DMStoreProcedure.QVerificaPeriodoFiscal.Close;

  if CDSLiqCab.State in [dsInsert,dsEdit] Then
    CDSLiqCab.Post;
  if CDSLiqDet.State in [dsInsert,dsEdit] Then
    CDSLiqDet.Post;
  if CDSLiq_Iva.State in [dsInsert,dsEdit] Then
    CDSLiq_Iva.Post;
  if CDSLiq_PerIVA.State in [dsInsert,dsEdit] Then
    CDSLiq_PerIVA.Post;

  if CDSLiq_IIBB.State in [dsInsert,dsEdit] Then
    CDSLiq_IIBB.Post;
  if DatosLiquidacionTC.CDSMovTC.State in [dsInsert,dsEdit] Then
    DatosLiquidacionTC.CDSMovTC.Post;
  if CDSRetenciones.State in [dsInsert,dsedit] then
    CDSRetenciones.Post;

  DatoNew:=CDSLiqCabID.AsString;
//  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    if CDSLiqCab.ApplyUpdates(0)=0 Then
      if CDSLiqDet.ApplyUpdates(0)=0 Then
        if CDSLiq_Iva.ApplyUpdates(0)=0 Then
          if CDSLiq_IIBB.ApplyUpdates(0)=0 Then
            if CDSLiq_PerIVA.ApplyUpdates(0)=0 Then
              if CDSRetenciones.ApplyUpdates(0)=0Then
                if CDSLiqCabINGRESAR_RESUMENBANCARIO.Value='S' then
                  begin
                    DatosLiquidacionTC.spIngresaMovBco.Close;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('id_cuenta_banco').Value := CDSLiqCabID_CTA_BANCO.Value;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('id_liquidacion').Value  := CDSLiqCabID.Value;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('fecha').Value           := CDSLiqCabFECHA.AsDateTime;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('importe').Value         := CDSLiqCabTOTAL_ACREDITADO.AsFloat;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('nro_liquidacion').Value := CDSLiqCabNUMEROCPBTE.Value;
                    DatosLiquidacionTC.spIngresaMovBco.ParamByName('detalle').Value         := CDSLiqCabMUESTRATARJETA.Value+'-'+CDSLiqCabNUMEROCPBTE.Value;
                    DatosLiquidacionTC.spIngresaMovBco.ExecProc;
                  end;
    DMMain_FD.fdcGestion.Commit;
    DatosLiquidacionTC.spIngresaMovBco.Close;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se ingreso Movimiento en el Banco...');
  end;
  Recuperar.Execute;
  btNuevo.SetFocus;
end;

procedure TFormLiquidacionTC.RecuperarExecute(Sender: TObject);
var y,m,d:word;
begin
  inherited;
  DatosLiquidacionTC.CDSMovTC.Close;
  DatosLiquidacionTC.CDSMovTC.Params.ParamByName('id_TC').Clear;
  DatosLiquidacionTC.CDSMovTC.Params.ParamByName('Lote').Clear;
  DatosLiquidacionTC.CDSMovTC.Params.ParamByName('Terminal').Clear;
  DatosLiquidacionTC.CDSMovTC.Open;

  CDSLiqCab.Close;
  CDSLiqCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLiqCab.Open;

  CDSLiqDet.Close;
  CDSLiqDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLiqDet.Open;

  CDSLiq_IIBB.Close;
  CDSLiq_IIBB.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLiq_IIBB.Open;

  CDSLiq_Iva.Close;
  CDSLiq_Iva.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSLiq_Iva.Open;

  sbEstado.SimpleText      :='';

  dbgLiqDet.ReadOnly       :=True;
  dbgIva.ReadOnly          :=True;
  dbgPercepcionIB.ReadOnly :=True;
  dbgretenciones.ReadOnly  :=True;


  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DecodeDate(CDSLiqCabFECHA_FISCAL.AsDateTime,y,m,d);
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := CDSLiqCabFECHA_FISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if  DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.SimpleText      :='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        Borrar.Enabled           :=False;
        Modificar.Enabled        :=false;
        dbgLiqDet.ReadOnly       :=True;
        dbgIva.ReadOnly          :=True;
        dbgPercepcionIB.ReadOnly :=True;
        dbgretenciones.ReadOnly  :=True;
      end;
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  end;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Value  :=StrToInt(DatoNew);
  CDSRetenciones.Params.ParamByName('tipo').Value:=CDSLiqCabTIPOCPBTE.AsString;
  CDSRetenciones.Open;

  SumaRetenciones := 0;
  CDSRetenciones.DisableControls;
  CDSRetenciones.First;
  WHILE NOT (CDSRetenciones.Eof) DO
    BEGIN
      SumaRetenciones := SumaRetenciones + CDSRetencionesIMPORTE.AsFloat;
      CDSRetenciones.Next;
    END;
  CDSRetenciones.EnableControls;
  ceTotalRetenciones.Text :=FormatFloat('0.00', SumaRetenciones);
  pnDetalle.Enabled:=True;

  lbDepositada.Visible     := DSBase.DataSet.FieldByName('MuestraDepositado').Value>0;

end;

procedure TFormLiquidacionTC.RxCSucursalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSLiqCabSUCURSAL.Clear;
      CDSLiqCabMUESTRASUCURSAL.Clear;
    end;
end;

procedure TFormLiquidacionTC.UpDown1Click(Sender: TObject; Button: TUDBtnType);
var d,m,y:word;
begin
  DecodeDate(Desde.Date,y,m,d);
  if Button=btnext Then
    if m=12 Then
      begin
        m:=1;y:=y+1;
      end
    else
      m:=m+1
  else
    if Button=btPrev Then
      if m=1 Then
        begin
          m:=12;y:=y-1;
        end
      else
        m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  BuscarMovTC.Execute;
end;

procedure TFormLiquidacionTC.VerCuponTCExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormMuestraCuponTarjeta)) then
    FormMuestraCuponTarjeta:=TFormMuestraCuponTarjeta.Create(Self);
  FormMuestraCuponTarjeta.Id_Mov:=DatosLiquidacionTC.CDSMovTCID_MOV_TC.AsInteger;
  FormMuestraCuponTarjeta.showModal;
  FreeAndNil(FormMuestraCuponTarjeta);
  BuscarMovTC.Execute;
end;

procedure TFormLiquidacionTC.CDSRetencionesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormLiquidacionTC.CDSRetencionesAfterPost(DataSet: TDataSet);
begin
  inherited;
  Calcular;
  //calcularRetenciones;
end;

procedure TFormLiquidacionTC.CDSRetencionesBeforePost(DataSet: TDataSet);
begin
  inherited;
 if (CDSRetencionesIMPORTE.AsFloat <= 0) or (CDSRetencionesIMPORTE.AsString='') Then
    begin
      SysUtils.Abort;
      CDSRetenciones.Cancel;
      ShowMessage('La Retención no puede tener valor cero');
    end;
end;

procedure TFormLiquidacionTC.CDSRetencionesFECHA_RETENCIONSetText(
  Sender: TField; const Text: string);
VAR MesRet,AnioRet,MesRec,AnioRec,dia:word;
begin
  Sender.AsString:=Text;
  if Text<>'' Then
    begin
      DecodeDate(CDSLiqCabFECHA.AsDateTime,AnioRec,MesRec,dia);
      DecodeDate(Sender.AsDateTime,AnioRet,MesRet,dia);
      if Not((MesRet=MesRec) and (AnioRet=AnioRec)) Then
        begin
          //Sender.Clear;
          ShowMessage('El mes o el año de la retención difiere con la Liquidación ....')
        end
    end;
end;

procedure TFormLiquidacionTC.CDSRetencionesID_RETENCIONSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  IF CDSRetenciones.State = dsBrowse THEN
    CDSRetenciones.Edit;
  Sender.AsString := Text;
  IF NOT (AsignarRetencion(Sender.AsInteger)) THEN
    BEGIN
      ShowMessage('Codigo no válido');
      Sender.AsString := '';
    END;
end;

procedure TFormLiquidacionTC.CDSRetencionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRetencionesID_MOV_RETENCIONES.Value  := DatosLiquidacionTC.IBGId_Retenciones.IncrementFD(1);
  CDSRetencionesID_CPBTE.Value           := CDSLiqCabID.Value;
  CDSRetencionesTIPOCPBTE.Value          := CDSLiqCabTIPOCPBTE.Value;
  CDSRetencionesCLASECPBTE.Value         := CDSLiqCabCLASECPBTE.Value;
  CDSRetencionesNROCPBTE.Value           := CDSLiqCabNUMEROCPBTE.Value;
  CDSRetencionesCODIGO_CLIENTE.AsString  := CDSLiqCabID_TC.AsString;
  // aca va la entidad pagadora
  CDSRetencionesNOMBRE_CLIENTE.Value     := CDSLiqCabRAZONSOCIAL.Value;
  CDSRetencionesCUIT_CLIENTE.Value       := CDSLiqCabCUIT.Value;
  CDSRetencionesFECHA.Value              := CDSLiqCabFECHA.Value;
  CDSRetencionesFECHA_RETENCION.Value    := CDSLiqCabFECHA_FISCAL.Value;
  CDSRetencionesIMPORTE.AsFloat          := 0;
  CDSRetencionesNRO_RETENCION.Value      := CDSLiqCabNUMERO.Value;
end;



procedure TFormLiquidacionTC.chTodosLosMovTCClick(Sender: TObject);
begin
  inherited;
  BuscarMovTC.Execute;
end;

procedure TFormLiquidacionTC.AgregarExecute(Sender: TObject);
VAR y,m,d:word;
begin
  DatosLiquidacionTC.CDSMovTC.Close;

  CDSLiqCab.Close;
  CDSLiqCab.Params.ParamByName('id').Clear;
  CDSLiqCab.Open;

  CDSLiqDet.Close;
  CDSLiqDet.Params.ParamByName('id').Clear;
  CDSLiqDet.Open;

  CDSLiq_IIBB.Close;
  CDSLiq_IIBB.Params.ParamByName('id').Clear;
  CDSLiq_IIBB.Open;

  CDSLiq_Iva.Close;
  CDSLiq_Iva.Params.ParamByName('id').Clear;
  CDSLiq_Iva.Open;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Clear;
  CDSRetenciones.Open;

  inherited;
  dbgLiqDet.ReadOnly       :=False;
  dbgIva.ReadOnly          :=False;
  dbgPercepcionIB.ReadOnly :=False;
  dbgretenciones.ReadOnly  :=False;


  dbFecha.SetFocus;
  dbFecha.SelectAll;


  DecodeDate(date,y,m,d);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(y,m));
  Desde.Date:=EncodeDate(y,m,1);

end;

procedure TFormLiquidacionTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormLiquidacionTC:=nil;
end;

procedure TFormLiquidacionTC.FormKeyPress(Sender: TObject; var Key: Char);
begin
   IF (Key = #13) AND
    (NOT (ActiveControl IS Tbutton)) AND
    (NOT (ActiveControl IS TFrame)) AND
    (NOT (ActiveControl IS TDBGrid)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
end;

procedure TFormLiquidacionTC.FormResize(Sender: TObject);
begin
  inherited;
  if FormLiquidacionTC<>nil then
    if (FormLiquidacionTC.Width<>951) Then
      FormLiquidacionTC.Width:=951;
end;

procedure TFormLiquidacionTC.IngresarResumenBcoExecute(Sender: TObject);
begin
  inherited;
  if not(CDSLiqCab.IsEmpty) then
    begin
      QControlMovBanco.Close;
      QControlMovBanco.ParamByName('id_liquidacion').Value := CDSLiqCabID.Value;
      QControlMovBanco.Open;
      if (CDSLiqCabID_CTA_BANCO.IsNull) or (CDSLiqCabID_CTA_BANCO.Value<=0) then
        raise Exception.Create('No Hay Cuanta Bancaria.....');

      if QControlMovBanco.Fields[0].AsString='' then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            if CDSLiqCabINGRESAR_RESUMENBANCARIO.Value='S' then
              begin
                DatosLiquidacionTC.spIngresaMovBco.Close;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('id_cuenta_banco').Value := CDSLiqCabID_CTA_BANCO.Value;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('id_liquidacion').Value  := CDSLiqCabID.Value;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('fecha').Value           := CDSLiqCabFECHA.AsDateTime;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('importe').Value         := CDSLiqCabTOTAL_ACREDITADO.AsFloat;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('nro_liquidacion').Value := CDSLiqCabNUMEROCPBTE.Value;
                DatosLiquidacionTC.spIngresaMovBco.ParamByName('detalle').Value         := CDSLiqCabMUESTRATARJETA.Value+'-'+CDSLiqCabPERIODO_LIQUIDADO.Value;
                DatosLiquidacionTC.spIngresaMovBco.ExecProc;
              end;
            DMMain_FD.fdcGestion.Commit;
            DatosLiquidacionTC.spIngresaMovBco.Close;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('No se ingreso Movimiento en el Banco...');
          end;
          Recuperar.Execute;
        end;
      QControlMovBanco.Close;
      btNuevo.SetFocus;
    end;
end;

procedure TFormLiquidacionTC.JvDBGrid1TitleBtnClick(Sender: TObject;
  ACol: Integer; Field: TField);
begin
  inherited;
  DatosLiquidacionTC.CDSMovTC.IndexFieldNames:=Field.FieldName;
end;

procedure TFormLiquidacionTC.BorrarExecute(Sender: TObject);
begin
  DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
  DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := CDSLiqCabFECHA_FISCAL.AsDateTime;
  DMStoreProcedure.QVerificaPeriodoFiscal.Open;
  if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
    begin
      ShowMessage('Periodo Fiscal Cerrado, no esta permitido');
    end
  else
    inherited;

end;

procedure TFormLiquidacionTC.btnSumaClick(Sender: TObject);
begin
  inherited;
  if (DatosLiquidacionTC.CDSMovTC.Active=True) and (DatosLiquidacionTC.CDSMovTC.IsEmpty=False) then
    begin
      CDSLiqDet.First;
      while Not(CDSLiqDet.IsEmpty) do
        begin
          CDSLiqDet.Delete;
          CDSLiqDet.First;
        end;
      FormMovTarjetaCredito.ShowModal;
    end;
end;

procedure TFormLiquidacionTC.BuscaCtaBcoExecute(Sender: TObject);
begin
  inherited;
  DatosLiquidacionTC.CDSBuscadorCtaBco.Close;
  DatosLiquidacionTC.CDSBuscadorCtaBco.Open;
  comBuscadorCtaBco.Execute;
  IF comBuscadorCtaBco.rOk THEN
    CDSLiqCabID_CTA_BANCOSetText(CDSLiqCabID_CTA_BANCO,IntToStr(comBuscadorCtaBco.Id));
  DatosLiquidacionTC.CDSBuscadorCtaBco.Close;
end;

procedure TFormLiquidacionTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorLiquidacionTC)) then
    FormBuscadorLiquidacionTC:=TFormBuscadorLiquidacionTC.Create(Self);
  FormBuscadorLiquidacionTC.ShowModal;
  if FormBuscadorLiquidacionTC.ModalResult=mrOk then
    begin
        DatoNew:=IntToStr(FormBuscadorLiquidacionTC.Id);
        Recuperar.Execute;
      end;

end;

end.