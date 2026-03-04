unit DMLstRefContable;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDatosLstRefContable = class(TDataModule)
    QSaldoGastos: TFDQuery;
    QGastosFcCompra: TFDQuery;
    QPersonal: TFDQuery;
    QGastosBco: TFDQuery;
    DSPGastosBco: TDataSetProvider;
    DSPPersonal: TDataSetProvider;
    DSPGastosFcCompra: TDataSetProvider;
    DSPSaldoGastos: TDataSetProvider;
    CDSSaldoGastos: TClientDataSet;
    CDSSaldoGastosNROCPBTE: TStringField;
    CDSSaldoGastosID_EGRESO: TIntegerField;
    CDSSaldoGastosTIPOCPBTE: TStringField;
    CDSSaldoGastosCLASECPBTE: TStringField;
    CDSSaldoGastosRUBROGASTO: TStringField;
    CDSSaldoGastosCODIGOGASTO: TStringField;
    CDSSaldoGastosDETALLE: TStringField;
    CDSSaldoGastosMUESTRARUBRO: TStringField;
    CDSSaldoGastosMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSSaldoGastosMUESTRACTA: TStringField;
    CDSSaldoGastosID_CUENTA_CAJA: TIntegerField;
    CDSSaldoGastosNOMBRE: TStringField;
    CDSSaldoGastosCTA_CONTABLE: TStringField;
    CDSSaldoGastosCTA_CONTABLE_COD: TStringField;
    CDSSaldoGastosANIO: TSmallintField;
    CDSSaldoGastosMES: TSmallintField;
    CDSSaldoGastosIMPORTE: TFloatField;
    DSSaldosGastos: TDataSource;
    DSGastosFcCompra: TDataSource;
    CDSGastosFCCompra: TClientDataSet;
    CDSGastosFCCompraCODIGOARTICULO: TStringField;
    CDSGastosFCCompraDETALLE_STK: TStringField;
    CDSGastosFCCompraSUCURSALCOMPRA: TIntegerField;
    CDSGastosFCCompraCTA_CONTABLE: TStringField;
    CDSGastosFCCompraCTA_CONTABLE_COD: TStringField;
    CDSGastosFCCompraANIO: TSmallintField;
    CDSGastosFCCompraMES: TSmallintField;
    CDSGastosFCCompraTOTAL: TFloatField;
    CDSPersonal: TClientDataSet;
    CDSPersonalCODIGO: TStringField;
    CDSPersonalNOMBRE: TStringField;
    CDSPersonalSUCURSAL: TIntegerField;
    CDSPersonalCTA_CONTABLE: TStringField;
    CDSPersonalCTA_CONTABLE_COD: TStringField;
    CDSPersonalANIO: TSmallintField;
    CDSPersonalMES: TSmallintField;
    CDSPersonalTOTAL: TFloatField;
    DSPersonal: TDataSource;
    DSGastosBco: TDataSource;
    CDSGastosBco: TClientDataSet;
    CDSGastosBcoCODIGO_CONCEPTO: TStringField;
    CDSGastosBcoDETALLE: TStringField;
    CDSGastosBcoSUCURSAL: TIntegerField;
    CDSGastosBcoCTA_CONTABLE: TStringField;
    CDSGastosBcoCTA_CONTABLE_COD: TStringField;
    CDSGastosBcoTOTAL: TFloatField;
    CDSGastosBcoANIO: TSmallintField;
    CDSGastosBcoMES: TSmallintField;
    QCtaContable: TFDQuery;
    DSPCtaContable: TDataSetProvider;
    CDSCtaContable: TClientDataSet;
    CDSCtaContableIDCUENTA: TIntegerField;
    CDSCtaContableCODIGOELEMENTO: TStringField;
    CDSCtaContableIDTABLA: TIntegerField;
    CDSCtaContableMUESTRACUENTA: TStringField;
    CDSCtaContableMUESTRACODIGOCTA: TStringField;
    CDSCtaContableFc: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    IntegerField2: TIntegerField;
    StringField2: TStringField;
    CDSCtaContableFcMUESTRACODIGOCTA: TStringField;
    DSPCtaContableFC: TDataSetProvider;
    QCtaContableFC: TFDQuery;
    QCtaContablePersonal: TFDQuery;
    QCtaContableBco: TFDQuery;
    DSPCtaContableBco: TDataSetProvider;
    DSPCtaContablePersonal: TDataSetProvider;
    CDSCtaContablePersonal: TClientDataSet;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    IntegerField4: TIntegerField;
    StringField4: TStringField;
    StringField5: TStringField;
    CDSCtaContableBco: TClientDataSet;
    IntegerField5: TIntegerField;
    StringField6: TStringField;
    IntegerField6: TIntegerField;
    StringField7: TStringField;
    StringField8: TStringField;
    QSaldoIng: TFDQuery;
    DSPSaldoIng: TDataSetProvider;
    CDSSaldoIng: TClientDataSet;
    DSSaldoIng: TDataSource;
    CDSSaldoIngANIO: TSmallintField;
    CDSSaldoIngMES: TSmallintField;
    CDSSaldoIngNROCPBTE: TStringField;
    CDSSaldoIngID_INGRESO: TIntegerField;
    CDSSaldoIngTIPOCPBTE: TStringField;
    CDSSaldoIngCLASECPBTE: TStringField;
    CDSSaldoIngRUBROINGRESO: TStringField;
    CDSSaldoIngCODIGOINGRESO: TStringField;
    CDSSaldoIngDETALLE: TStringField;
    CDSSaldoIngMUESTRARUBRO: TStringField;
    CDSSaldoIngMUESTRAIDCOMPROBANTE: TIntegerField;
    CDSSaldoIngMUESTRACTA: TStringField;
    CDSSaldoIngIMPORTE: TFloatField;
    CDSSaldoIngID_CUENTA_CAJA: TIntegerField;
    CDSSaldoIngNOMBRE: TStringField;
    QCtaContableIng: TFDQuery;
    DSPCtaContableIng: TDataSetProvider;
    CDSCtaContableIng: TClientDataSet;
    IntegerField7: TIntegerField;
    StringField9: TStringField;
    IntegerField8: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    CDSSaldoIngCTA_CONTABLE: TStringField;
    CDSSaldoIngCTA_CONTABLE_COD: TStringField;
    QTCGastoAranceles: TFDQuery;
    QTCGastoFinaciero: TFDQuery;
    DSPGastoAranceles: TDataSetProvider;
    CDSGastoAranceles: TClientDataSet;
    DSGastoAranceles: TDataSource;
    DSPTCGastoFinaciero: TDataSetProvider;
    CDSTCGastoFinaciero: TClientDataSet;
    DSTCGastoFinaciero: TDataSource;
    CDSGastoArancelesCONSTANT: TStringField;
    CDSGastoArancelesFECHA: TSQLTimeStampField;
    CDSGastoArancelesTIPOCPBTE: TStringField;
    CDSGastoArancelesCLASECPBTE: TStringField;
    CDSGastoArancelesNUMEROCPBTE: TStringField;
    CDSGastoArancelesNRO_LIQUIDACION: TStringField;
    CDSGastoArancelesARANCEL: TFloatField;
    CDSGastoArancelesMES: TSmallintField;
    CDSGastoArancelesANIO: TSmallintField;
    CDSTCGastoFinacieroCONSTANT: TStringField;
    CDSTCGastoFinacieroFECHA: TSQLTimeStampField;
    CDSTCGastoFinacieroTIPOCPBTE: TStringField;
    CDSTCGastoFinacieroCLASECPBTE: TStringField;
    CDSTCGastoFinacieroNUMEROCPBTE: TStringField;
    CDSTCGastoFinacieroNRO_LIQUIDACION: TStringField;
    CDSTCGastoFinacieroCOSTO_FINANCIERO: TFloatField;
    CDSTCGastoFinacieroMES: TSmallintField;
    CDSTCGastoFinacieroANIO: TSmallintField;
    CDSSaldoGastosCENTROCOSTO: TStringField;
    CDSGastosFCCompraCENTROCOSTO: TStringField;
    CDSPersonalCENTROCOSTO: TStringField;
    CDSGastosBcoCENTROCOSTO: TStringField;
    CDSSaldoIngCENTROCOSTO: TStringField;
    QCtrCosto: TFDQuery;
    DSPCtrCosto: TDataSetProvider;
    CDSCtroCostoAranceles: TClientDataSet;
    DSCtrCostoAranceles: TDataSource;
    CDSCtroCostoArancelesID: TIntegerField;
    CDSCtroCostoArancelesDESCRIPCION: TStringField;
    CDSCtroCostoFinanciero: TClientDataSet;
    IntegerField9: TIntegerField;
    StringField12: TStringField;
    DSCtroCostoFinanciero: TDataSource;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosLstRefContable: TDatosLstRefContable;

implementation
uses UDMain_FD;
{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure TDatosLstRefContable.DataModuleDestroy(Sender: TObject);
begin
  DatosLstRefContable:=nil;
end;

end.
