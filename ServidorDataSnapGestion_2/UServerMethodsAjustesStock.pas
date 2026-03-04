unit UServerMethodsAjustesStock;

interface

uses
  System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth,
  Data.FMTBcd, Datasnap.Provider, Data.DB, Data.SqlExpr, IBGenerator;

type
  TServerMethodsAjustesStock = class(TDSServerModule)
    QStock: TSQLQuery;
    QStockCODIGO_STK: TStringField;
    QStockDETALLE_STK: TStringField;
    QStockUNIDAD: TStringField;
    QStockUNIDAD_COMPRA: TStringField;
    QStockCONTROLASTOCK: TStringField;
    QStockCONTROL_SERIE: TStringField;
    QStockCOSTO_TOTAL_STK: TFMTBCDField;
    QStockCONTENIDO_COMPRA: TFMTBCDField;
    QStockMUESTRAFISICO: TFMTBCDField;
    QStockCLASE_ARTICULO: TIntegerField;
    DSPStock: TDataSetProvider;
    QBuscaComprob: TSQLQuery;
    DSPBuscaComprob: TDataSetProvider;
    QComprob: TSQLQuery;
    QComprobTIPO_COMPROB: TStringField;
    QComprobCLASE_COMPROB: TStringField;
    QComprobDENOMINACION: TStringField;
    QComprobLETRA: TStringField;
    QComprobID_COMPROBANTE: TIntegerField;
    QComprobCOPIAS: TIntegerField;
    QComprobREPORTE: TStringField;
    DSPComprob: TDataSetProvider;
    spRecaculaCostos: TSQLStoredProc;
    QCambiarFecha: TSQLQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    SQLTimeStampField1: TSQLTimeStampField;
    SQLTimeStampField2: TSQLTimeStampField;
    QAjusteSubDetalle: TSQLQuery;
    QAjusteSubDetalleID: TIntegerField;
    QAjusteSubDetalleID_RTODET: TIntegerField;
    QAjusteSubDetalleID_RTOCAB: TIntegerField;
    QAjusteSubDetalleTIPOCPBTE: TStringField;
    QAjusteSubDetalleCLASECPBTE: TStringField;
    QAjusteSubDetalleFECHA: TSQLTimeStampField;
    QAjusteSubDetalleNROCPBTE: TStringField;
    QAjusteSubDetalleCODIGOARTICULO: TStringField;
    QAjusteSubDetalleSERIE: TStringField;
    QAjusteSubDetalleDEPOSITO: TIntegerField;
    QAjusteSubDetalleTIPO: TStringField;
    QAjusteDet: TSQLQuery;
    QAjusteDetID_RTO_DET: TIntegerField;
    QAjusteDetID_RTO_CAB: TIntegerField;
    QAjusteDetFECHA: TSQLTimeStampField;
    QAjusteDetCODIGO: TStringField;
    QAjusteDetDETALLE: TStringField;
    QAjusteDetUNIDAD: TStringField;
    QAjusteDetCANTIDAD: TFMTBCDField;
    QAjusteDetNROCPBTE: TStringField;
    QAjusteDetDEPOSITO: TIntegerField;
    QAjusteDetCLASECPBTE: TStringField;
    QAjusteDetTIPOCPBTE: TStringField;
    QAjusteDetAFECTASTOCK: TStringField;
    QAjusteDetSTOCK_ACTUAL_COMPRA: TFMTBCDField;
    QAjusteDetSTOCK_ACTUAL_VTA: TFMTBCDField;
    QAjusteDetCON_NRO_SERIE: TStringField;
    QAjusteDetCOSTO_UNITARIO: TFMTBCDField;
    QAjusteDetCOSTO_TOTAL: TFMTBCDField;
    QAjusteDetMUESTRACODALTERNATIVO: TStringField;
    QAjusteCab: TSQLQuery;
    QAjusteCabID_RTO: TIntegerField;
    QAjusteCabFECHA: TSQLTimeStampField;
    QAjusteCabLETRA: TStringField;
    QAjusteCabSUCRTO: TStringField;
    QAjusteCabNUMRTO: TStringField;
    QAjusteCabSUCURSAL: TIntegerField;
    QAjusteCabNROCPBTE: TStringField;
    QAjusteCabTIPOCPBTE: TStringField;
    QAjusteCabCLASECPBTE: TStringField;
    QAjusteCabOBS: TStringField;
    QAjusteCabDEPOSITO: TIntegerField;
    QAjusteCabAJUSTE_CERO_STOCK: TStringField;
    QAjusteCabUSUARIO: TStringField;
    QAjusteCabFECHA_HORA: TSQLTimeStampField;
    QAjusteCabTOTAL: TFMTBCDField;
    QAjusteCabMUESTRACOMPROBANTE: TStringField;
    QAjusteCabID_TIPOCOMPROBANTE: TIntegerField;
    QAjusteCabMUESTRASUCURSAL: TStringField;
    QAjusteCabMUESTRADEPOSITO: TStringField;
    QAjusteCabMOTIVO: TIntegerField;
    DSPAjusteCab: TDataSetProvider;
    DSPAjusteDet: TDataSetProvider;
    DSPAjusteSubDet: TDataSetProvider;
    IBGAjusteSubDet: TIBGenerator;
    ibgAjusteDet: TIBGenerator;
    ibgAjusteCab: TIBGenerator;
    QStkUnit_al: TSQLQuery;
    DSPStkUnit_Al: TDataSetProvider;
    DSPMovimientos: TDataSetProvider;
    QMovimientos: TSQLQuery;
  private
    { Private declarations }
  public
    { Public declarations }
    function NextIdCab: Integer;
    function NextIdDet: Integer;
    function NextIdSub: Integer;
    function RecalcularCostos(id: Integer): Boolean;
    function CambiarFecha(Fecha: String; id: Integer): Boolean;

  end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses UServerContainer;

{$R *.dfm}

function TServerMethodsAjustesStock.NextIdCab: Integer;
begin
  Result := ibgAjusteCab.IncrementIBX(1);
end;

function TServerMethodsAjustesStock.NextIdDet: Integer;
begin
  Result := ibgAjusteDet.IncrementIBX(1);
end;

function TServerMethodsAjustesStock.NextIdSub: Integer;
begin
  Result := IBGAjusteSubDet.IncrementIBX(1);
end;

function TServerMethodsAjustesStock.RecalcularCostos(id: Integer): Boolean;
begin
  spRecaculaCostos.Close;
  spRecaculaCostos.ParamByName('id').Value := id;
  Result := spRecaculaCostos.ExecProc = 0;
  spRecaculaCostos.Close;
end;

function TServerMethodsAjustesStock.CambiarFecha(Fecha: String;
  id: Integer): Boolean;
begin
  QCambiarFecha.Close;
  QCambiarFecha.ParamByName('FechaNueva').Value := StrTodate(Fecha);
  QCambiarFecha.ParamByName('id').Value := id;
  Result := QCambiarFecha.ExecSQL = 0;
end;

end.
