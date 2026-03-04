unit DMNotaVenta;

interface

uses
  SysUtils, Classes, Provider, DB, DBClient,
  IBGenerator,Dialogs,Controls,Variants, FMTBcd, SqlExpr, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TDatosNotaVenta = class(TDataModule)
    CDSNVCab: TClientDataSet;
    CDSNVDet: TClientDataSet;
    DSPNVCab: TDataSetProvider;
    DSPNVDet: TDataSetProvider;
    DSNVDet: TDataSource;
    DSPInscripcion: TDataSetProvider;
    ibgIdcab: TIBGenerator;
    ibgIdDet: TIBGenerator;
    CDSNVCabXML: TClientDataSet;
    CDSNVDetXML: TClientDataSet;
    DSRemitos: TDataSource;
    QNVCab: TFDQuery;
    QNVCabID: TIntegerField;
    QNVCabNROCPBTE: TStringField;
    QNVCabSUBNRO: TStringField;
    QNVCabCODIGO: TStringField;
    QNVCabSUCURSAL: TIntegerField;
    QNVCabLDR: TIntegerField;
    QNVCabNOMBRE: TStringField;
    QNVCabRAZONSOCIAL: TStringField;
    QNVCabDIRECCION: TStringField;
    QNVCabCPOSTAL: TStringField;
    QNVCabLOCALIDAD: TStringField;
    QNVCabVENDEDOR: TStringField;
    QNVCabTIPOIVA: TIntegerField;
    QNVCabCUIT: TStringField;
    QNVCabDEPOSITO: TIntegerField;
    QNVCabLISTAPRECIO: TIntegerField;
    QNVCabFECHAPEDIDO: TSQLTimeStampField;
    QNVCabCONDICIONVTA: TIntegerField;
    QNVCabIMPRESO: TStringField;
    QNVCabOBSERVACION1: TStringField;
    QNVCabOBSERVACION2: TStringField;
    QNVCabUSUARIO: TStringField;
    QNVCabESTADO: TStringField;
    QNVCabPRESUPUESTO_ID: TIntegerField;
    QNVCabPRESUPUESTO_NROCPBTE: TStringField;
    QNVCabDSTO: TFloatField;
    QNVCabMUESTRALDR: TStringField;
    QNVCabMUESTRADEPOSITO: TStringField;
    QNVCabMUESTRAVENDEDOR: TStringField;
    QNVCabMUESTRASUCURSAL: TStringField;
    QNVCabMUESTRACONVENTA: TStringField;
    QNVDet: TFDQuery;
    QNVDetID: TIntegerField;
    QNVDetID_CAB: TIntegerField;
    QNVDetNROCPBTE: TStringField;
    QNVDetRENGLON: TFloatField;
    QNVDetFECHA: TSQLTimeStampField;
    QNVDetCODIGOARTICULO: TStringField;
    QNVDetDETALLE: TStringField;
    QNVDetUNIDAD: TStringField;
    QNVDetCANTIDAD_PEDIDIA: TFloatField;
    QNVDetCANTIDAD_ENTREGADA: TFloatField;
    QNVDetCANTIDAD_FALTANTE: TFloatField;
    QNVDetUNITARIO_TOTAL: TFloatField;
    QNVDetUNITARIO_GRAVADO: TFloatField;
    QNVDetUNITARIO_EXENTO: TFloatField;
    QNVDetMODO_GRAVAMEN: TStringField;
    QNVDetIVA_TASA: TFloatField;
    QNVDetTIPOIVA_TASA: TIntegerField;
    QNVDetIVA_SOBRETASA: TFloatField;
    QNVDetTIPOIVA_SOBRETASA: TIntegerField;
    QNVDetCOSTO_GRAVADO: TFloatField;
    QNVDetCOSTO_EXENTO: TFloatField;
    QNVDetCOSTO_TOTAL: TFloatField;
    QNVDetDESCUENTO: TFloatField;
    QNVDetTOTAL: TFloatField;
    QNVDetDEPOSITO: TIntegerField;
    QNVDetLOTE: TIntegerField;
    QNVDetEAN: TStringField;
    QNVDetOBSERVACION: TStringField;
    QNVDetPOSICION: TStringField;
    QNVDetLOTECERRADO: TStringField;
    QNVDetRTO_ID: TIntegerField;
    QNVDetRTO_NROCPBTE: TStringField;
    CDSNVCabID: TIntegerField;
    CDSNVCabNROCPBTE: TStringField;
    CDSNVCabSUBNRO: TStringField;
    CDSNVCabCODIGO: TStringField;
    CDSNVCabSUCURSAL: TIntegerField;
    CDSNVCabLDR: TIntegerField;
    CDSNVCabNOMBRE: TStringField;
    CDSNVCabRAZONSOCIAL: TStringField;
    CDSNVCabDIRECCION: TStringField;
    CDSNVCabCPOSTAL: TStringField;
    CDSNVCabLOCALIDAD: TStringField;
    CDSNVCabVENDEDOR: TStringField;
    CDSNVCabTIPOIVA: TIntegerField;
    CDSNVCabCUIT: TStringField;
    CDSNVCabDEPOSITO: TIntegerField;
    CDSNVCabLISTAPRECIO: TIntegerField;
    CDSNVCabFECHAPEDIDO: TSQLTimeStampField;
    CDSNVCabCONDICIONVTA: TIntegerField;
    CDSNVCabIMPRESO: TStringField;
    CDSNVCabOBSERVACION1: TStringField;
    CDSNVCabOBSERVACION2: TStringField;
    CDSNVCabUSUARIO: TStringField;
    CDSNVCabESTADO: TStringField;
    CDSNVCabPRESUPUESTO_ID: TIntegerField;
    CDSNVCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSNVCabDSTO: TFloatField;
    CDSNVCabMUESTRALDR: TStringField;
    CDSNVCabMUESTRADEPOSITO: TStringField;
    CDSNVCabMUESTRAVENDEDOR: TStringField;
    CDSNVCabMUESTRASUCURSAL: TStringField;
    CDSNVCabMUESTRACONVENTA: TStringField;
    CDSNVDetID: TIntegerField;
    CDSNVDetID_CAB: TIntegerField;
    CDSNVDetNROCPBTE: TStringField;
    CDSNVDetRENGLON: TFloatField;
    CDSNVDetFECHA: TSQLTimeStampField;
    CDSNVDetCODIGOARTICULO: TStringField;
    CDSNVDetDETALLE: TStringField;
    CDSNVDetUNIDAD: TStringField;
    CDSNVDetCANTIDAD_PEDIDIA: TFloatField;
    CDSNVDetCANTIDAD_ENTREGADA: TFloatField;
    CDSNVDetCANTIDAD_FALTANTE: TFloatField;
    CDSNVDetUNITARIO_TOTAL: TFloatField;
    CDSNVDetUNITARIO_GRAVADO: TFloatField;
    CDSNVDetUNITARIO_EXENTO: TFloatField;
    CDSNVDetMODO_GRAVAMEN: TStringField;
    CDSNVDetIVA_TASA: TFloatField;
    CDSNVDetTIPOIVA_TASA: TIntegerField;
    CDSNVDetIVA_SOBRETASA: TFloatField;
    CDSNVDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSNVDetCOSTO_GRAVADO: TFloatField;
    CDSNVDetCOSTO_EXENTO: TFloatField;
    CDSNVDetCOSTO_TOTAL: TFloatField;
    CDSNVDetDESCUENTO: TFloatField;
    CDSNVDetTOTAL: TFloatField;
    CDSNVDetDEPOSITO: TIntegerField;
    CDSNVDetLOTE: TIntegerField;
    CDSNVDetEAN: TStringField;
    CDSNVDetOBSERVACION: TStringField;
    CDSNVDetPOSICION: TStringField;
    CDSNVDetLOTECERRADO: TStringField;
    CDSNVDetRTO_ID: TIntegerField;
    CDSNVDetRTO_NROCPBTE: TStringField;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesRAZON_SOCIAL: TStringField;
    QClientesDIRECCION_PARTICULAR: TStringField;
    QClientesDIRECCION_COMERCIAL: TStringField;
    QClientesTELEFONO_PARTICULAR: TStringField;
    QClientesTELEFONO_COMERCIAL_1: TStringField;
    QClientesTELEFONO_COMERCIAL_2: TStringField;
    QClientesTELEFONO_CELULAR: TStringField;
    QClientesID_COD_POSTAL: TIntegerField;
    QClientesCPOSTAL: TStringField;
    QClientesLOCALIDAD: TStringField;
    QClientesCONDICION_IVA: TIntegerField;
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesTIPOABONO: TStringField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QStock: TFDQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockDETALLE_STK_ADICIONAL: TStringField;
    QStockCODIGO_BARRAS: TStringField;
    QStockRUBRO_STK: TStringField;
    QStockSUBRUBRO_STK: TStringField;
    QStockMARCA_STK: TStringField;
    QStockTASA_IVA: TIntegerField;
    QStockSOBRETASA_IVA: TIntegerField;
    QStockCOSTO_EXENTO_STK: TFloatField;
    QStockCOSTO_GRAVADO_STK: TFloatField;
    QStockCOSTO_TOTAL_STK: TFloatField;
    QStockREEMPLAZO_STK: TStringField;
    QIva: TFDQuery;
    QIvaCODIGO: TIntegerField;
    QIvaDESCRIPCION: TStringField;
    QIvaTASA: TFloatField;
    QIvaCOLUMNA: TSmallintField;
    CDSInscripcion: TClientDataSet;
    CDSInscripcionCODIGO: TIntegerField;
    CDSInscripcionDETALLE: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIVA: TStringField;
    CDSInscripcionAPLICAPERCEPCIONIIBB: TStringField;
    CDSInscripcionCOBRASOBRETASA: TStringField;
    CDSInscripcionDISCRIMINAIVA: TStringField;
    QPrimerLdr: TFDQuery;
    QPrimerConVta: TFDQuery;
    QCondVentaDefecto: TFDQuery;
    QBuscaListaPrecio: TFDQuery;
    QBuscaListaPrecioID: TIntegerField;
    QRemito: TFDQuery;
    CDSBarra: TClientDataSet;
    DSPBarra: TDataSetProvider;
    QBarra: TFDQuery;
    CDSBarraCODIGOBARRA: TStringField;
    QStockPOSICION: TStringField;
    QStockMODO_GRAVAMEN: TStringField;
    QStockUNIDAD: TStringField;
    QStockFIJACION_PRECIO_GRAVADO: TFloatField;
    QStockFIJACION_PRECIO_EXENTO: TFloatField;
    QStockFIJACION_PRECIO_TOTAL: TFloatField;
    CDSRemitos: TClientDataSet;
    DSPRemitos: TDataSetProvider;
    CDSRemitosID_RTO: TIntegerField;
    CDSRemitosFECHAVTA: TSQLTimeStampField;
    CDSRemitosNROCPBTE: TStringField;
    QBuscaCodigoBarra: TFDQuery;
    DSPPresuDet: TDataSetProvider;
    CDSPresuDet: TClientDataSet;
    CDSPresuDetID: TIntegerField;
    CDSPresuDetID_CABPRES: TIntegerField;
    CDSPresuDetCODIGOARTICULO: TStringField;
    CDSPresuDetDETALLE: TStringField;
    CDSPresuDetUNIDAD: TStringField;
    CDSPresuDetTIPOCPBTE: TStringField;
    CDSPresuDetNROCPBTE: TStringField;
    CDSPresuDetMODO_GRAVAMEN: TStringField;
    CDSPresuDetAFECTA_STOCK: TStringField;
    CDSPresuDetCLASECPBTE: TStringField;
    CDSPresuDetFECHAVTA: TSQLTimeStampField;
    CDSPresuDetCANTIDAD: TFloatField;
    CDSPresuDetDESGLOZAIVA: TStringField;
    CDSPresuDetIVA_TASA: TFloatField;
    CDSPresuDetTIPOIVA_TASA: TIntegerField;
    CDSPresuDetIVA_SOBRETASA: TFloatField;
    CDSPresuDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSPresuDetDESCUENTO: TFloatField;
    CDSPresuDetTOTAL: TFloatField;
    CDSPresuDetSUCURSAL: TIntegerField;
    CDSPresuDetDEPOSITO: TIntegerField;
    CDSPresuDetCALCULA_SOBRETASA: TStringField;
    CDSPresuDetID_MONEDA: TIntegerField;
    CDSPresuDetCOTIZACION: TFloatField;
    CDSPresuDetACEPTADO: TStringField;
    CDSPresuDetNOTAS: TStringField;
    CDSPresuDetCPBTESALIDA_ID: TIntegerField;
    CDSPresuDetCPBTESALIDA_TIPO: TStringField;
    CDSPresuDetCPBTESALIDA_CLASE: TStringField;
    CDSPresuDetCPBTESALIDA_NROCPBTE: TStringField;
    CDSPresuDetRENGLON: TFloatField;
    CDSPresuDetMARGEN: TFloatField;
    CDSPresuDetTOTAL_GRAVADO: TFloatField;
    CDSPresuDetTOTAL_EXENTO: TFloatField;
    CDSPresuDetIVA_TOTAL: TFloatField;
    CDSPresuDetCOSTO_EXENTO: TFloatField;
    CDSPresuDetCOSTO_GRAVADO: TFloatField;
    CDSPresuDetCOSTO_TOTAL: TFloatField;
    CDSPresuDetUNITARIO_GRAVADO: TFloatField;
    CDSPresuDetIVA_UNITARIO: TFloatField;
    CDSPresuDetUNITARIO_EXENTO: TFloatField;
    CDSPresuDetUNITARIO_TOTAL: TFloatField;
    CDSPresuDetMUESTRASIGNO: TStringField;
    QNVDetPESO: TFloatField;
    CDSNVDetPESO: TFloatField;
    procedure CDSNVCabCODIGOSetText(Sender: TField; const Text: string);
    procedure CDSNVCabLDRSetText(Sender: TField; const Text: string);
    procedure CDSNVCabCONDICIONVTASetText(Sender: TField; const Text: string);
    procedure CDSNVCabVENDEDORSetText(Sender: TField; const Text: string);
    procedure CDSNVCabNewRecord(DataSet: TDataSet);
    procedure CDSNVDetNewRecord(DataSet: TDataSet);
    procedure CDSNVDetCODIGOARTICULOSetText(Sender: TField; const Text: string);
    procedure CDSNVDetCANTIDAD_ENTREGADASetText(Sender: TField;
      const Text: string);
    procedure CDSNVDetBeforePost(DataSet: TDataSet);
    procedure CDSNVDetAfterPost(DataSet: TDataSet);
    procedure CDSNVDetBeforeDelete(DataSet: TDataSet);
    procedure CDSNVDetUNITARIO_TOTALSetText(Sender: TField; const Text: string);
    procedure CDSNVDetLOTESetText(Sender: TField; const Text: string);
    procedure CDSNVDetAfterInsert(DataSet: TDataSet);
    procedure CDSNVDetBeforeEdit(DataSet: TDataSet);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
   FUNCTION AsignarCliente(Dato: STRING): Boolean;
   FUNCTION AsignarArticulo(Dato: STRING): Boolean;
   FUNCTION SumarEntregados: Boolean;
   procedure ArmarLotes;
   function HayParaFacturar:Boolean;
   function FaltaLote:Boolean;
   function HayFaltantes:Boolean;
  end;

var
  DatosNotaVenta: TDatosNotaVenta;

implementation

uses ULogin, UABMLineaNotaVta,UDMain_FD, UNotaVenta;

{$R *.dfm}

function TDatosNotaVenta.hayParafacturar:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  p:=CDSNVDet.GetBookmark;
  CDSNVDet.DisableControls;
  CDSNVDet.First;
  while not(CDSNVDet.Eof) do
    begin
      Aux:=Aux+CDSNVDetCANTIDAD_ENTREGADA.AsFloat;
      CDSNVDet.Next;
    end;
  CDSNVDet.GotoBookmark(p);
  CDSNVDet.FreeBookmark(p);
  CDSNVDet.EnableControls;
  if Aux>0  then
    Result:=true
  else
    Result:=False;
end;

function TDatosNotaVenta.HayFaltantes:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  p:=CDSNVDet.GetBookmark;
  CDSNVDet.DisableControls;
  CDSNVDet.First;
  while not(CDSNVDet.Eof) do
    begin
      Aux:=Aux+CDSNVDetCANTIDAD_FALTANTE.AsFloat;
      CDSNVDet.Next;
    end;
  CDSNVDet.GotoBookmark(p);
  CDSNVDet.FreeBookmark(p);
  CDSNVDet.EnableControls;
  if Aux>0  then
    Result:=true
  else
    Result:=False;
end;

function TDatosNotaVenta.FaltaLote:Boolean;
var P:TBookmark;
Aux:Real;
begin
  Aux:=0;
  Result:=False;
  p:=CDSNVDet.GetBookmark;
  CDSNVDet.DisableControls;
  CDSNVDet.First;
  while (not(CDSNVDet.Eof)) do
    begin
      if ((CDSNVDetLOTE.AsString='') or (CDSNVDetLOTE.Value<0)) and (CDSNVDetCANTIDAD_ENTREGADA.AsFloat>0) then
        begin result:=True;CDSNVDet.Last;end;
      CDSNVDet.Next;
    end;
  CDSNVDet.GotoBookmark(p);
  CDSNVDet.FreeBookmark(p);
  CDSNVDet.EnableControls;
end;


procedure TDatosNotaVenta.ArmarLotes;
var P:TBookmark;
Pos:Integer;
begin
  FormNotaVta.ListaLote.Clear;
  FormNotaVta.ListaLote.Sort;
  FormNotaVta.ListaLote.Sorted:=True;
  FormNotaVta.cbLotes.Items.Clear;
  FormNotaVta.ListaLote.Add('-');
  p:=CDSNVDet.GetBookmark;
  CDSNVDet.DisableControls;
  CDSNVDet.First;
  while not(CDSNVDet.Eof) do
    begin
      if (Trim(CDSNVDetLOTE.AsString)<>'') and
         (FormNotaVta.ListaLote.Find(Trim(CDSNVDetLOTE.AsString),Pos)=False) then
        FormNotaVta.ListaLote.Add( Trim(CDSNVDetLOTE.AsString));
      CDSNVDet.Next;
    end;
  FormNotaVta.cbLotes.Items:=FormNotaVta.ListaLote;
  CDSNVDet.GotoBookmark(p);
  CDSNVDet.FreeBookmark(p);
  CDSNVDet.EnableControls;
end;

FUNCTION TDatosNotaVenta.SumarEntregados: Boolean;
var P:TBookmark;
Aux,Aux2:Real;
begin
  FormNotaVta.Entregado:=False;
  FormNotaVta.Cumplido :=False;

  Aux:=0;
  p:=CDSNVDet.GetBookmark;
  CDSNVDet.DisableControls;
  CDSNVDet.First;
  while not(CDSNVDet.Eof) do
    begin
      Aux :=Aux+CDSNVDetCANTIDAD_ENTREGADA.AsFloat;
      Aux2:=Aux2+CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
      CDSNVDet.Next;
    end;
  CDSNVDet.GotoBookmark(p);
  CDSNVDet.FreeBookmark(p);
  CDSNVDet.EnableControls;
  if Aux>0  then
    FormNotaVta.Entregado:=True;
  if Int(Aux*100) = Int(Aux2*100) then
    FormNotaVta.Cumplido:=True;

 end;


FUNCTION TDatosNotaVenta.AsignarCliente(Dato: STRING): Boolean;
Var Escape:Char;
BEGIN
  Escape:=#27;
  QClientes.Close;
  QClientes.Params.ParamByName('Codigo').Value:=Dato;
  QClientes.Open;
  IF NOT (QClientes.Eof) THEN
    BEGIN
      CDSNVCabNOMBRE.AsString     := QClientesNombre.AsString;
      CDSNVCabRAZONSOCIAL.AsString:= QClientesRazon_Social.ASString;
      CDSNVCabCUIT.AsString       := QClientesNro_de_Cuit.AsString;
      CDSNVCabDIRECCION.AsString  := QClientesDireccion_Comercial.AsString;
      CDSNVCabTIPOIVA.AsInteger   := QClientesCondicion_Iva.Value;
      CDSNVCabCPOSTAL.AsString    := QClientesCPostal.AsString;
      CDSNVCabLOCALIDAD.AsString  := QClientesLocalidad.AsString;
      result:=True;
    END
  ELSE
    Result:=False;

END;


FUNCTION  TDatosNotaVenta.ASignarArticulo(Dato: STRING): Boolean;
BEGIN
  IF CDSNVDet.State = dsBrowse THEN
    CDSNVDet.Edit;
  BEGIN
    QStock.Close;
    QStock.Params.ParamByName('Codigo').Value:=Dato;
    QStock.Open;
    IF NOT (QStock.IsEmpty) THEN
      BEGIN
        CDSNVDetPOSICION.Value          :=QStockPOSICION.Value;
        CDSNVDetDETALLE.Value           :=QStockDETALLE_STK.Value;
        CDSNVDetUNIDAD.Value            :=QStockUNIDAD.Value;
        CDSNVDetMODO_GRAVAMEN.Value     :=QStockMODO_GRAVAMEN.Value;
        CDSNVDetTIPOIVA_TASA.Value      :=QStockTASA_IVA.Value;
        CDSNVDetTIPOIVA_SOBRETASA.Value :=QStockSOBRETASA_IVA.Value;
         // traigo los porcentajes de Iva
        QIva.Close;
        QIva.ParamByName('codigo').Value:= CDSNVDetTIPOIVA_TASA.Value;
        QIva.Open;
        IF NOT (QIva.IsEmpty) THEN
          CDSNVDetIVA_TASA.Value:=QIvaTASA.Value;
        QIva.Close;
        QIva.ParamByName('codigo').Value:= CDSNVDetTIPOIVA_SOBRETASA.Value;
        QIva.Open;
        IF NOT (QIva.IsEmpty) THEN
          CDSNVDetIVA_SobreTasa.Value := QIvaTASA.Value;
        CDSNVDetCOSTO_GRAVADO.AsFloat := QStockFIJACION_PRECIO_GRAVADO.AsFloat;
        CDSNVDetCOSTO_EXENTO.AsFloat  := QStockFIJACION_PRECIO_EXENTO.AsFloat;
        CDSNVDetCOSTO_GRAVADO.AsFloat := QStockFIJACION_PRECIO_GRAVADO.AsFloat + QStockFIJACION_PRECIO_EXENTO.AsFloat;
        CDSBarra.Close;
        CDSBarra.Params.ParamByName('codigo').Value:=Dato;
        CDSBarra.Open;
        CDSNVDetEAN.Value:=CDSBarra.Fields[0].AsString;
        CDSBarra.Close;
        Result:=True;
      END
    ELSE
       Result:=False;
    END;
END;


procedure TDatosNotaVenta.CDSNVCabCODIGOSetText(Sender: TField;
  const Text: string);
VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.AsString:= '';
          FormNotaVta.RxCCodigo.SetFocus;
        END;
      // agrego esta linea para que no haga un efecto visual falso del dato entrado
      // si no se veia sin 00000 adelante....
      FormNotaVta.RxCCodigo.Text:=Aux;
    end;
END;
procedure TDatosNotaVenta.CDSNVCabCONDICIONVTASetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TDatosNotaVenta.CDSNVCabLDRSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TDatosNotaVenta.CDSNVCabNewRecord(DataSet: TDataSet);
begin
  CDSNVCabID.Value :=ibgIdcab.IncrementFD(1);
  FormNotaVta.QUltimoCodigo2.Close;
  FormNotaVta.QUltimoCodigo2.Open;
  if FormNotaVta.QUltimoCodigo2.Fields[0].AsString='' then
    CDSNVCabNROCPBTE.Value:='00000001'
  else
    CDSNVCabNROCPBTE.Value:=Copy('00000000',1,8-length(IntToStr(FormNotaVta.QUltimoCodigo2.Fields[0].AsInteger+1)))+
                            intToStr(FormNotaVta.QUltimoCodigo2.fields[0].AsInteger+1);
  FormNotaVta.QUltimoCodigo2.Close;
  CDSNVCabSUBNRO.Value := '00';
  CDSNVCabESTADO.Value := 'N';
  CDSNVCabDSTO.AsFloat := 0;
end;


procedure TDatosNotaVenta.CDSNVCabVENDEDORSetText(Sender: TField;
  const Text: string);
begin
  Sender.AsString:=Text;
end;

procedure TDatosNotaVenta.CDSNVDetAfterInsert(DataSet: TDataSet);
begin
  if (CDSNVCab.State in [dsEdit])  then
    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(Self);
//      FormLogin.ShowModal;
      if (FormNotaVta.Autorizado=False) then
        begin
          CDSNVDet.Cancel;
          SysUtils.Abort;
        end
      else
        begin
          if not(Assigned(FormABMLineaNotavta)) then
            FormABMLineaNotavta:=TFormABMLineaNotavta.Create(FormNotaVta);
          FormABMLineaNotavta.Modo:='A';
          FormABMLineaNotavta.Precio   := DatosNotaVenta.CDSNVDetUNITARIO_TOTAL.AsFloat;
          FormABMLineaNotavta.Lista    := DMMain_FD.ListaPorDefecto(-1);
          FormABMLineaNotavta.ShowModal;
          if (FormABMLineaNotavta.ModalResult=mrOk) and (FormABMLineaNotavta.Codigo<>'') then
            begin
              DatosNotaVenta.CDSNVDet.Edit;
              DatosNotaVenta.CDSNVDetCODIGOARTICULOSetText(DatosNotaVenta.CDSNVDetCODIGOARTICULO,FormABMLineaNotavta.Codigo);
              DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat   := FormABMLineaNotavta.Cantidad;
              DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat;
              DatosNotaVenta.CDSNVDetCANTIDAD_FALTANTE.AsFloat  := DatosNotaVenta.CDSNVDetCANTIDAD_PEDIDIA.AsFloat-
                                                                   DatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADA.AsFloat;
              DatosNotaVenta.CDSNVDetUNITARIO_TOTALSetText(DatosNotaVenta.CDSNVDetUNITARIO_TOTAL,FormatFloat('0.00',FormABMLineaNotavta.Precio));
              DatosNotaVenta.CDSNVDet.Post;
            end
          else
            begin
              CDSNVDet.Cancel;
              SysUtils.Abort;
            end;

        end;
    end;
end;


procedure TDatosNotaVenta.CDSNVDetAfterPost(DataSet: TDataSet);
begin
  ArmarLotes;
  {
  begin
    if (Trim(CDSNVDetLOTE.AsString)<>'') and
      (FormNotaVta.ListaLote.Find(Trim(CDSNVDetLOTE.AsString),Pos)=False) then
     FormNotaVta.ListaLote.Add(CDSNVDetLOTE.AsString);
    FormNotaVta.cbLotes.Clear;
    FormNotaVta.cbLotes.Items:=FormNotaVta.ListaLote;
    end;
    }
end;

procedure TDatosNotaVenta.CDSNVDetBeforeDelete(DataSet: TDataSet);
begin
  if CDSNVDetLOTECERRADO.Value='N' then
    begin
//      if not (Assigned(FormLogin)) then
//        FormLogin := TFormLogin.Create(Self);
//      FormLogin.ShowModal;
      if (FormNotaVta.Autorizado=False) then
        begin
          CDSNVDet.Cancel;
          SysUtils.Abort;
        end;
    end
  else
    begin
      ShowMessage('Lote Cerrdado, no se permite esta operación');
      CDSNVDet.Cancel;
      SysUtils.Abort;
    end;

end;


procedure TDatosNotaVenta.CDSNVDetBeforeEdit(DataSet: TDataSet);
begin
  CDSNVDet.IndexName:='';
  if (CDSNVDetLOTECERRADO.Value='S') and
     (CDSNVDetLOTE.OldValue<>CDSNVDetLOTE.NewValue) and
     ((VarToStr(CDSNVDetLOTE.OldValue)<>'') and  (VarToStr(CDSNVDetLOTE.NewValue)<>''))
      then
    begin
      //ShowMessage('Lote Cerrado...');
      CDSNVDet.Cancel;
      SysUtils.Abort;
    end;
end;

procedure TDatosNotaVenta.CDSNVDetBeforePost(DataSet: TDataSet);
begin
  if CDSNVDetCODIGOARTICULO.AsString='' then
    CDSNVDet.Cancel;
  
 end;

procedure TDatosNotaVenta.CDSNVDetCANTIDAD_ENTREGADASetText(Sender: TField;
  const Text: string);
begin
  if CDSNVDetLOTECERRADO.Value='N' then
    begin
      Sender.AsString:=Text;
      if Sender.AsFloat > CDSNVDetCANTIDAD_PEDIDIA.AsFloat then
        begin
          ShowMessage('La canitdad entregada no puede ser mayor que lo pedido');
          Sender.AsString:='0';
        end
      else
        begin
          CDSNVDetCANTIDAD_FALTANTE.AsFloat := CDSNVDetCANTIDAD_PEDIDIA.AsFloat-Sender.AsFloat;
        end;
    end
  else
    ShowMessage('Lote Cerrado, no se puede hacer esta Operación');

end;

procedure TDatosNotaVenta.CDSNVDetCODIGOARTICULOSetText(Sender: TField;
  const Text: string);
begin
  if (Text<>'') and (Text<>#13) then
    begin
      Sender.AsString:=Text;
      if not(AsignarArticulo(Sender.AsString)) then
        begin
          ShowMessage('no se dio de alta el item..');
          Sender.Clear;
        end;

    end;
end;

procedure TDatosNotaVenta.CDSNVDetLOTESetText(Sender: TField;
  const Text: string);
var Dato:string;
CDSClone:TClientDataSet;
begin
  CDSClone:=TClientDataSet.Create(self);
  CDSClone.CloneCursor(CDSNVDet,true);
  if (Text<>'') and (CDSNVDetLOTECERRADO.Value='N') then
    begin
      Sender.AsString:=Text;
      Dato:='N';
      Dato:=VarToStr(CDSClone.Lookup('LOTE;LOTECERRADO',VarArrayOf([Text,'S']),'LOTECERRADO'));
//      if CDSNVDet.Locate('LOTE',Text,[]) then // CDSNVDetLOTECERRADO.Value;
//        Dato:=CDSNVDetLOTECERRADO.Value;
      if Dato='S' then
        begin
          ShowMessage('Este Lote ya fue cerrado, use otro Nro. de Lote....');
          CDSNVDet.Edit;
          Sender.Clear;
        end;
    end;
  FreeAndNil(CDSClone);
end;

procedure TDatosNotaVenta.CDSNVDetNewRecord(DataSet: TDataSet);
begin
  CDSNVDetID.Value                   := ibgIdDet.IncrementFD(1);
  CDSNVDetID_CAB.Value               := CDSNVCabID.Value;
  CDSNVDetNROCPBTE.Value             := CDSNVCabNROCPBTE.Value;
  CDSNVDetRENGLON.AsFloat            := CDSNVDet.RecordCount+1;
  CDSNVDetFECHA.Value                := CDSNVCabFECHAPEDIDO.Value;
  CDSNVDetDEPOSITO.Value             :=  CDSNVCabDEPOSITO.Value;
  CDSNVDetCANTIDAD_PEDIDIA.AsFloat   := 0;
  CDSNVDetCANTIDAD_ENTREGADA.AsFloat := 0;
  CDSNVDetCANTIDAD_FALTANTE.AsFloat  := 0;
  CDSNVDetDESCUENTO.AsFloat          := 0;
  CDSNVDetPESO.AsFloat               := 0;
  CDSNVDetLOTE.Value                 := 1;
  // esto louso para bloquear los lotes que ya estan listos
  CDSNVDetLOTECERRADO.Value        :='N';
  CDSNVDetLOTE.Clear;
end;

procedure TDatosNotaVenta.CDSNVDetUNITARIO_TOTALSetText(Sender: TField;
  const Text: string);
VAR
  Num, Aux1, Aux2, Aux3: real;
  TextAux:String;
begin
//  if (CDSNVDet.State=dsEdit) and
//     (MessageDlg('Seguro que modifica el precio???...',mtConfirmation,mbYesNo,1)=mrYes) then
    begin
      if ((Text<>'') and (Text<>#13)) Then
        begin
          TextAux:=Text;
          while pos(',',TextAux)<>0 Do
            delete(TextAux,pos(',',TextAux),1);

          Num:=StrToFloat(TextAux);
          IF CDSNVDetMODO_GRAVAMEN.Value <> '' THEN
            CASE CDSNVDetMODO_GRAVAMEN.Value[1] OF
              'E': CDSNVDetUNITARIO_EXENTO.AsFloat :=Num;
              'G': CDSNVDetUNITARIO_GRAVADO.AsFloat:=Num;
            END;
          Aux1:=CDSNVDetUNITARIO_EXENTO.AsFloat;
          Aux2:=CDSNVDetUNITARIO_GRAVADO.AsFloat;
     // IF wwCDSPresuCabDesglozaIva.Value = 'N' THEN
     //   Aux2:=  Aux2 / (1 + (wwCDSPresuDetIVA_Tasa.Value /100));

     // wwCDSPresuDetUnitario_Gravado.Value:= Aux2;

          Aux3:=Aux1 + Aux2;

          CDSNVDetTOTAL.AsFloat:=CDSNVDetCANTIDAD_ENTREGADA.AsFloat * Aux3;
          Sender.AsString      :=FloatToStr(Aux3);
        end;
    end;
end;

procedure TDatosNotaVenta.DataModuleDestroy(Sender: TObject);
begin
  DatosNotaVenta:=NIL;
end;

end.
