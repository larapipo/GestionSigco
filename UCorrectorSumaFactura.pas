unit UCorrectorSumaFactura;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, UABMBase,
  JvComponentBase, JvFormPlacement, ImgList, wwDialog, wwidlg, ActnList,
  ComCtrls, JvLabel, JvDBControls, JvExControls, JvGradient, Buttons, StdCtrls,
  ToolWin, ExtCtrls, Grids, DBGrids, JvExDBGrids, JvDBGrid, Mask, DBCtrls,
  Data.FMTBcd, Data.DB, Datasnap.DBClient, Datasnap.Provider, JvAppStorage,
  JvAppIniStorage, Data.SqlExpr, System.Actions;

type
  TFormCorrectorSumaFac = class(TFormABMBase)
    DSPVentaCab: TDataSetProvider;
    CDSVentaCab: TClientDataSet;
    CDSVentaCabID_FC: TIntegerField;
    CDSVentaCabTIPOCPBTE: TStringField;
    CDSVentaCabNROCPBTE: TStringField;
    CDSVentaCabLETRAFAC: TStringField;
    CDSVentaCabLDR: TIntegerField;
    CDSVentaCabNOMBRE: TStringField;
    CDSVentaCabRAZONSOCIAL: TStringField;
    CDSVentaCabDIRECCION: TStringField;
    CDSVentaCabCPOSTAL: TStringField;
    CDSVentaCabLOCALIDAD: TStringField;
    CDSVentaCabTIPOIVA: TIntegerField;
    CDSVentaCabCUIT: TStringField;
    CDSVentaCabANULADO: TStringField;
    CDSVentaCabNRORTO: TStringField;
    CDSVentaCabIMPRESO: TStringField;
    CDSVentaCabOBSERVACION1: TStringField;
    CDSVentaCabOBSERVACION2: TStringField;
    CDSVentaCabCPTE_MANUAL: TStringField;
    CDSVentaCabFACTURANRO: TStringField;
    CDSVentaCabZONA: TIntegerField;
    CDSVentaCabCALCULA_SOBRETASA: TStringField;
    CDSVentaCabDESGLOZAIVA: TStringField;
    CDSVentaCabNROENTREGA: TIntegerField;
    CDSVentaCabMUESTRACONDVENTA: TStringField;
    CDSVentaCabMUESTRADEPOSITO: TStringField;
    CDSVentaCabMUESTRASUCURSAL: TStringField;
    CDSVentaCabMUESTRALDR: TStringField;
    CDSVentaCabMUESTRAIVA: TStringField;
    CDSVentaCabMUESTRACOMPROBANTE: TStringField;
    CDSVentaCabINGRESA_A_CTACTE: TStringField;
    CDSVentaCabINGRESA_LIBRO_IVA: TStringField;
    CDSVentaCabCLASECPBTE: TStringField;
    CDSVentaCabCODIGO: TStringField;
    CDSVentaCabSUCFAC: TStringField;
    CDSVentaCabNUMEROFAC: TStringField;
    CDSVentaCabCONDICIONVTA: TIntegerField;
    CDSVentaCabID_TIPOCOMPROBANTE: TIntegerField;
    CDSVentaCabREDUCIDA: TStringField;
    CDSVentaCabMUESTRAVENDEDOR: TStringField;
    CDSVentaCabLIQUIDADA: TStringField;
    CDSVentaCabVENDEDOR: TStringField;
    CDSVentaCabSUCURSAL: TIntegerField;
    CDSVentaCabUSUARIO: TStringField;
    CDSVentaCabCAJA_POR_DEFECTO: TIntegerField;
    CDSVentaCabNC_CONTADO: TStringField;
    CDSVentaCabIDREMITO: TIntegerField;
    CDSVentaCabTIPO_REMITO: TStringField;
    CDSVentaCabMUESTRADIRECCIONLDR: TStringField;
    CDSVentaCabLISTAPRECIO: TIntegerField;
    CDSVentaCabNRO_Z: TIntegerField;
    CDSVentaCabRENGLONES: TSmallintField;
    CDSVentaCabNOTAPEDIDO_ID: TIntegerField;
    CDSVentaCabNOTAPEDIDO_NROCPBTE: TStringField;
    CDSVentaCabMUESTRAPROVEEDOR: TStringField;
    CDSVentaCabPOR_CTA_Y_ORDEN: TStringField;
    CDSVentaCabPROVEEDOR: TStringField;
    CDSVentaCabFECHAVTO: TSQLTimeStampField;
    CDSVentaCabNETOEXEN1: TFMTBCDField;
    CDSVentaCabNETOGRAV2: TFMTBCDField;
    CDSVentaCabFECHAVTA: TSQLTimeStampField;
    CDSVentaCabVALORES_RECIBIDOS: TFMTBCDField;
    CDSVentaCabCOMSIONVENDEDOR: TFMTBCDField;
    CDSVentaCabPERCEPCION_IB_TASA: TFMTBCDField;
    CDSVentaCabPERCEPCION_IB_IMPORTE: TFMTBCDField;
    CDSVentaCabPERCIBE_IB: TStringField;
    CDSVentaCabPERCEPCION_IB_BASEIMPONIBLE: TFMTBCDField;
    CDSVentaCabFECHA_HORA: TSQLTimeStampField;
    CDSVentaCabN_OPERACION2: TFMTBCDField;
    CDSVentaCabNETOGRAV1: TFMTBCDField;
    CDSVentaCabDSTO: TFMTBCDField;
    CDSVentaCabDSTOIMPORTE: TFMTBCDField;
    CDSVentaCabTOTAL: TFMTBCDField;
    CDSVentaCabDEBE: TFMTBCDField;
    CDSVentaCabNETOEXEN2: TFMTBCDField;
    CDSVentaCabDEPOSITO: TIntegerField;
    CDSVentaCabTIPO_VTA: TStringField;
    CDSVentaCabMONEDA_CPBTE: TIntegerField;
    CDSVentaCabMONEDA_CPBTE_COTIZACION: TFMTBCDField;
    CDSVentaCabPRESUPUESTO_ID: TIntegerField;
    CDSVentaCabPRESUPUESTO_NROCPBTE: TStringField;
    CDSVentaCabID_RECEPCION_GTIA: TIntegerField;
    CDSVentaCabFECHA_LIQUIDACION: TSQLTimeStampField;
    CDSVentaCabID_FC_CLON: TIntegerField;
    CDSVentaCabJURIDICION: TIntegerField;
    CDSVentaCabJURIDICION_LOCALIDAD: TIntegerField;
    CDSVentaCabCON_GTIA_EXTENDIDA: TStringField;
    CDSVentaCabMESES_DE_GARANTIA: TIntegerField;
    CDSVentaCabPOLIZA: TStringField;
    CDSVentaCabVALOR_ASEGURADO: TFMTBCDField;
    CDSVentaDet: TClientDataSet;
    CDSVentaDetID: TIntegerField;
    CDSVentaDetID_CABFAC: TIntegerField;
    CDSVentaDetCODIGOARTICULO: TStringField;
    CDSVentaDetCANTIDAD: TFMTBCDField;
    CDSVentaDetUNITARIO_TOTAL: TFMTBCDField;
    CDSVentaDetIVA_TASA: TFMTBCDField;
    CDSVentaDetDESCUENTO: TFMTBCDField;
    CDSVentaDetIVA_TOTAL: TFMTBCDField;
    CDSVentaDetTOTAL_GRAVADO: TFMTBCDField;
    CDSVentaDetTOTAL_EXENTO: TFMTBCDField;
    CDSVentaDetTOTAL: TFMTBCDField;
    CDSVentaDetUNITARIO_GRAVADO: TFMTBCDField;
    CDSVentaDetUNITARIO_EXENTO: TFMTBCDField;
    CDSVentaDetDETALLE: TStringField;
    CDSVentaDetUNIDAD: TStringField;
    CDSVentaDetDESGLOZAIVA: TStringField;
    CDSVentaDetMODO_GRAVAMEN: TStringField;
    CDSVentaDetTIPOIVA_TASA: TIntegerField;
    CDSVentaDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSVentaDetIVA_UNITARIO: TFMTBCDField;
    DSPVentaDet: TDataSetProvider;
    DSPImpuestos: TDataSetProvider;
    CDSImpuestos: TClientDataSet;
    CDSImpuestosID_IMPUESTO: TIntegerField;
    CDSImpuestosID_FCVTACAB: TIntegerField;
    CDSImpuestosCODIGO_GRAVAMEN: TIntegerField;
    CDSImpuestosDETALLE: TStringField;
    CDSImpuestosNETO: TFMTBCDField;
    CDSImpuestosTASA: TFMTBCDField;
    CDSImpuestosIMPORTE: TFMTBCDField;
    JvDBGrid1: TJvDBGrid;
    JvDBGrid2: TJvDBGrid;
    JvDBGrid3: TJvDBGrid;
    DSCab: TDataSource;
    DSDet: TDataSource;
    DataSource3: TDataSource;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCorrectorSumaFac: TFormCorrectorSumaFac;

implementation

uses DMMainForm_2;
{$R *.dfm}

end.
