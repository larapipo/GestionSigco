
unit UFiscalizarLote;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase, FMTBcd, DB, Grids, DBGrids, Provider, DBClient, SqlExpr,
  JvComponentBase, JvFormPlacement, ImgList, ActnList,System.IOUtils,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, OleCtrls, SHDocVw, xmldom, XMLIntf, msxmldom, XMLDoc,Math,
  Xmlxform, DBXCommon,  JvDBLookup, DBCtrls, Menus, System.Actions,
  JvAppStorage, JvAppIniStorage, CompBuscador, Vcl.Mask, JvExMask, JvToolEdit,IniFiles,
  frxClass, JvThread, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg, dxBkgnd, dxWrap,
  dxPrnDev, dxPSCompsProvider, dxPSFillPatterns, dxPSEdgePatterns,
  dxSkinsdxBarPainter, dxSkinsdxRibbonPainter, dxPSCore, dxPSBaseGridLnk,
  dxPSLVLnk, cxClasses, dxSkinBlack, dxSkinOffice2016Colorful,
  dxSkinVisualStudio2013Light, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, dxPScxGridLnk, dxPScxGridLayoutViewLnk,lsplib_TLB,ActiveX,
  dxPScxPivotGridLnk, dxSkinBasic, dxSkinOffice2019Black,
  dxSkinOffice2019Colorful, dxSkinOffice2019DarkGray, dxSkinOffice2019White,
  dxSkinTheBezier, System.ImageList,StrUtils,System.WIn.comobj, frCoreClasses,
  dxPScxExtComCtrlsLnk, dxSkinsCore, dxPSPDFExportCore, dxPSPDFExport,
  cxDrawTextUtils, dxPSPrVwStd, dxPSPrVwAdv, dxPSPrVwRibbon,
  dxPScxPageControlProducer, dxPScxEditorProducers, dxPScxExtEditorProducers;

type
  TFormFiscalizacionLote = class(TFormABMBase)
    CDSFacturas: TClientDataSet;
    DSPFacturas: TDataSetProvider;
    btFiscalizar: TBitBtn;
    CDSFacturasID_FC: TIntegerField;
    CDSFacturasTIPOCPBTE: TStringField;
    CDSFacturasCLASECPBTE: TStringField;
    CDSFacturasCODIGO: TStringField;
    CDSFacturasNROCPBTE: TStringField;
    CDSFacturasLETRAFAC: TStringField;
    CDSFacturasSUCFAC: TStringField;
    CDSFacturasNUMEROFAC: TStringField;
    CDSFacturasNOMBRE: TStringField;
    CDSFacturasRAZONSOCIAL: TStringField;
    CDSFacturasDIRECCION: TStringField;
    CDSFacturasCPOSTAL: TStringField;
    CDSFacturasLOCALIDAD: TStringField;
    CDSFacturasTIPOIVA: TIntegerField;
    CDSFacturasCUIT: TStringField;
    CDSFacturasCAE: TStringField;
    CDSFacturasFACTURA_ELECTRONICA: TStringField;
    Fiscalizar: TAction;
    Imprimir: TAction;
    chbCorreo: TCheckBox;
    ToolButton1: TToolButton;
    FiscalizarLote: TAction;
    btLote: TBitBtn;
    PageControl1: TPageControl;
    pag1: TTabSheet;
    pag3: TTabSheet;
    dbgFacturas: TDBGrid;
    btConsulta: TBitBtn;
    DSPEmpresa: TDataSetProvider;
    CDSEmpresa: TClientDataSet;
    XMLDocument1: TXMLDocument;
    DBGrid1: TDBGrid;
    lwFacturas: TListView;
    rgBuscarPor: TRadioGroup;
    pnNumero: TPanel;
    cbTipo: TComboBox;
    cbLetra: TComboBox;
    edSuc: TEdit;
    edNumero: TEdit;
    Label1: TLabel;
    sbGravar: TSpeedButton;
    FiscalizarLote_2: TAction;
    DSPImpuestos: TDataSetProvider;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    Listados: TTabSheet;
    Panel2: TPanel;
    Label2: TLabel;
    edPrefijo: TEdit;
    edDesde: TEdit;
    edHasta: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    lvGeneral: TListView;
    DSPBuscadorComp: TDataSetProvider;
    CDSBuscadorComp: TClientDataSet;
    CDSBuscadorCompTIPO_COMPROB: TStringField;
    CDSBuscadorCompCLASE_COMPROB: TStringField;
    CDSBuscadorCompDETALLE: TStringField;
    CDSBuscadorCompDENOMINACION: TStringField;
    CDSBuscadorCompLETRA: TStringField;
    CDSBuscadorCompPREFIJO: TStringField;
    CDSBuscadorCompNUMERO: TStringField;
    CDSBuscadorCompMUESTRASUCURSAL: TStringField;
    CDSBuscadorCompCOMPRA_VENTA: TStringField;
    CDSBuscadorCompID_COMPROBANTE: TIntegerField;
    CDSBuscadorCompSUCURSAL: TIntegerField;
    CDSBuscadorCompNUMERARCION_PROPIA: TStringField;
    CDSBuscadorCompTOMA_NRO_DE: TIntegerField;
    CDSBuscadorCompAFECTA_CC: TStringField;
    CDSBuscadorCompDESGLOZA_IVA: TStringField;
    CDSBuscadorCompPENDIENTEIMPRESION: TStringField;
    dbcComprobante: TJvDBLookupCombo;
    DSBuscadorComp: TDataSource;
    edClase: TEdit;
    edLetra: TEdit;
    edTipo: TEdit;
    Panel3: TPanel;
    Label5: TLabel;
    PopupMenu1: TPopupMenu;
    BuscarCpbte: TAction;
    BuscarCpbte1: TMenuItem;
    BuscaCpbtePorCAE: TAction;
    BuscaCpbtePorCAE1: TMenuItem;
    IgualarCaePorNroFac: TAction;
    N1: TMenuItem;
    IgualarCaePorNroFac1: TMenuItem;
    chFecha: TCheckBox;
    Label6: TLabel;
    dbcSucursal: TJvDBLookupCombo;
    DSPSucursal: TDataSetProvider;
    CDSSucursal: TClientDataSet;
    CDSSucursalCODIGO: TIntegerField;
    CDSSucursalDETALLE: TStringField;
    DSSucursales: TDataSource;
    CDSBuscadorCompULTIMONRO: TIntegerField;
    Facturar: TAction;
    Facturar1: TMenuItem;
    DSPClientes: TDataSetProvider;
    CDSClientes: TClientDataSet;
    CDSClientesCODIGO: TStringField;
    CDSClientesNOMBRE: TStringField;
    CDSClientesRAZON_SOCIAL: TStringField;
    BuscarArticulos: TAction;
    Duplicar: TAction;
    frxReport: TfrxReport;
    frxUserDataListado: TfrxUserDataSet;
    N2: TMenuItem;
    Duplicar1: TMenuItem;
    jvHiloConsulta: TJvThread;
    dxComponentPrinter1: TdxComponentPrinter;
    dxComponentPrinter1Link1: TdxListViewReportLink;
    CDSSucursalCERTIFICADO_ELEC: TStringField;
    CDSSucursalCUIT: TStringField;
    ToolButton2: TToolButton;
    QBuscaLocalidad: TFDQuery;
    QBuscaLocalidadID_POSTAL: TIntegerField;
    QBuscaLocalidadCODIGO_POSTAL: TStringField;
    QBuscaLocalidadDETALLE_POSTAL: TStringField;
    CDSBuscadorCompCODIGO_AFIP: TStringField;
    chbActivos: TCheckBox;
    QControlComprobantes: TFDQuery;
    QBuscarFacturaLQ: TFDQuery;
    QBuscaCpbteRelacion: TFDQuery;
    QControlComprobantesID_COMPROBANTE: TIntegerField;
    QBuscarFacturaLQID_FC: TIntegerField;
    QBuscarFacturaLQCAE: TStringField;
    QBuscarFacturaLQTOTAL: TFloatField;
    QBuscarFacturaLQTIPOCPBTE: TStringField;
    QBuscarFacturaLQNROCPBTE: TStringField;
    QBuscaCpbte: TFDQuery;
    QActualizaCompAjustado: TFDQuery;
    QBuscarFact: TFDQuery;
    QActualizaUltimoNro: TFDQuery;
    QBuscaCpbteID_FC: TIntegerField;
    QBuscaCpbteRelacionCLASE_COMPROB: TStringField;
    QBuscaCpbteRelacionTIPO_COMPROB: TStringField;
    QBuscadorCo: TFDQuery;
    QBuscadorCoID_COMPROBANTE: TIntegerField;
    QBuscadorCoTIPO_COMPROB: TStringField;
    QBuscadorCoCLASE_COMPROB: TStringField;
    QBuscadorCoDENOMINACION: TStringField;
    QBuscadorCoSUCURSAL: TIntegerField;
    QBuscadorCoLETRA: TStringField;
    QBuscadorCoPREFIJO: TStringField;
    QBuscadorCoNUMERARCION_PROPIA: TStringField;
    QBuscadorCoNUMERO: TStringField;
    QBuscadorCoTOMA_NRO_DE: TIntegerField;
    QBuscadorCoAFECTA_IVA: TStringField;
    QBuscadorCoAFECTA_CC: TStringField;
    QBuscadorCoDESGLOZA_IVA: TStringField;
    QBuscadorCoCOMPRA_VENTA: TStringField;
    QBuscadorCoCOPIAS: TIntegerField;
    QBuscadorCoREPORTE: TStringField;
    QBuscadorCoIMPRIME: TStringField;
    QBuscadorCoFISCAL: TStringField;
    QBuscadorCoNOMBREIMPRESORA: TStringField;
    QBuscadorCoPENDIENTEIMPRESION: TStringField;
    QBuscadorCoLINEAS_DETALLE: TSmallintField;
    QBuscadorCoCALCULA_IVA_ARTICULOS: TStringField;
    QBuscadorCoDEFECTO: TStringField;
    QBuscadorCoCAJA_DEFECTO: TIntegerField;
    QBuscadorCoDIVIDE_IVA: TStringField;
    QBuscadorCoFACTURAELECTRONICA: TStringField;
    QBuscadorCoEN_USO: TStringField;
    QBuscadorCoCODIGO_AFIP: TStringField;
    QBuscadorCoID_AJUSTECC: TIntegerField;
    QBuscadorCoCENTRO_COSTO: TIntegerField;
    QBuscadorCoFILTRO_COMPROBANTES: TStringField;
    QBuscadorCoDEPOSITO: TIntegerField;
    QBuscadorCoULTIMONRO: TIntegerField;
    QBuscadorCoEDITAR_NRO: TStringField;
    QBuscadorCoMUESTRASUCURSAL: TStringField;
    QBuscadorCoDETALLE: TStringField;
    QFacturas: TFDQuery;
    CDSFacturasNETOGRAV1: TFloatField;
    CDSFacturasNETOGRAV2: TFloatField;
    CDSFacturasNETONOGRAV1: TFloatField;
    CDSFacturasNETONOGRAV2: TFloatField;
    CDSFacturasDSTO: TFloatField;
    CDSFacturasNETOEXEN1: TFloatField;
    CDSFacturasNETOEXEN2: TFloatField;
    CDSFacturasTOTAL: TFloatField;
    CDSFacturasDSTOIMPORTE: TFloatField;
    CDSFacturasPERCEPCION_IB_TASA: TFloatField;
    CDSFacturasPERCEPCION_IB_IMPORTE: TFloatField;
    CDSFacturasPERCIBE_IB: TStringField;
    CDSFacturasPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QBuscaCpbtePorCAE: TFDQuery;
    QBuscarCuit: TFDQuery;
    QBuscaCpbtePorCAEID_FC: TIntegerField;
    QBuscaCpbtePorCAETIPOCPBTE: TStringField;
    QBuscaCpbtePorCAECLASECPBTE: TStringField;
    QBuscaCpbtePorCAECAE: TStringField;
    QImpuesto: TFDQuery;
    CDSImpuestosNETO: TFloatField;
    CDSImpuestosTASA: TFloatField;
    CDSImpuestosIMPORTE: TFloatField;
    QDesactivaTrigerDelfd: TFDQuery;
    QBorrarAplTem: TFDQuery;
    spBorraAplicacionesFD: TFDStoredProc;
    TabSheet1: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    ceCliente: TJvComboEdit;
    edNombreCliente: TEdit;
    ceCodigo: TJvComboEdit;
    ceCodigo105: TJvComboEdit;
    edDetalle2: TEdit;
    edDetalle: TEdit;
    ceCodigoCero: TJvComboEdit;
    edDetalleCero: TEdit;
    chAutoconfirmarFc: TCheckBox;
    QActivaTrigerDelFD: TFDQuery;
    QBKAplicacionesFD: TFDQuery;
    QRsAplicacionesFD: TFDQuery;
    spIngresarClienteFD: TFDStoredProc;
    QControlSaldoMovFD: TFDQuery;
    QSincronizaPorCAEFD: TFDQuery;
    QActualizaCAEFD: TFDQuery;
    pnPieListado: TPanel;
    lbReg: TLabel;
    lbNovedad: TLabel;
    btListarComprob: TBitBtn;
    chSincroniza: TCheckBox;
    ProgressBar: TProgressBar;
    BitBtn1: TBitBtn;
    btImprimir: TBitBtn;
    btListar: TBitBtn;
    QBuscaFactura: TFDQuery;
    QBuscaFacturaID_FC: TIntegerField;
    QBuscaFacturaCAE: TStringField;
    QBuscaFacturaTOTAL: TFloatField;
    QBuscaFacturaTIPOCPBTE: TStringField;
    QBuscaFacturaCLASECPBTE: TStringField;
    lbCertificado: TLabel;
    lbClave: TLabel;
    CDSFacturasFECHAVTA: TSQLTimeStampField;
    CDSFacturasFECHAVTO: TSQLTimeStampField;
    CDSFacturasCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFacturasFECHA_FISCAL: TSQLTimeStampField;
    QBuscaFacturaFECHAVTA: TSQLTimeStampField;
    QBuscarFacturaLQFECHACOMPRA: TSQLTimeStampField;
    pcListado: TPageControl;
    pgGeneral: TTabSheet;
    pagNovedades: TTabSheet;
    DBText1: TDBText;
    CDSBuscarFactura: TClientDataSet;
    DSPBuscarFactura: TDataSetProvider;
    CDSBuscarFacturaID_FC: TIntegerField;
    CDSBuscarFacturaCAE: TStringField;
    CDSBuscarFacturaTOTAL: TFloatField;
    CDSBuscarFacturaFECHAVTA: TSQLTimeStampField;
    CDSBuscarFacturaTIPOCPBTE: TStringField;
    CDSBuscarFacturaCLASECPBTE: TStringField;
    CDSBuscarFacturaCODIGO_AFIP: TStringField;
    chGuardaXML: TCheckBox;
    DSPPercepcionIVA: TDataSetProvider;
    CDSPercepcionIVA: TClientDataSet;
    CDSPercepcionIVAID_PERCEPCION: TIntegerField;
    CDSPercepcionIVACODIGO_PERCEPCION: TIntegerField;
    CDSPercepcionIVADETALLE: TStringField;
    CDSPercepcionIVAID_FCVTACAB: TIntegerField;
    CDSPercepcionIVANETO: TFloatField;
    CDSPercepcionIVATASA: TFloatField;
    CDSPercepcionIVAIMPORTE: TFloatField;
    CDSPercepcionIVACODIGOREGIMEN: TIntegerField;
    QPercepcionIvaVta: TFDQuery;
    CDSFacturasMONEDA_CPBTE: TIntegerField;
    CDSFacturasMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFacturasCBU: TStringField;
    CDSFacturasASOCIADO_ID_CPBTE: TIntegerField;
    CDSFacturasASOCIADO_TIPO: TIntegerField;
    CDSFacturasASOCIADO_PTOVTA: TIntegerField;
    CDSFacturasASOCIADO_NRO: TFloatField;
    CDSFacturasASOCIADO_CPTEFCH: TStringField;
    CDSEmpresaNOMBRE: TStringField;
    CDSEmpresaACTIVIDAD: TStringField;
    CDSEmpresaDIRECCION: TStringField;
    CDSEmpresaLOCALIDAD: TStringField;
    CDSEmpresaCORREO: TStringField;
    CDSEmpresaTELEFONO1: TStringField;
    CDSEmpresaTELEFONO2: TStringField;
    CDSEmpresaCUIT: TStringField;
    CDSEmpresaCONDICIONIVA: TStringField;
    CDSEmpresaNRO_AGTE_RET_INGBRUTOS: TStringField;
    CDSEmpresaLOGO: TBlobField;
    CDSEmpresaCPOSTAL: TStringField;
    CDSEmpresaNRO_AGTE_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_GANANCIA: TStringField;
    CDSEmpresaAG_RET_ING_BRUTOS: TStringField;
    CDSEmpresaAG_PERCEPCION_ING_BRUTOS: TStringField;
    CDSEmpresaTASA_PERCEPCION_IB: TFloatField;
    CDSEmpresaMINO_IMP_PERCEP_IB: TFloatField;
    CDSEmpresaPROVINCIA: TIntegerField;
    CDSEmpresaTASA_RET_IIBB: TFloatField;
    CDSEmpresaMINIMO_IMP_RET_IIBB: TFloatField;
    CDSEmpresaPUNITORIOS: TFloatField;
    CDSEmpresaFECHA_INICIO_ACTI: TSQLTimeStampField;
    CDSEmpresaNRO_RENSPA: TStringField;
    CDSEmpresaNRO_RUCA: TIntegerField;
    CDSEmpresaCUIT_AUTORIZADO: TStringField;
    CDSEmpresaNOMBRE_AUTORIZADO: TStringField;
    CDSEmpresaCBU: TStringField;
    CDSEmpresaID_CPOSTAL: TIntegerField;
    CDSEmpresaCOD_ACTIVIDAD: TStringField;
    CDSEmpresaNOMBRE_FANTASIA: TStringField;
    CDSEmpresaCODIGO_COT: TStringField;
    CDSEmpresaDIRECCION_NRO: TStringField;
    CDSEmpresaAG_PERCEPCION_IVA: TStringField;
    CDSEmpresaMIN_IMP_PERCEPCION_IVA: TFloatField;
    CDSEmpresaTASA_LEY15311: TFloatField;
    CDSEmpresaDIRECCION_OPERACION: TStringField;
    procedure FiscalizarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgFacturasDblClick(Sender: TObject);
    procedure FiscalizarLoteExecute(Sender: TObject);
    procedure btConsultaClick(Sender: TObject);
    procedure rgBuscarPorClick(Sender: TObject);
    procedure FiscalizarLote_2Execute(Sender: TObject);
    procedure sbGravarClick(Sender: TObject);
//    procedure btListarComprobClick(Sender: TObject);
    procedure dbcComprobanteChange(Sender: TObject);
    procedure lvGeneralDblClick(Sender: TObject);
    procedure BuscarCpbteExecute(Sender: TObject);
    procedure BuscaCpbtePorCAEExecute(Sender: TObject);
    procedure IgualarCaePorNroFacExecute(Sender: TObject);
    procedure CDSFacturasAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure dbcComprobanteClick(Sender: TObject);
    procedure dbcSucursalChange(Sender: TObject);
    procedure dbcSucursalClick(Sender: TObject);
    procedure dbcSucursalEnter(Sender: TObject);
    procedure lbRegClick(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure ceClienteButtonClick(Sender: TObject);
    procedure BuscarArticulosExecute(Sender: TObject);
    procedure sbEstadoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure lvGeneralMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure DuplicarExecute(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure frxReportGetValue(const VarName: string; var Value: Variant);
    procedure sbEstadoDblClick(Sender: TObject);
    procedure jvHiloConsultaExecute(Sender: TObject; Params: Pointer);
    procedure btListarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SalirExecute(Sender: TObject);
    procedure chbActivosClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btListarComprobClick(Sender: TObject);
  private
    procedure ConsultaFiscalizacionExportacion;

    { Private declarations }
  public
    { Public declarations }
    Lista            : TListItem;
    NodoXML,NodoTributoXML : IXMLNode;
    UltimaFechaVta   :WideString;
    Cancelar: Boolean;
    Fecha,
    CodAFIP,
    TipoAjusteLiq,
    CompAjustado,
    Tipo,
    Clase,
    Letra,
    Prefijo,
    Numero,
    NroCuit,
    NetoExento,
    NetoNoGrav,
    Neto,
    Iva,
    Alic,
    ImporteAlic,
    Importe,
    CAE,
    CAEVto,
    PercepcionIIBBBaseImponible,
    PercepcionIIBBTasa,
    PercepcionIIBBImporte,

    PercepcionIVABaseImponible_1,
    PercepcionIVATasa_1,
    PercepcionIVAImporte_1,

    PercepcionIVABaseImponible_2,
    PercepcionIVATasa_2,
    PercepcionIVAImporte_2,

    RetencionIVA :String;
    //****************** Para el Hilo de ejecucion *************
    TipoCpbte,PuntoVta   : Integer;
    UltimoNroReg         : Double;
    ConsultaOk           : Boolean;
    par1,par2            : WideString;
    Nro                  : Integer;
    NroDesde,NroHasta    : Integer;
    CuitEmpresa          : Real;
    FQRImage             : TBitMap;
    T1,T2,T3 :Boolean;

    //*****************
    function GenerarQR( ver        : Integer;
                        fecha      : string;                 cuit       : double;
                        ptoVta     : Integer;                tipoComp   : Integer;
                        nroCmp     : Integer;                importe    : double;
                        moneda     : string;                 ctz        : double;
                        tipoDocRec : Integer;                nroDocRec  : double;
                        tipoCodAut : string;                 codAut     : double): TBitmap;

    procedure DisplayNodo(Nodo:IXMLNode);
    procedure DisplayNodoRenglon(Nodo:IXMLNode);
    procedure DisplayNodoRenglonLiq(Nodo:IXMLNode);
    procedure DisplayNodoRenglonExpo(Nodo: IXMLNode);

    procedure EnviarCorreo(Tipo:String; IdCpbte:String);

    Procedure Pantalla;
    procedure RecuperaUltimoNumero;
    procedure Consultar;
    procedure DocumentoXML;
    procedure DocumentoXML_Liq;
    Function ConsultarCuit(Cuit:String):String;
    procedure ConsultarLiq;
    procedure ConultaFiscalizaciones;
  end;

var
  FormFiscalizacionLote: TFormFiscalizacionLote;
  
const
//tipos de comprobantes
  FACTURAS_A         = 001; NOTAS_DEBITO_A     = 002;
  NOTAS_CREDITO_A    = 003; RECIBOS_A          = 004;
  CONTADO_A          = 005; FACTURAS_B         = 006;
  NOTAS_DEBITO_B     = 007; NOTAS_CREDITO_B    = 008;
  RECIBOS_B          = 009; CONTADO_B          = 010;
  FACTURAS_C         = 011; NOTAS_DEBITO_C     = 012;
  NOTAS_CREDITO_C    = 013; DOCUMENTO_ADUANERO = 014;
  RECIBOS_C          = 015; CONTADO_C          = 016;

  CUIT =80;
  CUIL =86;
  DNI  =96;
  SINCLASIFICAR =99;
// **** Tipo de IVA ****
  NOGRAVDO =1;//  1	No Gravado
  EXENTO   =2;//  2	Exento
  CEROIVA  =3;//  3	0%
  IVA105   =4;//  4	10.50%
  IVA21    =5;//  5	21%
  IVA27    =6;//  6	27%

implementation

uses UFactura_2, UDMAin_FD, UFacturaCtdo_2, DMVentaCtdo, UFiscalizacion,FEAFIPLib_TLB,
     UBuscadorClientes, UBuscadorArticulos, UCompra_2, UTiketVta, DMStoreProcedureForm,
     DMTicket, UBuscadorTipoCpbte, FE_Utils2, DMVenta,UArca_Fex;

var   wsfev1     : Iwsfev1;
      wsfex1     : Iwsfexv1;
      FCuitVdor  : Extended;
      wslsp      : Iwslsp;
      Solicitud  : IGenerarLiquidacionReq;
      Response   : IGenerarLiquidacionResp;
      ConsultaUltimoNroResponse   : IConsultarUltimoNroComprobantePorPtoVtaResp;
      ConsultaUltimoNroResponseLiq: IConsultarLiquidacionPorNroComprobanteResp;
      ComprobanteRes:IComprobante;
{$R *.dfm}

function TFormFiscalizacionLote.GenerarQR( ver    : Integer;
  fecha      : string;                 cuit       : double;
  ptoVta     : Integer;                tipoComp   : Integer;
  nroCmp     : Integer;                importe    : double;
  moneda     : string;                 ctz        : double;
  tipoDocRec : Integer;                nroDocRec  : double;
  tipoCodAut : string;                 codAut     : double): TBitmap;
var
  Qr:IQr;
  Path:String;
  Bmp:TBitmap;
begin
  Qr           := CreateComObject(CLASS_Qr) as IQr;
  path         := ExtractFilePath(ParamStr(0));
  Qr.ArchivoQR := Path + 'qr.bmp'; // Admite formatos BMP, PNG y JPG con solo cambiar la extension
  bmp          := TBitmap.Create;           // Creamos el objeto que "entiende" al Bitmap
  if Qr.Generar(ver, fecha, cuit, ptoVta, tipoComp, nroCmp, importe, moneda,
     ctz, tipoDocRec, nroDocRec, tipoCodAut, codAut) then
  begin
   // ShowMessage('QR generado con éxito');
    bmp.LoadFromFile( Path+ 'qr.bmp');
    Result:= Bmp;
  end
  else
    ShowMessage(Qr.ErrorDesc);
  //FreeAndNil(Qr);
end;


procedure TFormFiscalizacionLote.Pantalla;
begin
  lbNovedad.Caption:= 'Novedades';
  lbReg.Caption    := IntToStr(NroDesde)+'/'+IntToStr(NroHasta)
end;

procedure TFormFiscalizacionLote.RecuperaUltimoNumero;
begin
  if (TipoCpbte=19) or (TipoCpbte=21) then
    wsfex1.RecuperaLastCMP(PuntoVta, TipoCpbte, UltimoNroReg,UltimaFechaVta)
  else
    wsfev1.RecuperaLastCMP(PuntoVta, TipoCpbte, UltimoNroReg);

end;

procedure TFormFiscalizacionLote.Consultar;
begin
  if (TipoCpbte=19) or (TipoCpbte=21) then
    ConsultaOk := wsfex1.CmpConsultar(TipoCpbte, PuntoVta, Nro, par1, par2)
  else
    ConsultaOk := wsfev1.CmpConsultar(TipoCpbte, PuntoVta, Nro, par1, par2);
end;

procedure TFormFiscalizacionLote.ConsultarLiq;
begin
  ConsultaUltimoNroResponseLiq:= wslsp.consultarLiquidacionPorNroComprobante(puntoVta, TipoCpbte,Nro);
end;


procedure TFormFiscalizacionLote.ConsultaFiscalizacionExportacion;
var Novedades,FechaAux:String;
NroL :Integer;
CuitActivo : Int64;
Contador: Integer;
Diferencia:Double;
d,m,y:Word;
TipoRelacion,ClaseRelacion:String;
CertificadoActivo,CuitEmpresaActivo:String;
ComprobanteDet:TFacturaFEX;
//ClaseCtdo,ClaseCC:String;
begin
  inherited;
  lvGeneral.Clear;

  Cancelar   := False;
  Contador   := 0;

  CertificadoActivo := FormFiscalizacionLote.CertificadoElectronico;
  CuitEmpresaActivo := CDSEmpresa.FieldByName('cuit').AsString;
  //***********************************************************
   if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value;
    end;

  CuitEmpresaActivo:= AnsiReplaceStr(CuitEmpresaActivo,'-','');
  CuitActivo        := StrToInt64(CuitEmpresaActivo);

  TipoCpbte        := dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger;

  dmFEX.InicializarServicio(URLWSAA,URLWSW_EX,CertificadoActivo,ClaveElectronica);

  if (TipoCpbte in [21,19]) then  // esto son Exportacion..
    begin
      if dmFEX.CheckLogin(CuitActivo) then
        begin
          PuntoVta   := StrToInt(edPrefijo.Text);
          NroDesde   := StrToInt(edDesde.Text);
          NroHasta   := StrToInt(edHasta.Text);

          if (NroDesde<=0) then
            begin
              edDesde.Text := '1';
              NroDesde     := StrToInt(edDesde.Text);
            end;

          dmFEX.RecuperaLastCMP(PuntoVta,TipoCpbte,UltimoNroReg, UltimaFechaVta);

          if (NroHasta>UltimoNroReg) then
            begin
              edHasta.Text := FormatFloat('0',UltimoNroReg);
              NroHasta     := StrToInt(edHasta.Text);
            end;

          ProgressBar.Min:=1;
          if (NroHasta-NroDesde)<=0 then
            ProgressBar.Max:=1
          else
            ProgressBar.Max:=(NroHasta-NroDesde);
          ProgressBar.Position:=1;

          for NroL := NroDesde to NroHasta do
            begin
              Nro                  := NroL;
              ProgressBar.Position := ProgressBar.Position+1;
              if dmFEX.CmpConsultarRecord(TipoCpbte,PuntoVta,NroL,ComprobanteDet) Then
                begin
                  PercepcionIIBBBaseImponible  := '';
                  PercepcionIIBBTasa           := '';
                  PercepcionIIBBImporte        := '';

                  PercepcionIVABaseImponible_1 := '';
                  PercepcionIVABaseImponible_2 := '';

                  PercepcionIVATasa_1          := '';
                  PercepcionIVATasa_2          := '';
                  PercepcionIVAImporte_1       := '';
                  PercepcionIVAImporte_2       := '';
                  lvGeneral.Column[11].Caption:='Cotizacion';
                  lvGeneral.Column[10].Caption:='Moneda';

                  Lista         := lvGeneral.Items.Add;
                  Lista.Checked := False;

                  Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(ComprobanteDet.Fecha_cbte,1,4)),
                                                                 StrToInt(Copy(ComprobanteDet.Fecha_cbte,5,2)),
                                                                 StrToInt(Copy(ComprobanteDet.Fecha_cbte,7,2)))));
                  Numero:=(Copy('00000000',1,8-Length(IntToStr(ComprobanteDet.Cbte_nro)))+IntToStr(ComprobanteDet.Cbte_nro));


                  CDSBuscarFactura.Filtered:= False;

                  CDSBuscarFactura.Close;
                  CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
                  CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
                  CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
                  CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                  CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
                  CDSBuscarFactura.Open;

                  if (CDSBuscarFacturaID_FC.AsString<>'') then
                    begin
                      Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                      Tipo  := CDSBuscarFacturaTIPOCPBTE.AsString;
                    end;
                  Lista.SubItems.Add(Fecha);
                  Lista.SubItems.Add(CodAFIP);
                  Lista.SubItems.Add(Tipo);
                  Lista.SubItems.Add(Clase);
                  Lista.SubItems.Add(Letra);
                  Lista.SubItems.Add(Prefijo);
                  Lista.SubItems.Add(Numero);
                  Lista.SubItems.Add(NroCuit);
                  Lista.SubItems.Add(Neto);
                  Lista.SubItems.Add(NetoExento);
                  Lista.SubItems.Add(Iva);

                  Lista.SubItems.Add(PercepcionIIBBTasa);
                  Lista.SubItems.Add(PercepcionIIBBImporte);

                  Lista.SubItems.Add(PercepcionIVATasa_1);
                  Lista.SubItems.Add(PercepcionIVAImporte_1);

                  Lista.SubItems.Add(PercepcionIVATasa_2);
                  Lista.SubItems.Add(PercepcionIVAImporte_2);

                  Lista.SubItems.Add(Importe);
                  Lista.SubItems.Add(CAE);
                  Lista.SubItems.Add(CAEVto);

                  if ((TipoCpbte<>63) and (TipoCpbte<>64)) then
                    begin
                      Novedades:='';
                      FechaAux      := FormatDateTime('dd/mm/yyyy',CDSBuscarFacturaFECHAVTA.AsdateTime);
                      Lista.Checked := Trim(CDSBuscarFacturaCAE.AsString)=CAE;
                      if CDSBuscarFacturaID_FC.AsString='' then
                        Novedades:='Inexistente';
                      if (CDSBuscarFacturaCAE.Value<>CAE) then
                        Novedades:=Novedades+'|'+'Dif.CAE';
                      if (Not(FechaAux=Fecha)) then
                        Novedades:=Novedades+'|'+'Dif.Fecha';
                         //////////////////////////////////////////////////////////////////
                         //  ver codigo arriba
                         //////////////////////////////////////////////////////////////////
                      lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                      while pos(',',Importe)<>0 Do
                        delete(Importe,pos(',',Importe),1);
                      Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                      if (Diferencia>2) then
                        Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                      if Novedades<>'' then Contador:=Contador+1;
                      Lista.SubItems.Add(Novedades);
                      CDSBuscarFactura.Close;
                    end
                  else
                    begin
                      Novedades:='';
                      FechaAux :=FormatDateTime('dd/mm/yyyy',QBuscarFacturaLQFECHACOMPRA.AsdateTime);
                      Lista.Checked := Trim(QBuscarFacturaLQCAE.AsString)=CAE;
                      if QBuscarFacturaLQID_FC.AsString='' then
                        Novedades:='Inexistente';
                      if (QBuscarFacturaLQCAE.Value<>CAE) then
                        Novedades:=Novedades+'|'+'Dif.CAE';
                      if (Not(FechaAux=Fecha)) then
                          Novedades:=Novedades+'|'+'Dif.Fecha';
                        if Novedades<>'' then Contador:=Contador+1;
                        //////////////////////////////////////////////////////////////////
                        //  ver codigo arriba
                        //////////////////////////////////////////////////////////////////
                        lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                        while pos(',',Importe)<>0 Do
                          delete(Importe,pos(',',Importe),1);
                        Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                        if (Diferencia>1) then
                          Novedades:=Novedades+'Import.<>';
                        Lista.SubItems.Add(Novedades);
                        CDSBuscarFactura.Close;
                      end;
                  end;
              end;
             if Cancelar then  Exit;
            end;
        end;
      QActualizaUltimoNro.Close;
      QActualizaUltimoNro.ParamByName('UltimoNro').AsInteger:=StrToInt(edHasta.Text);
      QActualizaUltimoNro.ParamByName('Id').AsInteger       :=dbcComprobante.KeyValue;
      QActualizaUltimoNro.ExecSQL();
      QActualizaUltimoNro.Close;
end;


procedure TFormFiscalizacionLote.ConultaFiscalizaciones;
var Novedades,FechaAux:String;
  NroL       : Integer;
  CuitActivo : Int64;
  Contador   : Integer;
  Diferencia : Double;
  d,m,y:Word;
  TipoRelacion,ClaseRelacion:String;
  CertificadoActivo,CuitEmpresaActivo:String;
  UltimoNro :Int64;
  UltimoNroF:Double;
  ComprobanteDet :TDatosComprobante;
  ComprobanteDetX:TFacturaFEX;
begin
  inherited;
  lvGeneral.Clear;

  Cancelar   := False;
  Contador   := 0;

  CertificadoActivo := FormFiscalizacionLote.CertificadoElectronico;
  CuitEmpresaActivo := CDSEmpresa.FieldByName('cuit').AsString;
  //***********************************************************
   if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value;
    end;

  CuitEmpresaActivo := AnsiReplaceStr(CuitEmpresaActivo,'-','');
  CuitActivo        := StrToInt64(CuitEmpresaActivo);

  TipoCpbte        := dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger;

  dmFE1.InicializarServicio(URLWSAA,URLWSW,CertificadoActivo,ClaveElectronica);
  dmFEX.InicializarServicio(URLWSAA,URLWSW_EX,CertificadoActivo,ClaveElectronica);

  if Not(TipoCpbte in [186,185,189,191,180,182,183,188,19,21,63,64,201,202,203,206,207,208,211,212,213]) then
    begin
      if dmFE1.CheckLogin(CuitActivo) then
        begin
          dmFE1.Reset;
          PuntoVta   := StrToInt(edPrefijo.Text);
          NroDesde   := StrToInt(edDesde.Text);
          NroHasta   := StrToInt(edHasta.Text);

          if (NroDesde<=0) then
            begin
              edDesde.Text := '1';
              NroDesde     := StrToInt(edDesde.Text);
            end;

          dmFE1.RecuperaLastCMP(PuntoVta,TipoCpbte,UltimoNro);

          if (NroHasta>UltimoNro) then
            begin
              edHasta.Text := FormatFloat('0',UltimoNro);
              NroHasta     := StrToInt(edHasta.Text);
            end;

          ProgressBar.Min:=1;
          if (NroHasta-NroDesde)<=0 then
            ProgressBar.Max:=1
          else
            ProgressBar.Max:=(NroHasta-NroDesde);
          ProgressBar.Position:=1;
         // Tomo el comprobante que este asociado para saber la clase
          if Not(NotaVtaCtdo) then
            begin
              QBuscaCpbteRelacion.Close;
              QBuscaCpbteRelacion.ParamByName('id').Value:= dbcComprobante.LookupSource.DataSet.FieldByName('id_comprobante').AsInteger;
              QBuscaCpbteRelacion.Open;
              ClaseRelacion  := QBuscaCpbteRelacionCLASE_COMPROB.AsString;
              TipoRelacion   := QBuscaCpbteRelacionTIPO_COMPROB.AsString;
              QBuscaCpbteRelacion.Close;
            end;
          //***************************************************
          for NroL := NroDesde to NroHasta do
            begin
              Nro      := NroL;
              Tipo     := edTipo.Text;
              Clase    := edClase.Text;
              Letra    := edLetra.Text;
              Prefijo  := edPrefijo.Text;
              ProgressBar.Position:=ProgressBar.Position+1;
              if dmFE1.ConsultarComprobanteDetallado(PuntoVta,tipoCpbte,Nro,ComprobanteDet) Then
                begin
                  PercepcionIIBBBaseImponible  := '';
                  PercepcionIIBBTasa           := '';
                  PercepcionIIBBImporte        := '';
                  PercepcionIVABaseImponible_1 := '';
                  PercepcionIVABaseImponible_2 := '';

                  PercepcionIVATasa_1          := '';
                  PercepcionIVATasa_2          := '';
                  PercepcionIVAImporte_1       := '';
                  PercepcionIVAImporte_2       := '';

                  Lista         := lvGeneral.Items.Add;
                  Lista.Checked := False;

                  Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(ComprobanteDet.FechaEmision,1,4)),
                                                                 StrToInt(Copy(ComprobanteDet.FechaEmision,5,2)),
                                                                 StrToInt(Copy(ComprobanteDet.FechaEmision,7,2)))));
                  Numero:=(Copy('00000000',1,8-Length(IntToStr(ComprobanteDet.FCbteDesde)))+IntToStr(ComprobanteDet.FCbteDesde));



                  CDSBuscarFactura.Filtered:= False;
                  CDSBuscarFactura.Close;
                  CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
                  CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
                  CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
                  CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                  CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
                  CDSBuscarFactura.Open;

                  if dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger in [201,202,203,206,207,208,211,212,213] then
                    begin
                      CDSBuscarFactura.Filter  := 'CODIGO_AFIP='+dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').Value;
                      CDSBuscarFactura.Filtered:= True;
                    end;
                  if (CDSBuscarFacturaID_FC.AsString<>'') then
                    begin
                      Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                      Tipo  := CDSBuscarFacturaTIPOCPBTE.AsString;// 'FC';
                    end
                  else // Si no Busca por Contado
                    if Not(NotaVtaCtdo) and (CDSBuscarFacturaID_FC.AsString='') then
                      begin
                        CDSBuscarFactura.Close;
                        CDSBuscarFactura.Params.ParamByName('Letra').Value   :=Letra;
                        CDSBuscarFactura.Params.ParamByName('suc').Value     :=prefijo;
                        CDSBuscarFactura.Params.ParamByName('Numero').Value  :=Numero;
                        CDSBuscarFactura.Params.ParamByName('Sucursal').Value:=StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                        CDSBuscarFactura.Params.ParamByName('Tipo').Value    :='FO';
                        CDSBuscarFactura.Open;
                        if (CDSBuscarFacturaID_FC.AsString<>'') then
                          begin
                            Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                            Tipo  := 'FO';
                          end
                        else
                          if Not(NotaVtaCtdo) and (CDSBuscarFacturaID_FC.AsString='') then
                            begin
                              CDSBuscarFactura.Close;
                              CDSBuscarFactura.Params.ParamByName('Letra').Value   :=Letra;
                              CDSBuscarFactura.Params.ParamByName('suc').Value     :=prefijo;
                              CDSBuscarFactura.Params.ParamByName('Numero').Value  :=Numero;
                              CDSBuscarFactura.Params.ParamByName('Sucursal').Value:=StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                              CDSBuscarFactura.Params.ParamByName('Tipo').Value    :='TK';
                              CDSBuscarFactura.Open;
                              if (CDSBuscarFacturaID_FC.AsString<>'') then
                                begin
                                  Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                                  Tipo  := 'TK';
                                end;
                            end;
                      end;

                  Lista.SubItems.Add(Fecha);
                  Lista.SubItems.Add( AnsiRightStr('000'+IntToStr(ComprobanteDet.TipoComprobante),3));
                  Lista.SubItems.Add(Tipo);
                  Lista.SubItems.Add(Clase);
                  Lista.SubItems.Add(Letra);
                  Lista.SubItems.Add(Prefijo);
                  Lista.SubItems.Add(Numero);
                  Lista.SubItems.Add(IntToStr(ComprobanteDet.DocNro));
                  Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ImpNeto));
                  Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ImpOpEx));
                  Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ImpIVA));

                  if Length(ComprobanteDet.ItemsTributos)>0 then
                    begin
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsTributos[0].Alic));
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsTributos[0].Importe));
                    end
                  else
                    begin
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                    end;

                  if Length(ComprobanteDet.ItemsIVA)>0 then
                    begin
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsIVA[0].BaseImp));
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsIVA[0].Importe));
                    end
                  else
                    begin
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                    end;

                  if Length(ComprobanteDet.ItemsIVA)>1 then
                    begin
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsIVA[1].BaseImp));
                      Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ItemsIVA[1].Importe));
                    end
                  else
                    begin
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                    end;


                  Lista.SubItems.Add(FormatFloat('0.00',ComprobanteDet.ImpTotal));
                  Lista.SubItems.Add(ComprobanteDet.CAE);
                  Lista.SubItems.Add(Comprobantedet.CAEFchVto);

                  Novedades     :='';
                  FechaAux      := FormatDateTime('dd/mm/yyyy',CDSBuscarFacturaFECHAVTA.AsdateTime);
                  Lista.Checked := Trim(CDSBuscarFacturaCAE.AsString)=ComprobanteDet.CAE;
                  if CDSBuscarFacturaID_FC.AsString='' then
                    Novedades:='Inexistente';
                  if (CDSBuscarFacturaCAE.Value<>ComprobanteDet.CAE) then
                    Novedades:=Novedades+'|'+'Dif.CAE';
                  if (Not(FechaAux=Fecha)) then
                    Novedades:=Novedades+'|'+'Dif.Fecha';
                  Importe           := FormatFloat('0.00',ComprobanteDet.ImpTotal);
                  lbNovedad.Caption := 'Novedades:'+IntToStr(Contador);
                  while pos(',',Importe)<>0 Do
                    delete(Importe,pos(',',Importe),1);
                  Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                  if (Diferencia>2) then
                    Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                  if Novedades<>'' then Contador:=Contador+1;
                  if Novedades<>'' then Lista.Checked:=False;

                  Lista.SubItems.Add(Novedades);
                  CDSBuscarFactura.Close;
                end;
            end;
          if Cancelar then  Exit;
        end;
    end
  else
    if (TipoCpbte in [21,19]) then  // esto son Exportacion..
      begin
        if dmFEX.CheckLogin(CuitActivo) then
          begin
            PuntoVta   := StrToInt(edPrefijo.Text);
            NroDesde   := StrToInt(edDesde.Text);
            NroHasta   := StrToInt(edHasta.Text);

            if (NroDesde<=0) then
              begin
                edDesde.Text := '1';
                NroDesde     := StrToInt(edDesde.Text);
              end;

            dmFEX.RecuperaLastCMP(PuntoVta,TipoCpbte,UltimoNroF,UltimaFechaVta);

            if (NroHasta>Trunc(UltimoNroF)) then
              begin
                edHasta.Text := FormatFloat('0',UltimoNro);
                NroHasta     := StrToInt(edHasta.Text);
              end;

            ProgressBar.Min:=1;
            if (NroHasta-NroDesde)<=0 then
              ProgressBar.Max:=1
            else
              ProgressBar.Max:=(NroHasta-NroDesde);
            ProgressBar.Position:=1;
            for NroL := NroDesde to NroHasta do
              begin
                Nro      := NroL;
                Tipo     := edTipo.Text;
                Clase    := edClase.Text;
                Letra    := edLetra.Text;
                Prefijo  := edPrefijo.Text;
                ProgressBar.Position :=ProgressBar.Position+1;
                var n:Double;
                n    := Nro;
                if dmFEX.CmpConsultarRecord( TipoCpbte, PuntoVta, N,ComprobanteDetX) Then
                  begin
                  PercepcionIIBBBaseImponible  := '';
                  PercepcionIIBBTasa           := '';
                  PercepcionIIBBImporte        := '';
                  PercepcionIVABaseImponible_1 := '';
                  PercepcionIVABaseImponible_2 := '';

                  PercepcionIVATasa_1          := '';
                  PercepcionIVATasa_2          := '';
                  PercepcionIVAImporte_1       := '';
                  PercepcionIVAImporte_2       := '';

                  Lista                        := lvGeneral.Items.Add;
                  Lista.Checked                := False;

                  if ComprobanteDetX.Fecha_cbte<>'' then
                    begin
                      Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(ComprobanteDetX.Fecha_cbte,1,4)),
                                                                     StrToInt(Copy(ComprobanteDetX.Fecha_cbte,5,2)),
                                                                     StrToInt(Copy(ComprobanteDetX.Fecha_cbte,7,2)))));
                      Numero:=(Copy('00000000',1,8-Length(IntToStr(ComprobanteDetX.Cbte_nro)))+IntToStr(ComprobanteDetX.Cbte_nro));



                      CDSBuscarFactura.Filtered:= False;

                      CDSBuscarFactura.Close;
                      CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
                      CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
                      CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
                      CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                      CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
                      CDSBuscarFactura.Open;

                      if (CDSBuscarFacturaID_FC.AsString<>'') then
                        begin
                          Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                          Tipo  := CDSBuscarFacturaTIPOCPBTE.AsString;// 'FC';
                        end;

                      Lista.SubItems.Add(Fecha);
                      Lista.SubItems.Add(AnsiRightStr('000'+IntToStr(ComprobanteDetX.Cbte_Tipo),3));
                      Lista.SubItems.Add(Tipo);
                      Lista.SubItems.Add(Clase);
                      Lista.SubItems.Add(Letra);
                      Lista.SubItems.Add(Prefijo);
                      Lista.SubItems.Add(Numero);
                      Lista.SubItems.Add(IntToStr(ComprobanteDetX.Cuit_pais_cliente));
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');
                      Lista.SubItems.Add('-');

                      Lista.SubItems.Add(ComprobanteDetX.Imp_total);
                      Lista.SubItems.Add(ComprobanteDetX.CAE);
                      Lista.SubItems.Add(ComprobantedetX.Fch_venc_Cae);

                      Novedades      :='';
                      FechaAux       := FormatDateTime('dd/mm/yyyy',CDSBuscarFacturaFECHAVTA.AsdateTime);
                      Lista.Checked  := Trim(CDSBuscarFacturaCAE.AsString)=ComprobanteDetX.CAE;
                      if CDSBuscarFacturaID_FC.AsString='' then
                        Novedades:='Inexistente';
                      if (CDSBuscarFacturaCAE.Value<>ComprobanteDetX.CAE) then
                        Novedades:=Novedades+'|'+'Dif.CAE';
                      if (Not(FechaAux=Fecha)) then
                        Novedades:=Novedades+'|'+'Dif.Fecha';
                      Importe           := ComprobanteDetX.Imp_total;
                      lbNovedad.Caption := 'Novedades:'+IntToStr(Contador);
                      while pos(',',Importe)<>0 Do
                        delete(Importe,pos(',',Importe),1);
                      Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                      if (Diferencia>2) then
                        Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                      if Novedades<>'' then Contador:=Contador+1;
                      if Novedades<>'' then Lista.Checked:=False;

                      Lista.SubItems.Add(Novedades);
                      CDSBuscarFactura.Close;
                    end;
                end;
            end;
          if Cancelar then  Exit;
        end;
      end;

  QActualizaUltimoNro.Close;
  QActualizaUltimoNro.ParamByName('UltimoNro').AsInteger:=StrToInt(edHasta.Text);
  QActualizaUltimoNro.ParamByName('Id').AsInteger       :=dbcComprobante.KeyValue;
  QActualizaUltimoNro.ExecSQL();
  QActualizaUltimoNro.Close;
end;

procedure TFormFiscalizacionLote.DocumentoXML_Liq;
begin
  XMLDocument1.XML.Text := wslsp.XMLResponse;
  XMLDocument1.Active   := True;

  NodoXML:=XMLDocument1.DocumentElement;

  DisplayNodoRenglonLiq(NodoXML);

end;


Function TFormFiscalizacionLote.ConsultarCuit(Cuit: String):String;
var
  lwsPadron: IwsPadron;
  lContribuyente: IContribuyente;
  lDomicilio: IDomicilio;
  Perce,ret,NCuit:Extended;
  CuitTemp:String;
begin
  CuitTemp:=Cuit;
  while Pos('-',CuitTemp)<>0 do
    delete(CuitTemp,Pos('-',CuitTemp),1);
  NCuit          := StrToFloat(Trim(CuitTemp));
  lwsPadron      := CowsPadron.Create;
  lwsPadron.CUIT := CuitEmpresa;// 20129063662;
  lwsPadron.ModoProduccion := ModoFcElectronica=1;
  lContribuyente := CoContribuyente.Create;
  if lwsPadron.login( CertificadoElectronico,ClaveElectronica) then
    If lwsPadron.consultar(NCuit , lContribuyente) Then
      begin
        DMMain_FD.fdcGestion.StartTransaction;
        Try
          lDomicilio := lContribuyente.domicilioFiscal;

          spIngresarClienteFD.Close;
          spIngresarClienteFD.ParamByName('CODIGO').AsString       :='';
          spIngresarClienteFD.ParamByName('NOMBRE').AsString       :=Copy(lContribuyente.nombre,1,35);
          spIngresarClienteFD.ParamByName('RAZON_SOCIAL').AsString :=Copy(lContribuyente.nombre,1,35);
          spIngresarClienteFD.ParamByName('DIRECCION').Value       :=copy(lDomicilio.direccion,1,35);
          spIngresarClienteFD.ParamByName('TIPO_IVA').AsInteger    :=lContribuyente.condicionIVA;
          spIngresarClienteFD.ParamByName('CUIT').AsString         :=Cuit;
          spIngresarClienteFD.ParamByName('TipoDoc').AsInteger     :=1;
          spIngresarClienteFD.ParamByName('NroDocumento').Value    :='123456789';
          spIngresarClienteFD.ParamByName('C_POSTAL').AsString     :=lDomicilio.codPostal;
          spIngresarClienteFD.ParamByName('LOCALIDAD').AsString    :=copy(lDomicilio.localidad,1,15);
          QBuscaLocalidad.Close;
          QBuscaLocalidad.ParamByName('dato').Value:=copy(lDomicilio.localidad,1,15);
          QBuscaLocalidad.Open;
          if Not(QBuscaLocalidad.IsEmpty) then
            begin
              QBuscaLocalidad.First;
              if QBuscaLocalidadID_POSTAL.AsString<>'' then
                spIngresarClienteFD.ParamByName('ID_POSTAL').Value :=QBuscaLocalidadID_POSTAL.Value;
            end;
          QBuscaLocalidad.Close;

//          spIngresarCliente.ParamByName('TELEFONO').Value      :='';
//          spIngresarCliente.ParamByName('VENDEDOR').Value      :='';
//          spIngresarCliente.ParamByName('OBSERVACIONES').Value :='';
//          spIngresarCliente.ParamByName('Mail').Value          :='';
//          spIngresarCliente.ParamByName('Cuenta_op').Value     :='';
//          spIngresarCliente.ParamByName('Zona').Value          :=-1;
//          spIngresarCliente.ParamByName('Celular').Value       :='';
          spIngresarClientefd.ExecProc;
          Result:=spIngresarClienteFD.ParamByName('Codigo_Alta').Value;
          DMMain_FD.fdcGestion.Commit;
          spIngresarClienteFD.Close;
        except
          Result:='';
          DMMain_FD.fdcGestion.Rollback;
          spIngresarClienteFD.Close;
          ShowMessage('No se grabo el cambios del cliente....!');
        end;
     end;
end;

procedure TFormFiscalizacionLote.DocumentoXML;
var NodoTributo:IXMLNode;
i:Integer;
begin
//  XMLDocument1.XML.Text := wsfev1.XMLResponse;
  IF (TipoCpbte=19) OR (TipoCpbte=21) Then
    XMLDocument1.LoadFromXML(wsfex1.XMLResponse)
  else
    XMLDocument1.LoadFromXML(wsfev1.XMLResponse);

  XMLDocument1.Active   := True;
  NodoXML               := XMLDocument1.DocumentElement;

  NodoTributoXML := XMLDocument1.DocumentElement.ChildNodes['soap:Body'].
                    ChildNodes['FECompConsultarResponse'].
                    ChildNodes['FECompConsultarResult'].
                    ChildNodes['ResultGet'].
                    ChildNodes['Tributos'];

  PercepcionIVABaseImponible_1 := '';
  PercepcionIVATasa_1          := '';
  PercepcionIVAImporte_1       := '';

  PercepcionIVABaseImponible_2 := '';
  PercepcionIVATasa_2          := '';
  PercepcionIVAImporte_2       := '';

  T1:=False;
  T2:=False;
  T3:=False;
  IF (TipoCpbte=19) OR (TipoCpbte=21) Then
    DisplayNodoRenglonExpo(NodoXML)
  else
    DisplayNodoRenglon(NodoXML);


end;

procedure TFormFiscalizacionLote.EnviarCorreo(Tipo:string; IdCpbte:String);
begin
  inherited;
  if (Tipo='FC') or (Tipo='NC') then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(self);
        FormCpbte_2.DatoNew  :=IdCpbte;
        FormCpbte_2.TipoCpbte:=Tipo;
        FormCpbte_2.Recuperar.Execute;
        if Not(FormCpbte_2.DSBase.DataSet.IsEmpty) and chbCorreo.Checked Then
          begin
            FormCpbte_2.AutoEnviarCorreo:=True;// esto evita que aparezca la venta del envio de correo
            FormCpbte_2.EnviarCorreo.Execute;
          end;
        FormCpbte_2.Close;
        FreeAndNil(FormCpbte_2);
    end
  else
    if (Tipo='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
        FormCpbteCtdo_2.DatoNew  :=IdCpbte;
        FormCpbteCtdo_2.TipoCpbte:=Tipo;
        FormCpbteCtdo_2.Recuperar.Execute;
        if Not(FormCpbteCtdo_2.DSBase.DataSet.IsEmpty) and chbCorreo.Checked Then
          begin
            FormCpbteCtdo_2.AutoEnviarCorreo:=True;
            FormCpbteCtdo_2.EnviarCorreo.Execute;
          end;
        FormCpbteCtdo_2.Close;
        FreeAndNil(FormCpbteCtdo_2);
      end;
end;


procedure TFormFiscalizacionLote.DisplayNodo(Nodo:IXMLNode  );
var i:Integer;
begin
  if Nodo.NodeType=ntElement then
    begin
      if Nodo.IsTextElement then
        begin
          Lista:=lwFacturas.Items.Add;
          Lista.SubItems.Add(Nodo.NodeName);
          Lista.SubItems.Add(Nodo.NodeValue);

        end;
    end;
  for i  := 0 to Nodo.ChildNodes.Count - 1 do
    begin
      DisplayNodo(Nodo.ChildNodes[I]);
    end;
end;

procedure TFormFiscalizacionLote.DisplayNodoRenglon(Nodo:IXMLNode  );
var
 i           : Integer;
 Cadena      : String;
 NodoPadre   : String;
 NodoTributo : IXMLNode;
begin
  if Nodo.NodeType=ntElement then
    begin
      if Nodo.IsTextElement then
        begin
          NodoPadre:= Nodo.ParentNode.NodeName;
          Tipo     := edTipo.Text;
          Clase    := edClase.Text;
          Letra    := edLetra.Text;

          if (Nodo.NodeName='CbteFch') and (NodoPadre='ResultGet') then
            Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Nodo.NodeValue,1,4)),
                                                           StrToInt(Copy(Nodo.NodeValue,5,2)),
                                                           StrToInt(Copy(Nodo.NodeValue,7,2)))))
          else
            if Nodo.NodeName='PtoVta' then
              Prefijo:=(Copy('0000',1,4-Length(Nodo.NodeValue))+Nodo.NodeValue)
            else
              if Nodo.NodeName='CbteDesde' then
                Numero:=(Copy('00000000',1,8-Length(Nodo.NodeValue))+Nodo.NodeValue)
              else
                if Nodo.NodeName='DocNro' then
                  NroCuit:=Nodo.NodeValue
                else
                  if Nodo.NodeName='ImpNeto' then
                    Neto:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                  else
                    if Nodo.NodeName='ImpIVA' then
                      Iva:= formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                    else
                      if Nodo.NodeName='ImpTotal' then
                        Importe:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                      else
                        if Nodo.NodeName='CodAutorizacion' then
                          CAE:=Nodo.NodeValue
                        else
                          if Nodo.NodeName='FchVto' then
                            CAEVto:=Nodo.NodeValue
                          else
                            if Nodo.NodeName='ImpOpEx' then
                              NetoExento:=Nodo.NodeValue
                            else
                              if Nodo.NodeName='Alic' then
                                ALic:=Nodo.NodeValue
                              else
                                if Nodo.NodeName='ImpTrib' then
                                  ImporteAlic:=Nodo.NodeValue
                                else
                                  if (Nodo.NodeName='tipoComprobante') or (Nodo.NodeName='CbteTipo') then
                                    CodAFIP:=formatFloat('000', StrToFloat(Nodo.NodeValue));

            if (NodoPadre='Tributo') then
             begin
               if (Nodo.NodeName='Id') and (Nodo.NodeValue='2') then  t1:=True;

               if t1 then
                 begin
                   if Nodo.NodeName='BaseImp' then
                     PercepcionIIBBBaseImponible := Nodo.NodeValue;
                   if Nodo.NodeName='Alic' then
                     PercepcionIIBBTasa          := formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                   if Nodo.NodeName='Importe' then
                     begin
                       PercepcionIIBBImporte     :=formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                       t1:=False;
                     end;
                 end
               else
                 begin
                   if PercepcionIVAImporte_1='' then
                     begin
                       if Nodo.NodeName='BaseImp' then
                         PercepcionIVABaseImponible_1 := Nodo.NodeValue;
                       if Nodo.NodeName='Alic' then
                         PercepcionIVATasa_1          := formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                       if Nodo.NodeName='Importe' then
                         PercepcionIVAImporte_1     := formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                     end
                   else
                     if PercepcionIVAImporte_2='' then
                       begin
                         if Nodo.NodeName='BaseImp' then
                           PercepcionIVABaseImponible_2 := Nodo.NodeValue;
                         if Nodo.NodeName='Alic' then
                           PercepcionIVATasa_2          := formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                         if Nodo.NodeName='Importe' then
                           PercepcionIVAImporte_2     := formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                       end;

                 end;
             end

        end;
    end;

  for i  := 0 to Nodo.ChildNodes.Count - 1 do
    begin
      DisplayNodoRenglon(Nodo.ChildNodes[I]);
    end;

end;

procedure TFormFiscalizacionLote.DisplayNodoRenglonExpo(Nodo:IXMLNode  );
var
 i           : Integer;
 Cadena      : String;
 NodoPadre   : String;
 NodoTributo : IXMLNode;
begin
  if Nodo.NodeType=ntElement then
    begin
      if Nodo.IsTextElement then
        begin
          NodoPadre:= Nodo.ParentNode.NodeName;
          Tipo     := edTipo.Text;
          Clase    := edClase.Text;
          Letra    := edLetra.Text;

          if (Nodo.NodeName='Fecha_cbte') and (NodoPadre='FEXResultGet') then
            Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Nodo.NodeValue,1,4)),
                                                           StrToInt(Copy(Nodo.NodeValue,5,2)),
                                                           StrToInt(Copy(Nodo.NodeValue,7,2)))))
          else
            if Nodo.NodeName='Punto_vta' then
              Prefijo:=(Copy('0000',1,4-Length(Nodo.NodeValue))+Nodo.NodeValue)
            else
              if Nodo.NodeName='Cbte_nro' then
                Numero:=(Copy('00000000',1,8-Length(Nodo.NodeValue))+Nodo.NodeValue)
              else
                if Nodo.NodeName='Cuit_pais_cliente' then
                  NroCuit:=Nodo.NodeValue
                else
                  if Nodo.NodeName='Imp_total' then
                    begin
                      Neto:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                       Importe:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue));
                    end
                  else
                    if Nodo.NodeName='Moneda_ctz' then
                      Iva:= formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                    else
                      if Nodo.NodeName='Moneda_Id' then
                        NetoExento:= Nodo.NodeValue
                      else
                     if Nodo.NodeName='Cae' then
                        CAE:=Nodo.NodeValue
                      else
                        if Nodo.NodeName='Fch_venc_Cae' then
                          CAEVto:=Nodo.NodeValue
                        else
                           if (Nodo.NodeName='Cbte_tipo') or (Nodo.NodeName='Cbte_tipo') then
                            begin
                              Tipo:='NC';
                              CodAFIP:=formatFloat('000', StrToFloat(Nodo.NodeValue));
                            end;
        end

    end;

  for i  := 0 to Nodo.ChildNodes.Count - 1 do
    begin
      DisplayNodoRenglonExpo(Nodo.ChildNodes[I]);
    end;

end;


procedure TFormFiscalizacionLote.DisplayNodoRenglonLiq(Nodo: IXMLNode);
var i:Integer;
Cadena:String;
begin
  if Nodo.NodeType=ntElement then
    begin
      if Nodo.IsTextElement then
       begin
         Tipo :=edTipo.Text;
         Clase:=edClase.Text;
         Letra:=edLetra.Text;
         if Nodo.NodeName='fechaComprobante' then
           Fecha:=FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Nodo.NodeValue,1,4)),
                                                          StrToInt(Copy(Nodo.NodeValue,6,2)),
                                                          StrToInt(Copy(Nodo.NodeValue,9,2)))))
         else
           if Nodo.NodeName='puntoVenta' then
             Prefijo:=(Copy('0000',1,4-Length(Nodo.NodeValue))+Nodo.NodeValue)
           else
             if (Nodo.NodeName='nroComprobante') and (Nodo.ParentNode.NodeName='comprobanteAjustado') then
               CompAjustado:=Nodo.NodeValue
             else
             if Nodo.NodeName='nroComprobante' then
               Numero:=(Copy('00000000',1,8-Length(Nodo.NodeValue))+Nodo.NodeValue)
             else
               if Nodo.NodeName='cuit' then
                 NroCuit:=Nodo.NodeValue
               else
                 if Nodo.NodeName='importeTotalNeto' then
                   Importe:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
//                   Neto:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                 else
                   if Nodo.NodeName='importeIVASobreBruto' then
                     Iva:= formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                   else
                     if Nodo.NodeName='importeBruto' then
                       Neto:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
//                       Importe:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue))
                     else
                       if Nodo.NodeName='cae' then
                         CAE:=Nodo.NodeValue
                       else
                         if Nodo.NodeName='fechaVencimientoCae' then
                           CAEVto:=Nodo.NodeValue
                         else
                           if Nodo.NodeName='importeTotalGastos' then
                             NetoExento:=Nodo.NodeValue
                           else
                             if Nodo.NodeName='alicuotaIVA' then
                               ALic:=Nodo.NodeValue
                             else
                               if Nodo.NodeName='importeTotalTributos' then
                                 begin
                                   ImporteAlic:=Nodo.NodeValue;
                                   ImporteAlic:=',0.00';
                                 end
                               else
                                 if Nodo.NodeName='tipoComprobante' then
                                   CodAFIP:=Nodo.NodeValue
                                 else
                                   if (Nodo.NodeName='tipoAjuste') and (Nodo.ParentNode.NodeName='ajuste') then
                                     TipoAjusteLiq:=Nodo.NodeValue
                                  else
                                    if (Nodo.NodeName='importe') and (Nodo.ParentNode.NodeName='tributo') then
                                       RetencionIVA:=formatFloat(',0.00', StrToFloat(Nodo.NodeValue));


          end;
      end;
    for i  := 0 to Nodo.ChildNodes.Count - 1 do
      begin
        DisplayNodoRenglonLiq(Nodo.ChildNodes[I]);
      end;

end;


procedure TFormFiscalizacionLote.BitBtn1Click(Sender: TObject);
begin
  inherited;
  Cancelar:=True;
end;


procedure TFormFiscalizacionLote.btListarClick(Sender: TObject);
begin
  inherited;
  jvHiloConsulta.FreeOnTerminate:=True;
  jvHiloConsulta.Execute(self);
end;

procedure TFormFiscalizacionLote.btListarComprobClick(Sender: TObject);
begin
  inherited;
  ConultaFiscalizaciones;
end;

procedure TFormFiscalizacionLote.BitBtn2Click(Sender: TObject);
begin
  inherited;
  dxComponentPrinter1Link1.Preview(true);
end;

procedure TFormFiscalizacionLote.btConsultaClick(Sender: TObject);
var
par1,par2:WideString;
I,TipoCpbte,PuntoVta,Nro:Integer;
CertificadoActivo,CuitEmpresaActivo:String;
begin
  inherited;
  CuitEmpresaActivo     := CDSEmpresa.FieldByName('cuit').AsString;
  CertificadoActivo     := FormFiscalizacionLote.CertificadoElectronico;

  if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value);
    end;

  CuitEmpresaActivo:=AnsiReplaceStr(CuitEmpresaActivo,'-','');

  wsfev1.Reset;
  wsfev1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfev1.URL  := URLWSW;

  //wsfev1.Reset;
  wsfex1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
  wsfex1.URL  := URLWSW_EX;
  // comprobantes Comunes
  if (Not(cbLetra.Text='E')) and  (wsfev1.login(CertificadoActivo,FormFiscalizacionLote.ClaveElectronica,URLWSAA)) then
    begin
      wsfev1.Reset;
      if rgBuscarPor.ItemIndex=0 then
        begin
          if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='A') Then
              TipoCpbte:=1
            else
              if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='B') Then
               TipoCpbte:=6
              else
                if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='A') Then
                  TipoCpbte:=3
                else
                  if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='B') Then
                    TipoCpbte:=8
                  else
                    if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='A') Then
                        TipoCpbte:=5
                    else
                      if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='B') Then
                        TipoCpbte:=10
                      else
                        if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='M') Then
                           TipoCpbte:=51
                        else
                          if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='M') Then
                             TipoCpbte:=52
                          else
                            if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='M') Then
                               TipoCpbte:=53
                            else
                              if (CDSFacturasTIPOCPBTE.Value='FC') and ( CDSFacturasCLASECPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='A') Then
                                 TipoCpbte:=63
                              else
                                if (CDSFacturasTIPOCPBTE.Value='FC') and ( CDSFacturasCLASECPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='B') Then
                                  TipoCpbte:=64
                                else
                                  if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='C') Then
                                    TipoCpbte:=11
                                  else
                                    if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='C') Then
                                      TipoCpbte:=13
                                    else
                                      if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='C') Then
                                         TipoCpbte:=11
                                      else
                                        if (CDSFacturasTIPOCPBTE.Value='FP') and (CDSFacturasLETRAFAC.Value='A') Then
                                         TipoCpbte:=201
                                       else
                                         if (CDSFacturasTIPOCPBTE.Value='FP') and (CDSFacturasLETRAFAC.Value='B') Then
                                           TipoCpbte:=206
                                         else
                                           if (CDSFacturasTIPOCPBTE.Value='FL') and (CDSFacturasLETRAFAC.Value='A') Then
                                             TipoCpbte:=60
                                           else
                                             if (CDSFacturasTIPOCPBTE.Value='FL') and (CDSFacturasLETRAFAC.Value='B') Then
                                               TipoCpbte:=61;

          // segun como se tome la Fc. de Contado como Nota de Vta Ctdo
          if Not(NotaVtaCtdo) then
            begin
              if (edTipo.Text='FO') and (edLetra.Text='A') Then
                TipoCpbte:=1
              else
                if (edTipo.Text='FO') and (edLetra.Text='B') Then
                  TipoCpbte:=6;
            end;
          //************************************************************

         // TipoCpbte:=dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').Value;
          PuntoVta:= StrToInt(edSuc.Text);
          Nro     := StrToInt(edNumero.Text);
        end
      else
        begin
          if (cbTipo.Text='FC') and (cbLetra.Text='A') Then
              TipoCpbte:=1
            else
              if (cbTipo.Text='FC') and (cbLetra.Text='B') Then
               TipoCpbte:=6
              else
                if (cbTipo.Text='NC') and (cbLetra.Text='A') Then
                  TipoCpbte:=3
                else
                  if (cbTipo.Text='NC') and (cbLetra.Text='B') Then
                    TipoCpbte:=8
                  else
                    if (cbTipo.Text='FO') and (cbLetra.Text='A') Then
                        TipoCpbte:=5
                    else
                       if (cbTipo.Text='FO') and (cbLetra.Text='B') Then
                           TipoCpbte:=10
                       else
                         if (cbTipo.Text='LQ') and (cbLetra.Text='B') Then
                             TipoCpbte:=64
                         else
                           if (cbTipo.Text='LQ') and (cbLetra.Text='A') Then
                              TipoCpbte:=63
                           else
                             if (cbTipo.Text='FO') and (cbLetra.Text='C') Then
                               TipoCpbte:=11
                             else
                               if (cbTipo.Text='FC') and (cbLetra.Text='C') Then
                                 TipoCpbte:=11
                               else
                                 if (cbTipo.Text='NC') and (cbLetra.Text='C') Then
                                   TipoCpbte:=13
                                 else
                                   if (cbTipo.Text='FP') and (cbLetra.Text='A') Then
                                     TipoCpbte:=201
                                   else
                                     if (cbTipo.Text='FP') and (cbLetra.Text='B') Then
                                       TipoCpbte:=206
                                     else
                                       if (cbTipo.Text='NP') and (cbLetra.Text='A') Then
                                         TipoCpbte:=203
                                       else
                                         if (cbTipo.Text='NP') and (cbLetra.Text='B') Then
                                           TipoCpbte:=208
                                        else
                                          if (cbTipo.Text='FL') and (cbLetra.Text='A') Then
                                            TipoCpbte:=60
                                          else
                                            if (cbTipo.Text='FL') and (cbLetra.Text='B') Then
                                              TipoCpbte:=61;


          // segun como se tome la Fc. de Contado como Nota de Vta Ctdo
          if Not(NotaVtaCtdo) then
            begin
              if (edTipo.Text='FO') and (edLetra.Text='A') Then
                TipoCpbte:=1
              else
                if (edTipo.Text='FO') and (edLetra.Text='B') Then
                  TipoCpbte:=6;
            end;
          //************************************************************

          PuntoVta:= StrToInt(edSuc.Text);
          Nro     := StrToInt(edNumero.Text);
        end;
      wsfev1.Depurar:=True;
      if not wsfev1.CmpConsultar(TipoCpbte, PuntoVta, Nro,par1,par2) then
        ShowMessage (wsfev1.ErrorDesc)
      else
        begin
          XMLDocument1.XML.Text := wsfev1.XMLResponse;
          XMLDocument1.Active   := True;
          if chGuardaXML.Checked then
            XMLDocument1.SaveToFile(DMMain_FD.MainPath + 'consulta.xml');

          NodoXML               := XMLDocument1.DocumentElement;
     //     NodoXML               := XMLDocument1.DocumentElement.ChildNodes.FindNode('Tributos/Tributo');

          lwFacturas.Clear;
          if NodoXML<>nil then
            DisplayNodo(NodoXML);
       end;
    end
  else
   if (cbLetra.Text ='E') and  (wsfex1.login(CertificadoActivo,FormFiscalizacionLote.ClaveElectronica,URLWSAA)) then
    begin
      if rgBuscarPor.ItemIndex=0 then
        begin
          if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='E') Then
            TipoCpbte:=19
          else
            if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='E') Then
              TipoCpbte:=21;
            // TipoCpbte:=dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').Value;
          PuntoVta:= StrToInt(edSuc.Text);
          Nro     := StrToInt(edNumero.Text);
        end
      else
        begin
          if (cbTipo.Text='FC') and (cbLetra.Text='E') Then
              TipoCpbte:=19
            else
              if (cbTipo.Text='NC') and (cbLetra.Text='E') Then
                  TipoCpbte:=21;
          PuntoVta:= StrToInt(edSuc.Text);
          Nro     := StrToInt(edNumero.Text);
        end;
      if not wsfex1.CmpConsultar(TipoCpbte, PuntoVta, Nro,par1,par2) then
        ShowMessage (wsfex1.ErrorDesc)
      else
        begin
          XMLDocument1.XML.Text := wsfex1.XMLResponse;
          XMLDocument1.Active   := True;
          if chGuardaXML.Checked then
            XMLDocument1.SaveToFile(DMMain_FD.MainPath + 'consulta.xml');
          NodoXML               := XMLDocument1.DocumentElement;
          lwFacturas.Clear;
          if NodoXML<>nil then
            DisplayNodo(NodoXML);
       end;
    end
  else
    ShowMessage (wsfex1.ErrorDesc);
end;

procedure TFormFiscalizacionLote.btImprimirClick(Sender: TObject);
begin
  inherited;
   dxComponentPrinter1Link1.Preview(true);
//
//
//  frxUserDataListado.RangeEnd      := reCount;
//  frxUserDataListado.RangeEndCount := lvGeneral.Items.Count;
//  frxReport.ShowReport;
end;

procedure TFormFiscalizacionLote.BuscaCpbtePorCAEExecute(Sender: TObject);
begin
  inherited;
  QBuscaCpbtePorCAE.Close;
  QBuscaCpbtePorCAE.ParamByName('CAE').Value:=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[14];
  QBuscaCpbtePorCAE.Open;
  if QBuscaCpbtePorCAETIPOCPBTE.AsString<>'' then
    begin
      if ((QBuscaCpbtePorCAETIPOCPBTE.AsString='FC') or (QBuscaCpbtePorCAETIPOCPBTE.AsString='NC') or (QBuscaCpbtePorCAETIPOCPBTE.AsString='ND') ) then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  :=QBuscaCpbtePorCAEID_FC.AsString;
          FormCpbte_2.TipoCpbte:=QBuscaCpbtePorCAETIPOCPBTE.AsString;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if (QBuscaCpbtePorCAETIPOCPBTE.AsString='FO') then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  :=QBuscaCpbtePorCAEID_FC.AsString;
            FormCpbteCtdo_2.TipoCpbte:=QBuscaCpbtePorCAETIPOCPBTE.AsString;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;
    end;

end;

procedure TFormFiscalizacionLote.BuscarArticulosExecute(Sender: TObject);
var Detalle:String;
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
    begin
       //CDSStock.Close;
      // CDSStock.Params.ParamByName('codigo').Value:=FormBuscadorArticulos.Codigo;
       //CDSStock.Open;
       detalle :=DMMain_FD.GetDetalleArticulo(FormBuscadorArticulos.Codigo);
       if (Detalle<>'') then
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:=detalle;
               ceCodigo.Text :=FormBuscadorArticulos.Codigo;
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :=detalle;
                 ceCodigo105.Text :=FormBuscadorArticulos.Codigo;
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :=detalle;
                   ceCodigoCero.Text  :=FormBuscadorArticulos.Codigo;
                 end
         end
       else
         begin
           if (Sender as TJvComboEdit).Name='ceCodigo' then
             begin
               edDetalle.Text:='';
               ceCodigo.Text :='';
             end
           else
             if (Sender as TJvComboEdit).Name='ceCodigo105' then
               begin
                 edDetalle2.Text  :='';
                 ceCodigo105.Text :='';
               end
             else
               if (Sender as TJvComboEdit).Name='ceCodigoCero' then
                 begin
                   edDetalleCero.Text :='';
                   ceCodigoCero.Text  :='';
                 end
         end;
//       CDSStock.Close;

    end;

end;

procedure TFormFiscalizacionLote.BuscarCpbteExecute(Sender: TObject);
var tipo,Clase,letra,prefijo,numero,sucursal:String;
begin
  inherited;
  Tipo     := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[2];
  Clase    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[3];
  Letra    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[4];
  Prefijo  := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[5];
  Numero   := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[6];
  Sucursal := dbcComprobante.LookupSource.DataSet.FieldByName('SUCURSAL').AsString;

  if Not(TipoCpbte in [186,185,189,191,180,182,183,188]) then
    begin
      CDSBuscarFactura.Close;
      CDSBuscarFactura.Params.ParamByName('Letra').Value   :=Letra;
      CDSBuscarFactura.Params.ParamByName('suc').Value     :=prefijo;
      CDSBuscarFactura.Params.ParamByName('Numero').Value  :=Numero;
      CDSBuscarFactura.Params.ParamByName('Sucursal').Value:=StrToInt(Sucursal);
      CDSBuscarFactura.Params.ParamByName('Tipo').Value    :=Tipo;
    //  QBuscarFactura.ParamByName('clase').Value   :=Clase;
      CDSBuscarFactura.Open;

      if CDSBuscarFactura.Fields[0].AsString<>'' then
        begin
          if ((Tipo='FC') or (Tipo='NC')) then
            begin
              if Not(Assigned(FormCpbte_2)) then
                FormCpbte_2:=TFormCpbte_2.Create(Application);
              FormCpbte_2.DatoNew   := CDSBuscarFactura.Fields[0].AsString;
              FormCpbte_2.TipoCpbte := Tipo;
              FormCpbte_2.Recuperar.Execute;
              FormCpbte_2.Show;
            end
          else
            if (Tipo='FO') then
              begin
                if Not(Assigned(FormCpbteCtdo_2)) then
                  FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
                FormCpbteCtdo_2.DatoNew  := CDSBuscarFactura.Fields[0].AsString;
                FormCpbteCtdo_2.TipoCpbte:= Tipo;
                FormCpbteCtdo_2.Recuperar.Execute;
                FormCpbteCtdo_2.Show;
              end
            else
              if (Tipo='TK') then
                begin
                  if Not(Assigned(FormTicketVta)) then
                    FormTicketVta:=TFormTicketVta.Create(Application);
                  FormTicketVta.DatoNew   := CDSBuscarFactura.Fields[0].AsString;
                  FormTicketVta.TipoCpbte := Tipo;
                  FormTicketVta.Recuperar.Execute;
                  FormTicketVta.Show;
                end;
        end
      else
        ShowMessage('Comprobante no Encontrado....');
      CDSBuscarFactura.Close;
    end
  else
    begin
      QBuscarFacturaLQ.Close;
      QBuscarFacturaLQ.ParamByName('Letra').Value   := Letra;
      QBuscarFacturaLQ.ParamByName('suc').Value     := prefijo;
      QBuscarFacturaLQ.ParamByName('Numero').Value  := Numero;
      QBuscarFacturaLQ.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
      QBuscarFacturaLQ.ParamByName('Tipo').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('Tipo_comprob').AsString;// Tipo;
      QBuscarFacturaLQ.ParamByName('Clase').Value   := dbcComprobante.LookupSource.DataSet.FieldByName('Clase_comprob').AsString;//Clase;
      QBuscarFacturaLQ.Open;
      if QBuscarFacturaLQID_FC.AsString<>''  then
        begin
          if Not(Assigned(FormCompra_2)) then
            FormCompra_2:=TFormCompra_2.Create(Application);
          FormCompra_2.DatoNew  :=QBuscarFacturaLQID_FC.AsString;
          FormCompra_2.TipoCpbte:=Tipo;
          FormCompra_2.Recuperar.Execute;
          FormCompra_2.Show;
        end
    end;
end;

procedure TFormFiscalizacionLote.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSFacturas.Open;
end;

procedure TFormFiscalizacionLote.Button1Click(Sender: TObject);
var path:string;
begin
  inherited;
//   ClientDataSet1.Close;
   path:=ExtractFilePath(ParamStr(0));
 //  ClientDataSet1.LoadFromFile(Path+'response.xml');
 //  ClientDataSet1.Open;

end;

procedure TFormFiscalizacionLote.CDSFacturasAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSImpuestos.Close;
  CDSImpuestos.Params.ParamByName('id').Value    :=CDSFacturasID_FC.Value;
  CDSImpuestos.Open;
  CDSPercepcionIVA.Close;
  CDSPercepcionIVA.Params.ParamByName('id').Value:=CDSFacturasID_FC.Value;
  CDSPercepcionIVA.Open;

end;

procedure TFormFiscalizacionLote.ceClienteButtonClick(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
   FormBuscadorClientes.Tipo:='''S'''; // Activos
   FormBuscadorClientes.PopupMode:=pmAuto;
   FormBuscadorClientes.ShowModal;
   if FormBuscadorClientes.Codigo<>'' Then
     BEGIN
       ceCliente.Text  := FormBuscadorClientes.Codigo;
       CDSClientes.Close;
       CDSClientes.Params.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
       CDSClientes.Open;
       IF NOT (CDSClientes.eof) THEN
         BEGIN
           edNombreCliente.Text := CDSClientesNOMBRE.AsString;
           ceCliente.SetFocus;
           ceCliente.SelectAll;
         END;
    END;
end;

procedure TFormFiscalizacionLote.chbActivosClick(Sender: TObject);
begin
  inherited;
  CDSBuscadorComp.Close;
  CDSBuscadorComp.Params.ParamByName('sucursal' ).Value:=dbcSucursal.KeyValue;
  CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='*';
  if chbActivos.Checked then
    CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='S';
  CDSBuscadorComp.Open;
end;

procedure TFormFiscalizacionLote.dbgFacturasDblClick(Sender: TObject);
begin
  inherited;
  if ((CDSFacturasTIPOCPBTE.Value='FC') or (CDSFacturasTIPOCPBTE.Value='NC') or (CDSFacturasTIPOCPBTE.Value='ND')) then
    begin
      if Not(Assigned(FormCpbte_2)) then
        FormCpbte_2:=TFormCpbte_2.Create(Application);
      FormCpbte_2.DatoNew  :=CDSFacturasID_FC.AsString;
      FormCpbte_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
      FormCpbte_2.Recuperar.Execute;
      FormCpbte_2.Show;
    end
  else
    if (CDSFacturasTIPOCPBTE.Value='FO') then
      begin
        if Not(Assigned(FormCpbteCtdo_2)) then
          FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
        FormCpbteCtdo_2.DatoNew  :=CDSFacturasID_FC.AsString;
        FormCpbteCtdo_2.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
        FormCpbteCtdo_2.Recuperar.Execute;
        FormCpbteCtdo_2.Show;
      end
    else
      if (CDSFacturasTIPOCPBTE.Value='TK') then
        begin
          if Not(Assigned(FormTicketVta)) then
            FormTicketVta:=TFormTicketVta.Create(Application);
          FormTicketVta.DatoNew  :=CDSFacturasID_FC.AsString;
          FormTicketVta.TipoCpbte:=CDSFacturasTIPOCPBTE.AsString;
          FormTicketVta.Recuperar.Execute;
          FormTicketVta.Show;
        end;
end;

procedure TFormFiscalizacionLote.DSBaseStateChange(Sender: TObject);
begin
 // inherited;
end;

procedure TFormFiscalizacionLote.DuplicarExecute(Sender: TObject);
var tipo,Clase,letra,prefijo,numero,sucursal:String;
begin
  inherited;
  Tipo     := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[2];
  Clase    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[3];
  Letra    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[4];
  Prefijo  := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[5];
  Numero   := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[6];
  Sucursal := dbcComprobante.LookupSource.DataSet.FieldByName('SUCURSAL').AsString;
  CDSBuscarFactura.Close;
  CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
  CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
  CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
  CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(Sucursal);
  CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
//  QBuscarFactura.ParamByName('clase').Value   :=Clase;
  CDSBuscarFactura.Open;

  if CDSBuscarFactura.Fields[0].AsString<>'' then
    begin
      if ((Tipo='FC') or (Tipo='NC')) then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Application);
          FormCpbte_2.DatoNew   := CDSBuscarFactura.Fields[0].AsString;
          FormCpbte_2.TipoCpbte := Tipo;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
          FormCpbte_2.DuplicarComprobante.Execute;
        end
      else
        if (Tipo='FO') then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Application);
            FormCpbteCtdo_2.DatoNew  :=CDSBuscarFactura.Fields[0].AsString;
            FormCpbteCtdo_2.TipoCpbte:=Tipo;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
            FormCpbteCtdo_2.DuplicarComprobante.Execute;
          end
        else
          if (Tipo='TK') then
            begin
              if Not(Assigned(FormTicketVta)) then
                FormTicketVta:=TFormTicketVta.Create(Application);
              FormTicketVta.DatoNew  :=CDSBuscarFactura.Fields[0].AsString;
              FormTicketVta.TipoCpbte:=Tipo;
              FormTicketVta.Recuperar.Execute;
              FormTicketVta.Show;
              FormTicketVta.DuplicarCpbte.Execute;
          end;
    end
  else
    ShowMessage('Comprobante no Encontrado....');
  CDSBuscarFactura.Close;
end;

procedure TFormFiscalizacionLote.FacturarExecute(Sender: TObject);
var tipo,Clase,letra,prefijo,numero,sucursal,
    Cuit,Codigo,Neto,NetoExento,Iva,Alic,ImpTrib,
    Total,Fecha:String;
NetoBase,Iva21,Iva105,Neto21,Neto105,Exento:Extended;
begin
  inherited;
   if Not(TipoCpbte in [186,185,189,191,180,182,183,188]) and
      Not(lvGeneral.Items.Item[lvGeneral.ItemIndex].Checked) then
      begin
        Tipo       := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[2];
        Clase      := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[3];
        Letra      := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[4];
        Prefijo    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[5];
        Numero     := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[6];
        Sucursal   := dbcComprobante.LookupSource.DataSet.FieldByName('SUCURSAL').AsString;
        Cuit       := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[7];

        Neto       := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[8];
        NetoExento := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[9];

        Iva        := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[10];
        Total      := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[17];

        Alic       := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[12];
        ImpTrib    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[13];
/////////////////////////////////////////////////////////////////////////////////////////////////
/// para elegir el tipo de comprobante a generar .....
        if Not(Assigned(FormBuscadorTipoCpbte)) then
          FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Self);
        FormBuscadorTipoCpbte.TipoCpbte1   :='FO';
        FormBuscadorTipoCpbte.TipoCpbte2   :='TK';
        FormBuscadorTipoCpbte.TipoCpbte3   :='FC';
        FormBuscadorTipoCpbte.CV           :='V';
        FormBuscadorTipoCpbte.Sucursal     := StrToInt(sucursal);
        FormBuscadorTipoCpbte.DiscriminaIVA:= '*';
        FormBuscadorTipoCpbte.chUso.Checked:= True;

        FormBuscadorTipoCpbte.ShowModal;
        if FormBuscadorTipoCpbte.ModalResult=mrOk then
          begin
            Tipo       := FormBuscadorTipoCpbte.TipoCpbte;
            Clase      := FormBuscadorTipoCpbte.ClaseCpbte;
            Letra      := FormBuscadorTipoCpbte.Letra;
//            Prefijo    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[5];
//            FId_Cpbte
          end;

        while (Pos(',',Neto)>0) do
          System.Delete(Neto, Pos(',',Neto),1);

        while (Pos(',',Iva)>0) do
          System.Delete(Iva, Pos(',',Iva),1);

        while (Pos(',',NetoExento)>0) do
          System.Delete(NetoExento, Pos(',',NetoExento),1);

        while (Pos(',',Total)>0) do
          System.Delete(Total, Pos(',',Total),1);

        Codigo   := ceCliente.Text;
        Exento   := StrToFloat(NetoExento);
        NetoBase := StrToFloat(Neto);

        Iva21    := NetoBase*0.21;
        Iva105   := Abs(RoundTo(StrToFloat(Iva)-Iva21,-3));
        Iva105   := RoundTo(Iva105,-2);

       // if Iva105=Iva then
       //   Iva105:=Iva;

        Neto105  := Iva105/0.105;
        Neto21   := NetoBase-Neto105;

        if Letra='A' then
          begin
            while (Pos('-',Cuit)>0) do
              System.Delete(Cuit, Pos('-',Cuit),1);
            if cuit='' then Cuit:='00000000000';
            if cuit[1]='0' then Cuit:='00000000000';

            Insert('-',Cuit,3);
            Insert('-',Cuit,12);
            QBuscarCuit.Close;
            QBuscarCuit.ParamByName('Cuit').AsString:=Cuit;
            QBuscarCuit.Open;
            if QBuscarCuit.Fields[0].AsString<>'' then
              Codigo:=QBuscarCuit.Fields[0].AsString
            else
              Codigo:='';
            QBuscarCuit.Close;
          end
        else
          if Letra='B' then
            begin
              while (Pos('-',Cuit)>0) do
                System.Delete(Cuit, Pos('-',Cuit),1);
              if cuit='' then Cuit:='00000000000';
              if cuit[1]='0' then Cuit:='00000000000';

              Insert('-',Cuit,3);
              Insert('-',Cuit,12);
              if Cuit<>'00-00000000-0' then
                begin
                  QBuscarCuit.Close;
                  QBuscarCuit.ParamByName('Cuit').AsString:=Cuit;
                  QBuscarCuit.Open;
                  if QBuscarCuit.Fields[0].AsString<>'' then
                    Codigo:=QBuscarCuit.Fields[0].AsString
                  else
                    Codigo:=ceCliente.Text;
                  QBuscarCuit.Close;
                end
              else
                Codigo:=ceCliente.Text;
              Neto21 := Neto21+Iva21;
              Neto105:= Neto105+Iva105
           end;

        if Codigo='' then
          begin
             while (Pos('-',Cuit)>0) do
              System.Delete(Cuit, Pos('-',Cuit),1);
            if cuit='' then Cuit:='00000000000';
            if cuit[1]='0' then Cuit:='00000000000';
            Insert('-',Cuit,3);
            Insert('-',Cuit,12);
            Codigo:=ConsultarCuit(Cuit);
          end;

        if Codigo<>'' then
          begin
            QBuscaFactura.Close;
            QBuscaFactura.ParamByName('Letra').Value   :=Letra;
            QBuscaFactura.ParamByName('suc').Value     :=prefijo;
            QBuscaFactura.ParamByName('Numero').Value  :=Numero;
            QBuscaFactura.ParamByName('Sucursal').Value:=StrToInt(Sucursal);
            QBuscaFactura.ParamByName('Tipo').Value    :=Tipo;
            QBuscaFactura.ParamByName('clase').Value   :=Clase;
            QBuscaFactura.Open;

            if QBuscaFactura.Fields[0].AsString='' then
              begin
                if ((Tipo='FC') or (Tipo='NC')) then
                  begin
                    QControlComprobantes.Close;
                    QControlComprobantes.ParamByName('Letra').AsString     := Letra;
                    QControlComprobantes.ParamByName('Sucursal').AsInteger := StrToInt(sucursal);
                    QControlComprobantes.ParamByName('Tipo').AsString      := Tipo;
                    QControlComprobantes.ParamByName('clase').AsString     := Clase;
                    QControlComprobantes.Open;

                    if Not(Assigned(FormCpbte_2)) then
                      FormCpbte_2:=TFormCpbte_2.Create(Self);
                    FormCpbte_2.Agregar.Execute;
                    Fecha                                               := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[19];
                    DatosVentas.CDSVentaCabFECHAVTA.Text                := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[0];
                    DatosVentas.CDSVentaCabSUCURSAL.Text                := sucursal;
                    DatosVentas.CDSVentaCabCODIGO.Text                  := Codigo;

                    DatosVentas.CDSVentaCabID_TIPOCOMPROBANTE.Text      := QControlComprobantesID_COMPROBANTE.AsString;
                    QControlComprobantes.Close;

                    DatosVentas.CDSVentaCabSUCFAC.Text                  := Prefijo;
                    DatosVentas.CDSVentaCabNUMEROFAC.Text               := Numero;
                    DatosVentas.CDSVentaCabCAE.Value                    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[18];
                    DatosVentas.CDSVentaCabCAE_VENCIMIENTO.AsString     := FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Fecha,1,4)),
                                                                                                               StrToInt(Copy(Fecha,5,2)),
                                                                                                               StrToInt(Copy(Fecha,7,2)))));
                    if Alic<>'' then
                      DatosVentas.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := StrToFloat(Alic)
                    else
                      DatosVentas.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := 0;

                    if Neto21>0 then
                      begin
                        DatosVentas.CDSVentaDet.Append;
                        DatosVentas.CDSVentaDetCodigoArticulo.Text      := ceCodigo.Text;
                        DatosVentas.CDSVentaDetCantidad.Text            := '1';
                        DatosVentas.CDSVentaDetUnitario_Total.Text      := FloatToStr(Neto21);
                      end;
                    if DatosVentas.CDSVentaDet.State<>dsBrowse then
                      DatosVentas.CDSVentaDet.Post;

                    if Neto105>0 then
                      begin
                        DatosVentas.CDSVentaDet.Append;
                        DatosVentas.CDSVentaDetCodigoArticulo.Text      := ceCodigo105.Text;
                        DatosVentas.CDSVentaDetCantidad.Text            := '1';
                        DatosVentas.CDSVentaDetUnitario_Total.Text      := FloatToStr(Neto105);
                      end;
                    if DatosVentas.CDSVentaDet.State<>dsBrowse then
                      DatosVentas.CDSVentaDet.Post;

                    if Exento>0 then
                      begin
                        DatosVentas.CDSVentaDet.Append;
                        DatosVentas.CDSVentaDetCodigoArticulo.Text      := ceCodigoCero.Text;
                        DatosVentas.CDSVentaDetCantidad.Text            := '1';
                        DatosVentas.CDSVentaDetUnitario_Total.Text      := FloatToStr(Exento);
                      end;
                    if DatosVentas.CDSVentaDet.State<>dsBrowse then
                      DatosVentas.CDSVentaDet.Post;

                    FormCpbte_2.Duplicado :=True;
                    FormCpbte_2.Show;
                    if chAutoconfirmarFc.Checked then
                      begin
                        FormCpbte_2.Confirma.Execute;
                        FormCpbte_2.Salir.Execute;
                        if FormCpbte_2<>nil then
                          FreeAndNil(FormCpbte_2);
                      end;
                  end
                  else

                  if (Tipo='FO') then
                  begin
                    QControlComprobantes.Close;
                    QControlComprobantes.ParamByName('Letra').AsString     := Letra;
                    QControlComprobantes.ParamByName('Sucursal').AsInteger := StrToInt(sucursal);
                    QControlComprobantes.ParamByName('Tipo').AsString      := Tipo;
                    QControlComprobantes.ParamByName('clase').AsString     := Clase;
                    QControlComprobantes.Open;

                    if Not(Assigned(FormCpbteCtdo_2)) then
                      FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
                    FormCpbteCtdo_2.Agregar.Execute;
                    Fecha                                                   := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[19];
                    DatosVentasCtdo.CDSVentaCabFECHAVTA.Text                := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[0];
                    DatosVentasCtdo.CDSVentaCabSUCURSAL.Text                := sucursal;
                    DatosVentasCtdo.CDSVentaCabCODIGO.Text                  := Codigo;

                    DatosVentasCtdo.CDSVentaCabID_TIPOCOMPROBANTE.Text      := QControlComprobantesID_COMPROBANTE.AsString;
                    QControlComprobantes.Close;

                    DatosVentasCtdo.CDSVentaCabSUCFAC.Text                  := Prefijo;
                    DatosVentasCtdo.CDSVentaCabNUMEROFAC.Text               := Numero;
                    DatosVentasCtdo.CDSVentaCabCAE.Value                    := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[18];
                    DatosVentasCtdo.CDSVentaCabCAE_VENCIMIENTO.AsString     := FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Fecha,1,4)),
                                                                                                               StrToInt(Copy(Fecha,5,2)),
                                                                                                               StrToInt(Copy(Fecha,7,2)))));
                    if Alic<>'' then
                      DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := StrToFloat(Alic)
                    else
                      DatosVentasCtdo.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := 0;

                    if Neto21>0 then
                      begin
                        DatosVentasCtdo.CDSVentaDet.Append;
                        DatosVentasCtdo.CDSVentaDetCodigoArticulo.Text      := ceCodigo.Text;
                        DatosVentasCtdo.CDSVentaDetCantidad.Text            := '1';
                        DatosVentasCtdo.CDSVentaDetUnitario_Total.Text      := FloatToStr(Neto21);
                      end;
                    if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                      DatosVentasCtdo.CDSVentaDet.Post;

                    if Neto105>0 then
                      begin
                        DatosVentasCtdo.CDSVentaDet.Append;
                        DatosVentasCtdo.CDSVentaDetCodigoArticulo.Text      := ceCodigo105.Text;
                        DatosVentasCtdo.CDSVentaDetCantidad.Text            := '1';
                        DatosVentasCtdo.CDSVentaDetUnitario_Total.Text      := FloatToStr(Neto105);
                      end;
                    if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                      DatosVentasCtdo.CDSVentaDet.Post;

                    if Exento>0 then
                      begin
                        DatosVentasCtdo.CDSVentaDet.Append;
                        DatosVentasCtdo.CDSVentaDetCodigoArticulo.Text      := ceCodigoCero.Text;
                        DatosVentasCtdo.CDSVentaDetCantidad.Text            := '1';
                        DatosVentasCtdo.CDSVentaDetUnitario_Total.Text      := FloatToStr(Exento);
                      end;
                    if DatosVentasCtdo.CDSVentaDet.State<>dsBrowse then
                      DatosVentasCtdo.CDSVentaDet.Post;

                    FormCpbteCtdo_2.Duplicado :=True;
                    FormCpbteCtdo_2.Show;
                    if chAutoconfirmarFc.Checked then
                      begin
                        FormCpbteCtdo_2.Confirma.Execute;
                        FormCpbteCtdo_2.Salir.Execute;
                        if FormCpbteCtdo_2<>nil then
                          FreeAndNil(FormCpbteCtdo_2);
                      end;
                  end
                  else
                  if (Tipo='TK')  then
                    begin
                      QControlComprobantes.Close;
                      QControlComprobantes.ParamByName('Letra').AsString     := Letra;
                      QControlComprobantes.ParamByName('Sucursal').AsInteger := StrToInt(sucursal);
                      QControlComprobantes.ParamByName('Tipo').AsString      := Tipo;
                      QControlComprobantes.ParamByName('clase').AsString     := Clase;
                      QControlComprobantes.Open;

                      if Not(Assigned(FormTicketVta)) then
                        FormTicketVta:=TFormTicketVta.Create(Self);
                      FormTicketVta.Agregar.Execute;
                      Fecha := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[15];
                      DatosVentasTicket.CDSVentaCabFECHAVTASetText(DatosVentasTicket.CDSVentaCabFECHAVTA,lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[0]);
                      DatosVentasTicket.CDSVentaCabSUCURSALSetText(DatosVentasTicket.CDSVentaCabSUCURSAL,sucursal);
                      DatosVentasTicket.CDSVentaCabCODIGOSetText(DatosVentasTicket.CDSVentaCabCODIGO,Codigo);

                      DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTESetText(DatosVentasTicket.CDSVentaCabID_TIPOCOMPROBANTE,QControlComprobantesID_COMPROBANTE.AsString);
                      QControlComprobantes.Close;

                      DatosVentasTicket.CDSVentaCabSUCFACSetText(DatosVentasTicket.CDSVentaCabSUCFAC,Prefijo);
                      DatosVentasTicket.CDSVentaCabNUMEROFACSetText(DatosVentasTicket.CDSVentaCabNUMEROFAC,Numero);
                      DatosVentasTicket.CDSVentaCabCAE.Value                  := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[14];
                      DatosVentasTicket.CDSVentaCabCAE_VENCIMIENTO.AsString   := FormatDateTime('dd/mm/yyyy',(EncodeDate(StrToInt(Copy(Fecha,1,4)),
                                                                                                                 StrToInt(Copy(Fecha,5,2)),
                                                                                                                 StrToInt(Copy(Fecha,7,2)))));
                      if Alic<>'' then
                        DatosVentasTicket.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := StrToFloat(Alic)
                      else
                        DatosVentasTicket.CDSVentaCabPERCEPCION_IB_TASA.AsFloat := 0;

                      if Neto21>0 then
                        begin
                          DatosVentasTicket.CDSVentaDet.Append;
                          DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCODIGOARTICULO,ceCodigo.Text);
                          DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCANTIDAD,'1');
                          DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto21));
                        end;
                      if DatosVentasTicket.CDSVentaDet.State<>dsBrowse then
                        DatosVentasTicket.CDSVentaDet.Post;

                      if Neto105>0 then
                        begin
                          DatosVentasTicket.CDSVentaDet.Append;
                          DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCODIGOARTICULO,ceCodigo105.Text);
                          DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCANTIDAD,'1');
                          DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Neto105));
                        end;
                      if DatosVentasTicket.CDSVentaDet.State<>dsBrowse then
                        DatosVentasTicket.CDSVentaDet.Post;

                      if Exento>0 then
                        begin
                          DatosVentasTicket.CDSVentaDet.Append;
                          DatosVentasTicket.CDSVentaDetCodigoArticuloSetText(DatosVentasTicket.CDSVentaDetCODIGOARTICULO,ceCodigoCero.Text);
                          DatosVentasTicket.CDSVentaDetCantidadSetText(DatosVentasTicket.CDSVentaDetCANTIDAD,'1');
                          DatosVentasTicket.CDSVentaDetUnitario_TotalSetText(DatosVentasTicket.CDSVentaDetUNITARIO_TOTAL,FloatToStr(Exento));
                        end;
                      if DatosVentasTicket.CDSVentaDet.State<>dsBrowse then
                        DatosVentasTicket.CDSVentaDet.Post;

                      FormTicketVta.DuplicarFc :=True;
                      FormTicketVta.Show;
                      if chAutoconfirmarFc.Checked then
                        begin
                        //  FormTicketVta.DSBase.DataSet.FieldByName(')
                          FormTicketVta.Confirma.Execute;
                          FormTicketVta.Salir.Execute;
                          if FormTicketVta<>nil then
                            FreeAndNil(FormTicketVta);
                        end;
                    end;
              end
            else
              ShowMessage('Comprobante Ingresado ...');
           end
        else
          ShowMessage('Cliente no encontrado ...');
      end;
end;

procedure TFormFiscalizacionLote.FiscalizarExecute(Sender: TObject);
var IvaAux:String;
d,m,y:word;
FechaFiscal:TDateTime;
FechaQr:String;
CertificadoActivo,CuitEmpresaActivo:String;
begin
  inherited;
  if (FormFiscalizacion<>nil) then
    begin
      FreeAndNil(FormFiscalizacion);
      FormFiscalizacion:=nil;
    end;
  if  Not(Assigned(FormFiscalizacion)) then
    FormFiscalizacion:= TFormFiscalizacion.Create(self);

  IvaAux:= CDSEmpresa.FieldByName('cuit').AsString;
  while Pos('-',IvaAux)<>0 do
    delete(IvaAux,Pos('-',IvaAux),1);

  FormFiscalizacion.CuitVdor    := StrToFloat(IvaAux);

  IvaAux:= CDSFacturasCUIT.AsString;
  if IvaAux='' then IvaAux:='00000000000';
  while Pos('-',IvaAux)<>0 do
    delete(IvaAux,Pos('-',IvaAux),1);


   if (Trim(CDSSucursalCERTIFICADO_ELEC.AsString)<>'') then
    FormFiscalizacionLote.CertificadoElectronico:=CDSSucursalCERTIFICADO_ELEC.AsString;

  if (Trim(CDSSucursalCERTIFICADO_ELEC.AsString)<>'') then
    IvaAux:=CDSSucursalCUIT.AsString;


  CertificadoActivo := FormFiscalizacionLote.CertificadoElectronico;
  CuitEmpresaActivo := CDSEmpresa.FieldByName('cuit').AsString;
  //***********************************************************
   if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value;
    end;

  CuitEmpresaActivo:= AnsiReplaceStr(CuitEmpresaActivo,'-','');
  IvaAux           := CuitEmpresaActivo;

  if (Ivaaux='') or (copy(Ivaaux,1,1)='0') then
    Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

  FormFiscalizacion.CuitComp          := StrToFloat(IvaAux);
  FormFiscalizacion.PtoVenta          := StrToInt(CDSFacturasSUCFAC.AsString);

  FormFiscalizacion.FechaVta          := FormatDateTime('yyyymmdd', CDSFacturasFECHAVTA.AsDateTime);
  if chFecha.Checked then
    FormFiscalizacion.FechaVta        := FormatDateTime('yyyymmdd', Date);

  if CDSFacturasTIPOCPBTE.ASString<>'NC' then
    FormFiscalizacion.FechaVto        := FormatDateTime('yyyymmdd', CDSFacturasFECHAVTO.AsDateTime)
  else
    FormFiscalizacion.FechaVto        := FormatDateTime('yyyymmdd', CDSFacturasFECHAVTA.AsDateTime);


  FormFiscalizacion.ID_Comprobante     := CDSFacturasID_FC.AsString;
  FormFiscalizacion.PtoVenta           := StrToInt(CDSFacturasSUCFAC.Value);
  FormFiscalizacion.Total              := RoundTo(CDSFacturasTOTAL.AsFloat,-2);
  FormFiscalizacion.CuitComp           := StrToFloat(AnsiReplaceStr(CDSFacturasCUIT.AsString,'-',''));
  FormFiscalizacion.TotalNeto          := CDSFacturasNETOGRAV2.AsFloat;
  FormFiscalizacion.TotalExento        := CDSFacturasNETOEXEN2.AsFloat;
  FormFiscalizacion.TotalNetoNoGrav    := CDSFacturasNETONOGRAV2.AsFloat;
  FormFiscalizacion.TotalIIBB          := CDSFacturasPERCEPCION_IB_IMPORTE.AsFloat;
  FormFiscalizacion.TasaIIBB           := CDSFacturasPERCEPCION_IB_TASA.AsFloat;
  FormFiscalizacion.BaseImpIIBB        := CDSFacturasPERCEPCION_IB_BASEIMPONIBLE.AsFloat;
  FormFiscalizacion.DatosImp           := CDSImpuestos;
  FormFiscalizacion.URLWSAA            := FormFiscalizacionLote.URLWSAA;
  FormFiscalizacion.URLWSW             := FormFiscalizacionLote.URLWSW;
  FormFiscalizacion.NumeroActual       := CDSFacturasNUMEROFAC.AsFloat;
  FormFiscalizacion.NombreIni          := DMMain_FD.MainPath + DMMain_FD.NombreIni;
  FormFiscalizacion.CodigoActividad    := CDSEmpresaCOD_ACTIVIDAD.Value;
  FormFiscalizacion.DatosPercecpionIVA := CDSPercepcionIVA;
  FormFiscalizacion.Moneda             := CDSFacturasMONEDA_CPBTE.Value;
  FormFiscalizacion.MonedaCotiz        := CDSFacturasMONEDA_CPBTE_COTIZACION.ASFloat;
  FormFiscalizacion.Cbu                := CDSFacturasCBU.AsString;

  if (CDSFacturasTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
     (CDSFacturasLETRAFAC.Value='B') and (CDSFacturasTIPOIVA.Value=3) Then
    begin
      FormFiscalizacion.TipoDocumento := 99;
      FormFiscalizacion.CuitComp:=0;
    end
  else
    FormFiscalizacion.TipoDocumento := 80;

 if (CDSFacturasTOTAL.AsFloat>=DMMain_FD.LimiteFactB) and
    (CDSFacturasLETRAFAC.Value='B') and
    (CDSFacturasTIPOIVA.Value=3) Then
    begin
      FormFiscalizacion.TipoDocumento := 96;
    end;

  FormFiscalizacion.Certificado := CertificadoActivo;//  FormFiscalizacionLote.CertificadoElectronico;
  FormFiscalizacion.Clave       := FormFiscalizacionLote.ClaveElectronica;

  if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='A') Then
    FormFiscalizacion.TipoComp:=1
  else
    if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='B') Then
      FormFiscalizacion.TipoComp:=6
    else
      if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='A') Then
        FormFiscalizacion.TipoComp:=3
      else
        if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='B') Then
          FormFiscalizacion.TipoComp:=8
        else
          if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='A') Then
            FormFiscalizacion.TipoComp:=5
          else
            if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='B') Then
              FormFiscalizacion.TipoComp:=10
            else
              if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='A') Then
                FormFiscalizacion.TipoComp:=2
              else
                if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='B') Then
                  FormFiscalizacion.TipoComp:=7
                else
                  if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='C') Then
                    FormFiscalizacion.TipoComp:=11
                  else
                    if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='C') Then
                      FormFiscalizacion.TipoComp:=13
                    else
                      if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='C') Then
                        FormFiscalizacion.TipoComp:=11
                      else
                        if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='C') Then
                          FormFiscalizacion.TipoComp:=12;



  // segun como se tome la Fc. de Contado como Nota de Vta Ctdo
  if Not(NotaVtaCtdo) then
    begin
        if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='A') Then
          FormFiscalizacion.TipoComp:=1
      else
        if (CDSFacturasTIPOCPBTE.Value='FO') and (CDSFacturasLETRAFAC.Value='B') Then
          FormFiscalizacion.TipoComp:=6;

    end;
  //************************************************************


  FormFiscalizacion.ShowModal;

  if FormFiscalizacion.Resultado='A' then
    begin
     // QActualizaCAEFD.Close;
      QActualizaCAEFD.ParamByName('cae').Value:=FormFiscalizacion.CAE;
      d:=StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
      m:=StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
      y:=StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));
      QActualizaCAEFD.ParamByName('vencimiento').AsDate := EncodeDate(y,m,d);
      QActualizaCAEFD.ParamByName('id').Value           := CDSFacturasID_FC.Value;
      QActualizaCAEFD.ParamByName('Fecha').Value        := CDSFacturasFECHAVTA.AsDateTime;
      if chFecha.Checked then
        QActualizaCAEFD.ParamByName('Fecha').Value        := Date;
      QActualizaCAEFD.ParamByName('Numero').Value       := copy('00000000',1,8-length(FloatToStr(FormFiscalizacion.Numero)))+FloatToStr(FormFiscalizacion.Numero);
     // QActualizaCAEFD.ExecSQL;
     // QActualizaCAEFD.Close;

      d:=StrToInt( Copy(FormFiscalizacion.Vencimiento,7,2));
      m:=StrToInt( Copy(FormFiscalizacion.Vencimiento,5,2));
      y:=StrToInt( Copy(FormFiscalizacion.Vencimiento,1,4));

      //QActualizaCAEFD.ParamByName('vencimiento').AsDate := EncodeDate(y,m,d);
      //QActualizaCAEFD.ParamByName('id').Value           := CDSFacturasID_FC.Value;
      //QActualizaCAEFD.ParamByName('Fecha').Value        := CDSFacturasFECHAVTA.AsDateTime;
      FechaFiscal:= CDSFacturasFECHAVTA.AsDateTime;
      if chFecha.Checked then
        FechaFiscal := Date;
            //  QActualizaCAEFD.ParamByName('Fecha').Value      := Date;
            //QActualizaCAEFD.ParamByName('Numero').Value       := StrNumero;
            //QActualizaCAEFD.ExecSQL;
            //QActualizaCAEFD.Close;

            FechaQr    := FormatDateTime('yyyy-mm-dd',FechaFiscal);
            FQRImage   := GenerarQR(1, FechaQr,
                                       CDSFacturasCUIT.AsFloat,
                                       StrToInt(CDSFacturasSUCFAC.AsString),
                                       FormFiscalizacion.TipoComp,
                                       Trunc(FormFiscalizacion.Numero),
                                       CDSFacturasTOTAL.AsFloat,'PES',1,
                                       FormFiscalizacion.TipoComp, FormFiscalizacion.Numero ,'E',StrToFloat(FormFiscalizacion.CAE));

            if Not(DMStoreProcedure.ActualizaCAE_VTO( CDSFacturasID_FC.Value,
                                                      FechaFiscal,
                                                      'N',
                                                      EncodeDate(y,m,d),
                                                      FloatToStr(FormFiscalizacion.Numero),
                                                      FQRImage)) Then
              ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');




      if chbCorreo.Checked Then
        EnviarCorreo(CDSFacturasTIPOCPBTE.AsString,CDSFacturasID_FC.AsString);
    end;
  CDSFacturas.Close;
  CDSFacturas.Open;
end;

procedure TFormFiscalizacionLote.FiscalizarLoteExecute(Sender: TObject);
VAR Aux:String;
begin
  inherited;

  Aux:= Trim(CDSEmpresa.FieldByName('cuit').AsString);

  if (Trim(CDSSucursalCERTIFICADO_ELEC.AsString)<>'') then
    begin
      FormFiscalizacionLote.CertificadoElectronico := CDSSucursalCERTIFICADO_ELEC.AsString;
      Aux                                          := CDSSucursalCUIT.AsString;
    end;

  while Pos('-',Aux)<>0 do
    delete(Aux,Pos('-',Aux),1);
  if (aux='') or (copy(aux,1,1)='0') then
    Raise Exception.Create (' Falta el Numero de Cuit de su Empresa....');

  FCuitVdor    := StrToFloat(Aux);

  dmFE1.InicializarServicio(FormFiscalizacionLote.URLWSAA,FormFiscalizacionLote.URLWSW,FormFiscalizacionLote.CertificadoElectronico,FormFiscalizacionLote.ClaveElectronica);
  dmFEX.InicializarServicio(FormFiscalizacionLote.URLWSAA,FormFiscalizacionLote.URLWSW_EX,FormFiscalizacionLote.CertificadoElectronico,FormFiscalizacionLote.ClaveElectronica);

  if dmFE1.CheckLogin(Trunc(FCuitVdor)) then
    begin
      CDSFacturas.First;
      while Not(CDSFacturas.Eof) do
        begin
          FiscalizarLote_2.Execute;
          Delay(1500);
          CDSFacturas.Next;
        end;
      CDSFacturas.Close;
      CDSFacturas.Open;
    end
  else
    ShowMessage(dmFE1.ErrorDesc);
  Application.ProcessMessages;
end;

procedure TFormFiscalizacionLote.FiscalizarLote_2Execute(Sender: TObject);
var
  Reproceso          : Widestring;
  d,m,y:word;
  FResultado         : WideString;
  FPtoVenta          : Integer;
  FTipoComp          : Integer;
  FCAE               : WideString;
  FVencimiento       : WideString;
  FNumero            : Int64;//Double;
  FNumeroActual      : Double;
  FFechaVta          : WideString;
  FechaQr            : String;
  FCuitComp          : Extended;
  FTotal             : Extended;
  FTotalExento       : Extended;
  FTotalNetoNoGrav   : Extended;
  FTotalNeto         : Extended;
  FTipoDocumento     : Integer;
  StrNumero,Aux      : String;
  FechaFiscal        : TDateTime;
  FMoneda            : string;
  FCotizacion        : Extended;
  FIvaComprador      : Integer;
  FAsociado_Tipo     : Integer;
  FAsociado_PtoVta   : Integer;
  FAsociado_Nro      : Double;
  FAsociado_CpbteFch : String;
begin
  Reproceso      := '';

  FPtoVenta      := CDSFacturasSUCFAC.AsInteger;
  Aux            := CDSFacturasCUIT.AsString;
  if aux='' then aux:='00000000000';
  while Pos('-',Aux)<>0 do
    delete(Aux,Pos('-',Aux),1);
  FCuitComp    := StrToFloat(Aux);
  FNumero      := CDSFacturasNUMEROFAC.ASInteger;
  FNumero      := CDSFacturasNUMEROFAC.ASInteger;
  FFechaVta    := FormatDateTime('yyyymmdd', CDSFacturasFECHAVTA.AsDateTime);
  if chFecha.Checked then
    FFechaVta   := FormatDateTime('yyyymmdd', Date);
  FTotal       := RoundTo(CDSFacturasTOTAL.AsFloat,-2);
  FTotalNeto   := CDSFacturasNETOGRAV2.AsFloat;
  FTotalExento := CDSFacturasNETOEXEN2.AsFloat;
  FTotalNetoNoGrav:=CDSFacturasNETONOGRAV2.AsFloat;
  // Factura Contado ..********************
  if (CDSFacturasTIPOCPBTE.Value='FO') or (CDSFacturasTIPOCPBTE.Value='TK') then
    begin
      if (CDSFacturasLETRAFAC.Value='A') Then
        FTipoComp:=5
       else
        if (CDSFacturasLETRAFAC.Value='B') Then
          FTipoComp:=10;

      // segun como se tome la Fc. de Contado como Nota de Vta Ctdo
      if Not(NotaVtaCtdo) then
        begin
          if (CDSFacturasLETRAFAC.Value='A') Then
            FTipoComp:=1
          else
            if (CDSFacturasLETRAFAC.Value='B') Then
              FTipoComp:=6;
        end;
      //************************************************************


      if (CDSFacturasTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
         (CDSFacturasLETRAFAC.Value='B') and (CDSFacturasTIPOIVA.Value=3) Then
        begin
          FTipoDocumento := 99;
          FCuitComp      := 0;
        end
      else
         FTipoDocumento   := 80;
    end
  else
    begin
      if (CDSFacturasTIPOCPBTE.Value='TK')  and (CDSFacturasLETRAFAC.Value='A') Then
        FTipoComp:=1
      else
        if (CDSFacturasTIPOCPBTE.Value='TK') and (CDSFacturasLETRAFAC.Value='B') Then
          FTipoComp:=6
        else

      if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='A') Then
        FTipoComp:=1
      else
        if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='B') Then
          FTipoComp:=6
        else

          if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='A') Then
            FTipoComp:=3
          else
            if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='B') Then
              FTipoComp:=8
            else
              if (CDSFacturasTIPOCPBTE.Value='FC') and (CDSFacturasLETRAFAC.Value='C') Then
                FTipoComp:=11
              else
                if (CDSFacturasTIPOCPBTE.Value='NC') and (CDSFacturasLETRAFAC.Value='C') Then
                  FTipoComp:=13
                else
                  if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='A') Then
                    FTipoComp:=2
                  else
                    if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='B') Then
                      FTipoComp:=7
                    else
                      if (CDSFacturasTIPOCPBTE.Value='ND') and (CDSFacturasLETRAFAC.Value='C') Then
                        FTipoComp:=12;


      if (CDSFacturasTOTAL.AsFloat<DMMain_FD.LimiteFactB) and
         (CDSFacturasLETRAFAC.Value='B') and
         (CDSFacturasTIPOIVA.Value=3) Then
        begin
          FTipoDocumento := 99;
          FCuitComp      := 0;
        end
      else
        FTipoDocumento := 80;
    end;

  if (CDSFacturasTOTAL.AsFloat>=DMMain_FD.LimiteFactB) and (CDSFacturasLETRAFAC.Value='B') and
     (CDSFacturasTIPOIVA.Value=3) Then
    begin
      FTipoDocumento := 96;
      if (FCuitComp=0) then
        FCuitComp:=12345678
    end;

  if ((CDSFacturasTIPOCPBTE.Value='NC') or (CDSFacturasTIPOCPBTE.Value='ND')) then
    begin
       FAsociado_Tipo     := CDSFacturasASOCIADO_TIPO.AsInteger;
       FAsociado_PtoVta   := CDSFacturasASOCIADO_PTOVTA.AsInteger;
       FAsociado_Nro      := CDSFacturasASOCIADO_NRO.AsFloat;
       FAsociado_CpbteFch := CDSFacturasASOCIADO_CPTEFCH.AsString;
    end;

  dmFE1.Reset;
  dmFE1.CheckLogin(Trunc(FCuitVdor));

  if not dmFE1.RecuperaLastCMP(FPtoVenta, FTipoComp, FNumero) then
    ShowMessage (dmFE1.ErrorDesc)
  else
    begin
      if (VarIsNull(FNumero)) then FNumero:=0;
        FNumero := FNumero + 1;
      if FTipoDocumento=99 then
        FCuitComp:=0;
      case CDSFacturasMONEDA_CPBTE.Value of
        1:begin FMoneda:='PES';FCotizacion:=1;end;
        2:begin FMoneda:='DOL';FCotizacion:=CDSFacturasMONEDA_CPBTE_COTIZACION.AsFloat;end;
      end;

      case CDSFacturasTIPOIVA.Value of
        1:FIvaComprador  :=1;
        3:FIvaComprador  :=5;
        6:FIvaComprador  :=4;
        4:FIvaComprador  :=4;
        2,5:FIvaComprador:=6;
      end;

      dmFE1.AgregaFactura(3,FTipoDocumento, Trunc(FCuitComp),
                          FNumero, FNumero, FFechaVta, FTotal,
                          FTotalNetoNoGrav,FTotalNeto,FTotalExento,
                          FFechaVta, FFechaVta, FFechaVta, FMoneda,FCotizacion,FIvaComprador);

      if (FTipoComp=3) or (FTipoComp=8) or (FTipoComp=2) or (FTipoComp=7) or (FTipoComp=12) or (FTipoComp=13) then
            dmFE1.AgregaCompAsoc(FAsociado_Tipo,FAsociado_PtoVta,Trunc(FAsociado_Nro),Trunc(FCuitVdor),FAsociado_CpbteFch);


      CDSPercepcionIVA.Close;
      CDSPercepcionIVA.Params.ParamByName('id').Value:=CDSFacturasID_FC.Value;
      CDSPercepcionIVA.Open;
      CDSPercepcionIVA.First;

      CDSImpuestos.Close;
      CDSImpuestos.Params.ParamByName('id').Value    :=CDSFacturasID_FC.Value;
      CDSImpuestos.Open;
      CDSImpuestos.First;


      while not(CDSImpuestos.Eof) do
        begin
          case CDSImpuestos.FieldByName('codigo_gravamen').AsInteger of
            1:dmFE1.AgregaIVA(IVA21 , RoundTo(CDSImpuestos.FieldByName('Neto').AsFloat,-2),
                                       RoundTo(CDSImpuestos.FieldByName('Importe').AsFloat,-2));
            4:dmFE1.AgregaIVA(IVA105, RoundTo(CDSImpuestos.FieldByName('Neto').AsFloat,-2),
                                       RoundTo(CDSImpuestos.FieldByName('Importe').AsFloat,-2));
            2:dmFE1.AgregaIVA(IVA27,  RoundTo(CDSImpuestos.FieldByName('Neto').AsFloat,-2),
                                       RoundTo(CDSImpuestos.FieldByName('Importe').AsFloat,-2));
          end;
          CDSImpuestos.Next;
        end;
      CDSImpuestos.Close;

      if CDSFacturasPERCEPCION_IB_IMPORTE.AsFloat>0 then
        dmFE1.AgregaTributo(2,'PERCEP IIBB', RoundTo(CDSFacturasPERCEPCION_IB_BASEIMPONIBLE.AsFloat,-2), RoundTo(CDSFacturasPERCEPCION_IB_TASA.AsFloat,-2),RoundTo(CDSFacturasPERCEPCION_IB_IMPORTE.AsFloat,-2));

      if CDSPercepcionIVA.RecordCount>0 then
        begin
          while not(CDSPercepcionIVA.Eof) do
            begin
              dmFE1.AgregaTributo(1,'PERCEP IVA', roundto(CDSPercepcionIVA.FieldByName('NETO').Value,-2),
                                                  roundto(CDSPercepcionIVA.FieldByName('TASA').Value,-2),
                                                  roundto(CDSPercepcionIVA.FieldByName('IMPORTE').Value,-2));
              CDSPercepcionIVA.Next;
            end;
        end;

      if dmFE1.Autorizar(FPtoVenta, FTipoComp) then
        begin
          if dmFE1.AutorizarRespuesta(0, FCAE, FVencimiento, FResultado, Reproceso) Then
            begin
              try
                StrNumero:= copy('00000000',1,8-length(floatToStr(FNumero)))+FloatToStr(FNumero);
                d:=StrToInt( Copy(FVencimiento,7,2));
                m:=StrToInt( Copy(FVencimiento,5,2));
                y:=StrToInt( Copy(FVencimiento,1,4));
                FechaFiscal := EncodeDate(y,m,d);
                FechaFiscal:= CDSFacturasFECHAVTA.AsDateTime;
                if chFecha.Checked then
                  FechaFiscal := Date;

                FechaQr     := copy(FFechaVta,1,4)+'-'+ copy(FFechaVta,5,2)+'-'+copy(FFechaVta,7,2);
                dmFE1.ArchivoQR := System.IOUtils.TPath.GetTempPath + 'OPTAL_FE_QR.bmp';
                if dmFE1.GenerarQR(1,FechaQr,FCuitVdor,FPtoVenta,FTipoComp,FNumero,
                                     FTotal,FMoneda,FCotizacion,
                                     FTipoComp, Trunc(FCuitComp) ,'E',StrToFloat(FCAE)) Then
                  begin
                    FQRImage:=dmFE1.fQRBMP;
                  end;

                if Not(DMStoreProcedure.ActualizaCAE_VTO( CDSFacturasID_FC.Value,
                                                          FechaFiscal,
                                                          FCAE,//'N',
                                                          EncodeDate(y,m,d),
                                                          StrNumero,
                                                          FQRImage)) Then
                  ShowMessage('No se pudo gravar datos de CAE/Vencimiento y Actualizacion de Numero...Proceso de Fiscalizacion ');
              except
                ShowMessage('No se aplico el CAE ....');
              end;
              if chbCorreo.Checked then
                EnviarCorreo(CDSFacturasTIPOCPBTE.AsString,CDSFacturasID_FC.AsString);
            end
          else
            ShowMessage(dmFE1.AutorizarRespuestaObs(0))
        end
      else
        ShowMessage(dmFE1.ErrorDesc);
    end;
  dmFE1.Reset;
end;


procedure TFormFiscalizacionLote.FormActivate(Sender: TObject);
begin
  inherited;
  CDSFacturas.Close;
  CDSFacturas.Open;
end;

procedure TFormFiscalizacionLote.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not jvHiloConsulta.Terminated then
    jvHiloConsulta.Terminate;
  while not (jvHiloConsulta.Terminated) do
    Sleep(10);


  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FiscalizacionLote.ini');
  //*************************************************************
  ArchivoIni.WriteString('Dato', 'codigo', ceCliente.Text);
  ArchivoIni.WriteString('Dato', 'Nombre', edNombreCliente.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo',ceCodigo.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo',edDetalle.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo105',ceCodigo105.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo2',edDetalle2.Text);
  ArchivoIni.WriteString('Dato', 'CodArticulo0',ceCodigoCero.Text);
  ArchivoIni.WriteString('Dato', 'DetArticulo0',edDetalleCero.Text);
  ArchivoIni.WriteBool('Dato', 'Autoconfirma',chAutoconfirmarFc.Checked);

  ArchivoIni.Free;

  CDSFacturas.Close;
  CDSEmpresa.Close;
  CDSBuscadorComp.Close;

  inherited;
  Action:=caFree;
end;

procedure TFormFiscalizacionLote.FormCreate(Sender: TObject);
var cuit:String;
begin
  inherited;
  AutoSize:=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_fd.Nombre_PC;
  CDSFacturas.Open;
  CDSEmpresa.Close;
  CDSEmpresa.Open;
  CDSSucursal.Close;
  CDSSucursal.Open;
  dbcSucursal.KeyValue:=SucursalPorDefecto;

  cuit:=CDSEmpresaCUIT.AsString;
  while Pos('-',Cuit)>0 do
    delete(Cuit,Pos('-',Cuit),1);
  if Trim(cuit)='' then Cuit:='00000000000';

  CuitEmpresa  := StrToFLoat(Cuit);


  CDSBuscadorComp.Close;
  CDSBuscadorComp.Params.ParamByName('sucursal' ).Value:=SucursalPorDefecto;
  CDSBuscadorComp.Open;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FiscalizacionLote.ini');
  //*************************************************************
  ceCliente.Text            := ArchivoIni.ReadString('Dato', 'codigo', '');
  edNombreCliente.Text      := ArchivoIni.ReadString('Dato', 'Nombre', '');
  ceCodigo.Text             := ArchivoIni.ReadString('Dato', 'CodArticulo','');
  edDetalle.Text            := ArchivoIni.ReadString('Dato', 'DetArticulo','');
  ceCodigo105.Text          := ArchivoIni.ReadString('Dato', 'CodArticulo105','');
  edDetalle2.Text           := ArchivoIni.ReadString('Dato', 'DetArticulo2','');
  ceCodigoCero.Text         := ArchivoIni.ReadString('Dato', 'CodArticulo0','');
  edDetalleCero.Text        := ArchivoIni.ReadString('Dato', 'DetArticulo0','');
  chAutoconfirmarFc.Checked := ArchivoIni.ReadBool('Dato', 'Autoconfirma',False);

  ArchivoIni.Free;

  wsfev1  := Nil;
  wsfev1  := Cowsfev1.Create;

  wsfex1  := Nil;
  wsfex1  := Cowsfexv1.Create;

  wslsp   := NIl;
  wslsp   := Cowslsp.Create;

  PageControl1.ActivePageIndex:=0;

  begin
    lbCertificado.Caption:= CertificadoElectronico;
    lbClave.caption      := ClaveElectronica;
  end;

end;

procedure TFormFiscalizacionLote.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFiscalizacionLote:=nil;
end;

procedure TFormFiscalizacionLote.FormShow(Sender: TObject);
begin
  inherited;
  if FormFiscalizacionLote<>Nil then
    begin
      lbCertificado.Caption:= FormFiscalizacionLote.CertificadoElectronico;
      lbClave.caption      := FormFiscalizacionLote.ClaveElectronica;
    end;

end;

procedure TFormFiscalizacionLote.frxReportGetValue(const VarName: string;
  var Value: Variant);
var tipo,Clase,letra,prefijo,numero,sucursal,Importe,Cuit,CAE,Fecha,Causa:String;
d,m,y:Word;
begin
  inherited;
  if CompareText(VarName, 'element') = 0 then
     begin
       Tipo    := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[1];
       Clase   := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[2];
       Letra   := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[3];
       Prefijo := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[4];
       Numero  := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[5];
       Importe := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[12];
       CUIT    := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[6];
       Cae     := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[13];
       Fecha   := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[0];
       Causa   := lvGeneral.Items.Item[frxUserDataListado.RecNo].SubItems[15];

       cuit    := Copy('00000000000000',1,11-Length(cuit))+CUit;
       cae     := Copy('--------------------',1,15-Length(cae))+Cae;
       Value   := Fecha+'....'+Tipo+'-'+Clase+'...'+Letra+'-'+Prefijo+'-'+Numero+' ..Cuit: '+Cuit+' .. CAE:'+cae+'  Importe..: '+Importe+'  '+causa;
     end;
end;


procedure TFormFiscalizacionLote.IgualarCaePorNroFacExecute(Sender: TObject);
var tipo,Clase,letra,prefijo,numero,sucursal:String;
d,m,y:Word;
begin
  inherited;
  Tipo    :=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[1];
  Clase   :=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[2];
  Letra   :=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[3];
  Prefijo :=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[4];
  Numero  :=lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[5];
  Sucursal:=dbcComprobante.LookupSource.DataSet.FieldByName('SUCURSAL').AsString;
  QBuscaFactura.Close;
  QBuscaFactura.ParamByName('Letra').Value   :=Letra;
  QBuscaFactura.ParamByName('suc').Value     :=prefijo;
  QBuscaFactura.ParamByName('Numero').Value  :=Numero;
  QBuscaFactura.ParamByName('Sucursal').Value:=StrToInt(Sucursal);
  QBuscaFactura.ParamByName('Tipo').Value    :=Tipo;
  QBuscaFactura.ParamByName('clase').Value   :=Clase;
  QBuscaFactura.Open;
  if QBuscaFacturaID_FC.AsString<>'' then
    begin
      sbEstado.SimpleText:='Iniciando y Verificando aplicaciones y borrando...';
      Application.ProcessMessages;
      DMMain_FD.fdcGestion.StartTransaction;
      try
        // borro la Tabla Temporal
        QBorrarAplTem.Close;
        QBorrarAplTem.ExecSQL;
        QBorrarAplTem.Close;
        // copio las aplicaciones del comprobante a la Temporal
        QBKAplicacionesFD.Close;
        QBKAplicacionesFD.ParamByName('TIPO').Value:=QBuscaFacturaTIPOCPBTE.Value;
        QBKAplicacionesFD.ParamByName('ID').Value  :=QBuscaFacturaID_FC.Value;
        QBKAplicacionesFD.ExecSQL;
        QBKAplicacionesFD.Close;
        // desactivo Triger de Borrado
        QDesactivaTrigerDelFD.Close;
        QDesactivaTrigerDelFD.ExecSQL;
        QDesactivaTrigerDelFD.Close;
        // borro las Aplicaciones Actuales
        spBorraAplicacionesFD.Close;
        spBorraAplicacionesFD.ParamByName('TIPO').Value:=QBuscaFacturaTIPOCPBTE.Value;
        spBorraAplicacionesFD.ParamByName('ID').Value  :=QBuscaFacturaID_FC.Value;
        spBorraAplicacionesFD.ExecProc;
        spBorraAplicacionesFD.Close;
        // activo Triger de Borrado
        QActivaTrigerDelFD.Close;
        QActivaTrigerDelFD.ExecSQL;
        QActivaTrigerDelFD.Close;

        QActualizaCAEFD.Close;
        QActualizaCAEFD.ParamByName('cae').Value          := lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[10];
        d:=StrToInt( Copy(lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[11],7,2));
        m:=StrToInt( Copy(lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[11],5,2));
        y:=StrToInt( Copy(lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[11],1,4));
        QActualizaCAEFD.ParamByName('vencimiento').AsDate := EncodeDate(y,m,d);
        QActualizaCAEFD.ParamByName('id').Value           := QBuscaFacturaID_FC.Value;
        QActualizaCAEFD.ParamByName('Fecha').Value        := StrToDate(lvGeneral.Items.Item[lvGeneral.ItemIndex].SubItems[0]);
        QActualizaCAEFD.ParamByName('Numero').Value       := Numero;
        QActualizaCAEFD.ExecSQL;
        QActualizaCAEFD.Close;

        // restauro las aplicaciones Originales
        QRsAplicacionesFD.Close;
        QRsAplicacionesFD.ExecSQL;
        QRsAplicacionesFD.Close;
        // Verifico saldo Mov CC
        QControlSaldoMovFD.Close;
        QControlSaldoMovFD.ParamByName('TIPO').Value:=QBuscaFacturaTIPOCPBTE.Value;
        QControlSaldoMovFD.ParamByName('ID').Value  :=QBuscaFacturaID_FC.Value;
        QControlSaldoMovFD.ExecSQL;
        QControlSaldoMovFD.Close;
        // Borro el temporal de Aplicaciones
        QBorrarAplTem.Close;
        QBorrarAplTem.ExecSQL;
        QBorrarAplTem.Close;

        DMMain_FD.fdcGestion.Commit;
       Except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('No de pudo modificar...');
      end;
    end
  else
    ShowMessage('No esta el Comprobante...');
  QBuscaFactura.Open;
end;

procedure TFormFiscalizacionLote.jvHiloConsultaExecute(Sender: TObject; Params: Pointer);
var Novedades,FechaAux:String;
NroL :Integer;
Contador: Integer;
Diferencia:Double;
d,m,y:Word;
TipoRelacion,ClaseRelacion:String;
CertificadoActivo,CuitEmpresaActivo:String;

//ClaseCtdo,ClaseCC:String;
begin
  inherited;
  lvGeneral.Clear;

  Cancelar   := False;
  Contador   := 0;

  jvHiloConsulta.Synchronize(Pantalla);//  lbNovedad.Caption:='Novedades:';
  // Guardo en variable el certificado y Cuit del origen
  CertificadoActivo := FormFiscalizacionLote.CertificadoElectronico;
  CuitEmpresaActivo := CDSEmpresa.FieldByName('cuit').AsString;
  //***********************************************************
   if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value;
    end;

  CuitEmpresaActivo:= AnsiReplaceStr(CuitEmpresaActivo,'-','');

  TipoCpbte        := dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger;

  if Not(TipoCpbte in [186,185,189,191,180,182,183,188,19,21]) then
    begin
      wsfev1.Reset;
      wsfev1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
      wsfev1.URL  := URLWSW;

      if wsfev1.login(CertificadoActivo,FormFiscalizacionLote.ClaveElectronica,URLWSAA) then
        begin
          wsfev1.Reset;
          PuntoVta   := StrToInt(edPrefijo.Text);
          NroDesde   := StrToInt(edDesde.Text);
          NroHasta   := StrToInt(edHasta.Text);

          if (NroDesde<=0) then
            begin
              edDesde.Text := '1';
              NroDesde     := StrToInt(edDesde.Text);
            end;

          jvHiloConsulta.Synchronize( lvGeneral.Clear);
          //************************************************************
          jvHiloConsulta.Synchronize(RecuperaUltimoNumero);//   wsfev1.RecuperaLastCMP(PuntoVta, TipoCpbte, UltimoNroReg);

          if (NroHasta>UltimoNroReg) then
            begin
              edHasta.Text := FormatFloat('0',UltimoNroReg);
              NroHasta     := StrToInt(edHasta.Text);
            end;

          ProgressBar.Min:=1;
          if (NroHasta-NroDesde)<=0 then
            ProgressBar.Max:=1
          else
            ProgressBar.Max:=(NroHasta-NroDesde);
         // Tomo el comprobante que este asociado para saber la clase
          if Not(NotaVtaCtdo) then
            begin
              QBuscaCpbteRelacion.Close;
              QBuscaCpbteRelacion.ParamByName('id').Value:= dbcComprobante.LookupSource.DataSet.FieldByName('id_comprobante').AsInteger;
              QBuscaCpbteRelacion.Open;
              ClaseRelacion  := QBuscaCpbteRelacionCLASE_COMPROB.AsString;
              TipoRelacion   := QBuscaCpbteRelacionTIPO_COMPROB.AsString;
              QBuscaCpbteRelacion.Close;
            end;
          //***************************************************
          ProgressBar.Position:=1;
          jvHiloConsulta.Synchronize(Pantalla);//   lbReg.Caption:=IntToStr(NroDesde)+'/'+IntToStr(NroHasta);
          for NroL := NroDesde to NroHasta do
            begin
              Nro:=NroL;
              ProgressBar.Position:=ProgressBar.Position+1;
              jvHiloConsulta.Synchronize(Pantalla);// lbReg.Caption:=IntToStr(Nro)+'/'+IntToStr(NroHasta);
              if ((Nro mod 50) = 0) or (Nro=NroHasta) then
                jvHiloConsulta.Synchronize(Application.ProcessMessages);
              try
                jvHiloConsulta.Synchronize(Consultar);// >>> wsfev1.CmpConsultar(TipoCpbte, PuntoVta, Nro,par1,par2)
                if ConsultaOk  then
                  begin
                     PercepcionIIBBBaseImponible  := '';
                     PercepcionIIBBTasa           := '';
                     PercepcionIIBBImporte        := '';

                     PercepcionIVABaseImponible_1 := '';
                     PercepcionIVABaseImponible_2 := '';

                     PercepcionIVATasa_1          := '';
                     PercepcionIVATasa_2          := '';
                     PercepcionIVAImporte_1       := '';
                     PercepcionIVAImporte_2       := '';
                    jvHiloConsulta.Synchronize(DocumentoXML);//>>>>  Lee el XML que me devuelve FEAFIP
                    Lista         := lvGeneral.Items.Add;
                    Lista.Checked := False;
                    Lista.SubItems.Add(Fecha);
                    // Busca Por Cta Cte

                    CDSBuscarFactura.Filtered:= False;

                    CDSBuscarFactura.Close;
                    CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
                    CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
                    CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
                    CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                    CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
                    CDSBuscarFactura.Open;

                    if dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger in [201,202,203,206,207,208,211,212,213] then
                      begin
                        CDSBuscarFactura.Filter  := 'CODIGO_AFIP='+dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').Value;
                        CDSBuscarFactura.Filtered:= True;
                      end;


                    if (CDSBuscarFacturaID_FC.AsString<>'') then
                      begin
                        Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                        Tipo  := CDSBuscarFacturaTIPOCPBTE.AsString;// 'FC';
                      end
                    else // Si no Busca por Contado
                      if Not(NotaVtaCtdo) and (CDSBuscarFacturaID_FC.AsString='') then
                        begin
                          CDSBuscarFactura.Close;
                          CDSBuscarFactura.Params.ParamByName('Letra').Value   :=Letra;
                          CDSBuscarFactura.Params.ParamByName('suc').Value     :=prefijo;
                          CDSBuscarFactura.Params.ParamByName('Numero').Value  :=Numero;
                          CDSBuscarFactura.Params.ParamByName('Sucursal').Value:=StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                          CDSBuscarFactura.Params.ParamByName('Tipo').Value    :='FO';
                          CDSBuscarFactura.Open;
                          if (CDSBuscarFacturaID_FC.AsString<>'') then
                            begin
                              Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                              Tipo  := 'FO';
                            end
                          else
                            if Not(NotaVtaCtdo) and (CDSBuscarFacturaID_FC.AsString='') then
                              begin
                                CDSBuscarFactura.Close;
                                CDSBuscarFactura.Params.ParamByName('Letra').Value   :=Letra;
                                CDSBuscarFactura.Params.ParamByName('suc').Value     :=prefijo;
                                CDSBuscarFactura.Params.ParamByName('Numero').Value  :=Numero;
                                CDSBuscarFactura.Params.ParamByName('Sucursal').Value:=StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                                CDSBuscarFactura.Params.ParamByName('Tipo').Value    :='TK';
                                CDSBuscarFactura.Open;
                                if (CDSBuscarFacturaID_FC.AsString<>'') then
                                  begin
                                    Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                                    Tipo  := 'TK';
                                  end;
                              end;
                        end;
                    Lista.SubItems.Add( CodAFIP);
                    Lista.SubItems.Add(Tipo);
                    Lista.SubItems.Add(Clase);
                    Lista.SubItems.Add(Letra);
                    Lista.SubItems.Add(Prefijo);
                    Lista.SubItems.Add(Numero);
                    Lista.SubItems.Add(NroCuit);
                    Lista.SubItems.Add(Neto);
                    Lista.SubItems.Add(NetoExento);
                    Lista.SubItems.Add(Iva);

                    Lista.SubItems.Add(PercepcionIIBBTasa);
                    Lista.SubItems.Add(PercepcionIIBBImporte);

                    Lista.SubItems.Add(PercepcionIVATasa_1);
                    Lista.SubItems.Add(PercepcionIVAImporte_1);

                    Lista.SubItems.Add(PercepcionIVATasa_2);
                    Lista.SubItems.Add(PercepcionIVAImporte_2);

                    Lista.SubItems.Add(Importe);
                    Lista.SubItems.Add(CAE);
                    Lista.SubItems.Add(CAEVto);

                    if ((TipoCpbte<>63) and (TipoCpbte<>64)) then
                      begin
                        Novedades:='';
                        FechaAux      := FormatDateTime('dd/mm/yyyy',CDSBuscarFacturaFECHAVTA.AsdateTime);
                        Lista.Checked := Trim(CDSBuscarFacturaCAE.AsString)=CAE;

                        if CDSBuscarFacturaID_FC.AsString='' then
                          Novedades:='Inexistente';
                        if (CDSBuscarFacturaCAE.Value<>CAE) then
                          Novedades:=Novedades+'|'+'Dif.CAE';
                        if (Not(FechaAux=Fecha)) then
                          Novedades:=Novedades+'|'+'Dif.Fecha';
                        //////////////////////////////////////////////////////////////////
                        //  ver codigo arriba
                        //////////////////////////////////////////////////////////////////
                        lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                        while pos(',',Importe)<>0 Do
                          delete(Importe,pos(',',Importe),1);
                        Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                        if (Diferencia>2) then
                          Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                        if Novedades<>'' then Contador:=Contador+1;
                        Lista.SubItems.Add(Novedades);
                        CDSBuscarFactura.Close;
                      end
                    else
                      begin
                        Novedades:='';
                        FechaAux :=FormatDateTime('dd/mm/yyyy',QBuscarFacturaLQFECHACOMPRA.AsdateTime);
                        Lista.Checked := Trim(QBuscarFacturaLQCAE.AsString)=CAE;

                        if QBuscarFacturaLQID_FC.AsString='' then
                           Novedades:='Inexistente';
                        if (QBuscarFacturaLQCAE.Value<>CAE) then
                           Novedades:=Novedades+'|'+'Dif.CAE';
                        if (Not(FechaAux=Fecha)) then
                          Novedades:=Novedades+'|'+'Dif.Fecha';
                        if Novedades<>'' then Contador:=Contador+1;
                        //////////////////////////////////////////////////////////////////
                        //  ver codigo arriba
                        //////////////////////////////////////////////////////////////////
                        lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                        while pos(',',Importe)<>0 Do
                          delete(Importe,pos(',',Importe),1);
                        Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                        if (Diferencia>1) then
                          Novedades:=Novedades+'Import.<>';
                        Lista.SubItems.Add(Novedades);
                        CDSBuscarFactura.Close;
                      end;
                  end;
             except
               begin
                 ShowMessage (wsfev1.ErrorDesc);
                 Cancelar:=True;
                   // Exit;
               end;
             end;
             if Cancelar then  Exit;
           end;
        end;
      QActualizaUltimoNro.Close;
      QActualizaUltimoNro.ParamByName('UltimoNro').AsInteger:=StrToInt(edHasta.Text);
      QActualizaUltimoNro.ParamByName('Id').AsInteger       :=dbcComprobante.KeyValue;
      QActualizaUltimoNro.ExecSQL();
      QActualizaUltimoNro.Close;
    end
  else
    if (TipoCpbte in [186,185,189,191,180,182,183,188]) then  // esto son Liquidacciones..
      begin
        CoInitialize (nil);
     //   wslsp                := Cowslsp.Create;
        PuntoVta   := StrToInt(edPrefijo.Text);
        NroDesde   := StrToInt(edDesde.Text);
        NroHasta   := StrToInt(edHasta.Text);
      //  wsfev1.Reset;
        wslsp.CUIT           := StrToFloat(CuitEmpresaActivo);// 20939802593;
        wslsp.modoProduccion := ModoFcElectronica=1;// false;
        wslsp.Depurar        := true;

       // try
          if wslsp.login(CertificadoActivo,FormFiscalizacionLote.ClaveElectronica ) Then //  'certificado.crt', 'clave.key') then
            begin
              ConsultaUltimoNroResponse := wslsp.consultarUltimoNroComprobantePorPtoVta(PuntoVta, tipoCpbte);
              if not ConsultaUltimoNroResponse.respuesta.hayErrores then
                begin
                  Solicitud                        := wslsp.nuevaLiquidacion;
//                Solicitud.emisor.nroComprobante  := ConsultaUltimoNroResponse.respuesta.nroComprobante;
                  UltimoNroReg                     := ConsultaUltimoNroResponse.respuesta.nroComprobante;

                  PuntoVta     := StrToInt(edPrefijo.Text);
                  NroDesde     := StrToInt(edDesde.Text);
                  NroHasta     := StrToInt(edHasta.Text);
                  if (NroDesde<=0) then
                    begin
                      edDesde.Text := '1';
                      NroDesde     := StrToInt(edDesde.Text);
                    end;

                  jvHiloConsulta.Synchronize(lvGeneral.Clear);

                  if (NroHasta>UltimoNroReg) then
                    begin
                      edHasta.Text := FormatFloat('0',UltimoNroReg);
                      NroHasta     := StrToInt(edHasta.Text);
                    end;

                  ProgressBar.Min:=1;
                  if (NroHasta-NroDesde)<=0 then
                    ProgressBar.Max:=1
                  else
                    ProgressBar.Max:=(NroHasta-NroDesde);
                  //***************************************************
                  ProgressBar.Position:=1;
                  jvHiloConsulta.Synchronize(Pantalla);//   lbReg.Caption:=IntToStr(NroDesde)+'/'+IntToStr(NroHasta);
                  for NroL := NroDesde to NroHasta do
                    begin
                      Nro:=NroL;
                      ProgressBar.Position:=ProgressBar.Position+1;
                      jvHiloConsulta.Synchronize(Pantalla);// lbReg.Caption:=IntToStr(Nro)+'/'+IntToStr(NroHasta);
                      if ((Nro mod 50) = 0) or (Nro=NroHasta) then
                        jvHiloConsulta.Synchronize(Application.ProcessMessages);
                      try
                        CompAjustado  :='';
                        TipoAjusteLiq :='';
                        RetencionIVA  :='';

                        jvHiloConsulta.Synchronize(ConsultarLiq);//
                        begin
                          jvHiloConsulta.Synchronize(DocumentoXML_liq);
                          Lista:=lvGeneral.Items.Add;
                          Lista.Checked:=False;
                          Lista.SubItems.Add(Fecha);
                          Lista.SubItems.Add(CodAFIP);
                          Lista.SubItems.Add(Tipo);
                          Lista.SubItems.Add(Clase);
                          Lista.SubItems.Add(Letra);
                          Lista.SubItems.Add(Prefijo);
                          Lista.SubItems.Add(Numero);
                          Lista.SubItems.Add(NroCuit);
                          Lista.SubItems.Add(Neto);
                          Lista.SubItems.Add(NetoExento);
                          Lista.SubItems.Add(Iva);
                          Lista.SubItems.Add(Alic);
                          Lista.SubItems.Add(ImporteAlic);
                          Lista.SubItems.Add(Importe);
                          Lista.SubItems.Add(CAE);
                          Lista.SubItems.Add(CAEVto);

                          QBuscarFacturaLQ.Close;
                          QBuscarFacturaLQ.ParamByName('Letra').Value   := Letra;
                          QBuscarFacturaLQ.ParamByName('suc').Value     := prefijo;
                          QBuscarFacturaLQ.ParamByName('Numero').Value  := Numero;
                          QBuscarFacturaLQ.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                          QBuscarFacturaLQ.ParamByName('Tipo').Value    := dbcComprobante.LookupSource.DataSet.FieldByName('Tipo_comprob').AsString;// Tipo;
                          QBuscarFacturaLQ.ParamByName('Clase').Value   := dbcComprobante.LookupSource.DataSet.FieldByName('Clase_comprob').AsString;//Clase;
                          QBuscarFacturaLQ.Open;

                        end;
                        Novedades:='';
                        FechaAux      :=FormatDateTime('dd/mm/yyyy',QBuscarFacturaLQFECHACOMPRA.AsdateTime);
                        Lista.Checked := Trim(QBuscarFacturaLQCAE.AsString)=CAE;
                        if QBuscarFacturaLQID_FC.AsString='' then
                          Novedades:='Inexistente';
                        if (QBuscarFacturaLQCAE.Value<>CAE) then
                          Novedades:=Novedades+'|'+'Dif.CAE';
                        if (Not(FechaAux=Fecha)) then
                          Novedades:=Novedades+'|'+'Dif.Fecha';
                        //////////////////////////////////////////////////////////////////
                        //  ver codigo arriba
                        //////////////////////////////////////////////////////////////////
                        lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                        while pos(',',Importe)<>0 Do
                          delete(Importe,pos(',',Importe),1);
                        Diferencia:=Abs(((RoundTo(QBuscarFacturaLQTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                        if (Diferencia>2) then
                          Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                        if Novedades<>'' then Contador:=Contador+1;
                          Lista.SubItems.Add(Novedades);
                        Lista.SubItems.Add(TipoAjusteLiq);
                        Lista.SubItems.Add(CompAjustado);
                        Lista.SubItems.Add(RetencionIVA);
                        if Trim(CompAjustado)<>'' then
                          begin
                            QActualizaCompAjustado.Close;
                            QActualizaCompAjustado.ParamByName('id').Value  := QBuscarFacturaLQID_FC.AsInteger;
                            QActualizaCompAjustado.ParamByName('Dato').Value:= 'Comprobante Anulado - '+ CompAjustado;
                            QActualizaCompAjustado.ExecSQL;
                            QActualizaCompAjustado.Close;
                          end;

                        QBuscarFacturaLQ.Close;

                      except
                        begin
                          ShowMessage (wslsp.ErrorDesc);
                          Cancelar:=True;
                          // Exit;
                        end;
                      end;
                      if Cancelar then  Exit;
                    end;

                end;
              QActualizaUltimoNro.Close;
              QActualizaUltimoNro.ParamByName('UltimoNro').AsInteger:=StrToInt(edHasta.Text);
              QActualizaUltimoNro.ParamByName('Id').AsInteger       :=dbcComprobante.KeyValue;
              QActualizaUltimoNro.ExecSQL();
              QActualizaUltimoNro.Close;
              CoUninitialize();
            end;
      end
    else
      if (TipoCpbte in [21,19]) then  // esto son Exportacion..
        begin
          wsfex1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
          wsfex1.URL  := URLWSW_EX;

          if wsfex1.login(CertificadoActivo,ClaveElectronica,URLWSAA) then
            begin
              PuntoVta   := StrToInt(edPrefijo.Text);
              NroDesde   := StrToInt(edDesde.Text);
              NroHasta   := StrToInt(edHasta.Text);

              if (NroDesde<=0) then
                begin
                  edDesde.Text := '1';
                  NroDesde     := StrToInt(edDesde.Text);
                end;

              jvHiloConsulta.Synchronize(lvGeneral.Clear);
              //************************************************************
              jvHiloConsulta.Synchronize(RecuperaUltimoNumero);//   wsfev1.RecuperaLastCMP(PuntoVta, TipoCpbte, UltimoNroReg);

              if (NroHasta>UltimoNroReg) then
                begin
                  edHasta.Text := FormatFloat('0',UltimoNroReg);
                  NroHasta     := StrToInt(edHasta.Text);
                end;

              ProgressBar.Min:=1;
              if (NroHasta-NroDesde)<=0 then
                ProgressBar.Max:=1
              else
                ProgressBar.Max:=(NroHasta-NroDesde);
              // Tomo el comprobante que este asociado para saber la clase

               //***************************************************
              ProgressBar.Position:=1;
              jvHiloConsulta.Synchronize(Pantalla);//   lbReg.Caption:=IntToStr(NroDesde)+'/'+IntToStr(NroHasta);
              for NroL := NroDesde to NroHasta do
                begin
                  Nro                  := NroL;
                  ProgressBar.Position := ProgressBar.Position+1;
                  jvHiloConsulta.Synchronize(Pantalla);// lbReg.Caption:=IntToStr(Nro)+'/'+IntToStr(NroHasta);
                  if ((Nro mod 50) = 0) or (Nro=NroHasta) then
                    jvHiloConsulta.Synchronize(Application.ProcessMessages);
                  try
                    jvHiloConsulta.Synchronize(Consultar);// >>> wsfev1.CmpConsultar(TipoCpbte, PuntoVta, Nro,par1,par2)
                    if ConsultaOk  then
                      begin
                        PercepcionIIBBBaseImponible  := '';
                        PercepcionIIBBTasa           := '';
                        PercepcionIIBBImporte        := '';

                        PercepcionIVABaseImponible_1 := '';
                        PercepcionIVABaseImponible_2 := '';

                        PercepcionIVATasa_1          := '';
                        PercepcionIVATasa_2          := '';
                        PercepcionIVAImporte_1       := '';
                        PercepcionIVAImporte_2       := '';
                        jvHiloConsulta.Synchronize(DocumentoXML);//>>>>  Lee el XML que me devuelve FEAFIP
                        lvGeneral.Column[11].Caption:='Cotizacion';
                        lvGeneral.Column[10].Caption:='Moneda';

                        Lista         := lvGeneral.Items.Add;
                        Lista.Checked := False;
                        Lista.SubItems.Add(Fecha);
                       // Busca Por Cta Cte

                        CDSBuscarFactura.Filtered:= False;

                        CDSBuscarFactura.Close;
                        CDSBuscarFactura.Params.ParamByName('Letra').Value   := Letra;
                        CDSBuscarFactura.Params.ParamByName('suc').Value     := prefijo;
                        CDSBuscarFactura.Params.ParamByName('Numero').Value  := Numero;
                        CDSBuscarFactura.Params.ParamByName('Sucursal').Value:= StrToInt(dbcComprobante.LookupSource.DataSet.FieldByName('Sucursal').Value);
                        CDSBuscarFactura.Params.ParamByName('Tipo').Value    := Tipo;
                        CDSBuscarFactura.Open;

                        if (CDSBuscarFacturaID_FC.AsString<>'') then
                          begin
                            Clase := CDSBuscarFacturaCLASECPBTE.AsString;
                            Tipo  := CDSBuscarFacturaTIPOCPBTE.AsString;
                          end;
                        Lista.SubItems.Add(CodAFIP);
                        Lista.SubItems.Add(Tipo);
                        Lista.SubItems.Add(Clase);
                        Lista.SubItems.Add(Letra);
                        Lista.SubItems.Add(Prefijo);
                        Lista.SubItems.Add(Numero);
                        Lista.SubItems.Add(NroCuit);
                        Lista.SubItems.Add(Neto);
                        Lista.SubItems.Add(NetoExento);
                        Lista.SubItems.Add(Iva);

                        Lista.SubItems.Add(PercepcionIIBBTasa);
                        Lista.SubItems.Add(PercepcionIIBBImporte);

                        Lista.SubItems.Add(PercepcionIVATasa_1);
                        Lista.SubItems.Add(PercepcionIVAImporte_1);

                        Lista.SubItems.Add(PercepcionIVATasa_2);
                        Lista.SubItems.Add(PercepcionIVAImporte_2);

                        Lista.SubItems.Add(Importe);
                        Lista.SubItems.Add(CAE);
                        Lista.SubItems.Add(CAEVto);

                        if ((TipoCpbte<>63) and (TipoCpbte<>64)) then
                          begin
                            Novedades:='';
                            FechaAux      := FormatDateTime('dd/mm/yyyy',CDSBuscarFacturaFECHAVTA.AsdateTime);
                            Lista.Checked := Trim(CDSBuscarFacturaCAE.AsString)=CAE;

                            if CDSBuscarFacturaID_FC.AsString='' then
                              Novedades:='Inexistente';
                            if (CDSBuscarFacturaCAE.Value<>CAE) then
                              Novedades:=Novedades+'|'+'Dif.CAE';
                            if (Not(FechaAux=Fecha)) then
                              Novedades:=Novedades+'|'+'Dif.Fecha';
                             //////////////////////////////////////////////////////////////////
                             //  ver codigo arriba
                             //////////////////////////////////////////////////////////////////
                            lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                            while pos(',',Importe)<>0 Do
                              delete(Importe,pos(',',Importe),1);
                            Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                            if (Diferencia>2) then
                              Novedades:=Novedades+'Import.<> / Dif. '+FloatToStr(diferencia*0.01);
                            if Novedades<>'' then Contador:=Contador+1;
                            Lista.SubItems.Add(Novedades);
                            CDSBuscarFactura.Close;
                          end
                        else
                          begin
                            Novedades:='';
                            FechaAux :=FormatDateTime('dd/mm/yyyy',QBuscarFacturaLQFECHACOMPRA.AsdateTime);
                            Lista.Checked := Trim(QBuscarFacturaLQCAE.AsString)=CAE;

                            if QBuscarFacturaLQID_FC.AsString='' then
                              Novedades:='Inexistente';
                            if (QBuscarFacturaLQCAE.Value<>CAE) then
                              Novedades:=Novedades+'|'+'Dif.CAE';
                            if (Not(FechaAux=Fecha)) then
                              Novedades:=Novedades+'|'+'Dif.Fecha';
                            if Novedades<>'' then Contador:=Contador+1;
                            //////////////////////////////////////////////////////////////////
                            //  ver codigo arriba
                            //////////////////////////////////////////////////////////////////
                            lbNovedad.Caption:='Novedades:'+IntToStr(Contador);
                            while pos(',',Importe)<>0 Do
                              delete(Importe,pos(',',Importe),1);
                            Diferencia:=Abs(((RoundTo(CDSBuscarFacturaTOTAL.AsFLoat,-2))-RoundTo(StrToFloat(Importe),-2))*100);
                            if (Diferencia>1) then
                              Novedades:=Novedades+'Import.<>';
                            Lista.SubItems.Add(Novedades);
                            CDSBuscarFactura.Close;
                          end;
                      end;
                  except
                    begin
                      ShowMessage (wsfev1.ErrorDesc);
                      Cancelar:=True;
                       // Exit;
                    end;
                  end;
                 if Cancelar then  Exit;
                end;
            end;
          QActualizaUltimoNro.Close;
          QActualizaUltimoNro.ParamByName('UltimoNro').AsInteger:=StrToInt(edHasta.Text);
          QActualizaUltimoNro.ParamByName('Id').AsInteger       :=dbcComprobante.KeyValue;
          QActualizaUltimoNro.ExecSQL();
          QActualizaUltimoNro.Close;
        end;
end;

procedure TFormFiscalizacionLote.lbRegClick(Sender: TObject);
begin
  inherited;
  edDesde.Text:=Copy(lbReg.Caption,1,Pos('/',lbReg.Caption)-1);
  btListarComprob.Click;
end;

procedure TFormFiscalizacionLote.lvGeneralDblClick(Sender: TObject);
begin
  inherited;
  Cancelar:=True;
  Delay(200);
  BuscarCpbte.Execute;
end;

procedure TFormFiscalizacionLote.lvGeneralMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (lvGeneral.Items.Count>0) then
    if (lvGeneral.ItemIndex>0) then
      if (x>2) and (x < 1030) then
        if (y>30) and (y < 382) then
          if Not(lvGeneral.Items.Item[lvGeneral.ItemIndex].Checked) then
            sbEstado.Panels[1].Text:='F4:Facturar'
          else
            sbEstado.Panels[1].Text:='';

end;

procedure TFormFiscalizacionLote.dbcComprobanteChange(Sender: TObject);
var UltimoNroReg:Int64;
UltimoNro:Double;
TipoCpbte,PuntoVta:Integer;
Cuit:Int64;
CertificadoActivo,CuitEmpresaActivo:String;
Comprobante:TDatosComprobante;
begin
  inherited;
  CuitEmpresaActivo := CDSEmpresa.FieldByName('cuit').AsString;
  CertificadoActivo := FormFiscalizacionLote.CertificadoElectronico;

  if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    begin
      CuitEmpresaActivo := Trim(dbcSucursal.LookupSource.DataSet.FieldByName('CUIT').Value);
      CertificadoActivo := dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value;
    end;

  CuitEmpresaActivo:=AnsiReplaceStr(CuitEmpresaActivo,'-','');
  Cuit:=Trunc(StrToFloat(CuitEmpresaActivo));

//  wsfev1.Reset;
//  wsfev1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
//  wsfev1.URL  := URLWSW;
//
//  wsfex1.CUIT := StrToFloat(CuitEmpresaActivo); //FCuitVdor;  //20129063662; // Cuit del vendedor
//  wsfex1.URL  := URLWSW_EX;
  dmFE1.InicializarServicio(URLWSAA,URLWSW,CertificadoActivo,ClaveElectronica);
  dmFEX.InicializarServicio(URLWSAA,URLWSW_EX,CertificadoActivo,ClaveElectronica);


  edTipo.Text    := dbcComprobante.LookupSource.DataSet.FieldByName('Tipo_Comprob').AsString;
  edClase.Text   := dbcComprobante.LookupSource.DataSet.FieldByName('Clase_Comprob').AsString;
  edLetra.Text   := dbcComprobante.LookupSource.DataSet.FieldByName('Letra').AsString;
  edPrefijo.Text := dbcComprobante.LookupSource.DataSet.FieldByName('Prefijo').AsString;
  PuntoVta       := StrToInt( edPrefijo.Text);

  TipoCpbte:=dbcComprobante.LookupSource.DataSet.FieldByName('CODIGO_AFIP').AsInteger;

  //************************************************************
  if Not(TipoCpbte in [186,185,189,191,180,182,183,188,19,21]) then
    begin
       try
         if  dmFE1.CheckLogin(Cuit) then
           begin
             dmFE1.Reset;
             try
               if dmFE1.RecuperaLastCMP(PuntoVta, TipoCPbte, UltimoNroReg) Then
                 begin
                   edHasta.Text := AnsiRightStr('00000000'+IntToStr(UltimoNroReg),8);
                   edDesde.Text := '1';
                   if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsString<>'') then
                     if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsInteger>0) then
                       if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat<=UltimoNroReg) then
                         edDesde.Text := FormatFloat('0',dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat)
                       else
                         edDesde.Text := FormatFloat('0',UltimoNroReg-1)
                 end;
              except
                ShowMessage('Hubo error al Recuperar Ultimo Nro ...');
             end;
           end;
       except
         ShowMessage('Hubo error al solicitar Numeracion...');
       end;
    end
  else
   //************************************************************
    if TipoCpbte in [186,185,189,191,180,182,183,188] then
      begin
        //wslsp.                := Cowslsp.Create;
        wslsp.CUIT           := StrToFloat(CuitEmpresaActivo);// 20939802593;
        wslsp.modoProduccion := ModoFcElectronica=1;// false;
        wslsp.Depurar        := true;

        try
          if wslsp.login(FormFiscalizacionLote.CertificadoElectronico,FormFiscalizacionLote.ClaveElectronica ) Then //  'certificado.crt', 'clave.key') then
            begin
              ConsultaUltimoNroResponse := wslsp.consultarUltimoNroComprobantePorPtoVta(PuntoVta, tipoCpbte);
              if not ConsultaUltimoNroResponse.respuesta.hayErrores then
                begin
                  edHasta.Text := FormatFloat('0',ConsultaUltimoNroResponse.respuesta.nroComprobante);
                  edDesde.Text := '1';
                  if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsString<>'') then
                    if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsInteger>0) then
                      if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat<=ConsultaUltimoNroResponse.respuesta.nroComprobante) then
                        edDesde.Text := FormatFloat('0',dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat)
                      else
                        begin
                          if (UltimoNroReg-1>0) then
                            edDesde.Text := FormatFloat('0',UltimoNroReg-1)
                          else
                            edDesde.Text := FormatFloat('0',1);

                        end;
                end;
            end;
        except
          ShowMessage('Hubo error al solicitar Numeracion...');
        end;
      end
    else
     if (TipoCpbte in [19,21]) then
       begin
         try
           if dmFEX.CheckLogin(Cuit) then
             begin
               try
                 if dmFEX.RecuperaLastCMP(PuntoVta, TipoCPbte, UltimoNro,UltimaFechaVta) Then
                   begin
                     edHasta.Text := FormatFloat('0',UltimoNro);
                     edDesde.Text := '1';
                     if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsString<>'') then
                       if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsInteger>0) then
                         if (dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat<=UltimoNroReg) then
                           edDesde.Text := FormatFloat('0',dbcComprobante.LookupSource.DataSet.FieldByName('UltimoNro').AsFloat)
                         else
                           edDesde.Text := FormatFloat('0',UltimoNro-1)
                   end;
                except
                  ShowMessage('Hubo error al Recuperar Ultimo Nro ...');
               end;
             end;
         except
           ShowMessage('Hubo error al solicitar Numeracion...');
         end;
       end;

end;

procedure TFormFiscalizacionLote.dbcComprobanteClick(Sender: TObject);
begin
  inherited;
  CDSBuscadorComp.Close;
  CDSBuscadorComp.Params.ParamByName('sucursal' ).Value:=dbcSucursal.KeyValue;
  CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='*';
  if chbActivos.Checked then
    CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='S';
  CDSBuscadorComp.Open;
 // Buscar.Execute;
end;

procedure TFormFiscalizacionLote.dbcSucursalChange(Sender: TObject);
begin
  inherited;
  CDSBuscadorComp.Close;
  CDSBuscadorComp.Params.ParamByName('sucursal').Value:=dbcSucursal.KeyValue;
  CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='*';
  if chbActivos.Checked then
    CDSBuscadorComp.Params.ParamByName('estado' ).Value  :='S';
  CDSBuscadorComp.Open;

  lbCertificado.Caption:=  CertificadoElectronico;//(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value);

  if (not dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').IsNull) and
     (Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value) <> '') then
    lbCertificado.Caption:=  Trim(dbcSucursal.LookupSource.DataSet.FieldByName('Certificado_elec').Value);

end;

procedure TFormFiscalizacionLote.dbcSucursalClick(Sender: TObject);
begin
  inherited;
   dbcComprobante.KeyValue:=-1;
end;

procedure TFormFiscalizacionLote.dbcSucursalEnter(Sender: TObject);
begin
  inherited;
  dbcComprobante.KeyValue:=-1;
end;

procedure TFormFiscalizacionLote.rgBuscarPorClick(Sender: TObject);
begin
  inherited;
  pnNumero.Enabled:=rgBuscarPor.ItemIndex=1;
end;

procedure TFormFiscalizacionLote.SalirExecute(Sender: TObject);
begin
  if not jvHiloConsulta.Terminated then
    jvHiloConsulta.Terminate;
  while not (jvHiloConsulta.Terminated) do
    Sleep(10);
  inherited;

end;

procedure TFormFiscalizacionLote.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frxReport.DesignReport();
end;

procedure TFormFiscalizacionLote.sbEstadoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  if (x>1) and (x<200) and (y>10) and (y<500) then
    sbEstado.Panels[1].Text:='F4 - Refacturar' else
  sbEstado.Panels[1].Text:='';

end;

procedure TFormFiscalizacionLote.sbGravarClick(Sender: TObject);
begin
  inherited;
  QBuscaCpbte.Close;
  QBuscaCpbte.ParamByName('letra').Value  :=cbLetra.Text;
  QBuscaCpbte.ParamByName('suc').Value    :=Copy('0000',1,4-length(Trim(edSuc.Text)))+Trim(edSuc.Text);
  QBuscaCpbte.ParamByName('numero').Value :=Copy('00000000',1,8-Length(Trim(edNumero.Text)))+Trim(edNumero.Text);
  QBuscaCpbte.ParamByName('tipo').Value   :=cbTipo.Text;
  QBuscaCpbte.open;
  if QBuscaCpbte.Fields[0].AsString<>'' then
    begin
      if ((cbTipo.Text='FC') or (cbTipo.Text='NC')) then
        begin
          if Not(Assigned(FormCpbte_2)) then
            FormCpbte_2:=TFormCpbte_2.Create(Self);
          FormCpbte_2.DatoNew  :=QBuscaCpbte.Fields[0].AsString;
          FormCpbte_2.TipoCpbte:=cbTipo.Text;
          FormCpbte_2.Recuperar.Execute;
          FormCpbte_2.Show;
        end
      else
        if (CDSFacturasTIPOCPBTE.Value='FO') then
          begin
            if Not(Assigned(FormCpbteCtdo_2)) then
              FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(Self);
            FormCpbteCtdo_2.DatoNew  :=QBuscaCpbte.Fields[0].AsString;
            FormCpbteCtdo_2.TipoCpbte:=cbTipo.Text;
            FormCpbteCtdo_2.Recuperar.Execute;
            FormCpbteCtdo_2.Show;
          end;
    end;
end;

end.
