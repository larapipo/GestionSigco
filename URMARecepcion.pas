unit URMARecepcion;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Grids, DBGrids, ComCtrls, StdCtrls, Mask,
 Db,  JvComponentBase, JvExControls, JvGradient, JvFormPlacement,
  JvLabel, JvDBControls, FMTBcd, JvExMask, JvToolEdit, SqlExpr, frxClass, DBXCommon,
  IBGenerator, Provider, DBClient, ImgList, ActnList, Buttons, ToolWin, ExtCtrls,
  JvAppStorage, JvAppIniStorage, System.Actions, Vcl.DBCtrls,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormRMARecepcion = class(TFormABMBase)
    pnCabecera: TPanel;
    dbtMuestraComprob: TDBText;
    DBText10: TDBText;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    dbeSuc: TDBEdit;
    dbeNumero: TDBEdit;
    dbeNombre: TDBEdit;
    dbeSucursal: TDBEdit;
    dbeMuestraDeposito: TDBEdit;
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    dbtCantidad: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    lbCantidad: TLabel;
    dbeObs1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
    dbgSeries: TDBGrid;
    CDSGtiaCab: TClientDataSet;
    DSPGtiaCab: TDataSetProvider;
    DSGtiaDet: TDataSource;
    CDSGtiaDet: TClientDataSet;
    DSPGtiaDet: TDataSetProvider;
    IBGDet: TIBGenerator;
    IBGCab: TIBGenerator;
    DSPGtiaSubDet: TDataSetProvider;
    CDSGtiaSubDetalle: TClientDataSet;
    DSGtiaSubDetalle: TDataSource;
    IBGSubDet: TIBGenerator;
    CDSGtiaCabID_RTO: TIntegerField;
    CDSGtiaCabLETRA: TStringField;
    CDSGtiaCabSUCRTO: TStringField;
    CDSGtiaCabNUMRTO: TStringField;
    CDSGtiaCabSUCURSAL: TIntegerField;
    CDSGtiaCabNROCPBTE: TStringField;
    CDSGtiaCabTIPOCPBTE: TStringField;
    CDSGtiaCabCLASECPBTE: TStringField;
    CDSGtiaCabOBS: TStringField;
    CDSGtiaCabDEPOSITO: TIntegerField;
    CDSGtiaCabPROVEEDOR: TStringField;
    CDSGtiaCabUSUARIO: TStringField;
    CDSGtiaCabCPBTE_PROVEEDOR: TStringField;
    CDSGtiaCabMUESTRAPROVEEDOR: TStringField;
    CDSGtiaCabMUESTRACOMPROBANTE: TStringField;
    CDSGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSGtiaCabMUESTRASUCURSAL: TStringField;
    CDSGtiaCabMUESTRADEPOSITO: TStringField;
    CDSGtiaDetID_RTO_DET: TIntegerField;
    CDSGtiaDetID_RTO_CAB: TIntegerField;
    CDSGtiaDetPROVEEDOR: TStringField;
    CDSGtiaDetCODIGO: TStringField;
    CDSGtiaDetDETALLE: TStringField;
    CDSGtiaDetUNIDAD: TStringField;
    CDSGtiaDetNROCPBTE: TStringField;
    CDSGtiaDetDEPOSITO: TIntegerField;
    CDSGtiaDetCLASECPBTE: TStringField;
    CDSGtiaDetTIPOCPBTE: TStringField;
    CDSGtiaDetAFECTASTOCK: TStringField;
    CDSGtiaDetCON_NRO_SERIE: TStringField;
    CDSGtiaSubDetalleID: TIntegerField;
    CDSGtiaSubDetalleID_RTODET: TIntegerField;
    CDSGtiaSubDetalleID_RTOCAB: TIntegerField;
    CDSGtiaSubDetalleTIPOCPBTE: TStringField;
    CDSGtiaSubDetalleCLASECPBTE: TStringField;
    CDSGtiaSubDetalleNROCPBTE: TStringField;
    CDSGtiaSubDetalleCODIGOARTICULO: TStringField;
    CDSGtiaSubDetalleSERIE: TStringField;
    CDSGtiaSubDetalleDEPOSITO: TIntegerField;
    CDSGtiaSubDetalleTIPO: TStringField;
    dbeCpbteProv: TDBEdit;
    BuscarProveedor: TAction;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    Imprimir: TAction;
    BuscarSerie: TAction;
    frGtia: TfrxReport;
    DSPStock: TDataSetProvider;
    CDSGtiaDetID_ARTICULO_RMA: TIntegerField;
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    dbeFecha: TJvDBDateEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    DSPBuscaSucursal: TDataSetProvider;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    CDSGtiaSubDetalleFECHA: TSQLTimeStampField;
    CDSStock: TClientDataSet;
    CDSGtiaDetFECHA: TSQLTimeStampField;
    CDSGtiaCabFECHAENVIO: TSQLTimeStampField;
    CDSBuscaComprob: TClientDataSet;
    DSPBuscaComprob: TDataSetProvider;
    CDSBuscaComprobID_COMPROBANTE: TIntegerField;
    CDSBuscaComprobTIPO_COMPROB: TStringField;
    CDSBuscaComprobCLASE_COMPROB: TStringField;
    CDSBuscaComprobDENOMINACION: TStringField;
    CDSBuscaComprobSUCURSAL: TIntegerField;
    CDSBuscaComprobLETRA: TStringField;
    CDSBuscaComprobPREFIJO: TStringField;
    CDSBuscaComprobNUMERARCION_PROPIA: TStringField;
    CDSBuscaComprobNUMERO: TStringField;
    CDSBuscaComprobTOMA_NRO_DE: TIntegerField;
    CDSBuscaComprobAFECTA_IVA: TStringField;
    CDSBuscaComprobAFECTA_CC: TStringField;
    CDSBuscaComprobDESGLOZA_IVA: TStringField;
    CDSBuscaComprobCOMPRA_VENTA: TStringField;
    CDSBuscaComprobCOPIAS: TIntegerField;
    CDSBuscaComprobREPORTE: TStringField;
    CDSBuscaComprobIMPRIME: TStringField;
    CDSBuscaComprobFISCAL: TStringField;
    CDSBuscaComprobNOMBREIMPRESORA: TStringField;
    CDSBuscaComprobPENDIENTEIMPRESION: TStringField;
    CDSBuscaComprobLINEAS_DETALLE: TSmallintField;
    CDSBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    CDSBuscaComprobDEFECTO: TStringField;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    ComBuscadorComprobante: TComBuscador;
    QAceptar: TFDQuery;
    QGtiaCab: TFDQuery;
    QBuscaComprob: TFDQuery;
    QComprob: TFDQuery;
    QDeposito: TFDQuery;
    QProveedor: TFDQuery;
    QNroSerie: TFDQuery;
    QSucursal: TFDQuery;
    QNroSerieID: TIntegerField;
    QNroSerieCODIGO_STK: TStringField;
    QNroSerieCODIGOSERIE: TStringField;
    QNroSerieFECHAINGRESO: TSQLTimeStampField;
    QNroSerieFECHAEGRESO: TSQLTimeStampField;
    QSucursalCODIGO: TIntegerField;
    QSucursalDETALLE: TStringField;
    QSucursalDIRECCION: TStringField;
    QSucursalLOCALIDAD: TStringField;
    QSucursalTELEFONO1: TStringField;
    QSucursalTELEFONO2: TStringField;
    QSucursalRECARGO: TFloatField;
    QSucursalAPLICA_PERCEPCION_IIBB: TStringField;
    QSucursalGENERA_XML_COMUN: TStringField;
    QSucursalHOST: TStringField;
    QSucursalCERTIFICADO_ELEC: TStringField;
    QSucursalCUIT: TStringField;
    QSucursalRAZONSOCIAL: TStringField;
    QSucursalCOT_CLAVE: TStringField;
    QSucursalCOT_CUIT: TStringField;
    QSucursalAPLICA_LEY15311: TStringField;
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QDepositoCENTRALIZA_WEB: TStringField;
    QDepositoACTIVO: TStringField;
    QBuscaComprobID_COMPROBANTE: TIntegerField;
    QBuscaComprobTIPO_COMPROB: TStringField;
    QBuscaComprobCLASE_COMPROB: TStringField;
    QBuscaComprobDENOMINACION: TStringField;
    QBuscaComprobSUCURSAL: TIntegerField;
    QBuscaComprobLETRA: TStringField;
    QBuscaComprobPREFIJO: TStringField;
    QBuscaComprobNUMERARCION_PROPIA: TStringField;
    QBuscaComprobNUMERO: TStringField;
    QBuscaComprobTOMA_NRO_DE: TIntegerField;
    QBuscaComprobAFECTA_IVA: TStringField;
    QBuscaComprobAFECTA_CC: TStringField;
    QBuscaComprobDESGLOZA_IVA: TStringField;
    QBuscaComprobCOMPRA_VENTA: TStringField;
    QBuscaComprobCOPIAS: TIntegerField;
    QBuscaComprobREPORTE: TStringField;
    QBuscaComprobIMPRIME: TStringField;
    QBuscaComprobFISCAL: TStringField;
    QBuscaComprobNOMBREIMPRESORA: TStringField;
    QBuscaComprobPENDIENTEIMPRESION: TStringField;
    QBuscaComprobLINEAS_DETALLE: TSmallintField;
    QBuscaComprobCALCULA_IVA_ARTICULOS: TStringField;
    QBuscaComprobDEFECTO: TStringField;
    QBuscaComprobCAJA_DEFECTO: TIntegerField;
    QBuscaComprobDIVIDE_IVA: TStringField;
    QBuscaComprobFACTURAELECTRONICA: TStringField;
    QBuscaComprobEN_USO: TStringField;
    QBuscaComprobCODIGO_AFIP: TStringField;
    QBuscaComprobID_AJUSTECC: TIntegerField;
    QBuscaComprobCENTRO_COSTO: TIntegerField;
    QBuscaComprobFILTRO_COMPROBANTES: TStringField;
    QBuscaComprobDEPOSITO: TIntegerField;
    QBuscaComprobULTIMONRO: TIntegerField;
    QBuscaComprobEDITAR_NRO: TStringField;
    QBuscaComprobCONTROLADOR_NROREG: TStringField;
    QBuscaComprobUSAR_CAEA: TStringField;
    QBuscaComprobCAEA: TStringField;
    QBuscaComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QBuscaComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    QBuscaComprobREMITO_IMPRENTA: TStringField;
    QBuscaComprobREMITO_FECHA_RANGO: TStringField;
    QBuscaComprobREMITO_DIRECCION: TStringField;
    QBuscaComprobREMITO_CAI: TStringField;
    QBuscaComprobREMITO_VENCIMIENTO_CAI: TStringField;
    QGtiaDet: TFDQuery;
    QStock: TFDQuery;
    QGtiaSubDetalle: TFDQuery;
    QGtiaSubDetalleID: TIntegerField;
    QGtiaSubDetalleID_RTODET: TIntegerField;
    QGtiaSubDetalleID_RTOCAB: TIntegerField;
    QGtiaSubDetalleTIPOCPBTE: TStringField;
    QGtiaSubDetalleCLASECPBTE: TStringField;
    QGtiaSubDetalleFECHA: TSQLTimeStampField;
    QGtiaSubDetalleNROCPBTE: TStringField;
    QGtiaSubDetalleCODIGOARTICULO: TStringField;
    QGtiaSubDetalleSERIE: TStringField;
    QGtiaSubDetalleDEPOSITO: TIntegerField;
    QGtiaSubDetalleTIPO: TStringField;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockMUESTRAFISICO: TFloatField;
    QGtiaDetID_RTO_DET: TIntegerField;
    QGtiaDetID_RTO_CAB: TIntegerField;
    QGtiaDetFECHA: TSQLTimeStampField;
    QGtiaDetPROVEEDOR: TStringField;
    QGtiaDetCODIGO: TStringField;
    QGtiaDetDETALLE: TStringField;
    QGtiaDetUNIDAD: TStringField;
    QGtiaDetCANTIDAD: TFloatField;
    QGtiaDetNROCPBTE: TStringField;
    QGtiaDetDEPOSITO: TIntegerField;
    QGtiaDetCLASECPBTE: TStringField;
    QGtiaDetTIPOCPBTE: TStringField;
    QGtiaDetAFECTASTOCK: TStringField;
    QGtiaDetCON_NRO_SERIE: TStringField;
    QGtiaDetID_ARTICULO_RMA: TIntegerField;
    CDSGtiaDetCANTIDAD: TFloatField;
    QGtiaCabID_RTO: TIntegerField;
    QGtiaCabFECHAENVIO: TSQLTimeStampField;
    QGtiaCabLETRA: TStringField;
    QGtiaCabSUCRTO: TStringField;
    QGtiaCabNUMRTO: TStringField;
    QGtiaCabSUCURSAL: TIntegerField;
    QGtiaCabNROCPBTE: TStringField;
    QGtiaCabTIPOCPBTE: TStringField;
    QGtiaCabCLASECPBTE: TStringField;
    QGtiaCabOBS: TStringField;
    QGtiaCabDEPOSITO: TIntegerField;
    QGtiaCabPROVEEDOR: TStringField;
    QGtiaCabUSUARIO: TStringField;
    QGtiaCabCPBTE_PROVEEDOR: TStringField;
    QGtiaCabMUESTRAPROVEEDOR: TStringField;
    QGtiaCabMUESTRACOMPROBANTE: TStringField;
    QGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    QGtiaCabMUESTRASUCURSAL: TStringField;
    QGtiaCabMUESTRADEPOSITO: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobSUCURSAL: TIntegerField;
    QComprobLETRA: TStringField;
    QComprobPREFIJO: TStringField;
    QComprobNUMERARCION_PROPIA: TStringField;
    QComprobNUMERO: TStringField;
    QComprobTOMA_NRO_DE: TIntegerField;
    QComprobAFECTA_IVA: TStringField;
    QComprobAFECTA_CC: TStringField;
    QComprobDESGLOZA_IVA: TStringField;
    QComprobCOMPRA_VENTA: TStringField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    QComprobIMPRIME: TStringField;
    QComprobFISCAL: TStringField;
    QComprobNOMBREIMPRESORA: TStringField;
    QComprobPENDIENTEIMPRESION: TStringField;
    QComprobLINEAS_DETALLE: TSmallintField;
    QComprobCALCULA_IVA_ARTICULOS: TStringField;
    QComprobDEFECTO: TStringField;
    QComprobCAJA_DEFECTO: TIntegerField;
    QComprobDIVIDE_IVA: TStringField;
    QComprobFACTURAELECTRONICA: TStringField;
    QComprobEN_USO: TStringField;
    QComprobCODIGO_AFIP: TStringField;
    QComprobID_AJUSTECC: TIntegerField;
    QComprobCENTRO_COSTO: TIntegerField;
    QComprobFILTRO_COMPROBANTES: TStringField;
    QComprobDEPOSITO: TIntegerField;
    QComprobULTIMONRO: TIntegerField;
    QComprobEDITAR_NRO: TStringField;
    QComprobCONTROLADOR_NROREG: TStringField;
    QComprobUSAR_CAEA: TStringField;
    QComprobCAEA: TStringField;
    QComprobVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QComprobVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    QComprobREMITO_IMPRENTA: TStringField;
    QComprobREMITO_FECHA_RANGO: TStringField;
    QComprobREMITO_DIRECCION: TStringField;
    QComprobREMITO_CAI: TStringField;
    QComprobREMITO_VENCIMIENTO_CAI: TStringField;
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
//    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSGtiaCabSUCRTOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaCabPROVEEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaDetCODIGOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabNUMRTOSetText(Sender: TField; const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure CDSGtiaCabNewRecord(DataSet: TDataSet);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure ConfirmaExecute(Sender: TObject);
    procedure CDSGtiaSubDetalleAfterDelete(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSGtiaDetBeforeDelete(DataSet: TDataSet);
    procedure CDSGtiaDetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    DatoControl:String;
    CodigosSeries:TStringList;
    DepositoRMA:Integer;
    function AsignarProveedor(Dato:String):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;
    function ControlSerie:Boolean;
    procedure Ingresa_Mov_RMA;

  end;

var
  FormRMARecepcion: TFormRMARecepcion;
   copias:integer;

PROCEDURE UltimoComprobante;

implementation

uses UBuscadorProveedor, UBuscadorArticulos,UDMain_FD,
     DMBuscadoresForm, DMStoreProcedureForm;

{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormRMARecepcion DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSGtiaCabLETRA.AsString <> '') AND (CDSGtiaCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSGtiaCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').Value    := CDSGtiaCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSGtiaCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').Value    := CDSGtiaCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').Value := 'C';
           spNumeroCpbte.ExecProc;
           IF spNumeroCpbte.ParamByName('con_numeracion').AsString <> 'X' THEN
             BEGIN
               IF spNumeroCpbte.ParamByName('prefijo').AsString <> '' THEN
                 Numero :=StrToInt(spNumeroCpbte.ParamByName('prefijo').AsString)
               ELSE
                 Numero := 1;
               CDSGtiaCabSUCRTOSetText(CDSGtiaCabSUCRTO,IntToStr(Numero));
               IF spNumeroCpbte.ParamByName('numero').AsString <> '' THEN
                 Numero := StrToInt(spNumeroCpbte.ParamByName('numero').AsString) + 1
               ELSE
                 Numero := 1;
               CDSGtiaCabNUMRTOSetText(CDSGtiaCabNUMRTO,IntToStr(Numero));
             END;
           CDSGtiaCabTIPOCPBTE.Value  :=spNumeroCpbte.ParamByName('Tipo_Comprob').AsString;
           CDSGtiaCabCLASECPBTE.Value :=spNumeroCpbte.ParamByName('Clase_Comprob').AsString;
           Copias := spNumeroCpbte.ParamByName('Copias').AsInteger;
           Imprime:= spNumeroCpbte.paramByName('Imprime').AsString;
           spNumeroCpbte.Close;
         END;
       CDSGtiaCabNROCPBTE.AsString := CDSGtiaCabLETRA.AsString +
       CDSGtiaCabSUCRTO.AsString +
       CDSGtiaCabNUMRTO.AsString;
    end;
END;

procedure TFormRMARecepcion.Ingresa_Mov_RMA;
var cant:Integer;
begin
  CDSGtiaDet.First;
  while not(CDSGtiaDet.Eof) do
    begin
      CDSGtiaSubDetalle.First;
      for cant:=1 to round(CDSGtiaDetCANTIDAD.AsFloat) do
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            QAceptar.Close;
            QAceptar.ParamByName('id').Value         :=CDSGtiaDetID_ARTICULO_RMA.Value;
            QAceptar.ParamByName('Fecha').AsDate     :=CDSGtiaCabFECHAENVIO.AsDateTime;
            QAceptar.ParamByName('cpbte').AsString   :=CDSGtiaCabNROCPBTE.Value;
            QAceptar.ParamByName('serie').AsString   :=CDSGtiaSubDetalleSERIE.Value;
            QAceptar.ExecSQL;
            QAceptar.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transaccion no finalizada....!');
          end;
          CDSGtiaSubDetalle.Next;
        end;
      CDSGtiaDet.Next;
    end;
end;

FUNCTION TFormRMARecepcion.AsignarProveedor(Dato: STRING): Boolean;
BEGIN
  QProveedor.Close;
  QProveedor.ParamByName('Codigo').Value := Dato;
  QProveedor.Open;
  IF NOT (QProveedor.Eof) THEN
    BEGIN
      CDSGtiaCabMUESTRAPROVEEDOR.AsString      := QProveedorNOMBRE.AsString;
      //asigno el comprobante segun condicoin de Inscripcion
      // si el cliente no tiene asignado un comprobante traigo el que le
      // corresponde por el tipo de Iva
      Result := True;
    END
  ELSE
    Result := False;
  QProveedor.Close;
END;

FUNCTION TFormRMARecepcion.AsignarSucursal(Dato: Integer): Boolean;
BEGIN
  QSucursal.Close;
  QSucursal.ParamByName('Codigo').Value := dato;
  QSucursal.Open;
  IF NOT (QSucursal.IsEmpty) THEN
    BEGIN
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      CDSBuscaComprob.close;
      CDSBuscaComprob.Params.ParamByName('suc').Value:=Dato;
      CDSBuscaComprob.Open;
      if CDSBuscaComprob.RecordCount=1 Then
        begin
          CDSGtiaCabID_TIPOCOMPROBANTESetText(CDSGtiaCabID_TIPOCOMPROBANTE,CDSBuscaComprob.fieldByName('Id_comprobante').AsString);
        end;
      CDSBuscaComprob.Close;
      Result := True;
      CDSGtiaCabMUESTRASUCURSAL.Value := QSucursalDETALLE.Value;
    END
  ELSE
    Result := False;
  QSucursal.Close;
END;

FUNCTION TFormRMARecepcion.AsignarComprobante(Dato: Integer): Boolean;
BEGIN
  QComprob.Close;
  QComprob.ParamByName('id').Value := dato;
  QComprob.ParamByName('suc').Value:= CDSGtiaCabSUCURSAL.Value;
  QComprob.Open;
  IF NOT (QComprob.IsEmpty) THEN
    BEGIN
      Result := True;
      CDSGtiaCabMUESTRACOMPROBANTE.Value := QComprobDENOMINACION.Value;
      CDSGtiaCabLETRA.Value              := QComprobLETRA.Value;
      CDSGtiaCabTIPOCPBTE.Value          := QComprobTIPO_COMPROB.Value;
      CDSGtiaCabCLASECPBTE.Value         := QComprobCLASE_COMPROB.Value;
    END
  ELSE
    BEGIN
      Result := False;
      CDSGtiaCabMUESTRACOMPROBANTE.Value := '';
      CDSGtiaCabLETRA.Value              := '';
      CDSGtiaCabTIPOCPBTE.Value          := '';
      CDSGtiaCabCLASECPBTE.Value         := '';
    END;
END;

FUNCTION TFormRMARecepcion.AsignarDeposito(Dato: Integer): Boolean;
BEGIN
  QDeposito.Close;
  QDeposito.ParamByName('Id').Value := Dato;
  QDeposito.Open;
  IF NOT (QDeposito.Eof) THEN
    BEGIN
      Result := True;
      CDSGtiaCabMUESTRADEPOSITO.Value := QDepositoNombre.Value;
      RxDBECodigo.SetFocus;
    END
  ELSE
    begin
      Result := False;
      CDSGtiaCabMUESTRADEPOSITO.Value := '';
    end;
  QDeposito.Close;
END;

FUNCTION TFormRMARecepcion.ASignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSGtiaDet.State = dsBrowse THEN
    CDSGtiaDet.Edit;
    BEGIN
      CDSStock.Close;
      CDSStock.Params.ParamByName('Codigo').Value   := Dato;
      CDSStock.Params.ParamByName('Deposito').Value := CDSGtiaCabDEPOSITO.Value;
      CDSStock.Open;
      IF NOT (CDSStock.IsEmpty) THEN
        BEGIN
          CDSGtiaDetDETALLE.AsString         := CDSStockDetalle_Stk.AsString;
          CDSGtiaDetUNIDAD.Value             := CDSStockUnidad.Value;
          CDSGtiaDetAFECTASTOCK.Value        := CDSStockCONTROLASTOCK.Value;
          CDSGtiaDetCON_NRO_SERIE.Value      := CDSStockCONTROL_SERIE.Value;
          Result := True;
        END
      ELSE
        Result := False;
    END;
END;

function TFormRMARecepcion.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
//  DatosCompra.wwCDSCompraDet.DisableControls;
  CDSGtiaDet.First;
  while not(CDSGtiaDet.Eof) and aux=True do
    begin
      aux:=True;
      if (CDSGtiaDetCON_NRO_SERIE.Value='S') then
        begin
          if (Int(CDSGtiaDetCantidad.AsFloat)=CDSGtiaSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSGtiaDet.Next;
    end;
  CDSGtiaDet.First;
 // DatosCompra.wwCDSCompraDet.EnableControls;
  Result:=Aux;
end;

procedure TFormRMARecepcion.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSGtiaCab.Close;
  CDSGtiaCab.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
  CDSGtiaCab.Open;

  CDSGtiaDet.Close;
  CDSGtiaDet.Params.ParamByName('id').Value        :=StrToInt(DatoNew);
  CDSGtiaDet.OPen;

  CDSGtiaSubDetalle.MasterSource:=nil;
  CDSGtiaSubDetalle.MasterFields:='';
  CDSGtiaSubDetalle.Close;
  CDSGtiaSubDetalle.Params.ParamByName('id').Value :=StrToInt(DatoNew);
  CDSGtiaSubDetalle.Open;
  CDSGtiaSubDetalle.MasterSource:=DSGtiaDet;
  CDSGtiaSubDetalle.MasterFields:='ID_RTO_DET';
  CDSGtiaSubDetalle.IndexFieldNames:='ID_RTODET';
  pnPrincipal.Enabled:=True;
  pnCabecera.Enabled:=False;
  DatoNew:=''+DatoNew+'';
end;

procedure TFormRMARecepcion.BuscarProveedorExecute(Sender: TObject);
begin
  inherited;
  IF Not(Assigned(FormBuscadorProveedor)) THEN
     FormBuscadorProveedor:=TFormBuscadorProveedor.Create(Application);
   FormBuscadorProveedor.Tipo:='''N'''+','+'''G'''+','+'''S'''; // Act+Inac+Judiciales
   FormBuscadorProveedor.ShowModal;
   if FormBuscadorProveedor.Codigo<>'' Then
     begin
       CDSGtiaCabPROVEEDORSetText(CDSGtiaCabPROVEEDOR, FormBuscadorProveedor.Codigo);
     end;
end;

procedure TFormRMARecepcion.BuscarTipoCpbteExecute(Sender: TObject);
begin
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      comBuscadorComprobante.Execute;
      if comBuscadorComprobante.rOk Then
        CDSGtiaCabID_TIPOCOMPROBANTESetText(CDSGtiaCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobante.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormRMARecepcion.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormRMARecepcion.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;
end;

procedure TFormRMARecepcion.BuscarArticuloExecute(Sender: TObject);
begin
  inherited;
  IF (Assigned(FormBuscadorArticulos)) THEN
    FreeAndNil(FormBuscadorArticulos);
  IF Not(Assigned(FormBuscadorArticulos)) THEN
    FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
  FormBuscadorArticulos.cbCampos.ItemIndex:= 1;
  //FormBuscadorArticulos.CampoNro          := 1;
  FormBuscadorArticulos.Param1:=-1;
  FormBuscadorArticulos.Param2:=-1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
  FormBuscadorArticulos.Esquema     :=-1;

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
  begin
    IF CDSGtiaDet.State = dsBrowse THEN
      CDSGtiaDet.Edit;
    CDSGtiaDetCodigoSetText(CDSGtiaDetCodigo, FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormRMARecepcion.ImprimirExecute(Sender: TObject);
begin
  inherited;

  QComprob.Close;
  QComprob.ParamByName('id').Value :=CDSGtiaCabID_TIPOCOMPROBANTE.Value;
  QComprob.ParamByName('suc').Value:=CDSGtiaCabSUCURSAL.Value;
  QComprob.Open;

  frGtia.PrintOptions.Printer:=PrNomCpbte;
  frGtia.SelectPrinter;
  frGtia.LoadFromFile(DMMain_FD.PathReportesCpbte+'\'+QComprobREPORTE.AsString);
  frGtia.PrintOptions.Copies := QComprobCOPIAS.Value;

  QComprob.Close;
  frGtia.ShowReport;
  btNuevo.SetFocus;
end;


procedure TFormRMARecepcion.CDSGtiaCabSUCRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString + CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormRMARecepcion.CDSGtiaCabPROVEEDORSetText(Sender: TField;
  const Text: String);
VAR
  Aux: STRING;
BEGIN
  if (Text<>#13) and (Text<>'') Then
    begin
      Aux := Text;
      Aux := Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString := Aux;
      IF NOT (AsignarProveedor(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Proveedor No válido');
          Sender.AsString := '';
          //SysUtils.Abort;
          RxDBECodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
    end;
END;

procedure TFormRMARecepcion.CDSGtiaCabID_TIPOCOMPROBANTESetText(
  Sender: TField; const Text: String);
begin
  inherited;
if Text[1]<>#13 Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarComprobante(Sender.AsInteger)) Then
        begin
           ShowMessage('Dato no Valido');
           Sender.AsString:='';
        end;
      IF CDSGtiaCab.State=dsInsert Then
        UltimoComprobante;
     end;
end;

procedure TFormRMARecepcion.CDSGtiaCabSUCURSALSetText(Sender: TField;
  const Text: String);
begin
  inherited;
 if (text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString:=Text;
      if Not(AsignarSucursal(Sender.AsInteger)) Then
        begin
          Sender.AsString:='';
          ShowMessage('Dato no Valido');
        end;
    end;
end;

procedure TFormRMARecepcion.CDSGtiaCabDEPOSITOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
 if (Text<>'') and (Text[1]<>#13) Then
    begin
      Sender.AsString := Text;
      IF NOT (AsignarDeposito(Sender.AsInteger)) THEN
        BEGIN
          Sender.AsString := '';
          ShowMessage('Codigo depósito no Válido');
        END;
     end;
end;

procedure TFormRMARecepcion.CDSGtiaDetCODIGOSetText(Sender: TField;
  const Text: String);
VAR S: STRING;
Enter:Char;
begin
  Enter:=#13;
  If CDSGtiaDet.State=dsBrowse Then
    CDSGtiaDet.edit;
  DMMain_FD.CDSCodigoBarra.Close;
  DMMain_FD.CDSCodigoBarra.Params.ParamByName('CodigoBarra').AsString:=Text;
  DMMain_FD.CDSCodigoBarra.Open;
  If DMMain_FD.CDSCodigoBarra.Fields[0].AsString='' Then
    begin
      // BUsco por el serie ...
      DMBuscadores.QConsultaCodigoSerie.Close;
      DMBuscadores.QConsultaCodigoSerie.ParamByName('CodigoSerie').AsString:=Text;
      DMBuscadores.QConsultaCodigoSerie.Open;
      If DMBuscadores.QConsultaCodigoSerie.Fields[0].AsString='' Then
        begin
          Sender.AsString:=Text;
          DMMain_FD.EncontroCodigoBarra:=False;
        end
      else
        begin
         Sender.AsString:=DMBuscadores.QConsultaCodigoSerie.Fields[0].AsString;
         DMMain_FD.EncontroCodigoBarra:=True;
        end;
      DMBuscadores.QConsultaCodigoSerie.Close;
    end
  else
    begin
      Sender.AsString:=DMMain_FD.CDSCodigoBarra.Fields[0].AsString;
      DMMain_FD.EncontroCodigoBarra:=True;
    end;
  DMMain_FD.CDSCodigoBarra.Close;

  S:=Sender.AsString;
      if DMMain_FD.JustificaCodigo='D' Then
        S:=Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S)) + S
      else
        if DMMain_FD.JustificaCodigo='I' Then
          S:=S+Copy(DMMain_FD.CharCodigo, 1, 8 - Length(S));
//  S:=Text;
//  S:=Copy('00000000', 1, 8 - Length(S)) + S;
  Sender.AsString:=S;

  //S:=Sender.AsString;
  S:=Text;
//  S:=Copy('00000000', 1, 8 - Length(S)) + S;
  Sender.AsString:=S;
  IF AsignarArticulo(s) = False THEN
    BEGIN
     // Busqueda por codigo
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
      FormBuscadorArticulos.CampoNro          := 0;
      FormBuscadorArticulos.Param1:=-1;
      FormBuscadorArticulos.Param2:=-1;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);
      FormBuscadorArticulos.Esquema     :=-1;
      FormBuscadorArticulos.Dato              := Text;
      FormBuscadorArticulos.ShowModal;
      if FormBuscadorArticulos.Codigo<>'' Then
        begin
          IF CDSGtiaDet.State = dsBrowse THEN
            CDSGtiaDet.Edit;
          CDSGtiaDetCODIGOSetText(CDSGtiaDetCodigo,FormBuscadorArticulos.Codigo);
        end
      else
        Sender.AsString:='';
    END;
  if DMMain_FD.EncontroCodigoBarra Then
    DBGrillaDetalle.OnKeyPress(DBGrillaDetalle,Enter);
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
begin
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
     i:= CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSGtiaSubDetalle.State=dsBrowse Then
       CDSGtiaSubDetalle.edit;
      Sender.AsString:=UpperCase(Text);
      if CDSGtiaDetCON_NRO_SERIE.Value='S' Then
        begin
          QNroSerie.Close;
          QNroSerie.ParamByName('codigo').Value     :=CDSGtiaDetCODIGO.Value;
          QNroSerie.ParamByName('codigoserie').Value:=Sender.AsString;
          QNroSerie.Open;
          IF (QNroSerie.Fields[0].AsString<>'')  THEN
            BEGIN
              if MessageDlg('Esta por recibir el mismo codigo de serie, es correcto?',mtInformation,mbYesNo,0)=mrNone then
                Sender.Clear;

              //ShowMessage('Codigo Existente, ya fué ingresado...');
              //Sender.Clear;
            END;
         QNroSerie.Close;
        end
     end;

end;

procedure TFormRMARecepcion.CDSGtiaCabNUMRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString +
  CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormRMARecepcion.FormCreate(Sender: TObject);
begin
  inherited;
  SinBde:=2;
  AutoSize:=True;
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;
  AddClientDataSet(CDSGtiaCab,DSPGtiaCab);
  AddClientDataSet(CDSGtiaDet,DSPGtiaDet);
  AddClientDataSet(CDSGtiaSubDetalle,DSPGtiaSubDet);
  CDSGtiaCab.Open;
  CDSGtiaDet.Open;
  CDSGtiaSubDetalle.Open;

  Tabla:='RTOGTIA_RECEP_CAB';
  Campo:='id_rto';
end;

procedure TFormRMARecepcion.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRMARecepcion.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRMARecepcion:=nil;
end;

procedure TFormRMARecepcion.FormShow(Sender: TObject);
begin
  inherited;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='DEPORMA';
  DMMain_FD.QOpciones.Open;
  DepositoRMA:=DMMain_FD.QOpciones.Fields[0].AsInteger;
  DMMain_FD.QOpciones.Close;
end;

procedure TFormRMARecepcion.AgregarExecute(Sender: TObject);
begin
  CDSGtiaCab.Close;
  CDSGtiaCab.Params.ParamByName('id').Clear;
  CDSGtiaCab.Open;
  CDSGtiaDet.Close;
  CDSGtiaDet.Params.ParamByName('id').Clear;
  CDSGtiaDet.OPen;
  CDSGtiaSubDetalle.Close;
  CDSGtiaSubDetalle.Params.ParamByName('id').Clear;
  CDSGtiaSubDetalle.Open;
  inherited;
  CodigosSeries.Clear;
  RxDBECodigo.SetFocus;
end;

procedure TFormRMARecepcion.CDSGtiaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaCabID_RTO.Value:=IBGCab.IncrementFD(1);
  CDSGtiaCabFECHAENVIO.AsDateTime :=Date;
  CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL,IntToStr(SucursalPorDefecto));
  //CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(DepositoPorDefecto));
  CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(DepositoRMA));
  CDSGtiaCabUSUARIO.Value:=DMMain_FD.UsuarioActivo;
end;

procedure TFormRMARecepcion.RxDBESucursalKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabSUCURSAL.Clear;
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRASUCURSAL.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      CDSGtiaCabLETRA.Clear;
      CDSGtiaCabSUCRTO.Clear;
      CDSGtiaCabNUMRTO.Clear;
    end;
end;

procedure TFormRMARecepcion.RxCTipoCpbteKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabSUCURSAL.Clear;
      CDSGtiaCabID_TIPOCOMPROBANTE.Clear;
      CDSGtiaCabMUESTRASUCURSAL.Clear;
      CDSGtiaCabMUESTRACOMPROBANTE.Clear;
      CDSGtiaCabLETRA.Clear;
      CDSGtiaCabSUCRTO.Clear;
      CDSGtiaCabNUMRTO.Clear;
    end;
end;

procedure TFormRMARecepcion.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabPROVEEDOR.Clear;
      CDSGtiaCabMUESTRAPROVEEDOR.Clear;
    end;
end;

procedure TFormRMARecepcion.pcDetalleFacturaEnter(Sender: TObject);
begin
  inherited;
 if CDSGtiaCabPROVEEDOR.AsString='' Then
    begin
      RxDBECodigo.SetFocus;
      Raise Exception.Create('No hay un proveedor asignado .....');
    end
  else
    if CDSGtiaCabSUCRTO.AsString='' Then
      begin
        dbeSuc.SetFocus;
        Raise Exception.Create('Falta el Nro. de Prefijo del cpbte .....');
      end
    else
      if CDSGtiaCabNUMRTO.AsString='' Then
        begin
          dbeNumero.SetFocus;
          Raise Exception.Create('Falta el Nro. del cpbte .....');
        end
end;

procedure TFormRMARecepcion.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF (Key = #13) and (dbgSeries.ReadOnly=False) THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END;
end;

procedure TFormRMARecepcion.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 3;
end;

procedure TFormRMARecepcion.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormRMARecepcion.DBGrillaDetalleEnter(Sender: TObject);
begin
  inherited;
  if (dbeFecha.Text='') or (dbeSucursal.Text='') or
     (CDSGtiaCabMUESTRACOMPROBANTE.AsString='') or (dbeSuc.Text='') or
     (dbeNumero.Text='') or (dbeMuestraDeposito.Text='') then
  begin
    ShowMessage('Faltan datos en la cabecera.....!!!');
    dbeFecha.SetFocus;
  end;
end;

procedure TFormRMARecepcion.DBGrillaDetalleKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      IF (DBGrillaDetalle.SelectedIndex < 3) THEN
        DBGrillaDetalle.SelectedIndex := DBGrillaDetalle.SelectedIndex + 1
      ELSE
        BEGIN
          IF DBGrillaDetalle.DataSource.DataSet.Eof THEN
            DBGrillaDetalle.DataSource.DataSet.Append;
          DBGrillaDetalle.SelectedIndex := 0;
        END;
    END
  ELSE IF (Key = #10) THEN
    BEGIN
      Key := #0;
    //  DBGrillaDetalle.DataSource.DataSet.Edit;
      IF DBGrillaDetalle.SelectedField = CDSGtiaDetCODIGO THEN
        BuscarArticulo.Execute;
    END;
end;

procedure TFormRMARecepcion.ConfirmaExecute(Sender: TObject);
VAR Control_1,Control_2:String;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='SERIECOMPRA';
  DMMain_FD.QOpciones.Open;
  Control_1:=DMMain_FD.QOpciones.Fields[0].AsString[1];

  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
  DMMain_FD.QOpciones.Open;
  Control_2:=DMMain_FD.QOpciones.Fields[0].AsString[1];
  DMMain_FD.QOpciones.Close;

  if CDSGtiaDet.State in [dsInsert,dsEdit] Then
    CDSGtiaDet.Post;
  if CDSGtiaSubDetalle.State in [dsInsert,dsEdit] Then
    CDSGtiaSubDetalle.Post;
//  TRY
//    IF Moneda3D(' ',DatosRecepMerca.MascaraCabecera, DatosRecepMerca.wwCDSRecepCabTotal.Value) = 0 THEN
//      RAISE Exception.Create('El comprobante no pude tener valor 0.....!!!!');
//  FINALLY
//  END;

  //  Verificao si hay series y si puedo o no ingresar la factura sin las series;
  if (Control_1='N') and (Control_2='S') Then
    if Not(ControlSerie) {and (Control_1='N') and (Control_2='S')} and (DSBase.State=dsInsert) then
      RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');

  DatoNew:=IntToStr(CDSGtiaCabID_RTO.Value);
  TipoCpbte   :=CDSGtiaCabTIPOCPBTE.Value;
  if CDSGtiaCab.state<>dsBrowse Then
    CDSGtiaCab.Post;
  inherited;
  Recuperar.Execute;
  Ingresa_Mov_RMA;
  //pcDetalleFactura.ActivePageIndex := 0;

end;
procedure TFormRMARecepcion.CDSGtiaSubDetalleAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleAfterPost(DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
  CodigosSeries.Add(CDSGtiaSubDetalleSERIE.Value);
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleBeforeDelete(
  DataSet: TDataSet);
var i:Integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSGtiaSubDetalleSERIE.AsString);
  CodigosSeries.Delete(I);
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if ((CDSGtiaSubDetalle.RecordCount+1)> Abs(CDSGtiaDetCantidad.AsFloat))
    or (CDSGtiaDetCON_NRO_SERIE.Value='N') Then
    begin
      sysutils.Abort;
      RAISE Exception.Create('No se pueden cargara mas items de los Ingresados ...')
    end;
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleBeforePost(DataSet: TDataSet);
begin
  inherited;
  DatoControl:=CDSGtiaSubDetalleSERIE.Value;
  if CDSGtiaSubDetalleSERIE.AsString='' Then
    begin
      CDSGtiaSubDetalle.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormRMARecepcion.CDSGtiaSubDetalleNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaSubDetalleID.Value            :=IBGSubDet.IncrementFD(1);
  CDSGtiaSubDetalleID_RTODET.Value     :=CDSGtiaDetID_RTO_DET.Value;
  CDSGtiaSubDetalleID_RTOCAB.Value     :=CDSGtiaCabID_RTO.Value;
  CDSGtiaSubDetalleTIPOCPBTE.Value     :=CDSGtiaCabTIPOCPBTE.Value;
  CDSGtiaSubDetalleCLASECPBTE.Value    :=CDSGtiaCabCLASECPBTE.Value;
  CDSGtiaSubDetalleFECHA.Value         :=CDSGtiaCabFECHAENVIO.Value;
  CDSGtiaSubDetalleNROCPBTE.Value      :=CDSGtiaCabNROCPBTE.Value;
  CDSGtiaSubDetalleCODIGOARTICULO.Value:=CDSGtiaDetCODIGO.Value;
  CDSGtiaSubDetalleDEPOSITO.Value      :=CDSGtiaCabDeposito.Value;
  CDSGtiaSubDetalleTIPO.Value          :='I';
end;

procedure TFormRMARecepcion.CDSGtiaDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaSubDetalle.First;
  while Not(CDSGtiaSubDetalle.Eof) do
    begin
      CDSGtiaSubDetalle.Delete;
      CDSGtiaSubDetalle.Next;
    end;
end;

procedure TFormRMARecepcion.CDSGtiaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaDetID_RTO_DET.Value  :=IBGDet.IncrementFD(1);
  CDSGtiaDetID_RTO_CAB.Value  :=CDSGtiaCabID_RTO.Value;
  CDSGtiaDetFECHA.AsDateTime  :=CDSGtiaCabFECHAENVIO.AsDateTime;
  CDSGtiaDetDEPOSITO.value    :=CDSGtiaCabDEPOSITO.Value;
  CDSGtiaDetTIPOCPBTE.Value   :=CDSGtiaCabTIPOCPBTE.Value;
  CDSGtiaDetCLASECPBTE.Value  :=CDSGtiaCabCLASECPBTE.Value;
  CDSGtiaDetNROCPBTE.Value    :=CDSGtiaCabNROCPBTE.Value;
  CDSGtiaDetPROVEEDOR.Value   :=CDSGtiaCabPROVEEDOR.Value;
  CDSGtiaDetCANTIDAD.AsFloat  :=0;
end;

end.