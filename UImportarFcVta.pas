unit UImportarFcVta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, IBGenerator, Provider, Db, DBClient, StdCtrls, ComCtrls,
  Grids, DBGrids, Gauges, JvComponentBase,Math, ImgList,
  ActnList, JvExControls, JvGradient, Buttons, ToolWin, ExtCtrls,Variants,
  JvDBLookup, JvThread,Inifiles, DBXCommon, JvAppStorage, JvAppIniStorage,
  System.Actions, Data.FMTBcd, Data.SqlExpr, JvFormPlacement, JvLabel,
  JvDBControls, CompBuscador, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, System.ImageList;

type
  TFormImportarFcVta = class(TFormABMBase)
    DSPFcVtaCab: TDataSetProvider;
    DSFcVtaCab: TDataSource;
    IBGFcVtaCab: TIBGenerator;
    DSFCVtaDet: TDataSource;
    DSPFcVtaDet: TDataSetProvider;
    IBGFcVtaDet: TIBGenerator;
    DSFcVtaImp: TDataSource;
    CDSFcVtaImp: TClientDataSet;
    DSPFcVtaImp: TDataSetProvider;
    IBGImpuestos: TIBGenerator;
    Importar: TAction;
    Animate1: TAnimate;
    ToolButton1: TToolButton;
    btImportar: TBitBtn;
    CDSFcVtaCab: TClientDataSet;
    CDSFcVtaDet: TClientDataSet;
    DSCaja: TDataSource;
    Label1: TLabel;
    Panel2: TPanel;
    CDSFcVtaImpXML: TClientDataSet;
    CDSFcVtaDetXML: TClientDataSet;
    CDSFcVtaCabXML: TClientDataSet;
    DBGrid2: TDBGrid;
    DBGrid4: TDBGrid;
    DBGrid6: TDBGrid;
    DSFcVtaCabXML: TDataSource;
    DSFcVtaDetXML: TDataSource;
    DSFcVtaImpXML: TDataSource;
    BitBtn1: TBitBtn;
    LeerXML: TAction;
    Progress: TGauge;
    MarcarAnuladas: TAction;
    btNovedades: TButton;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    JvDBStatusLabel1: TJvDBStatusLabel;
    JvDBStatusLabel2: TJvDBStatusLabel;
    QFcVtaCab: TFDQuery;
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
    QFcVtaCabFECHAVTA: TSQLTimeStampField;
    QFcVtaCabFECHAVTO: TSQLTimeStampField;
    QFcVtaCabCONDICIONVTA: TIntegerField;
    QFcVtaCabANULADO: TStringField;
    QFcVtaCabNRORTO: TStringField;
    QFcVtaCabN_OPERACION2: TFloatField;
    QFcVtaCabNETOGRAV1: TFloatField;
    QFcVtaCabNETOGRAV2: TFloatField;
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
    CDSFcVtaCabID_FC: TIntegerField;
    CDSFcVtaCabTIPOCPBTE: TStringField;
    CDSFcVtaCabCLASECPBTE: TStringField;
    CDSFcVtaCabCODIGO: TStringField;
    CDSFcVtaCabNROCPBTE: TStringField;
    CDSFcVtaCabLETRAFAC: TStringField;
    CDSFcVtaCabSUCFAC: TStringField;
    CDSFcVtaCabNUMEROFAC: TStringField;
    CDSFcVtaCabNOMBRE: TStringField;
    CDSFcVtaCabRAZONSOCIAL: TStringField;
    CDSFcVtaCabDIRECCION: TStringField;
    CDSFcVtaCabCPOSTAL: TStringField;
    CDSFcVtaCabLOCALIDAD: TStringField;
    CDSFcVtaCabTIPOIVA: TIntegerField;
    CDSFcVtaCabCUIT: TStringField;
    CDSFcVtaCabLISTAPRECIO: TIntegerField;
    CDSFcVtaCabFECHAVTA: TSQLTimeStampField;
    CDSFcVtaCabFECHAVTO: TSQLTimeStampField;
    CDSFcVtaCabCONDICIONVTA: TIntegerField;
    CDSFcVtaCabANULADO: TStringField;
    CDSFcVtaCabNRORTO: TStringField;
    CDSFcVtaCabN_OPERACION2: TFloatField;
    CDSFcVtaCabNETOGRAV1: TFloatField;
    CDSFcVtaCabNETOGRAV2: TFloatField;
    CDSFcVtaCabDSTO: TFloatField;
    CDSFcVtaCabDSTOIMPORTE: TFloatField;
    CDSFcVtaCabNETOEXEN1: TFloatField;
    CDSFcVtaCabNETOEXEN2: TFloatField;
    CDSFcVtaCabTOTAL: TFloatField;
    CDSFcVtaCabDEBE: TFloatField;
    CDSFcVtaCabIMPRESO: TStringField;
    CDSFcVtaCabOBSERVACION1: TStringField;
    CDSFcVtaCabOBSERVACION2: TStringField;
    CDSFcVtaCabCPTE_MANUAL: TStringField;
    CDSFcVtaCabSUCURSAL: TIntegerField;
    CDSFcVtaCabFACTURANRO: TStringField;
    CDSFcVtaCabZONA: TIntegerField;
    CDSFcVtaCabLDR: TIntegerField;
    CDSFcVtaCabDEPOSITO: TIntegerField;
    CDSFcVtaCabCALCULA_SOBRETASA: TStringField;
    CDSFcVtaCabDESGLOZAIVA: TStringField;
    CDSFcVtaCabNROENTREGA: TIntegerField;
    CDSFcVtaCabINGRESA_A_CTACTE: TStringField;
    CDSFcVtaCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcVtaCabTIPO_REMITO: TStringField;
    CDSFcVtaCabIDREMITO: TIntegerField;
    CDSFcVtaCabREDUCIDA: TStringField;
    CDSFcVtaCabCOMSIONVENDEDOR: TFloatField;
    CDSFcVtaCabLIQUIDADA: TStringField;
    CDSFcVtaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSFcVtaCabVENDEDOR: TStringField;
    CDSFcVtaCabUSUARIO: TStringField;
    CDSFcVtaCabNC_CONTADO: TStringField;
    CDSFcVtaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSFcVtaCabNRO_Z: TIntegerField;
    CDSFcVtaCabVALORES_RECIBIDOS: TFloatField;
    CDSFcVtaCabPERCEPCION_IB_TASA: TFloatField;
    CDSFcVtaCabPERCEPCION_IB_IMPORTE: TFloatField;
    CDSFcVtaCabPERCIBE_IB: TStringField;
    CDSFcVtaCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFcVtaCabRENGLONES: TSmallintField;
    CDSFcVtaCabFECHA_HORA: TSQLTimeStampField;
    CDSFcVtaCabNOTAPEDIDO_ID: TIntegerField;
    CDSFcVtaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSFcVtaCabID_FC_CLON: TIntegerField;
    CDSFcVtaCabPRESUPUESTO_ID: TIntegerField;
    CDSFcVtaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSFcVtaCabMONEDA_CPBTE: TIntegerField;
    CDSFcVtaCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFcVtaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSFcVtaCabPROVEEDOR: TStringField;
    CDSFcVtaCabTIPO_VTA: TStringField;
    CDSFcVtaCabID_RECEPCION_GTIA: TIntegerField;
    CDSFcVtaCabJURIDICION: TIntegerField;
    CDSFcVtaCabJURIDICION_LOCALIDAD: TIntegerField;
    QFcVtaDet: TFDQuery;
    QFcVtaImp: TFDQuery;
    QFcVtaImpID_IMPUESTO: TIntegerField;
    QFcVtaImpID_FCVTACAB: TIntegerField;
    QFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    QFcVtaImpDETALLE: TStringField;
    QFcVtaImpNETO: TFloatField;
    QFcVtaImpTASA: TFloatField;
    QFcVtaImpIMPORTE: TFloatField;
    CDSFcVtaImpID_IMPUESTO: TIntegerField;
    CDSFcVtaImpID_FCVTACAB: TIntegerField;
    CDSFcVtaImpCODIGO_GRAVAMEN: TIntegerField;
    CDSFcVtaImpDETALLE: TStringField;
    CDSFcVtaImpNETO: TFloatField;
    CDSFcVtaImpTASA: TFloatField;
    CDSFcVtaImpIMPORTE: TFloatField;
    rxDbcCaja: TJvDBLookupCombo;
    spIngresarConVenta: TFDStoredProc;
    spLdr: TFDStoredProc;
    spIngresarCliente: TFDStoredProc;
    spIngresaMovCaja: TFDStoredProc;
    QPrimerConVta: TFDQuery;
    QPrimerConVtaMIN: TIntegerField;
    QBuscaCliente: TFDQuery;
    QBuscaClienteCODIGO: TStringField;
    QFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    QFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    CDSFcVtaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSFcVtaCabMESES_DE_GARANTIA: TIntegerField;
    QCaj: TFDQuery;
    QCajID_CAJA: TIntegerField;
    QCajID_CUENTA_CAJA: TIntegerField;
    QCajNUMEROCAJA: TIntegerField;
    QCajMUESTRACAJA: TStringField;
    CDSCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    QFcVtaDetID: TIntegerField;
    QFcVtaDetID_CABFAC: TIntegerField;
    QFcVtaDetTIPOCPBTE: TStringField;
    QFcVtaDetCLASECPBTE: TStringField;
    QFcVtaDetNROCPBTE: TStringField;
    QFcVtaDetRENGLON: TFloatField;
    QFcVtaDetFECHAVTA: TSQLTimeStampField;
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
    CDSFcVtaDetID: TIntegerField;
    CDSFcVtaDetID_CABFAC: TIntegerField;
    CDSFcVtaDetTIPOCPBTE: TStringField;
    CDSFcVtaDetCLASECPBTE: TStringField;
    CDSFcVtaDetNROCPBTE: TStringField;
    CDSFcVtaDetRENGLON: TFloatField;
    CDSFcVtaDetFECHAVTA: TSQLTimeStampField;
    CDSFcVtaDetCODIGOARTICULO: TStringField;
    CDSFcVtaDetDETALLE: TStringField;
    CDSFcVtaDetUNIDAD: TStringField;
    CDSFcVtaDetMODO_GRAVAMEN: TStringField;
    CDSFcVtaDetCANTIDAD: TFloatField;
    CDSFcVtaDetUNIDADES_GRAVADO: TFloatField;
    CDSFcVtaDetUNIDADES_EXENTO: TFloatField;
    CDSFcVtaDetUNIDADES_TOTAL: TFloatField;
    CDSFcVtaDetCOSTO_GRAVADO: TFloatField;
    CDSFcVtaDetCOSTO_EXENTO: TFloatField;
    CDSFcVtaDetCOSTO_TOTAL: TFloatField;
    CDSFcVtaDetUNITARIO_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_UNITARIO: TFloatField;
    CDSFcVtaDetUNITARIO_EXENTO: TFloatField;
    CDSFcVtaDetUNITARIO_TOTAL: TFloatField;
    CDSFcVtaDetDESGLOZAIVA: TStringField;
    CDSFcVtaDetTOTAL_EXENTO: TFloatField;
    CDSFcVtaDetTOTAL_GRAVADO: TFloatField;
    CDSFcVtaDetIVA_TOTAL: TFloatField;
    CDSFcVtaDetTOTAL: TFloatField;
    CDSFcVtaDetTIPOIVA_TASA: TIntegerField;
    CDSFcVtaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcVtaDetIVA_TASA: TFloatField;
    CDSFcVtaDetIVA_SOBRETASA: TFloatField;
    CDSFcVtaDetDESCUENTO: TFloatField;
    CDSFcVtaDetDEPOSITO: TIntegerField;
    CDSFcVtaDetMARGEN: TFloatField;
    CDSFcVtaDetAFECTA_STOCK: TStringField;
    CDSFcVtaDetCALCULA_SOBRETASA: TStringField;
    CDSFcVtaDetGRAVADO_IB: TStringField;
    CDSFcVtaDetCON_NRO_SERIE: TStringField;
    CDSFcVtaDetCON_CODIGO_BARRA: TStringField;
    CDSFcVtaDetIB_TASA: TFloatField;
    CDSFcVtaDetTIPOIB_TASA: TIntegerField;
    CDSFcVtaDetLOTE: TIntegerField;
    CDSFcVtaDetPRECIO_EDITABLE: TStringField;
    CDSFcVtaDetID_MONEDA: TIntegerField;
    CDSFcVtaDetCOTIZACION: TFloatField;
    CDSFcVtaDetDETALLE_ADICIONAL: TStringField;
    CDSFcVtaDetGRUPO_DETALLE: TIntegerField;
    CDSFcVtaDetCTA_ORDEN_ID_RECEPCION: TIntegerField;
    CDSFcVtaDetCTA_ORDEN_NROCPBTE: TStringField;
    CDSFcVtaDetCTA_ORDEN_TIPOCPBTE: TStringField;
    CDSFcVtaDetCTA_ORDEN_CALSECPBTE: TStringField;
    CDSFcVtaDetMESES_GTIA: TIntegerField;
    chbNoAfectaStok: TCheckBox;
    JvThread1: TJvThread;
    Label5: TLabel;
    lbDirectorio: TLabel;
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
    CDSFcVtaCabPOLIZA: TStringField;
    CDSFcVtaCabVALOR_ASEGURADO: TFloatField;
    CDSFcVtaCabABONO_PERIODO: TStringField;
    CDSFcVtaCabNUMERO_OPERACION: TStringField;
    CDSFcVtaCabSALDO_ACTUAL_CC: TFloatField;
    CDSFcVtaCabID_NOTA_CAMBIO: TIntegerField;
    CDSFcVtaCabCAE: TStringField;
    CDSFcVtaCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFcVtaCabFACTURA_ELECTRONICA: TStringField;
    CDSFcVtaCabCANT_BULTOS: TIntegerField;
    QFcVtaDetCODIGOBARRA: TStringField;
    QFcVtaDetDE_PRODUCCION: TStringField;
    CDSFcVtaDetCODIGOBARRA: TStringField;
    CDSFcVtaDetDE_PRODUCCION: TStringField;
    chCAE: TCheckBox;
    QFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    QFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    QFcVtaDetUNI_C_REC: TStringField;
    CDSFcVtaDetUNITARIO_TOTAL_OLD: TFloatField;
    CDSFcVtaDetUNITARIO_IVA_OLD: TFloatField;
    CDSFcVtaDetUNI_C_REC: TStringField;
    QFcVtaCabNETONOGRAV1: TFloatField;
    QFcVtaCabNETONOGRAV2: TFloatField;
    QFcVtaCabCUOTAS_CC: TIntegerField;
    QFcVtaCabINTERVALO_CUOTA: TIntegerField;
    QFcVtaCabID_GARANTE: TIntegerField;
    QFcVtaCabPAGO_A_CTA: TFloatField;
    QFcVtaCabID_FC_CON_ADEL: TIntegerField;
    QFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    QFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    QFcVtaCabCENTRO_COSTO: TIntegerField;
    QFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    QFcVtaDetITEM_OCOMPRA: TIntegerField;
    QFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    QFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    QFcVtaDetPRESENTACION_CANT: TFloatField;
    CDSFcVtaCabNETONOGRAV1: TFloatField;
    CDSFcVtaCabNETONOGRAV2: TFloatField;
    CDSFcVtaCabCUOTAS_CC: TIntegerField;
    CDSFcVtaCabINTERVALO_CUOTA: TIntegerField;
    CDSFcVtaCabID_GARANTE: TIntegerField;
    CDSFcVtaCabPAGO_A_CTA: TFloatField;
    CDSFcVtaCabID_FC_CON_ADEL: TIntegerField;
    CDSFcVtaCabPRIMER_VTO: TSQLTimeStampField;
    CDSFcVtaCabANTICIPO_VTO: TSQLTimeStampField;
    CDSFcVtaCabCENTRO_COSTO: TIntegerField;
    CDSFcVtaCabID_PEDIDO_MORPHI: TIntegerField;
    CDSFcVtaDetITEM_OCOMPRA: TIntegerField;
    CDSFcVtaDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFcVtaDetCANTIDAD_UNIDADES: TFloatField;
    CDSFcVtaDetPRESENTACION_CANT: TFloatField;
    QFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    QFcVtaCabCBU: TStringField;
    QFcVtaCabINF_X: TStringField;
    CDSFcVtaCabFECHA_FISCAL: TSQLTimeStampField;
    CDSFcVtaCabCBU: TStringField;
    CDSFcVtaCabINF_X: TStringField;
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
    QFcVtaCabASOCIADO_ID_CPBTE: TIntegerField;
    QFcVtaCabASOCIADO_TIPO: TIntegerField;
    QFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    QFcVtaCabASOCIADO_NRO: TFloatField;
    QFcVtaCabASOCIADO_CPTEFCH: TStringField;
    QFcVtaCabTIPO_OPERACION_EXPO: TStringField;
    QFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    QFcVtaCabID_ADUANA: TIntegerField;
    QFcVtaCabREFERENCIA_EXPO: TStringField;
    QFcVtaCabCAMBIO_EXPO: TFloatField;
    QFcVtaCabVUELTO: TFloatField;
    QFcVtaCabID_TRANSPORTE: TIntegerField;
    QFcVtaCabID_DESTINO: TIntegerField;
    QFcVtaCabHONORARIOS: TFloatField;
    QFcVtaCabHONORARIOS_PROCENTAJ: TFloatField;
    QFcVtaCabDEDUCE_GASTOS: TStringField;
    QFcVtaCabCON_CAEA: TStringField;
    QFcVtaCabCAEA_INFORMADO: TStringField;
    QFcVtaCabFACTURA_DE_ANTICIPO: TStringField;
    QFcVtaCabQRIMAGE: TBlobField;
    QFcVtaCabCONDICIONPEDIDO: TIntegerField;
    CDSFcVtaCabID_PAIS: TSmallintField;
    CDSFcVtaCabCUIT_PAIS: TStringField;
    CDSFcVtaCabDOC_ADUANERO: TStringField;
    CDSFcVtaCabFECHA_CARGA: TSQLTimeStampField;
    CDSFcVtaCabNRO_INTERNO: TStringField;
    CDSFcVtaCabFOB_TOTAL: TFloatField;
    CDSFcVtaCabNOTAS: TStringField;
    CDSFcVtaCabDESTINO_DOCUMENTO: TStringField;
    CDSFcVtaCabPERMISO_EMBARQUE: TStringField;
    CDSFcVtaCabINCOTERMS: TStringField;
    CDSFcVtaCabASOCIADO_ID_CPBTE: TIntegerField;
    CDSFcVtaCabASOCIADO_TIPO: TIntegerField;
    CDSFcVtaCabASOCIADO_PTOVTA: TIntegerField;
    CDSFcVtaCabASOCIADO_NRO: TFloatField;
    CDSFcVtaCabASOCIADO_CPTEFCH: TStringField;
    CDSFcVtaCabTIPO_OPERACION_EXPO: TStringField;
    CDSFcVtaCabMEDIO_TRANSPORTE_EXPO: TStringField;
    CDSFcVtaCabID_ADUANA: TIntegerField;
    CDSFcVtaCabREFERENCIA_EXPO: TStringField;
    CDSFcVtaCabCAMBIO_EXPO: TFloatField;
    CDSFcVtaCabVUELTO: TFloatField;
    CDSFcVtaCabID_TRANSPORTE: TIntegerField;
    CDSFcVtaCabID_DESTINO: TIntegerField;
    CDSFcVtaCabHONORARIOS: TFloatField;
    CDSFcVtaCabHONORARIOS_PROCENTAJ: TFloatField;
    CDSFcVtaCabDEDUCE_GASTOS: TStringField;
    CDSFcVtaCabCON_CAEA: TStringField;
    CDSFcVtaCabCAEA_INFORMADO: TStringField;
    CDSFcVtaCabFACTURA_DE_ANTICIPO: TStringField;
    CDSFcVtaCabQRIMAGE: TBlobField;
    CDSFcVtaCabCONDICIONPEDIDO: TIntegerField;
    QFcVtaDetPRESENTACION_UNIDAD: TStringField;
    QFcVtaDetID_DET_REMITO: TIntegerField;
    CDSFcVtaDetPRESENTACION_UNIDAD: TStringField;
    CDSFcVtaDetID_DET_REMITO: TIntegerField;
    QBuscaFC: TFDQuery;
    procedure ImportarExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DSBaseStateChange(Sender: TObject);
    procedure LeerXMLExecute(Sender: TObject);
    procedure DBGrid2TitleClick(Column: TColumn);
    procedure btNovedadesClick(Sender: TObject);
    procedure CDSFcVtaDetNewRecord(DataSet: TDataSet);
    procedure CDSFcVtaCabNewRecord(DataSet: TDataSet);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvThread1Execute(Sender: TObject; Params: Pointer);
    procedure btImportarClick(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ArchivoIni :TIniFile;
    id_cabecera:Integer;
    Nuevos,NoProcesado:Integer;
    lista:TStringList;
  
    Procedure VerificaCliente(Dato:String);
  end;

var
  FormImportarFcVta: TFormImportarFcVta;

implementation

uses UBuscaDirectorio, UListCpbteNoImportados, UDMain_FD;

{$R *.DFM}


procedure TFormImportarFcVta.VerificaCliente(Dato:String);
begin
  QBuscaCliente.Close;
  QBuscaCliente.ParamByName('CODIGO').AsString:=Dato;
  QBuscaCliente.open;
  if ((QBuscaCliente.IsEmpty) or (QBuscaClienteCODIGO.AsString='')) Then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      Try
        spIngresarCliente.Close;
        spIngresarCliente.ParamByName('CODIGO').Value        := CDSFcVtaCabXML.FieldByName('Codigo').AsString;
        spIngresarCliente.ParamByName('NOMBRE').Value        := CDSFcVtaCabXML.FieldByName('Nombre').AsString;
        spIngresarCliente.ParamByName('RAZON_SOCIAL').Value  := CDSFcVtaCabXML.FieldByName('RAZONSOCIAL').AsString;
        spIngresarCliente.ParamByName('DIRECCION').Value     := CDSFcVtaCabXML.FieldByName('DIRECCION').AsString;
        spIngresarCliente.ParamByName('TIPO_IVA').Value      := CDSFcVtaCabXML.FieldByName('TIPOIVA').AsInteger;
        spIngresarCliente.ParamByName('CUIT').Value          := CDSFcVtaCabXML.FieldByName('CUIT').AsString;
        spIngresarCliente.ParamByName('C_POSTAL').Value      := CDSFcVtaCabXML.FieldByName('CPOSTAL').AsString;
        spIngresarCliente.ParamByName('LOCALIDAD').Value     := CDSFcVtaCabXML.FieldByName('LOCALIDAD').AsString;
        spIngresarCliente.ParamByName('TELEFONO').Value      := '';
        spIngresarCliente.ParamByName('VENDEDOR').Value      := '';
        spIngresarCliente.ParamByName('Cuenta_op').Value     := '';
        spIngresarCliente.ParamByName('Zona').Value          := -1;
        spIngresarCliente.ParamByName('Celular').Value       := '';
        spIngresarCliente.ParamByName('MAIL').Value          := '';


        spIngresarCliente.ExecProc;

        QPrimerConVta.Close;
        QPrimerConVta.Open;
        spIngresarConVenta.Close;
        spIngresarConVenta.ParamByName('CODIGO').Value      := CDSFcVtaCabXML.FieldByName('CODIGO').AsString;
        spIngresarConVenta.ParamByName('CONDICION').Value   := QPrimerConVta.Fields[0].AsInteger;
        spIngresarConVenta.ExecProc;

        QPrimerConVta.Close;

        spLdr.Close;
        spLdr.ParamByName('CODIGO').Value      := CDSFcVtaCabXML.FieldByName('CODIGO').AsString;
        spLdr.ParamByName('NOMBRE').Value      := CDSFcVtaCabXML.FieldByName('NOMBRE').AsString;
        spLdr.ParamByName('DIRECCION').Value   := CDSFcVtaCabXML.FieldByName('DIRECCION').AsString;
        spLdr.ParamByName('CPOSTAL').Value     := CDSFcVtaCabXML.FieldByName('CPOSTAL').AsString;
        spLdr.ExecProc;
        DMMain_FD.fdcGestion.Commit;
      except
        DMMain_FD.fdcGestion.Rollback;
        ShowMessage('Transacción no finalizada....!');
      end;
    end;
  QBuscaCliente.Close;
end;

procedure TFormImportarFcVta.ImportarExecute(Sender: TObject);
var
Nombre:String;
I:iNTEGER;
begin
 // inherited;
  lista:=TStringList.Create;
  if VarIsNull(rxDbcCaja.KeyValue) Then
    RAISE Exception.Create('No hay caja seleccionada');
  CDSFcVtaCab.Open;
  CDSFcVtaDet.Open;
  CDSFcVtaImp.Open;
  Animate1.Visible:=True;
  Animate1.Active :=True;
  CDSFcVtaCabXML.First;
  Progress.MaxValue:=CDSFcVtaCabXML.RecordCount;
  while not(CDSFcVtaCabXML.Eof) do
    begin
      QBuscaFc.Close;
      QBuscaFc.ParamByName('letra').Value    :=CDSFcVtaCabXML.FieldByName('LetraFac').Value;
      QBuscaFc.ParamByName('sucfac').Value   :=CDSFcVtaCabXML.FieldByName('sucfac').Value;
      QBuscaFc.ParamByName('numfac').Value   :=CDSFcVtaCabXML.FieldByName('numeroFac').Value;
      QBuscaFc.ParamByName('sucursal').Value :=CDSFcVtaCabXML.FieldByName('sucursal').Value;
      QBuscaFc.ParamByName('tipo').Value     :=CDSFcVtaCabXML.FieldByName('tipocpbte').Value;
      QBuscaFc.ParamByName('clase').Value    :=CDSFcVtaCabXML.FieldByName('clasecpbte').Value;
      QBuscaFc.Open;

      Progress.Progress:=Progress.Progress+1;
      Application.ProcessMessages;

      if QBuscaFc.Fields[0].AsString='' then
        begin
          CDSFcVtaCab.Insert;
          For i:=0 to CDSFcVtaCabXML.FieldCount-1 do
            begin
              if CDSFcVtaCab.FindField(CDSFcVtaCabXML.Fields[i].FieldName)<>nil Then
                begin
                  Nombre:=CDSFcVtaCabXML.Fields[i].FieldName;
                  if Nombre='CODIGO' Then
                    VerificaCliente(Trim(CDSFcVtaCabXML.FieldByName(Nombre).Value));
                  CDSFcVtaCab.FieldByName(Nombre).Value:=CDSFcVtaCabXML.FieldByName(Nombre).Value;
                end;
            end;
          CDSFcVtaCab.FieldByName('id_fc').Value:=IBGFcVtaCab.IncrementFD(1);
          if chCAE.Checked then
            begin
              CDSFcVtaCabCAE.Value:='0';
              CDSFcVtaCabCAE_VENCIMIENTO.Clear;
            end;
          //****  Marco Todas como no anuladas
          CDSFcVtaCab.FieldByName('Anulado').Value:='N';
          //Paso al Detalle
          CDSFcVtaDetXML.First;
          while not(CDSFcVtaDetXML.Eof) do
            begin
            //Inserto Detalle
              CDSFcVtaDet.Insert;
              For i:=0 to CDSFcVtaDetXML.FieldCount-1 do
                begin
                  if CDSFcVtaDet.FindField(CDSFcVtaDetXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcVtaDetXML.Fields[i].FieldName;
                      CDSFcVtaDet.FieldByName(Nombre).Value:=CDSFcVtaDetXML.FieldByName(Nombre).Value;
                    end;
                end;

              if (Trunc(CDSFcVtaDetIVA_UNITARIO.AsFloat*1000)=0) then
                CDSFcVtaDetIVA_UNITARIO.AsFloat  := RoundTo ( CDSFcVtaDetUNITARIO_GRAVADO.AsFloat * ( CDSFcVtaDetIVA_TASA.AsFloat * 0.01),DMMain_FD.DecRedondeo);

              if (Trunc(CDSFcVtaDetTOTAL_GRAVADO.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL_GRAVADO.AsFloat := RoundTo ( CDSFcVtaDetCANTIDAD.AsFloat * CDSFcVtaDetUNITARIO_GRAVADO.AsFloat * ( 1- CDSFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

              if (Trunc(CDSFcVtaDetTOTAL_EXENTO.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL_EXENTO.AsFloat  := RoundTo ( CDSFcVtaDetCANTIDAD.AsFloat * CDSFcVtaDetUNITARIO_EXENTO.AsFloat * ( 1- CDSFcVtaDetDESCUENTO.AsFloat * 0.01 ),-2);

              if (Trunc(CDSFcVtaDetTOTAL.AsFloat*1000)=0) then
                CDSFcVtaDetTOTAL.AsFloat         := CDSFcVtaDetTOTAL_GRAVADO.AsFloat +
                                                  CDSFcVtaDetTOTAL_EXENTO.AsFloat;

              if (Trunc(CDSFcVtaDetIVA_TOTAL.AsFloat*1000)=0) then
                CDSFcVtaDetIVA_TOTAL.AsFloat := RoundTo ( CDSFcVtaDetTOTAL_GRAVADO.AsFloat * CDSFcVtaDetIVA_TASA.AsFloat * 0.01,-2 );

              CDSFcVtaDet.FieldByName('id').Value       := IBGFcVtaDet.IncrementFD(1);
              CDSFcVtaDet.FieldByName('id_cabfac').Value:= CDSFcVtaCab.FieldByName('id_fc').Value;

              if chbNoAfectaStok.Checked then
                CDSFcVtaDetAFECTA_STOCK.Value:='N';

              CDSFcVtaDet.Post;
              CDSFcVtaDetXML.Next;
            end;


        //Paso al Iva
          CDSFcVtaImpXML.First;
          while not(CDSFcVtaImpXML.Eof) do
            begin
            //Inserto Detalle
              CDSFcVtaImp.Insert;
              For i:=0 to CDSFcVtaImpXML.FieldCount-1 do
                begin
                  if CDSFcVtaImp.FindField(CDSFcVtaImpXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcVtaImpXML.Fields[i].FieldName;
                      CDSFcVtaImp.FieldByName(Nombre).Value:=CDSFcVtaImpXML.FieldByName(Nombre).Value;
                    end;
                end;
              CDSFcVtaImp.FieldByName('id_impuesto').Value  := IBGImpuestos.IncrementFD(1);
              CDSFcVtaImp.FieldByName('id_FcVtaCab').Value  := CDSFcVtaCab.FieldByName('id_fc').Value;
              CDSFcVtaImp.Post;
              CDSFcVtaImpXML.Next;
            end;
          CDSFcVtaCabCAJA_POR_DEFECTO.Value:=rxdbcCaja.KeyValue;
          CDSFcVtaCabCPTE_MANUAL.Value     :='S';

          CDSFcVtaCab.Post;

          if CDSFcVtaCab.State<>dsbrowse Then CDSFcVtaCab.Post;
          if CDSFcVtaDet.State<>dsbrowse Then CDSFcVtaDet.Post;
          if CDSFcVtaImp.State<>dsbrowse Then CDSFcVtaImp.Post;

          DMMain_FD.fdcGestion.StartTransaction;
          Try
          // Si es de contado ingreso el mov de caja
            CDSFcVtaCab.ApplyUpdates(0);
            CDSFcVtaDet.ApplyUpdates(0);
            CDSFcVtaImp.ApplyUpdates(0);
            if (CDSFcVtaCabTIPOCPBTE.Value='FO') or (CDSFcVtaCabTIPOCPBTE.Value='TK')  Then
              begin
                spIngresaMovCaja.Close;
                spIngresaMovCaja.ParamByName('ID_CPBTE').AsInteger       :=CDSFcVtaCabID_FC.AsInteger;
                spIngresaMovCaja.ParamByName('tipo_comprob').AsString    :=CDSFcVtaCabTIPOCPBTE.AsString;
                spIngresaMovCaja.ParamByName('clase_comprob').AsString   :=CDSFcVtaCabCLASECPBTE.AsString;
                spIngresaMovCaja.ParamByName('nrocpbte').AsString        :=CDSFcVtaCabNROCPBTE.AsString;
                spIngresaMovCaja.ParamByName('id_cuenta_caja').AsInteger :=rxDbcCaja.KeyValue;
                spIngresaMovCaja.ParamByName('fecha_movimiento').AsDate  :=CDSFcVtaCabFECHAVTA.AsDateTime;
                spIngresaMovCaja.ParamByName('debe').AsFloat             :=CDSFcVtaCabTOTAL.AsFloat;
                spIngresaMovCaja.ParamByName('haber').AsFloat            :=0;
                spIngresaMovCaja.ParamByName('tipooperacion').AsString   :='I';

                spIngresaMovCaja.ExecProc;
            end;

            if CDSFcVtaCabXML.FieldByName('Anulado').Value='S' Then
              begin
                CDSFcVtaCab.edit;
                CDSFcVtaCab.FieldByName('Anulado').Value:='S';
                CDSFcVtaCab.Post;
                CDSFcVtaCab.ApplyUpdates(0);
              end;
            DMMain_FD.fdcGestion.Commit;
            CDSFcVtaCab.Close;
            CDSFcVtaCab.Params.ParamByName('id').Clear;
            CDSFcVtaCab.OPeN;

            CDSFcVtaDet.Close;
            CDSFcVtaDet.Params.ParamByName('id').Clear;
            CDSFcVtaDet.OPeN;

            CDSFcVtaImp.Close;
            CDSFcVtaImp.Params.ParamByName('id').Clear;
            CDSFcVtaImp.OPeN;


          except
            DMMain_FD.fdcGestion.Rollback;

            CDSFcVtaCab.Close;
            CDSFcVtaCab.Params.ParamByName('id').Clear;
            CDSFcVtaCab.OPeN;

            CDSFcVtaDet.Close;
            CDSFcVtaDet.Params.ParamByName('id').Clear;
            CDSFcVtaDet.OPeN;

            CDSFcVtaImp.Close;
            CDSFcVtaImp.Params.ParamByName('id').Clear;
            CDSFcVtaImp.OPeN;


            ShowMessage('Transacción no finalizada....!');
          end;
        end
      else
        begin
          lista.Add(CDSFcVtaCabXML.FieldByName('letrafac').AsString+'-'+
                    CDSFcVtaCabXML.FieldByName('sucfac').AsString+'-'+
                    CDSFcVtaCabXML.FieldByName('numerofac').AsString+'   '+
                    CDSFcVtaCabXML.FieldByName('Nombre').AsString);
        end;
      CDSFcVtaCabXML.Next;
    end;
  Animate1.Visible:=False;
  Animate1.Active:=False;

  CDSFcVtaCabXML.Close;
  CDSFcVtaImpXML.Close;
  CDSFcVtaDetXML.Close;

  CDSFcVtaCab.Close;
  CDSFcVtaDet.Close;
  CDSFcVtaImp.Close;

  Progress.Progress:=0;

  //ShowMessage('Operación Finalizada...');
end;

procedure TFormImportarFcVta.JvThread1Execute(Sender: TObject; Params: Pointer);
begin
  inherited;
  Importar.Execute;
  JvThread1.Terminate;
 end;

procedure TFormImportarFcVta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if JvThread1.Terminated=False then
    JvThread1.Terminate;
  while not (JvThread1.Terminated) do
  begin
    Sleep(100);
    Application.ProcessMessages;
  end;

  ArchivoIni := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFactura.ini');
  ArchivoIni.WriteString('Path', 'Path', lbDirectorio.Caption);
  ArchivoIni.Free;
  FreeAndNil(lista);
  Action:=caFree;
 // inherited;

end;

procedure TFormImportarFcVta.FormDestroy(Sender: TObject);
begin
 // JvThread1.Destroy;
  if FormImportarFcVta<>nil then
    FormImportarFcVta:=nil;
 // inherited;
end;

procedure TFormImportarFcVta.FormCreate(Sender: TObject);
begin
  inherited;
  CDSCaja.Open;
  ArchivoIni           := TIniFile.Create(ExtractFilePath(ParamStr(0))+'ImportarFactura.ini');
  lbDirectorio.Caption := ArchivoIni.ReadString('Path', 'Path', '...');
  ArchivoIni.Free;
end;

procedure TFormImportarFcVta.DSBaseStateChange(Sender: TObject);
begin
 inherited;
 pnPrincipal.Enabled:=True;
end;

procedure TFormImportarFcVta.Label5Click(Sender: TObject);
begin
  inherited;
 if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.Directorio:=lbDirectorio.Caption;
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    lbDirectorio.Caption:=FormBuscaDirectorio.Directorio;
end;

procedure TFormImportarFcVta.LeerXMLExecute(Sender: TObject);
begin
  inherited;
  begin
    CDSFcVtaCabXML.LoadFromFile(lbDirectorio.Caption+'\FcVtaCab.XML');
    CDSFcVtaDetXML.MasterSource   :=DSFcVtaCabXML;
    CDSFcVtaDetXML.MasterFields   :='id_fc';
    CDSFcVtaDetXML.IndexFieldNames:='id_cabfac';
    CDSFcVtaDetXML.LoadFromFile(lbDirectorio.Caption+'\fcvtadet.xml');
    CDSFcVtaImpXML.MasterSource   :=DSFcVtaCabXML;
    CDSFcVtaImpXML.MasterFields   :='id_fc';
    CDSFcVtaImpXML.IndexFieldNames:='ID_FCVTACAB';
    CDSFcVtaImpXML.LoadFromFile(lbDirectorio.Caption+'\fcvtaimp.xml');
    CDSFcVtaCabXML.IndexFieldNames:='nrocpbte';
  end;
end;

procedure TFormImportarFcVta.btImportarClick(Sender: TObject);
begin
  inherited;
  //JvThread1.FreeOnTerminate:=True;
  //JvThread1.Execute(self);
  Importar.Execute;
  Application.ProcessMessages;
end;

procedure TFormImportarFcVta.btNovedadesClick(Sender: TObject);
begin
  inherited;
  if (lista<>nil) and (lista.Count>0) then
    begin
      if Not(Assigned(FormListaNoImportados)) then
        FormListaNoImportados:=TFormListaNoImportados.Create(Self);
      FormListaNoImportados.mLista.Lines:=(lista);
      FormListaNoImportados.Show;
    end
  else
    ShowMessage('No hay Novedades');
end;

procedure TFormImportarFcVta.CDSFcVtaCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSFcVtaCabPOR_CTA_Y_ORDEN.Value     := 'N';
  CDSFcVtaCabCON_GTIA_EXTENDIDA.Value  := 'N';
  CDSFcVtaCabMESES_DE_GARANTIA.Value   := 0;
  CDSFcVtaCabINF_X.AsString            := 'N';
  CDSFcVtaCabIDREMITO.Clear;
  CDSFcVtaCabPROVEEDOR.AsString        := '';
  CDSFcVtaCabTIPO_VTA.Value            := 'M';
  CDSFcVtaCabVALORES_RECIBIDOS.AsFloat := 0;
  CDSFcVtaCabMONEDA_CPBTE.Value              := 1;
  CDSFcVtaCabMONEDA_CPBTE_COTIZACION.AsFloat := 1;
end;


procedure TFormImportarFcVta.CDSFcVtaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSFcVtaDetMESES_GTIA.Value        := 0;
  CDSFcVtaDetDESCUENTO.AsFloat       := 0;
  CDSFcVtaDetCOTIZACION.AsFloat      := 1;
  CDSFcVtaDetID_MONEDA.AsFloat       := 1;
  CDSFcVtaDetPRECIO_EDITABLE.Value   := 'S';
  CDSFcVtaDetIVA_UNITARIO.AsFloat    := 0;
  CDSFcVtaDetIVA_TOTAL.AsFloat       := 0;
  CDSFcVtaDetTOTAL_GRAVADO.AsFloat   := 0;
  CDSFcVtaDetTOTAL_EXENTO.AsFloat    := 0;
  CDSFcVtaDetUNITARIO_TOTAL_OLD.Value:= 0;
  CDSFcVtaDetUNITARIO_IVA_OLD.Value  := 0;
  CDSFcVtaDetUNI_C_REC.Value         := 'N';


end;

procedure TFormImportarFcVta.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if Key=VK_DELETE then
    DBGrid2.DataSource.DataSet.Delete;
end;

procedure TFormImportarFcVta.DBGrid2TitleClick(Column: TColumn);
begin
  inherited;
  CDSFcVtaCab.IndexFieldNames:=Column.Field.FieldName;
end;

end.