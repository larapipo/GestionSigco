unit DMCierreCajaGeneral;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatosCierreCajaGeneral = class(TDataModule)
    QCaja: TFDQuery;
    DSPCaja: TDataSetProvider;
    CDSCaja: TClientDataSet;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaID_CUENTA_CAJA: TIntegerField;
    CDSCajaFECHA_INCIO: TSQLTimeStampField;
    CDSCajaFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaSALDO_INCIAL: TFloatField;
    CDSCajaESTADO: TIntegerField;
    CDSCajaOBS: TMemoField;
    CDSCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRACTACAJA: TStringField;
    DSPSucrusal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    QIdCaja: TFDQuery;
    QIdCajaID_CAJA: TIntegerField;
    QIdCajaID_CUENTA_CAJA: TIntegerField;
    QCliente: TFDQuery;
    QClienteCODIGO: TStringField;
    QClienteNOMBRE: TStringField;
    QCpbteVta: TFDQuery;
    QCpbteVtaID_COMPROBANTE: TIntegerField;
    QCpbteVtaTIPO_COMPROB: TStringField;
    QCpbteVtaCLASE_COMPROB: TStringField;
    QCpbteVtaDENOMINACION: TStringField;
    QCpbteVtaSUCURSAL: TIntegerField;
    QCpbteVtaLETRA: TStringField;
    QCpbteVtaPREFIJO: TStringField;
    QCpbteVtaNUMERARCION_PROPIA: TStringField;
    QCpbteVtaNUMERO: TStringField;
    QCpbteVtaTOMA_NRO_DE: TIntegerField;
    QCpbteVtaAFECTA_IVA: TStringField;
    QCpbteVtaAFECTA_CC: TStringField;
    QCpbteVtaDESGLOZA_IVA: TStringField;
    QCpbteVtaCOMPRA_VENTA: TStringField;
    QCpbteVtaCOPIAS: TIntegerField;
    QCpbteVtaREPORTE: TStringField;
    QCpbteVtaIMPRIME: TStringField;
    QCpbteVtaFISCAL: TStringField;
    QCpbteVtaNOMBREIMPRESORA: TStringField;
    QCpbteVtaPENDIENTEIMPRESION: TStringField;
    QCpbteVtaLINEAS_DETALLE: TSmallintField;
    QCpbteVtaCALCULA_IVA_ARTICULOS: TStringField;
    QCpbteVtaDEFECTO: TStringField;
    QCpbteVtaCAJA_DEFECTO: TIntegerField;
    QCpbteVtaDIVIDE_IVA: TStringField;
    QCpbteVtaFACTURAELECTRONICA: TStringField;
    QCpbteVtaEN_USO: TStringField;
    QCpbteVtaCODIGO_AFIP: TStringField;
    QCpbteVtaID_AJUSTECC: TIntegerField;
    QCpbteVtaCENTRO_COSTO: TIntegerField;
    QCpbteVtaFILTRO_COMPROBANTES: TStringField;
    QCpbteVtaDEPOSITO: TIntegerField;
    QCpbteVtaULTIMONRO: TIntegerField;
    QCpbteVtaEDITAR_NRO: TStringField;
    QCpbteVtaCONTROLADOR_NROREG: TStringField;
    QCpbteVtaUSAR_CAEA: TStringField;
    QCpbteVtaCAEA: TStringField;
    QCpbteVtaVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QCpbteVtaVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    QArticulo: TFDQuery;
    QArticuloCODIGO_STK: TStringField;
    QArticuloDETALLE_STK: TStringField;
    QBuscaPersonal: TFDQuery;
    DSPBuscaPersonal: TDataSetProvider;
    CDSBuscaPersonal: TClientDataSet;
    CDSBuscaPersonalNOMBRE: TStringField;
    CDSBuscaPersonalCODIGO: TStringField;
    CDSBuscaPersonalACTIVO: TStringField;
    QCpbteAdelantos: TFDQuery;
    QCpbteAdelantosID_COMPROBANTE: TIntegerField;
    QCpbteAdelantosTIPO_COMPROB: TStringField;
    QCpbteAdelantosCLASE_COMPROB: TStringField;
    QCpbteAdelantosDENOMINACION: TStringField;
    QCpbteAdelantosSUCURSAL: TIntegerField;
    QCpbteAdelantosLETRA: TStringField;
    QCpbteAdelantosPREFIJO: TStringField;
    QCpbteAdelantosNUMERO: TStringField;
    QCpbteEgreso: TFDQuery;
    QCpbteEgresoID_COMPROBANTE: TIntegerField;
    QCpbteEgresoTIPO_COMPROB: TStringField;
    QCpbteEgresoCLASE_COMPROB: TStringField;
    QCpbteEgresoDENOMINACION: TStringField;
    QCpbteEgresoSUCURSAL: TIntegerField;
    QCpbteEgresoLETRA: TStringField;
    QCpbteEgresoPREFIJO: TStringField;
    QCpbteEgresoNUMERARCION_PROPIA: TStringField;
    QCpbteEgresoNUMERO: TStringField;
    QCpbteEgresoTOMA_NRO_DE: TIntegerField;
    QCpbteEgresoAFECTA_IVA: TStringField;
    QCpbteEgresoAFECTA_CC: TStringField;
    QCpbteEgresoDESGLOZA_IVA: TStringField;
    QCpbteEgresoCOMPRA_VENTA: TStringField;
    QCpbteEgresoCOPIAS: TIntegerField;
    QCpbteEgresoREPORTE: TStringField;
    QCpbteEgresoIMPRIME: TStringField;
    QCpbteEgresoFISCAL: TStringField;
    QCpbteEgresoNOMBREIMPRESORA: TStringField;
    QCpbteEgresoPENDIENTEIMPRESION: TStringField;
    QCpbteEgresoLINEAS_DETALLE: TSmallintField;
    QCpbteEgresoCALCULA_IVA_ARTICULOS: TStringField;
    QCpbteEgresoDEFECTO: TStringField;
    QCpbteEgresoCAJA_DEFECTO: TIntegerField;
    QCpbteEgresoDIVIDE_IVA: TStringField;
    QCpbteEgresoFACTURAELECTRONICA: TStringField;
    QCpbteEgresoEN_USO: TStringField;
    QCpbteEgresoCODIGO_AFIP: TStringField;
    QCpbteEgresoID_AJUSTECC: TIntegerField;
    QCpbteEgresoCENTRO_COSTO: TIntegerField;
    QCpbteEgresoFILTRO_COMPROBANTES: TStringField;
    QCpbteEgresoDEPOSITO: TIntegerField;
    QCpbteEgresoULTIMONRO: TIntegerField;
    QCpbteEgresoEDITAR_NRO: TStringField;
    QCpbteEgresoCONTROLADOR_NROREG: TStringField;
    QCpbteEgresoUSAR_CAEA: TStringField;
    QCpbteEgresoCAEA: TStringField;
    QCpbteEgresoVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QCpbteEgresoVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    CDSCajaTx: TClientDataSet;
    QFormaPagoTC: TFDQuery;
    QFormaPagoTCID_FPAGO: TIntegerField;
    QComprobaTX: TFDQuery;
    DSPComprobaTx: TDataSetProvider;
    CDSComprobaTx: TClientDataSet;
    CDSComprobaTxID_COMPROBANTE: TIntegerField;
    CDSComprobaTxTIPO_COMPROB: TStringField;
    CDSComprobaTxCLASE_COMPROB: TStringField;
    CDSComprobaTxDENOMINACION: TStringField;
    CDSComprobaTxSUCURSAL: TIntegerField;
    CDSComprobaTxMUESTRASUCURSAL: TStringField;
    CDSCajaTxID_CAJA: TIntegerField;
    CDSCajaTxID_CUENTA_CAJA: TIntegerField;
    CDSCajaTxFECHA_INCIO: TSQLTimeStampField;
    CDSCajaTxFECHA_CIERRE: TSQLTimeStampField;
    CDSCajaTxSALDO_INCIAL: TFloatField;
    CDSCajaTxESTADO: TIntegerField;
    CDSCajaTxOBS: TMemoField;
    CDSCajaTxNUMEROCAJA: TIntegerField;
    CDSCajaTxMUESTRACTACAJA: TStringField;
    spCerrar_Caja: TFDStoredProc;
    QSaldoCajaActual: TFDQuery;
    QSaldoCajaActualMONEDA: TIntegerField;
    QSaldoCajaActualSALDO: TFloatField;
    QSaldoCajaActualDEBE: TFloatField;
    QSaldoCajaActualHABER: TFloatField;
    QSaldoCajaActualFPAGO: TSmallintField;
    QSaldoCajaActualTPAGO: TSmallintField;
    QSaldoCajaActualCOTIZACION: TFloatField;
    QSaldoCajaActualDISPONIBILIDAD: TFloatField;
    QSaldoCajaActualDETALLE: TStringField;
    QSucursal: TFDQuery;
    QSaldoIni: TFDQuery;
    QSaldoIniIMPORTE: TFloatField;
    QTarjetas: TFDQuery;
    spAgregarGasto: TFDStoredProc;
    spAgregarVale: TFDStoredProc;
    spAgregarGastoDetalle: TFDStoredProc;

  private
    { Private declarations }
  public
    { Pvarublic declarations }
  end;
var
  DatosCierreCajaGeneral: TDatosCierreCajaGeneral;

implementation

uses UDMain_FD;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
