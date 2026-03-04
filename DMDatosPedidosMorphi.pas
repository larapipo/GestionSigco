unit DMDatosPedidosMorphi;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.IB,
  FireDAC.Phys.IBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.FMTBcd, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Data.SqlExpr, Datasnap.Provider, Data.DB,
  Datasnap.DBClient, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TDatosPedidosMorphi = class(TDataModule)
    FDConnectionMorphi: TFDConnection;
    DSPedCab: TDataSource;
    DSPedDet: TDataSource;
    DSPedidosMarcados: TDataSource;
    CDSPedCab: TClientDataSet;
    CDSPedCabINDICE: TLargeintField;
    CDSPedCabCTE_CODIGO: TSmallintField;
    CDSPedCabPREFIJO: TIntegerField;
    CDSPedCabNUMERO: TLargeintField;
    CDSPedCabFECHA: TDateField;
    CDSPedCabHORA: TTimeField;
    CDSPedCabFECHA_LIMITE: TDateField;
    CDSPedCabCOD_SUCURSAL_PIDE: TSmallintField;
    CDSPedCabCOD_SUCURSAL_ENTREGA: TSmallintField;
    CDSPedCabOBSERVACIONES: TStringField;
    CDSPedCabUSUARIO: TStringField;
    CDSPedCabESTADO: TStringField;
    CDSPedCabUSUARIO_MODIFICO: TStringField;
    CDSPedCabNOMBRE: TStringField;
    CDSPedCabPIDE_NTACTO: TStringField;
    CDSPedDet: TClientDataSet;
    CDSPedDetCOD_ARTICU: TStringField;
    CDSPedDetUNIDAD: TStringField;
    CDSPedDetCANTIDAD_ACTUAL: TFloatField;
    CDSPedDetCANTIDAD: TFMTBCDField;
    CDSPedDetENTREGADO: TFMTBCDField;
    CDSPedDetDESCRIPCION: TStringField;
    CDSPedDetCOD_BARRA: TStringField;
    CDSPedDetINDICE: TLargeintField;
    CDSPedDetINDICECAB: TLargeintField;
    CDSPedDetEXISTE: TIntegerField;
    CDSPedidosMarcados: TClientDataSet;
    CDSPedidosMarcadosINDICE: TLargeintField;
    CDSPedidosMarcadosCTE_CODIGO: TSmallintField;
    CDSPedidosMarcadosPREFIJO: TIntegerField;
    CDSPedidosMarcadosNUMERO: TLargeintField;
    CDSPedidosMarcadosFECHA: TDateField;
    CDSPedidosMarcadosHORA: TTimeField;
    CDSPedidosMarcadosFECHA_LIMITE: TDateField;
    CDSPedidosMarcadosCOD_SUCURSAL_PIDE: TSmallintField;
    CDSPedidosMarcadosCOD_SUCURSAL_ENTREGA: TSmallintField;
    CDSPedidosMarcadosOBSERVACIONES: TStringField;
    CDSPedidosMarcadosUSUARIO: TStringField;
    CDSPedidosMarcadosESTADO: TStringField;
    CDSPedidosMarcadosUSUARIO_MODIFICO: TStringField;
    CDSPedidosMarcadosNOMBRE: TStringField;
    CDSPedidosMarcadosPIDE_NTACTO: TStringField;
    DSPPedidosMarcados: TDataSetProvider;
    DSPPedDet: TDataSetProvider;
    DSPPedCab: TDataSetProvider;
    QPedCab: TFDQuery;
    QPedDet: TFDQuery;
    QPedidosMarcados: TFDQuery;
    QDesmarcar: TFDQuery;
    QMarcarPedido: TFDQuery;
    CDSPedDetCOSTOUNITARIO: TFloatField;
    CDSPedDetIMPORTE: TFloatField;
    QMaxMin: TFDQuery;
    QMaxMinMIN: TLargeintField;
    QMaxMinMAX: TLargeintField;
    QStockGestion: TFDQuery;
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
    QClientesSUCURSAL: TIntegerField;
    QClientesACTIVO: TStringField;
    QRelacion: TFDQuery;
    QRelacionCODIGO: TStringField;
    QRelacionNOMNRECLIENTE: TStringField;
    QRelacionID: TIntegerField;
    DSPRelacion: TDataSetProvider;
    CDSRelacion: TClientDataSet;
    CDSRelacionCODIGO: TStringField;
    CDSRelacionNOMNRECLIENTE: TStringField;
    CDSRelacionID: TIntegerField;
    procedure CDSPedDetCalcFields(DataSet: TDataSet);
    procedure CDSPedCabAfterScroll(DataSet: TDataSet);
    procedure CDSRelacionAfterPost(DataSet: TDataSet);
    procedure CDSRelacionAfterDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosPedidosMorphi: TDatosPedidosMorphi;

implementation

uses
  UPedidosMorphi;

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

procedure TDatosPedidosMorphi.CDSPedCabAfterScroll(DataSet: TDataSet);
begin
  if FormPedidosMorphi<>nil then
    begin
      if CDSRelacion.Locate('id',DatosPedidosMorphi.CDSPedCabCOD_SUCURSAL_PIDE.Value,[]) Then
        begin
          FormPedidosMorphi.ceCliente.Text:=CDSRelacionCODIGO.Value;
          QClientes.Close;
          QClientes.ParamByName('Codigo').Value := CDSRelacionCODIGO.Value;
          QClientes.Open;
          IF NOT(QClientes.IsEmpty) THEN
            begin
              FormPedidosMorphi.edNombreCliente.Text := QClientesNOMBRE.Value;
            end
          else
            begin
              FormPedidosMorphi.edNombreCliente.Text := '';
              FormPedidosMorphi.ceCliente.Text:='';
            end;

          QClientes.Close;
        end;
    end;
end;

procedure TDatosPedidosMorphi.CDSPedDetCalcFields(DataSet: TDataSet);
begin
  QStockGestion.Close;
  QStockGestion.ParamByName('codigo').Value:=Trim(DatosPedidosMorphi.CDSPedDetCOD_ARTICU.AsString);
  QStockGestion.Open;
  DatosPedidosMorphi.CDSPedDetEXISTE.Value:=QStockGestion.Fields[0].AsInteger;
  QStockGestion.Close;
end;

procedure TDatosPedidosMorphi.CDSRelacionAfterDelete(DataSet: TDataSet);
begin
  CDSRelacion.ApplyUpdates(-1);
end;

procedure TDatosPedidosMorphi.CDSRelacionAfterPost(DataSet: TDataSet);
begin
  CDSRelacion.ApplyUpdates(-1);
end;

end.
