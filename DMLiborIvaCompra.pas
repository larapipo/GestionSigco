unit DMLiborIvaCompra;

interface

uses
  System.SysUtils, System.Classes, Data.FMTBcd, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Data.DB, Datasnap.DBClient,
  Datasnap.Provider, Data.SqlExpr;

type
  TDatosLibroIvaCompra = class(TDataModule)
    DSListado: TDataSource;
    DSPListado: TDataSetProvider;
    QListado: TFDQuery;
    CDSListado: TClientDataSet;
    CDSListadoMUESTRA_IVA: TStringField;
    CDSListadoID: TIntegerField;
    CDSListadoTIPO_CPBTE: TStringField;
    CDSListadoCLASE_CPBTE: TStringField;
    CDSListadoNRO_CPBTE: TStringField;
    CDSListadoRAZON_SOCIAL: TStringField;
    CDSListadoCONDICION_IVA: TIntegerField;
    CDSListadoCUIT: TStringField;
    CDSListadoSUCURSALCOMPRA: TIntegerField;
    CDSListadoNETO_EXCLUIDO_REC: TFloatField;
    CDSListadoNETO_EXENTO_REC: TFloatField;
    CDSListadoNETO_GRAVADO_REC: TFloatField;
    CDSListadoNETO_MONOTRIBUTO_REC: TFloatField;
    CDSListadoTOTAL_REC: TFloatField;
    CDSListadoCOL1_REC: TFloatField;
    CDSListadoCOL2_REC: TFloatField;
    CDSListadoCOL3_REC: TFloatField;
    CDSListadoCOL4_REC: TFloatField;
    CDSListadoCOL5_REC: TFloatField;
    CDSListadoCOL6_REC: TFloatField;
    CDSListadoCOL7_REC: TFloatField;
    CDSListadoID_CPBTE: TIntegerField;
    CDSListadoCODIGO_AFIP: TStringField;
    CDSListadoNETO_EXCLUIDO: TFloatField;
    CDSListadoNETO_EXENTO: TFloatField;
    CDSListadoNETO_GRAVADO: TFloatField;
    CDSListadoNETO_MONOTRIBUTO: TFloatField;
    CDSListadoTOTAL: TFloatField;
    CDSListadoCOL1: TFloatField;
    CDSListadoCOL2: TFloatField;
    CDSListadoCOL3: TFloatField;
    CDSListadoCOL4: TFloatField;
    CDSListadoCOL5: TFloatField;
    CDSListadoCOL6: TFloatField;
    CDSListadoCOL7: TFloatField;
    DSTotales: TDataSource;
    DSPTotales: TDataSetProvider;
    CDSTotales: TClientDataSet;
    CDSTotalesTIPOCPBTE: TStringField;
    CDSTotalesSUCURSAL: TIntegerField;
    CDSTotalesMUESTRASUCURSAL: TStringField;
    QTotales: TFDQuery;
    CDSTotalesTASA: TFloatField;
    CDSTotalesNETO: TFloatField;
    CDSTotalesIMPUESTO: TFloatField;
    DSPPercIIBB: TDataSetProvider;
    CDSPercIIBB: TClientDataSet;
    CDSPercIIBBCODIGO_PERCEPCION: TIntegerField;
    CDSPercIIBBDETALLE: TStringField;
    CDSPercIIBBJURIDICION: TIntegerField;
    QPercIIBB: TFDQuery;
    CDSPercIIBBNETO: TFloatField;
    CDSPercIIBBIMPORTE: TFloatField;
    DSPLibroIvaDet: TDataSetProvider;
    CDSLibroIvaDet: TClientDataSet;
    CDSLibroIvaDetID: TIntegerField;
    CDSLibroIvaDetID_LIBRO_IVA: TIntegerField;
    CDSLibroIvaDetCOLUMNA: TSmallintField;
    QLibroIvaDet: TFDQuery;
    CDSLibroIvaDetTASA: TFloatField;
    CDSLibroIvaDetIMPORTE: TFloatField;
    CDSLibroIvaDetNETO: TFloatField;
    DSTitulos: TDataSource;
    DSPTitulos: TDataSetProvider;
    CDSTitulos: TClientDataSet;
    CDSTitulosCOLUMNA: TSmallintField;
    CDSTitulosDETALLE: TStringField;
    QTitulos: TFDQuery;
    DSCompIVACre: TDataSource;
    DSCompIVADeb: TDataSource;
    CDSCompIVADeb: TClientDataSet;
    CDSCompIVADebDETALLE: TStringField;
    CDSCompIVADebID_IVA: TIntegerField;
    CDSCompIVADebIVA_DESCRIPCION: TStringField;
    CDSCompIVACre: TClientDataSet;
    CDSCompIVACreDETALLE: TStringField;
    CDSCompIVACreIVA_DESCRIPCION: TStringField;
    CDSCompIVACreID_IVA: TIntegerField;
    DSPComposicionIVA: TDataSetProvider;
    QComposicionIva: TFDQuery;
    CDSCompIVACreNETO_GRAVADO: TFloatField;
    CDSCompIVACreNETO_EXENTO: TFloatField;
    CDSCompIVACreNETO_MONOTRIBUTO: TFloatField;
    CDSCompIVACreNETO_EXCLUIDO: TFloatField;
    CDSCompIVACreTASA_1: TFloatField;
    CDSCompIVACreTASA_2: TFloatField;
    CDSCompIVACreTASA_3: TFloatField;
    CDSCompIVACreTASA_4: TFloatField;
    CDSCompIVACreIIBB: TFloatField;
    CDSCompIVACrePERIVA: TFloatField;
    CDSCompIVACreTOTAL: TFloatField;
    CDSCompIVACreTOTALCALCULADO: TFloatField;
    CDSCompIVACrePORCTASA_1: TFloatField;
    CDSCompIVACrePORCTASA_2: TFloatField;
    CDSCompIVACrePORCTASA_3: TFloatField;
    CDSCompIVACrePORCTASA_4: TFloatField;
    CDSCompIVACreNETO_1: TFloatField;
    CDSCompIVACreNETO_2: TFloatField;
    CDSCompIVACreNETO_3: TFloatField;
    CDSCompIVACreNETO_4: TFloatField;
    CDSCompIVADebTASA_1: TFloatField;
    CDSCompIVADebTASA_2: TFloatField;
    CDSCompIVADebTASA_3: TFloatField;
    CDSCompIVADebTASA_4: TFloatField;
    CDSCompIVADebNETO_GRAVADO: TFloatField;
    CDSCompIVADebNETO_EXENTO: TFloatField;
    CDSCompIVADebNETO_MONOTRIBUTO: TFloatField;
    CDSCompIVADebNETO_EXCLUIDO: TFloatField;
    CDSCompIVADebPORCTASA_1: TFloatField;
    CDSCompIVADebPORCTASA_2: TFloatField;
    CDSCompIVADebPORCTASA_3: TFloatField;
    CDSCompIVADebPORCTASA_4: TFloatField;
    CDSCompIVADebIIBB: TFloatField;
    CDSCompIVADebPERIVA: TFloatField;
    CDSCompIVADebTOTAL: TFloatField;
    CDSCompIVADebTOTALCALCULADO: TFloatField;
    CDSCompIVADebNETO_1: TFloatField;
    CDSCompIVADebNETO_2: TFloatField;
    CDSCompIVADebNETO_3: TFloatField;
    CDSCompIVADebNETO_4: TFloatField;
    DSPCreditos: TDataSetProvider;
    CDSCreditos: TClientDataSet;
    CDSCreditosCONDICION_IVA: TIntegerField;
    CDSCreditosMUESTRA_IVA: TStringField;
    CDSCreditosSUCURSALCOMPRA: TIntegerField;
    CDSCreditosMUESTRASUCURSAL: TStringField;
    QCreditos: TFDQuery;
    CDSCreditosMONTOEXENTO: TFloatField;
    CDSCreditosNETOGRAVADO: TFloatField;
    CDSCreditosIVA: TFloatField;
    CDSCreditosPERCIVA: TFloatField;
    CDSCreditosPERCIBB: TFloatField;
    CDSCreditosTOTAL: TFloatField;
    CDSCreditosTASA1: TFloatField;
    CDSCreditosIVA1: TFloatField;
    CDSCreditosTASA2: TFloatField;
    CDSCreditosIVA2: TFloatField;
    CDSCreditosTASA3: TFloatField;
    CDSCreditosIVA3: TFloatField;
    CDSCreditosTASA4: TFloatField;
    CDSCreditosIVA4: TFloatField;
    DSPDebitos: TDataSetProvider;
    CDSDebitos: TClientDataSet;
    CDSDebitosCONDICION_IVA: TIntegerField;
    CDSDebitosMUESTRA_IVA: TStringField;
    CDSDebitosSUCURSALCOMPRA: TIntegerField;
    CDSDebitosMUESTRASUCURSAL: TStringField;
    QDebitos: TFDQuery;
    CDSDebitosMONTOEXENTO: TFloatField;
    CDSDebitosNETOGRAVADO: TFloatField;
    CDSDebitosIVA: TFloatField;
    CDSDebitosPERCIVA: TFloatField;
    CDSDebitosPERCIBB: TFloatField;
    CDSDebitosTOTAL: TFloatField;
    CDSDebitosTASA1: TFloatField;
    CDSDebitosIVA1: TFloatField;
    CDSDebitosTASA2: TFloatField;
    CDSDebitosIVA2: TFloatField;
    CDSDebitosTASA3: TFloatField;
    CDSDebitosIVA3: TFloatField;
    CDSDebitosTASA4: TFloatField;
    CDSDebitosIVA4: TFloatField;
    DSPDetalleMercaderia: TDataSetProvider;
    CDSDetalleMercaderia: TClientDataSet;
    CDSDetalleMercaderiaCODIGOARTICULO: TStringField;
    CDSDetalleMercaderiaDETALLE: TStringField;
    CDSDetalleMercaderiaRUBRO_STK: TStringField;
    CDSDetalleMercaderiaSUBRUBRO_STK: TStringField;
    CDSDetalleMercaderiaCLASE_ARTICULO: TIntegerField;
    CDSDetalleMercaderiaTIPOCPBTE: TStringField;
    CDSDetalleMercaderiaDETALLE_RUBRO: TStringField;
    CDSDetalleMercaderiaDETALLE_SUBRUBRO: TStringField;
    CDSDetalleMercaderiaIMPORTE_REC: TFloatField;
    CDSDetalleMercaderiaCANTIDAD_REC: TFloatField;
    DSDetalleMercaderia: TDataSource;
    QDetalleMercaderias: TFDQuery;
    CDSDetalleMercaderiaCANTIDAD: TFloatField;
    CDSDetalleMercaderiaIMPORTE: TFloatField;
    DSPCtaContable: TDataSetProvider;
    CDSCtaContable: TClientDataSet;
    CDSCtaContableIDCUENTA: TIntegerField;
    CDSCtaContableCODIGOELEMENTO: TStringField;
    CDSCtaContableIDTABLA: TIntegerField;
    CDSCtaContableMUESTRACUENTA: TStringField;
    CDSCtaContableMUESTRACODIGOCTA: TStringField;
    QCtaContable: TFDQuery;
    DataSource1: TDataSource;
    CDSListadoTIPO_LIQ: TStringField;
    CDSListadoRET_IVA: TFloatField;
    CDSCompIvaDebCredito: TClientDataSet;
    DSCompIvaDebCredito: TDataSource;
    CDSCompIvaDebCreditoTASA_1: TFloatField;
    CDSCompIvaDebCreditoTASA_2: TFloatField;
    CDSCompIvaDebCreditoTASA_3: TFloatField;
    CDSCompIvaDebCreditoTASA_4: TFloatField;
    CDSCompIvaDebCreditoDETALLE: TStringField;
    CDSCompIvaDebCreditoID_IVA: TIntegerField;
    CDSCompIvaDebCreditoIVA_DESCRIPCION: TStringField;
    CDSCompIvaDebCreditoIIBB: TFloatField;
    CDSCompIvaDebCreditoPERIVA: TFloatField;
    CDSCompIvaDebCreditoTOTAL: TFloatField;
    CDSCompIvaDebCreditoPORCTASA_1: TFloatField;
    CDSCompIvaDebCreditoPORCTASA_2: TFloatField;
    CDSCompIvaDebCreditoPORCTASA_3: TFloatField;
    CDSCompIvaDebCreditoPORCTASA_4: TFloatField;
    CDSCompIvaDebCreditoNETO_1: TFloatField;
    CDSCompIvaDebCreditoNETO_2: TFloatField;
    CDSCompIvaDebCreditoNETO_3: TFloatField;
    CDSCompIvaDebCreditoNETO_4: TFloatField;
    CDSCompIvaDebCreditoNETO_GRAVADO: TFloatField;
    CDSCompIvaDebCreditoNETO_EXENTO: TFloatField;
    CDSCompIvaDebCreditoNETO_MONOTRIBUTO: TFloatField;
    CDSCompIvaDebCreditoNETO_EXCLUIDO: TFloatField;
    CDSCompIvaDebCreditoTOTALCALCULADO: TFloatField;
    QLimpiaIIBHuerfanos: TFDQuery;
    QLimpiaIIBCero: TFDQuery;
    CDSListadoLETRA: TStringField;
    CDSListadoFECHA: TSQLTimeStampField;
    CDSListadoFECHA_FACTURA: TSQLTimeStampField;
    QListadoProveedores: TFDQuery;
    QListadoProveedoresRAZON_SOCIAL: TStringField;
    CDSListadoLOTEAFIP: TStringField;
    procedure CDSListadoCalcFields(DataSet: TDataSet);
    procedure CDSListadoAfterScroll(DataSet: TDataSet);
    procedure CDSTitulosAfterOpen(DataSet: TDataSet);
    procedure CDSCompIVACreAfterOpen(DataSet: TDataSet);
    procedure CDSCompIVADebAfterOpen(DataSet: TDataSet);
    procedure CDSDetalleMercaderiaCalcFields(DataSet: TDataSet);
    procedure CDSCompIvaDebCreditoAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosLibroIvaCompra: TDatosLibroIvaCompra;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses UDMain_FD,DMContableForm;
{$R *.dfm}

procedure TDatosLibroIvaCompra.CDSCompIVACreAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaCompra.CDSCompIVACreTASA_1.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVACrePORCTASA_1.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVACreTASA_2.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVACrePORCTASA_2.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVACreTASA_3.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVACrePORCTASA_3.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVACreTASA_4.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVACrePORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaCompra.CDSCompIVADebAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaCompra.CDSCompIVADebTASA_1.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVADebPORCTASA_1.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVADebTASA_2.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVADebPORCTASA_2.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVADebTASA_3.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVADebPORCTASA_3.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIVADebTASA_4.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIVADebPORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaCompra.CDSCompIvaDebCreditoAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaCompra.CDSCompIvaDebCreditoTASA_1.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIvaDebCreditoPORCTASA_1.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIvaDebCreditoTASA_2.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIvaDebCreditoPORCTASA_2.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIvaDebCreditoTASA_3.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIvaDebCreditoPORCTASA_3.AsFloat)+'%';
  DatosLibroIvaCompra.CDSCompIvaDebCreditoTASA_4.DisplayLabel := FormatFloat('0.00',DatosLibroIvaCompra.CDSCompIvaDebCreditoPORCTASA_4.AsFloat)+'%';
end;

procedure TDatosLibroIvaCompra.CDSDetalleMercaderiaCalcFields(
  DataSet: TDataSet);
begin
  DatosLibroIvaCompra.CDSDetalleMercaderiaIMPORTE_REC.AsFloat  := DatosLibroIvaCompra.CDSDetalleMercaderiaIMPORTE.AsFloat;
  DatosLibroIvaCompra.CDSDetalleMercaderiaCANTIDAD_REC.AsFloat := DatosLibroIvaCompra.CDSDetalleMercaderiaCANTIDAD.AsFloat;
  if DatosLibroIvaCompra.CDSDetalleMercaderiaTIPOCPBTE.Value='NC' then
    begin
      DatosLibroIvaCompra.CDSDetalleMercaderiaIMPORTE_REC.AsFloat  := DatosLibroIvaCompra.CDSDetalleMercaderiaIMPORTE_REC.AsFloat * -1;
      DatosLibroIvaCompra.CDSDetalleMercaderiaCANTIDAD_REC.AsFloat := DatosLibroIvaCompra.CDSDetalleMercaderiaCANTIDAD_REC.AsFloat * -1;
    end;

end;

procedure TDatosLibroIvaCompra.CDSListadoAfterScroll(DataSet: TDataSet);
begin
  CDSPercIIBB.Close;
  if (CDSListadoTIPO_CPBTE.AsString = 'FC') or
     (CDSListadoTIPO_CPBTE.AsString = 'NC') or
     (CDSListadoTIPO_CPBTE.AsString = 'FO') Then
     begin
       //CDSPercIIBB.Close;
       CDSPercIIBB.Params.ParamByName('id').Value := CDSListadoID_CPBTE.Value;
       CDSPercIIBB.Open;
     end;
  CDSLibroIvaDet.Close;
  CDSLibroIvaDet.Params.ParamByName('id').Value   := CDSListadoID.Value;
  CDSLibroIvaDet.Open;

end;

procedure TDatosLibroIvaCompra.CDSListadoCalcFields(DataSet: TDataSet);
begin
 if (CDSListadoTIPO_CPBTE.Value='NC') or (CDSListadoTIPO_LIQ.Value='C') then
    begin
      CDSListadoNETO_EXENTO_REC.Value      := CDSListadoNETO_EXENTO.AsFloat*-1;
      CDSListadoNETO_GRAVADO_REC.Value     := CDSListadoNETO_GRAVADO.AsFloat*-1;
      CDSListadoNETO_MONOTRIBUTO_REC.Value := CDSListadoNETO_MONOTRIBUTO.AsFloat*-1;
      CDSListadoNETO_EXCLUIDO_REC.Value    := CDSListadoNETO_EXCLUIDO.AsFloat*-1;
      CDSListadoTOTAL_REC.Value            := CDSListadoTOTAL.AsFloat*-1;

      CDSListadoCOL1_REC.Value             := CDSListadoCOL1.AsFloat*-1;
      CDSListadoCOL2_REC.Value             := CDSListadoCOL2.AsFloat*-1;
      CDSListadoCOL3_REC.Value             := CDSListadoCOL3.AsFloat*-1;
      CDSListadoCOL4_REC.Value             := CDSListadoCOL4.AsFloat*-1;
      CDSListadoCOL5_REC.Value             := CDSListadoCOL5.AsFloat*-1;
      CDSListadoCOL6_REC.Value             := CDSListadoCOL6.AsFloat*-1;
      CDSListadoCOL7_REC.Value             := CDSListadoCOL7.AsFloat*-1;
    end
  else
    begin
      CDSListadoNETO_EXENTO_REC.Value      := CDSListadoNETO_EXENTO.AsFloat;
      CDSListadoNETO_GRAVADO_REC.Value     := CDSListadoNETO_GRAVADO.AsFloat;
      CDSListadoNETO_MONOTRIBUTO_REC.Value := CDSListadoNETO_MONOTRIBUTO.AsFloat;
      CDSListadoNETO_EXCLUIDO_REC.Value    := CDSListadoNETO_EXCLUIDO.AsFloat;
      CDSListadoTOTAL_REC.Value            := CDSListadoTOTAL.AsFloat;

      CDSListadoCOL1_REC.Value             := CDSListadoCOL1.AsFloat;
      CDSListadoCOL2_REC.Value             := CDSListadoCOL2.AsFloat;
      CDSListadoCOL3_REC.Value             := CDSListadoCOL3.AsFloat;
      CDSListadoCOL4_REC.Value             := CDSListadoCOL4.AsFloat;
      CDSListadoCOL5_REC.Value             := CDSListadoCOL5.AsFloat;
      CDSListadoCOL6_REC.Value             := CDSListadoCOL6.AsFloat;
      CDSListadoCOL7_REC.Value             := CDSListadoCOL7.AsFloat;
    end
end;

procedure TDatosLibroIvaCompra.CDSTitulosAfterOpen(DataSet: TDataSet);
begin
  DatosLibroIvaCompra.CDSTitulos.First;
  DatosLibroIvaCompra.CDSListadoCOL1.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL1_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

  DatosLibroIvaCompra.CDSTitulos.Next;
  DatosLibroIvaCompra.CDSListadoCOL2.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL2_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

  DatosLibroIvaCompra.CDSTitulos.Next;
  DatosLibroIvaCompra.CDSListadoCOL3.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL3_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

  DatosLibroIvaCompra.CDSTitulos.Next;
  DatosLibroIvaCompra.CDSListadoCOL4.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL4_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

  DatosLibroIvaCompra.CDSTitulos.Next;
  DatosLibroIvaCompra.CDSListadoCOL5.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL5_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

  DatosLibroIvaCompra.CDSTitulos.Next;
  DatosLibroIvaCompra.CDSListadoCOL6.DisplayLabel     := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;
  DatosLibroIvaCompra.CDSListadoCOL6_REC.DisplayLabel := DatosLibroIvaCompra.CDSTitulosDETALLE.Value;

end;

end.
