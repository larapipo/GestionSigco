unit URMAEnvio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase,   DBCtrls, Grids, DBGrids, StdCtrls, Mask, FMTBcd, SqlExpr, JvExMask,
  JvToolEdit, DB, frxClass, frxDBSet, IBGenerator, DBClient, Provider, JvDBControls,
  ComCtrls, ActnList, JvLabel, JvExControls,  JvGradient, Buttons, ToolWin, ExtCtrls,
  DBXCommon, Librerias, JvAppStorage, JvAppIniStorage, JvComponentBase,
  JvFormPlacement, Vcl.ImgList, System.Actions,
  CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.ImageList, frCoreClasses;

type
  TFormRMAEnvios = class(TFormABMBase)
    pcDetalleFactura: TPageControl;
    pagDetalle: TTabSheet;
    Label17: TLabel;
    dbeObs1: TDBEdit;
    DBGrillaDetalle: TDBGrid;
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
    dbgSeries: TDBGrid;
    dbtCantidad: TDBText;
    Label24: TLabel;
    Label25: TLabel;
    DSPGtiaCab: TDataSetProvider;
    CDSGtiaCab: TClientDataSet;
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
    CDSGtiaCabESTADO: TStringField;
    CDSGtiaCabUSUARIO: TStringField;
    CDSGtiaCabMUESTRAPROVEEDOR: TStringField;
    CDSGtiaCabMUESTRACOMPROBANTE: TStringField;
    CDSGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSGtiaCabMUESTRASUCURSAL: TStringField;
    CDSGtiaCabMUESTRADEPOSITO: TStringField;
    CDSGtiaDet: TClientDataSet;
    DSPGtiaDet: TDataSetProvider;
    IBGCab: TIBGenerator;
    DSGtiaDet: TDataSource;
    IBGDet: TIBGenerator;
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
    DSPGtiaSubDet: TDataSetProvider;
    CDSGtiaSubDetalle: TClientDataSet;
    DSGtiaSubDetalle: TDataSource;
    IBGSubDet: TIBGenerator;
    BuscarProveedor: TAction;
    BuscarTipoCpbte: TAction;
    BuscarSucursal: TAction;
    BuscarDeposito: TAction;
    BuscarArticulo: TAction;
    DSPStock: TDataSetProvider;
    Imprimir: TAction;
    frGtia: TfrxReport;
    frDSGtiaCab: TfrxDBDataset;
    frDSGtiaDet: TfrxDBDataset;
    BuscarSerie: TAction;
    lbCantidad: TLabel;
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
    CDSBuscaDeposito: TClientDataSet;
    CDSBuscaDepositoNOMBRE: TStringField;
    CDSBuscaDepositoID: TIntegerField;
    DSPBuscaDeposito: TDataSetProvider;
    dbeFecha: TJvDBDateEdit;
    RxDBECodigo: TJvDBComboEdit;
    RxDBESucursal: TJvDBComboEdit;
    RxDBEDeposito: TJvDBComboEdit;
    RxCTipoCpbte: TJvDBComboEdit;
    CDSBuscaSucursal: TClientDataSet;
    CDSBuscaSucursalCODIGO: TIntegerField;
    CDSBuscaSucursalDETALLE: TStringField;
    DSPBuscaSucursal: TDataSetProvider;
    CDSStock: TClientDataSet;
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
    CDSGtiaCabFECHAENVIO: TSQLTimeStampField;
    CDSGtiaDetFECHA: TSQLTimeStampField;
    CDSGtiaSubDetalleFECHA: TSQLTimeStampField;
    CDSStockCODIGO_STK: TStringField;
    CDSStockDETALLE_STK: TStringField;
    CDSStockUNIDAD: TStringField;
    CDSStockUNIDAD_COMPRA: TStringField;
    CDSStockCONTROLASTOCK: TStringField;
    CDSStockCONTROL_SERIE: TStringField;
    CDSBuscaNroSerie: TClientDataSet;
    DSPBuscaNroSerie: TDataSetProvider;
    CDSBuscaNroSerieCODIGOSERIE: TStringField;
    CDSBuscaNroSerieCODIGO_STK: TStringField;
    CDSBuscaNroSerieID: TIntegerField;
    CDSBuscaNroSerieFECHAINGRESO: TSQLTimeStampField;
    CDSBuscaNroSerieFECHAEGRESO: TSQLTimeStampField;
    btImprimir: TBitBtn;
    frSubDet: TfrxDBDataset;
    ComBuscadorSucursal: TComBuscador;
    ComBuscadorSeries: TComBuscador;
    ComBuscadorComprobantes: TComBuscador;
    ComBuscadorDeposito: TComBuscador;
    QComprob: TFDQuery;
    QBuscaComp: TFDQuery;
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
    QStock: TFDQuery;
    QBuscaNroSer: TFDQuery;
    QProveedor: TFDQuery;
    QSucursal: TFDQuery;
    CDSStockCONTENIDO_COMPRA: TFloatField;
    CDSStockMUESTRAFISICO: TFloatField;
    QGtiaDet: TFDQuery;
    QNroSerie: TFDQuery;
    QDeposito: TFDQuery;
    QDepositoID: TIntegerField;
    QDepositoNOMBRE: TStringField;
    QDepositoSUCURSAL: TIntegerField;
    QDepositoCENTRALIZA_STOCK: TStringField;
    QDepositoCENTRALIZA_WEB: TStringField;
    QDepositoACTIVO: TStringField;
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
    spABM_RMA: TFDStoredProc;
    QGtiaCab: TFDQuery;
    QGtiaSubDetalle: TFDQuery;
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
    QGtiaCabESTADO: TStringField;
    QGtiaCabUSUARIO: TStringField;
    QGtiaCabMUESTRAPROVEEDOR: TStringField;
    QGtiaCabMUESTRACOMPROBANTE: TStringField;
    QGtiaCabID_TIPOCOMPROBANTE: TIntegerField;
    QGtiaCabMUESTRASUCURSAL: TStringField;
    QGtiaCabMUESTRADEPOSITO: TStringField;
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
    QGtiaDetCOSTO_UNITARIO: TFloatField;
    CDSGtiaDetCANTIDAD: TFloatField;
    CDSGtiaDetCOSTO_UNITARIO: TFloatField;
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
    QProveedorCODIGO: TStringField;
    QProveedorNOMBRE: TStringField;
    procedure BuscarProveedorExecute(Sender: TObject);
    procedure CDSGtiaCabPROVEEDORSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabNewRecord(DataSet: TDataSet);
    procedure CDSGtiaCabSUCURSALSetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabID_TIPOCOMPROBANTESetText(Sender: TField;
      const Text: String);
    procedure CDSGtiaCabSUCRTOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaCabNUMRTOSetText(Sender: TField; const Text: String);
    procedure CDSGtiaCabDEPOSITOSetText(Sender: TField;
      const Text: String);
    procedure FormCreate(Sender: TObject);
    procedure BuscarTipoCpbteExecute(Sender: TObject);
    procedure RxDBESucursalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarSucursalExecute(Sender: TObject);
    procedure RxCTipoCpbteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BuscarDepositoExecute(Sender: TObject);
    procedure RxDBECodigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure DBGrillaDetalleEnter(Sender: TObject);
    procedure DBGrillaDetalleKeyPress(Sender: TObject; var Key: Char);
    procedure BuscarArticuloExecute(Sender: TObject);
    procedure CDSGtiaDetCODIGOSetText(Sender: TField; const Text: String);
    procedure DBGrillaDetalleEditButtonClick(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure ImprimirExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure dbgSeriesEditButtonClick(Sender: TObject);
    procedure dbgSeriesKeyPress(Sender: TObject; var Key: Char);
    procedure CDSGtiaSubDetalleAfterPost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeDelete(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforeInsert(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleBeforePost(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleNewRecord(DataSet: TDataSet);
    procedure CDSGtiaSubDetalleSERIESetText(Sender: TField;
      const Text: String);
    procedure DSBaseStateChange(Sender: TObject);
    procedure CDSGtiaDetNewRecord(DataSet: TDataSet);
    procedure CDSGtiaDetBeforeDelete(DataSet: TDataSet);
    procedure BuscarSerieExecute(Sender: TObject);
    procedure CDSGtiaSubDetalleAfterDelete(DataSet: TDataSet);
    procedure DBGrillaDetalleColEnter(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure pcDetalleFacturaEnter(Sender: TObject);
    procedure CDSGtiaDetCANTIDADSetText(Sender: TField; const Text: string);
    procedure sbEstadoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    DatoControl:String;
    CodigosSeries:TStringList;
    DepositoRMA:Integer;
    procedure Ingresa_Mov_RMA(modo:String);
    function ControlSerie:Boolean;
    procedure VerificadorDetalle;
    function AsignarProveedor(Dato:String):Boolean;
    FUNCTION AsignarSucursal(Dato: Integer): Boolean;
    FUNCTION AsignarComprobante(Dato: Integer): Boolean;
    FUNCTION AsignarDeposito(Dato: Integer): Boolean;
    FUNCTION ASignarArticulo(Dato: STRING): Boolean;

  end;

var
  FormRMAEnvios: TFormRMAEnvios;
  copias:integer;
PROCEDURE UltimoComprobante;

implementation

uses  UBuscadorProveedor, UBuscadorArticulos,UDMain_FD,
     UBuscadorCpbte, DMBuscadoresForm, DMStoreProcedureForm;
{$R *.DFM}

PROCEDURE UltimoComprobante;
VAR
  Numero: Integer;
BEGIN
  WITH DMStoreProcedure,FormRMAEnvios DO
    BEGIN
      //Traigo la Letra que corresponde segun el tipo de Inscripcion de IVA
       IF (CDSGtiaCabLETRA.AsString <> '') AND (CDSGtiaCabCLASECPBTE.Value <> '') THEN
         BEGIN
           spNumeroCpbte.Close;
           spNumeroCpbte.ParamByName('Letra_Ing').Value   := CDSGtiaCabLETRA.AsString;
           spNumeroCpbte.ParamByName('Sucursal').Value    := CDSGtiaCabSUCURSAL.Value;
           spNumeroCpbte.ParamByName('ClaseComp').Value   := CDSGtiaCabCLASECPBTE.Value;
           spNumeroCpbte.ParamByName('TipoComp').Value    := CDSGtiaCabTIPOCPBTE.AsString;
           spNumeroCpbte.ParamByName('CompraVenta').Value := 'V';
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

procedure TFormRMAEnvios.Ingresa_Mov_RMA(modo:String);
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
            spABM_rma.Close;
            spABM_rma.ParamByName('codigo').AsString      :=CDSGtiaDetCODIGO.Value;
            spABM_rma.ParamByName('serie').AsString       :=CDSGtiaSubDetalleSERIE.Value;
            spABM_rma.ParamByName('proveedor').AsString   :=CDSGtiaCabPROVEEDOR.Value;
            spABM_rma.ParamByName('fecha').AsDate         :=CDSGtiaCabFECHAENVIO.AsDateTime;
            spABM_rma.ParamByName('id_rto_rma').AsInteger :=CDSGtiaCabID_RTO.Value;
            spABM_rma.ParamByName('modo').AsString        :='P';
            spABM_rma.ExecProc;
            spABM_rma.Close;
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


function TFormRMAEnvios.ControlSerie:Boolean;
VAR Aux:Boolean;
begin
  aux:=True;
  //wwCDSAjusteDet.DisableControls;
  CDSGtiaDet.First;
  while not(CDSGtiaDet.Eof) and aux=True do
    begin
      aux:=True;
      if (CDSGtiaDetCON_NRO_SERIE.Value='S') then
        begin
          if (Abs(Int(CDSGtiaDetCantidad.AsFloat))=CDSGtiaSubDetalle.RecordCount) then
            Aux:=True
          else
           Aux:=False;
        end;
      CDSGtiaDet.Next;
    end;
  CDSGtiaDet.First;
  //wwCDSAjusteDet.EnableControls;
  Result:=Aux;
end;

procedure TFormRMAEnvios.VerificadorDetalle;
var puntero:TBookMark;
begin
  if CDSGtiaDet.RecordCount>0 Then
    begin
     // borro los valor cero
      puntero:=CDSGtiaDet.GetBookmark;
      CDSGtiaDet.First;
      CDSGtiaDet.DisableControls;
      while not(CDSGtiaDet.eof) do
        begin
          if CDSGtiaDetCANTIDAD.AsFloat<=0 then
            CDSGtiaDet.Delete;
          CDSGtiaDet.Next;
        end;
      CDSGtiaDet.GotoBookmark(Puntero);
      CDSGtiaDet.FreeBookmark(puntero);
      CDSGtiaDet.EnableControls;



      puntero:=CDSGtiaDet.GetBookmark;
      CDSGtiaDet.First;
      CDSGtiaDet.DisableControls;
      while not(CDSGtiaDet.eof) do
        begin
          CDSGtiaDet.edit;
          CDSGtiaDetDEPOSITO.Value     :=CDSGtiaCabDEPOSITO.Value;
          CDSGtiaDetFECHA.Value        :=CDSGtiaCabFECHAENVIO.Value;
          CDSGtiaDetNROCPBTE.Value     :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaDet.Next;
        end;
      CDSGtiaDet.GotoBookmark(Puntero);
      CDSGtiaDet.FreeBookmark(puntero);
      CDSGtiaDet.EnableControls;
    end;

   if CDSGtiaSubDetalle.RecordCount>0 Then
    begin
      puntero:=CDSGtiaSubDetalle.GetBookmark;
      CDSGtiaSubDetalle.First;
      CDSGtiaSubDetalle.DisableControls;
      while not(CDSGtiaSubDetalle.eof) do
        begin
          CDSGtiaSubDetalle.edit;
          CDSGtiaSubDetalleFECHA.Value          :=CDSGtiaCabFECHAENVIO.Value;
          CDSGtiaSubDetalleNROCPBTE.Value       :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaSubDetalleCODIGOARTICULO.Value :=CDSGtiaDetCODIGO.Value;
          CDSGtiaSubDetalleDEPOSITO.Value       :=CDSGtiaCabDEPOSITO.Value;
          CDSGtiaSubDetalleNROCPBTE.Value       :=CDSGtiaCabNROCPBTE.Value;
          CDSGtiaSubDetalle.Next;
        end;
      CDSGtiaSubDetalle.GotoBookmark(Puntero);
      CDSGtiaSubDetalle.FreeBookmark(puntero);
      CDSGtiaSubDetalle.EnableControls;
    end;

end;




FUNCTION TFormRMAEnvios.AsignarProveedor(Dato: STRING): Boolean;
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


FUNCTION TFormRMAEnvios.AsignarSucursal(Dato: Integer): Boolean;
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

FUNCTION TFormRMAEnvios.AsignarComprobante(Dato: Integer): Boolean;
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

FUNCTION TFormRMAEnvios.AsignarDeposito(Dato: Integer): Boolean;
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

FUNCTION TFormRMAEnvios.ASignarArticulo(Dato: STRING): Boolean;
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
      CDSStock.Close;
    END;
END;


procedure TFormRMAEnvios.BuscarProveedorExecute(Sender: TObject);
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

procedure TFormRMAEnvios.CDSGtiaCabPROVEEDORSetText(Sender: TField;
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

procedure TFormRMAEnvios.CDSGtiaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaCabID_RTO.Value:=IBGCab.IncrementFD(1);
  CDSGtiaCabFECHAENVIO.AsDateTime :=Date;
  CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL,IntToStr(SucursalPorDefecto));
  //CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(DepositoPorDefecto));
  CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(DepositoRMA));
  CDSGtiaCabUSUARIO.Value:=DMMain_FD.UsuarioActivo;
end;

procedure TFormRMAEnvios.CDSGtiaCabSUCURSALSetText(Sender: TField;
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

procedure TFormRMAEnvios.CDSGtiaCabID_TIPOCOMPROBANTESetText(
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

procedure TFormRMAEnvios.CDSGtiaCabSUCRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString + CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormRMAEnvios.CDSGtiaCabNUMRTOSetText(Sender: TField;
  const Text: String);
begin
  inherited;
  Sender.AsString:=Copy('00000000',1,Sender.Size-(length(text)))+Text;
  CDSGtiaCabNroCpbte.AsString := CDSGtiaCabLETRA.AsString +
  CDSGtiaCabSUCRTO.AsString +
  CDSGtiaCabNUMRTO.AsString;
end;

procedure TFormRMAEnvios.CDSGtiaCabDEPOSITOSetText(Sender: TField;
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

procedure TFormRMAEnvios.FormCreate(Sender: TObject);
begin
  inherited;
  SinBDE:=2;
  AutoSize:=True;
  CodigosSeries:=TStringList.Create;
  CodigosSeries.Clear;
  AddClientDataSet(CDSGtiaCab,DSPGtiaCab);
  AddClientDataSet(CDSGtiaDet,DSPGtiaDet);
  AddClientDataSet(CDSGtiaSubDetalle,DSPGtiaSubDet);
  CDSGtiaCab.Open;
  CDSGtiaDet.Open;
  CDSGtiaSubDetalle.Open;
 
  Tabla:='RTOGTIA_ENVIO_CAB';
  Campo:='id_rto';
end;

procedure TFormRMAEnvios.BuscarTipoCpbteExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaComprob.Close;
  CDSBuscaComprob.Open;
  IF NOT (CDSBuscaComprob.IsEmpty) THEN
    BEGIN
      ComBuscadorComprobantes.Execute;
      IF comBuscadorComprobantes.rOk THEN
        CDSGtiaCabID_TIPOCOMPROBANTESetText(CDSGtiaCabID_TIPOCOMPROBANTE, IntToStr(comBuscadorComprobantes.Id));
    END
  ELSE
    ShowMessage('No hay comprobantes definidos para esta Operación...');
  CDSBuscaComprob.Close;

end;

procedure TFormRMAEnvios.RxDBESucursalKeyDown(Sender: TObject;
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

procedure TFormRMAEnvios.sbEstadoDblClick(Sender: TObject);
begin
  inherited;
  frGtia.DesignReport;
end;

procedure TFormRMAEnvios.BuscarSucursalExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaSucursal.Close;
  CDSBuscaSucursal.Open;
  comBuscadorSucursal.Execute;
  if comBuscadorSucursal.rOk Then
    CDSGtiaCabSUCURSALSetText(CDSGtiaCabSUCURSAL, IntToStr(comBuscadorSucursal.Id));
  CDSBuscaSucursal.Close;
end;

procedure TFormRMAEnvios.RxCTipoCpbteKeyDown(Sender: TObject;
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

procedure TFormRMAEnvios.BuscarDepositoExecute(Sender: TObject);
begin
  inherited;
  CDSBuscaDeposito.Close;
  CDSBuscaDeposito.Open;
  comBuscadorDeposito.Execute;
  if comBuscadorDeposito.rOk Then
    CDSGtiaCabDEPOSITOSetText(CDSGtiaCabDEPOSITO,IntToStr(comBuscadorDeposito.Id));
  CDSBuscaDeposito.Close;
end;

procedure TFormRMAEnvios.RxDBECodigoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
 if (key=vk_delete) or (Key=VK_back) Then
    begin
      CDSGtiaCabPROVEEDOR.Clear;
      CDSGtiaCabMUESTRAPROVEEDOR.Clear;
    end;
end;

procedure TFormRMAEnvios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=caFree;
end;

procedure TFormRMAEnvios.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRMAEnvios:=nil;
end;

procedure TFormRMAEnvios.AgregarExecute(Sender: TObject);
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

procedure TFormRMAEnvios.DBGrillaDetalleEnter(Sender: TObject);
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

procedure TFormRMAEnvios.DBGrillaDetalleKeyPress(Sender: TObject;
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

procedure TFormRMAEnvios.BuscarArticuloExecute(Sender: TObject);
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
  FormBuscadorArticulos.Esquema     := -1;
  FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

  if FormBuscadorArticulos.Visible=False Then
    FormBuscadorArticulos.ShowModal;
  if FormBuscadorArticulos.Codigo<>'' Then
  begin
    IF CDSGtiaDet.State = dsBrowse THEN
      CDSGtiaDet.Edit;
    CDSGtiaDetCodigoSetText(CDSGtiaDetCodigo, FormBuscadorArticulos.Codigo);
  end;
end;

procedure TFormRMAEnvios.CDSGtiaDetCANTIDADSetText(Sender: TField;
  const Text: string);
var Aux1, Aux2, Aux3: real;
  TextAux:String;
begin
  inherited;
  if Text<>'' Then
    begin
      TextAux:=Text;
      if (TextAux[1]='-') Then Delete(TextAux,1,1);

      while pos(',',TextAux)<>0 Do
        delete(TextAux,pos(',',TextAux),1);
      Sender.AsString := TextAux;
     // Sender.AsString := FormatFloat(MascaraDetalleCantidad,StrToFloat(TextAux));
      //   Sender.AsFloat  :=Moneda3D(' ',MascaraDetalleCantidad,Sender.AsFloat);
      // Verific tambien si no viene de un rto....
         begin
//           DMStoreProcedure.spExistenciaStockArticuloDepo.Close;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('codigo').Value  :=CDSGtiaDetCODIGO.Value;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('deposito').Value:=CDSGtiaCabDEPOSITO.Value;
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('unidad').Value  :='V';
//           DMStoreProcedure.spExistenciaStockArticuloDepo.ExecProc;

           DMStoreProcedure.QExistenciaStockArticuloDepo.Close;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('codigo').AsString    :=CDSGtiaDetCODIGO.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('deposito').AsInteger :=CDSGtiaCabDeposito.Value;
           DMStoreProcedure.QExistenciaStockArticuloDepo.ParamByName('unidad').AsString    :='V';
           DMStoreProcedure.QExistenciaStockArticuloDepo.Open;

//           if (DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').Value<=0) or
//              (Moneda3D(' ','0.00',DMStoreProcedure.spExistenciaStockArticuloDepo.ParamByName('cantidad').AsFloat)<
//               Moneda3D(' ','0.00',Sender.AsFloat)) Then
           if (DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat<=0) or
              (Moneda3D(' ','0.00',DMStoreProcedure.QExistenciaStockArticuloDepoCANTIDAD.AsFloat)<
               Moneda3D(' ','0.00',Sender.AsFloat)) Then

             begin
               Sender.AsFloat:=0;
               ShowMessage('No Hay stock Suficiente para esta operación......');
             end;
         end;
    end;

end;

procedure TFormRMAEnvios.CDSGtiaDetCODIGOSetText(Sender: TField;
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
  IF AsignarArticulo(s) = False THEN
    BEGIN
     // Busqueda por codigo
      IF (Assigned(FormBuscadorArticulos)) THEN
        FreeAndNil(FormBuscadorArticulos);
      IF Not(Assigned(FormBuscadorArticulos)) THEN
        FormBuscadorArticulos:=TFormBuscadorArticulos.Create(Application);
      FormBuscadorArticulos.cbCampos.ItemIndex:= 0;
      FormBuscadorArticulos.CampoNro          := 0;
      FormBuscadorArticulos.Param1      :=-1;
      FormBuscadorArticulos.Param2      :=-1;
      FormBuscadorArticulos.Esquema     := -1;
      FormBuscadorArticulos.ListaPrecio := DMMain_FD.ListaPorDefecto(-1);

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

procedure TFormRMAEnvios.DBGrillaDetalleEditButtonClick(
  Sender: TObject);
begin
  inherited;
  BuscarArticulo.Execute;
end;

procedure TFormRMAEnvios.ConfirmaExecute(Sender: TObject);
VAR Control:String;
begin
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='CONTROLSERIE';
  DMMain_FD.QOpciones.Open;
  Control:=DMMain_FD.QOpciones.Fields[0].AsString[1];
  DMMain_FD.QOpciones.Close;
  if (dbeFecha.Text<>'') and (dbeSucursal.Text<>'') and
     (CDSGtiaCabMUESTRACOMPROBANTE.AsString<>'') and (dbeSuc.Text<>'') and
     (dbeNumero.Text<>'') and (dbeMuestraDeposito.Text<>'') then
    begin
      if (Control='S') and (Not(ControlSerie))  then
        RAISE Exception.Create('La cantidad de Items debe ser igual a la cantidad de codigo barras.....!!!!');
      CDSGtiaCab.Post;
      if CDSGtiaDet.State<>dsBrowse Then
        CDSGtiaDet.Post;
      if CDSGtiaSubDetalle.State<>dsBrowse Then
        CDSGtiaSubDetalle.Post;
      VerificadorDetalle;
      DatoNew:=IntToStr(CDSGtiaCabID_RTO.Value);
      TipoCpbte:=CDSGtiaCabTIPOCPBTE.Value;

      inherited;
      Recuperar.Execute;
      Ingresa_Mov_RMA('P');
      IF (Imprime='S') then
        if (MessageDlg('Imprime Comprobante?', mtConfirmation, [mbYes, mbNo], 0)= mrYes) THEN
          Imprimir.Execute;// ShowMessage('hacer impresion');//   Imprimir.Execute;
        btNuevo.SetFocus;
     end
   else
     BEGIN
       ShowMessage('Datos en la Cabecera Incompletos o depósitos mal cargados....');
       pnCabecera.Enabled := True;
       dbeFecha.SetFocus;
     END;
end;

procedure TFormRMAEnvios.ImprimirExecute(Sender: TObject);
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

procedure TFormRMAEnvios.BuscarExecute(Sender: TObject);
begin
  inherited;
  IF NOT (Assigned(FormBuscaCpbte)) THEN
    FormBuscaCpbte := TFormBuscaCpbte.Create(Application);
  FormBuscaCpbte.Tag := 28;
  FormBuscaCpbte.TipoCpbte1:='GE';
  FormBuscaCpbte.TipoCpbte2:='';
  FormBuscaCpbte.TipoCpbte3:='';
  FormBuscaCpbte.ShowModal;
  IF FormBuscaCpbte.Id_Rec > 0 THEN
    begin
      Condicion:=' and tipocpbte='+''''+FormBuscaCpbte.TipoCpbte+'''';
      TipoCpbte:=FormBuscaCpbte.TipoCpbte;
      DatoNew:=IntToStr(FormBuscaCpbte.id_rec);
      Recuperar.Execute;
    end;
end;

procedure TFormRMAEnvios.RecuperarExecute(Sender: TObject);
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

procedure TFormRMAEnvios.dbgSeriesEditButtonClick(Sender: TObject);
begin
  inherited;
  CDSBuscaNroSerie.Close;
  CDSBuscaNroSerie.Params.ParamByName('codigo').Value  :=CDSGtiaDetCODIGO.Value;
  CDSBuscaNroSerie.Params.ParamByName('deposito').Value:=CDSGtiaDetDEPOSITO.Value;
  CDSBuscaNroSerie.Open;
  comBuscadorSeries.Execute;
  if comBuscadorSeries.rOk Then
    CDSGtiaSubDetalleSERIESetText(CDSGtiaSubDetalleSERIE,IntToStr(comBuscadorSeries.Id));
  CDSBuscaNroSerie.Close;

end;

procedure TFormRMAEnvios.dbgSeriesKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  IF Key = #13 THEN
    BEGIN
      Key := #0;
      DBGSeries.DataSource.DataSet.Append;
    END
  else
    if key=#10 Then
      begin
        key:=#0;
        BuscarSerie.Execute;
      end;
end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleAfterPost(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
  CodigosSeries.Add(CDSGtiaSubDetalleSERIE.Value);
end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleBeforeDelete(
  DataSet: TDataSet);
var i:Integer;
begin
  inherited;
  i:=CodigosSeries.IndexOf(CDSGtiaSubDetalleSERIE.AsString);
  CodigosSeries.Delete(I);
 end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleBeforeInsert(
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

procedure TFormRMAEnvios.CDSGtiaSubDetalleBeforePost(
  DataSet: TDataSet);
begin
  inherited;
  DatoControl:=CDSGtiaSubDetalleSERIE.Value;
  if CDSGtiaSubDetalleSERIE.AsString='' Then
    begin
      CDSGtiaSubDetalle.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleNewRecord(
  DataSet: TDataSet);
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
  CDSGtiaSubDetalleDEPOSITO.Value      :=CDSGtiaCabDEPOSITO.Value;
  CDSGtiaSubDetalleTIPO.Value          :='E' // Por que le doy Salida -- Egresos

end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleSERIESetText(Sender: TField;
  const Text: String);
var i:Integer;
begin
  inherited;
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      //UpperCase(Text);
      i:=CodigosSeries.IndexOf(UpperCase(Text));
      if i>=0 Then
        begin
          Sender.Clear;
          showmessage('Codigo de Serie Ingresado ...... ');
          SysUtils.Abort;
        end;
      if CDSGtiaSubDetalle.State=dsBrowse Then
        CDSGtiaSubDetalle.Append;
      Sender.AsString:=UpperCase(Text);
      if CDSGtiaDetCON_NRO_SERIE.Value='S' Then
        begin
          if CDSGtiaDetCANTIDAD.AsFloat>0 Then  // si es de ingreso
            begin
               QNroSerie.Close;
               QNroSerie.ParamByName('codigo').Value     :=CDSGtiaDetCodigo.Value;
               QNroSerie.ParamByName('codigoserie').Value:=Sender.AsString;
               QNroSerie.ParamByName('deposito').Value   :=CDSGtiaDetDeposito.Value;
               QNroSerie.Open;
               IF (QNroSerie.Fields[0].AsString='')THEN
                 BEGIN
                   ShowMessage('Codigo Serie Inexistente, o en otro depósito, o ya fué entregado...');
                   Sender.Clear;
                   CDSGtiaSubDetalleSERIE.AsString:='';
                 END;
               QNroSerie.Close;
            end;
        end;
    end;

end;


procedure TFormRMAEnvios.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  Imprimir.Enabled          :=(DSBase.DataSet.State IN [dsBrowse]) and (Not(DSBase.Dataset.IsEmpty));
  DBGrillaDetalle.ReadOnly  :=DSBase.DataSet.State IN [dsBrowse];
  dbgSeries.ReadOnly        :=DSBase.DataSet.State IN [dsBrowse];
  pnPrincipal.Enabled       :=True;
  pnCabecera.Enabled        :=DSBase.DataSet.State=dsInsert;
 
end;

procedure TFormRMAEnvios.CDSGtiaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaDetID_RTO_DET.Value  :=IBGDet.IncrementFD(1);
  CDSGtiaDetID_RTO_CAB.Value  :=CDSGtiaCabID_RTO.Value;
  CDSGtiaDetFECHA.Value       :=CDSGtiaCabFECHAENVIO.Value;
  CDSGtiaDetDEPOSITO.value    :=CDSGtiaCabDEPOSITO.Value;
  CDSGtiaDetTIPOCPBTE.Value   :=CDSGtiaCabTIPOCPBTE.Value;
  CDSGtiaDetCLASECPBTE.Value  :=CDSGtiaCabCLASECPBTE.Value;
  CDSGtiaDetNROCPBTE.Value    :=CDSGtiaCabNROCPBTE.Value;
  CDSGtiaDetPROVEEDOR.Value   :=CDSGtiaCabPROVEEDOR.Value;
  CDSGtiaDetCANTIDAD.AsFloat  :=0;
end;

procedure TFormRMAEnvios.CDSGtiaDetBeforeDelete(DataSet: TDataSet);
begin
  inherited;
  CDSGtiaSubDetalle.First;
  while Not(CDSGtiaSubDetalle.Eof) do
    begin
      CDSGtiaSubDetalle.Delete;
      CDSGtiaSubDetalle.Next;
    end;
end;

procedure TFormRMAEnvios.BuscarSerieExecute(Sender: TObject);
var i:byte;
begin
  if (CDSGtiaDetCON_NRO_SERIE.Value='S') Then
    begin
      CDSBuscaNroSerie.Close;
      CDSBuscaNroSerie.CommandText:='';
      CDSBuscaNroSerie.CommandText:='select ss.id,ss.codigo_stk,ss.codigoserie,ss.fechaingreso,ss.fechaegreso,ss.deposito from stock_series ss '+
                             'where  (ss.codigo_stk=:codigo  and  ss.id_cpbte_egreso is null)  and ( ss.deposito=:deposito or  :deposito = -1 ) ';
      DMMain_FD.QOpciones.Close;
      DMMain_FD.QOpciones.ParamByName('opcion').Value:='SERIEDEPOSITO';
      DMMain_FD.QOpciones.Open;
      if DMMain_FD.QOpciones.Fields[0].AsString[1]='S' Then
        CDSBuscaNroSerie.Params.ParamByName('deposito').Value:= -1
      else
        CDSBuscaNroSerie.Params.ParamByName('deposito').Value:=CDSGtiaDetDeposito.Value;
      DMMain_FD.QOpciones.Close;

      comBuscadorSeries.Data:=CDSBuscaNroSerie;

   //   CDSBuscaNroSerie.Close;
      CDSBuscaNroSerie.Params.ParamByName('codigo').Value  :=CDSGtiaDetCODIGO.Value;
      CDSBuscaNroSerie.Open;

      comBuscadorSeries.Execute;
      if comBuscadorSeries.rOk Then
        CDSGtiaSubDetalleSERIESetText(CDSGtiaSubDetalleSERIE,comBuscadorSeries.Id);
      CDSBuscaNroSerie.Close;
    end;

end;

procedure TFormRMAEnvios.CDSGtiaSubDetalleAfterDelete(
  DataSet: TDataSet);
begin
  inherited;
  lbCantidad.Caption:=IntToStr(CDSGtiaSubDetalle.RecordCount);
end;

procedure TFormRMAEnvios.DBGrillaDetalleColEnter(Sender: TObject);
begin
  inherited;
  IF DBGrillaDetalle.SelectedIndex = 2 THEN
    DBGrillaDetalle.SelectedIndex := 3;
end;

procedure TFormRMAEnvios.FormShow(Sender: TObject);
begin
  inherited;
  DMMain_FD.QOpciones.Close;
  DMMain_FD.QOpciones.ParamByName('Opcion').Value:='DEPORMA';
  DMMain_FD.QOpciones.Open;
  DepositoRMA:=DMMain_FD.QOpciones.Fields[0].AsInteger;
  DMMain_FD.QOpciones.Close;
end;

procedure TFormRMAEnvios.pcDetalleFacturaEnter(Sender: TObject);
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

end.