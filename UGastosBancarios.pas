unit UGastosBancarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, DBClient, Provider, IBGenerator, DB,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, Librerias, ComCtrls, ExtCtrls,
  JvComponentBase, ImgList, ActnList, JvExControls, JvGradient,
  Buttons, ToolWin, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  DBXCommon, JvExMask, JvToolEdit, JvBaseEdits,Math,
  JvAppStorage, JvAppIniStorage, System.Actions,
  CompBuscador,System.AnsiStrings, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, JvExDBGrids, JvDBGrid,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, StrUtils,
  AdvSmoothButton, Vcl.Menus;

type
  TFormMovEgr_IngBancos = class(TFormABMBase)
    DSPGastoCab: TDataSetProvider;
    DSPGastoDet: TDataSetProvider;
    DSGastoDet: TDataSource;
    pnCabecera: TPanel;
    dbeCtaCaja: TDBEdit;
    dbeNroCta: TDBEdit;
    dbeNumero: TDBEdit;
    dbeBanco: TDBEdit;
    ibgId_cab: TIBGenerator;
    ibgId_det: TIBGenerator;
    BuscadorCtaBco: TAction;
    BuscadorConcepto: TAction;
    dbgDetalle: TDBGrid;
    DSMov_Iva: TDataSource;
    DSPMov_Iva: TDataSetProvider;
    CDSMov_iva: TClientDataSet;
    DSMov_IIBB: TDataSource;
    CDSMov_IIBB: TClientDataSet;
    DSPMov_IIBB: TDataSetProvider;
    IBgIIBB: TIBGenerator;
    IBgIva: TIBGenerator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    rgTipo: TDBRadioGroup;
    pcdetalle: TPageControl;
    pagImpuestos: TTabSheet;
    dbgIva: TDBGrid;
    TabSheet2: TTabSheet;
    Label14: TLabel;
    DSRetenciones: TDataSource;
    DSPRetenciones: TDataSetProvider;
    IBGId_Retenciones: TIBGenerator;
    BuscarRetencion: TAction;
    dbtCuit: TDBText;
    dbtRazonSocial: TDBText;
    DSMov_PerIVA: TDataSource;
    CDSMov_PerIVA: TClientDataSet;
    DSPMov_PerIVA: TDataSetProvider;
    IBGPercepcionIVA: TIBGenerator;
    BuscarPercIVA: TAction;
    ReIngresaMovBanco: TAction;
    DSPTRetencion: TDataSetProvider;
    CDSTRetencion: TClientDataSet;
    CDSTRetencionID_RETENCION: TIntegerField;
    CDSTRetencionDETALLE: TStringField;
    CDSTRetencionTIPO: TSmallintField;
    dbeFecha: TJvDBDateEdit;
    dbeFechaFiscal: TJvDBDateEdit;
    RxDBIdCta: TJvDBComboEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxLabel5: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel6: TJvLabel;
    CDSGastoCab: TClientDataSet;
    CDSGastoCabID: TIntegerField;
    CDSGastoCabTIPOCPBTE: TStringField;
    CDSGastoCabCLASECPBTE: TStringField;
    CDSGastoCabID_CTA_CAJA: TIntegerField;
    CDSGastoCabCTA_CAJA: TStringField;
    CDSGastoCabFECHA: TSQLTimeStampField;
    CDSGastoCabID_BANCO: TIntegerField;
    CDSGastoCabBANCO: TStringField;
    CDSGastoCabNUMERO_CTA: TStringField;
    CDSGastoCabNROCPBTE: TStringField;
    CDSGastoCabFECHAFISCAL: TSQLTimeStampField;
    CDSGastoCabTIPO: TStringField;
    CDSGastoCabCUIT: TStringField;
    CDSGastoCabSUCURSAL: TIntegerField;
    CDSGastoCabRAZONSOCIAL: TStringField;
    CDSGastoDet: TClientDataSet;
    CDSGastoDetID: TIntegerField;
    CDSGastoDetID_GASTO_CAB: TIntegerField;
    CDSGastoDetFECHA_INGRESO: TSQLTimeStampField;
    CDSGastoDetFECHA_MOVIMIENTO: TSQLTimeStampField;
    CDSGastoDetCODIGO_CONCEPTO: TStringField;
    CDSGastoDetDETALLE: TStringField;
    CDSGastoDetID_CTA_CAJA_BCO: TIntegerField;
    CDSGastoDetNUMERO_CTA_BANCARIA: TStringField;
    CDSGastoDetNRO_CPBTE: TStringField;
    CDSMov_ivaID: TIntegerField;
    CDSMov_ivaID_GASTO_CAB: TIntegerField;
    CDSMov_ivaCODIGO_GRAVAMEN: TIntegerField;
    CDSMov_ivaDETALLE: TStringField;
    CDSMov_IIBBID: TIntegerField;
    CDSMov_IIBBCODIGO_PERCEPCION: TIntegerField;
    CDSMov_IIBBDETALLE: TStringField;
    CDSMov_IIBBID_GASTO_CAB: TIntegerField;
    CDSMov_IIBBJURIDICION: TIntegerField;
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
    CDSRetencionesCODIGO_CLIENTE: TStringField;
    CDSRetencionesCUIT_CLIENTE: TStringField;
    CDSRetencionesJURIDICCION: TIntegerField;
    CDSRetencionesNOMBRE_CLIENTE: TStringField;
    ceTotalRetenciones: TJvCalcEdit;
    CDSMov_PerIVAID: TIntegerField;
    CDSMov_PerIVACODIGO_PERCEPCION: TIntegerField;
    CDSMov_PerIVADETALLE: TStringField;
    CDSMov_PerIVAID_GASTOS_CAB: TIntegerField;
    CDSMov_PerIVACODIGOREGIMEN: TIntegerField;
    ModificaGasto: TAction;
    CDSGastoCabING_LIBROIVA: TStringField;
    CDSGastoCabCONTABILIZA: TStringField;
    ToolButton1: TToolButton;
    btModificaFecha: TBitBtn;
    chIva: TDBCheckBox;
    chContabiliza: TDBCheckBox;
    ReSumar: TAction;
    ComBuscadorCTa: TComBuscador;
    ComBuscadorConceptos: TComBuscador;
    spDetCostos: TSpeedButton;
    DetallesCostos: TAction;
    dbgRetenciones: TJvDBGrid;
    ComBuscadorRetenciones: TComBuscador;
    ComBuscadorIVA: TComBuscador;
    ComBuscadorPercepcionIIBB: TComBuscador;
    ComBuscadorPercepcionIVA: TComBuscador;
    CDSGastoCabTOTAL: TFloatField;
    CDSGastoDetDEBE: TFloatField;
    CDSGastoDetHABER: TFloatField;
    CDSRetencionesIMPORTE: TFloatField;
    CDSMov_IIBBNETO: TFloatField;
    CDSMov_IIBBIMPORTE: TFloatField;
    CDSMov_IIBBTASA: TFloatField;
    CDSMov_PerIVANETO: TFloatField;
    CDSMov_PerIVATASA: TFloatField;
    CDSMov_PerIVAIMPORTE: TFloatField;
    CDSMov_ivaNETO: TFloatField;
    CDSMov_ivaTASA: TFloatField;
    CDSMov_ivaIMPORTE: TFloatField;
    DBText1: TDBText;
    TabSheet1: TTabSheet;
    RxLabel7: TJvLabel;
    dbgPercepcionIB: TDBGrid;
    RxLabel9: TJvLabel;
    dbgPercepcionIVA: TDBGrid;
    pnPie: TPanel;
    spModificaGasto: TFDStoredProc;
    spVerResumenBco: TSpeedButton;
    ResumenBco: TAction;
    spReIngresarMovRes: TSpeedButton;
    CDSGastoCabIDRESUMEN: TLargeintField;
    lbAvisoResumen: TLabel;
    PopupMenu1: TPopupMenu;
    ReSumar1: TMenuItem;
    ReIngresaMovBanco1: TMenuItem;
    CentrodeCostos1: TMenuItem;
    procedure CDSGastoCabNewRecord(DataSet: TDataSet);
    procedure CDSGastoDetNewRecord(DataSet: TDataSet);
    procedure AgregarExecute(Sender: TObject);
    procedure BuscadorCtaBcoExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure BuscadorConceptoExecute(Sender: TObject);
    procedure dbgDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure dbgDetalleEnter(Sender: TObject);
    procedure dbgDetalleEditButtonClick(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure CancelarExecute(Sender: TObject);
    procedure ModificarExecute(Sender: TObject);
    procedure RxDBIdCtaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RecuperarExecute(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure dbgDetalleColEnter(Sender: TObject);
    procedure CDSMov_IIBBNewRecord(DataSet: TDataSet);
    procedure CDSMov_ivaNewRecord(DataSet: TDataSet);
    procedure CDSMov_ivaCODIGO_GRAVAMENSetText(Sender: TField;
      const Text: String);
    procedure CDSMov_IIBBCODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: String);
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
    procedure CDSMov_ivaNETOSetText(Sender: TField; const Text: String);
    procedure CDSMov_IIBBNETOSetText(Sender: TField; const Text: String);
    procedure CDSMov_ivaAfterPost(DataSet: TDataSet);
    procedure CDSMov_ivaAfterDelete(DataSet: TDataSet);
    procedure CDSMov_IIBBAfterDelete(DataSet: TDataSet);
    procedure CDSMov_IIBBAfterPost(DataSet: TDataSet);
    procedure CDSGastoDetAfterDelete(DataSet: TDataSet);
    procedure CDSGastoDetAfterPost(DataSet: TDataSet);
    procedure BuscarRetencionExecute(Sender: TObject);
    procedure CDSRetencionesID_RETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesFECHA_RETENCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSRetencionesBeforePost(DataSet: TDataSet);
    procedure CDSRetencionesAfterPost(DataSet: TDataSet);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure CDSRetencionesNewRecord(DataSet: TDataSet);
    procedure rgTipoClick(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSMov_PerIVANewRecord(DataSet: TDataSet);
    procedure CDSMov_PerIVACODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: string);
    procedure BuscarPercIVAExecute(Sender: TObject);
    procedure CDSMov_PerIVANETOSetText(Sender: TField; const Text: string);
    procedure CDSMov_PerIVAAfterDelete(DataSet: TDataSet);
    procedure CDSMov_PerIVAAfterPost(DataSet: TDataSet);
    procedure dbgPercepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIVAKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPercepcionIVAColEnter(Sender: TObject);
    procedure CDSRetencionesAfterDelete(DataSet: TDataSet);
    procedure CDSMov_ivaIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSMov_IIBBIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSMov_PerIVAIMPORTESetText(Sender: TField; const Text: string);
    procedure ReIngresaMovBancoExecute(Sender: TObject);
    procedure CDSGastoCabID_CTA_CAJASetText(Sender: TField; const Text: string);
    procedure CDSGastoCabNROCPBTESetText(Sender: TField; const Text: string);
    procedure CDSGastoDetCODIGO_CONCEPTOSetText(Sender: TField;
      const Text: string);
    procedure FormShow(Sender: TObject);
    procedure ModificaGastoExecute(Sender: TObject);
    procedure ReSumarExecute(Sender: TObject);
    procedure CDSGastoDetBeforePost(DataSet: TDataSet);
    procedure CDSMov_ivaBeforePost(DataSet: TDataSet);
    procedure CDSMov_IIBBBeforePost(DataSet: TDataSet);
    procedure CDSMov_PerIVABeforePost(DataSet: TDataSet);
    procedure CDSGastoCabFECHAFISCALChange(Sender: TField);
    procedure DetallesCostosExecute(Sender: TObject);
    procedure dbgRetencionesCellClick(Column: TColumn);
    procedure dbgRetencionesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgRetencionesEditButtonClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure ResumenBcoExecute(Sender: TObject);

  private
    { Private declarations }
  public
    Mascara:String;
    procedure RevisionDetalle;
    function AsignaPrecepcionIva(dato:Integer):boolean;
    PROCEDURE CalcularRetenciones;
    FUNCTION AsignarRetencion(Dato: Integer): Boolean;
    function AsignarCtaBco(Dato:Integer):Boolean;
    function AsignarConcepto(Dato:String):Boolean;
    function AsignaIva(dato:Integer):boolean;
    function AsignaPrecepcionIB(dato:Integer):boolean;
    procedure Ingresar_mov_bancarios;
    procedure sumar;
    function SumaDetalle:Extended;
    { Public declarations }
  end;

var
  FormMovEgr_IngBancos: TFormMovEgr_IngBancos;

implementation

uses  DMStoreProcedureForm,DMGastosBancarios,UDMain_FD,
      UCambiaFecha_GastoBco, UBuscadorGastoBancario, UAsignacionCtroCosto,
  UResumenBco;

{$R *.DFM}

procedure TFormMovEgr_IngBancos.RevisionDetalle;
VAR
  Puntero:TBookmark;
  Aux:Real;
begin
  Aux:=0;
  Aux:= Aux + ceTotalRetenciones.Value;
  Puntero := CDSGastoDet.GetBookmark;
  CDSGastoDet.DisableControls;
  CDSGastoDet.First;
  while not(CDSGastoDet.Eof) do
    begin
      CDSGastoDet.Edit;
      CDSGastoDetFECHA_INGRESO.Value       := CDSGastoCabFECHA.Value;
      CDSGastoDetFECHA_MOVIMIENTO.Value    := CDSGastoCabFECHA.Value;
      CDSGastoDetID_CTA_CAJA_BCO.Value     := CDSGastoCabID_CTA_CAJA.Value;
      CDSGastoDetNUMERO_CTA_BANCARIA.Value := CDSGastoCabNUMERO_CTA.Value;
      CDSGastoDetNRO_CPBTE.Value           := CDSGastoCabNROCPBTE.Value;
      CDSGastoDet.Next;
    end;
  CDSGastoDet.GotoBookmark(Puntero);
  CDSGastoDet.FreeBookmark(Puntero);
  CDSGastoDet.EnableControls;
end;


function TFormMovEgr_IngBancos.AsignaPrecepcionIva(dato:Integer):boolean;
begin
  DatosGastosBco.QPercepIva.close;
  DatosGastosBco.QPercepIva.ParamByName('codigo').Value:=Dato;
  DatosGastosBco.QPercepIva.Open;
  if Not(DatosGastosBco.QPercepIva.IsEmpty) Then
    begin
      Result:=True;
      CDSMov_PerIVADETALLE.Value := DatosGastosBco.QPercepIvaDESCRIPCION.Value;
      CDSMov_PerIVATASA.Value    := DatosGastosBco.QPercepIvaTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSMov_PerIVADETALLE.Value := '';
      CDSMov_PerIVATASA.AsFloat  := 0;
    end;
   DatosGastosBco.QPercepIva.close;
end;


PROCEDURE TFormMovEgr_IngBancos.CalcularRetenciones;
var s:Real;
BEGIN
  S := 0;
  CDSRetenciones.DisableControls;
  CDSRetenciones.First;
  WHILE NOT (CDSRetenciones.Eof) DO
    BEGIN
      S := S + CDSRetencionesIMPORTE.AsFloat;
      CDSRetenciones.Next;
    END;
  CDSRetenciones.EnableControls;
  ceTotalRetenciones.Value :=S;
END;

FUNCTION TFormMovEgr_IngBancos.AsignarRetencion(Dato: Integer): Boolean;
BEGIN
  CDSTRetencion.Close;
  CDSTRetencion.Params.ParamByName('Id').Value := dato;
  CDSTRetencion.Open;

  DatosGastosBco.QJuridicion.Close;
  IF NOT (CDSTRetencion.IsEmpty) THEN
    BEGIN
      Result := True;
      dbgRetenciones.Columns[1].PickList.Clear;
      if CDSTRetencionTIPO.Value=1 Then // Retencion Iva
        begin
          DatosGastosBco.QJuridicion.SQL.Text:= 'select * from REGIMENRETENCIONIVA ';
          DatosGastosBco.QJuridicion.Open;
          DatosGastosBco.QJuridicion.First;
          while Not(DatosGastosBco.QJuridicion.Eof) do
            begin
              dbgRetenciones.Columns[1].PickList.Add(DatosGastosBco.QJuridicion.FieldByName('codigo').AsString);
              DatosGastosBco.QJuridicion.Next;
            end;
        end
      else
        if CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
          begin
            DatosGastosBco.QRegimen.SQL.Text:= 'select * from juridiccion ';
            DatosGastosBco.QRegimen.Open;
            DatosGastosBco.QRegimen.First;
            while Not(DatosGastosBco.QRegimen.Eof) do
              begin
                dbgRetenciones.Columns[1].PickList.Add(DatosGastosBco.QRegimen.FieldByName('codigo').AsString);
                DatosGastosBco.QRegimen.Next;
              end;
          end;
      CDSRetencionesDETALLE.Value := CDSTRetencionDETALLE.Value;
    END
  ELSE
    Result := False;
  DatosGastosBco.QRegimen.Close;
  DatosGastosBco.QJuridicion.Close;
END;


function TFormMovEgr_IngBancos.SumaDetalle:Extended;
VAR
  Puntero:TBookmark;
  Aux:Real;
begin
  Aux:=0;
  Aux := Aux + ceTotalRetenciones.Value;
  Puntero:=CDSGastoDet.GetBookmark;
  CDSGastoDet.DisableControls;
  CDSGastoDet.First;
  while not(CDSGastoDet.Eof) do
    begin
      Aux := Aux + CDSGastoDetDEBE.AsFloat + CDSGastoDetHABER.AsFloat;
      CDSGastoDet.Next;
    end;
  CDSGastoDet.GotoBookmark(Puntero);
  CDSGastoDet.FreeBookmark(Puntero);
  CDSGastoDet.EnableControls;
  Result:=Aux;
end;

procedure TFormMovEgr_IngBancos.sumar;
VAR
  Puntero:TBookmark;
  Aux:Real;
begin
  Aux:=0;
  CalcularRetenciones;
  Aux := Aux + ceTotalRetenciones.Value;
  Puntero:=CDSGastoDet.GetBookmark;
  CDSGastoDet.DisableControls;
  CDSGastoDet.First;
  while not(CDSGastoDet.Eof) do
    begin
      Aux := Aux + CDSGastoDetDEBE.AsFloat + CDSGastoDetHABER.AsFloat;
      CDSGastoDet.Next;
    end;
  CDSGastoDet.GotoBookmark(Puntero);
  CDSGastoDet.FreeBookmark(Puntero);
  CDSGastoDet.EnableControls;

  CDSMov_iva.First;
  while not(CDSMov_iva.Eof) do
    begin
      Aux := Aux + CDSMov_ivaIMPORTE.AsFloat;
      CDSMov_iva.Next;
    end;

  CDSMov_IIBB.First;
  while not(CDSMov_IIBB.Eof) do
    begin
      Aux := Aux + CDSMov_IIBBIMPORTE.AsFloat;
      CDSMov_IIBB.Next;
    end;

  CDSMov_PerIVA.First;
  while not(CDSMov_PerIVA.Eof) do
    begin
      Aux := Aux + CDSMov_PerIVAIMPORTE.AsFloat;
      CDSMov_PerIVA.Next;
    end;

  if CDSGastoCab.State in [dsBrowse] Then
    CDSGastoCab.Edit;
  CDSGastoCabTOTAL.AsFloat := Aux;
end;

function TFormMovEgr_IngBancos.AsignarCtaBco(dato:Integer):Boolean;
begin
  DatosGastosBco.QCtaBco.Close;
  DatosGastosBco.QCtaBco.ParamByName('id').Value:=Dato;
  DatosGastosBco.QCtaBco.Open;
  if not(DatosGastosBco.QCtaBco.IsEmpty) Then
    begin
      Result:=True;
      CDSGastoCabCTA_CAJA.Value   := DatosGastosBco.QCtaBcoNOMBRE.Value;
      CDSGastoCabID_BANCO.Value   := DatosGastosBco.QCtaBcoID_BANCO.Value;
      CDSGastoCabBANCO.Value      := DatosGastosBco.QCtaBcoMUESTRABANCO.Value;
      CDSGastoCabNUMERO_CTA.Value := DatosGastosBco.QCtaBcoNRO_CUENTA.Value;
      CDSGastoCabCUIT.Value       := DatosGastosBco.QCtaBcoCUIT.Value;
      CDSGastoCabRAZONSOCIAL.Value:= DatosGastosBco.QCtaBcoRAZONSOCIAL.Value;
      CDSGastoCabSUCURSAL.Value   := 1;
    end
  else
    begin
      Result:=False;
      CDSGastoCabCTA_CAJA.Clear;
      CDSGastoCabID_BANCO.Clear;
      CDSGastoCabBANCO.Value      := '';
      CDSGastoCabNUMERO_CTA.Value := '';
      CDSGastoCabCUIT.Clear;
    end
end;

function TFormMovEgr_IngBancos.AsignarConcepto(Dato:String):Boolean;
begin
  DatosGastosBco.QConcepto.Close;
  DatosGastosBco.QConcepto.ParamByName('Codigo').AsString:=Dato;
  DatosGastosBco.QConcepto.Open;
  if Not(DatosGastosBco.QConcepto.IsEmpty) Then
    begin
      Result:=True;
      CDSGastoDetDETALLE.Value:=DatosGastosBco.QConceptoDETALLE.Value;
    end
  else
    begin
      Result:=False;
      CDSGastoDetDETALLE.Value:='';
    end;
  DatosGastosBco.QConcepto.Close;
end;

function TFormMovEgr_IngBancos.AsignaIva(dato:Integer):boolean;
begin
  DatosGastosBco.QGravamen.close;
  DatosGastosBco.QGravamen.ParamByName('codigo').Value:=Dato;
  DatosGastosBco.QGravamen.Open;
  if Not(DatosGastosBco.QGravamen.IsEmpty) Then
    begin
      Result:=True;
      CDSMov_IvaDETALLE.Value:=DatosGastosBco.QGravamenDESCRIPCION.Value;
      CDSMov_IvaTASA.Value   :=DatosGastosBco.QGravamenTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSMov_IvaDETALLE.Value:='';
      CDSMov_IvaTASA.AsFloat :=0;
    end;
end;

function TFormMovEgr_IngBancos.AsignaPrecepcionIB(dato:Integer):boolean;
begin
  DatosGastosBco.QPercepIB.close;
  DatosGastosBco.QPercepIB.ParamByName('codigo').Value:=Dato;
  DatosGastosBco.QPercepIB.Open;
  if Not(DatosGastosBco.QPercepIB.IsEmpty) Then
    begin
      Result:=True;
      CDSMov_IIBBDETALLE.Value:=DatosGastosBco.QPercepIBDESCRIPCION.Value;
      CDSMov_IIBBTASA.Value   :=DatosGastosBco.QPercepIBTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSMov_IIBBDETALLE.Value := '';
      CDSMov_IIBBTASA.AsFloat  := 0;
    end;
  DatosGastosBco.QPercepIB.close;
end;

procedure TFormMovEgr_IngBancos.Ingresar_mov_bancarios;
begin
//  DMMain_FD.fdcGestion.StartTransaction;
  try
    CDSGastoDet.First;
    while not(CDSGastoDet.Eof) do
      begin
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_cta_caja_bco').Value:= CDSGastoCabID_CTA_CAJA.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_Mov').Value         := CDSGastoCabID.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Fecha').Value          := CDSGastoCabFECHA.AsDateTime;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('nro_boleta').Value     := CDSGastoCabNROCPBTE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('debe').Value           := CDSGastoDetDEBE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('haber').Value          := CDSGastoDetHABER.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Detalle').Value        := CDSGastoDetDETALLE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ExecProc;
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        CDSGastoDet.Next;
      end;

    CDSMov_iva.First;
    while not(CDSMov_iva.Eof) do
      begin
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_cta_caja_bco').Value := CDSGastoCabID_CTA_CAJA.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_Mov').Value          := CDSGastoCabID.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Fecha').AsDate          := CDSGastoCabFECHA.AsDateTime;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('nro_boleta').Value      := CDSGastoCabNROCPBTE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('debe').Value            := 0;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('haber').Value           := CDSMov_ivaIMPORTE.AsFloat;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Detalle').Value         := 'IVA-'+CDSMov_ivaDETALLE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ExecProc;
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        CDSMov_iva.Next;
      end;

    CDSMov_IIBB.First;
    while not(CDSMov_IIBB.Eof) do
      begin
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_cta_caja_bco').Value:= CDSGastoCabID_CTA_CAJA.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_Mov').Value         := CDSGastocabID.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Fecha').AsDate         := CDSGastoCabFECHA.AsDateTime;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('nro_boleta').Value     := CDSGastoCabNROCPBTE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('debe').Value           := 0;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('haber').Value          := CDSMov_IIBBIMPORTE.AsFloat;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Detalle').Value        := CDSMov_IIBBDETALLE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ExecProc;
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        CDSMov_IIBB.Next;
     end;

    CDSRetenciones.First;
    while not(CDSRetenciones.Eof) do
      begin
        DatosGastosBco.spIngreso_Retenciones.Close;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('id_cta_caja_bco').Value := CDSGastoCabID_CTA_CAJA.Value;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('id_Mov').Value          := CDSGastoCabID.Value;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('Fecha').AsDate          := CDSGastoCabFECHA.AsDateTime;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('nro_boleta').Value      := CDSGastoCabNROCPBTE.Value;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('debe').Value            := 0;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('haber').Value           := CDSRetencionesIMPORTE.AsFloat;
        DatosGastosBco.spIngreso_Retenciones.ParamByName('Detalle').Value         :='Ret.:'+CDSRetencionesDETALLE.Value;
        DatosGastosBco.spIngreso_Retenciones.ExecProc;
        DatosGastosBco.spIngreso_Retenciones.Close;
        CDSRetenciones.Next;
      end;

    CDSMov_PerIVA.First;
    while not(CDSMov_PerIVA.Eof) do
      begin
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_cta_caja_bco').Value:= CDSGastoCabID_CTA_CAJA.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('id_Mov').Value         := CDSGastoCabID.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Fecha').AsDate         := CDSGastoCabFECHA.AsDateTime;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('nro_boleta').Value     := CDSGastoCabNROCPBTE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('debe').Value           := 0;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('haber').Value          := CDSMov_PerIVAIMPORTE.AsFloat;
        DatosGastosBco.spIngresos_Egresos_bco.ParamByName('Detalle').Value        := 'Percp.IVA-'+CDSMov_PerIVADETALLE.Value;
        DatosGastosBco.spIngresos_Egresos_bco.ExecProc;
        DatosGastosBco.spIngresos_Egresos_bco.Close;
        CDSMov_PerIVA.Next;
      end;
 //   DMMain_FD.fdcGestion.Commit;
  except
 //   DMMain_FD.fdcGestion.Rollback;
 //   ShowMessage('No se pudo procesar el gravado del registro...');
  end;
end;


procedure TFormMovEgr_IngBancos.CDSGastoCabFECHAFISCALChange(Sender: TField);
begin
  inherited;
  if (CDSGastoCab.State in [dsInsert]) and (CDSRetenciones.Active=True)  and (Not(CDSRetenciones.IsEmpty)) then
    begin
      CDSRetenciones.First;
      while Not(CDSRetenciones.Eof) do
        begin
          CDSRetenciones.Edit;
          CDSRetencionesFECHA_RETENCION.Value:=CDSGastoCabFECHAFISCAL.Value;
          CDSRetenciones.Next;
        end;
    end;
end;

procedure TFormMovEgr_IngBancos.CDSGastoCabID_CTA_CAJASetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if Not(AsignarCtaBco(Sender.AsInteger)) then
    begin
      ShowMessage('Dato no válido');
      Sender.AsString:='';
      RxDBIdCta.SetFocus;
    end;
end;

procedure TFormMovEgr_IngBancos.CDSGastoCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGastoCabID.Value         := ibgId_cab.IncrementFD(1);
  CDSGastoCabFECHA.AsDateTime := Date;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString=''Then
    CDSGastoCabNROCPBTESetText(CDSGastoCabNROCPBTE,'1')
  else
    CDSGastoCabNROCPBTESetText(CDSGastoCabNROCPBTE,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1));
  QUltimoCodigo2.Close;
  CDSGastoCabFECHAFISCAL.AsDateTime := Date;
  CDSGastoCabTIPO.Value             := 'H';
  CDSGastoCabTIPOCPBTE.Value        := 'GX';
  CDSGastoCabCLASECPBTE.Value       := 'GX';
  CDSGastoCabING_LIBROIVA.Value     := 'S';
  CDSGastoCabCONTABILIZA.Value      := 'S';
end;

procedure TFormMovEgr_IngBancos.CDSGastoCabNROCPBTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Copy('000000000000000',1,13-length(Text))+Text;
end;

procedure TFormMovEgr_IngBancos.CDSGastoDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGastoDetID.Value                  := ibgId_det.IncrementFD(1);
  CDSGastoDetID_GASTO_CAB.Value        := CDSGastoCabID.Value;
  CDSGastoDetFECHA_INGRESO.Value       := CDSGastoCabFECHA.Value;
  CDSGastoDetFECHA_MOVIMIENTO.Value    := CDSGastoCabFECHA.Value;
  CDSGastoDetID_CTA_CAJA_BCO.Value     := CDSGastoCabID_CTA_CAJA.Value;
  CDSGastoDetNUMERO_CTA_BANCARIA.Value := CDSGastoCabNUMERO_CTA.Value;
  CDSGastoDetNRO_CPBTE.Value           := CDSGastoCabNROCPBTE.Value;
  CDSGastoDetDEBE.AsFloat              := 0;
  CDSGastoDetHABER.AsFloat             := 0;
end;

procedure TFormMovEgr_IngBancos.CDSRetencionesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  sumar;
end;

procedure TFormMovEgr_IngBancos.CDSRetencionesAfterPost(DataSet: TDataSet);
begin
  inherited;
  sumar;
end;

procedure TFormMovEgr_IngBancos.CDSRetencionesBeforePost(DataSet: TDataSet);
begin
  inherited;
 if ((Trunc(CDSRetencionesIMPORTE.AsFloat * 1000) <= 0) or (CDSRetencionesIMPORTE.AsString='')) or
     (Trim(CDSRetencionesID_RETENCION.AsString)='') Then
    begin
      CDSRetenciones.Cancel;
      SysUtils.Abort;
     // ShowMessage('La Retención no puede tener valor cero');
    end;
end;

procedure TFormMovEgr_IngBancos.CDSRetencionesFECHA_RETENCIONSetText(
  Sender: TField; const Text: string);
VAR MesRet,AnioRet,MesRec,AnioRec,dia:word;
begin
  Sender.AsString:=Text;
  if Text<>'' Then
    begin
      DecodeDate(CDSGastoCabFECHA.AsDateTime,AnioRec,MesRec,dia);
      DecodeDate(Sender.AsDateTime,AnioRet,MesRet,dia);
      if Not((MesRet=MesRec) and (AnioRet=AnioRec)) Then
        begin
          //Sender.Clear;
          ShowMessage('El mes o el año de la retención difiere con la Liquidación ....')
        end
    end;
end;

procedure TFormMovEgr_IngBancos.CDSRetencionesID_RETENCIONSetText(
  Sender: TField; const Text: string);
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

procedure TFormMovEgr_IngBancos.CDSRetencionesNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRetencionesID_MOV_RETENCIONES.AsInteger  := IBGId_Retenciones.IncrementFD(1);
  CDSRetencionesID_CPBTE.AsInteger            := CDSGastoCabID.AsInteger;
  CDSRetencionesTIPOCPBTE.AsString            := 'GX';
  CDSRetencionesCLASECPBTE.AsString           := 'GX';
  CDSRetencionesNROCPBTE.AsString             := CDSGastoCabNROCPBTE.AsString;
  CDSRetencionesCODIGO_CLIENTE.AsString       := CDSGastoCabID_BANCO.AsString;
  CDSRetencionesNOMBRE_CLIENTE.AsString       := CDSGastoCabBANCO.AsString;
  CDSRetencionesCUIT_CLIENTE.AsString         := CDSGastoCabCUIT.AsString;
  CDSRetencionesFECHA.AsDateTime              := CDSGastoCabFECHA.AsDateTime;
  CDSRetencionesFECHA_RETENCION.AsDateTime    := CDSGastoCabFECHAFISCAL.AsDateTime;
  CDSRetencionesIMPORTE.AsFloat               := 0;
  CDSRetencionesNRO_RETENCION.AsString        := CDSGastoCabNROCPBTE.AsString;
end;



procedure TFormMovEgr_IngBancos.AgregarExecute(Sender: TObject);
begin
  CDSGastoCab.Close;
  CDSGastoCab.Params.ParamByName('id').Clear;
  CDSGastoCab.Open;

  CDSGastoDet.Close;
  CDSGastoDet.Params.ParamByName('id').Clear;
  CDSGastoDet.Open;

  CDSMov_iva.Close;
  CDSMov_iva.Params.ParamByName('id').Clear;
  CDSMov_iva.OPen;

  CDSMov_IIBB.Close;
  CDSMov_IIBB.Params.ParamByName('id').Clear;
  CDSMov_IIBB.OPen;

  CDSMov_PerIVA.Close;
  CDSMov_PerIVA.Params.ParamByName('id').Clear;
  CDSMov_PerIVA.OPen;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Clear;
  CDSRetenciones.Open;

  inherited;
  pcdetalle.Visible        :=True;
  pcdetalle.ActivePageIndex:=0;
  pnCabecera.Enabled       :=True;
  dbeFecha.SetFocus;
end;

procedure TFormMovEgr_IngBancos.BuscadorCtaBcoExecute(Sender: TObject);
begin
  inherited;
  DatosGastosBco.QBuscadorCtaBco.Close;
  DatosGastosBco.QBuscadorCtaBco.Open;
  ComBuscadorCTa.Execute;
  if comBuscadorCta.rOk Then
    CDSGastoCabID_CTA_CAJASetText(CDSGastoCabID_CTA_CAJA,IntToStr(comBuscadorCta.Id));
  DatosGastosBco.QBuscadorCtaBco.Close;
end;

procedure TFormMovEgr_IngBancos.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize := False;
  SinBde   := 2;
  IF NOT (Assigned(DatosGastosBco)) THEN
    DatosGastosBco := TDatosGastosBco.Create(Self);
  DSBase.DataSet:=CDSGastoCab;

  AddClientDataSet(CDSGastoCab,DSPGastoCab);
  AddClientDataSet(CDSGastoDet,DSPGastoDet);
  AddClientDataSet(CDSMov_iva,DSPMov_Iva);
  AddClientDataSet(CDSMov_IIBB,DSPMov_IIBB);
  AddClientDataset(CDSRetenciones,DSPRetenciones);
  AddClientDataset(CDSMov_PerIVA,DSPMov_PerIVA);

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='VALORES';
  DMMain_FD.QOpciones.Open;
  Mascara := DMMain_FD.QOpciones.Fields[0].Value;
  DMMain_FD.QOpciones.Close;
  CDSGastoCab.Open;
  CDSGastoDet.Open;
  CDSMov_iva.Open;
  CDSMov_IIBB.Open;
  CDSMov_PerIVA.Open;
  CDSRetenciones.Open;
  TFMTBCDField(CDSGastoCabTOTAL).EditFormat    := Mascara;
  TFMTBCDField(CDSGastoCabTOTAL).DisplayFormat := Mascara;

  TFMTBCDField(CDSGastoDetDEBE).EditFormat     := Mascara;
  TFMTBCDField(CDSGastoDetHABER).EditFormat    := Mascara;

  TFMTBCDField(CDSGastoDetDEBE).DisplayFormat    := Mascara;
  TFMTBCDField(CDSGastoDetHABER).DisplayFormat   := Mascara;


  Tabla:='gastos_bco_cab';
  Campo:='id';
  rgTipo.ItemIndex:=0;

end;

procedure TFormMovEgr_IngBancos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSGastoCab.Close;
  CDSGastoDet.Close;
  CDSMov_iva.Close;
  CDSMov_IIBB.Close;
  CDSRetenciones.close;
  Action:=caFree;
end;

procedure TFormMovEgr_IngBancos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormMovEgr_IngBancos:=nil;
end;

procedure TFormMovEgr_IngBancos.FormKeyPress(Sender: TObject; var Key: Char);
begin
 // inherited;
 IF (Key = #13) AND
    (NOT (ActiveControl IS Tbutton)) AND
    (NOT (ActiveControl IS TFrame)) AND
    (NOT (ActiveControl IS TDBGrid)) THEN
    BEGIN
      perform(wm_nextdlgctl, 0, 0);
      key := #0;
    END;
end;

procedure TFormMovEgr_IngBancos.FormResize(Sender: TObject);
begin
  inherited;
  if FormMovEgr_IngBancos<>nil then
    if FormMovEgr_IngBancos.Width<>695 then
      FormMovEgr_IngBancos.Width:=695;

end;

procedure TFormMovEgr_IngBancos.FormShow(Sender: TObject);
begin
  inherited;
  btNuevo.SetFocus;
end;

procedure TFormMovEgr_IngBancos.BuscadorConceptoExecute(Sender: TObject);
begin
  inherited;
  DatosGastosBco.QBuscadorConcepto.Close;
  DatosGastosBco.QBuscadorConcepto.Open;
  ComBuscadorConceptos.Execute;
  if ComBuscadorConceptos.rOk Then
    CDSGastoDetCODIGO_CONCEPTOSetText(CDSGastoDetCODIGO_CONCEPTO,ComBuscadorConceptos.Id);
  DatosGastosBco.QBuscadorConcepto.Close;
end;

procedure TFormMovEgr_IngBancos.dbgDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key=#10) and (dbgDetalle.SelectedIndex=1) Then
    begin
      key:=#0;
      BuscadorConcepto.Execute;
    end
  else
    if (Key=#13) Then
      begin
        Key:=#0;
        if dbgDetalle.SelectedIndex<4 Then
          dbgDetalle.SelectedIndex:=dbgDetalle.SelectedIndex+1
        else
          begin
     //       GrillaDetalle.DataSource.DataSet.Post;
            IF dbgDetalle.DataSource.DataSet.Eof THEN
              dbgDetalle.DataSource.DataSet.Append;
            dbgDetalle.SelectedIndex:=0;
          end;
      end;

end;

procedure TFormMovEgr_IngBancos.dbgDetalleEnter(Sender: TObject);
begin
  inherited;
  If ((dbeFecha.Text='') or
     (RxDBIdCta.Text='') or
     (dbeCtaCaja.Text='') or
     (dbeNumero.Text='') or
     (dbeNroCta.Text='')) and (DSBase.State in [dsInsert,dsEdit] ) Then
      begin
        pnCabecera.Enabled:=True;
        ShowMessage('Datos de Cabecera incompletos');
        //wwGrillaDetalle.Enabled:=False;
        if (pnCabecera.Enabled) and (dbeFecha.Enabled) Then
        dbeFecha.SetFocus;
      end
    else
      begin
      //  pnCabecera.Enabled:=False;
      //  if GrillaDetalle.DataSource.DataSet.State in [dsBrowse] Then
   //       GrillaDetalle.DataSource.DataSet.Insert;
        dbgDetalle.SetFocus;
        dbgDetalle.SelectedIndex:=1;
        // Enabled:=True;
      end;

end;

procedure TFormMovEgr_IngBancos.dbgDetalleEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscadorConcepto.Execute;
end;

procedure TFormMovEgr_IngBancos.BuscarExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorGastosBancarios)) then
    FormBuscadorGastosBancarios:=TFormBuscadorGastosBancarios.Create(Self);
  FormBuscadorGastosBancarios.ShowModal;
  if FormBuscadorGastosBancarios.ModalResult=mrOk then
    begin
      DatoNew:= IntToStr(FormBuscadorGastosBancarios.Id);
      Recuperar.Execute;
    end;
end;

procedure TFormMovEgr_IngBancos.BuscarPercIVAExecute(Sender: TObject);
begin
  inherited;
  DatosGastosBco.CDSBuscaPercepIVA.Close;
  DatosGastosBco.CDSBuscaPercepIVA.Open;
  comBuscadorPercepcionIva.Execute;
  if ComBuscadorPercepcionIVA.rOk then
    CDSMov_PerIVACODIGO_PERCEPCIONSetText(CDSMov_PerIVACODIGO_PERCEPCION, IntToStr(comBuscadorPercepcionIva.Id));
  DatosGastosBco.CDSBuscaPercepIVA.Close;
end;

procedure TFormMovEgr_IngBancos.BuscarRetencionExecute(Sender: TObject);
begin
  inherited;
  DatosGastosBco.QBuscadorTRetencion.Close;
  DatosGastosBco.QBuscadorTRetencion.Open;
  comBuscadorRetenciones.Execute;
  if ComBuscadorRetenciones.rOk then
    CDSRetencionesID_RETENCION.Text   := IntToStr(comBuscadorRetenciones.Id);
  DatosGastosBco.QBuscadorTRetencion.Close;

end;

procedure TFormMovEgr_IngBancos.CancelarExecute(Sender: TObject);
begin
  CDSGastoCab.Close;
  CDSGastoCab.Params.ParamByName('id').Clear;
  CDSGastoCab.Open;

  CDSGastoDet.Close;
  CDSGastoDet.Params.ParamByName('id').Clear;
  CDSGastoDet.Open;

  CDSMov_iva.Close;
  CDSMov_iva.Params.ParamByName('id').Clear;
  CDSMov_iva.OPen;

  CDSMov_IIBB.Close;
  CDSMov_IIBB.Params.ParamByName('id').Clear;
  CDSMov_IIBB.OPen;

  CDSMov_PerIVA.Close;
  CDSMov_PerIVA.Params.ParamByName('id').Clear;
  CDSMov_PerIVA.OPen;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Clear;
  CDSRetenciones.Open;

  inherited;
  pcdetalle.Visible:=True;
  pcdetalle.ActivePageIndex:=0;
  pnCabecera.Enabled:=True;
  btNuevo.SetFocus;
end;

procedure TFormMovEgr_IngBancos.ModificaGastoExecute(Sender: TObject);
begin
  inherited;
  if DMMain_FD.UsuarioAdministrador then
    begin
      if Not(Assigned(FormCambioFechaGastoBco)) then
        FormCambioFechaGastoBco:=TFormCambioFechaGastoBco.Create(Self);
      FormCambioFechaGastoBco.FechaOp    :=CDSGastoCabFECHA.AsDateTime;
      FormCambioFechaGastoBco.FechaFiscal:=CDSGastoCabFECHAFISCAL.AsDateTime;
      FormCambioFechaGastoBco.IdCta      :=CDSGastoCabID_CTA_CAJA.Value;
      FormCambioFechaGastoBco.Contabiliza:=CDSGastoCabCONTABILIZA.Value ='S';
      FormCambioFechaGastoBco.IngIva     :=CDSGastoCabING_LIBROIVA.Value='S';
      FormCambioFechaGastoBco.IdLiq      :=CDSGastoCabID.Value;
      FormCambioFechaGastoBco.ShowModal;
      if FormCambioFechaGastoBco.ModalResult=mrOk then
        begin
          Recuperar.Execute;
        end;
    end
  else
    ShowMessage('No esta autorizado para esta operacion, solo Administradores...');

end;

procedure TFormMovEgr_IngBancos.ModificarExecute(Sender: TObject);
begin
  if DMMain_FD.UsuarioAdministrador then
    begin
      Borrar.Execute;
      inherited;
      pnCabecera.Enabled:=False;
    end;
end;

procedure TFormMovEgr_IngBancos.RxDBIdCtaKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGastoCabID_CTA_CAJA.Clear;
      CDSGastoCabCTA_CAJA.Clear;
    end;

end;


procedure TFormMovEgr_IngBancos.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGastoCab.Close;
  CDSGastoCab.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGastoCab.Open;

  CDSGastoDet.Close;
  CDSGastoDet.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSGastoDet.Open;

  CDSMov_iva.Close;
  CDSMov_iva.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMov_iva.OPen;

  CDSMov_IIBB.Close;
  CDSMov_IIBB.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMov_IIBB.OPen;

  CDSMov_PerIVA.Close;
  CDSMov_PerIVA.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSMov_PerIVA.OPen;

  CDSRetenciones.Close;
  CDSRetenciones.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  CDSRetenciones.Open;

  CalcularRetenciones;

  sbEstado.SimpleText      :='';

 // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:= 'C';
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value       := CDSGastoCabFECHAFISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if (DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C') and
       ((CDSMov_ivaID.AsString<>'') or (CDSMov_IIBBID.AsString<>'') or (CDSMov_PerIVAID.AsString<>'') or (CDSRetencionesID_RETENCION.AsString<>'')) Then
      begin
        sbEstado.SimpleText      :='Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        Borrar.Enabled           :=False;
        Modificar.Enabled        :=false;
        dbgDetalle.ReadOnly      :=True;
        dbgIva.ReadOnly          :=True;
        dbgPercepcionIB.ReadOnly :=True;
        dbgretenciones.ReadOnly  :=True;
      end;
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
  end;

  pcdetalle.Visible:=CDSGastoCabTIPO.Value='H';

  lbAvisoResumen.Visible:= CDSGastoCabIDRESUMEN.Value<=0;
  DatoNew:=''+DatoNew+'';
  btNuevo.SetFocus;
end;

procedure TFormMovEgr_IngBancos.ReIngresaMovBancoExecute(Sender: TObject);
begin
  inherited;
  DMMain_FD.fdcGestion.StartTransaction;
  try
    DatosGastosBco.QBorraMovimiento.Close;
    DatosGastosBco.QBorraMovimiento.ParamByName('id').value := CDSGastoCabID.Value;
    DatosGastosBco.QBorraMovimiento.ExecSQL;
    DMMain_FD.fdcGestion.Commit;
    Ingresar_mov_bancarios;
  except
    DMMain_FD.fdcGestion.Rollback;
    ShowMessage('No se pudo hacer la operacion');
  end;
  Recuperar.Execute;
end;

procedure TFormMovEgr_IngBancos.ReSumarExecute(Sender: TObject);
begin
  inherited;
  if (CDSGastoCab.State = dsBrowse) and (Not(CDSGastoCab.IsEmpty)) then
    begin
      CDSGastoCab.Edit;
      sumar;
      Confirma.Execute;
    end;
end;

procedure TFormMovEgr_IngBancos.ResumenBcoExecute(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormResumenBco)) then
    FormResumenBco := TFormResumenBco.Create(self);
  FormResumenBco.ceCtaBco.Text    := RxDBIdCta.Text;
  FormResumenBco.edNombreCta.Text := dbeCtaCaja.Text;
  FormResumenBco.Buscar.Execute;
  FormResumenBco.Show;
end;

procedure TFormMovEgr_IngBancos.rgTipoClick(Sender: TObject);
begin
  inherited;
  pcdetalle.Visible:=rgTipo.ItemIndex=1;
  
  if (not(CDSGastoDet.IsEmpty)) or
     (not(CDSMov_iva.IsEmpty)) or
     (not(CDSMov_IIBB.IsEmpty)) or
     (not(CDSMov_PerIVA.IsEmpty)) or
     (not(CDSRetenciones.IsEmpty)) then
    begin
      CDSGastoDet.Close;
      CDSGastoDet.Params.ParamByName('id').Clear;
      CDSGastoDet.Open;

      CDSMov_iva.Close;
      CDSMov_iva.Params.ParamByName('id').Clear;
      CDSMov_iva.OPen;

      CDSMov_IIBB.Close;
      CDSMov_IIBB.Params.ParamByName('id').Clear;
      CDSMov_IIBB.OPen;

      CDSMov_PerIVA.Close;
      CDSMov_PerIVA.Params.ParamByName('id').Clear;
      CDSMov_PerIVA.OPen;

      CDSRetenciones.Close;
      CDSRetenciones.Params.ParamByName('id').Clear;
      CDSRetenciones.Open;
    end;

  if (DSBase.State in [dsInsert,dsEDit]) then
    begin
      case rgTipo.ItemIndex of
        0:CDSGastoCabING_LIBROIVA.Value:='N';
        1:CDSGastoCabING_LIBROIVA.Value:='S';
      end;
    end;

end;

procedure TFormMovEgr_IngBancos.ConfirmaExecute(Sender: TObject);
var d,m,y:word;
begin
   DecodeDate(CDSGastoCabFECHAFISCAL.AsDateTime,y,m,d);
   DMStoreProcedure.QVerificaPeriodoFiscal.Close;
   DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('Compra_venta').Value:='C';
   DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value := CDSGastoCabFECHAFISCAL.AsDateTime;
   DMStoreProcedure.QVerificaPeriodoFiscal.Open;
   if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
     raise Exception.Create('Fecha no Valida, este período fiscal no esta permitido');

   DMStoreProcedure.QVerificaPeriodoFiscal.Close;

   if CDSGastoCabTIPO.Value='D' then
     CDSGastoCabING_LIBROIVA.Value:='N';

   RevisionDetalle;
   sumar;

   DatoNew := CDSGastoCabID.AsString;

   if CDSGastoDet.State in [dsInsert,dsEdit] Then
     CDSGastoDet.Post;
   if CDSMov_iva.State in [dsInsert,dsEdit] Then
     CDSMov_iva.Post;
   if CDSMov_IIBB.State in [dsInsert,dsEdit] Then
     CDSMov_IIBB.Post;
   if CDSRetenciones.State in [dsInsert,dsEdit] Then
     CDSRetenciones.Post;
   if CDSMov_PerIVA.State in [dsInsert,dsEdit] Then
     CDSMov_PerIVA.Post;

     //  sumar;
  //inherited;
   DMMain_FD.fdcGestion.StartTransaction;
   try
     if CDSGastoCab.ApplyUpdates(0)=0 Then
       if CDSGastoDet.ApplyUpdates(0)=0 Then
         if CDSMov_iva.ApplyUpdates(0)=0 Then
           if CDSMov_IIBB.ApplyUpdates(0)=0 Then
             if CDSMov_PerIVA.ApplyUpdates(0)=0 Then
               if CDSRetenciones.ApplyUpdates(0)=0 Then
                 Ingresar_mov_bancarios;
     DMMain_FD.fdcGestion.Commit;

   except
     CDSGastoCab.Close;
     CDSGastoCab.Params.ParamByName('id').Clear;
     CDSGastoCab.Open;

     CDSGastoDet.Close;
     CDSGastoDet.Params.ParamByName('id').Clear;
     CDSGastoDet.Open;

     CDSMov_iva.Close;
     CDSMov_iva.Params.ParamByName('id').Clear;
     CDSMov_iva.OPen;

     CDSMov_IIBB.Close;
     CDSMov_IIBB.Params.ParamByName('id').Clear;
     CDSMov_IIBB.OPen;

     CDSMov_PerIVA.Close;
     CDSMov_PerIVA.Params.ParamByName('id').Clear;
     CDSMov_PerIVA.OPen;

     CDSRetenciones.Close;
     CDSRetenciones.Params.ParamByName('id').Clear;
     CDSRetenciones.OPen;

     DMMain_FD.fdcGestion.Rollback;

     ShowMessage('Hubo un error en la transaccion y no confimro la gravacion de datos...');
   end;
   Recuperar.Execute;
end;

procedure TFormMovEgr_IngBancos.dbgDetalleColEnter(Sender: TObject);
begin
  inherited;
  if DSBase.State in [dsInsert,dsEdit] then
    begin
      if dbgDetalle.SelectedIndex=0 Then
        dbgDetalle.SelectedIndex:=1;
      if (dbgDetalle.SelectedIndex=3) and (CDSGastoCabTIPO.Value='H') then
        dbgDetalle.SelectedIndex:=4;
      if (dbgDetalle.SelectedIndex=4) and (CDSGastoCabTIPO.Value='D') then
        begin
          dbgDetalle.DataSource.DataSet.Append;
          dbgDetalle.SelectedIndex:=1;
        end;
      if CDSGastoCabTIPO.Value='D' then
        begin
         dbgDetalle.Columns[3].ReadOnly:=False;
         dbgDetalle.Columns[4].ReadOnly:=True;
        end
      else
        if CDSGastoCabTIPO.Value='H' then
          begin
           dbgDetalle.Columns[3].ReadOnly:=True;
           dbgDetalle.Columns[4].ReadOnly:=False;
          end;
    end;
 end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMov_IIBBID.Value           := IBGIIBB.IncrementFD(1);
  CDSMov_IIBBID_GASTO_CAB.Value := CDSGastoCabID.Value;
  CDSMov_IIBBTASA.AsFloat       := 0;
  CDSMov_IIBBNETO.AsFloat       := 0;
  CDSMov_IIBBIMPORTE.AsFloat    := 0;
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMov_ivaID.Value           :=IBgIva.IncrementFD(1);
  CDSMov_IvaID_GASTO_CAB.Value :=CDSGastoCabID.Value;
  CDSMov_IvaTASA.AsFloat       :=0;
  CDSMov_IvaNETO.AsFloat       :=0;
  CDSMov_IvaIMPORTE.AsFloat    :=0;
end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVAAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVAAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVABeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(CDSMov_PerIVACODIGO_PERCEPCION.AsString)='') then
    begin
      CDSMov_PerIVA.Cancel;
      SysUtils.Abort;
    end;

end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVACODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSMov_PerIVA.State=dsBrowse then CDSMov_PerIVA.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    end;
end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVAIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSMov_PerIvaTASA.AsFloat>0 then
    CDSMov_PerIvaNETO.AsFloat := Sender.AsFloat*(100/CDSMov_PerIvaTASA.AsFloat);
  Sumar;

end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVANETOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  CDSMov_PerIVAIMPORTE.AsFloat := Moneda3D(' ','0.00',CDSMov_PerIVATASA.AsFloat*Sender.AsFloat * 0.01);
end;

procedure TFormMovEgr_IngBancos.CDSMov_PerIVANewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSMov_PerIVAID.Value           := IBGPercepcionIVA.IncrementFD(1);
  CDSMov_PerIVAID_GASTOS_CAB.Value:= CDSGastoCabID.Value;
  CDSMov_PerIVANETO.AsFloat    := 0;
  CDSMov_PerIVATASA.AsFloat    := 0;
  CDSMov_PerIVAIMPORTE.AsFloat := 0;

end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaCODIGO_GRAVAMENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
if (Text<>#13) and (Text<>'') Then
    begin
      if CDSMov_Iva.State =dsbrowse Then CDSMov_Iva.Edit;
      Sender.AsString:=Text;
      if Not(AsignaIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSMov_IvaTASA.AsFloat>0 then
    begin
      CDSMov_IvaNETO.AsFloat:=Sender.AsFloat*(100/CDSMov_IvaTASA.AsFloat);
      CDSMov_IvaNETO.AsFloat:=RoundTo(CDSMov_IvaNETO.AsFloat,-2);
    end;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBCODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
 if (Text<>#13) and (Text<>'') Then
    begin
      if CDSMov_IIBB.State =dsbrowse Then CDSMov_IIBB.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIB(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;
  if CDSMov_IIBBTASA.AsFloat>0 then
    CDSMov_IIBBNETO.AsFloat:=Sender.AsFloat*(100/CDSMov_IIBBTASA.AsFloat);
  Sumar;

end;

procedure TFormMovEgr_IngBancos.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
 if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormMovEgr_IngBancos.dbgIvaEditButtonClick(Sender: TObject);
begin
  inherited;
  DatosGastosBco.CDSBuscaIVA.Close;
  DatosGastosBco.CDSBuscaIVA.Open;
  comBuscadorIva.Execute;
  if comBuscadorIva.rOk Then
    CDSMov_IvaCODIGO_GRAVAMENSetText(CDSMov_IvaCODIGO_GRAVAMEN,IntToStr(comBuscadorIva.Id));
  DatosGastosBco.CDSBuscaIVA.Close;
end;

procedure TFormMovEgr_IngBancos.dbgIvaKeyDown(Sender: TObject;
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

procedure TFormMovEgr_IngBancos.dbgIvaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgIva.SelectedIndex<4 Then
      begin
        key:=#0;
        dbgIva.SelectedIndex:= dbgIva.SelectedIndex+1;
      end;
end;

procedure TFormMovEgr_IngBancos.dbgPercepcionIBColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIB.SelectedIndex=1) or (dbgPercepcionIB.SelectedIndex=2) Then
    dbgPercepcionIB.SelectedIndex:=3;
end;

procedure TFormMovEgr_IngBancos.dbgPercepcionIBEditButtonClick(
  Sender: TObject);
begin
  inherited;
  DatosGastosBco.CDSBuscaPercepIIBB.Close;
  DatosGastosBco.CDSBuscaPercepIIBB.Open;
  ComBuscadorPercepcionIIBB.Execute;
  if ComBuscadorPercepcionIIBB.rOk Then
    CDSMov_IIBBCODIGO_PERCEPCIONSetText(CDSMov_IIBBCODIGO_PERCEPCION,IntToStr(ComBuscadorPercepcionIIBB.Id));
  DatosGastosBco.CDSBuscaPercepIIBB.Close;
end;

procedure TFormMovEgr_IngBancos.dbgPercepcionIBKeyDown(Sender: TObject;
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

procedure TFormMovEgr_IngBancos.dbgPercepcionIBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 if Key=#13 Then
    if dbgPercepcionIB.SelectedIndex<4 Then
      begin
        Key:=#0;
        dbgPercepcionIB.SelectedIndex:= dbgPercepcionIB.SelectedIndex+1;
      end;
end;

procedure TFormMovEgr_IngBancos.dbgPercepcionIVAColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIVA.SelectedIndex=1) or (dbgPercepcionIVA.SelectedIndex=2) Then
    dbgPercepcionIVA.SelectedIndex:=3;
end;

procedure TFormMovEgr_IngBancos.dbgPercepcionIVAKeyDown(Sender: TObject;
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

procedure TFormMovEgr_IngBancos.dbgPercepcionIVAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgPercepcionIVA.SelectedIndex<4 Then
      begin
        Key:=#0;
        dbgPercepcionIVA.SelectedIndex:= dbgPercepcionIVA.SelectedIndex+1;
      end;
end;

procedure TFormMovEgr_IngBancos.dbgRetencionesCellClick(Column: TColumn);
begin

if (dbgretenciones.SelectedIndex=1) and (dbgretenciones.DataSource.DataSet.Active=True) then
    begin
      if dbgretenciones.DataSource.State=dsBrowse Then
        dbgretenciones.DataSource.Edit;

      CDSTRetencion.Close;
      CDSTRetencion.Params.ParamByName('Id').Value := CDSRetencionesID_RETENCION.Value;
      CDSTRetencion.Open;

      DatosGastosBco.QRegimen.Close;
      DatosGastosBco.QJuridicion.Close;

      IF NOT (CDSTRetencion.IsEmpty) THEN
        BEGIN
          dbgRetenciones.Columns[1].PickList.Clear;
          if CDSTRetencionTIPO.Value=1 Then // Retencion Iva
            begin
              DatosGastosBco.QRegimen.Sql.Text:= 'select * from REGIMENRETENCIONIVA ';
              DatosGastosBco.QRegimen.Open;
              DatosGastosBco.QRegimen.First;
              while Not(DatosGastosBco.QRegimen.Eof) do
                begin
                  dbgRetenciones.Columns[1].PickList.Add(DatosGastosBco.QRegimen.FieldByName('codigo').AsString);
                  DatosGastosBco.QRegimen.Next;
                end;
            end
          else
            if CDSTRetencionTIPO.Value=2 Then  // Retencio IIBB
              begin
                DatosGastosBco.QJuridicion.SQL.Text:= 'select * from juridiccion ';
                DatosGastosBco.QJuridicion.Open;
                DatosGastosBco.QJuridicion.First;
                while Not(DatosGastosBco.QJuridicion.Eof) do
                  begin
                    dbgRetenciones.Columns[1].PickList.Add(DatosGastosBco.QJuridicion.FieldByName('codigo').AsString);
                    DatosGastosBco.QJuridicion.Next;
                  end;
              end;
          CDSRetencionesDETALLE.Value := CDSTRetencionDETALLE.Value;
        END;

      DatosGastosBco.QJuridicion.Close;
    end;
end;

procedure TFormMovEgr_IngBancos.dbgRetencionesEditButtonClick(Sender: TObject);
begin
  inherited;
  BuscarRetencion.Execute;
end;

procedure TFormMovEgr_IngBancos.dbgRetencionesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
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

procedure TFormMovEgr_IngBancos.DetallesCostosExecute(Sender: TObject);
var pos:Integer;
Valor:Real;
begin
  inherited;
  if (DSBase.State=dsBrowse) and (DSBase.DataSet.IsEmpty=False) and (CDSGastoDet.RecordCount>0) then
    begin
      if Not(Assigned(FormAsignacionCentroCosto)) then
        FormAsignacionCentroCosto:=TFormAsignacionCentroCosto.Create(Self);
      FormAsignacionCentroCosto.IdCpbte  :=CDSGastoCabID.Value;
      FormAsignacionCentroCosto.TipoCpbte:=CDSGastoCabTIPOCPBTE.Value;
      if rgTipo.ItemIndex=1 then
        FormAsignacionCentroCosto.Tipo     :='E'
      else
        if rgTipo.ItemIndex=0 then
          FormAsignacionCentroCosto.Tipo     :='I';

      FormAsignacionCentroCosto.Total    :=SumaDetalle;

      dbgDetalle.DataSource.DataSet.First;
      while Not(dbgDetalle.DataSource.DataSet.Eof) do
        begin
          pos:=FormAsignacionCentroCosto.LstConcepto.IndexOf(dbgDetalle.DataSource.DataSet.FieldByName('codigo_concepto').AsString);
          if Pos<0 Then
            begin
              FormAsignacionCentroCosto.LstConcepto.Append(dbgDetalle.DataSource.DataSet.FieldByName('codigo_concepto').AsString);
              FormAsignacionCentroCosto.LstDetalles.Append(dbgDetalle.DataSource.DataSet.FieldByName('detalle').AsString);
              if rgTipo.ItemIndex=1 then
                FormAsignacionCentroCosto.LstImportes.Append(AnsiReplaceText(dbgDetalle.DataSource.DataSet.FieldByName('Haber').AsString,',',''))
              else
                FormAsignacionCentroCosto.LstImportes.Append(AnsiReplaceText(dbgDetalle.DataSource.DataSet.FieldByName('Debe').AsString,',',''))
             end
           else
             begin
               if rgTipo.ItemIndex=1 then
                 Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',','') )+
                        StrToFloat(AnsiReplaceText(dbgDetalle.DataSource.DataSet.FieldByName('Haber').AsString,',',''))
               else
                 Valor:=StrToFloat(AnsiReplaceText(FormAsignacionCentroCosto.LstImportes[Pos],',','') )+
                        StrToFloat(AnsiReplaceText(dbgDetalle.DataSource.DataSet.FieldByName('Debe').AsString,',',''));


               FormAsignacionCentroCosto.LstImportes[Pos]:=FloatToStr(Valor);
             end;

          dbgDetalle.DataSource.DataSet.Next;
        end;


      FormAsignacionCentroCosto.ShowModal;

      DetallesCostos.ImageIndex:=10;
      if DMMain_FD.AplicPorCtroCosto(CDSGastoCabID.AsInteger,
                                     CDSGastoCabTIPOCPBTE.AsString,
                                     IfThen(rgTipo.ItemIndex=1,'E','I')) then

        DetallesCostos.ImageIndex:=11;
     //     dbgCtroCosto.Visible:=True;
    end;

end;

procedure TFormMovEgr_IngBancos.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled      := True;
  pnCabecera.Enabled       := DSBase.State=dsInsert;
  pcdetalle.Enabled        := True;
  dbgDetalle.ReadOnly      := DSBase.State  in [dsBrowse];
  dbgIva.ReadOnly          := DSBase.State  in [dsBrowse];
  dbgPercepcionIB.ReadOnly := DSBase.State  in [dsBrowse];
  dbgretenciones.ReadOnly  := DSBase.State  in [dsBrowse];
  ModificaGasto.Enabled    := (DSBase.State  in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  ResumenBco.Enabled       := (DSBase.State  in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
  ReIngresaMovBanco.Enabled:= (DSBase.State  in [dsBrowse]) and (Not(DSBase.DataSet.IsEmpty));
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSMov_IvaIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSMov_IVATASA.AsFloat * Sender.AsFloat * 0.01);
  CDSMov_IvaIMPORTE.AsFloat:= RoundTo(CDSMov_IVATASA.AsFloat * Sender.AsFloat * 0.01,-2);

end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  CDSMov_IIBBIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSMov_IIBBTASA.AsFloat * Sender.AsFloat*0.01);
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(CDSMov_ivaCODIGO_GRAVAMEN.AsString)='') then
    begin
      CDSMov_iva.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormMovEgr_IngBancos.CDSMov_ivaAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBAfterDelete(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSMov_IIBBBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(CDSMov_IIBBCODIGO_PERCEPCION.AsString)='') then
    begin
      CDSMov_IIBB.Cancel;
      SysUtils.Abort;
    end;

end;

procedure TFormMovEgr_IngBancos.CDSGastoDetAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSGastoDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  Sumar;
end;

procedure TFormMovEgr_IngBancos.CDSGastoDetBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (Trim(CDSGastoDetCODIGO_CONCEPTO.AsString)='') then
    begin
      CDSGastoDet.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormMovEgr_IngBancos.CDSGastoDetCODIGO_CONCEPTOSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSGastoDet.State in [dsBrowse] then
        CDSGastoDet.Edit;
      Sender.AsString:=copy('000',1,3-length(Text))+Text;
      if Not(AsignarConcepto(Sender.AsString)) Then
        begin
          ShowMessage('Codigo no valido');
          Sender.AsString:='';
        end;
    end;
end;

end.