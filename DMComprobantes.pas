unit DMComprobantes;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error,
  FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.FMTBcd, Data.SqlExpr;

type
  TDatosComprobantes = class(TDataModule)
    QBuscaAjustes: TFDQuery;
    DSPBuscaAjustes: TDataSetProvider;
    CDSBuscaAjustes: TClientDataSet;
    CDSBuscaAjustesID_COMPROBANTE: TIntegerField;
    CDSBuscaAjustesDENOMINACION: TStringField;
    DSBuscaAjustes: TDataSource;
    DSPBuscaSuc: TDataSetProvider;
    CDSBuscaSucu: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DSBuscaSuc: TDataSource;
    DSPCtaCaja: TDataSetProvider;
    CDSCtaCaja: TClientDataSet;
    CDSCtaCajaID_CUENTA: TIntegerField;
    CDSCtaCajaID_TIPO_CTA: TIntegerField;
    CDSCtaCajaNOMBRE: TStringField;
    CDSCtaCajaNRO_CUENTA: TStringField;
    CDSCtaCajaID_BANCO: TIntegerField;
    CDSCtaCajaCUIT: TStringField;
    CDSCtaCajaRAZONSOCIAL: TStringField;
    DSCtaCaja: TDataSource;
    QCtaCaja: TFDQuery;
    DSPControlRepetido: TDataSetProvider;
    CDSControlRepetido: TClientDataSet;
    CDSControlRepetidoDETALLE: TStringField;
    CDSControlRepetidoTIPOCPBTE: TStringField;
    CDSControlRepetidoCLASECPBTE: TStringField;
    CDSControlRepetidoLETRACPBTE: TStringField;
    CDSControlRepetidoSUCURSALCPBTE: TIntegerField;
    CDSControlRepetidoCV: TStringField;
    CDSControlRepetidoID: TIntegerField;
    DSControlRepetido: TDataSource;
    QControlRepetido: TFDQuery;
    DSControlCompra: TDataSource;
    DSPControlCompra: TDataSetProvider;
    CDSControlCompra: TClientDataSet;
    CDSControlCompraDETALLE: TStringField;
    CDSControlCompraSUCURSALCOMPRA: TIntegerField;
    CDSControlCompraTIPOCPBTE: TStringField;
    CDSControlCompraCLASECPBTE: TStringField;
    CDSControlCompraLETRAFAC: TStringField;
    CDSControlCompraDENOMINACION: TStringField;
    QControlCompra: TFDQuery;
    DSControlVta: TDataSource;
    DSPControlVta: TDataSetProvider;
    CDSControlVta: TClientDataSet;
    CDSControlVtaDETALLE: TStringField;
    CDSControlVtaSUCURSAL: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    QControlVta: TFDQuery;
    CDSDepositos: TClientDataSet;
    CDSDepositosID: TIntegerField;
    CDSDepositosNOMBRE: TStringField;
    DSDepositos: TDataSource;
    DSPDepositos: TDataSetProvider;
    QDepositos: TFDQuery;
    DSPCompFiscales: TDataSetProvider;
    CDSCompFiscales: TClientDataSet;
    CDSCompFiscalesID_COMPROBANTE: TIntegerField;
    CDSCompFiscalesTIPO_COMPROB: TStringField;
    CDSCompFiscalesCLASE_COMPROB: TStringField;
    CDSCompFiscalesDENOMINACION: TStringField;
    CDSCompFiscalesSUCURSAL: TIntegerField;
    CDSCompFiscalesLETRA: TStringField;
    CDSCompFiscalesPREFIJO: TStringField;
    CDSCompFiscalesNUMERARCION_PROPIA: TStringField;
    CDSCompFiscalesNUMERO: TStringField;
    CDSCompFiscalesTOMA_NRO_DE: TIntegerField;
    CDSCompFiscalesFISCAL: TStringField;
    CDSCompFiscalesNOMBREIMPRESORA: TStringField;
    CDSCompFiscalesMUESTRASUCURSAL: TStringField;
    DSCompFiscales: TDataSource;
    QCompFiscales: TFDQuery;
    DSPCompElec: TDataSetProvider;
    CDSCompElec: TClientDataSet;
    CDSCompElecID_COMPROBANTE: TIntegerField;
    CDSCompElecTIPO_COMPROB: TStringField;
    CDSCompElecCLASE_COMPROB: TStringField;
    CDSCompElecSUCURSAL: TIntegerField;
    CDSCompElecLETRA: TStringField;
    CDSCompElecPREFIJO: TStringField;
    CDSCompElecNUMERO: TStringField;
    CDSCompElecNUMERARCION_PROPIA: TStringField;
    CDSCompElecTOMA_NRO_DE: TIntegerField;
    CDSCompElecFISCAL: TStringField;
    CDSCompElecNOMBREIMPRESORA: TStringField;
    CDSCompElecMUESTRASUCURSAL: TStringField;
    CDSCompElecDETALLE: TStringField;
    CDSCompElecDENOMINACION: TStringField;
    DSCompElect: TDataSource;
    QCompElec: TFDQuery;
    DSPBuscaCompAfip: TDataSetProvider;
    CDSBuscaCompAfip: TClientDataSet;
    StringField6: TStringField;
    StringField7: TStringField;
    DSBuscaCompAfip: TDataSource;
    DSPTipoComprob: TDataSetProvider;
    CDSTipoComprob: TClientDataSet;
    CDSTipoComprobID_TIPO: TIntegerField;
    CDSTipoComprobDETALLE: TStringField;
    CDSTipoComprobSIGLA: TStringField;
    CDSTipoComprobDESGLOZA_IVA: TStringField;
    CDSTipoComprobAFECTA_CC: TStringField;
    CDSTipoComprobAFECTA_LIBRO_IVA: TStringField;
    CDSTipoComprobTIPO_DE_OPERACION: TStringField;
    DSTipoComprobante: TDataSource;
    QTipoComp: TFDQuery;
    QTipoComprob_Uno: TFDQuery;
    QTipoComprob_UnoDESGLOZA_IVA: TStringField;
    QTipoComprob_UnoAFECTA_CC: TStringField;
    QTipoComprob_UnoAFECTA_LIBRO_IVA: TStringField;
    QTipoComprob_UnoTIPO_DE_OPERACION: TStringField;
    QControlComprobantes: TFDQuery;
    QControlComprobantesID_COMPROBANTE: TIntegerField;
    QComprobanteUsado: TFDQuery;
    QComprobanteUsadoEN_USO: TStringField;
    QComprobantes: TFDQuery;
    QComprobantesID_COMPROBANTE: TIntegerField;
    QComprobantesTIPO_COMPROB: TStringField;
    QComprobantesCLASE_COMPROB: TStringField;
    QComprobantesDENOMINACION: TStringField;
    QComprobantesSUCURSAL: TIntegerField;
    QComprobantesLETRA: TStringField;
    QComprobantesPREFIJO: TStringField;
    QComprobantesNUMERARCION_PROPIA: TStringField;
    QComprobantesNUMERO: TStringField;
    QComprobantesTOMA_NRO_DE: TIntegerField;
    QComprobantesAFECTA_IVA: TStringField;
    QComprobantesAFECTA_CC: TStringField;
    QComprobantesDESGLOZA_IVA: TStringField;
    QComprobantesCOMPRA_VENTA: TStringField;
    QComprobantesCOPIAS: TIntegerField;
    QComprobantesREPORTE: TStringField;
    QComprobantesIMPRIME: TStringField;
    QComprobantesFISCAL: TStringField;
    QComprobantesNOMBREIMPRESORA: TStringField;
    QComprobantesPENDIENTEIMPRESION: TStringField;
    QComprobantesLINEAS_DETALLE: TSmallintField;
    QComprobantesCALCULA_IVA_ARTICULOS: TStringField;
    QComprobantesDEFECTO: TStringField;
    QComprobantesCAJA_DEFECTO: TIntegerField;
    QComprobantesDIVIDE_IVA: TStringField;
    QComprobantesEN_USO: TStringField;
    QComprobantesCODIGO_AFIP: TStringField;
    QComprobantesID_AJUSTECC: TIntegerField;
    QComprobantesCENTRO_COSTO: TIntegerField;
    QComprobantesFILTRO_COMPROBANTES: TStringField;
    QComprobantesDEPOSITO: TIntegerField;
    QComprobantesULTIMONRO: TIntegerField;
    QComprobantesEDITAR_NRO: TStringField;
    QComprobantesCONTROLADOR_NROREG: TStringField;
    QComprobantesUSAR_CAEA: TStringField;
    QComprobantesCAEA: TStringField;
    QComprobantesVENCIMIENTO_CAEA_DESDE: TSQLTimeStampField;
    QComprobantesVENCIMIENTO_CAEA_HASTA: TSQLTimeStampField;
    QComprobantesMUESTRADENOMINACION: TStringField;
    QComp: TFDQuery;
    QCompDENOMINACION: TStringField;
    DSPBuscaCtro: TDataSetProvider;
    CDSBuscaCtro: TClientDataSet;
    CDSBuscaCtroID: TIntegerField;
    CDSBuscaCtroDESCRIPCION: TStringField;
    DSBuscaCtro: TDataSource;
    QBuscaCtro: TFDQuery;
    QComprobantesFACTURAELECTRONICA: TStringField;
    CDSCompFiscalesMUESTRADETALLETIPO: TStringField;
    QActualizaImpresorara: TFDQuery;
    QComprobantesREMITO_IMPRENTA: TStringField;
    QComprobantesREMITO_FECHA_RANGO: TStringField;
    QComprobantesREMITO_DIRECCION: TStringField;
    QComprobantesREMITO_CAI: TStringField;
    QComprobantesREMITO_VENCIMIENTO_CAI: TStringField;
    QComprobantesID_MONEDA_CPBTE: TIntegerField;
    QMonedas: TFDQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    DSMonedas: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
    procedure CDSComprobantesPREFIJOSetText(Sender: TField; const Text: string);
    procedure CDSCompFiscalesBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosComprobantes: TDatosComprobantes;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}
uses UDMain_fd, DMBuscadoresForm, UComprobantes;

procedure TDatosComprobantes.CDSCompFiscalesBeforePost(DataSet: TDataSet);
var suc:Integer;
begin
  Suc  :=  CDSCompFiscalesSUCURSAL.Value;
  if CDSCompFiscalesNOMBREIMPRESORA.OldValue<>CDSCompFiscalesNOMBREIMPRESORA.NewValue then
    begin
      QActualizaImpresorara.Close;
      QActualizaImpresorara.ParamByName('Impresora').AsString  :=CDSCompFiscalesNOMBREIMPRESORA.AsString;
      QActualizaImpresorara.ParamByName('ID').AsInteger        :=CDSCompFiscalesID_COMPROBANTE.AsInteger;
      QActualizaImpresorara.ExecSQL;
      QActualizaImpresorara.Close;
      //CDSCompFiscales.Close;
     // CDSCompFiscales.Params.ParamByName('sucursal').Value:= Suc;
     // CDSCompFiscales.Open;
    end;

end;

procedure TDatosComprobantes.CDSComprobantesPREFIJOSetText(Sender: TField; const Text: string);
begin
  Sender.AsString := Copy('00000000', 1, Sender.Size - length(text)) + Text;
end;

procedure TDatosComprobantes.DataModuleDestroy(Sender: TObject);
begin
  DatosComprobantes:=nil;
end;

end.
