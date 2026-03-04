unit URegistroDiarioOP;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UABMBase, Data.FMTBcd,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Datasnap.Provider, Datasnap.DBClient,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, CompBuscador, JvAppStorage,
  AdvSearchList, Data.DB, IBGenerator, Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids,
  AdvSearchEdit, DBAdvSearchEdit, JvDBControls, Vcl.StdCtrls, JvExStdCtrls,
  JvCombobox, JvDBCombobox, JvExControls, JvDBLookup, JvExMask, JvToolEdit,
  Vcl.Mask, Vcl.ExtCtrls, Vcl.DBCtrls, JvAppIniStorage, Data.SqlExpr,
  JvComponentBase, JvFormPlacement, System.ImageList, Vcl.ImgList,
  System.Actions, Vcl.ActnList, JvLabel, Vcl.Buttons, Vcl.ToolWin;

type
  TFormRegistroDiarioOP = class(TFormABMBase)
    QRegDiario: TFDQuery;
    CDSRegDiario: TClientDataSet;
    DSPRegDiario: TDataSetProvider;
    CDSRegDiarioID: TIntegerField;
    CDSRegDiarioID_MODELO: TIntegerField;
    CDSRegDiarioFECHA: TDateField;
    CDSRegDiarioCLIENTE: TStringField;
    CDSRegDiarioTURNO: TStringField;
    CDSRegDiarioNRO_CPBTE_OP: TStringField;
    CDSRegDiarioORDEN_LLENADO: TIntegerField;
    CDSRegDiarioMOLDE: TStringField;
    CDSRegDiarioTROQUEL: TStringField;
    CDSRegDiarioDESIGNACION_CIMA_BASE: TStringField;
    CDSRegDiarioSTOCK_ANT: TFloatField;
    CDSRegDiarioCANT_PEDIDA: TFloatField;
    CDSRegDiarioCANT_FABRIC: TFloatField;
    CDSRegDiarioCANT_PEND: TFloatField;
    CDSRegDiarioHORM_LTS: TFloatField;
    CDSRegDiarioHORM_KG: TFloatField;
    CDSRegDiarioHORM_REAL_KG: TFloatField;
    CDSRegDiarioHORM_REAL_LTS: TFloatField;
    CDSRegDiarioPATS_CANT: TIntegerField;
    CDSRegDiarioACERO_PAS_KG: TFloatField;
    CDSRegDiarioAROS_KG: TFloatField;
    CDSRegDiarioTRENZAS_KG: TFloatField;
    CDSRegDiarioCORDONES_KG: TFloatField;
    CDSRegDiarioALAMBRE_KG: TFloatField;
    CDSRegDiarioPIEDRA_KG: TFloatField;
    CDSRegDiarioARENA_KG: TFloatField;
    CDSRegDiarioCEMENTO_KG: TFloatField;
    CDSRegDiarioPIEDRA_KG_REAL: TFloatField;
    CDSRegDiarioARENA_KG_REAL: TFloatField;
    CDSRegDiarioCEMENTO_KG_REAL: TFloatField;
    CDSRegDiarioDIF_HORM_LTS: TFloatField;
    CDSRegDiarioDIF_HORM_KG: TFloatField;
    CDSRegDiarioDIF_PIEDRA_KG: TFloatField;
    CDSRegDiarioDIF_ARENA_KG: TFloatField;
    CDSRegDiarioDIF_CEMENTO_KG: TFloatField;
    CDSRegDiarioOBSERVACIONES: TStringField;
    CDSRegDiarioRECHAZADO: TIntegerField;
    CDSRegDiarioACEPTADO: TIntegerField;
    BuscarCliente: TAction;
    QClientes: TFDQuery;
    QClientesCODIGO: TStringField;
    QClientesNOMBRE: TStringField;
    QClientesNOMBRE_COMPLETO: TStringField;
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
    QClientesEMITE_REMITO: TStringField;
    QClientesEMITE_FACTURA: TStringField;
    QClientesNRO_DE_CUIT: TStringField;
    QClientesACTIVO: TStringField;
    QClientesLIMITE_CREDITO: TFloatField;
    QClientesSALDOINICIAL: TFloatField;
    QClientesOBSERVACIONES: TMemoField;
    QClientesSUCURSAL: TIntegerField;
    QClientesZONA: TIntegerField;
    QClientesVENDEDOR: TStringField;
    QClientesLISTAPRECIOS: TIntegerField;
    QClientesTIPODOCUMENTO: TSmallintField;
    QClientesNRODOCUMENTO: TStringField;
    QClientesCORREOELECTRONICO: TStringField;
    QClientesCORREOELECTRONICO_2: TStringField;
    QClientesID_FACTURAPORDEFECTO: TIntegerField;
    QClientesID_FACTURACONTADOPORDEFECTO: TIntegerField;
    QClientesID_NOTADEBITOPORDEFECTO: TIntegerField;
    QClientesID_NOTACREDITOPORDEFECTO: TIntegerField;
    QClientesID_TIKETPORDEFECTO: TIntegerField;
    QClientesID_RECIBOPORDEFECTO: TIntegerField;
    QClientesPERCIBIR_IB: TStringField;
    QClientesINSCRIPTO_MULTICONVENIO: TStringField;
    QClientesCONTACTO: TStringField;
    QClientesTELEFONO_CONTACTO: TStringField;
    QClientesCOBRADOR: TStringField;
    QClientesCATEGORIA: TIntegerField;
    QClientesLONGITUD: TStringField;
    QClientesLATITUD: TStringField;
    QClientesDIRECCION_CALLE: TStringField;
    QClientesDIRECCION_NUMERO: TStringField;
    QClientesDIRECCION_PISO: TStringField;
    QClientesDIRECCION_DEPTO: TStringField;
    QClientesDEUDAMAYOR30: TStringField;
    QClientesDIAS_MAYOR_30: TIntegerField;
    QClientesTIPOABONO: TStringField;
    QClientesMES_ABONOANUAL: TIntegerField;
    QClientesFRANQUICIA: TStringField;
    QClientesID_DEPOSITO_FRANQUICIA: TIntegerField;
    QClientesID_TRANSPORTE: TIntegerField;
    QClientesIMPRIME_SALDOFACTURA: TStringField;
    QClientesCORTAR_SERVICIO: TStringField;
    QClientesCON_PLANPAGO: TStringField;
    QClientesDIRECCION_POSTAL: TStringField;
    QClientesCALLE_1: TStringField;
    QClientesCALLE_2: TStringField;
    QClientesVENDER_DE_CTDO: TStringField;
    QClientesPRESENTO_F8001: TStringField;
    QClientesID_TARJETACREDITO: TIntegerField;
    QClientesNRO_TARJETA_C: TStringField;
    QClientesNRO_SEG_TC: TStringField;
    QClientesID_BANCO: TIntegerField;
    QClientesNRO_CTA_BCO: TStringField;
    QClientesCODIGO_COORPORATIVO: TStringField;
    QClientesCUENTA_OPERATIVA: TStringField;
    QClientesTARJETA_CLIENTE: TStringField;
    QClientesFOTO: TBlobField;
    QClientesCON_MONITOREO: TStringField;
    QClientesCON_GPRS: TStringField;
    QClientesCON_HOSTING: TStringField;
    QClientesCOMUNITARIO: TStringField;
    QClientesID_PRESTADOR: TIntegerField;
    QClientesMES_ADICIONAL: TIntegerField;
    QClientesMES_SEMESTRAL: TIntegerField;
    QClientesMOROSO: TStringField;
    QClientesPLANTILLA_CIVA: TStringField;
    QClientesOBSERVACIONES1: TStringField;
    QClientesOBSERVACIONES2: TStringField;
    QClientesAVISO: TStringField;
    QClientesRUBRO: TIntegerField;
    QClientesMUESTRACOORPORATIVO: TStringField;
    QClientesFECHAULTIMACOMPRA: TSQLTimeStampField;
    QClientesFECHAALTA: TSQLTimeStampField;
    QClientesULTIMOPAGO: TSQLTimeStampField;
    QClientesFECHA_VENCIMI_DDJJ_MULTI: TSQLTimeStampField;
    QClientesFECHA_INCIO_FC_ABONO: TSQLTimeStampField;
    QClientesVENCIMIENTO_TC: TSQLTimeStampField;
    QClientesFECHANACIMIENTO: TSQLTimeStampField;
    QClientesDESDE_F8001: TSQLTimeStampField;
    QClientesHASTA_F8001: TSQLTimeStampField;
    CDSRegDiarioNOMBRE_CLIENTE: TStringField;
    BuscarCpbte: TAction;
    BuscadorDetalles: TAction;
    QProModelo: TFDQuery;
    DSProModelo: TDataSource;
    IBGRegDiario: TIBGenerator;
    QProModeloID: TIntegerField;
    QProModeloMODELO: TStringField;
    ComBuscadorOrden: TComBuscador;
    QBuscaItem: TFDQuery;
    QBuscaItemID: TIntegerField;
    QBuscaItemID_OPCAB: TIntegerField;
    QBuscaItemFECHA: TSQLTimeStampField;
    QBuscaItemCODIGO: TStringField;
    QBuscaItemDETALLE: TStringField;
    QBuscaItemNROCPBTE: TStringField;
    QBuscaItemCLIENTE: TStringField;
    QBuscaItemNOMBRE: TStringField;
    CDSRegDiarioID_OPROD_DET: TIntegerField;
    CDSRegDiarioID_OPROD_CAB: TIntegerField;
    CDSRegDiarioTIPO_MATERIA: TIntegerField;
    DSMaterial: TDataSource;
    QMaterial: TFDQuery;
    QBuscadoReigstroDiario: TFDQuery;
    ToolButton1: TToolButton;
    spAgregarStock: TSpeedButton;
    AltaStock: TAction;
    spAltaStock: TFDStoredProc;
    CDSRegDiarioCODIGO: TStringField;
    pcMovimientos: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    dbeDifHormigonLts: TDBEdit;
    dbeDifHormigonKg: TDBEdit;
    dbeDifPiedraKg: TDBEdit;
    dbeDifArenaKg: TDBEdit;
    dbeDifCementoKg: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label7: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label3: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBText4: TDBText;
    edId: TDBEdit;
    dbePuestaTierra: TDBEdit;
    dbeCantidadPedida: TDBEdit;
    dbeCantidadFabricada: TDBEdit;
    dbeCanPedientes: TDBEdit;
    dbeHormigoLts: TDBEdit;
    dbeHormigonKg: TDBEdit;
    dneHormigonKgReal: TDBEdit;
    dbeHormLtsReal: TDBEdit;
    dbeAceroPas: TDBEdit;
    dbeArosKg: TDBEdit;
    dbeTrenzaKg: TDBEdit;
    dbeCordones: TDBEdit;
    dneAlambreKg: TDBEdit;
    dbePiedraKg: TDBEdit;
    dbeArenaKg: TDBEdit;
    dbeCementoKg: TDBEdit;
    debPiedraKgReal: TDBEdit;
    dbeArenaKgReal: TDBEdit;
    dbeCementoKgReal: TDBEdit;
    debObs: TDBEdit;
    dbeFecha: TJvDBDateEdit;
    cbModelos: TJvDBLookupCombo;
    cbTruno: TJvDBComboBox;
    edNombreCliente: TDBEdit;
    ceCliente: TJvDBComboEdit;
    edNroCpbte: TDBEdit;
    dbeNroTroquel: TDBEdit;
    edDetalleArticulo: TDBEdit;
    edBuscar: TDBAdvSearchEdit;
    dbcMaterial: TJvDBLookupCombo;
    pnCab: TPanel;
    pnPie: TPanel;
    pnCtral: TPanel;
    dbgRegistros: TDBGrid;
    QRegDiarioID_PARTE: TIntegerField;
    QRegDiarioID: TIntegerField;
    QRegDiarioID_MODELO: TIntegerField;
    QRegDiarioFECHA: TDateField;
    QRegDiarioCLIENTE: TStringField;
    QRegDiarioNOMBRE_CLIENTE: TStringField;
    QRegDiarioTURNO: TStringField;
    QRegDiarioID_OPROD_CAB: TIntegerField;
    QRegDiarioID_OPROD_DET: TIntegerField;
    QRegDiarioID_SUB_DET: TIntegerField;
    QRegDiarioNRO_CPBTE_OP: TStringField;
    QRegDiarioTIPO_MATERIA: TIntegerField;
    QRegDiarioORDEN_LLENADO: TIntegerField;
    QRegDiarioMOLDE: TStringField;
    QRegDiarioCODIGO: TStringField;
    QRegDiarioDESIGNACION_CIMA_BASE: TStringField;
    QRegDiarioTROQUEL: TStringField;
    QRegDiarioSTOCK_ANT: TFloatField;
    QRegDiarioCANT_PEDIDA: TFloatField;
    QRegDiarioCANT_FABRIC: TFloatField;
    QRegDiarioCANT_PEND: TFloatField;
    QRegDiarioHORM_LTS: TFloatField;
    QRegDiarioHORM_KG: TFloatField;
    QRegDiarioHORM_REAL_KG: TFloatField;
    QRegDiarioHORM_REAL_LTS: TFloatField;
    QRegDiarioPATS_CANT: TIntegerField;
    QRegDiarioACERO_PAS_KG: TFloatField;
    QRegDiarioAROS_KG: TFloatField;
    QRegDiarioTRENZAS_KG: TFloatField;
    QRegDiarioCORDONES_KG: TFloatField;
    QRegDiarioALAMBRE_KG: TFloatField;
    QRegDiarioPIEDRA_KG: TFloatField;
    QRegDiarioARENA_KG: TFloatField;
    QRegDiarioCEMENTO_KG: TFloatField;
    QRegDiarioPIEDRA_KG_REAL: TFloatField;
    QRegDiarioARENA_KG_REAL: TFloatField;
    QRegDiarioCEMENTO_KG_REAL: TFloatField;
    QRegDiarioDIF_HORM_LTS: TFloatField;
    QRegDiarioDIF_HORM_KG: TFloatField;
    QRegDiarioDIF_PIEDRA_KG: TFloatField;
    QRegDiarioDIF_ARENA_KG: TFloatField;
    QRegDiarioDIF_CEMENTO_KG: TFloatField;
    QRegDiarioOBSERVACIONES: TStringField;
    QRegDiarioRECHAZADO: TIntegerField;
    QRegDiarioACEPTADO: TIntegerField;
    QRegDiarioID_PARTE_DIARIO: TIntegerField;
    CDSRegDiarioID_PARTE: TIntegerField;
    CDSRegDiarioID_SUB_DET: TIntegerField;
    CDSRegDiarioID_PARTE_DIARIO: TIntegerField;
    DSRegDiario: TDataSource;
    QRegCab: TFDQuery;
    CDSRegCab: TClientDataSet;
    DSPRegCab: TDataSetProvider;
    edFechaReg: TJvDBDateEdit;
    DBEdit1: TDBEdit;
    CDSRegCabID: TIntegerField;
    QRegCabID: TIntegerField;
    QRegCabFECHA: TSQLTimeStampField;
    CDSRegCabFECHA: TSQLTimeStampField;
    QSearch: TFDQuery;
    DSSearch: TDataSource;
    QSearchID: TIntegerField;
    QSearchID_DET_OP: TIntegerField;
    QSearchCODIGO: TStringField;
    QSearchDETALLE: TStringField;
    QSearchCANTIDAD: TFloatField;
    QSearchCANTIDAD_SALDO: TFloatField;
    QSearchFECHA: TSQLTimeStampField;
    QSearchTIPOCPBTE: TStringField;
    QSearchCLASECPBTE: TStringField;
    QSearchNROCPBTE: TStringField;
    QSearchESTADO: TStringField;
    QSearchFECHAINICO: TSQLTimeStampField;
    QSearchFECHAFINAL: TSQLTimeStampField;
    QSearchESTACION: TIntegerField;
    QSearchKEY_ESTACION: TStringField;
    QSearchMUESTRAID_CAB: TIntegerField;
    QSearchMUESTRAID_DET: TIntegerField;
    QSearchNOMBRE: TStringField;
    edFecha: TJvDBDateEdit;
    dbBuscadorPI: TDBAdvSearchEdit;
    edDetalle: TDBEdit;
    edCliente: TDBEdit;
    edHormigon: TDBEdit;
    edTroquel: TDBEdit;
    btOk: TBitBtn;
    Label11: TLabel;
    QBuscadoReigstroDiarioID: TIntegerField;
    QBuscadoReigstroDiarioFECHA: TSQLTimeStampField;
    Label39: TLabel;
    DBEdit2: TDBEdit;
    Label40: TLabel;
    DBEdit3: TDBEdit;
    Label41: TLabel;
    DBEdit4: TDBEdit;
    Label42: TLabel;
    DBEdit5: TDBEdit;
    Label43: TLabel;
    DBEdit6: TDBEdit;
    GroupBox1: TGroupBox;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    procedure BuscarClienteExecute(Sender: TObject);
    procedure BuscarCpbteExecute(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDSRegDiarioNewRecord(DataSet: TDataSet);
    procedure CDSRegDiarioCLIENTESetText(Sender: TField; const Text: string);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure CDSRegDiarioHORM_LTSSetText(Sender: TField; const Text: string);
    procedure FormShow(Sender: TObject);
    procedure CDSRegDiarioID_OPROD_DETSetText(Sender: TField;
      const Text: string);
    procedure ConfirmaExecute(Sender: TObject);
    procedure RecuperarExecute(Sender: TObject);
    procedure BuscarExecute(Sender: TObject);
    procedure edBuscarEnter(Sender: TObject);
    procedure CDSRegCabNewRecord(DataSet: TDataSet);
    procedure CDSRegDiarioID_SUB_DETSetText(Sender: TField; const Text: string);
    procedure dbBuscadorPiSelect(Sender: TObject);
    procedure dbgRegistrosKeyPress(Sender: TObject; var Key: Char);
    procedure btOkClick(Sender: TObject);
    procedure AgregarExecute(Sender: TObject);
    procedure dbBuscadorPIKeyPress(Sender: TObject; var Key: Char);
    procedure DSBaseStateChange(Sender: TObject);
    procedure dbgRegistrosDblClick(Sender: TObject);
    procedure CDSRegDiarioHORM_REAL_LTSSetText(Sender: TField;
      const Text: string);
    procedure CDSRegDiarioTROQUELSetText(Sender: TField; const Text: string);
    procedure FormResize(Sender: TObject);
  private
    procedure RecuperarOP(const Id:Integer;VAR NroCpbte, Detalle ,CodCliente,Nombre, Estado:String;var cantidad:Extended;VAR idcab,idDet,idSub:integer;
                                            var p_volumen,p_pats,p_aros,p_trenza,p_canios,p_armadura:Extended;
                                            VAR Codigo:String);
    function AsignarCliente(Dato: STRING): Boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRegistroDiarioOP: TFormRegistroDiarioOP;

implementation

uses UDMain_FD, UBuscadorClientes,  UBuscadoDetalleOP, UAjusteMercaderia,
  UProduccion_PDiario;
{$R *.dfm}



procedure TFormRegistroDiarioOP.AgregarExecute(Sender: TObject);
begin
  CDSRegCab.Close;
  CDSRegCab.Params.ParamByName('id').Clear;
  CDSRegCab.Open;

  CDSRegDiario.Close;
  CDSRegDiario.Params.ParamByName('id').Clear;
  CDSRegDiario.Open;
  inherited;
  QSearch.Close;
  QSearch.Open;
  pnPie.SetFocus;
  dbBuscadorPI.SetFocus;
  dbBuscadorPI.SelectAll;
end;

FUNCTION TFormRegistroDiarioOP.AsignarCliente(Dato: STRING): Boolean;
var Q:TFDQuery;
begin
  Q:=TFDQuery.Create(nil) ;
  Q.Connection:=DMMain_FD.fdcGestion;
  Q.SQL.Text:='''
                select c.codigo,c.nombre,c.razon_social from clientes c where c.codigo=:codigo
              ''';
  Q.ParamByName('codigo').Value:=Dato;
  Q.Open;
  if (q.FieldByName('CODIGO').AsString<>'') then
    begin
      CDSRegDiarioNOMBRE_CLIENTE.Value:= Q.FieldByName('NOMBRE').AsString;
      Result:=True;
    end
  else
    Result:=False;
  Q.Close;
  FreeAndNil(q);
END;


procedure TFormRegistroDiarioOP.RecuperarExecute(Sender: TObject);
begin
  inherited;
  CDSRegCab.Close;
  CDSRegCab.Params.ParamByName('id').AsInteger   :=StrToInt(DatoNew);
  CDSRegCab.Open;

  CDSRegDiario.Close;
  CDSRegDiario.Params.ParamByName('id').AsInteger:=StrToInt(DatoNew);
  CDSRegDiario.Open;
end;

procedure TFormRegistroDiarioOP.RecuperarOP(const Id:Integer;VAR NroCpbte, Detalle ,CodCliente,Nombre, Estado:String;var cantidad:Extended;VAR idcab,idDet,idSub:integer;
                                            var p_volumen,p_pats,p_aros,p_trenza,p_canios,p_armadura:Extended;
                                            VAR Codigo:String);
var Q:TFDQuery;
begin
  Q           := TFDQuery.Create(nil) ;
  Q.Connection:= DMMain_FD.fdcGestion;
  Q.SQL.Text  :='''
                   select c.cliente,d.detalle,d.cantidad,sd.cantidad_saldo,cl.razon_social,
                         c.nrocpbte,c.estado,d.id_opcab,sd.id_det_op ,d.codigo,sd.id,
                         d.p_volumen,d.p_pats,d.p_aros,d.p_trenza,d.p_canios,d.p_armadura from ordenproduccion_sub_det sd
                    left join ordenproduccion_det d on d.id=sd.id_det_op
                    left join ordenproduccion_cab c on c.id=d.id_opcab
                    left join clientes cl on cl.codigo=c.cliente
                      where sd.id=:id
                ''';
  Q.ParamByName('id').Value:=Id;
  Q.Open;
  if (q.FieldByName('cliente').AsString<>'') then
    begin
      Detalle    := Q.FieldByName('detalle').AsString;
      NroCpbte   := Q.FieldByName('nrocpbte').AsString;
      Estado     := Q.FieldByName('Estado').AsString;
      CodCliente := Q.FieldByName('Cliente').AsString;
      Nombre     := Q.FieldByName('razon_social').AsString;
      idcab      := Q.FieldByName('id_opcab').Value;
      Cantidad   := Q.FieldByName('cantidad').AsFloat;
      Codigo     := Q.FieldByName('codigo').AsString;
      idDet      := Q.FieldByName('id_det_op').AsInteger;
      idSub      := Q.FieldByName('id').AsInteger;
      p_volumen  := Q.FieldByName('p_volumen').AsFloat;
      p_pats     := Q.FieldByName('p_pats').AsFloat;
      p_aros     := Q.FieldByName('p_aros').AsFloat;
      p_trenza   := Q.FieldByName('p_trenza').AsFloat;
      p_canios   := Q.FieldByName('p_canios').AsFloat;
      p_armadura := Q.FieldByName('p_armadura').AsFloat;
    end
  else
    begin
      Nombre     := '';
      NroCpbte   := '';
      Estado     := '';
      CodCliente := '';
      Nombre     := '';
      idcab      :=-1;
      Codigo     := '';
      idDet      :=-1;
      idSub      :=-1;
      p_volumen  := 0;
      p_pats     := 0;
      p_aros     := 0;
      p_trenza   := 0;
      p_canios   := 0;
      p_armadura := 0;

    end;
  Q.Close;
  FreeAndNil(q);
end;


procedure TFormRegistroDiarioOP.btOkClick(Sender: TObject);
begin
  inherited;
  if Trim(CDSRegDiarioTROQUEL.AsString)='' then
    begin
      edTroquel.SetFocus;
      raise Exception.Create('Falta Troquel');
    end;

  if Trim(CDSRegDiarioHORM_REAL_LTS.AsString)='' then
    begin
      edHormigon.SetFocus;
      raise Exception.Create('Falta indicar Litros de Hormigon...');
    end;

  if CDSRegDiarioHORM_REAL_LTS.AsFloat<=0 then
    begin
      edHormigon.SetFocus;
      raise Exception.Create('Falta indicar Litros de Hormigon...');
    end;

  CDSRegDiario.Post;
  CDSRegDiario.Append;
  dbBuscadorPI.SetFocus;
end;

procedure TFormRegistroDiarioOP.BuscarClienteExecute(Sender: TObject);
var aux:Real;
BEGIN
  IF Not(Assigned(FormBuscadorClientes)) THEN
     FormBuscadorClientes:=TFormBuscadorClientes.Create(Application);
  FormBuscadorClientes.Tipo:='''N'''+','+'''G'''+','+'''S'''+','+'''I'''; // Act+Inac+Judiciales
  FormBuscadorClientes.PopupMode:=pmAuto;
  FormBuscadorClientes.ShowModal;
  if FormBuscadorClientes.Codigo<>'' Then
   begin
      ceCliente.Text :=FormBuscadorClientes.Codigo;
      QClientes.Close;
      QClientes.ParamByName('Codigo').Value := FormBuscadorClientes.Codigo;
      QClientes.Open;
      if Not(QClientes.IsEmpty) Then
        begin
          ceCliente.Text:=QClientesCODIGO.AsString;
          edNombreCliente.Text:=QClientesNOMBRE.AsString;
        end
      else
        begin
          ceCliente.Clear;
          edNombreCliente.Clear;
        end

   end;
end;

procedure TFormRegistroDiarioOP.BuscarCpbteExecute(Sender: TObject);
var v,v2,V3:string;
begin
  inherited;
  QBuscaItem.Close;
  QBuscaItem.ParamByName('cliente').Value:=CDSRegDiarioCLIENTE.Value;
  QBuscaItem.Open;
  ComBuscadorOrden.Execute;
  if ComBuscadorOrden.rOk then
    CDSRegDiarioID_OPROD_DETSetText(CDSRegDiarioID_OPROD_CAB,IntToStr(ComBuscadorOrden.Id));
  QBuscaItem.Close;

end;


procedure TFormRegistroDiarioOP.BuscarExecute(Sender: TObject);
begin
  QBuscadoReigstroDiario.Close;
  QBuscadoReigstroDiario.Open;
  ComBuscadorBase.Execute;
  if ComBuscadorBase.rOk then
    begin
      DatoNew:=IntToStr(ComBuscadorBase.Id);
      Recuperar.Execute;
    end;
  QBuscadoReigstroDiario.Close;
end;

procedure TFormRegistroDiarioOP.CDSRegCabNewRecord(DataSet: TDataSet);
begin
  inherited;
  QUltimoCodigo2.Close;
  QUltimoCodigo2.Open;
  if QUltimoCodigo2.fields[0].AsString<>''  then
    CDSRegCabID.Value:=QUltimoCodigo2.fields[0].AsInteger+1
  else
    CDSRegCabID.Value:=1;
  QUltimoCodigo2.Close;
  CDSRegCabFECHA.AsDateTime:=Date;

end;

procedure TFormRegistroDiarioOP.CDSRegDiarioCLIENTESetText(Sender: TField;
  const Text: string);
 VAR
  Aux: STRING;
BEGIN
  if  (Text<>'') and (Text[1]<>#13) Then
    begin
      Aux:=Text;
      Aux:=Copy('000000', 1, 6 - Length(Aux)) + Aux;
      Sender.AsString:=Aux;
      IF NOT (AsignarCliente(Aux)) THEN
        BEGIN
          ShowMessage('Codigo Cliente No válido');
          Sender.Clear;
          Aux:='';
          CDSRegDiarioNOMBRE_CLIENTE.Clear;
        END;
    end;
end;

procedure TFormRegistroDiarioOP.CDSRegDiarioHORM_LTSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;

  CDSRegDiarioHORM_KG.Value         := (CDSRegDiarioHORM_LTS.Value * 2.4);

  CDSRegDiarioPIEDRA_KG.Value  := (CDSRegDiarioHORM_LTS.Value*273)/250;
  CDSRegDiarioARENA_KG.Value   := (CDSRegDiarioHORM_LTS.Value*210)/250;
  CDSRegDiarioCEMENTO_KG.Value := (CDSRegDiarioHORM_LTS.Value*100)/250;

  CDSRegDiarioDIF_HORM_LTS.Value    := CDSRegDiarioHORM_LTS.Value  - CDSRegDiarioHORM_REAL_LTS.Value;
  CDSRegDiarioDIF_PIEDRA_KG.Value   := CDSRegDiarioPIEDRA_KG.Value - CDSRegDiarioPIEDRA_KG_REAL.Value;
  CDSRegDiarioDIF_ARENA_KG.Value    := CDSRegDiarioARENA_KG.Value  - CDSRegDiarioARENA_KG_REAL.Value;
  CDSRegDiarioDIF_CEMENTO_KG.Value  := CDSRegDiarioCEMENTO_KG.Value- CDSRegDiarioCEMENTO_KG_REAL.Value;
end;


procedure TFormRegistroDiarioOP.CDSRegDiarioHORM_REAL_LTSSetText(Sender: TField;
  const Text: string);
begin
  inherited;
  Sender.AsString:=Text;

  CDSRegDiarioPIEDRA_KG.Value       := (CDSRegDiarioHORM_REAL_LTS.Value*273)/250;
  CDSRegDiarioARENA_KG.Value        := (CDSRegDiarioHORM_REAL_LTS.Value*210)/250;
  CDSRegDiarioCEMENTO_KG.Value      := (CDSRegDiarioHORM_REAL_LTS.Value*100)/250;

  CDSRegDiarioHORM_REAL_KG.Value    := (CDSRegDiarioHORM_REAL_LTS.Value * 2.4);

  CDSRegDiarioDIF_HORM_LTS.Value    := CDSRegDiarioHORM_LTS.Value  - CDSRegDiarioHORM_REAL_LTS.Value;
  CDSRegDiarioDIF_PIEDRA_KG.Value   := CDSRegDiarioPIEDRA_KG.Value - CDSRegDiarioPIEDRA_KG_REAL.Value;
  CDSRegDiarioDIF_ARENA_KG.Value    := CDSRegDiarioARENA_KG.Value  - CDSRegDiarioARENA_KG_REAL.Value;
  CDSRegDiarioDIF_CEMENTO_KG.Value  := CDSRegDiarioCEMENTO_KG.Value- CDSRegDiarioCEMENTO_KG_REAL.Value;
end;

procedure TFormRegistroDiarioOP.CDSRegDiarioID_OPROD_DETSetText(Sender: TField;
  const Text: string);
var estado,Nro,Detalle,CodCliente,Nombre,Codigo:string;
  cant:Extended;
  idcab,IdDet,idSub:integer;
  p_volumen,p_pats,p_aros,p_trenza,p_canios,p_armadura:Extended;

begin
  inherited;
  Sender.AsString:=Text;
  RecuperarOP(StrToInt(text),  Nro, Detalle,CodCliente,Nombre,estado,cant,idcab,idDet,idSub,p_volumen,p_pats,p_aros,p_trenza,p_canios,p_armadura,Codigo);
  CDSRegDiarioNRO_CPBTE_OP.Value         := Nro;
  CDSRegDiarioDESIGNACION_CIMA_BASE.Value:= Detalle;
  CDSRegDiarioCANT_PEDIDA.Value          := cant;
  CDSRegDiarioCLIENTE.Value              := CodCliente;
  CDSRegDiarioNOMBRE_CLIENTE.Value       := Nombre;
  CDSRegDiarioID_OPROD_CAB.Value         := idcab;
  CDSRegDiarioID_OPROD_DET.Value         := IdDet;
  CDSRegDiarioCODIGO.Value               := Codigo;
  CDSRegDiarioID_SUB_DET.Value           := idSub;
  CDSRegDiarioHORM_LTSSetText(CDSRegDiarioHORM_LTS,FloatToStr(p_volumen));
  CDSRegDiarioPATS_CANT.Value            := Trunc(p_pats);
  CDSRegDiarioAROS_KG.Value              := p_aros;
  CDSRegDiarioTRENZAS_KG.Value           := p_trenza;
  CDSRegDiarioACERO_PAS_KG.Value         := P_armadura;
end;

procedure TFormRegistroDiarioOP.CDSRegDiarioID_SUB_DETSetText(Sender: TField;
  const Text: string);
begin
  inherited;
//
end;

//procedure TFormRegistroDiarioOP.CDSRegDiarioID_O_PRODUCCIONSetText(
//  Sender: TField; const Text: string);
//var estado,Nro,Detalle,CodCliente,Nombre:string;
//cant:Extended;
//idcab:integer;
//begin
//  inherited;
//  Sender.AsString:=Text;
//  RecuperarOP(StrToInt(text),  Nro, Detalle,CodCliente,Nombre,estado,cant,idcab );
//  CDSRegDiarioNRO_CPBTE_OP.Value         :=Nro;
//  CDSRegDiarioDESIGNACION_CIMA_BASE.Value:=Detalle;
//  CDSRegDiarioCANT_PEDIDA.Value          :=cant;
//  CDSRegDiarioCLIENTE.Value              :=CodCliente;
//  CDSRegDiarioNOMBRE_CLIENTE.Value       :=Nombre;
//  CDSRegDiarioID_O_PRODUCCION.Value      :=idcab;
//
//
//end;

procedure TFormRegistroDiarioOP.CDSRegDiarioNewRecord(DataSet: TDataSet);
begin
  inherited;
  CDSRegDiarioID_PARTE.Value              := CDSRegCabID.Value;
  CDSRegDiarioID.Value                    := IBGRegDiario.IncrementFD(1);
  CDSRegDiarioID_MODELO.Value             := 1;
  CDSRegDiarioFECHA.Value                 := CDSRegCabFECHA.AsDateTime;
  CDSRegDiarioCLIENTE.Value               := '';
  CDSRegDiarioTURNO.Value                 := 'M';
  CDSRegDiarioID_OPROD_CAB.Value          := -1;
  CDSRegDiarioNRO_CPBTE_OP.Value          := '';
  CDSRegDiarioID_OPROD_DET.Value          := -1;
  CDSRegDiarioORDEN_LLENADO.Value         := -1;
  CDSRegDiarioMOLDE.Value                 := '';
  CDSRegDiarioTROQUEL.Value               := '';
  CDSRegDiarioDESIGNACION_CIMA_BASE.Value := '';
  CDSRegDiarioID_PARTE_DIARIO.Value       :=-1;
  CDSRegDiarioSTOCK_ANT.Value             := 0;
  CDSRegDiarioCANT_PEDIDA.Value           := 0;
  CDSRegDiarioCANT_FABRIC.Value           := 1;
  CDSRegDiarioCANT_PEND.Value             := 0;
  CDSRegDiarioHORM_LTS.Value              := 0;
  CDSRegDiarioHORM_REAL_KG.Value          := 0;

  CDSRegDiarioHORM_KG.Value               := 0;
  CDSRegDiarioHORM_REAL_KG.Value          := 0;
  CDSRegDiarioCEMENTO_KG.Value            :=0;
  CDSRegDiarioCEMENTO_KG_REAL.Value       :=0;
  CDSRegDiarioPIEDRA_KG.Value             :=0;
  CDSRegDiarioPIEDRA_KG_REAL.Value        :=0;
  CDSRegDiarioHORM_REAL_LTS.Value         := 0;
  CDSRegDiarioPATS_CANT.Value             := 0;
  CDSRegDiarioACERO_PAS_KG.Value          := 0;
  CDSRegDiarioAROS_KG.Value               := 0;
  CDSRegDiarioTRENZAS_KG.Value            := 0;
  CDSRegDiarioTRENZAS_KG.Value            := 0;
  CDSRegDiarioCORDONES_KG.Value           := 0;
  CDSRegDiarioALAMBRE_KG.Value            := 0;

  CDSRegDiarioTIPO_MATERIA.Value          :=1;
  CDSRegDiarioPIEDRA_KG.Value             := 0;
  CDSRegDiarioARENA_KG.Value              := 0;
  CDSRegDiarioARENA_KG_REAL.Value         := 0;
  CDSRegDiarioCEMENTO_KG_REAL.Value       := 0;

  CDSRegDiarioDIF_HORM_LTS.Value          := 0;
  CDSRegDiarioDIF_HORM_KG.Value           := 0;
  CDSRegDiarioDIF_PIEDRA_KG.Value         := 0;
  CDSRegDiarioDIF_ARENA_KG.Value          := 0;
  CDSRegDiarioDIF_CEMENTO_KG.Value        := 0;
  CDSRegDiarioOBSERVACIONES.Value         := '';
  CDSRegDiarioRECHAZADO.Value             := 0;
  CDSRegDiarioNOMBRE_CLIENTE.Value        := '';
  CDSRegDiarioID_SUB_DET.Value            :=-1;
  edBuscar.Text                           :='';
end;


procedure TFormRegistroDiarioOP.CDSRegDiarioTROQUELSetText(Sender: TField;
  const Text: string);
var Q:TFDQuery;
CDS:TClientDataSet;

begin
  inherited;
  Sender.AsString := Trim(Text);

  CDS:=TClientDataSet.Create(Self);
  CDS.CloneCursor(CDSRegDiario,True);
  if CDS.Locate('TROQUEL',Sender.AsString,[]) then
    raise Exception.Create('Nro de troquel ya utilizado...');

  Q               := TFDQuery.Create(nil);
  Q.Connection    := DMMain_FD.fdcGestion;
  Q.SQL.Text      := 'select t.id from troqueles t where t.nro_troquel = :nro';
  Q.ParamByName('nro').Value := Sender.AsString;
  q.Open;
  if q.Fields[0].AsString<>'' then
    begin
      Sender.AsString:='';
      edTroquel.SetFocus;
      raise Exception.Create('Nro de troquel ya utilizado...');
    end;
  Q.Close;
  FreeAndNil(Q);
  FreeAndNil(CDS);
end;

procedure TFormRegistroDiarioOP.ConfirmaExecute(Sender: TObject);
begin
//  if Trim(CDSRegDiarioTROQUEL.AsString)='' then
//    raise Exception.Create('Falta Troquel ....');
//
//  if (CDSRegDiarioTIPO_MATERIA.AsInteger)<0 then
//    raise Exception.Create('Falta Material ....');
//
//  if (CDSRegDiarioHORM_LTS.AsFloat)<=0 then
//    raise Exception.Create('No se ingresaron los Litro de Hormigon ....');
//
//  if CDSRegDiarioTIPO_MATERIA.AsFloat<=0 then
//    raise Exception.Create('Falta tipo de Hormigon....');
//
//  if Trim(CDSRegDiarioTROQUEL.AsString)='' then
//    raise Exception.Create('Falta el Nro de Troquel....');

  DatoNew:=CDSRegCabID.AsString;
  inherited;
  QSearch.Close;
  QSearch.Open;
  Recuperar.Execute;
end;



procedure TFormRegistroDiarioOP.dbBuscadorPIKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (Key=#13) and (Trim(dbBuscadorPI.Text)<>'') and (CDSRegDiarioDESIGNACION_CIMA_BASE.AsString<>'') then edHormigon.SetFocus;

end;

procedure TFormRegistroDiarioOP.dbBuscadorPiSelect(Sender: TObject);
begin
  inherited;
   CDSRegDiarioID_OPROD_DETSetText(CDSRegDiarioID_OPROD_DET,dbBuscadorPI.SearchList.SelectedItem.Captions[6]);
end;



procedure TFormRegistroDiarioOP.dbgRegistrosDblClick(Sender: TObject);
begin
  inherited;
  if not(Assigned(FormProducc_Diario)) then
    FormProducc_Diario:=TFormProducc_Diario.create(self);
  FormProducc_Diario.datoNew:=CDSRegDiarioID_PARTE_DIARIO.AsString;
  FormProducc_Diario.recuperar.Execute;
  FormProducc_Diario.Show;

end;

procedure TFormRegistroDiarioOP.dbgRegistrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key=#13 then
    if dbgRegistros.SelectedIndex<dbgRegistros.Columns.Count-1 then
      dbgRegistros.SelectedIndex:= dbgRegistros.SelectedIndex+1
end;

procedure TFormRegistroDiarioOP.DSBaseStateChange(Sender: TObject);
begin
  inherited;
  pnPrincipal.Enabled:= True;
  edFechaReg.Enabled := Not(DSBase.DataSet.State IN [dsBrowse]) ;

end;

procedure TFormRegistroDiarioOP.edBuscarEnter(Sender: TObject);
begin
  inherited;
  QSearch.Close;
  QSearch.Open;
end;


procedure TFormRegistroDiarioOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  Action:=TCloseAction.caFree;
end;

procedure TFormRegistroDiarioOP.FormCreate(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  SinBDE:=2;
  JvAppIniFileStorage1.FileName:=(sender as TForm).Name+'_'+DMMain_FD.Nombre_PC;

  AddClientDataset(CDSRegCab, DSPRegCab);
  AddClientDataset(CDSRegDiario, DSPRegDiario);

  CDSRegCab.Open;
  CDSRegDiario.Open;
  QProModelo.Close;
  QProModelo.Open;

  QMaterial.Close;
  QMaterial.Open;

  Campo:='ID';
  Tabla:='POSTES_PARTE_DIARIO_CAB';

end;

procedure TFormRegistroDiarioOP.FormDestroy(Sender: TObject);
begin
  inherited;
  FormRegistroDiarioOP:=nil;
end;

procedure TFormRegistroDiarioOP.FormResize(Sender: TObject);
begin
  inherited;
  if FormRegistroDiarioOP<>nil then
    if FormRegistroDiarioOP.Width<>1128 then
      FormRegistroDiarioOP.Width:=1128;

end;

procedure TFormRegistroDiarioOP.FormShow(Sender: TObject);
begin
  inherited;
  AutoSize:=False;
  QSearch.Close;
  QSearch.Open;

end;

end.
