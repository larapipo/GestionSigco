unit UMuestraCpbteCtaCteCompra;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  JvExControls, JvLabel, JvToolEdit,
  JvDBControls, JvExMask, DB, DBClient, Provider, Grids, DBGrids,
  ExtCtrls, StdCtrls, ComCtrls, Mask, DBCtrls;

type
  TFormMuestraCpbteCtaCteCompra = class(TForm)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeCondCompra: TDBEdit;
    dbeOCompra: TDBEdit;
    dbeDeposito: TDBEdit;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    Bevel48: TBevel;
    dbtTotal: TDBText;
    dbeObs1: TDBEdit;
    dbeObs2: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    dbgCondPago: TDBGrid;
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
    dbgPrecepcionIVA: TDBGrid;
    dbeDscto: TDBEdit;
    dbgPercepcionIB: TDBGrid;
    dbgIva: TDBGrid;
    DSPCondPago: TDataSetProvider;
    DSPPercepcionIVA: TDataSetProvider;
    DSPPercepcionIB: TDataSetProvider;
    DSPCompCab: TDataSetProvider;
    DSPCompDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    Panel3: TPanel;
    lbReducida: TLabel;
    DSCompCab: TDataSource;
    DSCondPago: TDataSource;
    DSPercepcionIVA: TDataSource;
    DSPercepcionIB: TDataSource;
    DSCompDet: TDataSource;
    DSImpuestos: TDataSource;
    RxLabel58: TJvLabel;
    RxLabel60: TJvLabel;
    RxLabel61: TJvLabel;
    RxLabel63: TJvLabel;
    RxLabel6: TJvLabel;
    RxLabel8: TJvLabel;
    RxLabel1: TJvLabel;
    RxLabel9: TJvLabel;
    RxLabel59: TJvLabel;
    RxLabel10: TJvLabel;
    RxLabel5: TJvLabel;
    rklCondicionPago: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    RxLabel4: TJvLabel;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxDBECondCompra: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    FechaCompra: TJvDBDateEdit;
    FechaVencimiento: TJvDBDateEdit;
    FechaFiscal: TJvDBDateEdit;
    CDSCondPago: TClientDataSet;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIB: TClientDataSet;
    CDSCompCab: TClientDataSet;
    CDSCompDet: TClientDataSet;
    CDSImpuestos: TClientDataSet;
    CDSCompCabID_FC: TIntegerField;
    CDSCompCabTIPOCPBTE: TStringField;
    CDSCompCabCLASECPBTE: TStringField;
    CDSCompCabNROCPBTE: TStringField;
    CDSCompCabCODIGO: TStringField;
    CDSCompCabLETRAFAC: TStringField;
    CDSCompCabSUCFAC: TStringField;
    CDSCompCabNUMEROFAC: TStringField;
    CDSCompCabNOMBRE: TStringField;
    CDSCompCabRAZONSOCIAL: TStringField;
    CDSCompCabDIRECCION: TStringField;
    CDSCompCabCPOSTAL: TStringField;
    CDSCompCabLOCALIDAD: TStringField;
    CDSCompCabTIPOIVA: TIntegerField;
    CDSCompCabCUIT: TStringField;
    CDSCompCabFECHACOMPRA: TSQLTimeStampField;
    CDSCompCabFECHAVTO: TSQLTimeStampField;
    CDSCompCabCONDICIONCOMPRA: TIntegerField;
    CDSCompCabANULADO: TStringField;
    CDSCompCabORDENCOMPRA: TStringField;
    CDSCompCabN_OPERACION2: TFMTBCDField;
    CDSCompCabNETOGRAV1: TFMTBCDField;
    CDSCompCabDSTO: TFMTBCDField;
    CDSCompCabDSTOIMPORTE: TFMTBCDField;
    CDSCompCabNETOGRAV2: TFMTBCDField;
    CDSCompCabNETOEXEN1: TFMTBCDField;
    CDSCompCabNETOEXEN2: TFMTBCDField;
    CDSCompCabIMPORTEEXCLUIDO2: TFMTBCDField;
    CDSCompCabIMPORTEEXCLUIDO1: TFMTBCDField;
    CDSCompCabTOTAL: TFMTBCDField;
    CDSCompCabDEBE: TFMTBCDField;
    CDSCompCabAPLICA: TStringField;
    CDSCompCabOBSERVACION1: TStringField;
    CDSCompCabOBSERVACION2: TStringField;
    CDSCompCabSUCURSALCOMPRA: TIntegerField;
    CDSCompCabZONA: TIntegerField;
    CDSCompCabDEPOSITO: TIntegerField;
    CDSCompCabDESGLOZAIVA: TStringField;
    CDSCompCabCALCULA_SOBRETASA: TStringField;
    CDSCompCabFECHAFISCAL: TSQLTimeStampField;
    CDSCompCabNETOMONOTRIBUTO1: TFMTBCDField;
    CDSCompCabNETOMONOTRIBUTO2: TFMTBCDField;
    CDSCompCabCPBTE_INTERNO: TStringField;
    CDSCompCabINGRESA_A_CTACTE: TStringField;
    CDSCompCabINGRESA_LIBRO_IVA: TStringField;
    CDSCompCabREDUCIDA: TStringField;
    CDSCompCabTIPO_PROVEEDOR: TStringField;
    CDSCompCabJURIDICCION: TIntegerField;
    CDSCompCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    CDSCompCabFECHA_HORA: TSQLTimeStampField;
    CDSCompCabUSUARIO: TStringField;
    CDSCompCabTOTAL_UNIDADES: TFMTBCDField;
    CDSCompCabMONEDA_CPBTE: TIntegerField;
    CDSCompCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    CDSCompCabMUESTRACONDCOMPRA: TStringField;
    CDSCompCabMUESTRADEPOSITO: TStringField;
    CDSCompCabMUESTRASUCURSAL: TStringField;
    CDSCompCabMUESTRACOMPROBANTE: TStringField;
    CDSCompCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSCompCabMUESTRAMONEDACPBTE: TStringField;
    CDSCompCabMUESTRASIGNOMONEDACPBTE: TStringField;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosID_FCCOMPCAB: TIntegerField;
    CDSImpuestosNETO: TFMTBCDField;
    CDSImpuestosTASA: TFMTBCDField;
    CDSImpuestosIMPORTE: TFMTBCDField;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIVANETO: TFMTBCDField;
    CDSPercepcionIVATASA: TFMTBCDField;
    CDSPercepcionIVAIMPORTE: TFMTBCDField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    CDSPercepcionIBID_PERCEPCION: TIntegerField;
    CDSPercepcionIBCODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIBDETALLE: TStringField;
    CDSPercepcionIBID_FCCOMPCAB: TIntegerField;
    CDSPercepcionIBNETO: TFMTBCDField;
    CDSPercepcionIBTASA: TFMTBCDField;
    CDSPercepcionIBIMPORTE: TFMTBCDField;
    CDSPercepcionIBJURIDICION: TIntegerField;
    CDSCompDetID: TIntegerField;
    CDSCompDetID_CABFAC: TIntegerField;
    CDSCompDetTIPOCPBTE: TStringField;
    CDSCompDetCLASECPBTE: TStringField;
    CDSCompDetNROCPBTE: TStringField;
    CDSCompDetCODIGOPROVEEDOR: TStringField;
    CDSCompDetRENGLON: TFMTBCDField;
    CDSCompDetFECHACOMPRA: TSQLTimeStampField;
    CDSCompDetCODIGOARTICULO: TStringField;
    CDSCompDetDETALLE: TStringField;
    CDSCompDetUNIDAD: TStringField;
    CDSCompDetDESGLOZAIVA: TStringField;
    CDSCompDetMODO_GRAVAMEN: TStringField;
    CDSCompDetIVA_TASA: TFMTBCDField;
    CDSCompDetTIPOIVA_TASA: TIntegerField;
    CDSCompDetIVA_SOBRETASA: TFMTBCDField;
    CDSCompDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSCompDetDEPOSITO: TIntegerField;
    CDSCompDetMARGEN: TFMTBCDField;
    CDSCompDetAFECTA_STOCK: TStringField;
    CDSCompDetCALCULA_SOBRETASA: TStringField;
    CDSCompDetCOSTO_IMP_INTERNO: TFMTBCDField;
    CDSCompDetUNIDADES_IMP_INTERNOS: TFMTBCDField;
    CDSCompDetUNITARIO_IMP_INTERNO: TFMTBCDField;
    CDSCompDetCON_NRO_SERIE: TStringField;
    CDSCompDetID_RECEPCION_CAB: TIntegerField;
    CDSCompDetID_RECEPCION_DET: TIntegerField;
    CDSCompDetNRORECEPCION: TStringField;
    CDSCompDetGRAVADO_IB: TStringField;
    CDSCompDetID_MONEDA: TIntegerField;
    CDSCompDetCOTIZACION: TFMTBCDField;
    CDSCompDetMUESTRAMONEDA: TStringField;
    CDSCondPagoID: TIntegerField;
    CDSCondPagoID_FC: TIntegerField;
    CDSCondPagoTIPOCPBTE: TStringField;
    CDSCondPagoNROCPBTE: TStringField;
    CDSCondPagoCODIGO: TStringField;
    CDSCondPagoITEM: TIntegerField;
    CDSCondPagoFECHA: TSQLTimeStampField;
    CDSCondPagoDSCTO: TFMTBCDField;
    CDSCondPagoIMPORTE: TFMTBCDField;
    CDSCondPagoCLASECPBTE: TStringField;
    CDSCompDetCANTIDAD: TFMTBCDField;
    CDSCompDetDESCUENTO: TFMTBCDField;
    CDSCompDetTOTAL: TFMTBCDField;
    CDSCompDetUNIDADES_TOTAL: TFloatField;
    CDSCompDetUNIDADES_EXENTO: TFloatField;
    CDSCompDetUNIDADES_GRAVADO: TFloatField;
    CDSCompDetUNITARIO_TOTAL: TFloatField;
    CDSCompDetUNITARIO_EXENTO: TFloatField;
    CDSCompDetUNITARIO_GRAVADO: TFloatField;
    CDSCompDetCOSTO_TOTAL: TFloatField;
    CDSCompDetCOSTO_EXENTO: TFloatField;
    CDSCompDetCOSTO_GRAVADO: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    id:Integer;
    Tipo:String;
    { Public declarations }
  end;

var
  FormMuestraCpbteCtaCteCompra: TFormMuestraCpbteCtaCteCompra;

implementation

uses UDMain_FD;

{$R *.DFM}

procedure TFormMuestraCpbteCtaCteCompra.FormCreate(Sender: TObject);
begin
  AutoSize:=True;
  pcDetalleFactura.ActivePageIndex:=0;
end;

procedure TFormMuestraCpbteCtaCteCompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
end;

procedure TFormMuestraCpbteCtaCteCompra.FormDestroy(Sender: TObject);
begin
  FormMuestraCpbteCtaCteCompra:=nil;
end;

procedure TFormMuestraCpbteCtaCteCompra.FormShow(Sender: TObject);
begin
  CDSCompCab.close;
  CDSCompCab.Params.ParamByName('TipoCpbte').Value :=Tipo;
  CDSCompCab.Params.ParamByName('id').Value        :=Id;
  CDSCompCab.Open;
  CDSCompDet.Close;
  CDSCompDet.Params.ParamByName('id').Value:=Id;
  CDSCompDet.Open;
  lbReducida.Visible:=CDSCompCabREDUCIDA.Value='S';
  CDSImpuestos.Close;
  CDSImpuestos.Open;
  CDSPercepcionIva.Close;
  CDSPercepcionIVA.Open;
  CDSPercepcionIB.Close;
  CDSPercepcionIB.Open;
  CDSCondPago.Close;
  CDSCondPago.Open;
end;

end.
