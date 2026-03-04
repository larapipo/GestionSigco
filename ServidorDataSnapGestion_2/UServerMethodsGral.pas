unit UServerMethodsGral;

interface

uses System.SysUtils, System.Classes, Datasnap.DSServer, Datasnap.DSAuth, Midas,
  Data.FMTBcd, Data.DBXInterBase, Data.DB, Data.SqlExpr, IBGenerator,
  Datasnap.Provider, IniFiles, VCL.Dialogs, DBXCommon;

type
  TServerModuleGeneral = class(TDSServerModule)
    QBrowse: TSQLQuery;
    QUltimoCodigo: TSQLQuery;
    DSPBrowse: TDataSetProvider;
    DSPUltimoCodigo: TDataSetProvider;
    DSPListaPrecioCab: TDataSetProvider;
    QListaPrecioCab: TSQLQuery;
    QListaPrecioCabID: TIntegerField;
    QListaPrecioCabNOMBRE: TStringField;
    QStock: TSQLQuery;
    DSPStock: TDataSetProvider;
    QLPreciosUsuarios: TSQLQuery;
    QLPreciosUsuariosID_USUARIO: TFloatField;
    QLPreciosUsuariosID_LISTA: TIntegerField;
    QLPreciosUsuariosNOMBRE: TStringField;
    QLPreciosUsuariosID: TIntegerField;
    QLPreciosUsuariosEXCLUSIVO_EFECTIVO: TStringField;
    QLPreciosUsuariosF_PAGO: TIntegerField;
    DSPLPreciosUsuarios: TDataSetProvider;
    QSubRubro: TSQLQuery;
    QSubRubroCODIGO_SUBRUBRO: TStringField;
    QSubRubroDETALLE_SUBRUBRO: TStringField;
    DSPSubRubro: TDataSetProvider;
    DSPExistencia: TDataSetProvider;
    QExistencia: TSQLQuery;
    QMarca: TSQLQuery;
    QMarcaMARCA_STK: TStringField;
    QMarcaDESCRIPCION_MARCA: TStringField;
    DSPMarca: TDataSetProvider;
    QRubro: TSQLQuery;
    QRubroCODIGO_RUBRO: TStringField;
    QRubroDETALLE_RUBRO: TStringField;
    DSPRubro: TDataSetProvider;
    QListaPrecioPorDefecto: TSQLQuery;
    QListaPrecioPorDefectoID: TIntegerField;
    DSPListaPrecioPorDefecto: TDataSetProvider;
    QPimeraListaPrecio: TSQLQuery;
    QPimeraListaPrecioMIN: TIntegerField;
    QMonedas: TSQLQuery;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasSIGNO: TStringField;
    QMonedasCOTIZACION: TFMTBCDField;
    QMonedasCOTIZACION_COMPRA: TFMTBCDField;
    DSPPimeraListaPrecio: TDataSetProvider;
    DSPMonedas: TDataSetProvider;
    QCodigoBarra: TSQLQuery;
    DSPCodigoBarra: TDataSetProvider;
    QConsultaCodigoSerie: TSQLQuery;
    DSPConsultaCodigoSerie: TDataSetProvider;
    QOpcion: TSQLQuery;
    QOpcionVALOR: TStringField;
    QStockFotos: TSQLQuery;
    QStockFotosID: TIntegerField;
    QStockFotosCODIGO: TStringField;
    QStockFotosFOTO: TStringField;
    QStockFotosPOR_DEFECTO: TStringField;
    DSPStockFotos: TDataSetProvider;
    QTipoCom: TSQLQuery;
    DSPTipoComprob: TDataSetProvider;
    DSPBuscaCpbte: TDataSetProvider;
    QBuscaCpbte: TSQLQuery;
    QLstClientes: TSQLQuery;
    DSPLstClientes: TDataSetProvider;
    Qsucursal: TSQLQuery;
    QsucursalCODIGO: TIntegerField;
    QsucursalDETALLE: TStringField;
    DSPSucursal: TDataSetProvider;
    QLstSucursal: TSQLQuery;
    DSPLstSucursal: TDataSetProvider;
    QTipoCpbte: TSQLQuery;
    DSPTipoCpbte: TDataSetProvider;
    QBuscarClaseCpbte: TSQLQuery;
    DSPBuscarClaseCpbte: TDataSetProvider;
    QEmpresa: TSQLQuery;
    DSPEmpresa: TDataSetProvider;
    spGravarLog: TSQLStoredProc;
    QDepositos: TSQLQuery;
    DSPDepositos: TDataSetProvider;
    QDepositosID: TIntegerField;
    QDepositosNOMBRE: TStringField;
    QDepositosSUCURSAL: TIntegerField;
    QDepositosCENTRALIZA_STOCK: TStringField;
    QsucursalDIRECCION: TStringField;
    QsucursalLOCALIDAD: TStringField;
    QVerificaNroComp: TSQLQuery;
    QVerificaNroCompNROCPBTE: TStringField;
    QVerificaNroCompID_FC: TIntegerField;
    QVerificaNroCompTIPOCPBTE: TStringField;
    QVerificaNroCompCLASECPBTE: TStringField;
    spcambiaNro: TSQLStoredProc;
  private
    { Private declarations }
  public
    { Public declarations }
    Transaction: TDBXTransaction;
    function Opcion(valor: string): String;
    function GravarLog(tipo: integer; detalle, origen, usuario: string)
      : Boolean;
    function VerificaNro(Nro, Codigo, tipo: String): Boolean;
    function CambiarNro(id: integer; tipo, suc, num, CV: String;
      Fecha, FechaFiscal: TDateTime): Boolean;
  end;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }
uses UServerContainer,UServerMethods;

{$R *.dfm}

function TServerModuleGeneral.Opcion(valor: String): String;
begin
  QOpcion.Close;
  QOpcion.ParamByName('Opcion').Value := valor;
  QOpcion.Open;
  if QOpcion.Fields[0].AsString <> '' then
    Result := QOpcion.Fields[0].AsString
  else
    Result := '';
  QOpcion.Close;
end;

function TServerModuleGeneral.GravarLog(tipo: integer;
  detalle, origen, usuario: string): Boolean;
begin
  // **** Ingreso en el Log File  **************
  spGravarLog.Close;
  spGravarLog.ParamByName('Tipo').Value := tipo;
  spGravarLog.ParamByName('Detalle').AsString := detalle;
  // 'Borrado Ajuste Stock: '+ CDSAjusteCabNROCPBTE.Value;
  spGravarLog.ParamByName('Origen').AsString := origen; // 'AJUSTE';
  spGravarLog.ParamByName('Usuario').AsString := usuario;
  // DMMain_2.UsuarioActivo;
  Result := spGravarLog.ExecProc = 0;
  spGravarLog.Close;
  // ******************************************
end;

function TServerModuleGeneral.VerificaNro(Nro, Codigo, tipo: String): Boolean;
begin
  // tipo si es V o C venta o compra
  QVerificaNroComp.Close;
  QVerificaNroComp.ParamByName('Nro').Value := Nro;
  QVerificaNroComp.ParamByName('codigo').Value := Codigo;
  QVerificaNroComp.ParamByName('Tipo').Value := tipo;
  QVerificaNroComp.Open;
  Result := QVerificaNroCompID_FC.AsString <> '';
  QVerificaNroComp.Close;
end;

function TServerModuleGeneral.CambiarNro(id: integer;
  tipo, suc, num, CV: String; Fecha, FechaFiscal: TDateTime): Boolean;
var Vtran: TDBXTransaction;
begin
  result:=False;
  Vtran := ServerContainer.GestionPtoVta.BeginTransaction(TDBXIsolations.ReadCommitted);
    try
      spcambiaNro.Close;
      spcambiaNro.ParamByName('ID').AsInteger          := id;
      spcambiaNro.ParamByName('Tipo').AsString         := tipo;
      spcambiaNro.ParamByName('Prefijo').AsString      := suc;
      spcambiaNro.ParamByName('Numero').AsString       := num;
      spcambiaNro.ParamByName('Compra_venta').AsString := CV;
      spcambiaNro.ParamByName('Fecha').AsDateTime      := Fecha;
      spcambiaNro.ParamByName('Fecha2').AsDateTime     := FechaFiscal;
      Result := spcambiaNro.ExecProc = 0;
      spcambiaNro.Close;
      ServerContainer.GestionPtoVta.CommitFreeAndNil(Vtran);
      Result := True;
    finally
      ServerContainer.GestionPtoVta.RollbackIncompleteFreeAndNil(Vtran);
    end;
end;

end.
