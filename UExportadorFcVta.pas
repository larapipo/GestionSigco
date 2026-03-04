unit UExportadorFcVta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, Db, ComCtrls, StdCtrls, Mask,   Grids, DBGrids, Gauges,
  ActnList, Buttons, ToolWin, ExtCtrls,Librerias, DBCtrls,{FileCtrl,}
  DBClient, Provider, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, JvExMask,
  JvToolEdit, SqlExpr, JvDBLookup,DateUtils, JvAppStorage, JvAppIniStorage,
  System.Actions, CompBuscador,IniFiles,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Stan.StorageXML, System.ImageList;

type
  TFormExportaFcVta_XML = class(TFormABMBase)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    dbgFcVtaCab: TDBGrid;
    dbgFcVtaDet: TDBGrid;
    dbgFcVtaImpuesto: TDBGrid;
    UpDown1: TUpDown;
    DSFcVTaCab: TDataSource;
    DSFcVtaDet: TDataSource;
    DSFcVtaImp: TDataSource;
    ToolButton1: TToolButton;
    Exportar: TAction;
    cbSuc: TDBLookupComboBox;
    DSSuc: TDataSource;
    Animate: TAnimate;
    SelectAll: TAction;
    UnSelect: TAction;
    btExportarEn: TBitBtn;
    DSCajaMov: TDataSource;
    Desde: TJvDateEdit;
    Hasta: TJvDateEdit;
    RxLabel1: TJvLabel;
    RxLabel2: TJvLabel;
    RxLabel3: TJvLabel;
    DSComprobantes: TDataSource;
    CDSComprobantes: TClientDataSet;
    CDSComprobantesTIPO_COMPROB: TStringField;
    CDSComprobantesCLASE_COMPROB: TStringField;
    CDSComprobantesDENOMINACION: TStringField;
    CDSComprobantesSUCURSAL: TIntegerField;
    CDSComprobantesLETRA: TStringField;
    CDSComprobantesID_COMPROBANTE: TIntegerField;
    DSPComprobantes: TDataSetProvider;
    RxLabel4: TJvLabel;
    cbComprobantes: TJvDBLookupCombo;
    chbPorDia: TCheckBox;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    QFcVtaCab: TFDQuery;
    QFcVtaDet: TFDQuery;
    QFcVtaImp: TFDQuery;
    QSuc: TFDQuery;
    QSucCODIGO: TIntegerField;
    QSucDETALLE: TStringField;
    QComprobante: TFDQuery;
    QCajaMov: TFDQuery;
    edDirecorio: TJvDirectoryEdit;
    Label4: TLabel;
    QMovTCredito: TFDQuery;
    QMovTCreditoID_MOV_TC: TIntegerField;
    QMovTCreditoID_CAJA: TIntegerField;
    QMovTCreditoID_MOV_CAJA: TIntegerField;
    QMovTCreditoID_FPAGO: TIntegerField;
    QMovTCreditoID_TC: TIntegerField;
    QMovTCreditoTITULAR: TStringField;
    QMovTCreditoCAN_CUOTAS: TIntegerField;
    QMovTCreditoN_DOCU: TStringField;
    QMovTCreditoUNIDADES: TFloatField;
    QMovTCreditoCOTIZACION: TFloatField;
    QMovTCreditoIMPORTE: TFloatField;
    QMovTCreditoOTROS: TStringField;
    QMovTCreditoMONEDA: TIntegerField;
    QMovTCreditoID_CUENTA_CAJA: TIntegerField;
    QMovTCreditoUNIDADES_NETO: TFloatField;
    QMovTCreditoIMPORTE_NETO: TFloatField;
    QMovTCreditoCOEFICIENTE: TFloatField;
    QMovTCreditoVALORCUOTA: TFloatField;
    QMovTCreditoIMPORTE_RECARGO: TFloatField;
    QMovTCreditoID_CUENTA_BANCO: TIntegerField;
    QMovTCreditoNRO_CUPON: TIntegerField;
    QMovTCreditoACREDITADA: TStringField;
    QMovTCreditoLOTE: TStringField;
    QMovTCreditoTERMINAL: TStringField;
    QMovTCreditoSALDO_IMPORTE: TFloatField;
    DSMovTCredito: TDataSource;
    DSMovEfectivo: TDataSource;
    QMovEfectivo: TFDQuery;
    QMovEfectivoID_EFECTIVO: TIntegerField;
    QMovEfectivoID_CAJA: TIntegerField;
    QMovEfectivoID_MOV_CAJA: TIntegerField;
    QMovEfectivoID_FPAGO: TIntegerField;
    QMovEfectivoCOTIZACION: TFloatField;
    QMovEfectivoUNIDADES: TFloatField;
    QMovEfectivoIMPORTE: TFloatField;
    QMovEfectivoID_CUENTA_CAJA: TIntegerField;
    QMovEfectivoMONEDA: TIntegerField;
    QChe3: TFDQuery;
    QChe3ID_CHEQUE_TER: TIntegerField;
    QChe3ID_CAJA: TIntegerField;
    QChe3ID_MOV_CAJA: TIntegerField;
    QChe3ID_FPAGO: TIntegerField;
    QChe3ID_BANCO: TIntegerField;
    QChe3NUMERO: TIntegerField;
    QChe3ORIGEN: TStringField;
    QChe3DESTINO: TStringField;
    QChe3UNIDADES: TFloatField;
    QChe3IMPORTE: TFloatField;
    QChe3DISPONIBLE: TStringField;
    QChe3FIRMANTE: TStringField;
    QChe3COTIZACION: TFloatField;
    QChe3ID_MOV_CAJA_EGRESOS: TIntegerField;
    QChe3ID_CUENTA_CAJA: TIntegerField;
    QChe3ID_CUENTA_BCO_DEPOSITADO: TIntegerField;
    QChe3MONEDA: TIntegerField;
    QChe3SALDO_UNIDADES: TFloatField;
    QChe3SALDO_IMPORTE: TFloatField;
    QChe3CUIT: TStringField;
    QChe3SUCURSAL_BCO: TStringField;
    QChe3NRO_CTA: TStringField;
    DSChe3: TDataSource;
    QFcVtaCabID_FC: TIntegerField;
    QFcVtaCabTIPOCPBTE: TStringField;
    QFcVtaCabCLASECPBTE: TStringField;
    QFcVtaCabCODIGO: TStringField;
    QFcVtaCabNROCPBTE: TStringField;
    QFcVtaCabLETRAFAC: TStringField;
    QFcVtaCabSUCFAC: TStringField;
    QFcVtaCabNUMEROFAC: TStringField;
    QFcVtaCabNOMBRE: TStringField;
    QFcVtaCabRAZONSOCIAL: TStringField;
    QFcVtaCabDIRECCION: TStringField;
    QFcVtaCabCPOSTAL: TStringField;
    QFcVtaCabLOCALIDAD: TStringField;
    QFcVtaCabTIPOIVA: TIntegerField;
    QFcVtaCabCUIT: TStringField;
    QFcVtaCabLISTAPRECIO: TIntegerField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabNETOGRAV1: TFloatField;
    QFcVtaCabNETOGRAV2: TFloatField;
    QFcVtaCabNETONOGRAV1: TFloatField;
    QFcVtaCabNETONOGRAV2: TFloatField;
    QFcVtaCabDSTO: TFloatField;
    QFcVtaCabDSTOIMPORTE: TFloatField;
    QFcVtaCabNETOEXEN1: TFloatField;
    QFcVtaCabNETOEXEN2: TFloatField;
    QFcVtaCabTOTAL: TFloatField;
    QFcVtaCabDEBE: TFloatField;
    QFcVtaCabIMPRESO: TStringField;
    QFcVtaCabOBSERVACION1: TStringField;
    QFcVtaCabOBSERVACION2: TStringField;
    QFcVtaCabCPTE_MANUAL: TStringField;
    QFcVtaCabSUCURSAL: TIntegerField;
    QFcVtaCabFACTURANRO: TStringField;
    QFcVtaCabZONA: TIntegerField;
    QFcVtaCabLDR: TIntegerField;
    QFcVtaCabDEPOSITO: TIntegerField;
    QFcVtaCabCALCULA_SOBRETASA: TStringField;
    QFcVtaCabDESGLOZAIVA: TStringField;
    QFcVtaCabNROENTREGA: TIntegerField;
    QFcVtaCabINGRESA_A_CTACTE: TStringField;
    QFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    QFcVtaCabTIPO_REMITO: TStringField;
    QFcVtaCabIDREMITO: TIntegerField;
    QFcVtaCabREDUCIDA: TStringField;
    QFcVtaCabCOMSIONVENDEDOR: TFloatField;
    QFcVtaCabLIQUIDADA: TStringField;
    QFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    QFcVtaCabVENDEDOR: TStringField;
    QFcVtaCabUSUARIO: TStringField;
    QFcVtaCabNC_CONTADO: TStringField;
    QFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    QFcVtaCabNRO_Z: TIntegerField;
    QFcVtaCabVALORES_RECIBIDOS: TFloatField;
    QFcVtaCabPERCEPCION_IB_TASA: TFloatField;
    QFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField;
    QFcVtaCabPERCIBE_IB: TStringField;
    QFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    QFcVtaCabRENGLONES: TSmallintField;
    QFcVtaCabFECHA_HORA: TSQLTimeStampField;
    QFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    QFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    QFcVtaCabID_FC_CLON: TIntegerField;
    QFcVtaCabPRESUPUESTO_ID: TIntegerField;
    QFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    QFcVtaCabMONEDA_CPBTE: TIntegerField;
    QFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    QFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    QFcVtaCabPROVEEDOR: TStringField;
    QFcVtaCabTIPO_VTA: TStringField;
    QFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    QFcVtaCabJURIDICION: TIntegerField;
    QFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    QFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    QFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    QFcVtaCabPOLIZA: TStringField;
    QFcVtaCabVALOR_ASEGURADO: TFloatField;
    QFcVtaCabABONO_PERIODO: TStringField;
    QFcVtaCabNUMERO_OPERACION: TStringField;
    QFcVtaCabSALDO_ACTUAL_CC: TFloatField;
    QFcVtaCabID_NOTA_CAMBIO: TIntegerField;
    QFcVtaCabCAE: TStringField;
    QFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    QFcVtaCabFACTURA_ELECTRONICA: TStringField;
    QFcVtaCabCANT_BULTOS: TIntegerField;
    QFcVtaCabCUOTAS_CC: TIntegerField;
    QFcVtaCabINTERVALO_CUOTA: TIntegerField;
    QFcVtaCabID_GARANTE: TIntegerField;
    QFcVtaCabPAGO_A_CTA: TFloatField;
    QFcVtaCabID_FC_CON_ADEL: TIntegerField;
    QFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    QFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    QFcVtaCabCENTRO_COSTO: TIntegerField;
    QFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    QFcVtaCabID_PAIS: TSmallintField;
    QFcVtaCabCUIT_PAIS: TStringField;
    QFcVtaCabDOC_ADUANERO: TStringField;
    QFcVtaCabFECHA_CARGA: TSQLTimeStampField;
    QFcVtaCabNRO_INTERNO: TStringField;
    QFcVtaCabFOB_TOTAL: TFloatField;
    QFcVtaCabNOTAS: TStringField;
    QFcVtaCabDESTINO_DOCUMENTO: TStringField;
    QFcVtaCabPERMISO_EMBARQUE: TStringField;
    QFcVtaCabINCOTERMS: TStringField;
    QFcVtaCabCBU: TStringField;
    QFcVtaCabASOCIADO_TIPO: TIntegerField;
    QFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    QFcVtaCabASOCIADO_NRO: TFloatField;
    QFcVtaCabASOCIADO_CPTEFCH: TStringField;
    QFcVtaCabINF_X: TStringField;
    QFcVtaCabTIPO_OPERACION_EXPO: TStringField;
    QFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    QFcVtaCabID_ADUANA: TIntegerField;
    QFcVtaCabREFERENCIA_EXPO: TStringField;
    QFcVtaCabCAMBIO_EXPO: TFloatField;
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABFAC: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFloatField;
    QFcVtaDetCODIGOARTICULO: TStringField;
    QFcVtaDetDETALLE: TStringField;
    QFcVtaDetUNIDAD: TStringField;
    QFcVtaDetMODO_GRAVAMEN: TStringField;
    QFcVtaDetCANTIDAD: TFloatField;
    QFcVtaDetUNIDADES_GRAVADO: TFloatField;
    QFcVtaDetUNIDADES_EXENTO: TFloatField;
    QFcVtaDetUNIDADES_TOTAL: TFloatField;
    QFcVtaDetCOSTO_GRAVADO: TFloatField;
    QFcVtaDetCOSTO_EXENTO: TFloatField;
    QFcVtaDetCOSTO_TOTAL: TFloatField;
    QFcVtaDetUNITARIO_GRAVADO: TFloatField;
    QFcVtaDetIVA_UNITARIO: TFloatField;
    QFcVtaDetUNITARIO_EXENTO: TFloatField;
    QFcVtaDetUNITARIO_TOTAL: TFloatField;
    QFcVtaDetDESGLOZAIVA: TStringField;
    QFcVtaDetTOTAL_EXENTO: TFloatField;
    QFcVtaDetTOTAL_GRAVADO: TFloatField;
    QFcVtaDetIVA_TOTAL: TFloatField;
    QFcVtaDetTOTAL: TFloatField;
    QFcVtaDetTIPOIVA_TASA: TIntegerField;
    QFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    QFcVtaDetIVA_TASA: TFloatField;
    QFcVtaDetIVA_SOBRETASA: TFloatField;
    QFcVtaDetDESCUENTO: TFloatField;
    QFcVtaDetDEPOSITO: TIntegerField;
    QFcVtaDetMARGEN: TFloatField;
    QFcVtaDetAFECTA_STOCK: TStringField;
    QFcVtaDetCALCULA_SOBRETASA: TStringField;
    QFcVtaDetGRAVADO_IB: TStringField;
    QFcVtaDetCON_NRO_SERIE: TStringField;
    QFcVtaDetCON_CODIGO_BARRA: TStringField;
    QFcVtaDetIB_TASA: TFloatField;
    QFcVtaDetTIPOIB_TASA: TIntegerField;
    QFcVtaDetLOTE: TIntegerField;
    QFcVtaDetPRECIO_EDITABLE: TStringField;
    QFcVtaDetID_MONEDA: TIntegerField;
    QFcVtaDetCOTIZACION: TFloatField;
    QFcVtaDetDETALLE_ADICIONAL: TStringField;
    QFcVtaDetGRUPO_DETALLE: TIntegerField;
    QFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    QFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    QFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    QFcVtaDetMESES_GTIA: TIntegerField;
    QFcVtaDetCODIGOBARRA: TStringField;
    QFcVtaDetDE_PRODUCCION: TStringField;
    QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    QFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    QFcVtaDetUNI_C_REC: TStringField;
    QFcVtaDetITEM_OCOMPRA: TIntegerField;
    QFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    QFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    QFcVtaDetPRESENTACION_CANT: TFloatField;
    QFcVtaImpID_IMPUESTO: TIntegerField;
    QFcVtaImpID_FCVTACAB: TIntegerField;
    QFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    QFcVtaImpDETALLE: TStringField;
    QFcVtaImpNETO: TFloatField;
    QFcVtaImpTASA: TFloatField;
    QFcVtaImpIMPORTE: TFloatField;
    QCajaMovID_MOV_CAJA: TIntegerField;
    QCajaMovID_CAJA: TIntegerField;
    QCajaMovTIPO_OPERACION: TStringField;
    QCajaMovTIPO_COMPROB: TStringField;
    QCajaMovCLASE_COMPROB: TStringField;
    QCajaMovID_COMPROBANTE: TIntegerField;
    QCajaMovNRO_COMPROBANTE: TStringField;
    QCajaMovHABER: TFloatField;
    QCajaMovDEBE: TFloatField;
    QCajaMovID_TPAGO: TIntegerField;
    QCajaMovID_FPAGO: TIntegerField;
    QCajaMovUNIDADES: TFloatField;
    QCajaMovCOTIZACION: TFloatField;
    QCajaMovID_CUENTA_CAJA: TIntegerField;
    QCajaMovMONEDA: TIntegerField;
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    QFcVtaCabVUELTO: TFloatField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
    QCajaMovFECHA_CAJA: TSQLTimeStampField;
    QCajaMovFECHA_OPERACION: TSQLTimeStampField;
    QMovTCreditoFECHA: TSQLTimeStampField;
    QChe3FECHA_EMISION: TSQLTimeStampField;
    QChe3FECHA_COBRO: TSQLTimeStampField;
    QChe3FECHA_ENTRADA: TSQLTimeStampField;
    QChe3FECHA_SALIDA: TSQLTimeStampField;
    QChe3E_CHECK: TStringField;
    QChe3ID_CTA_CAJA_BCO: TIntegerField;
    QMovTCreditoFECHA_ACREDITACION: TSQLTimeStampField;
    FDStanStorageXMLLink1: TFDStanStorageXMLLink;
    procedure ExportarExecute(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbSucClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormExportaFcVta_XML: TFormExportaFcVta_XML;

implementation

uses DMBuscadoresForm,UDMain_FD;

{$R *.DFM}

procedure TFormExportaFcVta_XML.cbSucClick(Sender: TObject);
begin
  inherited;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
  CDSComprobantes.Open;

end;

procedure TFormExportaFcVta_XML.ExportarExecute(Sender: TObject);
begin
  if QFcVtaCab.IsEmpty Then Buscar.Execute;

  if QFcVtaCab.IsEmpty Then Exit;

  if (Trim(edDirecorio.Text)='') then
    begin
      if not DirectoryExists(ExtractFilePath(ParamStr(0))+'Archivos Temporales') then
        CreateDir(ExtractFilePath(ParamStr(0))+'Archivos Temporales');
      if Not(QFcVtaCab.IsEmpty)  Then
        begin
          Animate.Visible:=True;
          Animate.Active :=True;
          QFcVtaCab.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaCab.XML',sfXML);
          QFcVtaDet.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaDet.bin',sfBinary);
          QFcVtaImp.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\FcVtaImp.bin',sfBinary);
          QCajaMov.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\CajaMov.XML',sfXML);
          QMovTCredito.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovTc.XML',sfXML);
          QMovEfectivo.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\MovEfectivo.XML',sfXML);
          QChe3.SaveToFile(ExtractFilePath(ParamStr(0))+'Archivos Temporales\Cheques3.XML',sfXML);

        end
      else
        ShowMessage('No Hay datos para exportar....');
    end
  else
    begin
      if Not(QFcVtaCab.IsEmpty)  Then
        begin
          Animate.Visible  := True;
          Animate.Active   := True;
          QFcVtaCab.SaveToFile(edDirecorio.Text+'\FcVtaCab.XML',sfXML);
          QFcVtaDet.SaveToFile(edDirecorio.Text+'\FcVtaDet.bin',sfBinary);
          QFcVtaImp.SaveToFile(edDirecorio.Text+'\FcVtaImp.bin',sfBinary);
          QCajaMov.SaveToFile(edDirecorio.Text+'\CajaMov.XML',sfXML);
          QMovTCredito.SaveToFile(edDirecorio.Text+'\MovTc.XML',sfXML);
          QMovEfectivo.SaveToFile(edDirecorio.Text+'\MovEfectivo.XML',sfXML);
          QChe3.SaveToFile(edDirecorio.Text+'\Cheques3.XML',sfXML);
         end
      else
        ShowMessage('No Hay datos para exportar....');
    end;

  Animate.Visible := False;
  Animate.Active  := False;
  ShowMessage('Datos exportados....');

end;

procedure TFormExportaFcVta_XML.FormShow(Sender: TObject);
var d,m,y:word;
begin
  DecodeDate(date,y,m,d);
  if m=1 Then
    begin
      m:=12;y:=y-1;
    end
  else
    m:=m-1;
  Desde.Date:=EncodeDate(y,m,1);
  Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
  if chbPorDia.Checked then
    begin
      Desde.Date:=Date;
      Hasta.Date:=Date;
    end;
  Desde.SetFocus;
  Buscar.Execute;
end;

procedure TFormExportaFcVta_XML.BuscarExecute(Sender: TObject);
var Min,Max:Integer;
begin
  inherited;
  QFcVtaDet.Close;
  QFcVtaImp.Close;
  QCajaMov.Close;
  QMovTCredito.Close;
  QMovEfectivo.Close;
  QChe3.Close;

  QFcVtaCab.Close;
  QFcVtaCab.ParamByName('desde').Value   :=desde.Date;
  QFcVtaCab.ParamByName('hasta').Value   :=hasta.Date;
  QFcVtaCab.ParamByName('Sucursal').Value:=cbSuc.KeyValue;
  QFcVtaCab.ParamByName('idcpbte').Value :=cbComprobantes.KeyValue;
  QFcVtaCab.Open;

  if Not(QFcVtaCab.IsEmpty) then
    begin
      QFcVtaCab.First;
      QFcVtaDet.Close;
      QFcVtaDet.ParamByName('id_desde').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QFcVtaCab.Last;
      QFcVtaDet.ParamByName('id_hasta').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QFcVtaDet.Open;

      QFcVtaCab.First;
      QFcVtaImp.Close;
      QFcVtaImp.ParamByName('id_desde').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QFcVtaCab.Last;
      QFcVtaImp.ParamByName('id_hasta').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QFcVtaImp.Open;

    // Caja_Mov - Moviemitnos de caja
      QFcVtaCab.First;
      QCajaMov.Close;
      QCajaMov.ParamByName('id_desde').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QFcVtaCab.Last;
      QCajaMov.ParamByName('id_hasta').Value:=QFcVtaCab.FieldbyName('id_fc').Value;
      QCajaMov.Open;

      if Not(QCajaMov.IsEmpty) then
        begin
          QCajaMov.First;
          Min:= QCajaMov.FieldbyName('id_Mov_Caja').Value;
          QCajaMov.Last;
          Max:= QCajaMov.FieldbyName('id_Mov_Caja').Value;
         // Caja_Mov - Tarjetas
          QMovTCredito.Close;
          QMovTCredito.Params.ParamByName('Min_id').Value:=Min;
          QMovTCredito.Params.ParamByName('Max_id').Value:=Max;
          QMovTCredito.Open;
        // Caja_Mov - Efectivo
          QMovEfectivo.Close;
          QMovEfectivo.Params.ParamByName('Min_id').Value:=Min;
          QMovEfectivo.Params.ParamByName('Max_id').Value:=Max;
          QMovEfectivo.Open;
        // Caja_Mov - Cheques de Tercero
          QChe3.Close;
          QChe3.Params.ParamByName('Min_id').Value:=Min;
          QChe3.Params.ParamByName('Max_id').Value:=Max;
          QChe3.Open;
        end;
    end;

  dbgFcVtaCab.Width:=dbgFcVtaCab.Width+1;
  dbgFcVtaCab.Width:=dbgFcVtaCab.Width-1;

  dbgFcVtaDet.Width:=dbgFcVtaDet.Width+1;
  dbgFcVtaDet.Width:=dbgFcVtaDet.Width-1;

  dbgFcVtaImpuesto.Width:=dbgFcVtaImpuesto.Width+1;
  dbgFcVtaImpuesto.Width:=dbgFcVtaImpuesto.Width-1;

end;

procedure TFormExportaFcVta_XML.UpDown1Click(Sender: TObject;
  Button: TUDBtnType);
var d,m,y:word;
begin
  if chbPorDia.Checked=False then
    begin
      DecodeDate(Desde.Date,y,m,d);
      if Button=btnext Then
        if m=12 Then
          begin
            m:=1;y:=y+1;
          end
        else
          m:=m+1
      else
        if Button=btPrev Then
          if m=1 Then
            begin
              m:=12;y:=y-1;
            end
          else
            m:=m-1;
      Desde.Date:=EncodeDate(y,m,1);
      Hasta.Date:=EncodeDate(y,m,DaysInMonth(Desde.Date));
    end
  else
    begin
      if Button=btnext Then
        Desde.Date:=IncDay(Desde.Date,1)
      else
        if Button=btPrev Then
         Desde.Date:=IncDay(Desde.Date,-1);
       Hasta.Date:=Desde.Date;

    end;  
  BUSCAR.Execute;
end;

procedure TFormExportaFcVta_XML.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  ArchivoIni                             := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarVentasXML.ini');
  ArchivoIni.WriteInteger('Expo', 'sucursal', cbSuc.KeyValue);
  ArchivoIni.WriteInteger('Expo', 'comprobantes', cbComprobantes.KeyValue);
  ArchivoIni.WriteDate('Expo', 'desde', Desde.Date);
  ArchivoIni.WriteDate('Expo', 'hasta', Hasta.Date);
  ArchivoIni.WriteBool('Expo', 'pordia', chbPorDia.Checked);
  ArchivoIni.WriteString('Expo', 'Directorio', edDirecorio.Text);
  ArchivoIni.Free;
  Action:=caFree;
end;

procedure TFormExportaFcVta_XML.FormDestroy(Sender: TObject);
begin
  inherited;
  FormExportaFcVta_XML:=nil;
end;

procedure TFormExportaFcVta_XML.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=True;
  QSuc.Open;
  QSuc.First;
  cbSuc.KeyValue:=SucursalPorDefecto;
  CDSComprobantes.Close;
  CDSComprobantes.Params.ParamByName('suc').Value:=cbSuc.KeyValue;
  CDSComprobantes.Open;

  ArchivoIni              := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ExportarVentasXML.ini');
  cbSuc.KeyValue          := ArchivoIni.ReadInteger('Expo', 'sucursal', -1);
  cbComprobantes.KeyValue := ArchivoIni.ReadInteger('Expo', 'comprobantes', -1);
  Desde.Date              := ArchivoIni.ReadDate('Expo', 'desde', Date);
  Hasta.Date              := ArchivoIni.ReadDate('Expo', 'hasta', Date);
  chbPorDia.Checked       := ArchivoIni.ReadBool('Expo', 'pordia', False);
  edDirecorio.Text        := ArchivoIni.ReadString('Expo', 'Directorio', '');
  ArchivoIni.Free;
end;

end.