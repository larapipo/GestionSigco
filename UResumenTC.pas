unit UResumenTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, Grids, DBGrids, DBClient, Provider, IBGenerator, StdCtrls, Mask,
  DBCtrls, Math,   ActnList, ComCtrls, Buttons,
  ToolWin, ExtCtrls,Librerias, UMovValoresEgresos, JvComponentBase,
  ImgList, JvExControls, JvGradient, JvFormPlacement, JvLabel, JvDBControls,
  FMTBcd, JvExMask, JvToolEdit, SqlExpr, DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions, JvExDBGrids, JvDBGrid, CompBuscador,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormResumentTC = class(TFormABMBase)
    pnCabecera: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label11: TLabel;
    dbePeriodo: TDBEdit;
    dbeMuestraTarjeta: TDBEdit;
    IBGIVA: TIBGenerator;
    DSPRes_Iva: TDataSetProvider;
    CDSRes_Iva: TClientDataSet;
    DSRes_Iva: TDataSource;
    DSPMovTC: TDataSetProvider;
    DSMovTC: TDataSource;
    CDSMovTC: TClientDataSet;
    DSPResumenDet: TDataSetProvider;
    CDSResumenDet: TClientDataSet;
    DSResumenDet: TDataSource;
    IBGResumenDet: TIBGenerator;
    IBGResumenCab: TIBGenerator;
    CDSResumenCab: TClientDataSet;
    DSPResumenCab: TDataSetProvider;
    pnDetalle: TPanel;
    Label14: TLabel;
    dbtProveedor: TDBText;
    dbtCuota: TDBText;
    dbtTotalCuotas: TDBText;
    Label15: TLabel;
    Label16: TLabel;
    BuscarTC: TAction;
    Label19: TLabel;
    dbeSaldoAnterior: TDBEdit;
    Label20: TLabel;
    pcDetalleResumen: TPageControl;
    pgDetalle: TTabSheet;
    dbgIva: TDBGrid;
    dbgPercepcionIB: TDBGrid;
    Label7: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label10: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label6: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    pnTotales: TPanel;
    dbeConsumos: TDBEdit;
    dbeIva: TDBEdit;
    dbeIIBB: TDBEdit;
    dbeTotal: TDBEdit;
    dbeComisiones: TDBEdit;
    dbeGastoResumen: TDBEdit;
    dbeGstosAdmin: TDBEdit;
    dbeImpuestoSellos: TDBEdit;
    dbeIntereses: TDBEdit;
    pcValores: TTabSheet;
    FrameMovValoresEgresos1: TFrameMovValoresEgresos;
    Panel2: TPanel;
    DBText11: TDBText;
    Label21: TLabel;
    Label22: TLabel;
    dbeCuit: TDBEdit;
    Label23: TLabel;
    dbeSucursal: TDBEdit;
    dbeLetra: TDBEdit;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    Label9: TLabel;
    Buscarsucursal: TAction;
    dbFecha: TJvDBDateEdit;
    dbFechaFiscal: TJvDBDateEdit;
    dbcTarjeta: TJvDBComboEdit;
    RxCSucursal: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    QMovTc: TFDQuery;
    QMovTcID: TIntegerField;
    QMovTcID_CUPON: TIntegerField;
    QMovTcID_TARJEA: TIntegerField;
    QMovTcFECHA_COMPRA: TSQLTimeStampField;
    QMovTcNUMERO_CUPON: TIntegerField;
    QMovTcTOTAL_CUOTAS: TIntegerField;
    QMovTcCUOTA: TIntegerField;
    QMovTcIMPORTE_TOTAL_COMPRA: TFloatField;
    QMovTcIMPORTE: TFloatField;
    QMovTcLIQUIDADA: TStringField;
    QMovTcMUESTRAPROVEEDOR: TStringField;
    CDSMovTCID: TIntegerField;
    CDSMovTCID_CUPON: TIntegerField;
    CDSMovTCID_TARJEA: TIntegerField;
    CDSMovTCFECHA_COMPRA: TSQLTimeStampField;
    CDSMovTCNUMERO_CUPON: TIntegerField;
    CDSMovTCTOTAL_CUOTAS: TIntegerField;
    CDSMovTCCUOTA: TIntegerField;
    CDSMovTCIMPORTE_TOTAL_COMPRA: TFloatField;
    CDSMovTCIMPORTE: TFloatField;
    CDSMovTCLIQUIDADA: TStringField;
    CDSMovTCMUESTRAPROVEEDOR: TStringField;
    QResumenCab: TFDQuery;
    QResumenCabID: TIntegerField;
    QResumenCabID_TC: TIntegerField;
    QResumenCabFECHA: TSQLTimeStampField;
    QResumenCabPERIODO_LIQUIDADO: TStringField;
    QResumenCabFECHA_FISCAL: TSQLTimeStampField;
    QResumenCabLETRA: TStringField;
    QResumenCabTIPOCPBTE: TStringField;
    QResumenCabCLASECPBTE: TStringField;
    QResumenCabSUC: TStringField;
    QResumenCabNUMERO: TStringField;
    QResumenCabNUMEROCPBTE: TStringField;
    QResumenCabSALDO_ANTERIOR: TFloatField;
    QResumenCabTOTAL_CONSUMOS: TFloatField;
    QResumenCabCOMISIONES: TFloatField;
    QResumenCabIMPUESTOS_SELLOS: TFloatField;
    QResumenCabGASTOS_RESUMEN: TFloatField;
    QResumenCabGASTOS_ADMIN: TFloatField;
    QResumenCabINTERESES: TFloatField;
    QResumenCabIVA: TFloatField;
    QResumenCabIIBB: TFloatField;
    QResumenCabTOTAL: TFloatField;
    QResumenCabCUIT: TStringField;
    QResumenCabNOMBRE: TStringField;
    QResumenCabSUCURSAL: TIntegerField;
    QResumenCabRAZONSOCIAL: TStringField;
    QResumenCabMUESTRASUCURSAL: TStringField;
    CDSResumenCabID: TIntegerField;
    CDSResumenCabID_TC: TIntegerField;
    CDSResumenCabFECHA: TSQLTimeStampField;
    CDSResumenCabPERIODO_LIQUIDADO: TStringField;
    CDSResumenCabFECHA_FISCAL: TSQLTimeStampField;
    CDSResumenCabLETRA: TStringField;
    CDSResumenCabTIPOCPBTE: TStringField;
    CDSResumenCabCLASECPBTE: TStringField;
    CDSResumenCabSUC: TStringField;
    CDSResumenCabNUMERO: TStringField;
    CDSResumenCabNUMEROCPBTE: TStringField;
    CDSResumenCabSALDO_ANTERIOR: TFloatField;
    CDSResumenCabTOTAL_CONSUMOS: TFloatField;
    CDSResumenCabCOMISIONES: TFloatField;
    CDSResumenCabIMPUESTOS_SELLOS: TFloatField;
    CDSResumenCabGASTOS_RESUMEN: TFloatField;
    CDSResumenCabGASTOS_ADMIN: TFloatField;
    CDSResumenCabINTERESES: TFloatField;
    CDSResumenCabIVA: TFloatField;
    CDSResumenCabIIBB: TFloatField;
    CDSResumenCabTOTAL: TFloatField;
    CDSResumenCabCUIT: TStringField;
    CDSResumenCabNOMBRE: TStringField;
    CDSResumenCabSUCURSAL: TIntegerField;
    CDSResumenCabRAZONSOCIAL: TStringField;
    CDSResumenCabMUESTRASUCURSAL: TStringField;
    QResumenDet: TFDQuery;
    QResumenDetID: TIntegerField;
    QResumenDetID_RESCAB: TIntegerField;
    QResumenDetID_MOV_TCREDITO: TIntegerField;
    QResumenDetID_CUPON: TIntegerField;
    QResumenDetNRO_CUPON: TIntegerField;
    QResumenDetFECHA_COMPRA: TSQLTimeStampField;
    QResumenDetCUOTA: TSmallintField;
    QResumenDetPROVEEDOR: TStringField;
    QResumenDetTOTAL_CUOTAS: TIntegerField;
    QResumenDetIMPORTE: TFloatField;
    CDSResumenDetID: TIntegerField;
    CDSResumenDetID_RESCAB: TIntegerField;
    CDSResumenDetID_MOV_TCREDITO: TIntegerField;
    CDSResumenDetID_CUPON: TIntegerField;
    CDSResumenDetNRO_CUPON: TIntegerField;
    CDSResumenDetFECHA_COMPRA: TSQLTimeStampField;
    CDSResumenDetCUOTA: TSmallintField;
    CDSResumenDetPROVEEDOR: TStringField;
    CDSResumenDetTOTAL_CUOTAS: TIntegerField;
    CDSResumenDetIMPORTE: TFloatField;
    QRes_Iva: TFDQuery;
    QRes_IvaID_IMPUESTO: TIntegerField;
    QRes_IvaCODIGO_GRAVAMEN: TIntegerField;
    QRes_IvaDETALLE: TStringField;
    QRes_IvaID_RES: TIntegerField;
    QRes_IvaNETO: TFloatField;
    QRes_IvaTASA: TFloatField;
    QRes_IvaIMPORTE: TFloatField;
    CDSRes_IvaID_RES: TIntegerField;
    CDSRes_IvaID_IMPUESTO: TIntegerField;
    CDSRes_IvaCODIGO_GRAVAMEN: TIntegerField;
    CDSRes_IvaDETALLE: TStringField;
    CDSRes_IvaNETO: TFloatField;
    CDSRes_IvaTASA: TFloatField;
    CDSRes_IvaIMPORTE: TFloatField;
    QPercepIB: TFDQuery;
    QPercepIBCODIGO: TIntegerField;
    QPercepIBDESCRIPCION: TStringField;
    QPercepIBTASA: TFloatField;
    QPercepIBMINIMOAPLICABLE: TFloatField;
    QPercepIBCOLUMNA: TSmallintField;
    QPercepIBJURIDICION: TIntegerField;
    QGravamen: TFDQuery;
    QGravamenCODIGO: TIntegerField;
    QGravamenDESCRIPCION: TStringField;
    QGravamenTASA: TFloatField;
    QGravamenCOLUMNA: TSmallintField;
    QCaja: TFDQuery;
    QCajaESTADO: TIntegerField;
    CDSBuscaTarjeta: TClientDataSet;
    DSPBuscaTerjeta: TDataSetProvider;
    CDSBuscaTarjetaID: TIntegerField;
    CDSBuscaTarjetaNRO_TARJETA: TStringField;
    CDSBuscaTarjetaNOMBRE: TStringField;
    CDSBuscaTarjetaID_BANCO: TIntegerField;
    CDSBuscaTarjetaMONEDA: TIntegerField;
    CDSBuscaTarjetaID_TCREDITO: TIntegerField;
    CDSBuscaTarjetaMUESTRATARJETACREDITO: TStringField;
    CDSBuscaTarjetaMUESTRABANCO: TStringField;
    CDSBuscaPercepIIBB: TClientDataSet;
    DSPBuscaPerecepIIBB: TDataSetProvider;
    CDSBuscaPercepIIBBCODIGO: TIntegerField;
    CDSBuscaPercepIIBBDESCRIPCION: TStringField;
    CDSBuscaPercepIIBBTASA: TFloatField;
    CDSBuscaPercepIIBBMINIMOAPLICABLE: TFloatField;
    CDSBuscaPercepIIBBCOLUMNA: TSmallintField;
    CDSBuscaPercepIIBBJURIDICION: TIntegerField;
    CDSBuscaIVA: TClientDataSet;
    DSPBuscaIVA: TDataSetProvider;
    CDSBuscaIVACODIGO: TIntegerField;
    CDSBuscaIVADESCRIPCION: TStringField;
    CDSBuscaIVATASA: TFloatField;
    CDSBuscaIVACOLUMNA: TSmallintField;
    QBuscaRes: TFDQuery;
    CDSBuscaResumem: TClientDataSet;
    DSPBuscaResumem: TDataSetProvider;
    CDSBuscaResumemID: TIntegerField;
    CDSBuscaResumemFECHA: TSQLTimeStampField;
    CDSBuscaResumemFECHA_FISCAL: TSQLTimeStampField;
    CDSBuscaResumemNUMEROCPBTE: TStringField;
    CDSBuscaResumemMUESTRATARJETA: TStringField;
    RxLabel5: TJvLabel;
    RxLabel6: TJvLabel;
    QResumenCabING_LIBROIVA: TStringField;
    QResumenCabCONTABILIZA: TStringField;
    CDSResumenCabING_LIBROIVA: TStringField;
    CDSResumenCabCONTABILIZA: TStringField;
    chIva: TDBCheckBox;
    chContabiliza: TDBCheckBox;
    dbgMovTc: TJvDBGrid;
    dbgResDet: TJvDBGrid;
    ComBuscadorTC: TComBuscador;
    ComBuscadorIVA: TComBuscador;
    ComBuscadorPercepcionIB: TComBuscador;
    ComBuscadorSucursal: TComBuscador;
    QUltimoCodigo2MAX: TStringField;
    JvLabel1: TJvLabel;
    dbgPercepcionIVA: TDBGrid;
    QRes_IIBB: TFDQuery;
    QRes_IIBBID_RES: TIntegerField;
    QRes_IIBBID_PERCEPCION: TIntegerField;
    QRes_IIBBCODIGO_PERCEPCION: TIntegerField;
    QRes_IIBBDETALLE: TStringField;
    QRes_IIBBNETO: TFloatField;
    QRes_IIBBTASA: TFloatField;
    QRes_IIBBIMPORTE: TFloatField;
    QRes_IIBBJURIDICION: TIntegerField;
    DSPRes_IIBB: TDataSetProvider;
    CDSRes_IIBB: TClientDataSet;
    CDSRes_IIBBID_RES: TIntegerField;
    CDSRes_IIBBID_PERCEPCION: TIntegerField;
    CDSRes_IIBBCODIGO_PERCEPCION: TIntegerField;
    CDSRes_IIBBDETALLE: TStringField;
    CDSRes_IIBBNETO: TFloatField;
    CDSRes_IIBBTASA: TFloatField;
    CDSRes_IIBBIMPORTE: TFloatField;
    CDSRes_IIBBJURIDICION: TIntegerField;
    DSRes_IIBB: TDataSource;
    IBGIIBB: TIBGenerator;
    IbgPrec_IVA: TIBGenerator;
    DSRes_Perc_IVA: TDataSource;
    CDSRes_Perc_IVA: TClientDataSet;
    DSPRes_Perc_IVA: TDataSetProvider;
    QResPerc_IVA: TFDQuery;
    QPercepIva: TFDQuery;
    QPercepIvaCODIGO: TIntegerField;
    QPercepIvaDESCRIPCION: TStringField;
    QPercepIvaTASA: TFloatField;
    QPercepIvaMINIMOAPLICABLE: TFloatField;
    QPercepIvaCOLUMNA: TSmallintField;
    QPercepIvaCODIGOREGIMEN: TIntegerField;
    BuscarPercIVA: TAction;
    ComBuscadorPercepcionIVA: TComBuscador;
    DSPBuscaPercepIVA: TDataSetProvider;
    CDSBuscaPercepIVA: TClientDataSet;
    CDSBuscaPercepIVACODIGO: TIntegerField;
    CDSBuscaPercepIVADESCRIPCION: TStringField;
    QResumenCabPERC_IVA: TFloatField;
    CDSResumenCabPERC_IVA: TFloatField;
    edPerIVA: TDBEdit;
    Label12: TLabel;
    QResPerc_IVAID_PERCEPCION: TIntegerField;
    QResPerc_IVACODIGO_PERCEPCION: TIntegerField;
    QResPerc_IVADETALLE: TStringField;
    QResPerc_IVAID_RES: TIntegerField;
    QResPerc_IVANETO: TFloatField;
    QResPerc_IVATASA: TFloatField;
    QResPerc_IVAIMPORTE: TFloatField;
    QResPerc_IVACODIGOREGIMEN: TIntegerField;
    CDSRes_Perc_IVAID_PERCEPCION: TIntegerField;
    CDSRes_Perc_IVACODIGO_PERCEPCION: TIntegerField;
    CDSRes_Perc_IVADETALLE: TStringField;
    CDSRes_Perc_IVAID_RES: TIntegerField;
    CDSRes_Perc_IVANETO: TFloatField;
    CDSRes_Perc_IVATASA: TFloatField;
    CDSRes_Perc_IVAIMPORTE: TFloatField;
    CDSRes_Perc_IVACODIGOREGIMEN: TIntegerField;
    procedure CDSResumenCabNewRecord(DataSet: TDataSet);
    procedure BuscarTCExecute(Sender: TObject);
    procedure CDSResumenCabID_TCSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabSUCSetText(Sender: TField; const Text: String);
    procedure CDSResumenCabNUMEROSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabSALDO_ANTERIORSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabCOMISIONESSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabGASTOS_RESUMENSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabGASTOS_ADMINSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabIMPUESTOS_SELLOSSetText(Sender: TField;
      const Text: String);
    procedure CDSResumenCabINTERESESSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure dbgMovTcDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgResDetDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure dbgResDetDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure CDSResumenDetAfterDelete(DataSet: TDataSet);
    procedure CDSResumenDetAfterPost(DataSet: TDataSet);
    procedure CDSResumenDetBeforeDelete(DataSet: TDataSet);
    procedure CDSResumenDetNewRecord(DataSet: TDataSet);
    procedure dbgIvaColEnter(Sender: TObject);
    procedure dbgIvaEditButtonClick(Sender: TObject);
    procedure dbgIvaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgIvaKeyPress(Sender: TObject; var Key: Char);
    procedure CDSRes_IvaCODIGO_GRAVAMENSetText(Sender: TField;
      const Text: String);
    procedure dbgPercepcionIBColEnter(Sender: TObject);
    procedure dbgPercepcionIBEditButtonClick(Sender: TObject);
    procedure dbgPercepcionIBKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIBKeyPress(Sender: TObject; var Key: Char);
    procedure CDSRes_IIBBCODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: String);
    procedure CDSRes_IvaNETOSetText(Sender: TField; const Text: String);
    procedure CDSRes_IIBBNETOSetText(Sender: TField; const Text: String);
    procedure CancelarExecute(Sender: TObject);
    procedure pcDetalleResumenEnter(Sender: TObject);
    procedure pcDetalleResumenChange(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure BorrarExecute(Sender: TObject);
    procedure CDSResumenCabSUCURSALSetText(Sender: TField; const Text: string);
    procedure BuscarsucursalExecute(Sender: TObject);
    procedure CDSRes_IvaIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSRes_IIBBIMPORTESetText(Sender: TField; const Text: string);
    procedure CDSRes_IvaNewRecord(DataSet: TDataSet);
    procedure CDSRes_IIBBNewRecord(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovBeforeDelete(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterPost(DataSet: TDataSet);
    procedure FrameMovValoresEgresos1CDSCajaMovAfterDelete(DataSet: TDataSet);
    procedure CDSRes_Perc_IVANewRecord(DataSet: TDataSet);
    procedure CDSRes_Perc_IVACODIGO_PERCEPCIONSetText(Sender: TField;
      const Text: string);
    procedure CDSRes_IvaAfterPost(DataSet: TDataSet);
    procedure CDSRes_IIBBAfterPost(DataSet: TDataSet);
    procedure CDSRes_Perc_IVAAfterPost(DataSet: TDataSet);
    procedure CDSRes_Perc_IVANETOSetText(Sender: TField; const Text: string);
    procedure CDSRes_Perc_IVAIMPORTESetText(Sender: TField; const Text: string);
    procedure BuscarPercIVAExecute(Sender: TObject);
    procedure dbgPercepcionIVAColEnter(Sender: TObject);
    procedure dbgPercepcionIVAKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgPercepcionIVAKeyPress(Sender: TObject; var Key: Char);
  private
    function AsignaPrecepcionIva(dato: Integer): boolean;
    { Private declarations }
  public
    { Public declarations }
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    procedure Calcular;
    function AsignarTC(Dato:Integer):Boolean;
    function AsignaIva(dato:Integer):boolean;
    function AsignaPrecepcionIB(dato:Integer):boolean;
  end;

var
  FormResumentTC: TFormResumentTC;

implementation

uses UCarteraCheques, UDMain_FD,DMBuscadoresForm,
  DMStoreProcedureForm;

{$R *.DFM}


function TFormResumentTC.AsignaPrecepcionIva(dato:Integer):boolean;
begin
  QPercepIva.close;
  QPercepIva.ParamByName('codigo').Value:=Dato;
  QPercepIva.Open;
  if Not(QPercepIva.IsEmpty) Then
    begin
      Result:=True;
      CDSRes_Perc_IVADETALLE.Value := QPercepIvaDESCRIPCION.Value;
      CDSRes_Perc_IVATASA.Value    := QPercepIvaTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSRes_Perc_IVADETALLE.Value := '';
      CDSRes_Perc_IVATASA.AsFloat  := 0;
    end;
  QPercepIva.close;
end;


FUNCTION TFormResumentTC.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  DMMain_FD.QSucursal.Close;
  DMMain_FD.QSucursal.ParamByName('Codigo').Value:=dato;
  DMMain_FD.QSucursal.Open;
  IF NOT (DMMain_FD.QSucursal.Eof) THEN
    BEGIN
      Result:=True;
      CDSResumenCabSUCURSAL.Value       :=DMMain_FD.QSucursalCODIGO.Value;
      CDSResumenCabMUESTRASUCURSAL.Value:=DMMain_FD.QSucursalDETALLE.Value;
    END
  ELSE
    BEGIN
      Result:=False;
      CDSResumenCabSUCURSAL.Clear;
      CDSResumenCabMUESTRASUCURSAL.Clear;
    END;
  DMMain_FD.QSucursal.Close;
END;


procedure TFormResumentTC.Calcular;
var Puntero:TBookmark;
begin
  Puntero:=CDSResumenDet.GetBookmark;
  CDSResumenCabTOTAL_CONSUMOS.AsFloat:=0;
  CDSResumenDet.DisableControls;
  CDSResumenDet.First;
  while Not(CDSResumenDet.Eof) do
    begin
      CDSResumenCabTOTAL_CONSUMOS.AsFloat:=CDSResumenCabTOTAL_CONSUMOS.AsFloat +
                                           CDSResumenDetIMPORTE.AsFloat;
      CDSResumenDet.Next;
    end;
  CDSResumenDet.GotoBookmark(Puntero);
  CDSResumenDet.EnableControls;
  CDSResumenDet.FreeBookmark(Puntero);
  CDSRes_Iva.First;
  CDSResumenCabIVA.AsFloat:=0;
  while not(CDSRes_Iva.Eof) do
    begin
      CDSResumenCabIVA.AsFloat := CDSResumenCabIVA.AsFloat +
                                  CDSRes_IvaIMPORTE.AsFloat;
      CDSRes_Iva.Next;
    end;

  CDSRes_IIBB.First;
  CDSResumenCabIIBB.AsFloat:=0;
  while not(CDSRes_IIBB.Eof) do
    begin
      CDSResumenCabIIBB.AsFloat := CDSResumenCabIIBB.AsFloat +
                                   CDSRes_IIBBIMPORTE.AsFloat;
      CDSRes_IIBB.Next;
    end;

  CDSRes_Perc_IVA.First;
  CDSResumenCabPERC_IVA.AsFloat:=0;
  while not(CDSRes_Perc_IVA.Eof) do
    begin
      CDSResumenCabPERC_IVA.AsFloat := CDSResumenCabPERC_IVA.AsFloat +
                                       CDSRes_Perc_IVAIMPORTE.AsFloat;
      CDSRes_Perc_IVA.Next;
    end;

  CDSResumenCabTOTAL.AsFloat:= CDSResumenCabSALDO_ANTERIOR.AsFloat +
                               CDSResumenCabTOTAL_CONSUMOS.AsFloat +
                               CDSResumenCabCOMISIONES.AsFloat +
                               CDSResumenCabGASTOS_RESUMEN.AsFloat +
                               CDSResumenCabGASTOS_ADMIN.AsFloat +
                               CDSResumenCabIMPUESTOS_SELLOS.AsFloat +
                               CDSResumenCabINTERESES.AsFloat +
                               CDSResumenCabIVA.AsFloat +
                               CDSResumenCabPERC_IVA.AsFloat+
                               CDSResumenCabIIBB.AsFloat;
end;


function TFormResumentTC.AsignaIva(dato:Integer):boolean;
begin
  QGravamen.close;
  QGravamen.ParamByName('codigo').Value:=Dato;
  QGravamen.Open;
  if Not(QGravamen.IsEmpty) Then
    begin
      Result:=True;
      CDSRes_IvaDETALLE.Value:=QGravamenDESCRIPCION.Value;
      CDSRes_IvaTASA.Value   :=QGravamenTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSRes_IvaDETALLE.Value:='';
      CDSRes_IvaTASA.AsFloat :=0;
    end;
end;

function TFormResumentTC.AsignaPrecepcionIB(dato:Integer):boolean;
begin
  QPercepIB.close;
  QPercepIB.ParamByName('codigo').Value:=Dato;
  QPercepIB.Open;
  if Not(QPercepIB.IsEmpty) Then
    begin
      Result:=True;
      CDSRes_IIBBDETALLE.Value:=QPercepIBDESCRIPCION.Value;
      CDSRes_IIBBTASA.Value   :=QPercepIBTASA.Value;
    end
  else
    begin
      Result:=False;
      CDSRes_IIBBDETALLE.Value:='';
      CDSRes_IIBBTASA.AsFloat :=0;
    end;
end;


function TFormResumentTC.AsignarTC(Dato:Integer):Boolean;
begin
  DMMain_FD.QTarjetacredito_comp.Close;
  DMMain_FD.QTarjetacredito_comp.ParamByName('id').Value:=Dato;
  DMMain_FD.QTarjetacredito_comp.Open;
  if Not(DMMain_FD.QTarjetacredito_comp.IsEmpty) Then
    begin
      Result:=True;
      CDSResumenCabNOMBRE.Value     :=DMMain_FD.QTarjetacredito_compNOMBRE.Value;
      CDSResumenCabCUIT.Value       :=DMMain_FD.QTarjetacredito_compMUESTRACUIT.Value;
      CDSResumenCabRAZONSOCIAL.Value:=DMMain_FD.QTarjetacredito_compMUESTRARAZONSOCIAL.Value;
    end
  else
    begin
      Result:=False;
      CDSResumenCabNOMBRE.Clear;
      CDSResumenCabCUIT.Clear;
      CDSResumenCabRAZONSOCIAL.Clear;
    end;
  DMMain_FD.QTarjetacredito_comp.Close;
end;



procedure TFormResumentTC.CDSResumenCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSResumenCabID.Value                := IBGResumenCab.IncrementFD(1);
  CDSResumenCabFECHA.AsDateTime        := Date;
  CDSResumenCabFECHA_FISCAL.AsDateTime := Date;
  CDSResumenCabTIPOCPBTE.Value         := 'RS';
  CDSResumenCabCLASECPBTE.Value        := 'RS';
  CDSResumenCabLETRA.Value             := 'X';
  CDSResumenCabSUC.Value               := '0000';
  CDSResumenCabSALDO_ANTERIOR.AsFloat  := 0;
  CDSResumenCabTOTAL_CONSUMOS.AsFloat  := 0;
  CDSResumenCabCOMISIONES.AsFloat      := 0;
  CDSResumenCabIVA.AsFloat             := 0;
  CDSResumenCabPERC_IVA.AsFloat        := 0;
  CDSResumenCabIIBB.AsFloat            := 0;
  CDSResumenCabTOTAL.AsFloat           := 0;
  CDSResumenCabGASTOS_RESUMEN.AsFloat  := 0;
  CDSResumenCabGASTOS_ADMIN.AsFloat    := 0;
  CDSResumenCabIMPUESTOS_SELLOS.AsFloat:= 0;
  CDSResumenCabINTERESES.AsFloat       := 0;
  CDSResumenCabING_LIBROIVA.Value      := 'S';
  CDSResumenCabCONTABILIZA.Value       := 'S';
  CDSResumenCabSUCURSALSetText(CDSResumenCabSUCURSAL,IntToStr(SucursalPorDefecto));

  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.Fields[0].AsString='' Then
    CDSResumenCabNUMEROSetText(CDSResumenCabNUMERO,'1')
  else
    CDSResumenCabNUMEROSetText(CDSResumenCabNUMERO,IntToStr(QUltimoCodigo2.Fields[0].AsInteger+1));
  QUltimoCodigo2.Close;
end;

procedure TFormResumentTC.BuscarTCExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaTarjeta.Close;
  CDSBuscaTarjeta.Open;
  comBuscadorTC.Execute;
  if comBuscadorTC.rOk Then
    begin
      CDSResumenCabID_TCSetText(CDSResumenCabID_TC,IntToStr(comBuscadorTC.id));
    end;
  CDSBuscaTarjeta.Close;
end;

procedure TFormResumentTC.CDSResumenCabID_TCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>'') and (Text<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarTC(Sender.AsInteger)) Then
        begin
          Sender.Clear;
          ShowMessage('Dato no Válido....');
        end
      else
        begin
          CDSMovTC.Close;
          CDSMovTC.Params.ParamByName('id_tc').Value:=Sender.AsInteger;
          CDSMovTC.Open;
        end;
    end;
end;

procedure TFormResumentTC.CDSResumenCabSUCSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('0000',1,Sender.Size-Length(Text))+Text;
  CDSResumenCabNUMEROCPBTE.Value:=CDSResumenCabLETRA.AsString+
                                  CDSResumenCabSUC.AsString+
                                  CDSResumenCabNUMERO.AsString;
end;

procedure TFormResumentTC.CDSResumenCabSUCURSALSetText(Sender: TField;
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

procedure TFormResumentTC.CDSResumenCabNUMEROSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-Length(Text))+Text;
  CDSResumenCabNUMEROCPBTE.Value:=CDSResumenCabLETRA.AsString+
                                  CDSResumenCabSUC.AsString+
                                  CDSResumenCabNUMERO.AsString;
end;

procedure TFormResumentTC.CDSResumenCabSALDO_ANTERIORSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;
end;

procedure TFormResumentTC.CDSResumenCabCOMISIONESSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormResumentTC.CDSResumenCabGASTOS_RESUMENSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormResumentTC.CDSResumenCabGASTOS_ADMINSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormResumentTC.CDSResumenCabIMPUESTOS_SELLOSSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormResumentTC.CDSResumenCabINTERESESSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Text;
  Calcular;

end;

procedure TFormResumentTC.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=1;
  AutoSize:=True;
  FrameMovValoresEgresos1.pcValores.ActivePageIndex:=0;
  FrameMovValoresEgresos1.tsTarjeta.TabVisible:=False;
  FrameMovValoresEgresos1.tsTransf.TabVisible :=False;

  pcDetalleResumen.ActivePageIndex := 0;
  IF NOT (Assigned(FormCarteraCheques)) THEN
    FormCarteraCheques := TFormCarteraCheques.Create(Application);


  AddClientDataSet(CDSResumenCab,DSPResumenCab);
  AddClientDataSet(CDSResumenDet,DSPResumenDet);
  AddClientDataSet(CDSRes_Iva,DSPRes_Iva);
  AddClientDataSet(CDSRes_IIBB,DSPRes_IIBB);
  AddClientDataSet(CDSMovTC,DSPMovTC);
  AddClientDataSet(CDSRes_Perc_IVA,DSPRes_Perc_IVA);
  AddClientDataSet(FormCarteraCheques.CDSCarteraChe,FormCarteraCheques.DSPCarteraChe);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCajaMov,FrameMovValoresEgresos1.DSPCajaMov);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovEfectivo,FrameMovValoresEgresos1.DSPMovEfectivo);
  AddClientDataSet(FrameMovValoresEgresos1.CDSCheques,FrameMovValoresEgresos1.DSPCheques);
  AddClientDataSet(FrameMovValoresEgresos1.CDSTransBco,FrameMovValoresEgresos1.DSPTransBco);
  AddClientDataSet(FrameMovValoresEgresos1.CDSChe3, FrameMovValoresEgresos1.DSPChe3);
  AddClientDataSet(FrameMovValoresEgresos1.CDSDebitos, FrameMovValoresEgresos1.DSPDebitos);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCompra, FrameMovValoresEgresos1.DSPMovTCCompra);
  AddClientDataSet(FrameMovValoresEgresos1.CDSMovTCCuota, FrameMovValoresEgresos1.DSPMovTCCuota);

//  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value   := 0;
//  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value := '';
//
//  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value        := 0;
//  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := 0;
//  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := 0;
//  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := 0;
//  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value := 0;
//  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Value  := 0;

  FrameMovValoresEgresos1.CDSChe3.Open;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;
  FrameMovValoresEgresos1.CDSCajaMov.Open;
  FrameMovValoresEgresos1.CDSCheques.Open;
  FrameMovValoresEgresos1.CDSTransBco.Open;
  FrameMovValoresEgresos1.CDSDebitos.Open;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.CDSChe3.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovEfectivo.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCajaMov.EmptyDataSet;
  FrameMovValoresEgresos1.CDSCheques.EmptyDataSet;
  FrameMovValoresEgresos1.CDSTransBco.EmptyDataSet;
  FrameMovValoresEgresos1.CDSDebitos.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCompra.EmptyDataSet;
  FrameMovValoresEgresos1.CDSMovTCCuota.EmptyDataSet;




  FrameMovValoresEgresos1.QCajaCab.Open;
  FrameMovValoresEgresos1.InicicalizaMascarasNumericas;

  CDSResumenCab.Open;
  CDSResumenDet.Open;
  CDSRes_Iva.Open;
  CDSRes_IIBB.Open;
  CDSMovTC.Open;
  CDSRes_Perc_IVA.Open;
  pnTotales.BevelInner:=bvNone;
  pnTotales.BevelOuter:=bvNone;
  Tabla:='Resumen_TC_cab';
  Campo:='id';
  FrameMovValoresEgresos1.ceCaja.Enabled:=DMMain_FD.ModificaCaja;
end;

procedure TFormResumentTC.dbgMovTcDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  inherited;
  IF CDSMovTC.FieldByName('Liquidada').Value = 'S' THEN
   dbgMovTc.Canvas.Font.Style := [fsStrikeout]
  ELSE
    dbgMovTc.Canvas.Font.Style := [];
  dbgMovTc.DefaultDrawColumnCell(Rect,DataCol,Column,State);
end;

procedure TFormResumentTC.dbgResDetDragDrop(Sender, Source: TObject; X,
  Y: Integer);
begin
  inherited;
  WITH (Source AS TDBGrid).DataSource.DataSet DO
    BEGIN
      if FieldByName('Liquidada').Value='N' Then
        begin
          CDSResumenDet.Insert;
          CDSResumenDetID_MOV_TCREDITO.Value   := FieldByName('Id').Value;
          CDSResumenDetIMPORTE.AsFloat         := FieldByName('Importe').AsFloat;
          CDSResumenDetFECHA_COMPRA.AsDateTime := FieldByName('Fecha_compra').AsDAteTime;
          CDSResumenDetID_CUPON.Value          := FieldByName('Id_Cupon').Value;
          if FieldByName('Numero_Cupon').AsString<>'' Then
            CDSResumenDetNRO_CUPON.Value       := FieldByName('Numero_Cupon').Value
          ELSE
            CDSResumenDetNRO_CUPON.Value       := 0;
          CDSResumenDetCUOTA.Value             := FieldByName('Cuota').Value;
          CDSResumenDet.Post;
        END
      ELSE
        begin
          ShowMessage('Ya esta acreditada... Verifique!!!');
//          sysutils.abort;
        end;
    END;
end;

procedure TFormResumentTC.dbgResDetDragOver(Sender, Source: TObject; X,
  Y: Integer; State: TDragState; var Accept: Boolean);
begin
  inherited;
  IF (Source = dbgMovTC) and (CDSMovTCLIQUIDADA.Value='N') THEN
    accept := True
  ELSE
    begin
      Accept := False;
    //  ShowMessage('operacion no valida...');
    end;
end;

procedure TFormResumentTC.CDSResumenDetAfterDelete(DataSet: TDataSet);
begin
  inherited;
 Calcular;
end;

procedure TFormResumentTC.CDSResumenDetAfterPost(DataSet: TDataSet);
begin
  inherited;
  IF CDSMovTc.Locate('Id',CDSResumenDetID_MOV_TCREDITO.Value, []) THEN
    BEGIN
      CDSMovTC.Edit;
      CDSMovTCLIQUIDADA.Value        :='S';
      CDSMovTC.Post;
    END;
  Calcular;
end;

procedure TFormResumentTC.CDSResumenDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  IF CDSMovTc.Locate('Id',CDSResumenDetID_MOV_TCREDITO.Value, []) THEN
    BEGIN
      CDSMovTC.Edit;
      CDSMovTCLIQUIDADA.Value:='N';
      CDSMovTC.Post;
    END;
  Calcular;
end;

procedure TFormResumentTC.CDSResumenDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSResumenDetID.Value       :=IBGResumenDet.IncrementFD(1);
  CDSResumenDetID_RESCAB.Value:=CDSResumenCabID.Value;
end;

procedure TFormResumentTC.dbgIvaColEnter(Sender: TObject);
begin
  inherited;
 if (dbgIva.SelectedIndex=1) or (dbgIva.SelectedIndex=2) Then
    dbgIva.SelectedIndex:=3;
end;

procedure TFormResumentTC.dbgIvaEditButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaIVA.Close;
  CDSBuscaIva.Open;
  comBuscadorIva.Execute;
  if comBuscadorIva.rOk Then
    CDSRes_IvaCODIGO_GRAVAMENSetText(CDSRes_IvaCODIGO_GRAVAMEN,IntToStr(comBuscadorIva.Id));
  CDSBuscaIva.Close;
end;

procedure TFormResumentTC.dbgIvaKeyDown(Sender: TObject; var Key: Word;
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

procedure TFormResumentTC.dbgIvaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgIva.SelectedIndex<4 Then
      dbgIva.SelectedIndex:= dbgIva.SelectedIndex+1;
end;

procedure TFormResumentTC.CDSRes_IvaAfterPost(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormResumentTC.CDSRes_IvaCODIGO_GRAVAMENSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSRes_Iva.State =dsbrowse Then CDSRes_Iva.Edit;
      Sender.AsString:=Text;
      if Not(AsignaIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TFormResumentTC.CDSRes_IvaIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Trim(CDSRes_IvaCODIGO_GRAVAMEN.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSRes_IvaTASA.AsFloat>0 then
        CDSRes_IvaNETO.AsFloat := Sender.AsFloat*(100/CDSRes_IvaTASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormResumentTC.dbgPercepcionIBColEnter(Sender: TObject);
begin
  inherited;
 if (dbgPercepcionIB.SelectedIndex=1) or (dbgPercepcionIB.SelectedIndex=2) Then
    dbgPercepcionIB.SelectedIndex:=3;

end;

procedure TFormResumentTC.dbgPercepcionIBEditButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaPercepIIBB.Close;
  CDSBuscaPercepIIBB.Open;
  comBuscadorPercepcionIB.Execute;
  if comBuscadorPercepcionIB.rOk Then
    CDSRes_IIBBCODIGO_PERCEPCIONSetText(CDSRes_IIBBCODIGO_PERCEPCION,IntToStr(comBuscadorPercepcionIB.Id));
  CDSBuscaPercepIIBB.Close;
end;

procedure TFormResumentTC.dbgPercepcionIBKeyDown(Sender: TObject;
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

procedure TFormResumentTC.dbgPercepcionIBKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgPercepcionIB.SelectedIndex<4 Then
      dbgPercepcionIB.SelectedIndex:= dbgPercepcionIB.SelectedIndex+1;
end;

procedure TFormResumentTC.CDSRes_IIBBAfterPost(DataSet: TDataSet);
begin
  inherited;
Calcular;
end;

procedure TFormResumentTC.CDSRes_IIBBCODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: String);
begin
  inherited;
  if (Text<>#13) and (Text<>'') Then
    begin
      if CDSRes_IIBB.State =dsbrowse Then CDSRes_IIBB.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIB(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    END;
end;

procedure TFormResumentTC.CDSRes_IIBBIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
 if (Trim(CDSRes_IIBBCODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSRes_IIBBTASA.AsFloat>0 then
        CDSRes_IIBBNETO.AsFloat := Sender.AsFloat*(100/CDSRes_IIBBTASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormResumentTC.CDSRes_IvaNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSRes_IvaCODIGO_GRAVAMEN.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSRes_IvaIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSRes_IvaTASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormResumentTC.CDSRes_IvaNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRes_IvaID_RES.Value      := CDSResumenCabID.Value;
  CDSRes_IvaID_IMPUESTO.Value := IBGIVA.IncrementFD(1);
  CDSRes_IvaNETO.AsFloat      :=0;
  CDSRes_IvaTASA.AsFloat      :=0;
  CDSRes_IvaIMPORTE.AsFloat   :=0;

end;

procedure TFormResumentTC.CDSRes_Perc_IVAAfterPost(DataSet: TDataSet);
begin
  inherited;
  Calcular;
end;

procedure TFormResumentTC.CDSRes_Perc_IVACODIGO_PERCEPCIONSetText(
  Sender: TField; const Text: string);
begin
  inherited;
  if (Text<>'') and (Text<>#13) then
    begin
      if CDSRes_Perc_IVA.State=dsBrowse then CDSRes_Perc_IVA.Edit;
      Sender.AsString:=Text;
      if Not(AsignaPrecepcionIva(Sender.AsInteger)) Then
        begin
          ShowMessage('Dato No Valido');
          Sender.Clear;
        end;
    end;
end;

procedure TFormResumentTC.CDSRes_Perc_IVAIMPORTESetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Trim(CDSRes_Perc_IVACODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      if CDSRes_Perc_IVATASA.AsFloat>0 then
        CDSRes_Perc_IVANETO.AsFloat := Sender.AsFloat*(100/CDSRes_Perc_IVATASA.AsFloat);
      Calcular;
    end;
end;

procedure TFormResumentTC.CDSRes_Perc_IVANETOSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  if (Trim(CDSRes_Perc_IVACODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSRes_Perc_IVAIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSRes_Perc_IVATASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormResumentTC.CDSRes_Perc_IVANewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRes_Perc_IVAID_RES.Value        := CDSResumenCabID.Value;
  CDSRes_Perc_IVAID_PERCEPCION.Value := IbgPrec_IVA.IncrementFD(1);
  CDSRes_Perc_IVANETO.AsFloat        := 0;
  CDSRes_Perc_IVATASA.AsFloat        := 0;
  CDSRes_Perc_IVAIMPORTE.AsFloat     := 0;
  CDSRes_Perc_IVACODIGOREGIMEN.Value := -1;

end;

procedure TFormResumentTC.CDSRes_IIBBNETOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  if (Trim(CDSRes_IIBBCODIGO_PERCEPCION.AsString)<>'') then
    begin
      Sender.AsString:=Text;
      CDSRes_IIBBIMPORTE.AsFloat:= Moneda3D(' ','0.00',CDSRes_IIBBTASA.AsFloat*Sender.AsFloat*0.01);
      Calcular;
    end;
end;

procedure TFormResumentTC.CDSRes_IIBBNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRes_IIBBID_RES.Value        := CDSResumenCabID.Value;
  CDSRes_IIBBID_PERCEPCION.Value := IBGIVA.IncrementFD(1);
  CDSRes_IIBBNETO.AsFloat        :=0;
  CDSRes_IIBBTASA.AsFloat        :=0;
  CDSRes_IIBBIMPORTE.AsFloat     :=0;

end;

procedure TFormResumentTC.CancelarExecute(Sender: TObject);
begin

  CDSMovTC.Close;
  CDSMovTC.Params.ParamByName('id_TC').Clear;
  CDSMovTC.Open;

  CDSResumenCab.Close;
  CDSResumenCab.Params.ParamByName('id').Clear;
  CDSResumenCab.Open;

  CDSResumenDet.Close;
  CDSResumenDet.Params.ParamByName('id').Clear;
  CDSResumenDet.Open;

  CDSRes_IIBB.Close;
  CDSRes_IIBB.Params.ParamByName('id').Clear;
  CDSRes_IIBB.Open;

  CDSRes_Iva.Close;
  CDSRes_Iva.Params.ParamByName('id').Clear;
  CDSRes_Iva.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FrameMovValoresEgresos1.Id_Caja           :=0;
  inherited;
  btNuevo.SetFocus;

end;

procedure TFormResumentTC.pcDetalleResumenEnter(Sender: TObject);
begin
  inherited;
 IF (dbcTarjeta.Text = '') OR  (dbFechaFiscal.Text[1] = ' ') OR
    (dbFecha.Text[1] = ' ')  THEN
      BEGIN
        ShowMessage('Datos en la Cabecera Incompletos....');
        IF pcDetalleResumen.ActivePageIndex <> 0 THEN
          pcDetalleResumen.ActivePageIndex := 0;
        dbFecha.SetFocus;
      END;
end;

procedure TFormResumentTC.pcDetalleResumenChange(Sender: TObject);
begin
  inherited;
  if DSBase.State<>dsBrowse Then
    begin
    WITH FrameMovValoresEgresos1 DO
      BEGIN
        if (DSBase.State=dsInsert) and (ceCaja.Text='') Then
          begin
            QCajaCab.Close;
            QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
            QCajaCab.Open;
            IF NOT (QCajaCab.IsEmpty) THEN
              BEGIN
                ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                Id_Caja            := QCajaCabID_CAJA.Value;
                id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
              end;
          end;
        TipoCpbte      := CDSResumenCabTIPOCPBTE.Value;
        TipoOperacion  := 'E';
        ClaseCpbte     := CDSResumenCabCLASECPBTE.Value;
        NroCpbte       := CDSResumenCabNUMEROCPBTE.Value;
        FechaOperacion := CDSResumenCabFECHA.AsDateTime;
        IdCpbte        := CDSResumenCabID.Value;
        Origen         := CDSResumenCabNOMBRE.Value;
      END;
    end;
end;

procedure TFormResumentTC.AgregarExecute(Sender: TObject);
begin
  FormCarteraCheques.CDSCarteraChe.Close;
  FormCarteraCheques.CDSCarteraChe.OPen; //reabro la cartera d cheques

  CDSMovTC.Close;
  CDSMovTC.Params.ParamByName('id_TC').Clear;
  CDSMovTC.Open;

  CDSResumenCab.Close;
  CDSResumenCab.Params.ParamByName('id').Clear;
  CDSResumenCab.Open;

  CDSResumenDet.Close;
  CDSResumenDet.Params.ParamByName('id').Clear;
  CDSResumenDet.Open;

  CDSRes_IIBB.Close;
  CDSRes_IIBB.Params.ParamByName('id').Clear;
  CDSRes_IIBB.Open;

  CDSRes_Iva.Close;
  CDSRes_Iva.Params.ParamByName('id').Clear;
  CDSRes_Iva.Open;

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
  FrameMovValoresEgresos1.CDSCajaMov.Open;


  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :='';
  FrameMovValoresEgresos1.edMuestraCaja.Text:='';
  FrameMovValoresEgresos1.Id_Caja           :=0;

  inherited;
  FrameMovValoresEgresos1.SumaValores:=0;
  dbFecha.SetFocus;
end;

procedure TFormResumentTC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Close;


  FrameMovValoresEgresos1.QCajaCab.Close;

  CDSResumenCab.Close;
  CDSResumenDet.Close;
  CDSRes_Iva.Close;
  CDSRes_IIBB.Close;
  CDSMovTC.Close;
  CDSRes_Perc_IVA.Close;
  Action:=caFree;
end;

procedure TFormResumentTC.FormDestroy(Sender: TObject);
begin
  inherited;
  FormResumentTC:=nil;
end;

procedure TFormResumentTC.FrameMovValoresEgresos1CDSCajaMovAfterDelete(
  DataSet: TDataSet);
var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= CDSResumenCabTOTAL.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(',0.00',aux);
end;

procedure TFormResumentTC.FrameMovValoresEgresos1CDSCajaMovAfterPost(
  DataSet: TDataSet);
var aux:real;
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovAfterPost(DataSet);
  aux:= CDSResumenCabTOTAL.AsFloat -( FrameMovValoresEgresos1.SumaValores );
  FrameMovValoresEgresos1.lbResto.Caption:= FormatFloat(',0.00',aux);
end;

procedure TFormResumentTC.FrameMovValoresEgresos1CDSCajaMovBeforeDelete(
  DataSet: TDataSet);
begin
  inherited;
  FrameMovValoresEgresos1.CDSCajaMovBeforeDelete(DataSet);
end;

procedure TFormResumentTC.ConfirmaExecute(Sender: TObject);
begin
 // if CDSResumenCab.State in [dsInsert,dsEdit] Then
 //   CDSResumenCab.Post;
  if CDSResumenDet.State in [dsInsert,dsEdit] Then
    CDSResumenDet.Post;
  if CDSRes_Iva.State in [dsInsert,dsEdit] Then
    CDSRes_Iva.Post;
  if CDSRes_IIBB.State in [dsInsert,dsEdit] Then
    CDSRes_IIBB.Post;
  if CDSMovTC.State in [dsInsert,dsEdit] Then
    CDSMovTC.Post;
  DatoNew:=CDSResumenCabID.AsString;
  if FrameMovValoresEgresos1.SumaValores<=0 Then
    begin
      WITH FrameMovValoresEgresos1 DO
        begin
          pcDetalleResumen.ActivePageIndex:=1;
          if (DSBase.State=dsInsert) then
            begin
              QCajaCab.Close;
              QCajaCab.ParamByName('Id').Value := CajaPorDefecto;
              QCajaCab.Open;
              if QCajaCab.Fields[0].AsString='' Then
                Raise Exception.Create('No Hay caja ingresada para terminar la operación....');
              IF NOT (QCajaCab.IsEmpty) THEN
                BEGIN
                  ceCaja.Text        := QCajaCabID_CUENTA_CAJA.AsString;
                  edMuestraCaja.Text := QCajaCabMUESTRACTACAJA.Value;
                  Id_Caja            := QCajaCabID_CAJA.Value;
                  id_cuenta_caja     := QCajaCabID_CUENTA_CAJA.AsInteger;
                  FechaCaja          := QCajaCabFECHA_INCIO.AsDateTime;
                end;
            end;
          TipoCpbte      := CDSResumenCabTIPOCPBTE.Value;
          TipoOperacion  := 'E';
          ClaseCpbte     := CDSResumenCabCLASECPBTE.Value;
          NroCpbte       := CDSResumenCabNUMEROCPBTE.Value;
          FechaOperacion := CDSResumenCabFECHA.AsDateTime;
          IdCpbte        := CDSResumenCabID.Value;
          Origen         := CDSResumenCabNOMBRE.Value;

          CDSCajaMov.Insert;
          CDSCajaMovHABER.AsFloat        := CDSResumenCabTOTAL.AsFloat;
          CDSCajaMovDEBE.AsFloat         := 0;
          CDSFormaPagoEfec.Close;
          CDSFormaPagoEfec.Open;
          CDSFormaPagoEfec.First;
          CDSCajaMovID_TPAGO.Value       := 1;
          CDSCajaMovID_FPAGO.Value       := CDSFormaPagoEfecID_FPAGO.Value;
          CDSCajaMovUNIDADES.AsFloat     := CDSResumenCabTOTAL.AsFloat;
          CDSCajaMovCOTIZACION.Value     := CDSFormaPagoEfecCOTIZACION.Value;
          CDSCajaMovCLASE_COMPROB.Value  := ClaseCpbte;
          CDSCajaMovID_CUENTA_CAJA.Value := id_cuenta_caja;
          CDSCajaMovMONEDA.Value         := CDSFormaPagoEfecMONEDA.Value;
          CDSFormaPagoEfec.Close;
          CDSMovEfectivo.Insert;
          CDSMovEfectivoID_EFECTIVO.Value    := IBGId_Efectivo.IncrementFD(1);
          CDSMovEfectivoID_CAJA.Value        := CDSCajaMovID_CAJA.Value;
          CDSMovEfectivoID_MOV_CAJA.Value    := CDSCajaMovID_MOV_CAJA.Value;
          CDSMovEfectivoID_FPAGO.Value       := CDSCajaMovID_FPAGO.Value;
          CDSMovEfectivoCOTIZACION.Value     := CDSCajaMovCOTIZACION.Value;
          CDSMovEfectivoUNIDADES.Value       := CDSCajaMovUNIDADES.Value;
          CDSMovEfectivoIMPORTE.AsFloat      := CDSResumenCabTOTAL.AsFloat;
          CDSMovEfectivoID_CUENTA_CAJA.Value := CDSCajaMovID_CUENTA_CAJA.Value;
          CDSMovEfectivoMONEDA.Value         := CDSCajaMovMONEDA.Value;
          CDSMovEfectivo.Post;
          pcDetalleResumen.ActivePageIndex:=0;
        END;
    end;
  if CDSResumenCab.State in [dsInsert,dsEdit] Then
    CDSResumenCab.Post;

  inherited;
  Recuperar.Execute;
  pcDetalleResumen.ActivePageIndex:=0;
  btNuevo.SetFocus;
end;

procedure TFormResumentTC.RecuperarExecute(Sender: TObject);
VAR y,m,d:word;
begin
  inherited;

  CDSResumenCab.Close;
  CDSResumenCab.Params.ParamByName('id').Value    :=StrToInt(DatoNew);
  CDSResumenCab.Open;

  CDSResumenDet.Close;
  CDSResumenDet.Params.ParamByName('id').Value    :=StrToInt(DatoNew);
  CDSResumenDet.Open;

  CDSRes_IIBB.Close;
  CDSRes_IIBB.Params.ParamByName('id').Value      :=StrToInt(DatoNew);
  CDSRes_IIBB.Open;

  CDSRes_Iva.Close;
  CDSRes_Iva.Params.ParamByName('id').Value       :=StrToInt(DatoNew);
  CDSRes_Iva.Open;

  CDSRes_Perc_IVA.Close;
  CDSRes_Perc_IVA.Params.ParamByName('id').Value  :=StrToInt(DatoNew);
  CDSRes_Perc_IVA.Open;

  FrameMovValoresEgresos1.TipoOperacion:='E';

  FrameMovValoresEgresos1.CDSCajaMov.Close;
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Value:=StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Value:='RS';
  FrameMovValoresEgresos1.CDSCajaMov.Open;

  FrameMovValoresEgresos1.ceCaja.Text       :=FrameMovValoresEgresos1.CDSCajaMovMUESTRAIDCTACAJA.AsString;
  FrameMovValoresEgresos1.edMuestraCaja.Text:=FrameMovValoresEgresos1.CDSCajaMovMUESTRACAJA.AsString;
  FrameMovValoresEgresos1.Id_Caja           :=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
  FrameMovValoresEgresos1.id_Cuenta_caja    :=FrameMovValoresEgresos1.CDSCajaMovID_CUENTA_CAJA.Value;
  FrameMovValoresEgresos1.FechaCaja         :=FrameMovValoresEgresos1.CDSCajaMovFECHA_CAJA.AsDateTime;

  FrameMovValoresEgresos1.CDSChe3.Close;
  FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Value       := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSChe3.Open;

  FrameMovValoresEgresos1.CDSMovEfectivo.Close;
  FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSMovEfectivo.Open;

  FrameMovValoresEgresos1.CDSCheques.Close;
  FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSCheques.Open;

  FrameMovValoresEgresos1.CDSTransBco.Close;
  FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Value    := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSTransBco.Open;

  FrameMovValoresEgresos1.CDSDebitos.Close;
  FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Value     := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSDebitos.Open;

  FrameMovValoresEgresos1.CDSMovTCCompra.Close;
  FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Value := StrToInt(DatoNew);
  FrameMovValoresEgresos1.CDSMovTCCompra.Open;

  FrameMovValoresEgresos1.CDSMovTCCuota.Close;
  FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Value  := FrameMovValoresEgresoS1.CDSCajaMovID_MOV_CAJA.Value;
  FrameMovValoresEgresos1.CDSMovTCCuota.Open;

  FrameMovValoresEgresos1.CalcularValores;

  // segun el periodo fiscal habilito o no para borrar y modificar
  begin
    DecodeDate(CDSResumenCabFECHA_FISCAL.AsDateTime,y,m,d);
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('fecha').Value:=CDSResumenCabFECHA_FISCAL.AsDateTime;
    DMStoreProcedure.QVerificaPeriodoFiscal.ParamByName('compra_venta').Value:='C';
    DMStoreProcedure.QVerificaPeriodoFiscal.Open;
    if DMStoreProcedure.QVerificaPeriodoFiscal.Fields[0].Value='C' Then
      begin
        sbEstado.SimpleText       := 'Este comprobante no se puede Borrar ni modificar, este período fiscal fue cerrado';
        dbgResDet.ReadOnly        := True;
        dbgIva.ReadOnly           := True;
        dbgPercepcionIB.ReadOnly  := True;
        Borrar.Enabled            := False;
      end
    else
      begin
     // VERIFICO SI LA CAJA ESTA CERRADA
        QCaja.Close;
        QCaja.ParamByName('id').Value:=FrameMovValoresEgresos1.CDSCajaMovID_CAJA.Value;
        QCaja.Open;
        if QCajaESTADO.Value=1 Then
          begin
            sbEstado.SimpleText       := 'La caja de este comprobante está cerrada, por lo que no se puede modificar ni borrar';
            dbgResDet.ReadOnly        := True;
            dbgIva.ReadOnly           := True;
            dbgPercepcionIB.ReadOnly  := True;
            Borrar.Enabled    :=False;
          end
        else
          begin
            Borrar.Enabled    :=True;
          end;
        QCaja.Close;
      end;
    DMStoreProcedure.QVerificaPeriodoFiscal.Close;
    DatoNew:=''+DatoNew+'';
  end;

end;

procedure TFormResumentTC.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaResumem.Close;
  CDSBuscaResumem.Open;
  comBuscadorBase.Execute;
  if comBuscadorBase.rOk Then
    begin
      DatoNew:= IntToStr(comBuscadorBase.Id);
      Recuperar.Execute;
    end;
  CDSBuscaResumem.Close;
end;

procedure TFormResumentTC.BuscarPercIVAExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaPercepIVA.Close;
  CDSBuscaPercepIVA.Open;
  comBuscadorPercepcionIva.Execute;
  if ComBuscadorPercepcionIVA.rOk then
    CDSRes_Perc_IVACODIGO_PERCEPCIONSetText(CDSRes_Perc_IVACODIGO_PERCEPCION, IntToStr(comBuscadorPercepcionIva.Id));
  CDSBuscaPercepIVA.Close;
end;

procedure TFormResumentTC.BuscarsucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSResumenCabSUCURSALSetText(CDSResumenCabSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormResumentTC.dbgPercepcionIVAColEnter(Sender: TObject);
begin
  inherited;
  if (dbgPercepcionIVA.SelectedIndex=1) or (dbgPercepcionIVA.SelectedIndex=2) Then
    dbgPercepcionIVA.SelectedIndex:=3;

end;

procedure TFormResumentTC.dbgPercepcionIVAKeyDown(Sender: TObject;
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

procedure TFormResumentTC.dbgPercepcionIVAKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 Then
    if dbgPercepcionIVA.SelectedIndex<4 Then
      dbgPercepcionIVA.SelectedIndex:= dbgPercepcionIVA.SelectedIndex+1;
end;

procedure TFormResumentTC.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled      :=True;
  pnCabecera.Enabled       :=DSBase.State IN [dsInsert,dsEdit]; 
  dbgMovTc.ReadOnly        :=DSBase.DataSet.State=dsBrowse;
  dbgResDet.ReadOnly       :=DSBase.DataSet.State=dsBrowse;
  dbgIva.ReadOnly          :=DSBase.DataSet.State=dsBrowse;
  dbgPercepcionIB.ReadOnly :=DSBase.DataSet.State=dsBrowse;
  FrameMovValoresEgresos1.dbgMovimientos.ReadOnly := DSBase.State IN [dsBrowse];
  FrameMovValoresEgresos1.tsEfectivo.Enabled      := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsChe3.Enabled          := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsCheques.Enabled       := DSBase.State IN [dsInsert,dsEdit];
  FrameMovValoresEgresos1.tsDebito.Enabled        := DSBase.State IN [dsInsert,dsEdit];
  If DMMain_FD.ModificaCaja Then
    FrameMovValoresEgresos1.ceCaja.Enabled        := DSBase.State IN [dsInsert];

end;

procedure TFormResumentTC.BorrarExecute(Sender: TObject);
begin
//  inherited;
    if (DMMain_FD.UsuarioAdministrador=True) Then
    begin
      if MessageDlg('Está por hacer una opreación de borrado.. Está seguro de hacerlo?', mtInformation, [mbYes, mbNo], 0) = mrYes Then
        if Not(CDSResumenCab.IsEmpty) Then
          begin
            DMMain_FD.fdcGestion.StartTransaction;
            try
              CDSResumenCab.Delete;
              CDSResumenCab.ApplyUpdates(0);
              DMMain_FD.fdcGestion.Commit;

              CDSMovTC.Close;
              CDSMovTC.Params.ParamByName('id_TC').Clear;
              CDSMovTC.Open;

              CDSResumenCab.Close;
              CDSResumenCab.Params.ParamByName('id').Clear;
              CDSResumenCab.Open;

              CDSResumenDet.Close;
              CDSResumenDet.Params.ParamByName('id').Clear;
              CDSResumenDet.Open;

              CDSRes_IIBB.Close;
              CDSRes_IIBB.Params.ParamByName('id').Clear;
              CDSRes_IIBB.Open;

              CDSRes_Iva.Close;
              CDSRes_Iva.Params.ParamByName('id').Clear;
              CDSRes_Iva.Open;

              FrameMovValoresEgresos1.CDSCajaMov.Close;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Params.ParamByName('Tipo').Clear;
              FrameMovValoresEgresos1.CDSCajaMov.Open;


              FrameMovValoresEgresos1.CDSChe3.Close;
              FrameMovValoresEgresos1.CDSChe3.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSChe3.Open;

              FrameMovValoresEgresos1.CDSMovEfectivo.Close;
              FrameMovValoresEgresos1.CDSMovEfectivo.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovEfectivo.Open;

              FrameMovValoresEgresos1.CDSCheques.Close;
              FrameMovValoresEgresos1.CDSCheques.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSCheques.Open;

              FrameMovValoresEgresos1.CDSTransBco.Close;
              FrameMovValoresEgresos1.CDSTransBco.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSTransBco.Open;

              FrameMovValoresEgresos1.CDSDebitos.Close;
              FrameMovValoresEgresos1.CDSDebitos.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSDebitos.Open;

              FrameMovValoresEgresos1.CDSMovTCCompra.Close;
              FrameMovValoresEgresos1.CDSMovTCCompra.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovTCCompra.Open;

              FrameMovValoresEgresos1.CDSMovTCCuota.Close;
              FrameMovValoresEgresos1.CDSMovTCCuota.Params.ParamByName('id').Clear;
              FrameMovValoresEgresos1.CDSMovTCCuota.Open;

              FrameMovValoresEgresos1.ceCaja.Text       :='';
              FrameMovValoresEgresos1.edMuestraCaja.Text:='';
              FrameMovValoresEgresos1.Id_Caja           :=0;
            except
              DMMain_FD.fdcGestion.Rollback;
              ShowMessage('Transaccion no finalizada....!');
            end;
          end;
    end;

end;

end.