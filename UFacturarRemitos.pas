unit UFacturarRemitos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, JvDBLookup, FMTBcd, SqlExpr, DB, Menus, DBClient, Provider,
  JvFormPlacement, ImgList, ActnList, ComCtrls, JvLabel,
  JvDBControls, JvGradient, Buttons, ToolWin, ExtCtrls, Variants, JvExDBGrids,
  JvDBGrid,IniFiles, Mask, DBCtrls, Math, types, DBXCommon, JvAppStorage,
  JvAppIniStorage, System.Actions, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  JvExControls, JvComponentBase, CompBuscador, JvExMask, JvToolEdit, JvMaskEdit,
  JvDBFindEdit, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  System.ImageList;

type
  TFormFacturarRemitos = class(TFormABMBase)
    DSRtos: TDataSource;
    DSPRtosCab: TDataSetProvider;
    CDSRtosCab: TClientDataSet;
    DSPRtosDet: TDataSetProvider;
    CDSRtosDet: TClientDataSet;
    Facturar: TAction;
    DSSucursal: TDataSource;
    DSDeposito: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FacturarCtdo: TAction;
    PopupMenu1: TPopupMenu;
    FacturarCtdo1: TMenuItem;
    AnularRemito: TAction;
    AnularRemito1: TMenuItem;
    N1: TMenuItem;
    CDSRtosCabMUESTRAIVA: TStringField;
    VerRto: TAction;
    VerRto1: TMenuItem;
    rxcSucursal: TJvDBLookupCombo;
    rxcDeposito: TJvDBLookupCombo;
    CDSRtosCabID_RTO: TIntegerField;
    CDSRtosCabTIPOCPBTE: TStringField;
    CDSRtosCabCLASECPBTE: TStringField;
    CDSRtosCabNROCPBTE: TStringField;
    CDSRtosCabCODIGO: TStringField;
    CDSRtosCabLETRARTO: TStringField;
    CDSRtosCabSUCRTO: TStringField;
    CDSRtosCabNUMERORTO: TStringField;
    CDSRtosCabNOMBRE: TStringField;
    CDSRtosCabRAZONSOCIAL: TStringField;
    CDSRtosCabDIRECCION: TStringField;
    CDSRtosCabCPOSTAL: TStringField;
    CDSRtosCabLOCALIDAD: TStringField;
    CDSRtosCabTIPOIVA: TIntegerField;
    CDSRtosCabCUIT: TStringField;
    CDSRtosCabLISTAPRECIO: TIntegerField;
    CDSRtosCabFECHAVTA: TSQLTimeStampField;
    CDSRtosCabFECHAVTO: TSQLTimeStampField;
    CDSRtosCabCONDICIONVTA: TIntegerField;
    CDSRtosCabANULADO: TStringField;
    CDSRtosCabIMPRESO: TStringField;
    CDSRtosCabOBSERVACION1: TStringField;
    CDSRtosCabOBSERVACION2: TStringField;
    CDSRtosCabCPTE_MANUAL: TStringField;
    CDSRtosCabSUCURSAL: TIntegerField;
    CDSRtosCabZONA: TIntegerField;
    CDSRtosCabLDR: TIntegerField;
    CDSRtosCabDEPOSITO: TIntegerField;
    CDSRtosCabCALCULA_SOBRETASA: TStringField;
    CDSRtosCabDESGLOZAIVA: TStringField;
    CDSRtosCabNROENTREGA: TIntegerField;
    CDSRtosCabINGRESA_A_CTACTE: TStringField;
    CDSRtosCabINGRESA_LIBRO_IVA: TStringField;
    CDSRtosCabIDFACTURA: TIntegerField;
    CDSRtosCabVENDEDOR: TStringField;
    CDSRtosCabUSUARIO: TStringField;
    CDSRtosCabRENGLONES: TSmallintField;
    CDSRtosCabNOTAPEDIDO_ID: TIntegerField;
    CDSRtosCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSRtosCabID_TRANSPORTE: TIntegerField;
    CDSRtosCabFECHA_HORA: TSQLTimeStampField;
    CDSRtosCabTAREAS: TStringField;
    CDSRtosCabPRESUPUESTO_ID: TIntegerField;
    CDSRtosCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSRtosCabNOTAVTA_ID: TIntegerField;
    CDSRtosCabNOTAVTA_NROCPBTE: TStringField;
    CDSRtosCabID_FACTURAPORDEFECTO: TIntegerField;
    CDSRtosDetID: TIntegerField;
    CDSRtosDetID_CABRTO: TIntegerField;
    CDSRtosDetTIPOCPBTE: TStringField;
    CDSRtosDetCLASECPBTE: TStringField;
    CDSRtosDetNROCPBTE: TStringField;
    CDSRtosDetFECHAVTA: TSQLTimeStampField;
    CDSRtosDetCODIGOARTICULO: TStringField;
    CDSRtosDetDETALLE: TStringField;
    CDSRtosDetUNIDAD: TStringField;
    CDSRtosDetDESGLOZAIVA: TStringField;
    CDSRtosDetMODO_GRAVAMEN: TStringField;
    CDSRtosDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSRtosDetDEPOSITO: TIntegerField;
    CDSRtosDetCALCULA_SOBRETASA: TStringField;
    CDSRtosDetGRAVADO_IB: TStringField;
    CDSRtosDetID_MONEDA: TIntegerField;
    CDSRtosDetLOTE: TIntegerField;
    CDSRtosDetOBSERVACION: TStringField;
    CDSRtosDetNOTAVENTA_ID: TIntegerField;
    CDSRtosDetNOTAVENTA_ID_DET: TIntegerField;
    CDSDepositos: TClientDataSet;
    DSPDepositos: TDataSetProvider;
    CDSSucursales: TClientDataSet;
    DSPSucursales: TDataSetProvider;
    CDSSucursalesCODIGO: TIntegerField;
    CDSSucursalesDETALLE: TStringField;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    CDSDepositosSUCURSAL: TIntegerField;
    CDSDepositosCENTRALIZA_STOCK: TStringField;
    CDSComprobante: TClientDataSet;
    DSPComprobante: TDataSetProvider;
    CDSComprobanteID_COMPROBANTE: TIntegerField;
    CDSComprobanteTIPO_COMPROB: TStringField;
    CDSComprobanteCLASE_COMPROB: TStringField;
    CDSComprobanteDENOMINACION: TStringField;
    CDSComprobanteSUCURSAL: TIntegerField;
    CDSComprobanteLETRA: TStringField;
    CDSComprobantePREFIJO: TStringField;
    CDSComprobanteNUMERARCION_PROPIA: TStringField;
    CDSComprobanteNUMERO: TStringField;
    CDSComprobanteTOMA_NRO_DE: TIntegerField;
    CDSComprobanteAFECTA_IVA: TStringField;
    CDSComprobanteAFECTA_CC: TStringField;
    CDSComprobanteDESGLOZA_IVA: TStringField;
    CDSComprobanteCOMPRA_VENTA: TStringField;
    CDSComprobanteCOPIAS: TIntegerField;
    CDSComprobanteREPORTE: TStringField;
    CDSComprobanteIMPRIME: TStringField;
    CDSComprobanteFISCAL: TStringField;
    CDSComprobanteNOMBREIMPRESORA: TStringField;
    CDSComprobantePENDIENTEIMPRESION: TStringField;
    CDSComprobanteLINEAS_DETALLE: TSmallintField;
    CDSComprobanteCALCULA_IVA_ARTICULOS: TStringField;
    CDSComprobanteDEFECTO: TStringField;
    CDSRtosCabCON_GTIA_EXTENDIDA: TStringField;
    dbgRemitos: TJvDBGrid;
    chFiltraComprobantes: TCheckBox;
    DSPComprobantePorDefecto: TDataSetProvider;
    CDSComprobantePorDefecto: TClientDataSet;
    DSPInscripcion: TDataSetProvider;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    Label4: TLabel;
    cbCentroCosto: TJvDBLookupCombo;
    DSPCentroCosto: TDataSetProvider;
    CDSCentroCosto: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSCentroCosto: TDataSource;
    Bevel1: TBevel;
    chbUsarCtroCosto: TCheckBox;
    MarcaRtoNoFact: TAction;
    MarcaRtoNoFact1: TMenuItem;
    ConfiguraIni: TAction;
    N2: TMenuItem;
    ConfiguraIni1: TMenuItem;
    CDSRtosCabObs: TStringField;
    chCero: TCheckBox;
    Label5: TLabel;
    cxDBSpinEdit1: TDBEdit;
    CDSRtosCabCANT_BULTOS: TIntegerField;
    FacturarEnTkFc: TAction;
    FactenTkFc1: TMenuItem;
    lbPos: TLabel;
    chVerContenido: TCheckBox;
    CDSRtosCabDEVOLUCION: TStringField;
    JvDBStatusLabel1: TJvDBStatusLabel;
    dbfObservaciones: TJvDBFindEdit;
    Label6: TLabel;
    QTraerRecargoDeLista: TFDQuery;
    QTraerRecargoDeListaRECARGO: TFloatField;
    QSucursalVta: TFDQuery;
    QSucursalVtaRECARGO: TFloatField;
    QDepositoStk: TFDQuery;
    QDepositoStkRECARGO: TFloatField;
    QArtActivo: TFDQuery;
    QArtActivoCODIGO_STK: TStringField;
    QStockPrecio_Vta: TFDQuery;
    QRtosCab: TFDQuery;
    CDSRtosCabNROFACT: TStringField;
    CDSRtosCabN_OPERACION2: TFloatField;
    CDSRtosCabNETOGRAV1: TFloatField;
    CDSRtosCabNETOGRAV2: TFloatField;
    CDSRtosCabDSTO: TFloatField;
    CDSRtosCabDSTOIMPORTE: TFloatField;
    CDSRtosCabNETOEXEN1: TFloatField;
    CDSRtosCabNETOEXEN2: TFloatField;
    CDSRtosCabTOTAL: TFloatField;
    CDSRtosCabDEBE: TFloatField;
    CDSRtosCabPOLIZA: TStringField;
    CDSRtosCabREMITO_ELECTRONICO: TStringField;
    CDSRtosCabCAE: TStringField;
    CDSRtosCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSRtosCabID_CHOFER: TIntegerField;
    CDSRtosCabTRASNPORTE_UNIDAD: TIntegerField;
    CDSRtosCabTRASNPORTE_ADICIONAL: TIntegerField;
    CDSRtosCabPEDIDO_ID: TIntegerField;
    CDSRtosCabID_TRANSFERENCIA: TIntegerField;
    CDSRtosCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    CDSRtosCabFECHA_ENTREGA: TSQLTimeStampField;
    CDSRtosCabCOMISIONVENDEDOR: TFloatField;
    QRtosDet: TFDQuery;
    QComprobante: TFDQuery;
    QDepositos: TFDQuery;
    spNoFacturableFB: TFDStoredProc;
    QSucursales: TFDQuery;
    CDSRtosDetRENGLON: TFloatField;
    CDSRtosDetDETALLE_ADICIONAL: TStringField;
    CDSRtosDetCANTIDAD: TFloatField;
    CDSRtosDetCOSTO_GRAVADO: TFloatField;
    CDSRtosDetCOSTO_EXENTO: TFloatField;
    CDSRtosDetCOSTO_TOTAL: TFloatField;
    CDSRtosDetUNITARIO_GRAVADO: TFloatField;
    CDSRtosDetIVA_UNITARIO: TFloatField;
    CDSRtosDetUNITARIO_EXENTO: TFloatField;
    CDSRtosDetUNITARIO_TOTAL: TFloatField;
    CDSRtosDetTOTAL_GRAVADO: TFloatField;
    CDSRtosDetIVA_TOTAL: TFloatField;
    CDSRtosDetTOTAL_EXENTO: TFloatField;
    CDSRtosDetTOTAL: TFloatField;
    CDSRtosDetIVA_TASA: TFloatField;
    CDSRtosDetIVA_SOBRETASA: TFloatField;
    CDSRtosDetTIPOIVA_TASA: TIntegerField;
    CDSRtosDetDESCUENTO: TFloatField;
    CDSRtosDetMARGEN: TFloatField;
    CDSRtosDetAFECTA_STOCK: TStringField;
    CDSRtosDetCOTIZACION: TFloatField;
    CDSRtosDetCODIGOBARRA: TStringField;
    CDSRtosDetPRECIO_EDITABLE: TStringField;
    CDSRtosDetCANT_FACTURA: TFloatField;
    CDSRtosDetID_MERCA_ACOPIO_DET: TIntegerField;
    CDSRtosDetPRESENTACION_CANT: TFloatField;
    CDSRtosDetCANTIDAD_UNIDADES: TFloatField;
    CDSRtosDetPRESENTACION_UNIDAD: TStringField;
    CDSRtosDetID_FACTURA: TIntegerField;
    QStockPrecio_VtaDESCUENTO: TFloatField;
    QStockPrecio_VtaCOSTO_TOTAL: TFloatField;
    QStockPrecio_VtaPRECIO: TFloatField;
    QStockPrecio_VtaCOSTO_EXENTO: TFloatField;
    QStockPrecio_VtaCOSTO_GRAVADO: TFloatField;
    CDSRtosDetTOTALCONIVA: TFloatField;
    spAnulaRto: TFDStoredProc;
    CDSRtosCabMuestraComprobante: TStringField;
    QRtosCabID_RTO: TIntegerField;
    QRtosCabTIPOCPBTE: TStringField;
    QRtosCabCLASECPBTE: TStringField;
    QRtosCabNROCPBTE: TStringField;
    QRtosCabCODIGO: TStringField;
    QRtosCabLETRARTO: TStringField;
    QRtosCabSUCRTO: TStringField;
    QRtosCabNUMERORTO: TStringField;
    QRtosCabNOMBRE: TStringField;
    QRtosCabRAZONSOCIAL: TStringField;
    QRtosCabDIRECCION: TStringField;
    QRtosCabCPOSTAL: TStringField;
    QRtosCabLOCALIDAD: TStringField;
    QRtosCabTIPOIVA: TIntegerField;
    QRtosCabCUIT: TStringField;
    QRtosCabLISTAPRECIO: TIntegerField;
    QRtosCabFECHAVTA: TSQLTimeStampField;
    QRtosCabFECHAVTO: TSQLTimeStampField;
    QRtosCabCONDICIONVTA: TIntegerField;
    QRtosCabANULADO: TStringField;
    QRtosCabNROFACT: TStringField;
    QRtosCabN_OPERACION2: TFloatField;
    QRtosCabNETOGRAV1: TFloatField;
    QRtosCabNETOGRAV2: TFloatField;
    QRtosCabDSTO: TFloatField;
    QRtosCabDSTOIMPORTE: TFloatField;
    QRtosCabNETOEXEN1: TFloatField;
    QRtosCabNETOEXEN2: TFloatField;
    QRtosCabTOTAL: TFloatField;
    QRtosCabDEBE: TFloatField;
    QRtosCabIMPRESO: TStringField;
    QRtosCabOBSERVACION1: TStringField;
    QRtosCabOBSERVACION2: TStringField;
    QRtosCabCPTE_MANUAL: TStringField;
    QRtosCabSUCURSAL: TIntegerField;
    QRtosCabZONA: TIntegerField;
    QRtosCabLDR: TIntegerField;
    QRtosCabDEPOSITO: TIntegerField;
    QRtosCabCALCULA_SOBRETASA: TStringField;
    QRtosCabDESGLOZAIVA: TStringField;
    QRtosCabNROENTREGA: TIntegerField;
    QRtosCabINGRESA_A_CTACTE: TStringField;
    QRtosCabINGRESA_LIBRO_IVA: TStringField;
    QRtosCabIDFACTURA: TIntegerField;
    QRtosCabCOMISIONVENDEDOR: TFloatField;
    QRtosCabVENDEDOR: TStringField;
    QRtosCabUSUARIO: TStringField;
    QRtosCabRENGLONES: TSmallintField;
    QRtosCabNOTAPEDIDO_ID: TIntegerField;
    QRtosCabNOTAPEDIDO_NROCPBTE: TStringField;
    QRtosCabID_TRANSPORTE: TIntegerField;
    QRtosCabFECHA_HORA: TSQLTimeStampField;
    QRtosCabTAREAS: TStringField;
    QRtosCabPRESUPUESTO_ID: TIntegerField;
    QRtosCabPRESUPUESTO_NROCPBTE: TStringField;
    QRtosCabNOTAVTA_ID: TIntegerField;
    QRtosCabNOTAVTA_NROCPBTE: TStringField;
    QRtosCabCON_GTIA_EXTENDIDA: TStringField;
    QRtosCabPOLIZA: TStringField;
    QRtosCabCANT_BULTOS: TIntegerField;
    QRtosCabREMITO_ELECTRONICO: TStringField;
    QRtosCabCAE: TStringField;
    QRtosCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QRtosCabDEVOLUCION: TStringField;
    QRtosCabID_CHOFER: TIntegerField;
    QRtosCabTRASNPORTE_UNIDAD: TIntegerField;
    QRtosCabTRASNPORTE_ADICIONAL: TIntegerField;
    QRtosCabPEDIDO_ID: TIntegerField;
    QRtosCabID_TRANSFERENCIA: TIntegerField;
    QRtosCabFECHA_DEVOLUCION_ALQ: TSQLTimeStampField;
    QRtosCabFECHA_ENTREGA: TSQLTimeStampField;
    QRtosCabCOT: TStringField;
    QRtosCabID_FACTURAPORDEFECTO: TIntegerField;
    QRtosCabMUESTRAIVA: TStringField;
    FacturarTodo: TAction;
    chFacturaTodos: TCheckBox;
    CDSRtosCabSELECTED: TStringField;
    Label7: TLabel;
    editPath: TEdit;
    sbClaveElect: TSpeedButton;
    chPDF: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure FacturarExecute(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure rxcDepositoEnter(Sender: TObject);
    procedure ConfirmaExecute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure dbgRemitosDblClick(Sender: TObject);
    procedure dbgRemitosTitleClick(Column: TColumn);
    procedure FacturarCtdoExecute(Sender: TObject);
    procedure AnularRemitoExecute(Sender: TObject);
    procedure FacturarCtdo1Click(Sender: TObject);
    procedure VerRtoExecute(Sender: TObject);
    procedure dbgRemitosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rxcSucursalClick(Sender: TObject);
    procedure chbUsarCtroCostoClick(Sender: TObject);
    procedure cbCentroCostoClick(Sender: TObject);
    procedure MarcaRtoNoFactExecute(Sender: TObject);
    procedure ConfiguraIniExecute(Sender: TObject);
    procedure CDSRtosCabCalcFields(DataSet: TDataSet);
    procedure CDSRtosDetCalcFields(DataSet: TDataSet);
    procedure dbgRemitosMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure CDSRtosCabAfterScroll(DataSet: TDataSet);
    procedure CDSRtosCabMuestraComprobanteChange(Sender: TField);
    procedure FacturarEnTkFcExecute(Sender: TObject);
    procedure FactenTkFc1Click(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure dbgRemitosColEnter(Sender: TObject);
    procedure dbgRemitosEnter(Sender: TObject);
    function dbgRemitosCheckIfBooleanField(Grid: TJvDBGrid; Field: TField;
      var StringForTrue, StringForFalse: string): Boolean;
    procedure CDSRtosCabAfterOpen(DataSet: TDataSet);
    procedure sbClaveElectClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
 //   ItemMax,ItemTotal:Byte;
    Mascara:String;
    ArtGravado,ArtExento:String;
    SucursalComprobante:Integer;
    IDComprobante:Integer;
    Deposito:Integer;

//    procedure CalculaPrecioVta;
    PROCEDURE AgregaCabecera;
    procedure AgregaDetalle;
//    procedure CalculaPrecioVtaCtdo;
    PROCEDURE AgregaCabeceraCtdo;
    procedure AgregaDetalleCtdo;
    PROCEDURE AgregaCabeceraTk;
    procedure AgregaDetalleTk;

  end;
 type TGridHack=class(TJVDBGrid);

var
  FormFacturarRemitos: TFormFacturarRemitos;


implementation

uses DMVenta, UFactura_2, UFacturaCtdo_2, DMVentaCtdo, URemitos,
     UBuscadorTipoCpbte, UArtFacRtos, UBuscadorDepositos, UTiketVta, DMTicket,UDMain_FD,
  UBuscaDirectorio;

{$R *.DFM}

//procedure TFormFacturarRemitos.CalculaPrecioVta;
//VAR Recargo: Variant;
//begin
//  if DatosVentas.CDSVentaDetCosto_Total.AsFloat=0 Then Exit;
//  if DatosVentas.CDSVentaDet.State=dsBrowse Then
//    DatosVentas.CDSVentaDet.Edit;
//// ***** Aplico el Recargo de la Lista de Precios
//  QTraerRecargoDeLista.Close;
//  QTraerRecargoDeLista.ParamByName('Lista').Value   := DatosVentas.CDSVentaCabLISTAPRECIO.Value;
//  QTraerRecargoDeLista.ParamByName('Articulo').Value:= DatosVentas.CDSVentaDetCodigoArticulo.Value;
//  QTraerRecargoDeLista.OPen;
//  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
//    BEGIN
//      Recargo:=QTraerRecargoDeListaRECARGO.Value;
//      IF (Recargo > 0) THEN
//        BEGIN
//          DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentas.CDSVentaDetCosto_Gravado.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentas.CDSVentaDetUnitario_Exento.AsFloat := DatosVentas.CDSVentaDetCosto_Exento.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentas.CDSVentaDetUnitario_Total.AsFloat  := DatosVentas.CDSVentaDetCosto_Total.AsFloat * (1 + (Recargo * 0.01));
//        END
//      else
//        BEGIN
//          DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentas.CDSVentaDetCosto_Gravado.AsFloat;
//          DatosVentas.CDSVentaDetUnitario_Exento.AsFloat := DatosVentas.CDSVentaDetCosto_Exento.AsFloat;
//          DatosVentas.CDSVentaDetUnitario_Total.AsFloat  := DatosVentas.CDSVentaDetCosto_Total.AsFloat;
//        END;
//    end
//  else
//    BEGIN
//      DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentas.CDSVentaDetCosto_Gravado.AsFloat;
//      DatosVentas.CDSVentaDetUnitario_Exento.AsFloat := DatosVentas.CDSVentaDetCosto_Exento.AsFloat;
//      DatosVentas.CDSVentaDetUnitario_Total.AsFloat  := DatosVentas.CDSVentaDetCosto_Total.AsFloat;
//    END;
//  QTraerRecargoDeLista.Close;
////******** Aplico recargo por Deposito de Vta *******
//  QDepositoStk.Close;
//  QDepositoStk.ParamByName('Codigo_Deposito').Value:= DatosVentas.CDSVentaDetDeposito.Value;
//  QDepositoStk.ParamByName('Codigo').Value         := DatosVentas.CDSVentaDetCodigoArticulo.Value;
//  QDepositoStk.Open;
//  IF NOT (QDepositoStk.IsEmpty) THEN
//    BEGIN
//      Recargo:=QDepositoStkRecargo.Value;
//      IF (Recargo > 0) THEN
//        BEGIN
//          DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentas.CDSVentaDetUnitario_Exento.AsFloat := DatosVentas.CDSVentaDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentas.CDSVentaDetUnitario_Total.AsFloat  := DatosVentas.CDSVentaDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//        END
//    END;
//// ******** Aplico recargo por Sucursal ***
//  QSucursalVta.Close;
//  QSucursalVta.ParamByName('Codigo').Value := DatosVentas.CDSVentaCabSucursal.Value;
//  QSucursalVta.Open;
//  Recargo := QSucursalVtaRecargo.Value;
//  IF (NOT (VarIsNull(Recargo))) AND (Recargo > 0) THEN
//    BEGIN
//      DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat := DatosVentas.CDSVentaDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
//      DatosVentas.CDSVentaDetUnitario_Exento.AsFloat  := DatosVentas.CDSVentaDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
//      DatosVentas.CDSVentaDetUnitario_Total.AsFloat   := DatosVentas.CDSVentaDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//    END;
//  QSucursalVta.Close;
//end;

//procedure TFormFacturarRemitos.CalculaPrecioVtaCtdo;
//VAR Recargo: Variant;
//begin
//  if DatosVentasCtdo.CDSVentaDetCosto_Total.AsFloat=0 Then Exit;
//  if DatosVentasCtdo.CDSVentaDet.State=dsBrowse Then
//    DatosVentasCtdo.CDSVentaDet.Edit;
//// ***** Aplico el Recargo de la Lista de Precios
//  QTraerRecargoDeLista.Close;
//  QTraerRecargoDeLista.ParamByName('Lista').Value   := DatosVentasCtdo.CDSVentaCabLISTAPRECIO.Value;
//  QTraerRecargoDeLista.ParamByName('Articulo').Value:= DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
//  QTraerRecargoDeLista.OPen;
//  IF NOT (QTraerRecargoDeLista.IsEmpty) THEN
//    BEGIN
//      Recargo:=QTraerRecargoDeListaRECARGO.Value;
//      IF (Recargo > 0) THEN
//        BEGIN
//          DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentasCtdo.CDSVentaDetCosto_Gravado.AsFLoat * (1 + (Recargo * 0.01));
//          DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat := DatosVentasCtdo.CDSVentaDetCosto_Exento.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat  := DatosVentasCtdo.CDSVentaDetCosto_Total.AsFloat * (1 + (Recargo * 0.01));
//        END
//      else
//        BEGIN
//          DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentasCtdo.CDSVentaDetCosto_Gravado.AsFloat;
//          DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat := DatosVentasCtdo.CDSVentaDetCosto_Exento.AsFloat;
//          DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat  := DatosVentasCtdo.CDSVentaDetCosto_Total.AsFloat;
//        END;
//    end
//  else
//    BEGIN
//      DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentasCtdo.CDSVentaDetCosto_Gravado.AsFloat;
//      DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat := DatosVentasCtdo.CDSVentaDetCosto_Exento.AsFloat;
//      DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat  := DatosVentasCtdo.CDSVentaDetCosto_Total.AsFloat;
//    END;
//  QTraerRecargoDeLista.Close;
////******** Aplico recargo por Deposito de Vta *******
//  QDepositoStk.Close;
//  QDepositoStk.ParamByName('Codigo_Deposito').Value:= DatosVentasCtdo.CDSVentaDetDeposito.Value;
//  QDepositoStk.ParamByName('Codigo').Value         := DatosVentasCtdo.CDSVentaDetCodigoArticulo.Value;
//  QDepositoStk.Open;
//  IF NOT (QDepositoStk.IsEmpty) THEN
//    BEGIN
//      Recargo:=QDepositoStkRecargo.Value;
//      IF (Recargo > 0) THEN
//        BEGIN
//          DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat:= DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat := DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
//          DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat  := DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//        END
//    END;
//// ******** Aplico recargo por Sucursal ***
//  QSucursalVta.Close;
//  QSucursalVta.ParamByName('Codigo').Value := DatosVentasCtdo.CDSVentaCabSucursal.Value;
//  QSucursalVta.Open;
//  Recargo := QSucursalVtaRecargo.Value;
//  IF (NOT (VarIsNull(Recargo))) AND (Recargo > 0) THEN
//    BEGIN
//      DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat := DatosVentasCtdo.CDSVentaDetUnitario_Gravado.AsFloat * (1 + (Recargo * 0.01));
//      DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat  := DatosVentasCtdo.CDSVentaDetUnitario_Exento.AsFloat * (1 + (Recargo * 0.01));
//      DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat   := DatosVentasCtdo.CDSVentaDetUnitario_Total.AsFloat * (1 + (Recargo * 0.01));
//    END;
//  QSucursalVta.Close;
//end;

procedure TFormFacturarRemitos.cbCentroCostoClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
end;

procedure TFormFacturarRemitos.FormClose(Sender: TObject;
  var Action: TCloseAction);
VAR ArchivoIni:TIniFile;
begin
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_FiltroRtos.ini');
  ArchivoIni.WriteBool('Filtro', 'Filtra', chFiltraComprobantes.Checked);
  ArchivoIni.WriteBool('Filtro', 'cero', chCero.Checked);
  ArchivoIni.Free;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FacturaRtos.ini');
  ArchivoIni.WriteString('Directorio', 'path', editPath.Text);
  ArchivoIni.Free;

  inherited;
  CDSSucursales.Close;
  CDSDepositos.Close;
  Action:=caFree;

end;

procedure TFormFacturarRemitos.FormCreate(Sender: TObject);
var ArchivoIni:TIniFile;
begin
  inherited;
  CDSSucursales.Open;
  CDSCentroCosto.Open;
  CDSDepositos.Open;
  AutoSize   :=False;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;
  rxcSucursal.KeyValue  :=SucursalPorDefecto;
  rxcDeposito.KeyValue  :=DepositoPorDefecto;
  cbCentroCosto.KeyValue:=SucursalPorDefecto;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+DMMain_FD.UsuarioActivo+'_FiltroRtos.ini');
  chFiltraComprobantes.Checked        := ArchivoIni.ReadBool('Filtro', 'Filtra', False);
  chCero.Checked                      := ArchivoIni.ReadBool('Filtro', 'cero', True);
  ArchivoIni.Free;


  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FacturaRtos.ini');
  //*************************************************************
  ArtGravado     := ArchivoIni.ReadString('gravados','codigo','');
  ArtExento      := ArchivoIni.ReadString('exento','codigo','');
  editPath.Text  := ArchivoIni.ReadString('Directorio', 'path', '');
  ArchivoIni.Free;

  // Levanto si el Rto descuenta Stock
  //*************************************************************
  //DMMain_FD.QOpciones.Close;
  //DMMain_FD.QOpciones.ParamByName('opcion').Value:='STOCKRTO';
  //DMMain_FD.QOpciones.Open;
  //DMMain_FD.DescuentaStockRto :=False;
  //if Not(DMMain_FD.QOpciones.IsEmpty) Then
  //  DMMain_FD.DescuentaStockRto := Copy(DMMain_FD.QOpciones.Fields[0].AsString,1,1)='S';
  //DMMain_FD.QOpciones.Close;

  Buscar.Execute;
end;

procedure TFormFacturarRemitos.BuscarExecute(Sender: TObject);
begin
  inherited;
  CDSRtosCab.IndexDefs.Clear;
  CDSRtosCab.IndexName:='';
  CDSRtosCab.Close;
  CDSRtosCab.Params.ParamByName('Sucursal').Value:=rxcSucursal.KeyValue;
  CDSRtosCab.Params.ParamByName('Deposito').Value:=rxcDeposito.KeyValue;
  CDSRtosCab.Open;
 // CDSRtosCab.IndexFieldNames:='NROCPBTE';

  CDSComprobante.Close;
  CDSComprobante.Params. ParamByName('Sucursal').Value  :=rxcSucursal.KeyValue;
  if chbUsarCtroCosto.Checked then
    CDSComprobante.Params. ParamByName('Sucursal').Value:=cbCentroCosto.KeyValue;
  CDSComprobante.Open;
  dbgRemitos.Width:=dbgRemitos.Width-1;
  dbgRemitos.Width:=dbgRemitos.Width+1;

end;

procedure TFormFacturarRemitos.FacturarEnTkFcExecute(Sender: TObject);
var EstadoLista:Boolean;
begin
  inherited;
  EstadoLista            :=DMMain_FD.GetControlaLista;
  //DMMain_FD.ControlaLista:=False;

  FormTicketVta.Agregar.Execute;
  AgregaCabeceraTk;
  CDSRtosDet.Close;
  CDSRtosDet.Params.ParamByName('id').Value:=CDSRtosCabID_RTO.Value;
  CDSRtosDet.Open;
  CDSRtosDet.First;
  while Not(CDSRtosDet.Eof) Do // Ingreso el detalle
    begin
      if (CDSRtosDetTOTAL.AsFloat >0 ) then
        AgregaDetalleTk;
      CDSRtosDet.Next;
    end;
  DatosVentasTicket.CDSVentaCabCON_GTIA_EXTENDIDA.Value:=CDSRtosCabCON_GTIA_EXTENDIDA.Value;
 // DMMain_FD.ControlaLista:=EstadoLista;
end;

procedure TFormFacturarRemitos.FacturarExecute(Sender: TObject);
var EstadoLista:Boolean;
begin
  inherited;
  if (FormCpbte_2.DSBase.State=dsBrowse) then
    begin
      EstadoLista           :=DMMain_fd.GetControlaLista;
      FormCpbte_2.Agregar.Execute;
      AgregaCabecera;
      if FormCpbte_2.DSBase.State = dsInsert then
        begin
          CDSRtosDet.Close;
          CDSRtosDet.Params.ParamByName('id').Value := CDSRtosCabID_RTO.Value;
          CDSRtosDet.Open;
          CDSRtosDet.First;
          while Not(CDSRtosDet.Eof) Do // Ingreso el detalle
            begin
              if (CDSRtosDetTOTAL.AsFloat > 0) then
                AgregaDetalle
              else
              if (CDSRtosDetTOTAL.AsFloat <= 0) and (chCero.Checked=True) then
                AgregaDetalle;
              CDSRtosDet.Next;
            end;
          DatosVentas.CDSVentaCabCON_GTIA_EXTENDIDA.Value:=CDSRtosCabCON_GTIA_EXTENDIDA.Value;

 //         DMMain_FD.ControlaLista:=EstadoLista;
        end;
    end
      else
        ShowMessage('Hay un Comprobante abierto sin confirmar...');
end;

procedure TFormFacturarRemitos.AgregaCabecera;
Var Continua:Boolean;
begin
  with DatosVentas DO
  begin
    Continua:=True;

    if chbUsarCtroCosto.Checked then
      FormCpbte_2.SucursalPorDefecto:=cbCentroCosto.KeyValue
    else
      FormCpbte_2.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    if chbUsarCtroCosto.Checked then
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(cbCentroCosto.KeyValue))
    else
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

    FormCpbte_2.DepositoPorDefecto:=CDSRtosCabDEPOSITO.AsInteger;

    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtosCabCODIGO.AsString);

    if (chbUsarCtroCosto.Checked=False) and
       (CDSRtosCabID_FACTURAPORDEFECTO.AsString<>'') then
      CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,CDSRtosCabID_FACTURAPORDEFECTO.AsString)
    else
      begin
        CDSInscripcion.Close;
        CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSRtosCabTIPOIVA.AsInteger;
        CDSInscripcion.Open;
        iF NOT (CDSInscripcion.Eof) THEN
          begin

            CDSComprobantePorDefecto.Close;
            CDSComprobantePorDefecto.Params.ParamByName('desglozaIva').Value:= CDSInscripcionDISCRIMINAIVA.Value;
            if Not(chbUsarCtroCosto.Checked) then
              CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := CDSRtosCabSUCURSAL.Value
            else
              CDSComprobantePorDefecto.Params.ParamByName('sucursal').Value   := cbCentroCosto.KeyValue;
            CDSComprobantePorDefecto.Params.ParamByName('compraventa').Value:= 'V';
            CDSComprobantePorDefecto.Params.ParamByName('tipo').Value       := 'FC';
            CDSComprobantePorDefecto.Open;
            if (CDSComprobantePorDefecto.RecordCount=1) and (CDSComprobantePorDefecto.Fields[0].AsString<>'') Then
              CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,CDSComprobantePorDefecto.Fields[0].AsString)
            else
          if CDSComprobante.RecordCount>1 then
              begin
                if Not(Assigned(FormBuscadorTipoCpbte)) then
                  FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
                FormBuscadorTipoCpbte.TipoCpbte1:='FC';
                FormBuscadorTipoCpbte.TipoCpbte2:='';
                FormBuscadorTipoCpbte.TipoCpbte3:='';
                FormBuscadorTipoCpbte.CV        :='V';
                if Not(chbUsarCtroCosto.Checked) then
                  FormBuscadorTipoCpbte.Sucursal     := CDSRtosCabSUCURSAL.AsInteger
                else
                  FormBuscadorTipoCpbte.Sucursal     := cbCentroCosto.KeyValue;

                if chFiltraComprobantes.Checked=False then
                  FormBuscadorTipoCpbte.DiscriminaIVA:= '*'
                else
                  FormBuscadorTipoCpbte.DiscriminaIVA:= CDSRtosCabDESGLOZAIVA.Value;
                  FormBuscadorTipoCpbte.ShowModal;
                if (FormBuscadorTipoCpbte.ModalResult=mrok) Then
                  CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(FormBuscadorTipoCpbte.Id_Cpbte))
                else
                  Continua:=False;
              end;
        end;
      end;

    if Continua Then
      begin

        CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSRtosCabLDR.AsString);
        CDSVentaCabDepositoSetText(CDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);

        CDSCondVenta.Close;
        CDSCondVenta.Params.ParamByName('Codigo').Value    :=CDSRtosCabCODIGO.AsString;
        CDSCondVenta.Params.ParamByName('CodigoPago').Value:=CDSRtosCabCONDICIONVTA.AsString;
        CDSCondVenta.Open;

        if (CDSRtosCabCONDICIONVTA.AsString='') or (CDSCondVenta.IsEmpty) then
          begin
            //Traigo La primera condicion de vta por defecto
            if DMMain_FD.GetCondicionVtaPorDefecto(CDSRtosCabCODIGO.AsString)>-1 Then
              CDSVentaCabCONDICIONVTASetText(CDSVentaCabCONDICIONVTA,IntToStr(DMMain_FD.GetCondicionVtaPorDefecto(CDSRtosCabCODIGO.AsString)))
            else
              begin
                ShowMessage('No tiene Condiciones de Vta. cargadas....');
                CDSVentaCabCONDICIONVTA.Clear;
                CDSVentaCabMUESTRACONDVENTA.Clear;
               end;
          end
        else
          CDSVentaCabCondicionVtaSetText(CDSVentaCabCondicionVta,CDSRtosCabCONDICIONVTA.AsString);

        CDSCondVenta.Close;

        CDSVentaCabANULADO.Value      := 'N';
        CDSVentaCabIMPRESO.Value      := 'N';
        CDSVentaCabCPTE_MANUAL.Value  := 'N';
        CDSVentaCabREDUCIDA.Value     := 'N';
        CDSVentaCabCANT_BULTOS.Value  := CDSRtosCabCANT_BULTOS.Value;
        CDSVentaCabDSTO.AsFloat       := CDSRtosCabDSTO.AsFloat;
        CDSVentaCabZONA.Value         := CDSRtosCabZONA.Value;
        CDSVentaCabNROENTREGA.Value   := CDSRtosCabNROENTREGA.Value;
        CDSVentaCabIDREMITO.Value     := CDSRtosCabID_RTO.Value;
        CDSVentaCabTIPO_REMITO.Value  := CDSRtosCabTIPOCPBTE.Value;
        CDSVentaCabNRORTO.Value       := CDSRtosCabNROCPBTE.Value;
        //seleciona lista de precio
        CDSVentaCabLISTAPRECIO.Value  := CDSRtosCabLISTAPRECIO.Value;

        if CDSRtosCabVENDEDOR.AsString<>'' Then
          CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSRtosCabVENDEDOR.AsString);

        CDSVentaCabNOMBRE.Value       := CDSRtosCabNOMBRE.Value;
        CDSVentaCabRAZONSOCIAL.Value  := CDSRtosCabRAZONSOCIAL.Value;
        CDSVentaCabDIRECCION.Value    := CDSRtosCabDIRECCION.Value;
        CDSVentaCabCPOSTAL.Value      := CDSRtosCabCPOSTAL.Value;
        CDSVentaCabLOCALIDAD.Value    := CDSRtosCabLOCALIDAD.Value;
        CDSVentaCabOBSERVACION1.Value := CDSRtosCabOBSERVACION1.Value;
        CDSVentaCabOBSERVACION2.Value := CDSRtosCabOBSERVACION2.Value;


        CDSVentaCabFECHA_HORA.AsDateTime:= Now;
        CDSVentaCabUSUARIO.Value        := DMMain_FD.UsuarioActivo;

        // por que si no me agreagaba el iva
        FormCpbte_2.DiscriminaIva:='S';
      end
    else
      FormCpbte_2.Cancelar.Execute;
  end;
end;

procedure TFormFacturarRemitos.AgregaCabeceraCtdo;
begin
  with DatosVentasCtdo DO
  begin
    if chbUsarCtroCosto.Checked then
      FormCpbteCtdo_2.SucursalPorDefecto:=cbCentroCosto.KeyValue
    else
      FormCpbteCtdo_2.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    if chbUsarCtroCosto.Checked then
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(cbCentroCosto.KeyValue))
    else
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

//    FormCpbteCtdo_2.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    FormCpbteCtdo_2.DepositoPorDefecto:=CDSRtosCabDEPOSITO.AsInteger;

  //  CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtosCabCODIGO.AsString);

    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSRtosCabLDR.AsString);
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);
    CDSVentaCabANULADO.Value     :='N';

    CDSVentaCabDSTO.AsFloat        := CDSRtosCabDSTO.AsFloat;
    CDSVentaCabIMPRESO.Value     :='N';
   
    CDSVentaCabCPTE_MANUAL.Value :='N';
    CDSVentaCabREDUCIDA.Value    :='N';

    CDSVentaCabZONA.Value              :=CDSRtosCabZONA.Value;
    CDSVentaCabNROENTREGA.Value        :=CDSRtosCabNROENTREGA.Value;
    CDSVentaCabIDREMITO.Value          :=CDSRtosCabID_RTO.Value;
    CDSVentaCabTIPO_REMITO.Value       :=CDSRtosCabTIPOCPBTE.Value;
    CDSVentaCabNRORTO.Value            :=CDSRtosCabNROCPBTE.Value;
    CDSVentaCabLISTAPRECIO.Value       :=CDSRtosCabLISTAPRECIO.Value;
    if CDSRtosCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSRtosCabVENDEDOR.AsString);
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_FD.UsuarioActivo;

    CDSVentaCabNOMBRE.Value       := CDSRtosCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value  := CDSRtosCabRAZONSOCIAL.Value;
    CDSVentaCabDIRECCION.Value    := CDSRtosCabDIRECCION.Value;
    CDSVentaCabCPOSTAL.Value      := CDSRtosCabCPOSTAL.Value;
    CDSVentaCabLOCALIDAD.Value    := CDSRtosCabLOCALIDAD.Value;
    CDSVentaCabOBSERVACION1.Value := CDSRtosCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value := CDSRtosCabOBSERVACION2.Value;

    FormCpbteCtdo_2.DiscriminaIva:='S';

  end;
end;

procedure TFormFacturarRemitos.AgregaCabeceraTk;
begin
  with DatosVentasTicket DO
  begin
    if chbUsarCtroCosto.Checked then
      FormTicketVta.SucursalPorDefecto:=cbCentroCosto.KeyValue
    else
      FormTicketVta.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    if chbUsarCtroCosto.Checked then
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,IntToStr(cbCentroCosto.KeyValue))
    else
      CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

//    FormCpbteCtdo_2.SucursalPorDefecto:=CDSRtosCabSUCURSAL.AsInteger;

    FormTicketVta.DepositoPorDefecto:=CDSRtosCabDEPOSITO.AsInteger;

  //  CDSVentaCabSucursalSetText(CDSVentaCabSucursal,CDSRtosCabSUCURSAL.AsString);

    CDSVentaCabCodigoSetText(CDSVentaCabCodigo,CDSRtosCabCODIGO.AsString);

    CDSVentaCabID_TIPOCOMPROBANTESetText(CDSVentaCabID_TIPOCOMPROBANTE,IntToStr(IDComprobante));
    CDSVentaCabLDRSetText(CDSVentaCabLDR,CDSRtosCabLDR.AsString);
    CDSVentaCabDepositoSetText(CDSVentaCabDeposito,CDSRtosCabDEPOSITO.AsString);
    CDSVentaCabANULADO.Value     :='N';

    CDSVentaCabDSTO.AsFloat      := CDSRtosCabDSTO.AsFloat;
    CDSVentaCabIMPRESO.Value     :='N';

    CDSVentaCabCPTE_MANUAL.Value :='N';
    CDSVentaCabREDUCIDA.Value    :='N';

    CDSVentaCabZONA.Value              :=CDSRtosCabZONA.Value;
    CDSVentaCabNROENTREGA.Value        :=CDSRtosCabNROENTREGA.Value;
    CDSVentaCabIDREMITO.Value          :=CDSRtosCabID_RTO.Value;
    CDSVentaCabTIPO_REMITO.Value       :=CDSRtosCabTIPOCPBTE.Value;
    CDSVentaCabNRORTO.Value            :=CDSRtosCabNROCPBTE.Value;
    CDSVentaCabLISTAPRECIO.Value       :=CDSRtosCabLISTAPRECIO.Value;
    if CDSRtosCabVENDEDOR.AsString<>'' Then
      CDSVentaCabVENDEDORSetText(CDSVentaCabVENDEDOR,CDSRtosCabVENDEDOR.AsString);
    CDSVentaCabFECHA_HORA.AsDateTime   :=Now;
    CDSVentaCabUSUARIO.Value           :=DMMain_FD.UsuarioActivo;

    CDSVentaCabNOMBRE.Value       := CDSRtosCabNOMBRE.Value;
    CDSVentaCabRAZONSOCIAL.Value  := CDSRtosCabRAZONSOCIAL.Value;
    CDSVentaCabDIRECCION.Value    := CDSRtosCabDIRECCION.Value;
    CDSVentaCabCPOSTAL.Value      := CDSRtosCabCPOSTAL.Value;
    CDSVentaCabLOCALIDAD.Value    := CDSRtosCabLOCALIDAD.Value;
    CDSVentaCabOBSERVACION1.Value := CDSRtosCabOBSERVACION1.Value;
    CDSVentaCabOBSERVACION2.Value := CDSRtosCabOBSERVACION2.Value;

    FormTicketVta.DiscriminaIva:='S';
  end;
end;


procedure TFormFacturarRemitos.AgregaDetalle;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
    Estado: TValueRelationship;
begin
  inherited;
  with DatosVentas DO
    begin
      CDSVentaDet.Append;
      QArtActivo.Close;
      QArtActivo.ParamByName('codigo').AsString:=CDSRtosDetCODIGOARTICULO.Value;
      QArtActivo.Open;
      if QArtActivoCODIGO_STK.AsString<>'' then
        begin
          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=CDSRtosDetCODIGOARTICULO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;
          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;
          CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtosDetCODIGOARTICULO.AsString);
        end
      else
        begin
          if ((ArtGravado='') or (ArtExento='')) then
            Raise Exception.Create('El item a facturar, no esta disponible, y no hay definidos Art. por Defecto ....');

          QStockPrecio_Vta.Close;
          QStockPrecio_Vta.ParamByName('Codigo').Value  :=CDSRtosDetCODIGOARTICULO.Value;
          QStockPrecio_Vta.ParamByName('deposito').Value:=CDSRtosDetDEPOSITO.Value;
          QStockPrecio_Vta.ParamByName('Lista').Value   :=CDSRtosCabLISTAPRECIO.Value;
          QStockPrecio_Vta.ParamByName('Sucursal').Value:=CDSRtosCabSUCURSAL.Value;
          QStockPrecio_Vta.Open;

          CDSVentaDetDESCUENTO.Value := QStockPrecio_VtaDESCUENTO.Value;

          if ( CDSRtosDetIVA_TASA.AsFloat>0) then
            CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,ArtGravado)
          else
            CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,ArtExento);
        end;
      QArtActivo.Close;

      CDSVentaDetDetalle.Value          :=CDSRtosDetDETALLE.Value;
      // verificar esta linea por que si no tiene permiso el que factura borra el dscto
      CDSVentaDetDescuento.AsFloat      :=CDSRtosDetDESCUENTO.AsFloat;
      CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtosDetCANTIDAD.AsString);
      CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
      CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
      CDSVentaDetMARGEN.AsFloat         :=CDSRtosDetMARGEN.AsFloat;
      CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
      CDSVentaDetLOTE.Value             :=CDSRtosDetLOTE.Value;

      if (QStockPrecio_Vta.Active=True) then
        Precio       := QStockPrecio_VtaPRECIO.AsFloat
      else
        Precio := 0;
      PrecioRto    := CDSRtosDetUNITARIO_TOTAL.AsFloat;

      if CDSVentaCabDESGLOZAIVA.Value='N' then
        begin
          Precio      := Precio * (1 + CDSRtosDetIVA_TASA.AsFloat * 0.01);
          PrecioRto   := PrecioRto + CDSRtosDetIVA_UNITARIO.AsFloat;
        end;
      Estado:= Math.CompareValue(precio,PrecioRto,0);

      if Not(Estado=EqualsValue) and

   //   if (Trunc(Precio * 1000)<>Trunc(PrecioRto * 1000)) and
         (VerificaCambioPrecio='S') Then
        begin
          if MessageDlg('Precio distinto al ingresado'+#13+
                        'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                        'Precio Cargado:'+FormatFloat('0.00',PrecioRto)+#13+
                        'Nuevo Precio  :'+FormatFloat('0.00',Precio)+#13+#13+
                        'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
            begin
              CDSVentaDetCosto_Gravado.AsFloat     := QStockPrecio_VtaCOSTO_GRAVADO.AsFloat;
              CDSVentaDetCosto_Exento.AsFloat      := QStockPrecio_VtaCOSTO_EXENTO.AsFloat;
              CDSVentaDetCosto_Total.AsFloat       := QStockPrecio_VtaCOSTO_TOTAL.AsFloat;
//              CalculaPrecioVta;

              DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.AsString, DMMain_FD.IdListaProveedor, CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                            CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                            CDSVentaDetCOTIZACION.AsFloat,
                                            CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                            Gravado,exento,Total,Iva,Margen,dscto,PFinal);

                // Verifico si el Comprobante calcual el Iva en los items
              if (FormCpbte_2.Divide_iva=True) then
                Iva:=Iva/2;
              if (FormCpbte_2.Calcula_iva_articulo=False) then
                Iva:=0;


              CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
              CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
              CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
              CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
              CDSVentaDetMARGEN.ASFloat          :=Margen;
              CDSVentaDetDESCUENTO.ASFloat       :=Dscto;


              UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              if CDSVentaCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

            end
          else
            begin
              CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

              if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
                begin
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                end
              else
                begin
                  CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                  CDSVentaDetIVA_TOTAL.AsFloat        :=0;
                end;

              UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              if CDSVentaCabDESGLOZAIVA.Value='N' Then
                UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

              CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
            end;
        end
      else
        begin
          CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

          if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
            begin
               CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
               CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            end
          else
            begin
              CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
              CDSVentaDetIVA_TOTAL.AsFloat        :=0;
            end;

          UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          if CDSVentaCabDESGLOZAIVA.Value='N' Then
            UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

          CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
          if CDSRtosDetCANTIDAD_UNIDADES.AsFloat>0 then
            CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=CDSRtosDetCANTIDAD_UNIDADES.AsFloat;


        end;
      if DMMain_FD.RtoDescuentaStock then
        CDSVentaDetAFECTA_STOCK.Value:='N';

      QStockPrecio_Vta.Close;
      CDSVentaDet.Post;
    end;
end;

procedure TFormFacturarRemitos.AgregaDetalleCtdo;
Var UnitarioTotal,Precio,PrecioRto:Extended;
    Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosVentasCtdo DO
    begin
    CDSVentaDet.Append;
    QStockPrecio_Vta.Close;
    QStockPrecio_Vta.ParamByName('Codigo').Value  :=CDSRtosDetCODIGOARTICULO.Value;
    QStockPrecio_Vta.ParamByName('deposito').Value:=CDSRtosDetDEPOSITO.Value;
    QStockPrecio_Vta.ParamByName('Lista').Value   :=CDSRtosCabLISTAPRECIO.Value;
    QStockPrecio_Vta.ParamByName('Sucursal').Value:=CDSRtosCabSUCURSAL.Value;
    QStockPrecio_Vta.Open;
    //
    CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtosDetCODIGOARTICULO.AsString);
    CDSVentaDetDetalle.Value          :=CDSRtosDetDETALLE.Value;
    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtosDetCANTIDAD.AsString);
    CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
    CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
    CDSVentaDetMARGEN.AsFloat         :=CDSRtosDetMARGEN.AsFloat;
    CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
    // mosmo tratamiento que la de Cta.cte
    Precio       := QStockPrecio_VtaPRECIO.AsFloat;
    PrecioRto    := CDSRtosDetUNITARIO_TOTAL.AsFloat;

    if CDSVentaCabDESGLOZAIVA.Value='N' then
      begin
        Precio      := Precio * (1 + CDSRtosDetIVA_TASA.AsFloat * 0.01);
        PrecioRto   := PrecioRto + CDSRtosDetIVA_UNITARIO.AsFloat;
      end;

    CDSVentaDetDescuento.AsFloat     :=CDSRtosDetDESCUENTO.AsFloat;
    if (Trunc(Precio*100)<>Trunc(PrecioRto*100)) and (VerificaCambioPrecio='S') Then
      begin
        if MessageDlg('Precio distinto al ingresado'+#13+
                      'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                      'Precio Cargado:'+FormatFloat('0.00',CDSRtosDetUNITARIO_TOTAL.AsFloat)+#13+
                      'Nuevo Precio  :'+FormatFloat('0.00',QStockPrecio_VtaPRECIO.AsFloat)+#13+#13+
                      'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
          begin
            CDSVentaDetCosto_Gravado.AsFloat     := QStockPrecio_VtaCOSTO_GRAVADO.AsFloat;
            CDSVentaDetCosto_Exento.AsFloat      := QStockPrecio_VtaCOSTO_EXENTO.AsFloat;
            CDSVentaDetCosto_Total.AsFloat       := QStockPrecio_VtaCOSTO_TOTAL.AsFloat;
//            CalculaPrecioVta;
            DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                          CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                          CDSVentaDetCOTIZACION.AsFloat,
                                          CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                          Gravado,exento,Total,Iva,Margen,dscto,PFinal);

            if (FormCpbteCtdo_2.Divide_iva=True) then
              Iva:=Iva/2;
            if (FormCpbteCtdo_2.Calcula_iva_articulo=False) then
              Iva:=0;

            CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
            CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
            CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
            CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
            CDSVentaDetMARGEN.ASFloat          :=Margen;
            CDSVentaDetDESCUENTO.ASFloat       :=Dscto;

            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

            if CDSVentaCabDESGLOZAIVA.Value='N' Then
              UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
          end
        else
          begin
            CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

            CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

            if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
              begin
//                CDSVentaDetIVA_UNITARIO.AsFloat     :=CDSRtosDetIVA_UNITARIO.ASFloat;
//                CDSVentaDetIVA_TOTAL.AsFloat        :=CDSRtosDetIVA_TOTAL.ASFloat;
                CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              end
            else
              begin
                CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                CDSVentaDetIVA_TOTAL.AsFloat        :=0;
              end;

            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

            if CDSVentaCabDESGLOZAIVA.Value='N' Then
              UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
          end;
      end
    else
      begin
        CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

        CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

        if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
          begin
//            CDSVentaDetIVA_UNITARIO.AsFloat     :=CDSRtosDetIVA_UNITARIO.ASFloat;
//            CDSVentaDetIVA_TOTAL.AsFloat        :=CDSRtosDetIVA_TOTAL.ASFloat;
            CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          end
        else
          begin
            CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
            CDSVentaDetIVA_TOTAL.AsFloat        :=0;
          end;

        UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

        if CDSVentaCabDESGLOZAIVA.Value='N' Then
          UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
        if CDSRtosDetCANTIDAD_UNIDADES.AsFloat>0 then
          CDSVentaDetCANTIDAD_UNIDADES.AsFloat:=CDSRtosDetCANTIDAD_UNIDADES.AsFloat;

        if DMMain_FD.RtoDescuentaStock then
          CDSVentaDetAFECTA_STOCK.Value:='N';
      end;
    QStockPrecio_Vta.Close;
    CDSVentaDet.Post;
  end;
end;

procedure TFormFacturarRemitos.AgregaDetalleTk;
Var UnitarioTotal,Precio,PrecioRto:Extended;
 Gravado,Exento,Iva,Total,Margen,Dscto,PFinal:Extended;
begin
  inherited;
  with DatosVentasTicket DO
    begin
    CDSVentaDet.Append;
    QStockPrecio_Vta.Close;
    QStockPrecio_Vta.ParamByName('Codigo').Value  :=CDSRtosDetCODIGOARTICULO.Value;
    QStockPrecio_Vta.ParamByName('deposito').Value:=CDSRtosDetDEPOSITO.Value;
    QStockPrecio_Vta.ParamByName('Lista').Value   :=CDSRtosCabLISTAPRECIO.Value;
    QStockPrecio_Vta.ParamByName('Sucursal').Value:=CDSRtosCabSUCURSAL.Value;
    QStockPrecio_Vta.Open;
    //
    CDSVentaDetCodigoArticuloSetText(CDSVentaDetCodigoArticulo,CDSRtosDetCODIGOARTICULO.AsString);
    CDSVentaDetDetalle.Value          :=CDSRtosDetDETALLE.Value;
    CDSVentaDetCantidadSetText(CDSVentaDetCantidad,CDSRtosDetCANTIDAD.AsString);
    CDSVentaDetDESGLOZAIVA.Value      :=CDSVentaCabDESGLOZAIVA.Value;
    CDSVentaDetDEPOSITO.Value         :=CDSVentaCabDeposito.Value;
    CDSVentaDetMARGEN.AsFloat         :=CDSRtosDetMARGEN.AsFloat;
    CDSVentaDetCLASECPBTE.Value       :=CDSVentaCabCLASECPBTE.Value;
    // mosmo tratamiento que la de Cta.cte
    Precio       := QStockPrecio_VtaPRECIO.AsFloat;
    PrecioRto    := CDSRtosDetUNITARIO_TOTAL.AsFloat;

    if CDSVentaCabDESGLOZAIVA.Value='N' then
      begin
        Precio      := Precio * (1 + CDSRtosDetIVA_TASA.AsFloat * 0.01);
        PrecioRto   := PrecioRto + CDSRtosDetIVA_UNITARIO.AsFloat;
      end;

    CDSVentaDetDescuento.AsFloat     :=CDSRtosDetDESCUENTO.AsFloat;
    if (Trunc(Precio*100)<>Trunc(PrecioRto*100)) and (VerificaCambioPrecio='S') Then
      begin
        if MessageDlg('Precio distinto al ingresado'+#13+
                      'Artículo      :'+CDSVentaDetDETALLE.AsString+#13+
                      'Precio Cargado:'+FormatFloat('0.00',CDSRtosDetUNITARIO_TOTAL.AsFloat)+#13+
                      'Nuevo Precio  :'+FormatFloat('0.00',QStockPrecio_VtaPRECIO.AsFloat)+#13+#13+
                      'Modifica?',mtConfirmation,[mbYes,mbNo],0)=mrYes Then
          begin
            CDSVentaDetCosto_Gravado.AsFloat     := QStockPrecio_VtaCOSTO_GRAVADO.AsFloat;
            CDSVentaDetCosto_Exento.AsFloat      := QStockPrecio_VtaCOSTO_EXENTO.AsFloat;
            CDSVentaDetCosto_Total.AsFloat       := QStockPrecio_VtaCOSTO_TOTAL.AsFloat;
//           CalculaPrecioVta;
            DMMain_FD.CalculaPrecioVta_FD(CDSVentaCabINGRESA_LIBRO_IVA.AsString,DMMain_FD.IdListaProveedor,CDSVentaCabLISTAPRECIO.Value,CDSVentaCabSUCURSAL.Value,CDSVentaCabDEPOSITO.Value,
                                          CDSVentaDetCODIGOARTICULO.AsString,CDSVentaCabCODIGO.AsString,CDSVentaCabTIPOCPBTE.Value,
                                          CDSVentaDetCOTIZACION.AsFloat,
                                          CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat,
                                          Gravado,exento,Total,Iva,Margen,dscto,PFinal);

           if (FormTicketVta.Divide_iva=True) then
              Iva:=Iva/2;
            if (FormTicketVta.Calcula_iva_articulo=False) then
              Iva:=0;

            CDSVentaDetUNITARIO_GRAVADO.AsFloat:=Gravado;
            CDSVentaDetUNITARIO_EXENTO.AsFloat :=Exento;
            CDSVentaDetUNITARIO_TOTAL.AsFloat  :=Total;
            CDSVentaDetIVA_UNITARIO.AsFloat    :=Iva;
            CDSVentaDetMARGEN.ASFloat          :=Margen;
            CDSVentaDetDESCUENTO.ASFloat       :=Dscto;


            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

            if CDSVentaCabDESGLOZAIVA.Value='N' Then
              UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
          end
        else
          begin
            CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

            CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

            if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
              begin
                CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
                CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
              end
            else
              begin
                CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
                CDSVentaDetIVA_TOTAL.AsFloat        :=0;
              end;

            UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

            if CDSVentaCabDESGLOZAIVA.Value='N' Then
              UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

            CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));
          end;
      end
    else
      begin
        CDSVentaDetUNITARIO_GRAVADO.AsFloat := (CDSRtosDetUNITARIO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetUNITARIO_EXENTO.AsFloat  := (CDSRtosDetUNITARIO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetUNITARIO_TOTAL.AsFloat   := (CDSRtosDetUNITARIO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

        CDSVentaDetCOSTO_GRAVADO.AsFloat    := (CDSRtosDetCOSTO_GRAVADO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetCOSTO_EXENTO.AsFloat     := (CDSRtosDetCOSTO_EXENTO.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
        CDSVentaDetCOSTO_TOTAL.AsFloat      := (CDSRtosDetCOSTO_TOTAL.AsFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;

        if Trunc(CDSVentaDetIVA_TASA.AsFloat)<>0 Then
          begin
            CDSVentaDetIVA_UNITARIO.AsFloat     :=(CDSRtosDetIVA_UNITARIO.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
            CDSVentaDetIVA_TOTAL.AsFloat        :=(CDSRtosDetIVA_TOTAL.ASFloat/CDSVentaCabMONEDA_CPBTE_COTIZACION.AsFloat) * CDSVentaDetCOTIZACION.AsFloat;
          end
        else
          begin
            CDSVentaDetIVA_UNITARIO.AsFloat     :=0;
            CDSVentaDetIVA_TOTAL.AsFloat        :=0;
          end;

        UnitarioTotal := CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetUnitario_Exento.AsFloat;

        if CDSVentaCabDESGLOZAIVA.Value='N' Then
          UnitarioTotal:=CDSVentaDetUnitario_Gravado.AsFloat + CDSVentaDetIVA_UNITARIO.AsFloat;

        CDSVentaDetUnitario_TotalSetText(CDSVentaDetUnitario_Total,FloatToStr(UnitarioTotal));

        if CDSRtosDetAFECTA_STOCK.Value='S' then
            CDSVentaDetAFECTA_STOCK.Value:='N';
      end;
    QStockPrecio_Vta.Close;
    CDSVentaDet.Post;
  end;
end;

procedure TFormFacturarRemitos.DSBaseStateChange(Sender: TObject);
begin
 // inherited;

end;

procedure TFormFacturarRemitos.FormDestroy(Sender: TObject);
begin
  inherited;
  FormFacturarRemitos:=nil;
end;

procedure TFormFacturarRemitos.FormResize(Sender: TObject);
begin
  inherited;
  if FormFacturarRemitos<>nil Then
    if (FormFacturarRemitos.Width<>1095)  then
      FormFacturarRemitos.Width:=1095
end;

procedure TFormFacturarRemitos.MarcaRtoNoFactExecute(Sender: TObject);
var p:TBookmark;
begin
  inherited;
  if CDSRtosCab.RecordCount>0 Then
    begin
      p:=CDSRtosCab.GetBookmark;
      if (DMMain_FD.AnularRemitos=True) then
        begin
          DMMain_FD.fdcGestion.StartTransaction;
          try
            spNoFacturableFB.Close;
            spNoFacturableFB.ParamByName('id').Value:=CDSRtosCabID_RTO.Value;
            spNoFacturableFB.ExecProc;
            spNoFacturableFB.Close;
            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Fallo, no se pudo hacer la operación...');
          end;
          Buscar.Execute;
        end
      else
        ShowMessage('No está Autorizado para esta Operación... consulte con el Administrador');
      try
        CDSRtosCab.GotoBookmark(p);
      except
        if CDSRtosCab.RecordCount>0 Then
          CDSRtosCab.First;
      end;
      CDSRtosCab.FreeBookmark(p);
    end;
end;

procedure TFormFacturarRemitos.CDSRtosCabAfterOpen(DataSet: TDataSet);
begin
  inherited;
  CDSRtosCab.First;
  CDSRtosCab.DisableControls;
  while not CDSRtosCab.Eof do
    begin
      CDSRtosCab.Edit;
      CDSRtosCabSELECTED.Value:='S';
      CDSRtosCab.Next;
    end;
  CDSRtosCab.First;
  CDSRtosCab.EnableControls;

end;

procedure TFormFacturarRemitos.CDSRtosCabAfterScroll(DataSet: TDataSet);
begin
  inherited;
  CDSComprobante.Filtered:=False;
  CDSComprobante.Filter  :='';

  if chFiltraComprobantes.Checked then
    begin
      CDSInscripcion.Close;
      CDSInscripcion.Params.ParamByName('codigo').Value:=CDSRtosCabTIPOIVA.Value;
      CDSInscripcion.Open;
      CDSComprobante.Filter   :='desgloza_iva = '+''''+CDSInscripcionDISCRIMINAIVA.Value+'''';
      CDSComprobante.Filtered :=True;
    end;
  dbgRemitos.Refresh;
end;

procedure TFormFacturarRemitos.CDSRtosCabCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSRtosCabObs.Value:=CDSRtosCabOBSERVACION1.Value+#13+CDSRtosCabOBSERVACION2.Value;
end;

procedure TFormFacturarRemitos.CDSRtosCabMuestraComprobanteChange(
  Sender: TField);
begin
  inherited;
 // Sender.AsString:=Text;
  if CDSRtosCabID_FACTURAPORDEFECTO.AsString<>'' then
  begin
    CDSInscripcion.Close;
    CDSInscripcion.Params.ParamByName('Codigo').AsInteger := CDSRtosCabTIPOIVA.AsInteger;
    CDSInscripcion.Open;
    IF (CDSInscripcionCODIGO.AsString<>'') Then
      BEGIN
        if (CDSInscripcionDISCRIMINAIVA.Value='S') Then
          begin
            if ( CDSComprobanteDESGLOZA_IVA.Value='N') and (CDSComprobanteAFECTA_IVA.Value='S') then
              begin
                ShowMessage('Comprobante no permitido para la condicion de IVA del cliente...');
                CDSRtosCabID_FACTURAPORDEFECTO.Clear;
              end;
          end
        else
          if (CDSInscripcionDISCRIMINAIVA.Value='N') Then
            begin
              if ( CDSComprobanteDESGLOZA_IVA.Value='S') then
                begin
                  ShowMessage('Comprobante no permitido para la condicion de IVA del cliente...');
                  CDSRtosCabID_FACTURAPORDEFECTO.Clear;
                end;
            end;
        end;
    CDSInscripcion.Close;
  end;

end;



procedure TFormFacturarRemitos.CDSRtosDetCalcFields(DataSet: TDataSet);
begin
  inherited;
  CDSRtosDetTOTALCONIVA.AsFloat:=(CDSRtosDetTOTAL.AsFloat+CDSRtosDetIVA_TOTAL.ASFloat)*CDSRtosDetCOTIZACION.AsFloat;
end;

procedure TFormFacturarRemitos.chbUsarCtroCostoClick(Sender: TObject);
begin
  inherited;
  CDSComprobante.Close;
  CDSComprobante.Params. ParamByName('Sucursal').Value:=cbCentroCosto.KeyValue;
  CDSComprobante.Open;
end;

procedure TFormFacturarRemitos.rxcDepositoEnter(Sender: TObject);
begin
  inherited;
  CDSDepositos.Close;
//  QDeposito.ParamByName('sucursal').Value:=rxcSucursal.KeyValue;
  CDSDepositos.Open;
end;

procedure TFormFacturarRemitos.rxcSucursalClick(Sender: TObject);
begin
  inherited;
  Buscar.Execute;
  cbCentroCosto.KeyValue:=rxcSucursal.KeyValue;
end;

procedure TFormFacturarRemitos.sbClaveElectClick(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(self);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    editPath.Text :=FormBuscaDirectorio.Directorio
  else
    editPath.Text :='';
end;

procedure TFormFacturarRemitos.VerRtoExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormRemitos)) then
    FormRemitos:=TformRemitos.Create(Application);
  FormRemitos.DatoNew:=CDSRtosCabID_RTO.AsString;
  FormRemitos.TipoCpbte:='RE';
  FormRemitos.Recuperar.Execute;
  FormRemitos.Show;
  FormRemitos.BringToFront;
end;

procedure TFormFacturarRemitos.ConfiguraIniExecute(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormActFacturacionRtos)) then
    FormActFacturacionRtos:=TFormActFacturacionRtos.Create(Self);
  FormActFacturacionRtos.ShowModal;  
  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'FacturaRtos.ini');
  ArtGravado := ArchivoIni.ReadString('gravados','codigo','');
  ArtExento  := ArchivoIni.ReadString('exento','codigo','');
  ArchivoIni.Free;

end;

procedure TFormFacturarRemitos.ConfirmaExecute(Sender: TObject);
var EstadoIVA:String;
begin
  if Not(chFacturaTodos.Checked) Then
    begin
      if Not(CDSRtosCab.IsEmpty) Then
        begin
          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(self);
          EstadoIva:=FormCpbte_2.DiscriminaIva; // lo guardo para despues reasignar, cuand genero la factura
                                                // pongo que discrime el IVA por que me hacia un efecto de agregado
                                                // me suma ael IVA dos veces. Para que mantegan la propiedad de que si quiere
                                                // ver la factura con IVA incluido lo guardo y lo asigno de nuevo
                                                // esto es por Gomeria Centenario.... que hincha pelota....
          FormCpbte_2.VerificaCambioPrecio:='N';
          Facturar.Execute;
          if FormCpbte_2.dsBase.State=dsInsert then
            begin
              FormCpbte_2.DiscriminaIva:=EstadoIva;
              FormCpbte_2.Show;
              FormCpbte_2.DBGrillaDetalle.SetFocus;
            end;
        end
      else
        ShowMessage('No hay Remitos para Facturar....');
    end;
  if (chFacturaTodos.Checked) Then
    begin
      CDSRtosCab.First;
      while not(CDSRtosCab.Eof) Do
        begin
          if Not(Assigned(FormCpbte_2)) Then
            FormCpbte_2:=TFormCpbte_2.Create(self);
          EstadoIva:=FormCpbte_2.DiscriminaIva; // lo guardo para despues reasignar, cuand genero la factura
          FormCpbte_2.VerificaCambioPrecio:='N';
          if CDSRtosCabSELECTED.Value='S' Then
            begin
              Facturar.Execute;
              Formcpbte_2.Confirma.Execute;
              FormCpbte_2.DiscriminaIva:=EstadoIva;
              if chPDF.Checked then
                FormCpbte_2.Exportar_PDF(editPath.Text+'\',False)
            end;
          CDSRtosCab.Next;
        end;
    end;

end;

procedure TFormFacturarRemitos.FormActivate(Sender: TObject);
begin
  inherited;
  If (rxcSucursal.Value<>'') and (rxcDeposito.Value<>'') Then
    Buscar.Execute;
end;

function TFormFacturarRemitos.dbgRemitosCheckIfBooleanField(Grid: TJvDBGrid;
  Field: TField; var StringForTrue, StringForFalse: string): Boolean;
begin
  inherited;
  result         := Field =  CDSRtosCabSELECTED;
  StringForTrue  := 'S';
  StringForFalse := 'N';
end;

procedure TFormFacturarRemitos.dbgRemitosColEnter(Sender: TObject);
begin
  inherited;
  if dbgRemitos.SelectedIndex<=5 then
    dbgRemitos.SelectedIndex:=6;
end;

procedure TFormFacturarRemitos.dbgRemitosDblClick(Sender: TObject);
begin
  inherited;
  Confirma.Execute;
end;

procedure TFormFacturarRemitos.dbgRemitosEnter(Sender: TObject);
begin
  inherited;
  if dbgRemitos.SelectedIndex<=5 then
    dbgRemitos.SelectedIndex:=6;
end;

procedure TFormFacturarRemitos.dbgRemitosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (Key=VK_DELETE) and (dbgRemitos.SelectedIndex=6) then
    begin
      CDSRtosCab.Edit;
      CDSRtosCabID_FACTURAPORDEFECTO.Clear;
      CDSRtosCabMuestraComprobante.Clear;
      CDSRtosCab.Post;
    end;

  
end;

procedure TFormFacturarRemitos.dbgRemitosMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
var coord:TGridCoord;
begin
  inherited;
  if (chVerContenido.Checked) then
    begin
      lbPos.Caption:='('+intToStr(x)+','+inttoStr(y)+')';
      dbgRemitos.ShowHint:=False;
      if ((coord.x >= 0) and ( (x > 100) and (x < 250)))  Then
        begin
          TGridHack(dbgRemitos).MouseDown(mbLeft,[],x,y);
          CDSRtosDet.Close;
          CDSRtosDet.Params.ParamByName('id').Value := CDSRtosCabID_RTO.Value;
          CDSRtosDet.Open;
          CDSRtosDet.First;
          dbgRemitos.Hint:='';
          dbgRemitos.Hint:='Detalle del Pedido '+ #13 +
                           '---------------------------'+#13;
          CDSRtosDet.First;
          while not(CDSRtosDet.Eof) do
            begin
              dbgRemitos.Hint:= dbgRemitos.Hint+CDSRtosDetDETALLE.Value+#13;
              CDSRtosDet.Next;
            end;
          CDSRtosDet.Close;
          dbgRemitos.ShowHint:=True;
        end;
    end;
end;


procedure TFormFacturarRemitos.dbgRemitosTitleClick(Column: TColumn);
var i:byte;
Campo:String;
begin
  try
    Campo := Column.FieldName;
    with dbgRemitos.DataSource.DataSet as TClientDataSet do
      if IndexFieldNames <> Campo then
        IndexFieldNames := Campo // Ascendente
      else
      begin
        AddIndex(Campo, Campo, [], Campo); // Descendente
        IndexName := Campo;
      end;
  except // Para que no salte una excepción si la columna es un campo calculado.
  end;

 // CDSRtosCab.IndexFieldNames:=Column.FieldName;
  for i:=0 to  dbgRemitos.Columns.Count-1 DO
    dbgRemitos.Columns[I].Color:=clWindow;
  dbgRemitos.Columns[Column.Index].Color:=clInfobk;
end;

procedure TFormFacturarRemitos.FacturarCtdoExecute(Sender: TObject);
var EstadoLista:Boolean;
begin
  inherited;
  EstadoLista             := DMMain_FD.GetControlaLista;
  //DMMain_FD.ControlaLista := False;

  FormCpbteCtdo_2.Agregar.Execute;
  AgregaCabeceraCtdo;
  CDSRtosDet.Close;
  CDSRtosDet.Params.ParamByName('id').Value:=CDSRtosCabID_RTO.Value;
  CDSRtosDet.Open;
  CDSRtosDet.First;
  while Not(CDSRtosDet.Eof) Do // Ingreso el detalle
    begin
      if (CDSRtosDetTOTAL.AsFloat >0 ) then
        AgregaDetalleCtdo;
      CDSRtosDet.Next;
    end;
  DatosVentasCtdo.CDSVentaCabCON_GTIA_EXTENDIDA.Value:=CDSRtosCabCON_GTIA_EXTENDIDA.Value;
 // DMMain_FD.ControlaLista:=EstadoLista;
end;

procedure TFormFacturarRemitos.AnularRemitoExecute(Sender: TObject);
begin
  inherited;
  if (DMMain_FD.AnularRemitos=True) then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spAnulaRto.Close;
        spAnulaRto.ParamByName('id').Value:=CDSRtosCabID_RTO.Value;
        spAnulaRto.ExecProc;
        spAnulaRto.Close;
        DMMain_FD.LogFileFD(0,2,'Anulación Rto: '+CDSRtosCabNROCPBTE.Value+' Cliente: '+CDSRtosCabRAZONSOCIAL.Value+
                           ' Importe: '+FormatFloat('0.00',CDSRtosCabTOTAL.AsFloat),
                           'RTOS');

        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Fallo, no se pudo hacer la operación...');
      end;
      Buscar.Execute;
    end
  else
    ShowMessage('No está Autorizado para esta Operación... consulte con el Administrador');
end;

procedure TFormFacturarRemitos.FactenTkFc1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscadorTipoCpbte)) then
     FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
  FormBuscadorTipoCpbte.TipoCpbte1:='TK';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := rxcSucursal.KeyValue;
  FormBuscadorTipoCpbte.DiscriminaIVA := CDSRtosCabDESGLOZAIVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
  if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
    begin
      if Not(Assigned(FormTicketVta)) Then
        FormTicketVta:=TFormTicketVta.Create(self);
      FacturarEnTkFc.Execute;
      FormTicketVta.Show;
      FormTicketVta.DBGrillaDetalle.SetFocus;
    end;
end;

procedure TFormFacturarRemitos.FacturarCtdo1Click(Sender: TObject);
begin
  inherited;
//   if Not(CDSRtosCab.IsEmpty) Then
//    begin
//      if Not(Assigned(FormCpbteCtdo_2)) Then
//        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
//      FacturarCtdo.Execute;
//      FormCpbtectdo_2.Show;
//      FormCpbtectdo_2.DBGrillaDetalle.SetFocus;
//    end
//  else
//    ShowMessage('No hay Remitos para Facturar....');


  if Not(Assigned(FormBuscadorTipoCpbte)) then
     FormBuscadorTipoCpbte:=TFormBuscadorTipoCpbte.Create(Application);
  FormBuscadorTipoCpbte.TipoCpbte1:='FO';
  FormBuscadorTipoCpbte.TipoCpbte2:='';
  FormBuscadorTipoCpbte.TipoCpbte3:='';
  FormBuscadorTipoCpbte.CV        :='V';
  FormBuscadorTipoCpbte.Sucursal      := rxcSucursal.KeyValue;
  FormBuscadorTipoCpbte.DiscriminaIVA := CDSRtosCabDESGLOZAIVA.Value;
  FormBuscadorTipoCpbte.ShowModal;
  SucursalComprobante:=FormBuscadorTipoCpbte.Sucursal;
  IDComprobante      :=FormBuscadorTipoCpbte.Id_Cpbte;
  if (FormBuscadorTipoCpbte.ModalResult=mrOk) Then
    begin
   //   if Not(Assigned(FormBuscadorDepositos)) then
//        FormBuscadorDepositos:=TFormBuscadorDepositos.Create(Application);
//      FormBuscadorDepositos.Deposito:= rxcDeposito.KeyValue;
//      FormBuscadorDepositos.ShowModal;
//      if (FormBuscadorDepositos.ModalResult=mrok) Then
//        begin
//          Deposito    :=FormBuscadorDepositos.Deposito;
//          DatoNew     :=IntToStr(CDSRtosCabID_RTO.Value);
//          TipoCpbte   :=CDSRtosCabTIPOCPBTE.Value;

      if Not(Assigned(FormCpbteCtdo_2)) Then
        FormCpbteCtdo_2:=TFormCpbteCtdo_2.Create(self);
      FacturarCtdo.Execute;
      FormCpbtectdo_2.Show;
      FormCpbtectdo_2.DBGrillaDetalle.SetFocus;
    end;



end;

end.
