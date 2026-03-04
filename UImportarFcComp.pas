unit UImportarFcComp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  UABMBase, ComCtrls, Buttons, StdCtrls, ToolWin, ExtCtrls, Grids, DBGrids, IBGenerator,
  Gauges, Variants, JvComponentBase, ImgList, JvExControls,
  JvGradient, JvFormPlacement, JvLabel, JvDBControls, FMTBcd, SqlExpr,
  DBXCommon, JvDBLookup, JvAppStorage, JvAppIniStorage, System.Actions, Data.DB,
  Datasnap.Provider, Datasnap.DBClient, Vcl.ActnList, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, System.ImageList, System.StrUtils;

type
  TFormImportarFcComp = class(TFormABMBase)
    CDSFcCompCab: TClientDataSet;
    DSPFcCompCab: TDataSetProvider;
    DSFcCompCab: TDataSource;
    Importar: TAction;
    IBGFcCompCab: TIBGenerator;
    CDSFcCompPerIB: TClientDataSet;
    DSPFcCompPerIB: TDataSetProvider;
    DSFcCompPerIB: TDataSource;
    DSFcCompDet: TDataSource;
    CDSFcCompDet: TClientDataSet;
    DSPFcCompDet: TDataSetProvider;
    IBGFcCompDet: TIBGenerator;
    DSFcCompImp: TDataSource;
    CDSFcCompImp: TClientDataSet;
    DSPFcCompImp: TDataSetProvider;
    IBGImpuestos: TIBGenerator;
    DSFcCompPerIva: TDataSource;
    CDSFcCompPerIva: TClientDataSet;
    DSPFcCompPerIva: TDataSetProvider;
    IBGPercepcionIVA: TIBGenerator;
    IBGPercepcionIB: TIBGenerator;
    DSFcCompConPago: TDataSource;
    CDSFcCompCondPago: TClientDataSet;
    DSPFcCompConPago: TDataSetProvider;
    ibgCondPago: TIBGenerator;
    btImportar: TBitBtn;
    ToolButton1: TToolButton;
    CDSFcCompCabXML: TClientDataSet;
    Label1: TLabel;
    dbgFcCompCab: TDBGrid;
    dbgFcCompDet: TDBGrid;
    dbgFcCompImpuesto: TDBGrid;
    dbgDscto: TDBGrid;
    dbgRetIIBB: TDBGrid;
    dbgRetIVA: TDBGrid;
    DSFcCompCabXML: TDataSource;
    DSFcCompDetXML: TDataSource;
    DSFcCompImpXML: TDataSource;
    DSFcCompPerIvaXML: TDataSource;
    DSFcCompPerIBXML: TDataSource;
    DSCompCondPagoXML: TDataSource;
    CDSFcCompDetXML: TClientDataSet;
    CDSFcCompImpXML: TClientDataSet;
    CDSFcCompPerIvaXML: TClientDataSet;
    CDSFcCompPerIBXML: TClientDataSet;
    CDSFcCompCondPagoXML: TClientDataSet;
    BitBtn1: TBitBtn;
    Progress: TGauge;
    DSCaja: TDataSource;
    Animate1: TAnimate;
    rxDbcCaja: TJvDBLookupCombo;
    CDSCaja: TClientDataSet;
    DSPCaja: TDataSetProvider;
    QCheckFC: TFDQuery;
    QCheckProv: TFDQuery;
    spIngresarProv: TFDStoredProc;
    QCheckArt: TFDQuery;
    spIngresarArt: TFDStoredProc;
    QFcCompDet: TFDQuery;
    QFcCompCab: TFDQuery;
    QFcCompImp: TFDQuery;
    QFcCompPerIva: TFDQuery;
    QFcCompPerIB: TFDQuery;
    QFcCompCondPago: TFDQuery;
    QBuscaFC: TFDQuery;
    QC: TFDQuery;
    spIngresaMovCaja: TFDStoredProc;
    QCheckRubro: TFDQuery;
    QCheckSubrubro: TFDQuery;
    spABMRubro: TFDStoredProc;
    spABMSubRubro: TFDStoredProc;
    spABMMarca: TFDStoredProc;
    QCheckMarca: TFDQuery;
    CDSFcCompCabID_FC: TIntegerField;
    CDSFcCompCabTIPOCPBTE: TStringField;
    CDSFcCompCabCLASECPBTE: TStringField;
    CDSFcCompCabCODIGO: TStringField;
    CDSFcCompCabNROCPBTE: TStringField;
    CDSFcCompCabLETRAFAC: TStringField;
    CDSFcCompCabSUCFAC: TStringField;
    CDSFcCompCabNUMEROFAC: TStringField;
    CDSFcCompCabNOMBRE: TStringField;
    CDSFcCompCabRAZONSOCIAL: TStringField;
    CDSFcCompCabDIRECCION: TStringField;
    CDSFcCompCabCPOSTAL: TStringField;
    CDSFcCompCabLOCALIDAD: TStringField;
    CDSFcCompCabTIPOIVA: TIntegerField;
    CDSFcCompCabCUIT: TStringField;
    CDSFcCompCabFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompCabFECHAVTO: TSQLTimeStampField;
    CDSFcCompCabCONDICIONCOMPRA: TIntegerField;
    CDSFcCompCabANULADO: TStringField;
    CDSFcCompCabORDENCOMPRA: TStringField;
    CDSFcCompCabN_OPERACION2: TFloatField;
    CDSFcCompCabNETOGRAV1: TFloatField;
    CDSFcCompCabDSTO: TFloatField;
    CDSFcCompCabDSTOIMPORTE: TFloatField;
    CDSFcCompCabNETOGRAV2: TFloatField;
    CDSFcCompCabNETOEXEN1: TFloatField;
    CDSFcCompCabNETOEXEN2: TFloatField;
    CDSFcCompCabIMPORTEEXCLUIDO2: TFloatField;
    CDSFcCompCabIMPORTEEXCLUIDO1: TFloatField;
    CDSFcCompCabRETENCION_IVA: TFloatField;
    CDSFcCompCabTOTAL: TFloatField;
    CDSFcCompCabDEBE: TFloatField;
    CDSFcCompCabAPLICA: TStringField;
    CDSFcCompCabOBSERVACION1: TStringField;
    CDSFcCompCabOBSERVACION2: TStringField;
    CDSFcCompCabSUCURSALCOMPRA: TIntegerField;
    CDSFcCompCabZONA: TIntegerField;
    CDSFcCompCabDEPOSITO: TIntegerField;
    CDSFcCompCabDESGLOZAIVA: TStringField;
    CDSFcCompCabCALCULA_SOBRETASA: TStringField;
    CDSFcCompCabFECHAFISCAL: TSQLTimeStampField;
    CDSFcCompCabNETOMONOTRIBUTO1: TFloatField;
    CDSFcCompCabNETOMONOTRIBUTO2: TFloatField;
    CDSFcCompCabCPBTE_INTERNO: TStringField;
    CDSFcCompCabINGRESA_A_CTACTE: TStringField;
    CDSFcCompCabINGRESA_LIBRO_IVA: TStringField;
    CDSFcCompCabREDUCIDA: TStringField;
    CDSFcCompCabTIPO_PROVEEDOR: TStringField;
    CDSFcCompCabJURIDICCION: TIntegerField;
    CDSFcCompCabPERCEPCION_IB_BASEIMPONIBLE: TFloatField;
    CDSFcCompCabFECHA_HORA: TSQLTimeStampField;
    CDSFcCompCabUSUARIO: TStringField;
    CDSFcCompCabTOTAL_UNIDADES: TFloatField;
    CDSFcCompCabMONEDA_CPBTE: TIntegerField;
    CDSFcCompCabMONEDA_CPBTE_COTIZACION: TFloatField;
    CDSFcCompCabNUMERO_OPERACION: TStringField;
    CDSFcCompCabCAE: TStringField;
    CDSFcCompCabCAE_VENCIMIENTO: TSQLTimeStampField;
    CDSFcCompCabFACTURA_ELECTRONICA: TStringField;
    CDSFcCompCabCOD_OPERACION_AFIP: TSingleField;
    CDSFcCompCabTIPOCOMP_AFIP: TStringField;
    CDSFcCompCabCOD_CARACT_RECP_AFIP: TIntegerField;
    CDSFcCompCabCOD_CARACT_EMIS_AFIP: TIntegerField;
    CDSFcCompCabNRO_IIBB_RECEP: TStringField;
    CDSFcCompCabNRO_RENSPA_EMISOR: TStringField;
    CDSFcCompCabNRO_RENSPA_RECEP: TStringField;
    CDSFcCompCabFECHA_OPERACION: TSQLTimeStampField;
    CDSFcCompCabLUGAR_REALIZA_AFIP: TStringField;
    CDSFcCompCabCOD_MOTIVO_AFIP: TIntegerField;
    CDSFcCompCabNRO_RUCA_EMISOR_AFIP: TSingleField;
    CDSFcCompCabNRO_RUCA_RECEPTOR_AFIP: TSingleField;
    CDSFcCompCabFECHA_FAENA_AFIP: TSQLTimeStampField;
    CDSFcCompCabFECHA_RECEP_AFIP: TSQLTimeStampField;
    CDSFcCompCabDATOS_ADIC_AFIP: TStringField;
    CDSFcCompCabFECHA_INCIO_ACTIV: TSQLTimeStampField;
    CDSFcCompCabCODIGOBARRA_AFIP: TStringField;
    CDSFcCompCabCUIT_AUTORIZADO: TStringField;
    CDSFcCompCabNOMBRE_AUTORIZADO: TStringField;
    CDSFcCompCabTIPO_LIQUIDACION: TStringField;
    CDSFcCompCabCUIT_AUTORIZADO_RECEP: TStringField;
    CDSFcCompCabID_CPBTE_ANULADO_LIQ: TIntegerField;
    CDSFcCompDetID: TIntegerField;
    CDSFcCompDetID_CABFAC: TIntegerField;
    CDSFcCompDetTIPOCPBTE: TStringField;
    CDSFcCompDetCLASECPBTE: TStringField;
    CDSFcCompDetNROCPBTE: TStringField;
    CDSFcCompDetCODIGOPROVEEDOR: TStringField;
    CDSFcCompDetRENGLON: TFloatField;
    CDSFcCompDetFECHACOMPRA: TSQLTimeStampField;
    CDSFcCompDetCODIGOARTICULO: TStringField;
    CDSFcCompDetDETALLE: TStringField;
    CDSFcCompDetDETALLE_ADICIONAL: TStringField;
    CDSFcCompDetUNIDAD: TStringField;
    CDSFcCompDetCANTIDAD: TFloatField;
    CDSFcCompDetUNIDADES_TOTAL: TFloatField;
    CDSFcCompDetUNIDADES_EXENTO: TFloatField;
    CDSFcCompDetUNIDADES_GRAVADO: TFloatField;
    CDSFcCompDetUNITARIO_TOTAL: TFloatField;
    CDSFcCompDetUNITARIO_EXENTO: TFloatField;
    CDSFcCompDetUNITARIO_GRAVADO: TFloatField;
    CDSFcCompDetDESGLOZAIVA: TStringField;
    CDSFcCompDetMODO_GRAVAMEN: TStringField;
    CDSFcCompDetTIPOIVA_TASA: TIntegerField;
    CDSFcCompDetIVA_TASA: TFloatField;
    CDSFcCompDetTIPOIVA_SOBRETASA: TIntegerField;
    CDSFcCompDetIVA_SOBRETASA: TFloatField;
    CDSFcCompDetCOSTO_TOTAL: TFloatField;
    CDSFcCompDetCOSTO_EXENTO: TFloatField;
    CDSFcCompDetCOSTO_GRAVADO: TFloatField;
    CDSFcCompDetDESCUENTO: TFloatField;
    CDSFcCompDetTOTAL: TFloatField;
    CDSFcCompDetDEPOSITO: TIntegerField;
    CDSFcCompDetMARGEN: TFloatField;
    CDSFcCompDetAFECTA_STOCK: TStringField;
    CDSFcCompDetCALCULA_SOBRETASA: TStringField;
    CDSFcCompDetCOSTO_IMP_INTERNO: TFloatField;
    CDSFcCompDetUNIDADES_IMP_INTERNOS: TFloatField;
    CDSFcCompDetUNITARIO_IMP_INTERNO: TFloatField;
    CDSFcCompDetCON_NRO_SERIE: TStringField;
    CDSFcCompDetID_RECEPCION_CAB: TIntegerField;
    CDSFcCompDetID_RECEPCION_DET: TIntegerField;
    CDSFcCompDetNRORECEPCION: TStringField;
    CDSFcCompDetGRAVADO_IB: TStringField;
    CDSFcCompDetID_MONEDA: TIntegerField;
    CDSFcCompDetCOTIZACION: TFloatField;
    CDSFcCompDetCONTROL_TRAZABILIDAD: TStringField;
    CDSFcCompDetCANTIDAD_UNIDADES: TFloatField;
    CDSFcCompDetPRESENTACION_CANT: TFloatField;
    CDSFcCompDetTIPO_LIQUI: TIntegerField;
    CDSFcCompDetCODIGO_RAZA: TIntegerField;
    CDSFcCompDetDETALLE_RAZA: TStringField;
    CDSFcCompDetTROPA: TIntegerField;
    CDSFcCompDetCABEZAS: TIntegerField;
    CDSFcCompDetRUBRO: TStringField;
    CDSFcCompDetSUBRUBRO: TStringField;
    CDSFcCompDetMARCA_STK: TStringField;
    CDSFcCompDetMUESTRARUBRO: TStringField;
    CDSFcCompDetMUESTRASUBRUBRO: TStringField;
    CDSFcCompDetMUESTRAMARCA: TStringField;
    CDSFcCompImpID_IMPUESTO: TIntegerField;
    CDSFcCompImpCODIGO_GRAVAMEN: TIntegerField;
    CDSFcCompImpDETALLE: TStringField;
    CDSFcCompImpID_FCCOMPCAB: TIntegerField;
    CDSFcCompImpNETO: TFloatField;
    CDSFcCompImpTASA: TFloatField;
    CDSFcCompImpIMPORTE: TFloatField;
    CDSFcCompPerIvaID_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIvaDETALLE: TStringField;
    CDSFcCompPerIvaID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIvaNETO: TFloatField;
    CDSFcCompPerIvaTASA: TFloatField;
    CDSFcCompPerIvaIMPORTE: TFloatField;
    CDSFcCompPerIvaCODIGOREGIMEN: TIntegerField;
    CDSFcCompPerIBID_PERCEPCION: TIntegerField;
    CDSFcCompPerIBCODIGO_PERCEPCION: TIntegerField;
    CDSFcCompPerIBDETALLE: TStringField;
    CDSFcCompPerIBID_FCCOMPCAB: TIntegerField;
    CDSFcCompPerIBNETO: TFloatField;
    CDSFcCompPerIBTASA: TFloatField;
    CDSFcCompPerIBIMPORTE: TFloatField;
    CDSFcCompPerIBJURIDICION: TIntegerField;
    CDSFcCompCondPagoID: TIntegerField;
    CDSFcCompCondPagoID_FC: TIntegerField;
    CDSFcCompCondPagoTIPOCPBTE: TStringField;
    CDSFcCompCondPagoNROCPBTE: TStringField;
    CDSFcCompCondPagoCODIGO: TStringField;
    CDSFcCompCondPagoITEM: TIntegerField;
    CDSFcCompCondPagoFECHA: TSQLTimeStampField;
    CDSFcCompCondPagoDSCTO: TFloatField;
    CDSFcCompCondPagoIMPORTE: TFloatField;
    CDSFcCompCondPagoCLASECPBTE: TStringField;
    CDSCajaID_CAJA: TIntegerField;
    CDSCajaID_CUENTA_CAJA: TIntegerField;
    CDSCajaNUMEROCAJA: TIntegerField;
    CDSCajaMUESTRACAJA: TStringField;
    CDSFcCompDetCANTIDAD_INVENTARIO: TFloatField;
    procedure ImportarExecute(Sender: TObject);
    procedure CDSFcCompCabNewRecord(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DSBaseStateChange(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    function  CheckFC:    boolean;
    function  CheckProv(Codigo:string):     Boolean;
    function  CheckArt (Codigo:string):     Boolean;
    function  CheckRubro(Codigo:string):    Boolean;
    function  CheckSubrubro(Codigo:string): Boolean;
    function  CheckMarca(Codigo:string):    Boolean;
    function  CargaProv:                    Boolean;
    function  CargaArt:                     Boolean;
    function  CargaRubro:                   Boolean;
    function  CargaSubrubro:                Boolean;
    function  CargaMarca:                   Boolean;

  public
    { Public declarations }
    id_cabecera:Integer;
    Nuevos,NoProcesado:Integer;
    Cargado:Boolean;
  end;

var
  FormImportarFcComp: TFormImportarFcComp;

implementation

{$R *.DFM}

uses  UBuscaDirectorio, UDMain_FD;


function TFormImportarFcComp.CheckProv(Codigo:string):  boolean;
begin
  QCheckProv.Close;
  QCheckProv.ParamByName('codigo').Value  :=  Codigo;
  QCheckProv.Open;
  Result    :=  (not QCheckProv.IsEmpty);
  QCheckProv.Close;
end;

function TFormImportarFcComp.CargaProv: boolean;
begin
  if Trim(CDSFcCompCabCODIGO.AsString)<>'' then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        spIngresarProv.Close;
        spIngresarProv.ParamByName('CODIGO').Value          :=  CDSFcCompCabCODIGO.AsString;
        spIngresarProv.ParamByName('NOMBRE').Value          :=  CDSFcCompCabNOMBRE.AsString;
        spIngresarProv.ParamByName('RAZONSOCIAL').Value     :=  CDSFcCompCabRAZONSOCIAL.AsString;
        spIngresarProv.ParamByName('DIRECCION').Value       :=  CDSFcCompCabDIRECCION.AsString;
        spIngresarProv.ParamByName('CUIT').Value            :=  CDSFcCompCabCUIT.AsString;
        spIngresarProv.ParamByName('TELEFONO').Value        :=  '';
        spIngresarProv.ParamByName('CPOSTAL').Value         :=  CDSFcCompCabCPOSTAL.AsString;
        spIngresarProv.ParamByName('CON_IVA').Value         :=  CDSFcCompCabTIPOIVA.AsInteger;
        spIngresarProv.ParamByName('OBSERVACIONES').Value   :=  '';
        spIngresarProv.ParamByName('MAIL').Value            :=  '';
        spIngresarProv.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        Result        :=  True;
      except
        DMMain_FD.fdcGestion.Rollback;
        Result        :=  False;
      end;

      spIngresarProv.Close;
    end
  else
    Result    :=  False;
end;


function TFormImportarFcComp.CheckFC: Boolean;    // reviso: si existe prov, si el prov no tiene una FC con mismo tipocpbte, clasecpbte, letra, suc, num
begin
  if not CheckProv(CDSFcCompCabCODIGO.AsString) then
    Result  :=  CargaProv
  else
    begin
      QCheckFC.Close;
      QCheckFC.ParamByName('proveedor').Value     :=  CDSFCCompCabCODIGO.AsString;
      QCheckFC.ParamByName('tipocpbte').Value     :=  CDSFcCompCabTIPOCPBTE.AsString;
      QCheckFC.ParamByName('clasecpbte').Value    :=  CDSFcCompCabCLASECPBTE.AsString;
      QCheckFC.ParamByName('letra').Value         :=  CDSFcCompCabLETRAFAC.AsString;
      QCheckFC.ParamByName('suc').Value           :=  CDSFcCompCabSUCFAC.AsString;
      QCheckFC.ParamByName('numero').Value        :=  CDSFcCompCabNUMEROFAC.AsString;
      QCheckFC.Open;

      Result  :=  QCheckFC.IsEmpty;

      QCheckFC.Close;
    end;
end;

function TFormImportarFcComp.CheckMarca(Codigo:string):  boolean;
begin
  if trim(Codigo)<>'' then
    begin
      QCheckMarca.Close;
      QCheckMarca.ParamByName('codigo').Value  :=  Codigo;
      QCheckMarca.Open;
      Result    :=  QCheckMarca.IsEmpty;
      QCheckMarca.Close;
    end
  else
    Result      :=  False;
end;

function TFormImportarFcComp.CheckRubro(Codigo:string):  boolean;
begin
  if trim(Codigo)<>'' then
    begin
      QCheckRubro.Close;
      QCheckRubro.ParamByName('codigo').Value  :=  Codigo;
      QCheckRubro.Open;
      Result    :=  (not QCheckRubro.IsEmpty);
      QCheckRubro.Close;
    end
  else
    Result      :=  False;
end;

function TFormImportarFcComp.CheckSubrubro(Codigo:string):  boolean;
begin
  if trim(Codigo)<>'' then
    begin
      QCheckSubrubro.Close;
      QCheckSubrubro.ParamByName('codigo').Value  :=  Codigo;
      QCheckSubrubro.Open;
      Result    :=  (not QCheckSubrubro.IsEmpty);
      QCheckSubrubro.Close;
    end
  else
    Result      :=  False;
end;



function TFormImportarFcComp.CheckArt(Codigo:string):  boolean;
begin
  if trim(Codigo)<>'' then
    begin
      QCheckArt.Close;
      QCheckArt.ParamByName('codigo').Value  :=  Codigo;
      QCheckArt.Open;
      Result    :=  (not QCheckArt.IsEmpty);
      QCheckArt.Close;
    end
  else
    Result      :=  False;
end;

function TFormImportarFcComp.CargaRubro: boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spABMRubro.Close;
    spABMRubro.ParamByName('CODIGO').Value  :=  CDSFcCompDetRUBRO.AsString;
    spABMRubro.ParamByName('DETALLE').Value :=  CDSFcCompDetMUESTRARUBRO.AsString;
    spABMRubro.ExecProc;

    DMMain_FD.fdcGestion.Commit;
    Result        :=  True;
  except
    DMMain_FD.fdcGestion.Rollback;
    Result        :=  False;
  end;
  spABMRubro.Close;
end;

function TFormImportarFcComp.CargaSubrubro: boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spABMSubRubro.Close;
    spABMSubRubro.ParamByName('CODIGO').Value         :=  CDSFcCompDetSUBRUBRO.AsString;
    spABMSubRubro.ParamByName('CODIGO_RUBRO').Value   :=  CDSFcCompDetRUBRO.AsString;
    spABMSubRubro.ParamByName('DETALLE').Value        :=  CDSFcCompDetMUESTRASUBRUBRO.AsString;
    spABMSubRubro.ExecProc;

    DMMain_FD.fdcGestion.Commit;
    Result        :=  True;
  except
    DMMain_FD.fdcGestion.Rollback;
    Result        :=  False;
  end;
  spABMSubRubro.Close;
end;

function TFormImportarFcComp.CargaMarca: boolean;
begin
  DMMain_FD.fdcGestion.StartTransaction;
  try
    spABMMarca.Close;
    spABMMarca.ParamByName('CODIGO').Value  :=  CDSFcCompDetMARCA_STK.AsString;
    spABMMarca.ParamByName('DETALLE').Value :=  CDSFcCompDetMUESTRAMARCA.AsString;
    spABMMarca.ExecProc;

    DMMain_FD.fdcGestion.Commit;
    Result        :=  True;
  except
    DMMain_FD.fdcGestion.Rollback;
    Result        :=  False;
  end;

  spABMMarca.Close;
end;

function TFormImportarFcComp.CargaArt: boolean;
begin
  if (Trim(CDSFcCompDetCODIGOARTICULO.AsString)<>'') and
     ((CheckRubro(CDSFcCompDetRUBRO.AsString)) or (CargaRubro)) and
     ((CheckSubRubro(CDSFcCompDetSUBRUBRO.AsString)) or (CargaSubRubro))
  then
    begin
      DMMain_FD.fdcGestion.StartTransaction;
      try
        if CheckMarca(CDSFcCompDetMARCA_STK.AsString) then  CargaMarca;

        spIngresarArt.Close;
        spIngresarArt.ParamByName('CODIGO').Value                   :=  CDSFcCompDetCODIGOARTICULO.AsString;
        spIngresarArt.ParamByName('DETALLE').Value                  :=  CDSFcCompDetDETALLE.AsString;
        if (CDSFcCompDetMARCA_STK.IsNull) or (trim(CDSFcCompDetMARCA_STK.AsString) = '') then
          spIngresarArt.ParamByName('MARCA').Clear
        else
          spIngresarArt.ParamByName('MARCA').Value                  :=  CDSFcCompDetMARCA_STK.AsString;

        spIngresarArt.ParamByName('RUBRO').Value                    :=  CDSFcCompDetRUBRO.AsString;
        spIngresarArt.ParamByName('SUBRUBRO').Value                 :=  CDSFcCompDetSUBRUBRO.AsString;
        spIngresarArt.ParamByName('MODO_GRAVAMEN').Value            :=  CDSFcCompDetMODO_GRAVAMEN.AsString;
        spIngresarArt.ParamByName('TASA_IVA').Value                 :=  CDSFcCompDetTIPOIVA_TASA.AsInteger;
        spIngresarArt.ParamByName('SOBRETASA_IVA').Value            :=  CDSFcCompDetTIPOIVA_SOBRETASA.AsInteger;
        spIngresarArt.ParamByName('COSTO_GRAVADO').Value            :=  CDSFcCompDetCOSTO_GRAVADO.AsFloat;
        spIngresarArt.ParamByName('COSTO_EXENTO').Value             :=  CDSFcCompDetCOSTO_EXENTO.AsFloat;
        spIngresarArt.ParamByName('DETALLE_ADICIONAL').Value        :=  CDSFcCompDetDETALLE.AsString;
        spIngresarArt.ParamByName('CODIGO_ALTERNATIVO').Value       :=  CDSFcCompDetCODIGOARTICULO.AsString;
        spIngresarArt.ParamByName('PRESENTACION_CANTIDAD').Value    :=  1;
        spIngresarArt.ParamByName('PRESENTACION_UNIDAD').Value      :=  CDSFcCompDetUNIDAD.AsString;
        spIngresarArt.ParamByName('MONEDA').Value                   :=  CDSFcCompDetID_MONEDA.AsInteger;
        spIngresarArt.ExecProc;
        DMMain_FD.fdcGestion.Commit;
        Result        :=  True;
      except
        DMMain_FD.fdcGestion.Rollback;
        Result        :=  False;
      end;

      spIngresarArt.Close;
    end
  else
    Result    :=  False;
end;


procedure TFormImportarFcComp.ImportarExecute(Sender: TObject);
var
Nombre:String;
I, ContErr, ContOK:iNTEGER;

begin
  inherited;
  ContErr :=  0;
  ContOK  :=  0;
  if VarIsNull(rxDbcCaja.KeyValue) Then
    RAISE Exception.Create('No hay caja seleccionada');
  CDSFcCompCab.Open;
  CDSFcCompDet.Open;
  CDSFcCompImp.Open;
  CDSFcCompPerIB.Open;
  CDSFcCompPerIva.Open;
  CDSFcCompCondPago.Open;
  Animate1.Visible:=True;
  Animate1.Active :=True;
  CDSFcCompCabXML.First;
  Progress.MaxValue:=CDSFcCompCabXML.RecordCount;
  while not(CDSFcCompCabXML.Eof) do
    begin
      //Inserto la cabecera
      Progress.Progress:=Progress.Progress+1;
      CDSFcCompCab.Insert;
      For i:=0 to CDSFcCompCabXML.FieldCount-1 do
        begin
          if CDSFcCompCab.FindField(CDSFcCompCabXML.Fields[i].FieldName)<>nil Then
            begin
              Nombre:=CDSFcCompCabXML.Fields[i].FieldName;
//              if Nombre='CODIGO' Then
                //VerificaCliente(CDSFcVtaCabXML.FieldByName(Nombre).Value);
              CDSFcCompCab.FieldByName(Nombre).Value:=CDSFcCompCabXML.FieldByName(Nombre).Value;
            end;
        end;
      if CheckFC then       /// TRUE si la factura no existe y los datos son válidos
        begin
          CDSFcCompCab.FieldByName('id_fc').Value:=IBGFcCompCab.IncrementFD(1);
         //Marco Todas como no anuladas
          CDSFcCompCab.FieldByName('Anulado').Value:='N';
    //****Paso al Detalle
          CDSFcCompDetXML.First;
          while not(CDSFcCompDetXML.Eof) do
            begin
              //Inserto Detalle
              CDSFcCompDet.Insert;
              For i:=0 to CDSFcCompDetXML.FieldCount-1 do
                begin
                  if CDSFcCompDet.FindField(CDSFcCompDetXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcCompDetXML.Fields[i].FieldName;
                      CDSFcCompDet.FieldByName(Nombre).Value:=CDSFcCompDetXML.FieldByName(Nombre).Value;
                    end;
                end;
              if (CheckArt(CDSFcCompDetCODIGOARTICULO.AsString)) or (CargaArt) then
                begin
                  CDSFcCompDet.FieldByName('id').Value       := IBGFcCompDet.IncrementFD(1);
                  CDSFcCompDet.FieldByName('Id_CabFac').Value:= CDSFcCompCab.FieldByName('id_fc').Value;
                  CDSFcCompDet.Post;
                end
              else
                CDSFcCompDet.Cancel;

              CDSFcCompDetXML.Next;
            end;
    //****Paso al Iva
          CDSFcCompImpXML.First;
          while not(CDSFcCompImpXML.Eof) do
            begin
              //Inserto Detalle
              CDSFcCompImp.Insert;
              For i:=0 to CDSFcCompImpXML.FieldCount-1 do
                begin
                  if CDSFcCompImp.FindField(CDSFcCompImpXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcCompImpXML.Fields[i].FieldName;
                      CDSFcCompImp.FieldByName(Nombre).Value:=CDSFcCompImpXML.FieldByName(Nombre).Value;
                    end;
                end;
              CDSFcCompImp.FieldByName('id_impuesto').Value  := IBGImpuestos.IncrementFD(1);
              CDSFcCompImp.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
              CDSFcCompImp.Post;
              CDSFcCompImpXML.Next;
            end;
    //****Paso las Percepciones Iva
          CDSFcCompPerIvaXML.First;
          while not(CDSFcCompPerIvaXML.Eof) do
            begin
              //Inserto Detalle
              CDSFcCompPerIva.Insert;
              For i:=0 to CDSFcCompPerIvaXML.FieldCount-1 do
                begin
                  if CDSFcCompPerIva.FindField(CDSFcCompPerIvaXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcCompPerIvaXML.Fields[i].FieldName;
                      CDSFcCompPerIva.FieldByName(Nombre).Value:=CDSFcCompPerIvaXML.FieldByName(Nombre).Value;
                    end;
                end;
              CDSFcCompPerIva.FieldByName('id_percepcion').Value  := IBGPercepcionIVA.IncrementFD(1);
              CDSFcCompPerIva.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
              CDSFcCompPerIva.Post;
              CDSFcCompPerIvaXML.Next;
            end;
    //****Paso las Percepciones Ingresos Brutos
          CDSFcCompPerIBXML.First;
          while not(CDSFcCompPerIBXML.Eof) do
            begin
              //Inserto Detalle
              CDSFcCompPerIB.Insert;
              For i:=0 to CDSFcCompPerIBXML.FieldCount-1 do
                begin
                  if CDSFcCompPerIB.FindField(CDSFcCompPerIBXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcCompPerIBXML.Fields[i].FieldName;
                      CDSFcCompPerIB.FieldByName(Nombre).Value:=CDSFcCompPerIBXML.FieldByName(Nombre).Value;
                    end;
                end;
              CDSFcCompPerIB.FieldByName('id_percepcion').Value  := IBGPercepcionIB.IncrementFD(1);
              CDSFcCompPerIB.FieldByName('id_FcCompCab').Value  := CDSFcCompCab.FieldByName('id_fc').Value;
              CDSFcCompPerIB.Post;
              CDSFcCompPerIBXML.Next;
            end;
    //****Paso las Condiciones de Pago
          CDSFcCompCondPagoXML.First;
          while not(CDSFcCompCondPagoXML.Eof) do
            begin
              //Inserto Detalle
              CDSFcCompCondPago.Insert;
              For i:=0 to CDSFcCompCondPagoXML.FieldCount-1 do
                begin
                  if CDSFcCompCondPago.FindField(CDSFcCompPerIBXML.Fields[i].FieldName)<>nil Then
                    begin
                      Nombre:=CDSFcCompCondPagoXML.Fields[i].FieldName;
                      CDSFcCompCondPago.FieldByName(Nombre).Value:=CDSFcCompCondPagoXML.FieldByName(Nombre).Value;
                    end;
                end;
              CDSFcCompCondPago.FieldByName('id').Value    := IBGPercepcionIB.IncrementFD(1);
              CDSFcCompCondPago.FieldByName('id_Fc').Value := CDSFcCompCab.FieldByName('id_fc').Value;
              CDSFcCompCondPago.Post;
              CDSFcCompCondPagoXML.Next;
            end;


          if CDSFcCompCab.State<>dsbrowse Then CDSFcCompCab.Post;
          if CDSFcCompDet.State<>dsbrowse Then CDSFcCompDet.Post;
          if CDSFcCompImp.State<>dsbrowse Then CDSFcCompImp.Post;
          if CDSFcCompPerIB.State<>dsbrowse Then CDSFcCompPerIB.Post;
          if CDSFcCompPerIva.State<>dsbrowse Then CDSFcCompPerIva.Post;

          DMMain_FD.fdcGestion.StartTransaction;
          Try
            // Si es de contado ingreso el mov de caja

            CDSFcCompCab.ApplyUpdates(0);
            CDSFcCompDet.ApplyUpdates(0);
            CDSFcCompImp.ApplyUpdates(0);
            CDSFcCompPerIB.ApplyUpdates(0);
            CDSFcCompPerIva.ApplyUpdates(0);

            if (CDSFcCompCabTIPOCPBTE.Value='FO')  Then
              begin
                spIngresaMovCaja.Close;
                spIngresaMovCaja.ParamByName('ID_CPBTE').AsInteger       :=CDSFcCompCabID_FC.AsInteger;
                spIngresaMovCaja.ParamByName('tipo_comprob').AsString    :=CDSFcCompCabTIPOCPBTE.AsString;
                spIngresaMovCaja.ParamByName('clase_comprob').AsString   :=CDSFcCompCabCLASECPBTE.AsString;
                spIngresaMovCaja.ParamByName('nrocpbte').AsString        :=CDSFcCompCabNROCPBTE.AsString;
                spIngresaMovCaja.ParamByName('id_cuenta_caja').AsInteger :=rxDbcCaja.KeyValue;
                spIngresaMovCaja.ParamByName('fecha_movimiento').AsDate  :=CDSFcCompCabFECHACOMPRA.AsDateTime;
                spIngresaMovCaja.ParamByName('debe').AsFloat             :=0;
                spIngresaMovCaja.ParamByName('haber').AsFloat            :=CDSFcCompCabTOTAL.AsFloat;;
                spIngresaMovCaja.ParamByName('tipooperacion').AsString   :='E';
                spIngresaMovCaja.ExecProc;
            end;
            inc(ContOK);

            DMMain_FD.fdcGestion.Commit;
          except
            DMMain_FD.fdcGestion.Rollback;
            ShowMessage('Transacción no finalizada....!');
          end;
        end
      else         ///  SI LA FACTURA EXISTE =>  CheckFC=False => Cancelo la inserción
        begin
          inc(ContErr);
          CDSFcCompCab.Cancel;
        end;

      CDSFcCompCabXML.Next;
    end;
  Animate1.Visible:=False;
  Animate1.Active:=False;
  ShowMessage('Importación Finalizada: ' + IntToStr(ContOK) + ' facturas importadas, ' + IntToStr(ContErr) + ' errores.' );
  CDSFcCompCabXML.Close;
  CDSFcCompImpXML.Close;
  CDSFcCompDetXML.Close;
  Progress.Progress:=0;
end;

procedure TFormImportarFcComp.CDSFcCompCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSFcCompCabID_FC.Value:=IBGFcCompCab.IncrementFD(1);
  id_cabecera:=CDSFcCompCabID_FC.Value;
end;

procedure TFormImportarFcComp.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  CDSFcCompCab.Close;
  CDSFcCompDet.Close;
  CDSFcCompImp.Close;
  CDSFcCompPerIB.Close;
  CDSFcCompPerIva.Close;
  CDSFcCompCondPago.Close;
  Action:=caFree;
end;

procedure TFormImportarFcComp.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:=True;
end;

procedure TFormImportarFcComp.FormDestroy(Sender: TObject);
begin
  inherited;
  FormImportarFcComp:=NIL;
end;

procedure TFormImportarFcComp.BitBtn1Click(Sender: TObject);
begin
  inherited;
  if Not(Assigned(FormBuscaDirectorio)) Then
    FormBuscaDirectorio:=TFormBuscaDirectorio.Create(Application);
  FormBuscaDirectorio.ShowModal;
  if FormBuscaDirectorio.ModalResult=mrOk Then
    begin
      CDSFcCompCabXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCompCab.XML');

      CDSFcCompDetXML.MasterSource   :=DSFcCompCabXML;
      CDSFcCompDetXML.MasterFields   :='id_fc';
      CDSFcCompDetXML.IndexFieldNames:='id_cabfac';
      CDSFcCompDetXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCompDet.xml');

      CDSFcCompImpXML.MasterSource   :=DSFcCompCabXML;
      CDSFcCompImpXML.MasterFields   :='id_fc';
      CDSFcCompImpXML.IndexFieldNames:='ID_FCcompCAB';
      CDSFcCompImpXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCompImp.xml');

      CDSFcCompPerIBXML.MasterSource   :=DSFcCompCabXML;
      CDSFcCompPerIBXML.MasterFields   :='id_fc';
      CDSFcCompPerIBXML.IndexFieldNames:='ID_FCcompCAB';
      CDSFcCompPerIBXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCompPerIB.xml');

      CDSFcCompPerIvaXML.MasterSource   :=DSFcCompCabXML;
      CDSFcCompPerIvaXML.MasterFields   :='id_fc';
      CDSFcCompPerIvaXML.IndexFieldNames:='ID_FCcompCAB';
      CDSFcCompPerIvaXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCompPerIva.xml');

      CDSFcCompCondPagoXML.MasterSource   :=DSFcCompCabXML;
      CDSFcCompCondPagoXML.MasterFields   :='id_fc';
      CDSFcCompCondPagoXML.IndexFieldNames:='ID_FC';
      CDSFcCompCondPagoXML.LoadFromFile(FormBuscaDirectorio.Directorio+'\FcCondPago.xml');


      CDSFcCompCabXML.IndexFieldNames:='nrocpbte';
    end
  else
   ShowMessage('Directorio no valido...');

end;

procedure TFormImportarFcComp.FormCreate(Sender: TObject);
begin
  inherited;
  CDSCaja.open;
end;

end.