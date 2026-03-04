unit DMListaPreciosProv;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, Data.DB, Datasnap.DBClient,
  FireDAC.Comp.Client, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.VCLUI.Wait, FireDAC.Phys.IB, FireDAC.Phys.IBBase, FireDAC.Phys.FB,
  FireDAC.Comp.UI, FireDAC.Phys.FBDef, FireDAC.Phys.IBDef;

type
  TDatosListaPrecioProv = class(TDataModule)
    QBuscadorListas: TFDQuery;
    DSPBuscadorLista: TDataSetProvider;
    QExisteStock: TFDQuery;
    SQLThreads: TFDConnection;
    spInformaCambioPrecio: TFDStoredProc;
    QBuscadorRubro: TFDQuery;
    QBuscadorRubroCODIGO_RUBRO: TStringField;
    QBuscadorRubroDETALLE_RUBRO: TStringField;
    QBuscadorRubroCONTROL_RUBRO: TStringField;
    QBuscadorRubroFUERA_PROMO: TStringField;
    QBuscadorSubRrub: TFDQuery;
    QBuscadorSubRrubCODIGO_SUBRUBRO: TStringField;
    QBuscadorMarca: TFDQuery;
    QBuscadorMarcaMARCA_STK: TStringField;
    QBuscadorMarcaDESCRIPCION_MARCA: TStringField;
    QBuscadorMarcaOBSERVACION_MARCA: TStringField;
    QBuscaMarcaCod: TFDQuery;
    QBuscaMarcaCodMARCA_STK: TStringField;
    QBuscaMarcaCodDESCRIPCION_MARCA: TStringField;
    QBuscaMarcaCodOBSERVACION_MARCA: TStringField;
    QCodigoRubro: TFDQuery;
    QCodigoRubroCODIGO: TStringField;
    QCodigoSub: TFDQuery;
    QCodigoSubCODIGO: TStringField;
    spABMSubRubro: TFDStoredProc;
    spABMRubro: TFDStoredProc;
    spABMMarca: TFDStoredProc;
    QCodigoFree: TFDQuery;
    QCodigoFreeNEWCODIGO: TIntegerField;
    QBorrarStock: TFDQuery;
    QVerifi_SubRubro: TFDQuery;
    QVerifi_SubRubroCODIGO_SUBRUBRO: TStringField;
    QUltimoCodSubRub: TFDQuery;
    QUltimoCodRub: TFDQuery;
    QUltimoCodMarca: TFDQuery;
    DSRubros: TDataSource;
    CDSRubros: TClientDataSet;
    CDSRubrosCODIGO_RUBRO: TStringField;
    CDSRubrosDETALLE_RUBRO: TStringField;
    DSPRubros: TDataSetProvider;
    DSPSubRubros: TDataSetProvider;
    CDSSubRubros: TClientDataSet;
    CDSSubRubrosCODIGO_RUBRO: TStringField;
    CDSSubRubrosCODIGO_SUBRUBRO: TStringField;
    CDSSubRubrosDETALLE_SUBRUBRO: TStringField;
    DSSubRubros: TDataSource;
    CDSProveedores: TClientDataSet;
    CDSProveedoresCODIGO: TStringField;
    CDSProveedoresNOMBRE: TStringField;
    CDSProveedoresRAZON_SOCIAL: TStringField;
    CDSProveedoresN_DE_CUENTA: TStringField;
    CDSProveedoresID_COD_POSTAL: TIntegerField;
    CDSProveedoresCOD_POSTAL: TStringField;
    CDSProveedoresLOCALIDAD: TStringField;
    CDSProveedoresDIRECCION: TStringField;
    CDSProveedoresTELEFONO_1: TStringField;
    CDSProveedoresACTIVO: TStringField;
    DSPProveedores: TDataSetProvider;
    CDSBuscadorLista: TClientDataSet;
    CDSBuscadorListaNOMBRE: TStringField;
    CDSBuscadorListaCODIGO_PROVEE: TStringField;
    CDSBuscadorListaFECHA: TSQLTimeStampField;
    CDSBuscadorListaID: TIntegerField;
    spActualizaPrecios: TFDStoredProc;
    spActualizaPrecioVta: TFDStoredProc;
    spAltaCB: TFDStoredProc;
    spABMStock: TFDStoredProc;
    spABMUnidades: TFDStoredProc;
    spABMPrecio: TFDStoredProc;
    QUltimaLista: TFDQuery;
    QBorrarRubro: TFDQuery;
    QDesaplicaCodigo: TFDQuery;
    QBuscaCodigoGeneral: TFDQuery;
    QBuscadorCodigo: TFDQuery;
    CDSListas: TClientDataSet;
    CDSListasID: TIntegerField;
    DSPListas: TDataSetProvider;
    QListas: TFDQuery;
    QListasID: TIntegerField;
    QUltimoCodigoStk: TFDQuery;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDPhysFBDriverLink1: TFDPhysFBDriverLink;
    FDPhysIBDriverLink1: TFDPhysIBDriverLink;
    QProveedores: TFDQuery;
    QBuscaArticulo: TFDQuery;
    QBuscaArticuloCODIGO_STK: TStringField;
    QActualizaSubRubroStk: TFDQuery;
    QActualizaMarca: TFDQuery;
    CDSSubRubrosUltCod: TAggregateField;
    TRubros: TFDTable;
    TSubRubros: TFDTable;
    DSPBuscaIva: TDataSetProvider;
    QBuscaIva: TClientDataSet;
    QMonedas: TClientDataSet;
    DSPMonedas: TDataSetProvider;
    QUnidades: TClientDataSet;
    DSPUnidades: TDataSetProvider;
    TMonedas: TFDTable;
    TUnidades: TFDTable;
    TBuscaIva: TFDTable;
    QBuscaIvaCODIGO: TIntegerField;
    QBuscaIvaDESCRIPCION: TStringField;
    QBuscaIvaTASA: TFloatField;
    QBuscaIvaCOLUMNA: TSmallintField;
    QMonedasID: TIntegerField;
    QMonedasMONEDA: TStringField;
    QMonedasCOTIZACION: TFloatField;
    QMonedasSIGNO: TStringField;
    QMonedasORDEN: TSmallintField;
    QMonedasCOTIZACION_COMPRA: TFloatField;
    QUnidadesID: TIntegerField;
    QUnidadesSIGLAS: TStringField;
    QUnidadesDESCRIPCION: TStringField;
    QBuscadorCodRubro: TFDQuery;
    QBuscadorCodRubroCODIGO_RUBRO: TStringField;
    QBuscadorCodRubroDETALLE_RUBRO: TStringField;
    QBuscadorCodSubrubro: TFDQuery;
    QBuscadorCodSubrubroCODIGO_SUBRUBRO: TStringField;
    QBuscadorCodSubrubroDETALLE_SUBRUBRO: TStringField;
    QBuscaArtEnStock: TFDQuery;
    QBuscaArtEnStockCODIGO_STK: TStringField;
    QBuscaArtEnStockDETALLE_STK: TStringField;
    QUltimoCodigoIntLista: TFDQuery;
    QUltimoCodigoIntListaCODIGO: TStringField;
    QBuscaArticuloRUBRO_STK: TStringField;
    QBuscaArticuloSUBRUBRO_STK: TStringField;
    QBuscaArticuloMARCA_STK: TStringField;
    QBuscaArticuloMUESTRARUBRO: TStringField;
    QBuscaArticuloMUESTRASUBRUBRO: TStringField;
    QBuscaArticuloMUESTRAMARCA: TStringField;
    spMarka_Provee: TFDStoredProc;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DatosListaPrecioProv: TDatosListaPrecioProv;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
uses UDMain_fd;


{$R *.dfm}

procedure TDatosListaPrecioProv.DataModuleDestroy(Sender: TObject);
begin
  DatosListaPrecioProv:=nil;
end;

end.
