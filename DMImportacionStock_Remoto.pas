unit DMImportacionStock_Remoto;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RemoteDB.Client.Dataset,
  RemoteDB.Client.Database, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB, Datasnap.DBClient, Datasnap.Provider;

type
  TDatosImportarStockRemoto = class(TDataModule)
    DSPMarcas: TDataSetProvider;
    CDSMarcas: TClientDataSet;
    CDSMarcasMARCA_STK: TStringField;
    CDSMarcasDESCRIPCION_MARCA: TStringField;
    CDSMarcasOBSERVACION_MARCA: TStringField;
    CDSStock: TClientDataSet;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockDETALLE_STK_ADICIONAL: TStringField;
    CDSStockCODIGO_BARRAS: TStringField;
    CDSStockRUBRO_STK: TStringField;
    CDSStockSUBRUBRO_STK: TStringField;
    CDSStockMARCA_STK: TStringField;
    CDSStockTASA_IVA: TIntegerField;
    CDSStockSOBRETASA_IVA: TIntegerField;
    CDSStockCOSTO_GRAVADO_STK: TFloatField;
    CDSStockCOSTO_IVA: TFloatField;
    CDSStockCOSTO_FINAL: TFloatField;
    CDSStockCOSTO_EXENTO_STK: TFloatField;
    CDSStockCOSTO_TOTAL_STK: TFloatField;
    CDSStockREEMPLAZO_STK: TStringField;
    CDSStockFIJACION_PRECIO_GRAVADO: TFloatField;
    CDSStockFIJACION_PRECIO_IVA: TFloatField;
    CDSStockFIJACION_PRECIO_FINAL: TFloatField;
    CDSStockFIJACION_PRECIO_EXENTO: TFloatField;
    CDSStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSStockFUAP: TSQLTimeStampField;
    CDSStockUNIDAD: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCODIGO_PROVEEDOR: TStringField;
    CDSStockCLASE_ARTICULO: TIntegerField;
    CDSStockMODO_GRAVAMEN: TStringField;
    CDSStockCON_IMP_INT: TStringField;
    CDSStockIMPUESTO_INTERNOS: TFloatField;
    CDSStockGRAVADO_IB: TStringField;
    CDSStockTASA_IB: TIntegerField;
    CDSStockACTUALIZACOSTO: TStringField;
    CDSStockDEPRODUCCION: TStringField;
    CDSStockPRODUCCIONDIRECTA: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSStockUSA_CODIGOBARRA: TStringField;
    CDSStockUNIDAD_ULTIMAUSADA: TStringField;
    CDSStockID_TABLAPRECIOS: TIntegerField;
    CDSStockID_TABLAPRECIOSDETALLE: TIntegerField;
    CDSStockCODIGO_PRECIO: TIntegerField;
    CDSStockFECHA_ALTA: TSQLTimeStampField;
    CDSStockCOSTO_GRAVADO_SOMBRA: TFloatField;
    CDSStockCOSTO_EXENTO_SOMBRA: TFloatField;
    CDSStockFECHA_ACT_SOMBRA: TSQLTimeStampField;
    CDSStockFECHA_ULTIMAVTA: TSQLTimeStampField;
    CDSStockMONEDA: TIntegerField;
    CDSStockCOSTO_GRAVADO_P: TFloatField;
    CDSStockCOSTO_EXENTO_P: TFloatField;
    CDSStockCOSTO_TOTAL_P: TFloatField;
    CDSStockPOSICION: TStringField;
    CDSStockPRESENTACION_UNIDAD: TStringField;
    CDSStockPRESENTACION_CANTIDAD: TFloatField;
    CDSStockEDITAPRECIO: TStringField;
    CDSStockEDITADETALLE: TStringField;
    CDSStockURL: TStringField;
    CDSStockFECHA_ULTIMA_COMPRA: TSQLTimeStampField;
    CDSStockCOMANDA: TStringField;
    CDSStockPORCENTAJE_SOBRECOSTO: TFloatField;
    CDSStockRUBRO_GASTO: TStringField;
    CDSStockRUBRO_CTA_GASTO: TStringField;
    CDSStockPUBLICAR_WEB: TStringField;
    CDSStockGTIA_MESES: TIntegerField;
    CDSStockGARANTIAOFICIAL: TStringField;
    CDSStockADICIONAL_SOBRECOSTO: TFloatField;
    CDSStockIMPRIMIR_LSTPRECIOS: TStringField;
    CDSStockCONTROL_TRAZABILIDAD: TStringField;
    CDSStockIVA_MODIFICADO: TStringField;
    CDSStockSIGLAS: TStringField;
    CDSStockPRESENTACION_2_CANT: TFloatField;
    CDSStockTASA_MANUFACTURA: TStringField;
    CDSStockPLU: TStringField;
    DSPDepositos: TDataSetProvider;
    DSPSubRubro: TDataSetProvider;
    CDSSubRubro: TClientDataSet;
    CDSSubRubroCODIGO_SUBRUBRO: TStringField;
    CDSSubRubroDETALLE_SUBRUBRO: TStringField;
    CDSSubRubroCODIGO_RUBRO: TStringField;
    CDSSubRubroCONTROL_SUBRUBRO: TStringField;
    CDSSubRubroFUERA_PROMO: TStringField;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    DSPListaCab: TDataSetProvider;
    CDSListaCab: TClientDataSet;
    CDSListaCabID: TIntegerField;
    CDSListaCabNOMBRE: TStringField;
    CDSListaCabRECARGOBASE: TFloatField;
    CDSListaCabFECHA: TSQLTimeStampField;
    CDSListaCabPORDEFECTO: TStringField;
    CDSListaCabF_PAGO: TIntegerField;
    CDSListaCabUSO_ADMINISTRADOR: TStringField;
    CDSListaCabCLONADA: TStringField;
    CDSListaCabID_LISTA_CLONADA: TIntegerField;
    CDSListaCabCOEFICIENTE: TFloatField;
    CDSListaCabEXCLUSIVO_EFECTIVO: TStringField;
    CDSListaPrecios: TClientDataSet;
    CDSListaPreciosCODIGOARTICULO: TStringField;
    CDSListaPreciosRUBRO: TStringField;
    CDSListaPreciosSUBRUBRO: TStringField;
    CDSListaPreciosCOSTO_GRAVADO: TFloatField;
    CDSListaPreciosCOSTO_EXENTO: TFloatField;
    CDSListaPreciosCOSTO_TOTAL: TFloatField;
    CDSListaPreciosIVA_TASA: TFloatField;
    CDSListaPreciosRECARGO: TFloatField;
    CDSListaPreciosPRECIO_GRAVADO: TFloatField;
    CDSListaPreciosIVA_IMPORTE: TFloatField;
    CDSListaPreciosPRECIO_EXENTO: TFloatField;
    CDSListaPreciosPRECIO: TFloatField;
    CDSListaPreciosDESCUENTO: TFloatField;
    CDSListaPreciosREC_APLICAR: TFloatField;
    CDSListaPreciosFECHA: TSQLTimeStampField;
    CDSListaPreciosID: TIntegerField;
    CDSListaPreciosID_CAB: TIntegerField;
    DSPListaPrecios: TDataSetProvider;
    DSPCodigoBarra: TDataSetProvider;
    CDSCodigoBarra: TClientDataSet;
    CDSCodigoBarraID: TIntegerField;
    CDSCodigoBarraCODIGO_STK: TStringField;
    CDSCodigoBarraCODIGOBARRA: TStringField;
    CDSCodigoBarraPRESENTACION: TIntegerField;
    CDSCodigoBarraPRESENTACION_CANTIDAD: TFloatField;
    CDSDep: TClientDataSet;
    CDSDepID_DEPOSITO: TIntegerField;
    CDSDepCODIGO_DEPOSITO: TIntegerField;
    CDSDepCODIGO_STK: TStringField;
    CDSDepSUCURSAL: TIntegerField;
    CDSDepINICIAL: TFloatField;
    CDSDepMINIMO: TFloatField;
    CDSDepMEDIO: TFloatField;
    CDSDepFISICO: TFloatField;
    CDSDepRECARGO: TFloatField;
    CDSDepFUAPRECIOS: TSQLTimeStampField;
    CDSDepSECTOR: TStringField;
    CDSDepUBICACION: TStringField;
    CDSDepFULTAJUSTE: TSQLTimeStampField;
    CDSDepUNIDADES: TFloatField;
    CDSDepAVISO_MINIMOSTOCK: TStringField;
    DSPDep: TDataSetProvider;
    CDSRubro: TClientDataSet;
    CDSRubroCODIGO_RUBRO: TStringField;
    CDSRubroDETALLE_RUBRO: TStringField;
    CDSRubroCONTROL_RUBRO: TStringField;
    CDSRubroFUERA_PROMO: TStringField;
    DSPRubro: TDataSetProvider;
    DSPStock: TDataSetProvider;
    QMarcas: TXDataset;
    QStock: TXDataset;
    QDepositos: TXDataset;
    QSubRubro: TXDataset;
    QListaCab: TXDataset;
    QListaPrecios: TXDataset;
    QCodigosBarra: TXDataset;
    QDep: TXDataset;
    QRubro: TXDataset;
    RemoteDBDatabase: TRemoteDBDatabase;
    DSPDescuentos: TDataSetProvider;
    CDSDescuentos: TClientDataSet;
    CDSDescuentosCODIGO: TStringField;
    CDSDescuentosDESCUENTO: TFloatField;
    CDSDescuentosPRECIO: TFloatField;
    CDSDescuentosDESDE: TSQLTimeStampField;
    CDSDescuentosHASTA: TSQLTimeStampField;
    CDSDescuentosSOLOCLIENTES: TStringField;
    CDSDescuentosAPLICA_LUNES: TStringField;
    CDSDescuentosAPLICA_MARTES: TStringField;
    CDSDescuentosAPLICA_MIERCOLES: TStringField;
    CDSDescuentosAPLICA_JUEVES: TStringField;
    CDSDescuentosAPLICA_VIERNES: TStringField;
    CDSDescuentosAPLICA_SABADOS: TStringField;
    CDSDescuentosAPLICA_DOMINGO: TStringField;
    CDSDescuentosAPLICA_ALL_DAYS: TStringField;
    QDescuentos: TXDataset;
    CDSStockPLU_2: TStringField;
    CDSStockDETALLE_CORTO: TStringField;
    CDSStockARTICULO_VARIABLE: TStringField;
    CDSStockPRESENTACION_TOLERANCIA: TFloatField;
    CDSStockACOPIABLE: TStringField;
    CDSStockCIKO_TIPO: TIntegerField;
    CDSStockTIPOADICIONAL: TStringField;
    CDSStockLARGO_1: TFloatField;
    CDSStockLARGO_2: TFloatField;
    CDSStockLARGO_3: TFloatField;
    CDSStockROTURA_1: TFloatField;
    CDSStockROTURA_2: TFloatField;
    CDSStockCIMA: TFloatField;
    CDSStockBASE: TFloatField;
    CDSStockVOLUMEN: TFloatField;
    CDSStockPESO_CALCULADO: TFloatField;
    CDSStockPESO: TFloatField;
    CDSStockDIAMETRO_OLLA: TFloatField;
    CDSStockALTO_ACC: TFloatField;
    CDSStockMODO_IVA: TStringField;
    CDSStockDISPONIBLE: TStringField;
    CDSStockPERCIBE_IVA: TStringField;
    CDSStockID_TASA_PERCEP_IVA: TIntegerField;
    CDSStockAPLICA_TASA_DIF: TStringField;
    CDSStockPLU_SECCION: TStringField;
    CDSStockDESCRIPCION_CORTA: TMemoField;
    CDSStockDESCRIPCION_LARGA: TMemoField;
    CDSStockCATEGORIAS_WEB: TStringField;
    CDSStockFOB: TSingleField;
    CDSStockCODIGO_ART_VARIABLE: TStringField;
    CDSStockDIAS_VENCIMIENTO: TIntegerField;
    CDSStockFOTO: TBlobField;
    CDSDepositosCENTRALIZA_WEB: TStringField;
    CDSDepositosACTIVO: TStringField;
    CDSStockDETALLE_NORM: TStringField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosImportarStockRemoto: TDatosImportarStockRemoto;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosImportarStockRemoto.DataModuleDestroy(Sender: TObject);
begin
 DatosImportarStockRemoto:=NIL;
end;

end.
